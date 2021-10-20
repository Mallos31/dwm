; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]
;All invalid jumps to external banks removed.
Jump_05e_4000:
    ld e, [hl]
    dec b
    ld b, b
    bit 0, b
    ld a, [$dd60]
    or a
    ret z

Jump_05e_400a:
    ld de, $4071
    call Call_05e_413a
    ld a, [$dd68]
    or a

Call_05e_4014:
    jr z, jr_05e_4021

    ld a, [$daa4]
    cp $03
    jr z, jr_05e_4021

    cp $04
    jr nz, jr_05e_4031

jr_05e_4021:
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]
    ld hl, $ffc3
    inc [hl]

jr_05e_4031:
    ld a, [$dd66]
    ldh [$c8], a
    ld a, [$dd62]
    or a
    jr nz, jr_05e_4041

    ld a, $00
    ld [$dd60], a

jr_05e_4041:
    ld a, [$dd68]
    or a
    ret nz

    ld a, [$daa4]
    cp $03
    jr z, jr_05e_4051

    cp $04
    jr nz, jr_05e_4061

jr_05e_4051:
    ldh a, [$c3]
    cp $d0
    ret c

    ld a, $04
    ld [$dd65], a
    ld a, $01
    ld [$dd68], a
    ret


jr_05e_4061:
    ldh a, [$c3]
    cp $c0
    ret c

    ld a, $00
    ld [$dd60], a
    ld a, $01
    ld [$dd68], a
    ret


    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    adc e
    ld b, c
    rst $00
    ld b, e
    cp l
    ld b, h
    db $ec
    ld b, l
    or a
    ld b, a
    ld h, b
    ld c, c
    jr nz, @+$4e

    ld l, [hl]
    ld d, c
    add sp, $53
    ld b, h
    ld e, [hl]
    xor h
    ld l, d
    dec a
    ld [hl], c
    ld a, $01
    ld [$dd62], a
    ld a, [$dd68]
    or a
    jr z, jr_05e_40e8

    ld a, [$db54]
    cp $07
    jr nc, jr_05e_4123

    add a
    ld hl, $412c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

jr_05e_40e8:
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


jr_05e_4123:
    xor a
    ld [$dd60], a
    xor a
    ld [$dd62], a
    ret


    nop
    nop
    ld d, b
    nop
    jr c, jr_05e_4132

jr_05e_4132:
    ld l, b
    nop
    jr nz, jr_05e_4136

jr_05e_4136:
    ld d, b
    nop
    add b
    nop

Call_05e_413a:
    ldh a, [$cb]
    cp $28
    jr nc, jr_05e_418a

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

jr_05e_415d:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_05e_418a

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
    jr c, jr_05e_415d

jr_05e_418a:
    ret


    bit 0, c
    call c, $fd41
    ld b, c
    ld h, $42
    ld d, a
    ld b, d
    ld [hl], h
    ld b, d
    adc l
    ld b, d
    sbc d
    ld b, d
    and a
    ld b, d
    call nz, $fd42
    ld b, d
    ld h, d
    ld b, e
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    add $43
    ret c

    inc bc
    jr nz, jr_05e_41cf

jr_05e_41cf:
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
    db $dc, $00, $20
    nop
    call c, $2108
    nop
    db $d4, $00, $22
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
    db $ec
    ldh a, [rNR44]
    ld h, b
    add b
    ldh a, [$f4]
    inc l
    nop
    ld hl, sp-$10
    dec l
    nop
    add sp, -$08
    ld a, [hl+]
    nop
    add sp, $00
    dec hl
    nop
    ret nc

    inc b
    inc h
    nop
    ret nc

    inc c
    dec h
    nop
    ret c

    nop
    ld h, $00
    ret c

    ld [$0027], sp
    ldh [$fb], a
    jr z, jr_05e_4221

jr_05e_4221:
    ldh [$03], a
    add hl, hl
    nop
    add b
    ld hl, sp-$10
    inc l
    nop
    ldh a, [$ec]
    ld l, $00
    ret c

    ld [$0025], sp
    ret nc

    inc c
    ld l, $00
    ret nc

    inc b
    inc h
    nop
    ret c

    nop
    jr z, jr_05e_427e

    ldh [$fc], a
    ld h, $00
    ldh [rDIV], a

jr_05e_4244:
    daa
    nop
    add sp, -$09
    jr z, jr_05e_424a

jr_05e_424a:
    add sp, -$01
    add hl, hl
    nop
    ldh a, [$f4]
    ld a, [hl+]
    nop
    ldh a, [$fc]
    dec hl
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
    ldh [$f6], a
    inc h
    nop
    add b
    ld hl, sp-$12
    ld l, $00
    ldh a, [$f3]
    ld l, $00
    add sp, -$08

jr_05e_427e:
    ld l, $00
    ldh [$fe], a
    cpl
    nop
    ret c

    inc bc
    cpl
    nop
    ld hl, sp-$1a
    inc h
    nop
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
    ld hl, sp-$08
    inc e
    nop
    ld hl, sp+$00
    ld e, $00
    ldh a, [$fd]
    rra
    nop
    add b
    ld hl, sp-$04
    dec e
    nop
    ld hl, sp+$04
    ld e, $00
    ldh a, [$fc]
    ld a, [de]
    nop
    ldh a, [rDIV]

jr_05e_42b5:
    dec de
    nop
    ld hl, sp-$0c
    inc e
    nop
    ldh a, [$f4]
    add hl, de
    nop
    ld [$00fa], a
    jr nz, jr_05e_4244

    ld hl, sp-$04
    ld c, $00
    add sp, -$04
    ld a, [de]
    jr nz, jr_05e_42b5

jr_05e_42cd:
    db $f4
    dec de
    jr nz, @-$0e

    db $fc
    dec e
    jr nz, jr_05e_42cd

jr_05e_42d5:
    db $f4
    inc d
    nop
    ld hl, sp+$04

jr_05e_42da:
    ld d, $00
    ldh a, [$0c]
    add hl, de
    jr nz, @-$06

jr_05e_42e1:
    inc c

jr_05e_42e2:
    inc e
    jr nz, jr_05e_42d5

    db $ec
    dec de
    jr nz, jr_05e_42e1

    db $ec

jr_05e_42ea:
    ld e, $20
    ld [c], a
    cp $00
    nop
    add sp, $04

jr_05e_42f2:
    inc c
    nop
    ldh a, [rDIV]
    ld e, $00
    ldh a, [$f4]
    ld c, $00
    add b
    ret nc

jr_05e_42fe:
    ld hl, sp+$00
    jr nz, jr_05e_42da

jr_05e_4302:
    nop
    ld bc, $d820
    ld hl, sp+$02
    jr nz, jr_05e_42ea

jr_05e_430a:
    nop
    inc b
    jr nz, @-$1e

jr_05e_430e:
    ld hl, sp+$05
    jr nz, jr_05e_42f2

jr_05e_4312:
    ldh a, [rTMA]
    jr nz, jr_05e_42fe

    db $10
    rlca
    jr nz, jr_05e_4302

    ld [$2008], sp
    add sp, $00
    add hl, bc
    jr nz, jr_05e_430a

jr_05e_4322:
    ld hl, sp+$0a
    jr nz, jr_05e_430e

    ldh a, [$0b]
    jr nz, jr_05e_4312

jr_05e_432a:
    add sp, $0c
    jr nz, @-$0e

jr_05e_432e:
    db $10
    dec c
    jr nz, jr_05e_4322

jr_05e_4332:
    ld [$200e], sp
    ldh a, [rP1]
    rrca
    jr nz, jr_05e_432a

    ld hl, sp+$10
    jr nz, jr_05e_432e

jr_05e_433e:
    ldh a, [rNR11]
    jr nz, jr_05e_4332

jr_05e_4342:
    add sp, $12
    jr nz, jr_05e_433e

    db $10
    inc de
    jr nz, jr_05e_4342

jr_05e_434a:
    ld [$2014], sp
    ld hl, sp+$00
    dec d
    jr nz, jr_05e_434a

jr_05e_4352:
    ld hl, sp+$16
    jr nz, @-$06

    ldh a, [rNR22]
    jr nz, jr_05e_4352

    add sp, $18
    jr nz, jr_05e_433e

    inc c
    inc bc
    jr nz, jr_05e_42e2

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
    jr jr_05e_43c2

jr_05e_43c2:
    ldh [$ec], a
    inc bc
    nop
    add b
    rlca
    ld b, h
    db $10
    ld b, h
    add hl, hl
    ld b, h
    ld b, d
    ld b, h
    ld e, e
    ld b, h
    sbc h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    cp h
    ld b, h
    ret nc

    ld hl, sp+$04
    nop
    ret nc

    nop
    dec b
    nop
    add b
    ldh [$f8], a
    inc b
    nop
    ldh [rP1], a

jr_05e_4416:
    dec b
    nop
    ret c

    ld hl, sp+$02
    nop
    ret c

    nop
    inc bc
    nop
    ret nc

    ld hl, sp+$00
    nop
    ret nc

    nop
    ld bc, $8000
    call c, $17f8
    nop
    db $dc, $00, $17
    jr nz, jr_05e_4416

    ldh a, [$15]

jr_05e_4434:
    nop
    db $e4
    ld hl, sp+$16

jr_05e_4438:
    nop
    db $e4
    ld [$2015], sp
    db $e4
    nop
    ld d, $20
    add b
    db $e4
    nop
    rlca
    nop
    db $e4
    ld [$0008], sp
    db $e4
    ld hl, sp+$07
    jr nz, @-$1a

    ldh a, [$08]
    jr nz, @-$22

    ld hl, sp+$00
    nop
    call c, Boot
    nop
    add b
    call nc, $0df8
    jr nz, jr_05e_4434

    ldh a, [$0e]
    jr nz, jr_05e_4438

    nop
    dec c
    nop
    db $d4, $08, $0e
    nop
    db $dc, $00, $0f
    nop
    call c, $1008
    nop
    call c, $1110
    nop
    db $dc, $f0, $10
    jr nz, @-$22

    add sp, $11
    jr nz, @-$22

    ld hl, sp+$0f
    jr nz, @-$1a

    ld hl, sp+$12
    jr nz, @-$1a

    ldh a, [rNR13]
    jr nz, @-$1a

    add sp, $14
    jr nz, @-$1a

    nop
    ld [de], a
    nop
    db $e4
    ld [$0013], sp
    db $e4
    db $10

jr_05e_4499:
    inc d
    nop
    add b
    db $dc, $f8, $09
    jr nz, @-$22

    ldh a, [$0a]
    jr nz, @-$22

    nop
    add hl, bc
    nop
    call c, $0a08
    nop
    db $e4
    ld hl, sp+$0b
    jr nz, @-$1a

    ldh a, [$0c]
    jr nz, jr_05e_4499

    nop
    dec bc
    nop
    db $e4
    ld [$000c], sp
    add b
    db $fd
    ld b, h
    ld b, $45
    rla
    ld b, l
    ld b, h
    ld b, l
    add l
    ld b, l
    jp nz, $e345

    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    db $eb
    ld b, l
    ld hl, sp-$10
    nop
    ld h, b
    ld hl, sp-$18
    ld bc, $8060
    rst $30
    push af
    nop
    ld h, b
    rst $30
    db $ed
    ld bc, $f160
    db $fd
    nop
    nop
    pop af
    dec b
    ld bc, $8000
    ld hl, sp-$10
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [$fc]
    add hl, bc
    nop
    ldh a, [rDIV]
    ld a, [bc]
    nop
    ldh [$08], a
    dec b
    nop
    ldh [rNR10], a
    ld b, $00
    add sp, $04
    rlca
    nop
    add sp, $0c
    ld [$d800], sp
    db $10
    inc b
    nop
    ret nc

    ld [$0002], sp
    ret nc

    db $10
    inc bc
    nop
    add b
    ld hl, sp-$10
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [$fc]
    add hl, bc
    nop
    ldh a, [rDIV]
    ld a, [bc]
    nop
    add sp, $04
    rlca
    nop
    add sp, $0c
    ld [$e000], sp
    ld [$000d], sp
    ldh [rNR10], a
    ld c, $00
    ret c

    ld [$000f], sp
    ret c

    db $10
    stop
    ret nc

    db $fc
    ld de, $d000
    inc b
    ld [de], a
    nop
    ret nc

    inc c
    inc de
    nop
    ret c

    xor $14
    nop
    ret c

    or $15
    nop
    ldh [$e8], a
    ld d, $00
    add b
    ld hl, sp-$10
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ret nc

    db $fc
    rla
    nop
    ret nc

    inc b
    jr jr_05e_4595

jr_05e_4595:
    ret nc

    inc c
    add hl, de
    nop
    ret c

    db $ec
    ld a, [de]
    nop
    ret c

    db $f4
    dec de
    nop
    ret c

    db $fc
    inc e
    nop
    ret c

    ld [$001d], sp
    ret c

    db $10
    ld e, $00
    ldh [$e8], a
    rra
    nop
    ldh [rNR10], a
    jr nz, jr_05e_45b5

jr_05e_45b5:
    add sp, $0c
    jr z, jr_05e_45b9

jr_05e_45b9:
    ldh a, [$fc]
    add hl, hl
    nop
    ldh a, [rDIV]
    ld a, [hl+]
    nop
    add b
    ldh [$e8], a
    rra
    nop
    ldh [rNR10], a
    daa
    nop
    ret c

    db $10
    ld h, $00
    ret nc

    db $fc
    ld hl, $d000
    inc b
    ld [hl+], a
    nop
    ret nc

    inc c
    inc hl
    nop
    ret c

    xor $24
    nop
    ret c

    or $25
    nop
    add b
    ldh [$e8], a
    rra
    nop
    ret c

    xor $24
    nop
    add b
    inc l
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    ld c, [hl]
    ld b, [hl]
    sub e
    ld b, [hl]
    ret c

    ld b, [hl]
    dec e
    ld b, a
    ld h, [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    or [hl]
    ld b, a
    ret c

    db $fc
    nop
    nop
    ret nc

    db $fc
    ld bc, $8000
    ret nc

    ld hl, sp+$05
    nop
    ret c

    ld hl, sp+$08
    nop
    ldh [$fc], a
    ld bc, $d000
    db $fc
    inc bc
    nop
    ret c

    db $fc
    ld [bc], a
    nop
    add sp, -$04
    dec bc
    nop
    add b
    ret nc

    ld hl, sp+$05
    nop
    ret c

    ldh a, [rTAC]
    nop
    ret c

    ld hl, sp+$08
    nop
    ret c

    add sp, $06
    nop
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]
    ld bc, $d800
    db $fc
    inc b
    nop
    ret nc

jr_05e_466b:
    db $fc
    inc b
    nop
    add sp, -$04
    rrca
    nop
    ldh [$fc], a
    dec c
    nop
    ldh [$f4], a
    inc c
    nop
    add sp, -$0c
    ld c, $00
    ldh [$03], a
    inc c
    jr nz, jr_05e_466b

    inc bc
    ld c, $20
    ldh [$e8], a
    ld b, $40
    ldh [$f0], a
    rlca
    ld b, b
    ldh [$f8], a
    ld [$8040], sp
    ret nc

    ld hl, sp+$05
    nop
    ret c

    ldh a, [rTAC]
    nop
    ret c

    ld hl, sp+$08
    nop
    ret c

    add sp, $06
    nop
    ldh [$e8], a
    ld b, $40
    ldh [$f0], a
    rlca
    ld b, b
    ldh [$f8], a
    ld [$f040], sp

jr_05e_46b0:
    db $fc
    inc b
    nop
    ldh [$fc], a
    inc b
    nop
    ret c

    db $fc
    inc b
    nop
    ret nc

    db $fc
    inc b
    nop
    ld hl, sp-$04
    inc bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    jr nz, jr_05e_46b0

    db $fc
    dec bc
    nop
    add sp, -$08
    add hl, bc
    nop
    ldh a, [$f8]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add b
    ret nc

    ld hl, sp+$05
    nop
    ret c

    ldh a, [rTAC]
    nop
    ret c

    ld hl, sp+$08
    nop
    ret c

    add sp, $06
    nop
    ldh [$e8], a
    ld b, $40
    ldh [$f0], a
    rlca
    ld b, b
    ld hl, sp-$04
    inc b
    nop
    ldh a, [$fc]
    inc b
    nop
    add sp, -$04
    inc b
    nop
    ldh [$f8], a
    ld [$e840], sp
    ld hl, sp+$09
    nop
    ldh a, [$f8]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ldh [rP1], a
    ld [$e860], sp

jr_05e_4711:
    nop
    add hl, bc
    jr nz, @-$0e

    nop
    add hl, bc
    jr nz, jr_05e_4711

    nop
    ld a, [bc]
    jr nz, @-$7e

    ret nc

    ld hl, sp+$05
    nop
    ret c

    ldh a, [rTAC]
    nop
    ret c

    ld hl, sp+$08
    nop
    ret c

jr_05e_472a:
    add sp, $06
    nop
    ldh [$e8], a
    ld b, $40
    ldh [$f0], a
    rlca
    ld b, b
    ldh [$f8], a
    ld [$e840], sp

jr_05e_473a:
    ld hl, sp+$09
    nop
    ldh a, [$f8]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add sp, $00
    add hl, bc
    jr nz, jr_05e_473a

    nop
    add hl, bc
    jr nz, @-$06

    nop
    ld a, [bc]
    jr nz, jr_05e_472a

    ld [$2007], sp
    ret c

    db $10
    ld b, $20
    ldh [rNR10], a
    ld b, $60
    ldh [$08], a
    rlca
    ld h, b
    ldh [rP1], a
    ld [$8060], sp
    ret nc

    ld hl, sp+$05
    nop
    ret c

jr_05e_476b:
    ldh a, [rTAC]
    nop
    ret c

    ld hl, sp+$08
    nop
    ret c

    add sp, $06
    nop
    ldh [$e8], a
    ld b, $40
    ldh [$f0], a
    rlca
    ld b, b
    ldh [$f8], a
    ld [$e840], sp

jr_05e_4783:
    ld hl, sp+$09
    nop
    ldh a, [$f8]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add sp, $00
    add hl, bc
    jr nz, jr_05e_4783

    nop
    add hl, bc
    jr nz, @-$06

    nop
    ld a, [bc]
    jr nz, jr_05e_476b

    nop
    dec b
    jr nz, @-$26

    ld [$2007], sp
    ret c

    nop
    ld [$d820], sp
    db $10
    ld b, $20
    ldh [rNR10], a
    ld b, $60
    ldh [$08], a
    rlca
    ld h, b
    ldh [rP1], a
    ld [$8060], sp
    rst $30
    ld b, a
    nop
    ld c, b
    add hl, de
    ld c, b
    ld c, d
    ld c, b
    sub e
    ld c, b
    db $c4, $48, $0d
    ld c, c
    ld l, $49
    ld b, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ld e, a
    ld c, c
    ret c

    db $fc
    nop
    nop
    ret nc

    db $fc
    ld bc, $8000
    add sp, -$04
    nop
    nop
    ldh [$fc], a
    ld bc, $d000
    db $fc
    inc bc
    nop
    ret c

    db $fc
    ld [bc], a
    nop
    db $e4
    db $f4
    ld b, $20
    db $e4
    inc bc
    ld b, $00
    add b
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]
    ld bc, $e000

jr_05e_4822:
    db $fc
    inc bc
    nop
    add sp, -$04
    ld [bc], a
    nop
    ret c

    db $fc
    inc b
    nop
    ret nc

    db $fc
    dec b
    nop
    call c, $0703
    nop
    call c, $080b
    nop
    db $e4
    inc bc
    add hl, bc
    nop
    db $e4
    db $f4
    add hl, bc
    jr nz, @-$22

    db $f4
    rlca
    jr nz, jr_05e_4822

    db $ec
    ld [$8020], sp
    ret nc

    db $fc
    dec b
    nop
    ld hl, sp-$04
    inc bc
    nop
    ldh a, [$fc]
    inc b
    nop
    add sp, -$04
    dec b
    nop
    ldh [$fc], a
    dec b
    nop
    ret c

jr_05e_485f:
    db $fc
    dec b
    nop
    db $d4, $03, $0a
    nop
    db $d4, $0b, $0b
    nop
    call c, $0c03
    nop
    call c, $0d0b
    nop
    db $e4
    inc bc
    ld c, $00
    db $e4
    dec bc
    rrca
    nop
    db $d4, $f4, $0a
    jr nz, @-$2a

    db $ec
    dec bc
    jr nz, jr_05e_485f

    db $f4
    inc c
    jr nz, @-$22

    db $ec
    dec c
    jr nz, @-$1a

    db $f4

jr_05e_488c:
    ld c, $20
    db $e4
    db $ec

jr_05e_4890:
    rrca
    jr nz, @-$7e

    ret nc

    db $fc
    stop
    ret c

    db $fc
    stop
    ldh [$fc], a
    stop
    add sp, -$04
    stop
    ldh a, [$fc]
    stop
    ld hl, sp-$04
    stop
    db $e4
    db $f4
    add hl, bc
    jr nz, jr_05e_488c

    db $f4
    rlca
    jr nz, jr_05e_4890

    db $ec

jr_05e_48b5:
    ld [$dc20], sp
    inc b
    rlca
    nop
    db $dc, $0c, $08
    nop
    db $e4
    inc bc

jr_05e_48c1:
    add hl, bc
    nop
    add b
    ret nc

jr_05e_48c5:
    db $fc
    stop
    ret c

jr_05e_48c9:
    db $fc
    stop
    ldh [$fc], a
    stop
    add sp, -$04
    stop
    ldh a, [$fc]
    stop
    ld hl, sp-$04
    stop
    db $d4, $f4, $0a
    jr nz, jr_05e_48b5

    db $ec
    dec bc
    jr nz, jr_05e_48c1

    db $f4
    inc c
    jr nz, jr_05e_48c5

    db $ec

jr_05e_48ea:
    dec c
    jr nz, @-$1a

    db $f4
    ld c, $20
    db $e4
    db $ec
    rrca
    jr nz, jr_05e_48c9

    inc bc

jr_05e_48f6:
    ld a, [bc]
    nop
    db $d4, $0b, $0b
    nop
    call c, $0c03
    nop
    call c, $0d0b
    nop
    db $e4
    inc bc
    ld c, $00
    db $e4
    dec bc

jr_05e_490a:
    rrca
    nop
    add b
    ret nc

jr_05e_490e:
    ei
    db $10
    jr nz, jr_05e_48ea

    ei
    db $10
    jr nz, jr_05e_48f6

    ei
    db $10
    jr nz, @-$16

jr_05e_491a:
    ei
    db $10
    jr nz, jr_05e_490e

    ei
    db $10
    jr nz, jr_05e_491a

    ei
    db $10
    jr nz, jr_05e_490a

    db $f4
    ld b, $20
    db $e4
    inc bc
    ld b, $00
    add b
    ret nc

    db $fc
    ld de, $d800
    db $fc
    ld de, $e000
    db $fc
    ld de, $e800
    db $fc
    ld de, $f000
    db $fc
    ld de, $f800
    db $fc
    ld de, $8000
    ret nc

    ei
    ld de, $d820
    ei
    ld de, $e020
    ei
    ld de, $e820
    ei
    ld de, $f020
    ei
    ld de, $f820
    ei
    ld de, $8020
    and b
    ld c, c
    or c
    ld c, c
    jp nc, $f349

    ld c, c
    jr nc, jr_05e_49b4

    ld [hl], c
    ld c, d
    sbc [hl]
    ld c, d
    bit 1, d
    ld e, h
    ld c, e
    adc l
    ld c, e
    cp [hl]
    ld c, e
    rst $28
    ld c, e
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
    rra
    ld c, h
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
    db $dc, $ff, $00

jr_05e_49b4:
    nop
    call c, $0107
    nop
    call nc, $02ff
    nop
    call nc, $0307
    nop
    db $e4
    ld sp, hl
    nop
    ld h, b
    db $e4
    pop af
    ld bc, $ec60
    ld sp, hl
    ld [bc], a
    ld h, b
    db $ec
    pop af
    inc bc
    ld h, b
    add b
    ldh [$fe], a
    ld de, $e000
    ld b, $12
    nop
    ret c

    ld c, $10
    nop
    ret c

    cp $0e
    nop
    ret c

    ld b, $0f
    nop
    ret nc

    ld [bc], a
    dec bc
    nop
    ret nc

    ld a, [bc]
    inc c
    nop
    ret nc

    ld [de], a
    dec c
    nop
    add b
    ldh a, [$f5]
    ld de, $f000
    db $fd
    ld [de], a
    nop
    ret nc

    ld [bc], a
    ld b, $00
    ret nc

    ld a, [bc]
    rlca
    nop
    ret c

    ld bc, $0009
    ret c

    add hl, bc
    ld a, [bc]
    nop
    ldh [$09], a
    dec c
    nop
    add sp, $05
    stop
    ret c

    ld sp, hl
    ld [$d800], sp
    rst $30
    add hl, de
    nop
    add sp, -$10
    dec e
    nop
    add sp, -$08
    ld e, $00
    add sp, $00
    rra
    nop
    ldh [$f9], a
    dec de
    nop
    ldh [rSB], a
    inc e
    nop
    add b
    ldh [$f8], a
    ld [hl+], a
    nop
    ldh [rP1], a
    inc hl
    nop
    ldh [$08], a
    inc h
    nop
    ret c

    di
    jr nz, jr_05e_4a40

jr_05e_4a40:
    add sp, $02
    ld h, $00
    ldh a, [$0a]
    add hl, hl
    nop
    ld hl, sp-$16
    dec bc
    nop
    ld hl, sp-$0e
    inc c
    nop
    ld hl, sp-$06
    dec c
    nop
    ldh a, [$ea]
    ld [$f000], sp
    ld a, [c]
    add hl, bc
    nop
    ldh a, [$fa]
    ld a, [bc]
    nop
    add sp, -$0c
    ld b, $00
    add sp, -$06
    dec h
    nop
    ret nc

    add hl, bc
    inc de
    nop
    ret c

    inc b
    inc de
    nop
    add b
    ldh a, [$f4]
    inc de
    nop
    ld hl, sp-$11
    inc de
    nop
    ret c

    inc b
    inc d
    nop
    db $ec
    ldh a, [rNR33]
    nop
    db $ec
    ld hl, sp+$1e
    nop
    db $ec
    nop

jr_05e_4a87:
    rra
    nop
    call c, $1a09
    nop
    db $dc, $f8, $19
    nop
    ldh [rIE], a
    inc d
    nop
    db $e4
    ld sp, hl
    dec de
    nop
    db $e4
    ld bc, $001c
    add b
    db $dc, $f4, $2e
    nop
    db $e4
    db $f4
    cpl
    ld b, b
    db $dc, $fc, $2d
    jr nz, jr_05e_4a87

    inc b
    ld l, $20
    db $e4
    inc b
    cpl
    ld h, b
    db $e4
    db $fc
    inc b
    nop
    ld hl, sp-$11
    inc d
    nop
    ldh a, [$f4]

jr_05e_4abc:
    inc d
    nop
    db $ec
    db $fc
    dec l
    ld h, b
    db $ec
    inc b
    ld l, $60
    db $ec
    db $f4
    ld l, $40
    add b
    ret nc

    add sp, $2b
    nop
    ret nc

    ldh a, [$2c]
    nop
    ret nc

jr_05e_4ad4:
    ld hl, sp+$2d
    nop
    ldh [$e8], a
    cpl
    nop
    ldh [$f0], a
    ld a, [hl+]
    nop
    ret c

    ld hl, sp+$2a
    nop
    ret c

    add sp, $2e
    nop
    ret nc

    db $10
    dec hl
    jr nz, jr_05e_4abc

    ld [$202c], sp
    ret nc

    nop
    dec l
    jr nz, jr_05e_4ad4

    db $10
    cpl
    jr nz, @-$1e

    ld [$202a], sp
    ret c

    nop
    ld a, [hl+]
    jr nz, @-$26

    db $10
    ld l, $20
    ld hl, sp-$18
    dec hl
    ld b, b
    ld hl, sp-$10
    inc l
    ld b, b
    ld hl, sp-$08
    dec l
    ld b, b
    add sp, -$18
    cpl
    ld b, b
    add sp, -$10
    ld a, [hl+]
    ld b, b
    ldh a, [$f8]
    ld a, [hl+]
    ld b, b
    ldh a, [$e8]
    ld l, $40
    ld hl, sp+$10
    dec hl
    ld h, b
    ld hl, sp+$08
    inc l
    ld h, b
    ld hl, sp+$00
    dec l
    ld h, b
    add sp, $10
    cpl
    ld h, b
    add sp, $08
    ld a, [hl+]
    ld h, b
    ldh a, [rP1]
    ld a, [hl+]
    ld h, b
    ldh a, [rNR10]
    ld l, $60
    ldh [rP1], a
    inc b
    ld h, b
    add sp, $00
    inc b
    jr nz, @-$16

jr_05e_4b44:
    ld hl, sp+$04
    nop
    ldh [$f8], a
    inc b
    ld b, b
    ret c

    ld [$0004], sp
    ret c

    ldh a, [rDIV]
    jr nz, jr_05e_4b44

    ld [$4004], sp
    ldh a, [$f0]
    inc b
    ld h, b
    add b
    ret nc

    dec b
    dec d
    nop
    ret nc

    dec c
    ld d, $00
    ret c

    nop
    dec d
    nop
    ret c

    ld [$0016], sp
    ldh [$fb], a
    dec d
    nop
    ldh [$03], a
    ld d, $00
    add sp, -$0b
    dec d
    nop
    add sp, -$03
    ld d, $00
    ldh a, [$f0]
    dec d
    nop
    ldh a, [$f8]
    ld d, $00
    ld hl, sp-$15
    dec d
    nop
    ld hl, sp-$0d
    ld d, $00
    add b
    ret nc

    dec c
    dec d
    ld h, b
    ret nc

    dec b
    ld d, $60
    ret c

    ld [$6015], sp
    ret c

    nop
    ld d, $60
    ldh [$03], a
    dec d
    ld h, b
    ldh [$fb], a
    ld d, $60
    add sp, -$03
    dec d
    ld h, b
    add sp, -$0b
    ld d, $60
    ldh a, [$f8]
    dec d
    ld h, b
    ldh a, [$f0]
    ld d, $60
    ld hl, sp-$0d
    dec d
    ld h, b
    ld hl, sp-$15
    ld d, $60
    add b
    ret nc

    dec b
    rla
    nop
    ret nc

    dec c
    jr jr_05e_4bc6

jr_05e_4bc6:
    ret c

    nop
    rla
    nop
    ret c

    ld [$0018], sp
    ldh [$fb], a
    rla
    nop
    ldh [$03], a
    jr jr_05e_4bd6

jr_05e_4bd6:
    add sp, -$0b
    rla
    nop
    add sp, -$03
    jr jr_05e_4bde

jr_05e_4bde:
    ldh a, [$f0]
    rla
    nop
    ldh a, [$f8]
    jr jr_05e_4be6

jr_05e_4be6:
    ld hl, sp-$15
    rla
    nop
    ld hl, sp-$0d
    jr jr_05e_4bee

jr_05e_4bee:
    add b
    ret nc

    dec c
    rla
    ld h, b
    ret nc

    dec b
    jr jr_05e_4c57

    ret c

    ld [$6017], sp
    ret c

    nop
    jr jr_05e_4c5f

    ldh [$03], a
    rla
    ld h, b
    ldh [$fb], a
    jr @+$62

    add sp, -$03
    rla
    ld h, b
    add sp, -$0b
    jr jr_05e_4c6f

    ldh a, [$f8]
    rla
    ld h, b
    ldh a, [$f0]
    jr jr_05e_4c77

    ld hl, sp-$0d
    rla
    ld h, b
    ld hl, sp-$15
    jr jr_05e_4c7f

    add b
    ld h, b
    ld c, h
    ld [hl], l
    ld c, h
    sub [hl]
    ld c, h
    rst $10
    ld c, h
    jr nc, jr_05e_4c77

    adc l
    ld c, l
    ld a, [c]
    ld c, l
    ld c, e
    ld c, [hl]
    add b
    ld c, [hl]
    xor l
    ld c, [hl]
    jp nc, $fb4e

    ld c, [hl]
    cp h
    ld c, a
    adc l
    ld d, b
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l

jr_05e_4c57:
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l
    ld d, c
    ld l, l

jr_05e_4c5f:
    ld d, c
    add sp, -$50
    inc e
    nop
    add sp, -$40
    ld e, $00
    add sp, -$38
    rra
    nop
    and $b8
    dec e

jr_05e_4c6f:
    nop
    ld [c], a
    cp a
    ld [hl+], a
    nop
    add b
    add sp, -$50

jr_05e_4c77:
    inc e
    nop
    add sp, -$48
    inc e
    nop
    add sp, -$40

jr_05e_4c7f:
    inc e
    nop
    add sp, -$30
    ld e, $00
    add sp, -$28
    rra
    nop
    and $c8
    dec e
    nop
    db $dc, $ba, $22
    nop
    ld [c], a
    jp nz, $0022

    add b
    add sp, -$50
    inc e
    nop
    add sp, -$48
    inc e
    nop
    add sp, -$40
    inc e
    nop
    add sp, -$38
    inc e
    nop
    add sp, -$30
    inc e
    nop
    add sp, -$20
    ld e, $00
    add sp, -$18
    rra
    nop
    reti


    di
    ld [de], a
    nop
    and $d8
    dec e
    nop
    ret nc

    inc bc

jr_05e_4cbc:
    ld [hl+], a
    nop
    pop de
    ld a, [c]
    ld [hl+], a
    nop
    db $dd
    add $22
    nop
    jp c, $22bb

    nop
    ret nc

    ld a, [$0023]
    ret c

    ld a, [$0024]
    ldh [$fa], a
    dec h
    nop
    add b
    add sp, -$28
    inc e
    nop
    add sp, -$20
    inc e
    nop
    db $dc, $df, $12
    nop
    rst $10
    ld a, [c]
    ld [de], a
    nop
    db $db
    inc bc
    ld [de], a
    jr nz, jr_05e_4cbc

    db $fc
    dec de
    nop
    add sp, -$08
    rra
    nop
    ret c

    ret nz

    ld [hl+], a
    nop
    db $dd
    ret nc

    ld [hl+], a
    nop
    pop de
    ld a, [c]
    ld [hl+], a
    nop
    ret nc

    inc bc
    ld [hl+], a
    nop
    ret c

    ld a, [$0023]
    add sp, -$50
    jr nz, jr_05e_4d0b

jr_05e_4d0b:
    add sp, -$45
    ld hl, $e800
    add $1c
    nop
    add sp, -$31
    inc e
    nop
    ldh [$fa], a
    inc h
    nop
    add sp, -$06
    dec h
    nop
    ldh [$e8], a
    add hl, hl
    nop
    ldh [$f0], a
    ld a, [hl+]
    nop
    add sp, -$18
    dec hl
    nop
    add sp, -$10
    inc l
    nop
    add b
    add sp, -$23
    inc e
    nop
    add sp, -$1b
    inc e
    nop
    add sp, -$13
    inc e
    nop
    add sp, -$0b
    inc e
    nop
    add sp, -$2d
    inc e
    nop

jr_05e_4d44:
    ret nc

    db $fc
    add hl, de
    nop
    add sp, -$04
    dec de
    nop
    db $dc, $d2, $12
    nop
    add sp, -$38
    jr nz, jr_05e_4d54

jr_05e_4d54:
    ldh a, [$fa]
    inc h
    nop
    ld hl, sp-$06
    dec h
    nop
    db $d4, $f5, $22
    nop
    ret c

    ldh [rNR43], a
    nop
    jp nc, $2203

    jr nz, jr_05e_4d44

    ld bc, $0026
    reti


    ld b, $27
    nop
    reti


    ld hl, sp+$27
    nop
    ldh [rSC], a
    add hl, hl
    nop
    ldh [$0a], a
    ld a, [hl+]
    nop
    ldh [$f6], a
    jr z, jr_05e_4d80

jr_05e_4d80:
    add sp, $02
    dec l
    nop
    add sp, $0a
    ld l, $00
    and $12
    cpl
    nop
    add b
    add sp, -$11
    inc e
    nop
    add sp, -$09
    inc e
    nop
    add sp, -$01
    inc e
    nop
    add sp, $07
    inc e
    nop
    add sp, $0f
    inc e
    nop
    add sp, $27
    rra
    nop
    jp c, $1205

    nop
    rst $08
    ld a, [c]
    ld [de], a
    nop
    rst $30
    inc bc
    ld [de], a
    jr nz, @-$0e

    db $fc
    add hl, de
    nop
    ret nc

    db $fc
    jr jr_05e_4db9

jr_05e_4db9:
    ret c

    db $fc
    ld [hl+], a
    jr nz, @-$22

    add sp, $22
    nop
    ret c

    ld de, $0022
    ldh a, [$f3]
    ld [hl+], a
    nop
    ld hl, sp-$06
    inc hl
    nop
    sbc $fc
    daa
    nop
    ldh [$08], a
    ld h, $00
    add sp, -$21
    jr nz, jr_05e_4dd9

jr_05e_4dd9:
    add sp, -$19
    ld hl, $e000
    rrca
    jr z, jr_05e_4de1

jr_05e_4de1:
    pop hl
    ld d, $29
    nop
    ldh [rNR34], a
    ld a, [hl+]
    nop
    add sp, $17
    dec hl
    nop
    add sp, $1f
    inc l
    nop
    add b
    ret nc

    db $fc
    jr jr_05e_4df6

jr_05e_4df6:
    ldh [$fc], a
    jr jr_05e_4dfa

jr_05e_4dfa:
    ld hl, sp-$04
    jr jr_05e_4dfe

jr_05e_4dfe:
    ldh a, [$fc]
    add hl, de
    nop
    ret c

    db $fc
    add hl, de
    nop
    db $d4, $06, $12, $00
    
    db $da, $de, $12

    nop
    add sp, $07
    inc e
    nop
    add sp, $0f
    inc e
    nop
    add sp, $17
    inc e
    nop
    add sp, $1f
    inc e
    nop
    add sp, $2f
    ld e, $00
    add sp, $37
    rra
    nop
    and $27
    dec e
    nop
    ldh [rNR51], a
    ld h, $00
    sbc $04
    ld h, $00
    db $dd
    rrca
    ld [hl+], a
    nop
    db $dd
    xor $22
    nop
    add sp, -$15
    jr nz, jr_05e_4e3e

jr_05e_4e3e:
    add sp, -$0b
    jr nz, jr_05e_4e42

jr_05e_4e42:
    add sp, -$01
    ld hl, $de00
    add hl, de
    jr z, jr_05e_4e4a

jr_05e_4e4a:
    add b
    add sp, $1f
    inc e
    nop
    add sp, $27
    inc e
    nop
    add sp, $37
    ld e, $00
    add sp, $3f
    rra
    nop
    db $db
    ld a, [$0012]
    and $2f
    dec e
    nop
    sbc $d6
    ld [hl+], a
    nop
    db $db
    dec e
    ld [hl+], a
    nop
    add sp, -$0f
    jr nz, jr_05e_4e6f

jr_05e_4e6f:
    add sp, $04
    jr nz, jr_05e_4e73

jr_05e_4e73:
    add sp, $0d
    jr nz, jr_05e_4e77

jr_05e_4e77:
    add sp, $15
    ld hl, $e200
    daa
    ld h, $00
    add b
    ldh [$3d], a
    ld [de], a
    nop
    add sp, $15
    jr nz, jr_05e_4e88

jr_05e_4e88:
    add sp, $20
    jr nz, jr_05e_4e8c

jr_05e_4e8c:
    add sp, $29
    jr nz, jr_05e_4e90

jr_05e_4e90:
    add sp, $3a
    jr nz, jr_05e_4e94

jr_05e_4e94:
    ldh [$2d], a
    ld [hl+], a
    nop
    add sp, $32
    ld hl, $e800
    ld c, d
    ld hl, $e800
    cp b
    jr nz, jr_05e_4ea4

jr_05e_4ea4:
    add sp, -$2c
    jr nz, jr_05e_4ea8

jr_05e_4ea8:
    add sp, -$0c
    ld [hl+], a
    nop
    add b
    add sp, $4a
    jr nz, jr_05e_4eb1

jr_05e_4eb1:
    add sp, $20
    jr nz, jr_05e_4eb5

jr_05e_4eb5:
    add sp, $3e
    ld [hl+], a
    nop
    add sp, $2e
    ld hl, $e800
    dec c
    ld hl, $e800
    ld [bc], a
    ld [hl+], a
    nop
    add sp, -$24
    ld [hl+], a
    nop
    add sp, -$16
    jr nz, jr_05e_4ecd

jr_05e_4ecd:
    add sp, -$45
    ld [hl+], a
    nop
    add b
    add sp, -$4f
    jr nz, jr_05e_4ed6

jr_05e_4ed6:
    add sp, -$2e
    jr nz, jr_05e_4eda

jr_05e_4eda:
    add sp, -$08
    jr nz, jr_05e_4ede

jr_05e_4ede:
    add sp, -$20
    ld hl, $e800
    cp a
    ld [hl+], a

jr_05e_4ee5:
    nop
    add sp, $0b
    ld [hl+], a
    nop
    add sp, $13
    jr nz, jr_05e_4eee

jr_05e_4eee:
    add sp, $34
    jr nz, jr_05e_4ef2

jr_05e_4ef2:
    add sp, $1c
    ld hl, $e800
    ld b, b
    ld hl, $8000
    add sp, $03
    ld de, $e820
    dec c
    ld de, $e820
    ld d, $03
    jr nz, jr_05e_4ee5

    rla
    inc bc
    ld h, b
    add sp, $27
    rlca
    ld b, b
    push de
    jr z, jr_05e_4f14

    ld h, b
    db $dd

jr_05e_4f14:
    jr z, @+$09

    nop
    add sp, $1e
    dec d
    jr nz, jr_05e_4ef2

jr_05e_4f1c:
    jr nz, jr_05e_4f1f

    nop

jr_05e_4f1f:
    db $dd

jr_05e_4f20:
    rra
    dec d
    ld h, b
    call $1730
    ld h, b
    ld hl, sp+$31
    rla
    jr nz, jr_05e_4f1c

    jr z, jr_05e_4f30

    jr nz, jr_05e_4f20

jr_05e_4f30:
    rla
    ld [bc], a
    jr nz, @-$0e

    jr nz, jr_05e_4f37

    ld b, b

jr_05e_4f37:
    ldh a, [$03]
    ld de, $dd20

jr_05e_4f3c:
    dec c
    ld a, [de]
    ld h, b
    ret nc

    inc c
    ld [bc], a
    nop
    db $d4, $14, $02
    nop
    add sp, -$0b
    ld de, $e800

jr_05e_4f4c:
    db $eb
    ld de, $e800
    ld [c], a
    inc bc
    nop
    db $dd
    pop hl
    inc bc
    ld b, b
    add sp, -$2f
    rlca
    ld h, b
    push de
    ret nc

    ld [bc], a
    ld b, b
    db $dd
    ret nc

    rlca
    jr nz, jr_05e_4f4c

    db $da, $15, $00

    sub $d8
    ld bc, $dd20
    reti


    dec d
    ld b, b
    call $17c8
    ld b, b
    ldh a, [$e1]
    ld [bc], a
    nop
    ldh a, [$d8]

jr_05e_4f79:
    ld bc, $f060
    push af
    ld de, $d000
    db $ec
    ld [bc], a
    jr nz, @-$2a

    db $e4
    ld [bc], a
    jr nz, jr_05e_4f79

    ret nc

    ld [bc], a
    nop
    ld hl, sp-$38
    rla
    nop
    db $dd
    db $eb
    ld a, [de]
    ld b, b
    ld hl, sp+$03
    ld de, $f820
    push af
    ld de, $d800
    push af
    ld de, $dd40
    push af
    ld de, $d040
    push af

jr_05e_4fa5:
    ld de, $d040
    inc bc
    ld de, $dd60
    inc bc
    ld de, $d860
    inc bc

jr_05e_4fb1:
    ld de, $f860
    rst $18
    ld [bc], a
    nop
    ld hl, sp+$19
    ld [bc], a
    jr nz, jr_05e_4f3c

    ld hl, sp-$18
    ld a, [de]
    nop
    ret nc

jr_05e_4fc1:
    add sp, $1a
    ld b, b
    ldh a, [$28]
    inc d
    jr nz, jr_05e_4fc1

    db $10
    ld a, [de]
    jr nz, jr_05e_4fa5

    jr z, jr_05e_4fe3

    ld h, b
    ret nc

    db $10
    ld a, [de]
    ld h, b
    ldh a, [rNR41]
    inc de
    jr nz, jr_05e_4fb1

    jr nz, jr_05e_4fee

    ld h, b
    add sp, $24
    inc de
    jr nz, jr_05e_4fc1

    inc h
    inc de

jr_05e_4fe3:
    ld h, b
    ld [$162c], a
    ld b, b
    sbc $2c
    ld d, $00
    ret nc

    add hl, de

jr_05e_4fee:
    ld de, $f800
    add hl, de
    ld de, $e020
    dec de
    ld b, $60
    add sp, $1b
    ld b, $20
    ldh a, [rLCDC]
    ld b, $20
    ld hl, sp+$34
    ld b, $20
    ret c

    ld b, b
    ld b, $60
    ret nc

    inc [hl]
    ld b, $60
    ld [$11f5], a
    nop
    ld [$1103], a
    jr nz, @-$20

    push af
    ld de, $de40
    inc bc
    ld de, $f060
    ret nc

    inc d
    nop
    ret c

    ret nc

    inc d
    ld b, b
    ldh a, [$d8]
    inc de
    nop
    ret c

    ret c

    inc de
    ld b, b
    ldh [$d4], a
    inc de
    ld b, b
    ret nc

    rst $18
    ld de, $f820
    rst $18
    ld de, $e000
    db $dd
    ld b, $40
    add sp, -$23
    ld b, $00
    ld hl, sp-$3c
    ld b, $00
    ret nc

    call nz, $4006
    ldh a, [$f5]
    ld de, $e800
    db $d4, $13, $00
    ld hl, sp-$0b
    ld a, [de]
    nop
    add sp, -$34
    ld d, $60
    ldh [$cc], a
    ld d, $20
    ret c

    push af
    ld de, $d040
    push af
    ld a, [de]
    ld b, b
    sbc $ed
    ld de, $ea40
    db $ed
    ld de, $de00
    dec bc
    ld de, $ea60
    dec bc
    ld de, $d820
    inc bc
    ld de, $d060
    inc bc
    ld a, [de]
    ld h, b
    ldh a, [$03]
    ld de, $f820
    inc bc
    ld a, [de]
    jr nz, @-$06

    ld c, b
    ld b, $20
    ret nc

    ld c, b
    ld b, $60
    add b
    add sp, -$08
    dec c
    nop
    ldh [$f8], a
    dec c
    ld b, b
    ret nc

    ldh a, [rNR10]
    ld b, b
    ldh a, [$f8]
    ld c, $00
    ld hl, sp-$08
    ld c, $00
    ret c

    ld hl, sp+$0e
    ld b, b
    ret nc

    ld hl, sp+$0e
    ld b, b
    ret nc

    or c
    ld b, $40
    ret c

    jp nc, Jump_05e_400a

    ret c

    rst $20
    dec bc
    ld b, b
    ret nc

    reti


    inc c
    ld b, b
    ret nc

    jp z, $4007

    ld hl, sp-$10
    stop

jr_05e_50c1:
    ld hl, sp-$4f
    ld b, $00
    ldh a, [$d2]
    ld a, [bc]
    nop
    ldh a, [$e7]
    dec bc
    nop
    ld hl, sp-$27
    inc c
    nop
    ld hl, sp-$36
    rlca
    nop
    ldh a, [$bd]
    inc b
    ld h, b
    jp hl


    or h
    nop
    nop
    ret c

    cp h
    inc b
    jr nz, jr_05e_50c1

    or h
    nop
    ld b, b
    add sp, $00
    dec c
    jr nz, @-$1e

    nop
    dec c
    ld h, b
    ret nc

    ld [$6010], sp
    ldh a, [rP1]
    ld c, $20
    ld hl, sp+$00
    ld c, $20
    ret c

    nop
    ld c, $60
    ret nc

    nop
    ld c, $60
    ret nc

    ld b, a
    ld b, $60
    ret c

    ld h, $0a
    ld h, b
    ret c

    ld de, $600b
    ret nc

jr_05e_510e:
    rra
    inc c
    ld h, b
    ret nc

jr_05e_5112:
    ld l, $07
    ld h, b
    ld hl, sp+$08
    db $10
    jr nz, jr_05e_5112

    ld b, a
    ld b, $20
    ldh a, [rNR52]
    ld a, [bc]
    jr nz, jr_05e_5112

jr_05e_5122:
    ld de, $200b
    ld hl, sp+$1f
    inc c
    jr nz, jr_05e_5122

    ld l, $07
    jr nz, @-$0e

jr_05e_512e:
    dec sp
    inc b
    ld b, b
    jp hl


    ld b, h
    nop
    jr nz, jr_05e_510e

    inc a
    inc b
    nop
    rst $18
    ld b, h
    nop
    ld h, b
    ldh [$dc], a
    nop
    ld b, b
    add sp, -$24
    nop
    nop
    ldh [rNR32], a
    nop
    ld h, b
    add sp, $1c
    nop
    jr nz, jr_05e_512e

    db $10
    ld [$e860], sp
    db $10
    ld [$e020], sp
    add sp, $08
    ld b, b
    add sp, -$18
    ld [$e800], sp
    ldh a, [rIF]
    nop
    add sp, $08
    rrca
    nop
    ldh [$08], a
    rrca
    ld b, b
    ldh [$f0], a
    rrca
    ld b, b
    add b
    xor [hl]
    ld d, c
    db $db
    ld d, c
    inc l
    ld d, d
    ld a, c
    ld d, d
    ld [c], a
    ld d, d
    ld l, e
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    rst $20
    ld d, e
    db $e4
    ld [bc], a
    rrca
    nop
    db $ec
    ld [bc], a
    rra
    nop
    ld hl, sp-$0e
    cpl
    nop
    ld hl, sp-$01
    ld hl, $f800
    rst $30
    ld h, $00
    ldh a, [rIE]

jr_05e_51c4:
    add hl, hl
    ld b, b
    push hl
    rst $28
    add hl, de
    nop
    jp hl


    db $f4
    ld a, [hl+]
    ld h, b
    ldh a, [$f7]
    jr nz, jr_05e_51d2

jr_05e_51d2:
    jp hl


    db $fc
    add hl, hl
    ld b, b
    db $e3
    ei
    rla
    nop
    add b
    push de
    dec c
    inc b
    nop
    ret nc

    dec b
    inc d
    nop
    jp c, $1205

    nop
    add sp, -$12
    jr jr_05e_520b

    ld hl, sp-$02
    ld a, [de]
    ld b, b
    ld hl, sp+$06
    ld a, [de]
    jr nz, jr_05e_51c4

    ld a, [$2019]
    add sp, -$02
    ld hl, $d800
    ld a, [c]
    ld hl, $f020
    ld b, $20
    ld h, b
    ldh [$f0], a
    jr nz, jr_05e_5207

jr_05e_5207:
    ldh [$f8], a
    jr nz, jr_05e_526b

jr_05e_520b:
    ldh [$fd], a
    jr jr_05e_520f

jr_05e_520f:
    add sp, -$0a
    jr nz, jr_05e_5213

jr_05e_5213:
    ldh a, [$fc]
    ld hl, $f060
    cp $00
    nop
    ldh a, [$ee]
    rra
    nop
    ld hl, sp-$14
    rrca
    ld h, b
    ret nc

    ld a, [c]
    add hl, hl
    ld h, b
    ld hl, sp-$0d
    ld [de], a
    ld b, b
    add b
    ld [c], a
    di
    rla
    nop
    ld hl, sp+$00
    inc bc
    ld b, b
    ret nc

    inc b
    rrca
    nop
    ret nc

    db $fc
    inc e
    nop
    ret c

    ld hl, sp+$19
    nop
    ld hl, sp-$10
    cpl
    nop
    ld hl, sp+$08
    jr nz, jr_05e_5268

    ret c

    inc b
    rra

jr_05e_524b:
    nop
    pop hl
    nop
    jr nz, jr_05e_5250

jr_05e_5250:
    ldh a, [$ef]
    rrca
    ld h, b
    add sp, -$11
    rrca
    jr nz, jr_05e_524b

    rst $30
    ld [de], a
    ld b, b
    ld hl, sp-$08
    ld h, $00
    ldh a, [rP1]
    dec h
    nop
    ldh a, [$08]

jr_05e_5266:
    inc h
    nop

jr_05e_5268:
    add sp, $08
    inc hl

jr_05e_526b:
    nop
    ldh [$08], a
    ld [hl+], a
    nop
    ret nc

    di
    ld a, [hl+]
    nop
    reti


    rst $38
    dec d
    ld h, b
    add b
    add sp, -$08
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    db $ec
    add sp, $13
    nop
    sbc $f2
    ld [de], a
    jr nz, @-$2b

    ld a, [c]
    inc d
    jr nz, jr_05e_5266

    ld [$2004], a
    add sp, -$10
    dec b
    nop
    ldh a, [$f0]
    dec d
    nop
    ldh a, [$f8]
    ld d, $00
    push hl
    ld b, $1c
    nop
    push hl
    ld c, $0f
    nop
    db $ed
    ld c, $1f
    nop
    ld hl, sp-$08
    ld a, [de]
    nop
    ld hl, sp-$0f
    cpl
    nop
    ret nc

    ld hl, sp+$2f
    ld b, b
    add sp, -$03
    ld a, [de]
    ld h, b
    ret c

    ld bc, $001a
    ldh a, [rP1]
    jr nz, @+$62

    ldh a, [rTAC]
    ld l, $00
    ld hl, sp+$07
    ld a, [de]
    ld h, b
    ret c

    ld [$0028], sp
    ret nc

    nop
    ld a, [hl+]
    nop
    ld [c], a
    ld [bc], a
    jr nz, jr_05e_52f5

    ldh [rP1], a
    nop
    nop
    ldh [$f8], a
    dec hl
    nop
    ldh [$08], a
    add hl, hl
    nop
    add b
    ret c

    db $fc
    nop
    nop
    add sp, -$04
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$0c
    nop
    nop
    ret nc

    db $fc
    nop

jr_05e_52f5:
    nop
    ld hl, sp-$04
    ld b, $00
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp+$08
    inc c
    nop
    ldh [$f4], a
    ld bc, $e000
    db $fc
    ld [bc], a
    nop
    add sp, -$0c
    ld de, $f000

jr_05e_530f:
    xor $12
    ld h, b
    db $ed

jr_05e_5313:
    db $10
    inc b
    nop
    add sp, -$13
    inc b
    jr nz, jr_05e_5313

    add sp, $14
    jr nz, jr_05e_530f

jr_05e_531f:
    ld [$0017], sp
    ret nc

    add sp, $0f
    jr nz, @-$26

    add sp, $1f
    jr nz, @-$2e

    ldh a, [rNR32]
    jr nz, jr_05e_531f

    db $f4
    ld a, [de]
    nop
    ld hl, sp-$10
    ld a, [de]
    nop
    ret nc

    ld a, [bc]
    jr nz, jr_05e_535a

    ldh a, [rDIV]
    ld hl, $d800
    db $f4
    ld hl, $e020
    xor $20
    ld b, b
    ret nc

jr_05e_5347:
    inc bc
    nop
    nop
    ret c

    inc b
    nop
    nop
    ret c

    ld b, $21
    nop
    ldh [rDIV], a
    jr nz, jr_05e_5376

    ret nc

    rst $30
    jr nz, jr_05e_539a

jr_05e_535a:
    add sp, $03
    inc l
    jr nz, jr_05e_5347

    ld [$0014], sp
    ret nc

    inc de
    dec l
    nop
    ret nc

    dec bc
    rla
    nop
    add b
    ldh [rIE], a
    nop
    nop
    ldh [rTAC], a
    nop
    nop
    add sp, $08
    nop

jr_05e_5376:
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$08
    rlca
    nop
    add sp, $00
    ld [$d800], sp
    rst $38
    dec e
    nop
    ret c

    rlca
    ld e, $00
    ret nc

    nop
    dec c
    nop
    ret nc

    rlca
    ld c, $00
    ldh [$f3], a
    dec de
    nop
    ld hl, sp+$00

jr_05e_5399:
    nop

jr_05e_539a:
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$08]

jr_05e_53a1:
    ld a, [bc]
    nop
    ld hl, sp+$08

jr_05e_53a5:
    stop
    rst $30
    db $10
    jr jr_05e_540b

    ret c

    rst $30
    inc bc
    jr nz, jr_05e_5399

    db $eb

jr_05e_53b1:
    rrca
    jr nz, jr_05e_53a5

    db $eb
    rra
    jr nz, jr_05e_53a1

    di
    inc e
    jr nz, @-$1e

    ei
    ld a, [de]
    ld b, b
    ret nc

    ldh a, [rNR41]
    nop
    ret nc

    ld hl, sp+$1d
    nop
    add sp, $0f
    ld a, [de]
    ld h, b
    ret c

    rst $28
    add hl, de
    nop
    ldh a, [$f8]
    jr nz, jr_05e_5413

    ldh a, [$f1]
    ld l, $20
    ldh [rIF], a
    inc h
    nop
    db $da, $10, $2e

    nop
    ldh a, [rNR10]
    add hl, hl
    nop
    ld hl, sp-$10
    dec hl
    ld b, b
    add b
    jr z, jr_05e_543e

    ld sp, $5254
    ld d, h
    bit 2, h
    ld l, b
    ld d, l
    ld bc, $a256
    ld d, [hl]
    ld b, e
    ld d, a
    db $e4
    ld d, a
    ld [hl], c
    ld e, b
    ld [$7b58], a
    ld e, c
    inc b
    ld e, d
    adc l
    ld e, d
    ld [de], a
    ld e, e
    sbc a
    ld e, e
    jr jr_05e_5466

    xor c

jr_05e_540b:
    ld e, h
    ld [hl-], a
    ld e, l
    cp e
    ld e, l
    ld b, e
    ld e, [hl]
    ld b, e

jr_05e_5413:
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld hl, sp-$08
    dec de
    nop
    ld hl, sp+$00

jr_05e_542e:
    dec de
    jr nz, jr_05e_53b1

    ldh a, [$f0]
    inc e
    nop
    ldh a, [$f8]
    dec e
    nop
    ldh a, [$08]
    inc e
    jr nz, jr_05e_542e

jr_05e_543e:
    nop
    dec e
    jr nz, @-$06

    ldh a, [rNR34]
    nop
    ld hl, sp-$08
    rra
    nop
    ld hl, sp+$08

jr_05e_544b:
    ld e, $20
    ld hl, sp+$00
    rra
    jr nz, @-$7e

    ldh [$e8], a
    jr nz, jr_05e_5456

jr_05e_5456:
    ldh [$f0], a
    ld hl, $e000

jr_05e_545b:
    ld hl, sp+$22
    nop
    add sp, -$20
    inc hl
    nop
    add sp, -$18
    inc h
    nop

jr_05e_5466:
    ldh a, [$e0]
    dec h
    nop
    ld hl, sp-$20
    ld h, $00
    add sp, $18
    inc hl
    jr nz, jr_05e_545b

jr_05e_5473:
    db $10
    inc h
    jr nz, @-$0e

jr_05e_5477:
    jr @+$27

    jr nz, jr_05e_5473

jr_05e_547b:
    jr jr_05e_54a3

    jr nz, @-$1e

jr_05e_547f:
    db $10
    jr nz, @+$22

    ldh [$08], a
    ld hl, $e020
    nop
    ld [hl+], a
    jr nz, jr_05e_5473

    ldh a, [$1f]
    jr nz, jr_05e_5477

    ld hl, sp+$1f
    jr nz, jr_05e_547b

    nop
    rra
    jr nz, jr_05e_547f

jr_05e_5497:
    ld [$201f], sp
    ldh a, [rNR10]
    rra
    jr nz, jr_05e_5497

    db $10
    rra
    jr nz, @-$06

jr_05e_54a3:
    add sp, $1f
    jr nz, jr_05e_5497

jr_05e_54a7:
    add sp, $1f
    jr nz, @-$0e

jr_05e_54ab:
    ldh a, [$1f]
    jr nz, jr_05e_54a7

    ldh a, [$1f]
    jr nz, jr_05e_54ab

    ld hl, sp+$1f
    jr nz, jr_05e_54a7

jr_05e_54b7:
    ld hl, sp+$1f
    jr nz, jr_05e_54ab

jr_05e_54bb:
    nop
    rra
    jr nz, jr_05e_54b7

    nop
    rra
    jr nz, jr_05e_54bb

    ld [$201f], sp
    ldh a, [$08]
    rra
    jr nz, jr_05e_544b

    sub $dc
    jr nz, jr_05e_54cf

jr_05e_54cf:
    ldh [$d2], a
    inc hl
    nop
    push de
    add sp, $29
    nop
    call nc, $2af4
    nop
    db $ec
    pop de
    dec l
    nop
    ld hl, sp-$30
    ld l, $00
    ld hl, sp-$13
    daa
    nop
    ld hl, sp-$08
    daa
    nop
    ldh a, [$f8]
    daa
    nop
    rst $28
    xor $27
    nop
    push af
    jp c, RST_28

    ldh a, [$e4]

jr_05e_54f9:
    jr z, jr_05e_54fb

jr_05e_54fb:
    rst $20

jr_05e_54fc:
    push hl
    jr z, jr_05e_54ff

jr_05e_54ff:
    jp hl


    db $db
    jr z, jr_05e_5503

jr_05e_5503:
    rst $18
    call c, RST_28
    sbc $e6
    jr z, jr_05e_550b

jr_05e_550b:
    db $dd
    ld a, [c]
    jr z, jr_05e_550f

jr_05e_550f:
    and $ee
    jr z, jr_05e_5513

jr_05e_5513:
    db $dd
    db $fc
    jr z, jr_05e_5517

jr_05e_5517:
    and $f7
    daa
    nop
    sub $1c
    jr nz, @+$22

    ldh [rNR52], a
    inc hl
    jr nz, jr_05e_54f9

    db $10
    add hl, hl
    jr nz, jr_05e_54fc

jr_05e_5528:
    inc b
    ld a, [hl+]
    jr nz, @-$12

jr_05e_552c:
    daa
    dec l
    jr nz, jr_05e_5528

jr_05e_5530:
    jr z, jr_05e_5560

    jr nz, jr_05e_552c

    dec bc
    daa
    jr nz, jr_05e_5530

jr_05e_5538:
    nop

jr_05e_5539:
    daa
    jr nz, jr_05e_552c

    nop
    daa
    jr nz, @-$0f

    ld a, [bc]
    daa
    jr nz, jr_05e_5539

    ld e, $28

jr_05e_5546:
    jr nz, jr_05e_5538

    inc d

jr_05e_5549:
    jr z, jr_05e_556b

    rst $20
    inc de
    jr z, jr_05e_556f

    jp hl


    dec e
    jr z, jr_05e_5573

    rst $18
    inc e
    jr z, jr_05e_5577

    sbc $12
    jr z, jr_05e_557b

    db $dd
    ld b, $28
    jr nz, jr_05e_5546

jr_05e_5560:
    ld a, [bc]
    jr z, jr_05e_5583

    and $01
    daa
    jr nz, @-$7e

    ret c

    inc sp
    inc hl

jr_05e_556b:
    jr nz, @-$26

    inc c
    daa

jr_05e_556f:
    jr nz, jr_05e_5549

jr_05e_5571:
    db $ec
    daa

jr_05e_5573:
    nop
    ret c

    push bc
    inc hl

jr_05e_5577:
    nop
    add sp, -$42
    dec hl

jr_05e_557b:
    nop
    add sp, $3a
    dec hl
    jr nz, jr_05e_5571

jr_05e_5581:
    ldh a, [rNR32]

jr_05e_5583:
    nop
    ldh a, [$f8]
    dec e
    nop
    ldh a, [$08]
    inc e
    jr nz, @-$0e

    nop
    dec e
    jr nz, @-$06

    ldh a, [rNR34]
    nop
    ld hl, sp+$08
    ld e, $20
    ld hl, sp-$08
    rra
    nop
    ld hl, sp+$00
    rra
    nop
    ld hl, sp-$48
    dec l
    nop
    ld hl, sp+$40
    dec l
    jr nz, @-$1e

    add $28
    nop
    ret c

    call RST_28
    ldh a, [$bd]
    jr z, jr_05e_55b4

jr_05e_55b4:
    ret c

    dec hl
    jr z, jr_05e_55d8

    ldh [$32], a
    jr z, jr_05e_55dc

    ldh a, [$3b]
    jr z, jr_05e_55e0

    add sp, $32
    jr z, jr_05e_55e4

    ld hl, sp+$38
    jr z, jr_05e_55e8

    ld hl, sp-$40
    jr z, jr_05e_55cc

jr_05e_55cc:
    add sp, -$3a
    jr z, jr_05e_55d0

jr_05e_55d0:
    ldh a, [$c5]
    jr z, jr_05e_55d4

jr_05e_55d4:
    ldh a, [$33]
    jr z, jr_05e_55f8

jr_05e_55d8:
    ldh [$ce], a
    jr z, jr_05e_55dc

jr_05e_55dc:
    ldh [$2a], a
    jr z, @+$22

jr_05e_55e0:
    ret c

    inc hl
    jr z, @+$22

jr_05e_55e4:
    ret c

    push de
    jr z, jr_05e_55e8

jr_05e_55e8:
    db $ec
    sub $27
    nop
    db $ec
    ld [hl+], a
    daa
    jr nz, @-$1c

    pop hl

jr_05e_55f2:
    daa
    nop
    ld hl, sp-$30
    daa
    nop

jr_05e_55f8:
    ld [c], a
    rla
    daa
    jr nz, @-$06

    jr z, @+$29

    jr nz, jr_05e_5581

    ldh [$e8], a
    jr nz, jr_05e_5605

jr_05e_5605:
    add sp, -$20
    inc hl
    nop
    ldh [rNR10], a
    jr nz, @+$22

    add sp, $18
    inc hl
    jr nz, jr_05e_55f2

    ldh a, [$29]
    nop
    ld hl, sp-$20
    ld l, $00
    ldh a, [$e0]
    dec l
    nop
    add sp, -$18
    inc l
    nop
    ldh [$f8], a
    ld a, [hl+]
    nop
    ldh [$08], a
    add hl, hl
    jr nz, @-$1e

    nop
    ld a, [hl+]
    jr nz, @-$16

jr_05e_562e:
    db $10
    inc l
    jr nz, @-$0e

    jr jr_05e_5661

    jr nz, jr_05e_562e

jr_05e_5636:
    jr @+$30

    jr nz, @-$16

    ldh a, [$28]
    ld h, b
    ldh a, [$08]
    jr z, jr_05e_5681

    add sp, $08
    jr z, jr_05e_5685

    db $ec
    inc h
    jr z, jr_05e_5669

    db $f4
    inc [hl]
    jr z, jr_05e_566d

    ldh [rNR41], a
    jr z, jr_05e_5671

    jp nc, $2814

    jr nz, jr_05e_5636

    ret c

    jr z, jr_05e_5659

jr_05e_5659:
    db $d2, $e4, $28

    nop
    ret nc

    db $f4
    jr z, jr_05e_5661

jr_05e_5661:
    ret nc

    inc b
    jr z, jr_05e_5685

    ld hl, sp-$18
    jr z, jr_05e_5689

jr_05e_5669:
    ld hl, sp+$10
    jr z, jr_05e_566d

jr_05e_566d:
    ldh a, [$f0]
    jr z, jr_05e_56d1

jr_05e_5671:
    add sp, $00
    jr z, jr_05e_56b5

    ld hl, sp+$08
    jr z, @+$42

    ld hl, sp+$00
    jr z, jr_05e_56bd

    add sp, -$08
    jr z, jr_05e_56e1

jr_05e_5681:
    ld hl, sp-$10
    jr z, jr_05e_56e5

jr_05e_5685:
    ld hl, sp-$08
    jr z, jr_05e_56e9

jr_05e_5689:
    db $ec
    call nc, RST_28
    db $f4
    call nz, RST_28
    ldh a, [rP1]
    jr z, jr_05e_56d5

    ldh a, [$f8]
    jr z, jr_05e_56f9

    ldh a, [$e8]
    jr z, @+$62

    ldh a, [rNR10]
    jr z, jr_05e_56a1

jr_05e_56a1:
    add b
    rst $10
    call c, RST_20
    ldh [$d1], a
    inc hl
    nop
    ldh [$27], a
    inc hl
    jr nz, @-$27

    inc e
    jr nz, @+$22

    ld hl, sp-$24
    daa

jr_05e_56b5:
    nop

jr_05e_56b6:
    db $ec

jr_05e_56b7:
    db $dc, $27, $00
    ldh [$e8], a
    daa

jr_05e_56bd:
    nop
    ldh [$f4], a
    daa
    nop
    db $eb
    rst $20
    daa
    nop
    db $ec
    inc e

jr_05e_56c8:
    daa
    jr nz, jr_05e_56b6

    ld de, $2027
    ld hl, sp+$1c

jr_05e_56d0:
    daa

jr_05e_56d1:
    jr nz, @-$1e

    db $10
    daa

jr_05e_56d5:
    jr nz, jr_05e_56b7

    inc b
    daa
    jr nz, jr_05e_56d0

    pop af
    jr z, jr_05e_56de

jr_05e_56de:
    ldh [$dc], a
    daa

jr_05e_56e1:
    nop
    ldh [rNR32], a
    daa

jr_05e_56e5:
    jr nz, jr_05e_56bd

    add sp, $29

jr_05e_56e9:
    nop
    push de
    db $f4
    ld a, [hl+]
    nop
    sub $10
    add hl, hl
    jr nz, jr_05e_56c8

    inc b
    ld a, [hl+]
    jr nz, @-$12

    ret nc

    dec l

jr_05e_56f9:
    nop
    ld hl, sp-$31

jr_05e_56fc:
    ld l, $00
    ld hl, sp+$29
    ld l, $20
    db $ec
    jr z, @+$2f

    jr nz, jr_05e_56fc

    rlca
    jr z, @+$22

    db $eb

jr_05e_570b:
    rlca
    jr z, @+$22

    push af
    ld de, $2028
    db $eb
    pop af
    jr z, jr_05e_5716

jr_05e_5716:
    push af
    rst $20
    jr z, jr_05e_571a

jr_05e_571a:
    ldh a, [$b8]
    dec l
    nop
    ldh [$c1], a
    dec hl
    nop
    ret nc

jr_05e_5723:
    call nc, $002c
    ret nc

    jr z, jr_05e_5755

    jr nz, jr_05e_570b

    scf
    dec hl
    jr nz, @-$0e

    ld b, b
    dec l
    jr nz, jr_05e_5723

    call nz, RST_28
    ldh a, [$34]
    jr z, jr_05e_575a

    ld [$28fc], a
    nop
    db $f4
    db $fc
    jr z, @+$22

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
    jr jr_05e_5753

jr_05e_5753:
    ret c

    push af

jr_05e_5755:
    ld de, $d800

jr_05e_5758:
    db $fd
    ld [de], a

jr_05e_575a:
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
    jr jr_05e_57cb

    ldh a, [$03]
    ld de, $f060

jr_05e_5770:
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
    jr nz, jr_05e_5758

jr_05e_5788:
    rst $18
    inc c
    jr nz, @-$26

jr_05e_578c:
    ret c

    db $10
    jr nz, jr_05e_5770

jr_05e_5790:
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

    jr nz, jr_05e_57bc

    jr nz, jr_05e_5788

    jr @+$11

    jr nz, jr_05e_578c

    db $10
    db $10
    jr nz, jr_05e_5790

    jr z, jr_05e_57c7

    jr nz, jr_05e_578c

jr_05e_57bc:
    jr jr_05e_57ca

    jr nz, jr_05e_5790

    jr nz, jr_05e_57cd

    jr nz, @-$1e

    add hl, de
    ld c, $40

jr_05e_57c7:
    ldh [rNR11], a
    dec c

jr_05e_57ca:
    ld b, b

jr_05e_57cb:
    ldh a, [rNR41]

jr_05e_57cd:
    rlca
    ld h, b
    ldh a, [rNR23]
    ld [$e860], sp
    jr nz, jr_05e_57df

    ld h, b
    add sp, $18
    ld a, [bc]
    ld h, b
    add sp, -$20
    dec bc
    ld b, b

jr_05e_57df:
    add sp, -$18
    inc c
    ld b, b
    add b
    ldh [rNR51], a
    rrca
    nop
    ldh [$2d], a
    stop
    add sp, $24
    ld c, $60
    add sp, $1c
    rrca
    ld h, b
    add sp, $14
    db $10
    ld h, b
    add sp, $2c
    dec c
    ld h, b
    ldh a, [rNR32]

jr_05e_57fe:
    inc c
    ld h, b
    ldh [rNR33], a
    ld c, $00
    ldh [$15], a
    dec c
    nop
    push hl
    ld a, [$2008]
    db $ed
    ld [bc], a

jr_05e_580e:
    add hl, bc
    jr nz, jr_05e_57fe

    ld a, [$200a]
    ret nc

jr_05e_5815:
    inc c
    rlca
    jr nz, @-$2e

jr_05e_5819:
    inc b
    ld [$d820], sp
    inc c
    add hl, bc
    jr nz, @-$26

    inc b
    ld a, [bc]
    jr nz, jr_05e_5815

jr_05e_5825:
    inc h
    add hl, bc
    jr nz, jr_05e_580e

    ld [bc], a
    rlca
    jr nz, jr_05e_5815

jr_05e_582d:
    and $0f
    jr nz, jr_05e_5819

jr_05e_5831:
    sbc $10
    jr nz, jr_05e_5825

    rst $20
    ld c, $40
    ldh a, [$ef]
    rrca
    ld b, b
    ldh a, [$f7]
    db $10
    ld b, b
    ldh a, [$df]
    dec c
    ld b, b
    add sp, -$12
    ld c, $20
    add sp, -$0a
    dec c
    jr nz, @-$06

    rst $20
    dec bc
    ld b, b
    ld hl, sp-$11
    inc c
    ld b, b
    ldh [$ee], a
    dec bc
    jr nz, @-$1e

    and $0c
    jr nz, jr_05e_582d

    inc l
    rlca
    jr nz, jr_05e_5831

    inc h
    ld [$d820], sp
    inc l
    add hl, bc
    jr nz, @-$26

    inc h
    ld a, [bc]
    jr nz, @-$26

    ld e, $0c
    jr nz, @-$7e

    call nc, $012a
    nop
    db $dc, $22, $02
    nop

jr_05e_5879:
    db $dc, $2a, $03
    nop
    call nc, $0022
    nop
    rst $20
    ld de, $2001
    rst $28
    ld de, $2003

jr_05e_5889:
    rst $28
    ld hl, $2002
    rst $20
    add hl, de
    inc b
    nop
    rst $28
    add hl, de
    dec b
    nop
    rst $20
    ld hl, $0001
    db $db
    add hl, bc
    nop
    jr nz, jr_05e_5879

    ld bc, $2001
    db $e3
    add hl, bc
    ld [bc], a
    jr nz, jr_05e_5889

    ld bc, $2003
    rst $30
    daa
    ld [bc], a
    nop
    rst $30
    cpl
    inc bc
    nop

jr_05e_58b1:
    rst $28
    daa
    nop
    nop

jr_05e_58b5:
    rst $28
    cpl
    ld bc, $f000
    ei
    nop
    nop
    ldh a, [$03]
    ld bc, $f800
    ei
    ld [bc], a
    nop
    ld hl, sp+$03
    inc bc
    nop

jr_05e_58c9:
    db $e3
    inc a
    rlca
    jr nz, jr_05e_58b1

    inc [hl]
    ld [$eb20], sp
    inc a
    add hl, bc
    jr nz, @-$13

    inc [hl]
    ld a, [bc]
    jr nz, jr_05e_58b5

    add hl, de
    rlca
    jr nz, @-$23

    ld de, $2008
    db $e3
    add hl, de
    add hl, bc
    jr nz, jr_05e_58c9

    ld de, $200a
    add b
    db $ec
    inc [hl]
    ld c, $40
    db $ec
    inc a
    rrca
    ld b, b
    db $ec
    ld b, h
    db $10
    ld b, b
    db $ec
    inc l
    dec c
    ld b, b
    db $f4

jr_05e_58fb:
    inc a
    inc c
    ld b, b
    db $f4
    inc [hl]
    add hl, bc
    nop
    db $f4
    add hl, de
    rlca
    ld b, b
    db $f4
    ld hl, $4008
    db $ec
    add hl, de
    add hl, bc
    ld b, b
    db $ec
    ld hl, $400a
    ldh a, [rDIV]
    rlca
    nop
    ldh a, [$0c]
    ld [$f800], sp
    inc b
    add hl, bc
    nop
    ld hl, sp+$0c
    ld a, [bc]
    nop
    db $ec
    inc de
    ld de, $ec60
    dec bc
    ld [de], a
    ld h, b
    db $d4, $04, $11
    nop
    call nc, $120c
    nop
    db $d4, $18, $14
    nop
    db $dc, $00, $15
    nop
    db $dc, $08, $16
    nop
    db $dc, $10, $17
    nop
    call c, $1818
    nop
    db $e4

jr_05e_5947:
    jr @+$17

    ld h, b
    db $e4

jr_05e_594b:
    db $10
    ld d, $60
    db $e4

jr_05e_594f:
    ld [$6017], sp
    db $e4

jr_05e_5953:
    nop
    jr jr_05e_59b6

    db $dc, $28, $07
    jr nz, @-$22

    jr nz, jr_05e_5965

    jr nz, @-$1a

    jr z, jr_05e_596a

    jr nz, jr_05e_5947

    jr nz, jr_05e_596f

jr_05e_5965:
    jr nz, jr_05e_594b

    dec sp
    ld c, $20

jr_05e_596a:
    db $e4
    inc sp
    rrca
    jr nz, jr_05e_5953

jr_05e_596f:
    ld b, e
    dec c
    jr nz, jr_05e_594f

    dec sp
    dec bc
    jr nz, jr_05e_5953

    inc sp
    inc c
    jr nz, jr_05e_58fb

    ret c

    ld [$0002], sp

jr_05e_597f:
    ret c

    db $10
    inc bc
    nop

jr_05e_5983:
    ret nc

    ld [$0000], sp
    db $e3
    ld hl, $0001
    db $eb
    ld hl, $0003

jr_05e_598f:
    db $eb
    ld de, $0002

jr_05e_5993:
    db $e3
    add hl, de
    inc b
    jr nz, jr_05e_5983

    add hl, de
    dec b
    jr nz, jr_05e_597f

    ld de, $2001
    di

jr_05e_59a0:
    dec bc
    ld [bc], a
    jr nz, @-$0b

    inc bc
    inc bc
    jr nz, jr_05e_5993

    inc bc
    ld bc, $f020

jr_05e_59ac:
    ld h, $07
    jr nz, jr_05e_59a0

jr_05e_59b0:
    ld e, $08
    jr nz, jr_05e_59ac

    ld h, $09

jr_05e_59b6:
    jr nz, jr_05e_59b0

    ld e, $0a
    jr nz, jr_05e_598f

    dec l
    nop
    nop
    db $d3
    dec [hl]
    ld bc, $db00
    dec l
    ld [bc], a

jr_05e_59c6:
    nop
    db $db
    dec [hl]
    inc bc
    nop
    rst $10
    jr nz, @+$09

    jr nz, @-$27

    jr jr_05e_59da

    jr nz, @-$1f

    jr nz, jr_05e_59df

jr_05e_59d6:
    jr nz, @-$1f

    jr @+$0c

jr_05e_59da:
    jr nz, jr_05e_59c6

    add hl, hl
    ld [bc], a
    nop

jr_05e_59df:
    ld [c], a
    ld sp, $0004
    add sp, $39
    dec b
    nop
    ldh [$39], a
    inc b
    nop
    db $eb
    dec bc
    inc c
    nop
    ret nc

    db $10
    rlca
    jr nz, jr_05e_59d6

    add hl, hl
    nop
    nop
    ldh [rSTAT], a
    ld bc, $ea00
    ld sp, $0005
    add sp, $41
    inc bc
    nop
    add b
    db $dc, $3c, $0e
    nop
    db $dc, $44, $0f
    nop
    db $dc, $34, $0d
    nop
    db $d4, $44, $0c
    nop
    db $e4
    ld b, e
    ld c, $60
    db $e4
    dec sp
    rrca
    ld h, b
    db $ec
    ld b, e
    dec bc
    ld h, b
    db $ec
    dec sp
    inc c
    ld h, b
    db $d4, $3c, $0b
    nop
    ldh [$2c], a
    ld de, $e020
    inc h
    ld [de], a
    jr nz, @-$06

    dec e
    ld de, $f840
    dec h
    ld [de], a
    ld b, b
    ld hl, sp+$31
    inc d
    ld b, b
    ldh a, [rNR24]
    dec d
    ld b, b
    ldh a, [rNR42]
    ld d, $40
    ldh a, [$29]
    rla
    ld b, b
    ldh a, [$31]
    jr @+$42

    add sp, $31
    dec d
    jr nz, @-$16

    add hl, hl
    ld d, $20
    add sp, $21
    rla
    jr nz, @-$16

    add hl, de
    jr jr_05e_5a7c

    ret c

    jr nz, @+$09

    ld b, b
    ret c

    jr z, jr_05e_5a6b

    ld b, b
    ret nc

    jr nz, jr_05e_5a70

    ld b, b
    ret nc

    jr z, jr_05e_5a75

jr_05e_5a6b:
    ld b, b
    ldh a, [$09]
    rlca
    ld b, b

jr_05e_5a70:
    ldh a, [rNR11]
    ld [$e840], sp

jr_05e_5a75:
    add hl, bc
    add hl, bc
    ld b, b
    add sp, $11
    ld a, [bc]
    ld b, b

jr_05e_5a7c:
    ldh a, [rSCX]

jr_05e_5a7e:
    rlca
    jr nz, @-$0e

jr_05e_5a81:
    dec sp
    ld [$f820], sp
    ld b, e
    add hl, bc
    jr nz, jr_05e_5a81

    dec sp
    ld a, [bc]
    jr nz, @-$7e

    ret nc

jr_05e_5a8e:
    ccf
    ld de, $d020

jr_05e_5a92:
    scf
    ld [de], a
    jr nz, jr_05e_5a7e

jr_05e_5a96:
    jr nc, jr_05e_5aa9

    ld b, b
    add sp, $38
    ld [de], a
    ld b, b
    add sp, $44
    inc d
    ld b, b
    ldh [$2c], a
    dec d
    ld b, b
    ldh [$34], a
    ld d, $40

jr_05e_5aa9:
    ldh [$3c], a
    rla
    ld b, b
    ldh [rLY], a
    jr @+$42

    ret c

    ld b, h
    dec d
    jr nz, jr_05e_5a8e

    inc a
    ld d, $20
    ret c

    inc [hl]
    rla
    jr nz, jr_05e_5a96

    inc l
    jr jr_05e_5ae1

    pop hl

jr_05e_5ac2:
    jr nz, jr_05e_5ad2

    nop
    pop hl

jr_05e_5ac6:
    jr z, jr_05e_5ad7

    nop
    jp hl


    daa
    ld c, $60
    jp hl


    rra
    rrca
    ld h, b
    pop af

jr_05e_5ad2:
    daa
    dec bc
    ld h, b
    pop af

jr_05e_5ad6:
    rra

jr_05e_5ad7:
    inc c
    ld h, b
    reti


    jr nz, jr_05e_5ae7

    nop
    ldh [rNR23], a
    dec c
    nop

jr_05e_5ae1:
    ldh [rNR14], a
    rlca
    jr nz, jr_05e_5ac6

    inc c

jr_05e_5ae7:
    ld [$e820], sp
    inc d
    add hl, bc
    jr nz, jr_05e_5ad6

    inc c
    ld a, [bc]
    jr nz, jr_05e_5ac2

    inc h
    rlca
    ld b, b
    ret nc

    inc l

jr_05e_5af7:
    ld [$f840], sp
    ld h, $09
    ld b, b
    ld hl, sp+$2e
    ld a, [bc]
    ld b, b
    ret c

    ld [$400e], sp
    ret c

    db $10
    rrca
    ld b, b
    ret nc

    rrca
    ld c, $20
    ret nc

    rlca
    rrca
    jr nz, jr_05e_5a92

    ldh [$d4], a
    rrca
    jr nz, jr_05e_5af7

    call z, $2010
    add sp, -$2b

jr_05e_5b1c:
    ld c, $40
    add sp, -$23
    rrca
    ld b, b
    add sp, -$1b
    db $10
    ld b, b
    add sp, -$33
    dec c
    ld b, b
    ldh a, [$dd]
    inc c
    ld b, b
    ldh [$dc], a
    ld c, $20
    ldh [$e4], a
    dec c
    jr nz, jr_05e_5b1c

    rst $38
    ld [$ed00], sp
    rst $30
    add hl, bc
    nop
    db $ed
    rst $38
    ld a, [bc]
    nop
    ret nc

    db $ed
    rlca
    nop
    ret nc

    push af
    ld [$d800], sp
    db $ed
    add hl, bc
    nop
    ret c

    push af
    ld a, [bc]
    nop
    ldh a, [$d5]
    add hl, bc
    nop
    push hl
    rst $30
    rlca
    nop
    add sp, $13
    rrca
    nop
    add sp, $1b
    stop
    ldh a, [rNR12]
    ld c, $60
    ldh a, [$0a]
    rrca
    ld h, b
    ldh a, [rSC]
    db $10
    ld h, b
    ldh a, [rNR30]
    dec c
    ld h, b
    add sp, $0b
    ld c, $00
    add sp, $03
    dec c
    nop
    ld hl, sp+$12
    dec bc
    ld h, b
    ld hl, sp+$0a

jr_05e_5b80:
    inc c
    ld h, b
    ldh [$0b], a

jr_05e_5b84:
    dec bc
    nop
    ldh [rNR13], a
    inc c
    nop
    ret nc

    db $cd, $07, $00
    ret nc

    push de
    ld [$d800], sp
    db $cd, $09, $00
    ret c

jr_05e_5b97:
    push de
    ld a, [bc]
    nop
    ret c

    db $db
    inc c
    nop
    add b
    call nc, $01ce
    jr nz, jr_05e_5b80

    sub $02
    jr nz, jr_05e_5b84

    adc $03
    jr nz, jr_05e_5b80

    sub $00
    jr nz, jr_05e_5b97

    rst $20
    ld bc, $ef00
    rst $20
    inc bc
    nop
    rst $28
    rst $10
    ld [bc], a
    nop
    rst $20
    rst $18
    inc b
    jr nz, @-$0f

    rst $18
    dec b
    jr nz, @-$17

    rst $10
    ld bc, $db20
    rst $28
    nop
    nop
    db $db
    rst $30
    ld bc, $e300
    rst $28
    ld [bc], a
    nop

jr_05e_5bd3:
    db $e3
    rst $30
    inc bc
    nop
    rst $30
    pop de
    ld [bc], a
    jr nz, jr_05e_5bd3

jr_05e_5bdc:
    ret


    inc bc
    jr nz, @-$0f

    pop de
    nop
    jr nz, jr_05e_5bd3

    ret


    ld bc, $f020
    db $fd
    nop
    jr nz, jr_05e_5bdc

jr_05e_5bec:
    push af
    ld bc, $f820
    db $fd
    ld [bc], a
    jr nz, jr_05e_5bec

    push af
    inc bc
    jr nz, @-$1b

    cp h
    rlca
    nop
    db $e3
    call nz, RST_08
    db $eb
    cp h
    add hl, bc
    nop
    db $eb
    db $c4, $0a, $00
    db $db
    rst $18
    rlca
    nop
    db $db
    rst $20
    ld [$e300], sp
    rst $18
    add hl, bc
    nop
    db $e3
    rst $20
    ld a, [bc]
    nop
    add b
    db $ec
    add $0e
    ld h, b
    db $ec
    cp [hl]
    rrca
    ld h, b
    db $ec
    or [hl]
    db $10
    ld h, b
    db $ec

jr_05e_5c25:
    adc $0d
    ld h, b
    db $f4
    cp [hl]
    inc c
    ld h, b
    db $f4
    add $09
    jr nz, jr_05e_5c25

jr_05e_5c31:
    pop hl
    rlca
    ld h, b
    db $f4

jr_05e_5c35:
    reti


    ld [$ec60], sp
    pop hl
    add hl, bc
    ld h, b
    db $ec

jr_05e_5c3d:
    reti


    ld a, [bc]
    ld h, b
    ldh a, [$f6]
    rlca
    jr nz, jr_05e_5c35

jr_05e_5c45:
    xor $08
    jr nz, @-$06

jr_05e_5c49:
    or $09
    jr nz, jr_05e_5c45

    xor $0a
    jr nz, jr_05e_5c3d

    rst $20
    ld de, $ec40
    rst $28
    ld [de], a
    ld b, b
    call nc, $11f6
    jr nz, jr_05e_5c31

    xor $12
    jr nz, jr_05e_5c35

    ld [c], a
    inc d
    jr nz, @-$22

    ld a, [$2015]
    db $dc, $f2, $16
    jr nz, jr_05e_5c49

    ld [$2017], a
    db $dc, $e2, $18
    jr nz, @-$1a

    ld [c], a
    dec d
    ld b, b
    db $e4
    ld [$4016], a
    db $e4
    ld a, [c]
    rla
    ld b, b
    db $e4
    ld a, [$4018]
    db $dc, $d2, $07
    nop
    db $dc, $da, $08
    nop
    db $e4
    db $d2, $09, $00

    db $e4
    db $da, $0a, $00

    db $e4
    cp a
    ld c, $00
    db $e4

jr_05e_5c99:
    rst $00
    rrca
    nop
    db $e4
    or a
    dec c
    nop
    db $dc, $bf, $0b
    nop
    db $dc, $c7, $0c
    nop
    add b

jr_05e_5ca9:
    ret c

    ldh a, [rSC]
    jr nz, @-$26

    add sp, $03
    jr nz, @-$2e

    ldh a, [rP1]
    jr nz, jr_05e_5c99

    rst $10
    ld bc, $eb20
    rst $10
    inc bc
    jr nz, jr_05e_5ca9

    rst $20
    ld [bc], a
    jr nz, @-$1b

    rst $18
    inc b
    nop
    db $eb
    rst $18
    dec b
    nop
    db $e3
    rst $20
    ld bc, $f300
    db $ed
    ld [bc], a
    nop

jr_05e_5cd1:
    di
    push af
    inc bc
    nop
    db $eb
    push af
    ld bc, $f000
    db $d2, $07, $00

    ldh a, [$da]
    ld [$f800], sp
    db $d2, $09, $00

    ld hl, sp-$26
    ld a, [bc]
    nop
    db $d3
    rlc b
    jr nz, @-$2b

jr_05e_5cee:
    jp $2001


    db $db
    rlc d
    jr nz, jr_05e_5cd1

jr_05e_5cf6:
    db $c3, $03, $20


    rst $10

jr_05e_5cfa:
    ret c

    rlca
    nop
    rst $10
    ldh [$08], a
    nop
    rst $18
    ret c

    add hl, bc
    nop

jr_05e_5d05:
    rst $18

jr_05e_5d06:
    ldh [$0a], a
    nop
    ld [$02cf], a
    jr nz, @-$1c

    rst $00
    inc b
    jr nz, jr_05e_5cfa

    cp a

jr_05e_5d13:
    dec b
    jr nz, jr_05e_5cf6

    cp a

jr_05e_5d17:
    inc b
    jr nz, jr_05e_5d05

    db $ed
    inc c
    jr nz, jr_05e_5cee

    add sp, $07
    nop
    add sp, -$49
    inc bc
    jr nz, jr_05e_5d06

    or a

jr_05e_5d27:
    nop
    nop
    ld [$05c7], a
    nop
    ld [c], a
    rst $08
    ld bc, $8000
    db $dc, $bc, $0e
    jr nz, jr_05e_5d13

jr_05e_5d37:
    or h
    rrca
    jr nz, jr_05e_5d17

    call nz, $200d
    db $d4, $b4, $0c
    jr nz, jr_05e_5d27

    or l
    ld c, $40
    db $e4
    cp l
    rrca
    ld b, b
    db $ec
    or l
    dec bc
    ld b, b
    db $ec
    cp l
    inc c
    ld b, b
    db $d4, $bc, $0b
    jr nz, jr_05e_5d37

    call z, $0011
    ldh [$d4], a
    ld [de], a
    nop
    ld hl, sp-$25
    ld de, $f860
    db $d3
    ld [de], a
    ld h, b
    ld hl, sp-$39
    inc d
    ld h, b
    ldh a, [$df]
    dec d
    ld h, b
    ldh a, [$d7]
    ld d, $60
    ldh a, [$cf]
    rla
    ld h, b
    ldh a, [$c7]
    jr jr_05e_5dda

    add sp, -$39
    dec d
    nop
    add sp, -$31
    ld d, $00
    add sp, -$29
    rla
    nop
    add sp, -$21
    jr jr_05e_5d8a

jr_05e_5d8a:
    ret c

    ret c

    rlca
    ld h, b
    ret c

    ret nc

    ld [$d060], sp
    ret c

    add hl, bc
    ld h, b
    ret nc

    ret nc

    ld a, [bc]
    ld h, b
    ldh a, [$ef]

jr_05e_5d9c:
    rlca
    ld h, b
    ldh a, [$e7]

jr_05e_5da0:
    ld [$e860], sp
    rst $28
    add hl, bc
    ld h, b
    add sp, -$19
    ld a, [bc]
    ld h, b
    ldh a, [$b5]
    rlca
    nop
    ldh a, [$bd]

jr_05e_5db0:
    ld [$f800], sp
    or l
    add hl, bc
    nop
    ld hl, sp-$43
    ld a, [bc]
    nop
    add b
    db $dc, $bc, $0e
    jr nz, jr_05e_5d9c

jr_05e_5dc0:
    or h
    rrca
    jr nz, jr_05e_5da0

    call nz, $200d
    db $d4, $b4, $0c
    jr nz, jr_05e_5db0

    or l
    ld c, $40
    db $e4
    cp l
    rrca
    ld b, b
    db $ec
    or l
    dec bc
    ld b, b
    db $ec
    cp l
    inc c

jr_05e_5dda:
    ld b, b
    db $d4, $bc, $0b
    jr nz, jr_05e_5dc0

    call z, $0011
    ldh [$d4], a
    ld [de], a
    nop
    ld hl, sp-$25
    ld de, $f860
    db $d3
    ld [de], a
    ld h, b
    ld hl, sp-$39
    inc d
    ld h, b
    ldh a, [$df]
    dec d
    ld h, b
    ldh a, [$d7]
    ld d, $60
    ldh a, [$cf]
    rla
    ld h, b
    ldh a, [$c7]
    jr jr_05e_5e63

    add sp, -$39
    dec d
    nop
    add sp, -$31
    ld d, $00
    add sp, -$29
    rla
    nop
    add sp, -$21
    jr jr_05e_5e13

jr_05e_5e13:
    ret c

    ret c

    rlca
    ld h, b
    ret c

    ret nc

    ld [$d060], sp
    ret c

    add hl, bc
    ld h, b
    ret nc

    ret nc

    ld a, [bc]
    ld h, b
    ldh a, [$ef]
    rlca
    ld h, b
    ldh a, [$e7]
    ld [$e860], sp
    rst $28
    add hl, bc
    ld h, b
    add sp, -$19
    ld a, [bc]
    ld h, b
    ldh a, [$b5]
    rlca
    nop
    ldh a, [$bd]
    ld [$f800], sp
    or l
    add hl, bc
    nop
    ld hl, sp-$43
    ld a, [bc]
    nop
    add b
    add h
    ld e, [hl]
    pop hl
    ld e, [hl]
    ld [hl], d
    ld e, a
    inc bc
    ld h, b
    sub h
    ld h, b
    dec h
    ld h, c
    or [hl]
    ld h, c
    ld b, a
    ld h, d
    ret c

    ld h, d
    ld l, c
    ld h, e
    adc d
    ld h, e
    bit 4, e
    ld l, h
    ld h, h
    dec c
    ld h, l
    xor [hl]
    ld h, l
    ld b, e

jr_05e_5e63:
    ld h, [hl]
    call c, Call_05e_7d66
    ld h, a
    ld c, $68
    sbc e
    ld l, b
    jr nz, jr_05e_5ed7

    pop bc
    ld l, c
    ld a, $6a
    sub a
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    xor e
    ld l, d
    ld hl, sp-$40
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    add sp, -$40
    nop
    nop
    ld hl, sp-$20
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add sp, -$10
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret c

    ldh a, [rP1]
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    add sp, $00
    nop
    nop
    ld hl, sp+$20
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    add sp, $20
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret c

    jr nz, jr_05e_5ecb

jr_05e_5ecb:
    nop
    ld hl, sp+$30
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh [rP1], a
    nop

jr_05e_5ed7:
    nop
    ret c

    nop
    nop
    nop
    ret nc

    nop
    nop
    nop
    add b
    add sp, -$40
    ld bc, $e000
    ret nz

    ld bc, $d000
    ret nz

    ld bc, $d800
    ret nz

    ld bc, $f800
    ldh [rSB], a
    nop
    ldh a, [$e0]
    ld bc, $e800
    ldh [rSB], a
    nop
    ldh [$e0], a
    ld bc, $d000
    ldh [rSB], a
    nop
    ret c

    ldh [rSB], a
    nop
    ld hl, sp-$10
    ld bc, $f000
    ldh a, [rSB]
    nop
    add sp, -$10
    ld bc, $e000
    ldh a, [rSB]
    nop
    ret nc

    ldh a, [rSB]
    nop
    ret c

    ldh a, [rSB]
    nop
    ld hl, sp+$00
    ld bc, $f000
    nop
    ld bc, $e800
    nop
    ld bc, $e000
    nop
    ld bc, $d000
    nop
    ld bc, $d800
    nop
    ld bc, $f800
    jr nz, jr_05e_5f3d

    nop

jr_05e_5f3d:
    ldh a, [rNR41]
    ld bc, $e800
    jr nz, jr_05e_5f45

    nop

jr_05e_5f45:
    ldh [rNR41], a
    ld bc, $d000
    jr nz, jr_05e_5f4d

    nop

jr_05e_5f4d:
    ret c

    jr nz, jr_05e_5f51

    nop

jr_05e_5f51:
    ld hl, sp+$30
    ld bc, $f000
    jr nc, jr_05e_5f59

    nop

jr_05e_5f59:
    add sp, $30
    ld bc, $e000
    jr nc, jr_05e_5f61

    nop

jr_05e_5f61:
    ret nc

    jr nc, jr_05e_5f65

    nop

jr_05e_5f65:
    ret c

    jr nc, jr_05e_5f69

    nop

jr_05e_5f69:
    ld hl, sp-$40
    ld bc, $f000
    ret nz

    ld bc, $8000
    ldh a, [$c8]
    ld [bc], a
    nop
    add sp, -$38
    ld [bc], a
    nop
    ldh [$c8], a
    ld [bc], a
    nop
    ret c

    ret z

    ld [bc], a
    nop
    ret nc

    ret z

    ld [bc], a
    nop
    ld hl, sp-$28
    ld [bc], a
    nop
    ldh a, [$d8]
    ld [bc], a
    nop
    add sp, -$28
    ld [bc], a
    nop
    ldh [$d8], a
    ld [bc], a
    nop
    ret c

    ret c

    ld [bc], a
    nop
    ret nc

    ret c

    ld [bc], a
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [$f8]
    ld [bc], a
    nop
    add sp, -$08
    ld [bc], a
    nop
    ldh [$f8], a
    ld [bc], a
    nop
    ret c

    ld hl, sp+$02
    nop
    ret nc

    ld hl, sp+$02
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ldh a, [$08]
    ld [bc], a
    nop
    add sp, $08
    ld [bc], a
    nop
    ldh [$08], a
    ld [bc], a
    nop
    ret c

    ld [$0002], sp
    ret nc

    ld [$0002], sp
    ld hl, sp+$18
    ld [bc], a
    nop
    ldh a, [rNR23]
    ld [bc], a
    nop
    add sp, $18
    ld [bc], a
    nop
    ldh [rNR23], a
    ld [bc], a
    nop
    ret c

    jr jr_05e_5fe3

    nop
    ret nc

jr_05e_5fe3:
    jr @+$04

    nop
    ld hl, sp+$38
    ld [bc], a
    nop
    ldh a, [$38]
    ld [bc], a
    nop
    add sp, $38
    ld [bc], a
    nop
    ldh [$38], a
    ld [bc], a
    nop
    ret c

    jr c, jr_05e_5ffb

    nop
    ret nc

jr_05e_5ffb:
    jr c, @+$04

    nop
    ld hl, sp-$38
    ld [bc], a
    nop
    add b
    ld hl, sp-$44
    ld [bc], a
    nop
    ldh a, [$bc]
    ld [bc], a
    nop
    add sp, -$44
    ld [bc], a
    nop
    ldh [$bc], a
    ld [bc], a
    nop
    ret c

    cp h
    ld [bc], a
    nop
    ret nc

    cp h
    ld [bc], a
    nop
    ld hl, sp-$26
    ld [bc], a
    nop
    ldh a, [$da]
    ld [bc], a
    nop
    add sp, -$26
    ld [bc], a
    nop
    ldh [$da], a
    ld [bc], a
    nop
    ret c

    db $da, $02, $00

    ret nc

    db $da, $02, $00

    ld hl, sp-$10
    ld [bc], a
    nop
    ldh a, [$f0]
    ld [bc], a
    nop
    add sp, -$10
    ld [bc], a
    nop
    ldh [$f0], a
    ld [bc], a
    nop
    ret c

    ldh a, [rSC]
    nop
    ret nc

    ldh a, [rSC]
    nop
    ld hl, sp-$04
    ld [bc], a
    nop
    ldh a, [$fc]
    ld [bc], a
    nop
    add sp, -$04
    ld [bc], a
    nop
    ldh [$fc], a
    ld [bc], a
    nop
    ret c

    db $fc
    ld [bc], a
    nop
    ret nc

    db $fc
    ld [bc], a
    nop
    ld hl, sp+$20
    ld [bc], a
    nop
    ldh a, [rNR41]
    ld [bc], a
    nop
    add sp, $20
    ld [bc], a
    nop
    ldh [rNR41], a
    ld [bc], a
    nop
    ret c

    jr nz, jr_05e_6078

    nop
    ret nc

jr_05e_6078:
    jr nz, @+$04

    nop
    ld hl, sp+$40
    ld [bc], a
    nop
    ldh a, [rLCDC]
    ld [bc], a
    nop
    add sp, $40
    ld [bc], a
    nop
    ldh [rLCDC], a
    ld [bc], a
    nop
    ret c

    ld b, b
    ld [bc], a
    nop
    ret nc

    ld b, b
    ld [bc], a
    nop
    add b
    ld hl, sp+$26
    inc bc
    nop
    ldh a, [rNR52]
    inc bc
    nop
    add sp, $26
    inc bc
    nop
    ldh [rNR52], a
    inc bc
    nop
    ret c

jr_05e_60a5:
    ld h, $03
    nop
    ret nc

    ld h, $03
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [$f8]
    inc bc
    nop
    add sp, -$08
    inc bc
    nop
    ldh [$f8], a
    inc bc
    nop
    ret c

    ld hl, sp+$03
    nop
    ret nc

jr_05e_60c1:
    ld hl, sp+$03
    nop
    ld hl, sp-$48
    inc bc
    nop
    ldh a, [$b8]
    inc bc
    nop
    add sp, -$48
    inc bc
    nop
    ldh [$b8], a
    inc bc
    nop
    ret c

    cp b
    inc bc
    nop
    ret nc

jr_05e_60d9:
    cp b
    inc bc
    nop
    ld hl, sp-$40
    inc bc
    jr nz, @-$0e

jr_05e_60e1:
    ret nz

    inc bc
    jr nz, @-$16

jr_05e_60e5:
    ret nz

    inc bc
    jr nz, @-$1e

jr_05e_60e9:
    ret nz

    inc bc
    jr nz, @-$26

jr_05e_60ed:
    ret nz

    inc bc
    jr nz, jr_05e_60c1

jr_05e_60f1:
    ret nz

    inc bc
    jr nz, jr_05e_60ed

jr_05e_60f5:
    nop
    inc bc
    jr nz, jr_05e_60e9

jr_05e_60f9:
    nop
    inc bc
    jr nz, jr_05e_60e5

jr_05e_60fd:
    nop
    inc bc
    jr nz, jr_05e_60e1

jr_05e_6101:
    nop
    inc bc
    jr nz, @-$26

jr_05e_6105:
    nop
    inc bc
    jr nz, jr_05e_60d9

    nop
    inc bc
    jr nz, jr_05e_6105

    ld l, $03
    jr nz, jr_05e_6101

    ld l, $03
    jr nz, jr_05e_60fd

    ld l, $03
    jr nz, jr_05e_60f9

    ld l, $03
    jr nz, jr_05e_60f5

    ld l, $03
    jr nz, jr_05e_60f1

    ld l, $03
    jr nz, jr_05e_60a5

    ld hl, sp-$30
    inc bc
    nop
    ldh a, [$d0]
    inc bc
    nop
    add sp, -$30
    inc bc
    nop
    ldh [$d0], a
    inc bc
    nop
    ret c

jr_05e_6136:
    ret nc

    inc bc
    nop
    ret nc

    ret nc

    inc bc
    nop
    ld hl, sp-$28
    inc bc
    jr nz, @-$0e

    ret c

    inc bc
    jr nz, @-$16

    ret c

    inc bc
    jr nz, @-$1e

    ret c

    inc bc
    jr nz, @-$26

jr_05e_614e:
    ret c

    inc bc
    jr nz, @-$2e

jr_05e_6152:
    ret c

    inc bc
    jr nz, jr_05e_614e

jr_05e_6156:
    inc a
    inc bc
    nop
    ldh a, [$3c]
    inc bc
    nop
    add sp, $3c
    inc bc
    nop
    ldh [$3c], a
    inc bc
    nop
    ret c

    inc a
    inc bc
    nop
    ret nc

    inc a
    inc bc
    nop
    ld hl, sp+$44
    inc bc
    jr nz, @-$0e

    ld b, h
    inc bc
    jr nz, @-$16

    ld b, h
    inc bc
    jr nz, @-$1e

    ld b, h
    inc bc
    jr nz, jr_05e_6156

jr_05e_617e:
    ld b, h
    inc bc
    jr nz, jr_05e_6152

jr_05e_6182:
    ld b, h
    inc bc
    jr nz, jr_05e_617e

jr_05e_6186:
    db $10
    inc bc
    nop
    ldh a, [rNR10]
    inc bc
    nop
    add sp, $10
    inc bc
    nop
    ldh [rNR10], a
    inc bc
    nop
    ret c

    db $10
    inc bc
    nop
    ret nc

    db $10

jr_05e_619b:
    inc bc
    nop
    ld hl, sp+$18

jr_05e_619f:
    inc bc
    jr nz, @-$0e

    jr @+$05

    jr nz, @-$16

    jr @+$05

    jr nz, @-$1e

    jr @+$05

    jr nz, jr_05e_6186

    jr @+$05

    jr nz, jr_05e_6182

    jr @+$05

    jr nz, jr_05e_6136

    ld hl, sp+$3c
    inc bc
    jr nz, @-$0e

    inc a
    inc bc
    jr nz, @-$16

    inc a
    inc bc
    jr nz, @-$1e

    inc a
    inc bc
    jr nz, jr_05e_619f

jr_05e_61c7:
    inc a
    inc bc
    jr nz, jr_05e_619b

    inc a
    inc bc
    jr nz, jr_05e_61c7

    inc l
    inc bc
    nop
    ldh a, [$2c]
    inc bc
    nop
    add sp, $2c
    inc bc
    nop
    ldh [$2c], a
    inc bc
    nop
    ret c

    inc l
    inc bc
    nop
    ret nc

jr_05e_61e3:
    inc l
    inc bc
    nop
    ld hl, sp+$34
    inc b
    nop
    ldh a, [$34]
    inc b
    nop
    add sp, $34
    inc b
    nop
    ldh [$34], a
    inc b
    nop
    ret c

    inc [hl]
    inc b
    nop
    ret nc

    inc [hl]
    inc b
    nop
    ld hl, sp-$30
    inc bc
    jr nz, @-$0e

    ret nc

    inc bc
    jr nz, @-$16

    ret nc

    inc bc
    jr nz, @-$1e

    ret nc

    inc bc
    jr nz, @-$26

jr_05e_620f:
    ret nc

    inc bc
    jr nz, jr_05e_61e3

    ret nc

    inc bc
    jr nz, jr_05e_620f

    ret nz

    inc bc
    nop
    ldh a, [$c0]
    inc bc
    nop
    add sp, -$40
    inc bc
    nop
    ldh [$c0], a
    inc bc
    nop
    ret c

    ret nz

    inc bc
    nop
    ret nc

    ret nz

jr_05e_622c:
    inc bc
    nop
    ld hl, sp-$38

jr_05e_6230:
    inc b
    nop
    ldh a, [$c8]

jr_05e_6234:
    inc b
    nop
    add sp, -$38

jr_05e_6238:
    inc b
    nop
    ldh [$c8], a

jr_05e_623c:
    inc b
    nop
    ret c

    ret z

    inc b
    nop
    ret nc

    ret z

    inc b
    nop
    add b
    ld hl, sp+$20
    inc bc
    jr nz, jr_05e_623c

    jr nz, @+$05

    jr nz, jr_05e_6238

    jr nz, @+$05

    jr nz, jr_05e_6234

    jr nz, @+$05

    jr nz, jr_05e_6230

jr_05e_6258:
    jr nz, @+$05

    jr nz, jr_05e_622c

    jr nz, jr_05e_6261

    jr nz, jr_05e_6258

    db $10

jr_05e_6261:
    inc bc
    nop
    ldh a, [rNR10]
    inc bc
    nop
    add sp, $10
    inc bc
    nop
    ldh [rNR10], a
    inc bc
    nop
    ret c

    db $10
    inc bc
    nop
    ret nc

jr_05e_6274:
    db $10
    inc bc
    nop
    ld hl, sp+$18
    inc b
    nop
    ldh a, [rNR23]
    inc b
    nop
    add sp, $18
    inc b
    nop
    ldh [rNR23], a
    inc b
    nop
    ret c

    jr jr_05e_628e

    nop
    ret nc

    jr jr_05e_6292

jr_05e_628e:
    nop
    ld hl, sp-$10
    inc bc

jr_05e_6292:
    jr nz, @-$0e

    ldh a, [$03]
    jr nz, @-$16

    ldh a, [$03]
    jr nz, @-$1e

    ldh a, [$03]
    jr nz, @-$26

jr_05e_62a0:
    ldh a, [$03]
    jr nz, jr_05e_6274

    ldh a, [$03]
    jr nz, jr_05e_62a0

    ldh [$03], a
    nop
    ldh a, [$e0]
    inc bc
    nop
    add sp, -$20
    inc bc
    nop
    ldh [$e0], a
    inc bc
    nop
    ret c

    ldh [$03], a
    nop
    ret nc

    ldh [$03], a
    nop
    ld hl, sp-$18
    inc b
    nop
    ldh a, [$e8]
    inc b
    nop
    add sp, -$18
    inc b
    nop
    ldh [$e8], a
    inc b
    nop
    ret c

    add sp, $04
    nop
    ret nc

    add sp, $04
    nop
    add b
    ld hl, sp-$18
    inc bc
    nop
    ldh a, [$e8]
    inc bc
    nop
    add sp, -$18
    inc bc
    nop
    ldh [$e8], a
    inc bc
    nop
    ret c

    add sp, $03
    nop
    ret nc

jr_05e_62ed:
    add sp, $03
    nop
    ld hl, sp-$10
    inc b
    nop
    ldh a, [$f0]
    inc b
    nop
    add sp, -$10
    inc b
    nop
    ldh [$f0], a
    inc b
    nop
    ret c

    ldh a, [rDIV]
    nop
    ret nc

    ldh a, [rDIV]
    nop
    ld hl, sp+$10
    inc bc
    jr nz, @-$0e

    db $10
    inc bc
    jr nz, @-$16

    db $10
    inc bc
    jr nz, @-$1e

    db $10
    inc bc
    jr nz, @-$26

jr_05e_6319:
    db $10
    inc bc
    jr nz, jr_05e_62ed

    db $10
    inc bc
    jr nz, jr_05e_6319

    ld [$0004], sp
    ldh a, [$08]
    inc b
    nop
    add sp, $08
    inc b
    nop
    ldh [$08], a
    inc b
    nop
    ret c

    ld [$0004], sp
    ret nc

    ld [$0004], sp
    ld hl, sp+$00
    inc b
    nop
    ldh a, [rP1]
    inc b
    nop
    add sp, $00
    inc b
    nop
    ldh [rP1], a
    inc b
    nop
    ret c

    nop
    inc b
    nop
    ret nc

    nop
    inc b
    nop
    ld hl, sp-$08
    inc b
    nop
    ldh a, [$f8]
    inc b
    nop
    add sp, -$08
    inc b
    nop
    ldh [$f8], a
    inc b
    nop
    ret c

    ld hl, sp+$04
    nop
    ret nc

    ld hl, sp+$04
    nop
    add b
    ret c

    jr jr_05e_6373

    nop
    db $e4
    ld hl, sp+$12
    nop
    db $e4
    nop

jr_05e_6373:
    inc de
    nop
    ld hl, sp+$40
    inc c
    nop
    ld hl, sp+$48
    dec c
    nop
    ldh a, [$30]
    dec b
    nop
    ld hl, sp-$18
    dec b
    nop
    ldh a, [rNR10]
    rlca
    nop
    add b
    ret nc

jr_05e_638b:
    db $fc
    db $10
    ld b, b
    ld hl, sp+$08
    rra
    jr nz, jr_05e_638b

    nop
    jr nz, jr_05e_63b6

    ld hl, sp-$08
    ld hl, $f020
    ld hl, sp+$05
    ld b, b
    add sp, $40
    inc c
    nop
    add sp, $48
    dec c
    nop
    ldh a, [rLCDC]
    ld c, $00
    ldh a, [rOBP0]
    rrca
    nop
    ldh [$30], a
    dec b
    ld b, b
    ldh a, [$28]
    dec b
    nop

jr_05e_63b6:
    db $f4
    inc e
    ld [de], a
    jr nz, @-$0a

    inc d
    inc de
    jr nz, @-$16

    add sp, $05
    ld b, b
    ldh a, [$b0]
    ld b, $00
    ret c

    db $10
    ld b, $40
    add b
    add sp, -$08
    rra
    nop
    add sp, $00
    jr nz, jr_05e_63d3

jr_05e_63d3:
    add sp, $08
    ld hl, $f000
    ld hl, sp+$22
    nop
    ldh a, [rP1]
    inc hl
    nop
    ldh a, [$08]
    inc h
    nop
    ld hl, sp-$08
    dec h
    nop
    ld hl, sp+$00
    ld h, $00
    ld hl, sp+$08
    daa
    nop
    ldh [$c0], a
    dec de
    nop
    ldh [$c8], a
    inc e
    nop
    ldh [$d0], a
    dec e
    nop
    ldh [$d8], a
    ld e, $00
    ret c

    ret nz

    rla
    nop
    ret c

    ret z

    jr jr_05e_6407

jr_05e_6407:
    ret c

    ret nc

    add hl, de
    nop
    ret c

    ret c

    ld a, [de]
    nop
    ret nc

    pop bc
    inc d
    nop
    ret nc

    ret


    dec d
    nop
    ret nc

    pop de
    ld d, $00
    ret c

    ld b, b
    ld [$d800], sp
    ld c, b
    add hl, bc
    nop
    ldh [rLCDC], a
    ld a, [bc]
    nop
    ldh [rOBP0], a
    dec bc
    nop
    ldh a, [$28]
    rlca
    nop
    ldh [$b0], a
    ld b, $00
    ldh [$f8], a
    dec b
    jr nz, @-$0e

    ret c

    ld b, $20
    ret nc

    jr nc, @+$07

    nop
    ld hl, sp-$38
    rlca
    jr nz, @-$16

    jr jr_05e_6457

    nop
    ldh [rNR23], a
    stop
    ld hl, sp-$48
    ld de, $f000
    cp b
    stop
    ldh a, [$30]
    inc c
    nop

jr_05e_6457:
    ldh a, [$38]
    dec c
    nop
    ld hl, sp+$30
    ld c, $00
    ld hl, sp+$38
    rrca
    nop
    ret c

    add sp, $05
    nop
    ldh [$28], a

jr_05e_6469:
    dec b
    ld b, b
    add b
    ret c

jr_05e_646d:
    ld hl, sp+$1f
    nop
    ret c

    nop
    jr nz, jr_05e_6474

jr_05e_6474:
    ret c

jr_05e_6475:
    ld [$0021], sp
    ldh [$f8], a
    ld [hl+], a
    nop
    ldh [rP1], a
    inc hl
    nop
    ldh [$08], a
    inc h
    nop
    add sp, -$08
    dec h
    nop
    add sp, $00
    ld h, $00
    add sp, $08
    daa
    nop
    ret nc

    ret c

    dec de
    jr nz, @-$2e

jr_05e_6495:
    ret nc

    inc e
    jr nz, jr_05e_6469

    ret z

    dec e
    jr nz, jr_05e_646d

    ret nz

    ld e, $20
    ret nc

    ld c, b
    ld a, [bc]
    jr nz, jr_05e_6475

    ld b, b
    dec bc
    jr nz, @-$1e

    jr z, @+$09

    jr nz, @-$2e

jr_05e_64ad:
    or b
    ld b, $20
    ret nc

jr_05e_64b1:
    ld hl, sp+$05
    jr nz, jr_05e_6495

    ret c

    ld b, $00
    add sp, -$38
    rlca
    nop
    ret c

jr_05e_64bd:
    inc d
    ld de, $d020

jr_05e_64c1:
    inc d
    db $10
    jr nz, jr_05e_64ad

    or h
    ld de, $e020
    or h
    db $10
    jr nz, jr_05e_64ad

    jr c, jr_05e_64db

    jr nz, jr_05e_64b1

jr_05e_64d1:
    jr nc, @+$0f

    jr nz, jr_05e_64bd

    jr c, @+$10

    jr nz, jr_05e_64c1

    jr nc, jr_05e_64ea

jr_05e_64db:
    jr nz, jr_05e_64ad

    jr z, jr_05e_64e4

    jr nz, jr_05e_64d1

    ld a, [$0028]

jr_05e_64e4:
    ldh a, [rSC]

jr_05e_64e6:
    add hl, hl
    nop
    ld hl, sp+$2f

jr_05e_64ea:
    inc d
    nop
    ld hl, sp+$37
    dec d
    nop
    ld hl, sp+$3f

jr_05e_64f2:
    ld d, $00
    ldh a, [rOBP0]

jr_05e_64f6:
    dec b
    nop
    ld hl, sp+$18
    rlca
    nop
    ldh a, [$e8]
    ld b, $00
    ld hl, sp-$28
    dec b
    nop
    ld hl, sp-$48
    ld [de], a
    nop
    ld hl, sp-$40
    inc de
    nop
    add b
    ret nc

    ld [$2022], sp
    ret nc

    nop
    inc hl
    jr nz, jr_05e_64e6

    ld hl, sp+$24
    jr nz, jr_05e_64f2

    ld [$2025], sp
    ret c

    nop
    ld h, $20
    ret c

    ld hl, sp+$27
    jr nz, jr_05e_64f6

    jr z, jr_05e_652f

    nop
    ret nc

    ret c

    ld b, $40
    ret c

    ret z

jr_05e_652f:
    rlca
    ld b, b
    ret nc

jr_05e_6532:
    or h
    ld de, $d860
    or h
    db $10
    ld h, b
    ret c

    jr nc, jr_05e_6548

    ld b, b
    ret c

    jr c, jr_05e_654d

    ld b, b
    ret nc

    jr nc, jr_05e_6552

    ld b, b
    ret nc

    jr c, jr_05e_6557

jr_05e_6548:
    ld b, b
    ldh [rTMA], a
    jr z, jr_05e_656d

jr_05e_654d:
    ldh [$fe], a
    add hl, hl
    jr nz, jr_05e_6532

jr_05e_6552:
    ld c, b
    dec b
    ld b, b
    add sp, $18

jr_05e_6557:
    rlca
    ld b, b
    ldh [$e8], a
    ld b, $00
    add sp, -$28
    dec b
    ld b, b
    ldh a, [$bc]
    ld de, $e800
    cp h
    stop
    add sp, $2f
    inc d
    nop

jr_05e_656d:
    add sp, $37
    dec d
    nop
    add sp, $3f
    ld d, $00
    ldh a, [$2e]
    rla
    nop
    ldh a, [$36]
    jr jr_05e_657d

jr_05e_657d:
    ldh a, [$3e]
    add hl, de
    nop
    ldh a, [rDMA]
    ld a, [de]
    nop
    ld hl, sp+$2e
    dec de
    nop
    ld hl, sp+$36
    inc e
    nop
    ld hl, sp+$3e
    dec e
    nop
    ld hl, sp+$46
    ld e, $00
    ldh a, [$f8]
    stop
    ld hl, sp-$08
    ld de, $f000
    ret nc

    ld [$f000], sp
    ret c

    add hl, bc
    nop
    ld hl, sp-$30
    ld a, [bc]
    nop
    ld hl, sp-$28
    dec bc
    nop
    add b
    ret nc

    ld a, [$0028]
    ret nc

    ld [bc], a
    add hl, hl
    nop
    ret nc

    ld c, b
    dec b
    ld h, b
    ret c

    jr jr_05e_65c4

    nop
    ret nc

    add sp, $06
    nop
    ret c

    ret c

jr_05e_65c4:
    dec b
    nop
    add sp, $45
    inc d
    ld h, b
    add sp, $3d
    dec d
    ld h, b
    add sp, $35
    ld d, $60
    ldh [rDMA], a
    rla
    ld h, b
    ldh [$3e], a
    jr jr_05e_663a

    ldh [$36], a
    add hl, de
    ld h, b
    ldh [$2e], a
    ld a, [de]
    ld h, b
    ret c

    ld b, [hl]
    dec de
    ld h, b
    ret c

    ld a, $1c
    ld h, b
    ret c

    ld [hl], $1d
    ld h, b
    ret c

    ld l, $1e
    ld h, b
    add sp, -$30
    ld [$e840], sp
    ret c

    add hl, bc
    ld b, b
    ldh [$d0], a
    ld a, [bc]
    ld b, b
    ldh [$d8], a
    dec bc
    ld b, b
    db $e4
    ld hl, sp+$12
    nop
    db $e4

jr_05e_6607:
    nop
    inc de
    nop
    db $dc, $b8, $12
    ld b, b
    db $dc, $c0, $13
    ld b, b
    ldh a, [$d7]
    inc d
    jr nz, jr_05e_6607

    rst $08
    dec d
    jr nz, @-$0e

jr_05e_661b:
    rst $00
    ld d, $20
    ld hl, sp-$28
    rla
    jr nz, jr_05e_661b

jr_05e_6623:
    ret nc

    jr jr_05e_6646

    ld hl, sp-$38
    add hl, de
    jr nz, jr_05e_6623

    ret nz

    ld a, [de]
    jr nz, @-$06

    ld b, b
    inc c
    nop
    ld hl, sp+$48
    dec c
    nop
    ldh a, [$30]
    dec b
    nop

jr_05e_663a:
    ld hl, sp-$18
    dec b
    nop
    ldh a, [rNR10]
    rlca
    nop
    add b
    ret c

    cpl
    inc d

jr_05e_6646:
    ld b, b
    ret c

    scf
    dec d
    ld b, b
    ret c

    ccf
    ld d, $40
    ret nc

    ld l, $17
    ld b, b
    ret nc

    ld [hl], $18
    ld b, b
    ret nc

    ld a, $19
    ld b, b
    ret nc

    ld b, [hl]
    ld a, [de]
    ld b, b
    ret c

    ret nc

    ld [$d840], sp
    ret c

    add hl, bc
    ld b, b
    ret nc

    ret nc

    ld a, [bc]
    ld b, b
    ret nc

    ret c

    dec bc
    ld b, b
    ldh a, [$d7]
    inc d
    ld h, b
    ldh a, [$cf]
    dec d
    ld h, b
    ldh a, [$c7]
    ld d, $60
    add sp, -$28
    rla
    ld h, b
    add sp, -$30
    jr jr_05e_66e3

    add sp, -$38
    add hl, de
    ld h, b
    add sp, -$40
    ld a, [de]
    ld h, b
    ldh [$d8], a
    dec de
    ld h, b
    ldh [$d0], a
    inc e
    ld h, b
    ldh [$c8], a
    dec e
    ld h, b
    ldh [$c0], a
    ld e, $60
    ret nc

jr_05e_669c:
    db $fc
    db $10
    ld b, b
    ld hl, sp+$08
    rra
    jr nz, jr_05e_669c

    nop
    jr nz, jr_05e_66c7

    ld hl, sp-$08
    ld hl, $f020
    ld hl, sp+$05
    ld b, b
    add sp, $40
    inc c
    nop
    add sp, $48
    dec c
    nop
    ldh a, [rLCDC]

jr_05e_66b9:
    ld c, $00
    ldh a, [rOBP0]
    rrca
    nop
    ldh [$30], a
    dec b
    ld b, b
    ldh a, [$28]
    dec b
    nop

jr_05e_66c7:
    db $f4
    inc e
    ld [de], a
    jr nz, @-$0a

    inc d
    inc de
    jr nz, @-$16

    add sp, $05
    ld b, b
    ldh a, [$b0]

jr_05e_66d5:
    ld b, $00
    ret c

    db $10
    ld b, $40
    add b
    ldh a, [$38]
    rlca
    nop
    ldh [$08], a
    dec b

jr_05e_66e3:
    jr nz, jr_05e_66d5

    add sp, $06
    jr nz, jr_05e_66b9

    ld b, b
    dec b
    nop
    add sp, $28
    ld de, $e000
    jr z, jr_05e_6703

    nop
    ldh [$38], a
    dec b
    ld b, b
    add sp, $10
    dec de
    ld h, b
    add sp, $08
    inc e
    ld h, b
    add sp, $00
    dec e

jr_05e_6703:
    ld h, b
    add sp, -$08
    ld e, $60
    ldh a, [rNR10]
    rla
    ld h, b
    ldh a, [$08]
    jr @+$62

    ldh a, [rP1]
    add hl, de
    ld h, b
    ldh a, [$f8]
    ld a, [de]
    ld h, b
    ld hl, sp+$0f
    inc d
    ld h, b
    ld hl, sp+$07
    dec d
    ld h, b
    ld hl, sp-$01
    ld d, $60
    ldh [$b0], a
    ld b, $00
    ldh [rLCDC], a
    inc c
    ld b, b
    ldh [rOBP0], a
    dec c
    ld b, b
    ret c

    ld b, b
    ld c, $40
    ret c

    ld c, b
    rrca
    ld b, b
    ret c

    add sp, $05
    nop
    ldh [$c0], a
    dec de
    nop
    ldh [$c8], a
    inc e
    nop
    ldh [$d0], a
    dec e
    nop
    ldh [$d8], a
    ld e, $00
    ret c

    ret nz

    rla
    nop
    ret c

    ret z

jr_05e_6752:
    jr jr_05e_6754

jr_05e_6754:
    ret c

    ret nc

    add hl, de
    nop
    ret c

    ret c

    ld a, [de]
    nop
    ret nc

    pop bc

jr_05e_675e:
    inc d
    nop
    ret nc

    ret


jr_05e_6762:
    dec d
    nop
    ret nc

    pop de
    ld d, $00
    ld hl, sp+$20
    dec b
    nop
    ldh a, [$c0]
    ld [$f000], sp
    ret z

    add hl, bc
    nop
    ld hl, sp-$40
    ld a, [bc]
    nop
    ld hl, sp-$38
    dec bc
    nop
    add b
    ldh [$38], a
    rlca
    jr nz, jr_05e_6752

jr_05e_6782:
    ld [$0005], sp
    ldh [$e8], a
    ld b, $00
    ret c

jr_05e_678a:
    jr z, jr_05e_679d

    jr nz, jr_05e_675e

jr_05e_678e:
    jr z, jr_05e_67a0

    jr nz, jr_05e_6762

jr_05e_6792:
    jr c, @+$07

    ld h, b
    add sp, $10
    dec de
    jr nz, jr_05e_6782

    ld [$201c], sp

jr_05e_679d:
    add sp, $00
    dec e

jr_05e_67a0:
    jr nz, jr_05e_678a

jr_05e_67a2:
    ld hl, sp+$1e
    jr nz, @-$1e

jr_05e_67a6:
    db $10
    rla
    jr nz, jr_05e_678a

jr_05e_67aa:
    ld [$2018], sp
    ldh [rP1], a
    add hl, de
    jr nz, jr_05e_6792

    ld hl, sp+$1a
    jr nz, jr_05e_678e

    rrca
    inc d
    jr nz, jr_05e_6792

    rlca
    dec d
    jr nz, @-$26

    rst $38
    ld d, $20
    ret nc

    or b
    ld b, $00
    ret nc

    ld c, b
    inc c
    ld h, b
    ret nc

jr_05e_67ca:
    ld b, b
    dec c
    ld h, b
    ret nc

    ret c

    dec de
    jr nz, jr_05e_67a2

    ret nc

    inc e
    jr nz, jr_05e_67a6

    ret z

    dec e
    jr nz, jr_05e_67aa

    ret nz

    ld e, $20
    add sp, $20
    dec b
    jr nz, jr_05e_67ca

    ret nz

jr_05e_67e3:
    ld [$e840], sp
    ret z

    add hl, bc
    ld b, b
    ldh [$c0], a
    ld a, [bc]
    ld b, b
    ldh [$c8], a
    dec bc
    ld b, b
    ld hl, sp+$20

jr_05e_67f3:
    rra
    nop
    ld hl, sp+$28

jr_05e_67f7:
    jr nz, jr_05e_67f9

jr_05e_67f9:
    ld hl, sp+$30

jr_05e_67fb:
    ld hl, $f800
    ldh a, [rTMA]
    nop
    ld hl, sp-$48

jr_05e_6803:
    rlca
    nop
    db $f4
    inc a
    ld [de], a
    nop
    db $f4
    ld b, h
    inc de
    nop
    add b
    ret nc

jr_05e_680f:
    jr c, jr_05e_6818

    jr nz, jr_05e_67e3

jr_05e_6813:
    add sp, $06
    nop
    ret c

    db $10

jr_05e_6818:
    dec de
    jr nz, jr_05e_67f3

    ld [$201c], sp
    ret c

    nop
    dec e
    jr nz, jr_05e_67fb

    ld hl, sp+$1e
    jr nz, jr_05e_67f7

    db $10
    rla
    jr nz, jr_05e_67fb

    ld [$2018], sp
    ret nc

    nop
    add hl, de
    jr nz, jr_05e_6803

    ld hl, sp+$1a
    jr nz, jr_05e_680f

jr_05e_6837:
    jr nz, @+$07

    jr nz, jr_05e_6813

jr_05e_683b:
    ret nz

    ld [$d840], sp

jr_05e_683f:
    ret z

    add hl, bc
    ld b, b
    ret nc

    ret nz

    ld a, [bc]
    ld b, b
    ret nc

    ret z

    dec bc
    ld b, b
    add sp, $30
    rra
    jr nz, jr_05e_6837

    jr z, jr_05e_6871

    jr nz, jr_05e_683b

    jr nz, @+$23

    jr nz, jr_05e_683f

    ldh a, [rTMA]
    nop
    add sp, -$48
    rlca
    nop
    db $e4

jr_05e_685f:
    inc a
    ld [de], a
    nop
    db $e4
    ld b, h
    inc de
    nop
    ldh a, [$30]
    ld [hl+], a
    jr nz, @-$0e

jr_05e_686b:
    jr z, jr_05e_6890

    jr nz, jr_05e_685f

jr_05e_686f:
    jr nz, @+$26

jr_05e_6871:
    jr nz, jr_05e_686b

jr_05e_6873:
    jr nc, jr_05e_689a

    jr nz, jr_05e_686f

    jr z, jr_05e_689f

    jr nz, jr_05e_6873

    jr nz, jr_05e_68a4

    jr nz, jr_05e_686f

    ret nc

    ld [$f000], sp
    ret c

    add hl, bc
    nop
    ld hl, sp-$30
    ld a, [bc]
    nop
    ld hl, sp-$28
    dec bc
    nop
    ldh a, [$f8]

jr_05e_6890:
    stop
    ld hl, sp-$08
    ld de, $f800
    cp h
    stop

jr_05e_689a:
    add b
    ret c

    jr nz, jr_05e_68bd

    nop

jr_05e_689f:
    ret c

    jr z, jr_05e_68c2

    nop
    ret c

jr_05e_68a4:
    jr nc, jr_05e_68c7

    nop
    ret c

    ldh a, [rTMA]
    nop
    ret c

    cp b
    rlca
    nop
    call nc, $123c
    nop
    call nc, $1344
    nop
    ldh [rNR41], a
    ld [hl+], a
    nop
    ldh [$28], a

jr_05e_68bd:
    inc hl
    nop
    ldh [$30], a
    inc h

jr_05e_68c2:
    nop
    add sp, $20
    dec h
    nop

jr_05e_68c7:
    add sp, $28
    ld h, $00
    add sp, $30
    daa
    nop
    ldh [$d0], a
    ld [$e000], sp
    ret c

    add hl, bc
    nop
    add sp, -$30
    ld a, [bc]
    nop
    add sp, -$28
    dec bc
    nop
    add sp, -$44
    stop
    ldh a, [rNR43]
    jr z, jr_05e_68e7

jr_05e_68e7:
    ldh a, [$2a]
    add hl, hl
    nop
    ldh a, [$d7]
    inc d
    jr nz, @-$0e

    rst $08
    dec d
    jr nz, @-$0e

jr_05e_68f4:
    rst $00
    ld d, $20
    ld hl, sp-$28
    rla
    jr nz, jr_05e_68f4

jr_05e_68fc:
    ret nc

    jr jr_05e_691f

    ld hl, sp-$38
    add hl, de
    jr nz, jr_05e_68fc

    ret nz

    ld a, [de]
    jr nz, @-$06

    ld b, b
    inc c
    nop
    ld hl, sp+$48
    dec c
    nop
    ldh a, [rNR10]
    rlca
    nop
    db $e4
    db $f4
    ld [de], a
    nop
    db $e4
    db $fc
    inc de
    nop
    ld hl, sp-$18
    dec b
    nop

jr_05e_691f:
    add b
    ret nc

    jr nz, jr_05e_6945

    nop
    ret nc

    jr z, jr_05e_694a

    nop
    ret nc

    jr nc, @+$26

    nop
    ret c

    jr nz, jr_05e_6954

    nop
    ret c

    jr z, @+$28

    nop
    ret c

    jr nc, jr_05e_695e

    nop
    ret nc

    ret nc

    ld [$d000], sp
    ret c

    add hl, bc
    nop
    ret c

    ret nc

    ld a, [bc]
    nop
    ret c

jr_05e_6945:
    ret c

    dec bc
    nop
    ret c

    cp h

jr_05e_694a:
    stop
    ldh [rNR43], a
    jr z, jr_05e_6950

jr_05e_6950:
    ldh [$2a], a
    add hl, hl
    nop

jr_05e_6954:
    add sp, $40
    inc c
    nop
    add sp, $48
    dec c
    nop
    ldh [rNR10], a

jr_05e_695e:
    rlca
    nop
    db $d4, $f4, $12
    nop
    call nc, $13fc
    nop
    add sp, -$18
    dec b
    nop
    ld hl, sp+$08
    rra
    jr nz, @-$06

    nop
    jr nz, jr_05e_6994

    ld hl, sp-$08
    ld hl, $f020
    ld hl, sp+$05
    ld b, b
    ldh a, [rLCDC]
    ld c, $00
    ldh a, [rOBP0]
    rrca
    nop
    ldh a, [$28]
    dec b
    nop
    db $f4
    dec e
    ld [de], a
    jr nz, @-$0a

    dec d
    inc de
    jr nz, @-$0e

    or b
    ld b, $00

jr_05e_6994:
    ldh a, [$d7]
    inc d
    ld h, b
    ldh a, [$cf]
    dec d
    ld h, b
    ldh a, [$c7]
    ld d, $60
    add sp, -$28
    rla
    ld h, b
    add sp, -$30
    jr jr_05e_6a08

    add sp, -$38
    add hl, de
    ld h, b
    add sp, -$40
    ld a, [de]
    ld h, b
    ldh [$d8], a
    dec de
    ld h, b
    ldh [$d0], a
    inc e
    ld h, b
    ldh [$c8], a
    dec e
    ld h, b
    ldh [$c0], a
    ld e, $60
    add b
    add sp, -$08
    rra
    nop
    add sp, $00
    jr nz, jr_05e_69c9

jr_05e_69c9:
    add sp, $08
    ld hl, $f000
    ld hl, sp+$22
    nop
    ldh a, [rP1]
    inc hl
    nop
    ldh a, [$08]
    inc h
    nop
    ld hl, sp-$08
    dec h
    nop
    ld hl, sp+$00
    ld h, $00
    ld hl, sp+$08
    daa
    nop
    ldh [$c0], a
    dec de
    nop
    ldh [$c8], a
    inc e
    nop
    ldh [$d0], a
    dec e
    nop
    ldh [$d8], a
    ld e, $00
    ret c

    ret nz

    rla
    nop
    ret c

jr_05e_69fa:
    ret z

    jr jr_05e_69fd

jr_05e_69fd:
    ret c

    ret nc

    add hl, de
    nop
    ret c

    ret c

    ld a, [de]
    nop
    ret nc

    pop bc
    inc d

jr_05e_6a08:
    nop
    ret nc

    ret


    dec d
    nop
    ret nc

    pop de
    ld d, $00
    ret c

    ld b, b
    ld [$d800], sp
    ld c, b
    add hl, bc
    nop
    ldh [rLCDC], a
    ld a, [bc]
    nop
    ldh [rOBP0], a
    dec bc
    nop
    ldh [$b0], a
    ld b, $00
    ldh [$f8], a
    dec b
    jr nz, jr_05e_69fa

    jr nc, @+$07

jr_05e_6a2c:
    nop
    add sp, $18
    ld de, $e000
    jr jr_05e_6a44

    nop
    ret c

    add sp, $05
    nop
    ldh [$28], a

jr_05e_6a3b:
    dec b
    ld b, b
    add b
    ret c

jr_05e_6a3f:
    ld hl, sp+$1f
    nop
    ret c

    nop

jr_05e_6a44:
    jr nz, jr_05e_6a46

jr_05e_6a46:
    ret c

jr_05e_6a47:
    ld [$0021], sp
    ldh [$f8], a
    ld [hl+], a
    nop
    ldh [rP1], a
    inc hl
    nop
    ldh [$08], a
    inc h
    nop
    add sp, -$08
    dec h
    nop
    add sp, $00
    ld h, $00
    add sp, $08
    daa
    nop
    ret nc

    ret c

    dec de
    jr nz, @-$2e

    ret nc

    inc e
    jr nz, jr_05e_6a3b

    ret z

    dec e
    jr nz, jr_05e_6a3f

    ret nz

    ld e, $20
    ret nc

    ld c, b
    ld a, [bc]
    jr nz, jr_05e_6a47

    ld b, b
    dec bc
    jr nz, @-$2e

    or b

jr_05e_6a7c:
    ld b, $20
    ret nc

jr_05e_6a7f:
    ld hl, sp+$05
    jr nz, @-$26

    inc d
    ld de, $d020
    inc d
    db $10
    jr nz, @-$2e

    jr z, jr_05e_6a92

    jr nz, jr_05e_6a7f

    ld a, [$0028]

jr_05e_6a92:
    ldh a, [rSC]
    add hl, hl
    nop
    add b
    ret nc

    ld [$2025], sp
    ret nc

    nop
    ld h, $20
    ret nc

    ld hl, sp+$27
    jr nz, jr_05e_6a7c

    ld b, $28
    jr nz, @-$26

    cp $29
    jr nz, jr_05e_6a2c

    db $ec
    ld l, d
    ld e, l
    ld l, e
    and $6b
    sbc a
    ld l, h
    ld c, b
    ld l, l
    add hl, bc
    ld l, [hl]
    ld a, [c]
    ld l, [hl]
    db $d3
    ld l, a
    ld a, h
    ld [hl], b
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    inc a
    ld [hl], c
    ldh a, [$f0]
    rra
    nop
    ld hl, sp-$08
    ld hl, $f500

jr_05e_6af5:
    db $eb
    rra
    nop
    add sp, -$14
    ld e, $00
    db $ec
    ld hl, sp+$13
    nop
    ret c

    ldh a, [$1f]
    ld b, b
    ret nc

    ld hl, sp+$21
    ld b, b
    db $d3
    db $eb
    rra
    ld b, b
    ldh [$ec], a
    ld e, $40
    ldh [$f5], a
    inc de
    ld b, b
    ret c

    ld sp, hl
    rrca
    jr nz, jr_05e_6af5

jr_05e_6b19:
    ld hl, sp+$13
    ld b, b
    ldh a, [$09]
    rra
    jr nz, jr_05e_6b19

jr_05e_6b21:
    ld bc, $2021
    push af
    ld c, $1f
    jr nz, @-$16

    dec c
    ld e, $20
    add sp, $04
    inc de
    jr nz, jr_05e_6b21

    nop
    rrca
    ld b, b
    db $ec
    ld bc, $2013
    ret c

    add hl, bc
    rra
    ld h, b
    ret nc

    ld bc, $6021
    db $d3
    ld c, $1f
    ld h, b
    ldh [$0d], a
    ld e, $60
    ldh [rDIV], a
    inc de
    ld h, b
    call c, $1301
    ld h, b
    add sp, -$0b
    inc de
    nop
    ldh a, [$f9]
    rrca
    ld h, b
    ret c

    nop
    rrca
    nop
    add b
    xor $e8
    jr jr_05e_6b61

jr_05e_6b61:
    or $f8
    dec de
    nop
    and $e4
    inc d
    nop
    or $f0
    jr jr_05e_6b6d

jr_05e_6b6d:
    db $da, $e8, $18
    ld b, b
    jp nc, $1bf8

    ld b, b
    ld [c], a
    db $e4
    inc d
    ld b, b
    db $d2, $f0, $18

    ld b, b
    xor $10
    jr jr_05e_6ba1

    or $00
    dec de

jr_05e_6b84:
    jr nz, @-$18

    inc d
    inc d
    jr nz, @-$08

    ld [$2018], sp
    jp c, $1810

    ld h, b
    jp nc, $1b00

jr_05e_6b94:
    ld h, b
    ld [c], a
    inc d
    inc d
    ld h, b
    jp nc, $1808

    ld h, b
    ld [c], a
    inc c
    inc de
    nop

jr_05e_6ba1:
    jp c, $1308

    nop
    jp c, $13f0

    jr nz, jr_05e_6b84

    ld hl, sp+$13
    jr nz, jr_05e_6b94

    db $ec
    inc de
    ld h, b
    xor $f0

jr_05e_6bb3:
    inc de

jr_05e_6bb4:
    ld h, b
    xor $08
    inc de
    ld b, b
    xor $00
    inc de
    ld b, b
    db $da, $00, $13

    nop
    xor $f8
    inc de
    ld h, b
    ld [c], a
    db $ec
    inc de
    jr nz, jr_05e_6bb4

    inc c
    inc de
    nop
    db $e4
    db $f4
    ld a, [bc]
    nop
    db $e4
    inc b
    ld a, [bc]
    jr nz, @-$0b

    db $e3
    add hl, bc
    nop
    di
    dec d
    add hl, bc
    jr nz, jr_05e_6bb3

    dec d
    add hl, bc
    ld h, b
    push de
    db $e3

jr_05e_6be3:
    add hl, bc
    ld b, b
    add b
    ldh a, [$f0]
    add hl, de
    nop
    ld hl, sp-$10
    dec de
    nop
    ldh a, [$e0]
    inc d
    nop
    ld hl, sp-$20
    rla
    nop
    ret c

    ldh a, [rNR24]
    ld b, b
    ret nc

jr_05e_6bfb:
    ldh a, [rNR31]
    ld b, b
    ret c

    ldh [rNR14], a
    ld b, b
    ret nc

    ldh [rNR22], a
    ld b, b
    ld hl, sp+$08
    dec de
    jr nz, jr_05e_6bfb

    jr jr_05e_6c21

    jr nz, @-$06

    jr jr_05e_6c28

    jr nz, jr_05e_6be3

    ld [$601b], sp
    ret c

    jr jr_05e_6c2d

    ld h, b
    ret nc

    jr jr_05e_6c34

    ld h, b
    ldh a, [$08]
    add [hl]

jr_05e_6c21:
    jr nz, jr_05e_6bfb

    ld [$6086], sp
    ret c

    nop

jr_05e_6c28:
    dec c
    ld h, b
    ret nc

jr_05e_6c2b:
    ld hl, sp+$0e

jr_05e_6c2d:
    ld b, b
    ret nc

    nop
    ld c, $40
    ldh a, [$f8]

jr_05e_6c34:
    dec c
    nop
    ldh a, [rP1]
    dec c
    jr nz, @-$06

jr_05e_6c3b:
    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    ld c, $00
    ret c

    db $10
    inc b
    nop
    ret c

    add sp, $04
    jr nz, jr_05e_6c3b

    db $10
    inc b

jr_05e_6c4d:
    jr nz, @-$0e

    add sp, $04
    nop
    ld hl, sp-$18
    rra
    nop
    ld hl, sp+$10
    rra
    jr nz, jr_05e_6c2b

    db $10
    rra
    nop
    ret nc

    add sp, $1f
    jr nz, jr_05e_6c4d

jr_05e_6c63:
    or $08
    nop
    sbc $f6
    ld [$de40], sp

jr_05e_6c6b:
    ld [bc], a
    ld [$ea60], sp
    ld [bc], a
    ld [$e020], sp
    rst $20
    nop
    ld b, b
    add sp, -$1e
    ld bc, $e400
    ldh [$0b], a
    nop
    add sp, $11
    nop
    jr nz, jr_05e_6c63

    ld de, $6000
    add sp, $16
    ld bc, $e020
    ld d, $01
    ld h, b
    db $e4
    jr jr_05e_6c9c

    jr nz, jr_05e_6c6b

    ld hl, sp+$0d
    ld b, b
    add sp, -$19
    nop
    nop
    ldh [$e2], a

jr_05e_6c9c:
    ld bc, $8040
    ldh a, [$dc]
    inc d
    nop
    ldh a, [$e4]
    dec d
    nop
    ld hl, sp-$24
    rla
    nop
    ld hl, sp-$14
    ld a, [de]
    nop
    di
    pop af
    add hl, de
    nop
    ld hl, sp-$08
    stop
    ret c

    call c, Call_05e_4014
    ret c

    db $e4
    dec d
    ld b, b
    ret nc

jr_05e_6cc0:
    call c, $4017
    ret nc

jr_05e_6cc4:
    db $ec
    ld a, [de]
    ld b, b
    push de
    pop af
    add hl, de
    ld b, b
    ret nc

    ld hl, sp+$10
    ld b, b
    ldh a, [rNR32]
    inc d
    jr nz, jr_05e_6cc4

jr_05e_6cd4:
    inc d
    dec d
    jr nz, @-$06

jr_05e_6cd8:
    inc e
    rla
    jr nz, jr_05e_6cd4

jr_05e_6cdc:
    inc c
    ld a, [de]
    jr nz, @-$0b

    rlca
    add hl, de
    jr nz, jr_05e_6cdc

    nop
    db $10
    jr nz, jr_05e_6cc0

    inc e
    inc d
    ld h, b
    ret c

    inc d
    dec d
    ld h, b
    ret nc

    inc e
    rla
    ld h, b
    ret nc

    inc c
    ld a, [de]
    ld h, b
    push de
    rlca
    add hl, de
    ld h, b
    ret nc

    nop
    db $10
    ld h, b

jr_05e_6cff:
    ld hl, sp-$1c
    rra
    nop
    ret nc

    db $e4
    rra
    jr nz, jr_05e_6cd8

    inc d
    rra
    nop
    ld hl, sp+$14
    rra
    jr nz, jr_05e_6cff

    db $fc
    dec c
    nop
    reti


    db $fc
    dec c
    ld b, b
    ldh [$db], a
    ld bc, $e840
    db $db
    ld bc, $e800
    db $e3
    ld de, $e000
    db $e3
    ld de, $e940
    db $ed
    ld [bc], a
    nop
    rst $18
    db $ed
    ld [bc], a
    ld b, b
    ldh [rNR33], a
    ld bc, $e860
    dec e
    ld bc, $e820
    dec d
    ld de, $e020
    dec d
    ld de, $e960
    dec bc
    ld [bc], a
    jr nz, @-$1f

    dec bc
    ld [bc], a
    ld h, b
    add b
    ld hl, sp-$0c
    jr nz, jr_05e_6d4c

jr_05e_6d4c:
    ldh a, [$d8]
    dec d
    nop
    ld hl, sp-$30
    rla
    nop
    xor $eb
    rra
    nop
    ld hl, sp-$18
    ld a, [de]
    nop
    ret nc

    db $f4
    jr nz, @+$42

    ret c

    ret c

    dec d
    ld b, b
    ret nc

    ret nc

    rla
    ld b, b
    db $da, $eb, $1f

    ld b, b
    ret nc

    add sp, $1a
    ld b, b
    ld hl, sp-$21
    rra
    nop
    ret nc

    rst $18
    rra
    ld b, b
    ld [$1ff6], a
    nop
    sbc $f6
    rra
    ld b, b
    ldh a, [$d0]
    ld [bc], a
    nop
    ret c

jr_05e_6d85:
    ret nc

    ld [bc], a
    ld b, b
    add sp, -$29
    inc bc
    nop
    ldh [$d7], a
    inc bc
    ld b, b
    add sp, -$22
    ld bc, $e060
    sbc $01
    jr nz, @-$0e

jr_05e_6d99:
    pop hl
    ld [bc], a

jr_05e_6d9b:
    nop
    ret c

jr_05e_6d9d:
    pop hl
    ld [bc], a
    jr nz, jr_05e_6d99

jr_05e_6da1:
    inc b
    jr nz, jr_05e_6dc4

    ldh a, [rNR41]
    dec d
    jr nz, jr_05e_6da1

jr_05e_6da9:
    jr z, @+$19

    jr nz, jr_05e_6d9b

    dec c
    rra
    jr nz, jr_05e_6da9

    db $10
    ld a, [de]

jr_05e_6db3:
    jr nz, jr_05e_6d85

jr_05e_6db5:
    inc b
    jr nz, jr_05e_6e18

    ret c

    jr nz, jr_05e_6dd0

    ld h, b
    ret nc

    jr z, jr_05e_6dd6

    ld h, b
    db $da, $0d, $1f

    ld h, b

jr_05e_6dc4:
    ret nc

jr_05e_6dc5:
    db $10
    ld a, [de]
    ld h, b
    ld hl, sp+$19
    rra
    jr nz, jr_05e_6d9d

jr_05e_6dcd:
    add hl, de
    rra
    ld h, b

jr_05e_6dd0:
    ld [$1f02], a
    jr nz, jr_05e_6db3

    ld [bc], a

jr_05e_6dd6:
    rra
    ld h, b
    ldh a, [$28]
    ld [bc], a
    jr nz, jr_05e_6db5

    jr z, @+$04

    ld h, b
    add sp, $21
    inc bc
    jr nz, jr_05e_6dc5

    ld hl, $6003
    add sp, $1a
    ld bc, $e040

jr_05e_6ded:
    ld a, [de]
    ld bc, $f000
    rla
    ld [bc], a
    jr nz, jr_05e_6dcd

    rla
    ld [bc], a
    nop
    ldh [$28], a
    rlca
    nop
    add sp, $28
    rlca
    ld b, b
    ldh [$d0], a
    rlca
    jr nz, jr_05e_6ded

    ret nc

    rlca
    ld h, b
    add b
    ldh a, [$f8]
    dec de
    nop
    add sp, -$10
    inc d
    nop
    ldh a, [$dd]
    inc e
    nop
    ldh a, [$f0]
    dec e

jr_05e_6e18:
    nop
    ld hl, sp-$1f
    jr jr_05e_6e1d

jr_05e_6e1d:
    ld hl, sp-$3e
    rla
    nop
    ld hl, sp-$2d
    rla
    nop
    ret c

    ld hl, sp+$1b
    ld b, b
    ldh [$f0], a
    inc d
    ld b, b
    ret c

    db $dd
    inc e
    ld b, b
    ret c

    ldh a, [rNR33]
    ld b, b
    ret nc

    pop hl
    jr @+$42

    ret nc

    jp nz, $4017

    ret nc

    db $d3
    rla
    ld b, b
    ld hl, sp-$11
    jr nz, jr_05e_6e45

jr_05e_6e45:
    add sp, -$08
    ld [de], a
    nop
    ldh [$f8], a
    ld [de], a
    ld b, b
    ld hl, sp-$04
    dec c
    nop
    ret nc

    rst $28
    jr nz, jr_05e_6e95

    ret nc

jr_05e_6e56:
    db $fc
    dec c
    ld h, b
    ldh [$d7], a
    nop
    jr nz, @-$16

    rst $10
    nop
    ld h, b
    ret c

jr_05e_6e62:
    ret z

    ld [bc], a
    jr nz, jr_05e_6e56

    ret z

    ld [bc], a
    ld h, b
    add sp, -$38
    ld b, $00
    ldh [$c8], a
    ld b, $40
    ldh a, [$d0]
    nop
    ld h, b
    ret c

jr_05e_6e76:
    ret nc

    nop
    jr nz, jr_05e_6e62

    rst $08
    inc bc
    nop
    ldh [$cf], a
    inc bc
    ld b, b
    ldh a, [rP1]
    dec de
    jr nz, @-$16

    ld [$2014], sp
    ldh a, [rNR31]
    inc e
    jr nz, @-$0e

    ld [$201d], sp
    ld hl, sp+$17
    jr jr_05e_6eb5

jr_05e_6e95:
    ld hl, sp+$36
    rla
    jr nz, @-$06

    dec h
    rla
    jr nz, jr_05e_6e76

    nop
    dec de
    ld h, b
    ldh [$08], a
    inc d
    ld h, b
    ret c

    dec de
    inc e
    ld h, b
    ret c

    ld [$601d], sp
    ret nc

    rla
    jr @+$62

    ret nc

    ld [hl], $17
    ld h, b

jr_05e_6eb5:
    ret nc

    dec h
    rla
    ld h, b
    ld hl, sp+$09
    jr nz, jr_05e_6edd

    add sp, $00
    ld [de], a
    jr nz, @-$1e

    nop
    ld [de], a
    ld h, b
    ret nc

    add hl, bc
    jr nz, jr_05e_6f29

    ldh [rNR42], a
    nop
    nop
    add sp, $21
    nop
    ld b, b
    ret c

    jr nc, @+$04

    nop
    ldh a, [$30]
    ld [bc], a
    ld b, b
    add sp, $30
    ld b, $20

jr_05e_6edd:
    ldh [$30], a
    ld b, $60
    ldh a, [$28]
    nop
    ld b, b
    ret c

    jr z, jr_05e_6ee8

jr_05e_6ee8:
    nop
    add sp, $29
    inc bc
    jr nz, @-$1e

    add hl, hl
    inc bc
    ld h, b
    add b
    ld hl, sp-$2a
    jr jr_05e_6ef6

jr_05e_6ef6:
    ldh a, [$f4]
    ld de, $f000
    db $ec
    jr jr_05e_6efe

jr_05e_6efe:
    add sp, -$1b
    inc d
    nop
    add sp, -$13
    inc de
    nop
    ld hl, sp-$09
    dec de
    nop
    ret nc

    sub $18
    ld b, b
    ret c

    db $f4
    ld de, $d840
    db $ec
    jr jr_05e_6f56

    ldh [$e5], a
    inc d
    ld b, b
    ldh [$ed], a
    inc de
    ld b, b
    ret nc

    rst $30
    dec de
    ld b, b
    ld hl, sp-$38
    inc e
    nop
    ret nc

    ret z

    inc e

jr_05e_6f29:
    ld b, b
    ld hl, sp-$48
    rla
    nop
    ret nc

    cp b
    rla
    ld b, b
    ld hl, sp-$13
    rra
    nop
    ret nc

    and $1f
    jr nz, @-$0e

    db $e4
    inc e
    nop
    ret c

    rst $18
    inc e
    ld b, b
    ld [$14bc], a
    nop
    sbc $bc
    inc d
    ld b, b
    ldh a, [$cd]
    dec b
    nop
    ret c

    rlc l
    ld b, b
    ld hl, sp+$22
    jr jr_05e_6f76

jr_05e_6f56:
    ldh a, [rDIV]
    ld de, $f020
    inc c
    jr jr_05e_6f7e

    add sp, $13
    inc d
    jr nz, @-$16

    dec bc
    inc de
    jr nz, @-$06

jr_05e_6f67:
    ld bc, $201b
    ret nc

    ld [hl+], a
    jr jr_05e_6fce

    ret c

    inc b
    ld de, $d860
    inc c
    jr jr_05e_6fd6

jr_05e_6f76:
    ldh [rNR13], a
    inc d
    ld h, b
    ldh [$0b], a
    inc de
    ld h, b

jr_05e_6f7e:
    ret nc

    ld bc, $601b
    ld hl, sp+$30
    inc e

jr_05e_6f85:
    jr nz, @-$2e

jr_05e_6f87:
    jr nc, jr_05e_6fa5

    ld h, b
    ld hl, sp+$40
    rla
    jr nz, @-$2e

    ld b, b
    rla
    ld h, b
    ld hl, sp+$0b
    rra
    jr nz, jr_05e_6f67

    ld [de], a
    rra
    nop
    ldh a, [rNR14]
    inc e
    jr nz, @-$26

    add hl, de
    inc e
    ld h, b
    ld [$143c], a

jr_05e_6fa5:
    jr nz, jr_05e_6f85

    inc a
    inc d
    ld h, b
    ldh a, [$2b]
    dec b
    jr nz, jr_05e_6f87

    dec l
    dec b
    ld h, b
    ldh [$35], a
    nop
    ld h, b
    add sp, $35
    nop
    jr nz, @-$1e

    jp Jump_05e_4000


    add sp, -$3d
    nop
    nop
    add sp, -$35
    inc b
    nop
    ldh [$cb], a
    inc b
    ld b, b
    ldh [$2d], a
    inc b
    ld h, b

jr_05e_6fce:
    add sp, $2d
    inc b
    jr nz, @-$7e

    ldh a, [$cb]
    dec d

jr_05e_6fd6:
    nop
    ld hl, sp-$14
    ld a, [de]
    nop
    di
    pop af
    add hl, de
    nop
    ldh a, [$e6]
    inc b
    nop
    add sp, -$1d
    dec d
    nop
    ldh a, [$b8]
    inc d
    nop
    ld hl, sp-$3b
    add hl, bc
    nop
    ld hl, sp-$08
    dec c
    nop
    db $ed

jr_05e_6ff4:
    pop bc
    ld d, $60

jr_05e_6ff7:
    db $e4

jr_05e_6ff8:
    jp c, $600c

    ldh a, [$2e]
    dec d
    jr nz, jr_05e_6ff8

jr_05e_7000:
    dec c
    ld a, [de]
    jr nz, jr_05e_6ff7

    ld [$2019], sp
    ldh a, [rNR13]
    inc b
    jr nz, jr_05e_6ff4

jr_05e_700c:
    ld d, $15
    jr nz, jr_05e_7000

jr_05e_7010:
    ld b, c
    inc d
    jr nz, jr_05e_700c

    inc [hl]
    add hl, bc
    jr nz, jr_05e_7010

    ld bc, $200d
    db $ed
    jr c, @+$18

    ld b, b
    db $e4
    rra
    inc c
    ld b, b
    ret c

    rl l
    ld b, b
    ret nc

    db $ec
    ld a, [de]
    ld b, b
    push de
    pop af
    add hl, de
    ld b, b
    ret c

    and $04
    ld b, b
    ldh [$e3], a
    dec d
    ld b, b
    ret c

    cp b
    inc d
    ld b, b
    ret nc

    push bc
    add hl, bc
    ld b, b
    ret nc

    ld hl, sp+$0d
    ld b, b
    db $db
    pop bc
    ld d, $20
    ret c

    ld l, $15
    ld h, b
    ret nc

    dec c
    ld a, [de]
    ld h, b
    push de
    ld [$6019], sp
    ret c

    inc de
    inc b
    ld h, b
    ldh [rNR21], a
    dec d
    ld h, b
    ret c

    ld b, c
    inc d
    ld h, b
    ret nc

    inc [hl]
    add hl, bc
    ld h, b
    ret nc

    ld bc, $600d
    db $db
    jr c, jr_05e_7080

    nop
    ld hl, sp-$1c
    ld b, $00
    ret nc

    db $e4
    ld b, $40
    ret nc

    dec d
    ld b, $00
    ld hl, sp+$15
    ld b, $40
    add b
    ld hl, sp-$0c
    jr nz, jr_05e_7080

jr_05e_7080:
    ldh a, [$d0]
    inc d
    nop
    ld hl, sp-$18
    ld a, [de]
    nop
    ret nc

    db $f4
    jr nz, jr_05e_70cc

    ret c

    ret nc

    inc d
    ld b, b
    ret nc

    add sp, $1a
    ld b, b
    ldh a, [$e5]
    rra
    nop
    ret c

    push hl
    rra
    ld b, b
    ldh a, [$d8]
    inc de
    nop
    ret c

    ret c

    inc de
    ld b, b
    add sp, -$2c
    inc de
    nop
    ldh [$d4], a
    inc de
    ld b, b
    ld [$16cc], a
    ld h, b
    sbc $cc
    ld d, $20
    ret nc

    rst $18
    ld de, $f820
    rst $18
    ld de, $e000
    db $dd
    ld b, $40
    add sp, -$23
    ld b, $00
    ld hl, sp-$50
    add hl, bc
    nop
    ldh a, [$b8]
    ld b, $00

jr_05e_70cc:
    ld hl, sp-$3c
    ld b, $00
    ld hl, sp+$04
    jr nz, @+$22

    ldh a, [$28]
    inc d
    jr nz, @-$06

    db $10
    ld a, [de]
    jr nz, @-$2e

jr_05e_70dd:
    inc b
    jr nz, jr_05e_7140

    ret c

    jr z, jr_05e_70f7

    ld h, b
    ret nc

    db $10
    ld a, [de]
    ld h, b
    ldh a, [rNR13]
    rra
    jr nz, @-$26

    inc de
    rra
    ld h, b
    ldh a, [rNR41]
    inc de
    jr nz, @-$26

    jr nz, jr_05e_710a

jr_05e_70f7:
    ld h, b
    add sp, $24
    inc de
    jr nz, jr_05e_70dd

    inc h
    inc de
    ld h, b
    ld [$162c], a
    ld b, b
    sbc $2c
    ld d, $00
    ret nc

    add hl, de

jr_05e_710a:
    ld de, $f800

jr_05e_710d:
    add hl, de
    ld de, $e020
    dec de
    ld b, $60
    add sp, $1b
    ld b, $20
    ld hl, sp+$48
    add hl, bc
    jr nz, jr_05e_710d

    ld b, b
    ld b, $20
    ld hl, sp+$34
    ld b, $20
    ret nc

    ld c, b
    add hl, bc
    ld h, b
    ret c

    ld b, b
    ld b, $60
    ret nc

    inc [hl]
    ld b, $60
    ret nc

    or b
    add hl, bc
    ld b, b
    ret c

    cp b
    ld b, $40
    ret nc

    call nz, $4006
    add b
    ld a, l
    ld [hl], c
    adc [hl]

jr_05e_7140:
    ld [hl], c
    sbc a
    ld [hl], c
    or b
    ld [hl], c
    pop bc
    ld [hl], c
    jp nc, $e371

    ld [hl], c
    db $f4
    ld [hl], c
    dec b
    ld [hl], d
    ld d, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    ld h, $72
    rst $18
    ld bc, $0000
    rst $18
    add hl, bc
    ld bc, $e700
    ld bc, $0002
    rst $20
    add hl, bc
    inc bc
    nop
    add b
    call c, $0005
    nop
    call c, $010d
    nop
    db $e4
    dec b
    ld [bc], a
    nop
    db $e4
    dec c
    inc bc
    nop
    add b
    db $da, $fe, $00

    nop
    jp c, $0106

    nop
    ld [c], a
    cp $02
    nop
    ld [c], a
    ld b, $03
    nop
    add b
    sub $02
    nop
    nop
    sub $0a
    ld bc, $de00
    ld [bc], a
    ld [bc], a
    nop
    sbc $0a
    inc bc
    nop
    add b
    push de
    rlca
    nop
    nop
    push de
    rrca
    ld bc, $dd00
    rlca
    ld [bc], a
    nop
    db $dd
    rrca
    inc bc
    nop
    add b
    db $d4, $0b, $00
    nop
    call nc, $0113
    nop
    call c, $020b
    nop
    db $dc, $13, $03
    nop
    add b
    db $d2, $0a, $00

    nop
    jp nc, $0112

    nop
    db $da, $0a, $02

    nop
    db $da, $12, $03

    nop
    add b
    pop de
    ld [$0000], sp
    pop de
    db $10
    ld bc, $d900
    ld [$0002], sp
    reti


    db $10
    inc bc
    nop
    add b
    ret nc

    ld a, [bc]
    nop
    nop
    ret nc

    ld [de], a
    ld bc, $d800
    ld a, [bc]
    ld [bc], a
    nop
    ret c

    ld [de], a
    inc bc
    nop
    add b
    ret nc

    inc c
    nop
    nop
    ret nc

    inc d
    ld bc, $d800
    inc c
    ld [bc], a
    nop
    ret c

    inc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_05e_7d66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
