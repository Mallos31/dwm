; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    db $08 ;ROM bank

    dw label8_4015
    dw label8_41e3
    dw Call_008_422c
    ;the jumps from here down are all invalid. Find out why they're here. 
    dw label8_447e
    dw label8_449e
    dw label8_44a5
    dw label8_54a5
    dw jr_008_64a5
    dw label8_68dd
    dw label8_78dd

label8_4015:
    ld a, [wIsSGB]
    or a
    ret z

    ld a, [$c774]
    cp $ff
    jr nz, jr_008_4026

    ld hl, $c777
    jr jr_008_4033

jr_008_4026:
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $4069
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl

jr_008_4033:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00

jr_008_403a:
    push bc
    ld a, $00
    ld [c], a
    ld a, $30
    ld [c], a
    ld b, $10

jr_008_4043:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_008_4047:
    bit 0, d
    ld a, $10
    jr nz, jr_008_404f

    ld a, $20

jr_008_404f:
    ld [c], a
    ld a, $30
    ld [c], a
    rr d
    dec e
    jr nz, jr_008_4047

    dec b
    jr nz, jr_008_4043

    ld a, $20
    ld [c], a
    ld a, $30
    ld [c], a
    pop bc
    dec b
    ret z

    call Call_000_1013
    jr jr_008_403a

    inc de
    ld b, c
    inc hl
    ld b, c
    sub e
    ld b, b
    and e
    ld b, b
    or e
    ld b, b
    jp $d340


    ld b, b
    db $e3
    ld b, b
    di
    ld b, b
    inc bc
    ld b, c
    inc sp
    ld b, c
    ld b, e
    ld b, c
    ld d, e
    ld b, c
    ld h, e
    ld b, c
    ld [hl], e
    ld b, c
    add e
    ld b, c
    sub e
    ld b, c
    and e
    ld b, c
    or e
    ld b, c
    jp $d341


    ld b, c
    ld a, c
    ld e, l
    ld [$0b00], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$79], a
    ld b, a
    ld [$0b00], sp
    call nz, $16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, jr_008_413d

    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_008_79c9

    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_008_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    db $cd, $48, $0c
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$b9ea], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_413d:
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
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


label8_41e3:
    ld a, [wIsSGB]
    or a
    ret z

    call Call_000_11bc
    ld a, $51
    ld [$c777], a
    ld a, [$c817]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $427e
    add hl, de
    ld de, $c778
    ld bc, $c85b
    ld a, $08
    ld [wDebug_main_menu_option], a

jr_008_4208:
    ld a, [hl+]
    ld [de], a
    ld [bc], a
    inc de
    inc bc
    ld a, [wDebug_main_menu_option]
    dec a
    ld [wDebug_main_menu_option], a
    jr nz, jr_008_4208

    ld a, [$c818]
    or $80
    ld [de], a
    call Call_008_422c
    ld a, $ff
    ld [$c774], a
    ld hl, $0800
    rst $10
    call Call_000_1013
    ret


Call_008_422c:
    ld a, [wIsSGB]
    or a
    ret z

    ld a, [$c85b]
    ld l, a
    ld a, [$c85c]
    ld h, a
    ld de, $c7d7
    call Call_008_426a
    ld de, $c7df
    ld a, [$c85d]
    ld l, a
    ld a, [$c85e]
    ld h, a
    call Call_008_426a
    ld de, $c7e7
    ld a, [$c85f]
    ld l, a
    ld a, [$c860]
    ld h, a
    call Call_008_426a
    ld de, $c7ef
    ld a, [$c861]
    ld l, a
    ld a, [$c862]
    ld h, a
    call Call_008_426a
    ret


Call_008_426a:
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $7e
    ld l, a
    ld a, h
    adc $44
    ld h, a
    ld c, $08

jr_008_4277:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_008_4277

    ret


    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    inc c
    nop
    dec c
    nop
    ld c, $00
    rrca
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    ld d, $00
    rla
    nop
    jr jr_008_42b0

jr_008_42b0:
    add hl, de
    nop
    ld a, [de]
    nop
    dec de
    nop
    inc e
    nop
    dec e
    nop
    ld e, $00
    rra
    nop
    jr nz, jr_008_42c0

jr_008_42c0:
    ld hl, $2200
    nop
    inc hl
    nop
    inc h
    nop
    dec h
    nop
    ld h, $00
    daa
    nop
    jr z, jr_008_42d0

jr_008_42d0:
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    jr nc, jr_008_42e0

jr_008_42e0:
    ld sp, $3200
    nop
    inc sp
    nop
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $00
    scf
    nop
    jr c, jr_008_42f0

jr_008_42f0:
    add hl, sp
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    inc a
    nop
    dec a
    nop
    ld a, $00
    ccf
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld b, d
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    ld c, b
    nop
    ld c, c
    nop
    ld c, d
    nop
    ld c, e
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    ld d, c
    nop
    ld d, d
    nop
    ld d, e
    nop
    ld d, h
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    ld e, b
    nop
    ld e, c
    nop
    ld e, d
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld h, c
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, h
    nop
    ld h, l
    nop
    ld h, [hl]
    nop
    ld h, a
    nop
    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, e
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, [hl]
    nop
    ld l, a
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
    halt
    ld [hl], a
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add b
    nop
    add c
    nop
    add d
    nop
    add e
    nop
    add h
    nop
    add l
    nop
    add [hl]
    nop
    add a
    nop
    adc b
    nop
    adc c
    nop
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    adc [hl]
    nop
    adc a
    nop
    sub b
    nop
    sub c
    nop
    sub d
    nop
    sub e
    nop
    sub h
    nop
    sub l
    nop
    sub [hl]
    nop
    sub a
    nop
    sbc b
    nop
    sbc c
    nop
    sbc d
    nop
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    and b
    nop
    and c
    nop
    and d
    nop
    and e
    nop
    and h
    nop
    and l
    nop
    and [hl]
    nop
    and a
    nop
    xor b
    nop
    xor c
    nop
    xor d
    nop
    xor e
    nop
    xor h
    nop
    xor l
    nop
    xor [hl]
    nop
    xor a
    nop
    or b
    nop
    or c
    nop
    or d
    nop
    or e
    nop
    or h
    nop
    or l
    nop
    or [hl]
    nop
    or a
    nop
    cp b
    nop
    cp c
    nop
    cp d
    nop
    cp e
    nop
    cp h
    nop
    cp l
    nop
    cp [hl]
    nop
    cp a
    nop
    ret nz

    nop
    pop bc
    nop
    jp nz, $c300

    nop
    call nz, $c500
    nop
    add $00
    rst $00
    nop
    ret z

    nop
    ret


    nop
    jp z, $cb00

    nop
    call z, $cd00
    nop
    adc $00
    rst $08
    nop
    ret nc

    nop
    pop de
    nop
    jp nc, $d300

    nop
    call nc, $d500
    nop
    sub $00
    rst $10
    nop
    ret c

    nop
    reti


    nop
    jp c, $db00

    nop
    call c, $dd00
    nop
    sbc $00
    rst $18
    nop
    ldh [rP1], a
    pop hl
    nop
    ld [c], a
    nop
    db $e3
    nop
    db $e4
    nop
    push hl
    nop
    and $00
    rst $20
    nop
    add sp, $00
    jp hl


    nop
    ld [$eb00], a
    nop
    db $ec
    nop
    db $ed
    nop
    xor $00
    rst $28
    nop
    ldh a, [rP1]
    pop af
    nop
    ld a, [c]
    nop
    di
    nop
    db $f4
    nop
    push af
    nop
    or $00
    rst $30
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld a, [$fb00]
    nop
    db $fc
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop

label8_447e: ;this is an invalid function. Why is it being pointed to?
    sbc $6f
    rra
    inc sp
    inc a
    ld [de], a
    nop
    nop
    sbc $6f
    rra
    inc sp
    inc a
    ld [de], a
    nop
    nop
    sbc $6f
    rra
    inc sp
    inc a
    ld [de], a
    nop
    nop
    sbc $6f
    rra
    inc sp
    inc a
    ld [de], a
    nop
    nop


label8_449e: ;another invalid function.
    ld e, d
    nop
    ld bc, $a001
    rst $38
    ld b, a

label8_44a5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr c, jr_008_45ab

jr_008_45ab:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_008_45b5

jr_008_45b5:
    rst $38
    rst $38
    ldh a, [$f0]
    rst $00
    pop bc
    adc a
    add c
    adc a
    add e
    sbc a
    add e
    sbc a
    add e
    rst $08
    rst $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    cp a
    rst $38
    cp a
    cp a
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    nop
    dec h
    nop
    inc h
    nop
    jr jr_008_45f3

jr_008_45f3:
    nop
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
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_008_460d

jr_008_460d:
    inc h
    inc b
    db $c4, $04, $0c
    inc c
    inc a
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    nop
    cp a
    nop
    ld e, a
    nop
    rra
    nop
    rst $08
    nop
    rst $20
    nop
    di
    nop
    pop af
    nop
    ld a, b
    ld b, b
    nop
    and b
    nop
    ldh [rP1], a
    jr nc, jr_008_463d

jr_008_463d:
    jr jr_008_463f

jr_008_463f:
    inc c
    nop
    ld c, $00
    add a
    nop
    nop
    rst $38
    nop
    rst $20
    nop
    pop af
    nop
    db $fc
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
    jr jr_008_4659

jr_008_4659:
    ld c, $00
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    adc a
    nop
    db $e3
    nop
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld [hl], b
    nop
    inc e
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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

jr_008_46b6:
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_008_470b

    jr nz, jr_008_470d

    jr nz, jr_008_470f

    jr nz, jr_008_4711

    jr nz, jr_008_4713

    jr nz, jr_008_46b6

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    ret nz

    ld a, a
    ld h, b
    ccf
    jr nc, @+$21

    jr jr_008_470c

    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    rst $38
    jr nz, @+$01

    ld [$02ff], sp

jr_008_470b:
    rst $38

jr_008_470c:
    nop

jr_008_470d:
    rst $38
    nop

jr_008_470f:
    rst $38
    nop

jr_008_4711:
    rst $38
    nop

jr_008_4713:
    rst $38
    nop
    ldh [$3f], a
    jr c, jr_008_4728

    ld c, $03
    inc bc
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

jr_008_4728:
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    inc a
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    nop
    inc a
    ld bc, $011e
    inc e
    inc bc
    inc e
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    adc a
    adc a
    jp $e1c2


    ldh [$e3], a
    ldh [$e3], a
    ldh [rP1], a
    rlca
    nop
    inc e
    nop
    ld [hl], b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    jr jr_008_4787

jr_008_4787:
    inc h
    nop
    inc h
    nop
    jr jr_008_478d

jr_008_478d:
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    inc a
    inc a
    inc b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    cp $c3
    db $fc
    ei
    ld hl, sp+$30
    nop
    ld e, b
    nop
    ld c, b
    nop
    jr nc, jr_008_47ad

jr_008_47ad:
    nop
    nop
    nop
    inc sp
    nop
    db $fc
    nop
    ld e, $cf
    rst $00
    rst $20
    db $e3
    rst $30
    pop af
    rst $38
    rst $38
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    nop
    jr nc, jr_008_47c9

jr_008_47c9:
    inc a
    nop
    ld c, $00
    ld c, $00
    rrca
    add b
    rlca
    ret nz

    rst $00
    nop
    sbc a
    add e
    rst $08
    ret nz

    jp $f1c0


    ldh a, [$f1]
    ldh a, [$f0]
    db $10
    ld hl, sp+$08
    jr c, jr_008_47ed

    ld h, b
    ld h, b
    ccf
    inc sp
    ccf
    dec sp
    rra
    rra

jr_008_47ed:
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    sbc a
    rst $38
    call z, $c4ff
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $ec
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc de
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc a
    nop
    ld c, $00
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    inc a
    inc a
    jp $f100


    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    jp $00c0


    rlca
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    ld a, a
    nop
    ccf
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $8000
    nop
    ret nz

    nop
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    cp $00
    ccf
    nop
    rrca
    nop
    rlca
    nop
    add e
    nop
    ldh [rP1], a
    db $fd
    rlca
    nop
    ld bc, $c000
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, h
    nop
    rra
    nop
    ld [bc], a
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
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

jr_008_48b3:
    nop
    rst $38

jr_008_48b5:
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
    ld a, e
    nop
    add a

jr_008_48cb:
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    rst $38
    db $fc
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
    rra
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    dec c
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld c, $ff
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc e
    ret nz

    ld [bc], a
    jr nc, jr_008_4910

jr_008_4910:
    ld e, $00
    rlca
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    db $e3
    inc bc
    db $fd
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ret nz

    call z, Call_008_6c00
    nop
    jr z, jr_008_492b

jr_008_492b:
    jr c, jr_008_492d

jr_008_492d:
    jr jr_008_492f

jr_008_492f:
    jr jr_008_4931

jr_008_4931:
    jr c, jr_008_48b3

    jr nc, jr_008_48b5

    inc sp
    jr nc, jr_008_48cb

    sub b
    rst $10
    ret nc

    rst $00
    pop bc
    rst $20
    pop hl
    rst $20
    pop hl
    rst $00
    ld b, e
    rst $08
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    jp $ff07


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
    ccf
    rra
    inc de
    ccf
    nop
    add c
    add b
    add b
    add b
    ld h, b
    ld h, b
    jr c, jr_008_49a5

    rrca
    rrca
    inc bc
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld hl, $b000
    nop
    cp b
    nop
    sbc a
    nop
    rst $18
    nop
    ei
    ld hl, sp-$01
    db $fc
    db $fd
    db $fc
    sbc $de
    ld c, a
    ld c, a
    ld b, a
    ld b, a
    ld h, b
    ld h, b
    jr nz, jr_008_49c5

jr_008_49a5:
    nop
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    or $00
    ld c, a
    nop
    rrca
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    add hl, bc
    ld [$b0b0], sp
    ldh a, [$f0]
    ld a, [hl]
    ld a, [hl]

jr_008_49c5:
    ld h, d
    nop
    ld [hl-], a
    add b
    inc d
    ld b, b
    jr jr_008_49cd

jr_008_49cd:
    inc c
    nop
    call z, $ec00
    nop
    db $fc
    nop
    sbc l
    dec b
    call $eb05
    inc bc
    rst $20
    rlca
    di
    inc bc
    inc sp
    inc bc
    inc de
    inc bc
    inc bc
    inc bc
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
    add b
    nop
    ret nz

    nop
    db $fc
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
    ld a, a
    nop
    ccf
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_4a0b

jr_008_4a0b:
    ld c, b
    nop
    ld c, b
    nop
    jr nc, jr_008_4a11

jr_008_4a11:
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
    rlca
    rlca
    inc bc
    ld bc, $0000
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    ld bc, $e0e0
    ldh a, [$f0]
    db $fc
    db $fc
    rlca
    rlca
    rst $38
    rst $38
    add e
    add e
    cp $fe
    cp $00
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    nop
    ld bc, $0000
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    nop
    db $fc
    db $fc
    ret nz

    rst $38
    ldh a, [rIE]
    inc e
    rra
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $20
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
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
    add b
    nop
    nop
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    ld b, $ff
    ld [bc], a
    ld a, a
    nop
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
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    dec bc
    rst $38

Jump_008_4b20:
    dec bc
    rst $38
    dec bc
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $28
    rst $38
    rst $28
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
    add a
    rrca
    add a
    ccf
    ld bc, $007f
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
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
    ld b, b
    nop
    ret nz

    add c
    and a
    rst $00
    ld [$07cf], sp
    ret c

    cpl
    ret nz

    ld bc, $00c0
    ld b, b
    cp a
    ccf
    cp a
    ld a, $df
    jr @+$01

    db $10
    rst $38
    nop
    rst $18
    nop
    rst $38
    ld h, $ff
    inc a
    ld [bc], a
    ld bc, $f070
    rst $08
    rst $38
    ld bc, $80ff
    ld a, a
    db $fc
    inc bc
    rst $38
    nop
    ld b, b
    nop
    rst $38
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
    nop
    ret nz

    sbc b
    ld a, b
    inc c
    inc a
    call nz, $fadc
    or $38
    cp $cc
    ld a, [hl-]
    ei
    inc b
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    inc bc
    rst $38
    ld bc, $009f
    ld b, e
    nop
    add c
    nop
    add sp, $00
    ld h, b
    nop
    cp b
    add b
    call c, RST_00
    ld h, b
    nop
    cp h
    nop
    ld a, [hl]
    nop
    rla
    nop
    sbc a
    nop
    ld b, a
    nop
    inc hl
    nop
    rst $08
    nop
    sbc a
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [$1f]
    ld a, b
    rrca
    jr jr_008_4bf9

    ld b, $01
    ld de, $3000
    nop
    ld h, b

jr_008_4bf9:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    xor $00
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, $0e
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    pop af
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
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $00
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr c, jr_008_4c45

jr_008_4c45:
    ld a, a
    ld a, a
    inc bc
    inc bc
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    ld e, $1f
    nop
    ld bc, $0000
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    rrca
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    rrca
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    cp a
    add a
    cp a
    add a
    cp a
    add a
    cp a
    add a
    cp a
    add a
    cp a
    add a
    cp a
    add a
    cp a
    add a
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    ld [c], a
    nop
    ld hl, $0400
    inc b
    inc bc
    inc bc
    nop
    nop
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    db $fc
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
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld [$0c08], sp
    inc c
    ld [$bf08], sp
    ld bc, $01ff
    rst $38
    add e
    rst $28
    add c
    rst $28
    pop hl
    rst $30
    pop hl
    di
    ldh [$f7], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_008_4d2f

    jr nz, jr_008_4d31

    jr nz, jr_008_4d33

    jr nz, jr_008_4d35

    rst $38
    add [hl]
    rst $38
    add $ff
    add $ff
    add $df
    add $df
    add $df
    add $df
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_4d2f:
    nop
    nop

jr_008_4d31:
    nop
    nop

jr_008_4d33:
    nop
    nop

jr_008_4d35:
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    ld a, e
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [$08]
    ret nz

    db $10
    add c
    rst $38
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    rlca
    rst $30
    rlca
    xor $0e
    nop
    nop
    inc bc
    nop
    nop
    jr nz, jr_008_4d6c

jr_008_4d6c:
    jr nz, @+$09

    ld b, b
    ld [$08c0], sp
    add b
    ld [$ff80], sp
    ld a, h
    db $fc
    ld a, h
    rst $18
    ld e, a
    rst $18
    rst $18
    cp a
    cp a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    sub c
    nop
    sub c
    nop
    sub c
    nop
    add b
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    ld [bc], a
    rst $18
    nop
    ld [hl], e
    nop
    inc e
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    adc a
    add b
    db $e3
    ldh [$fc], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $20
    ld b, b
    ld a, e
    ld h, b
    ld a, l
    jr nz, jr_008_4e0b

    jr nc, jr_008_4e0e

    ld a, h
    rra
    ld a, [hl]
    rlca
    rst $38
    inc bc
    jr jr_008_4dd7

jr_008_4dd7:
    inc b
    add b
    ld [bc], a
    add b
    ld bc, $00c0
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [$c100], sp
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    inc e
    nop
    rst $08
    nop
    pop af
    nop
    cp $f7
    nop
    ld a, $00
    rrca
    nop
    rlca
    nop
    db $e3
    nop
    jr nc, jr_008_4e01

jr_008_4e01:
    ld c, $00
    ld bc, $0000
    adc b
    nop
    or $00
    rst $38

jr_008_4e0b:
    nop
    rst $38
    nop

jr_008_4e0e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    nop
    add hl, bc
    nop
    nop
    nop
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [$f0], a
    nop
    ldh a, [rP1]
    and $00
    db $ec
    nop
    ld hl, sp+$00
    ld a, b
    nop
    jr c, jr_008_4e43

jr_008_4e43:
    jr jr_008_4e45

jr_008_4e45:
    cp $00
    ldh a, [rP1]
    ldh [rP1], a
    cp a
    cp a
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    rra
    rra
    ld b, b
    ld b, b
    nop
    nop
    ldh [rP1], a
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
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rlca
    rlca
    rlca
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $38
    di
    rst $38
    di
    nop
    nop
    nop
    nop
    inc b
    nop
    ld a, h
    nop
    cp $00
    cp [hl]
    nop
    sbc a
    nop
    rlca
    nop
    rst $38
    db $fc
    rst $38
    db $f4
    ei
    cp $83
    db $fc
    ld bc, $41fe
    cp $60
    rst $38
    ld hl, sp-$01
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    inc e
    ld a, a
    inc c
    ccf
    inc c
    cp a
    ld c, $bf
    rlca
    cp a
    rlca
    cp a
    inc bc
    cp a
    inc bc
    db $10
    db $10
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    rst $28
    add sp, -$09
    ldh [$f6], a
    ldh [$f6], a
    ldh [$f7], a
    pop hl
    rst $30
    pop hl
    di
    ldh [$f3], a
    ldh [$30], a
    jr nc, jr_008_4f18

    stop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    rst $08
    ld b, d
    rst $28

jr_008_4f18:
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc bc
    ld a, a
    inc bc
    rst $38
    ld bc, $007f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, c
    rst $38
    ld l, c
    rst $38
    ld hl, $25ff
    rst $38
    and [hl]
    rst $38
    and [hl]
    rst $38
    and $ff
    rst $20
    nop
    ld bc, $0d00
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    dec b
    cp $3e
    cp $02
    cp $00
    cp $38
    rst $38
    ld a, h
    ei
    ld a, b
    ei
    ld h, b
    ld a, [$0828]
    add b
    ld b, a
    ret nz

    ld h, b
    ld h, b
    ld a, b
    ld [hl], b
    ld a, [hl]
    ld [hl], b
    ccf
    inc sp
    ccf
    scf
    rra
    rra
    ld a, a
    ld a, a
    ccf
    ld a, a
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    call z, $c8ff
    rst $38
    ldh [rIE], a
    sub c
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld bc, $01fd
    push af
    ld bc, $00d8
    add sp, $00
    db $fc
    nop
    ldh a, [rP1]
    add c
    nop
    ld [bc], a
    nop
    inc b
    ld [bc], a
    inc b
    ld a, [bc]
    ld [$0827], sp
    rla
    db $fc
    inc bc
    ldh a, [rIF]
    add b
    ld a, [hl]
    nop
    rst $38
    add b
    rst $38
    ret nz

    db $eb
    nop
    rst $38
    nop
    rst $28
    nop
    inc b
    nop
    ldh [rP1], a
    cp $00
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    stop
    ei
    nop
    rra
    nop
    ld bc, $c000
    rst $38
    ldh a, [$7f]
    ld hl, sp+$1f
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $00fd
    ei
    nop
    nop
    nop
    add b
    nop
    and b
    nop
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    add d
    ld [bc], a
    add h
    inc b
    ccf
    ldh a, [$1f]
    inc e
    rlca
    xor [hl]
    ld bc, $00d7
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ldh [rP1], a
    ld d, b
    nop
    jr z, jr_008_503d

jr_008_503d:
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
    add e
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    cp $00
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
    rrca
    nop
    ld bc, $0000
    nop
    dec bc
    nop
    dec de
    nop
    inc bc
    nop
    rst $28
    nop
    rst $08
    nop
    sbc [hl]
    nop
    ld a, a
    nop
    ld c, e
    nop
    ld [$18f4], sp
    db $e4
    nop
    db $fc
    add b
    ld d, b
    add b
    jr nc, jr_008_5080

jr_008_5080:
    pop hl
    inc bc
    add b
    ld b, e
    or h
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
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ld bc, $0000
    nop
    stop
    xor b
    nop
    stop
    inc b
    inc b
    ld hl, sp-$08
    nop
    nop
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    and b
    and b
    ldh [$60], a
    ld d, b
    db $10
    ld d, b
    db $10
    ld h, b
    jr nz, @+$42

    nop
    ldh [rP1], a
    nop
    nop
    ld e, a
    rlca
    rra
    add a
    xor a
    rst $00
    xor a
    jp $c39f


    cp a
    pop hl
    rra
    pop hl
    rst $38
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld sp, hl
    pop hl
    db $fd
    ldh a, [$fc]
    ldh a, [$fe]
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$01
    db $fc
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nz, jr_008_512f

    jr nz, jr_008_5131

    nop
    nop
    add b
    add b
    cp a
    nop
    cp a
    add b
    cp a
    add b
    sbc a
    add b
    rst $18
    ret nc

    rst $18
    ld e, b
    rst $38
    ld e, b
    ld a, a
    jr jr_008_5126

jr_008_5126:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_512f:
    nop
    nop

jr_008_5131:
    nop
    nop
    nop
    nop
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    di
    rst $38
    db $d3
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld a, l
    nop
    ld bc, $0f00
    nop
    rrca
    nop
    inc c
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    cp $30
    ldh a, [rNR10]
    di
    sub b
    rst $30
    add b
    rst $30
    pop bc
    rst $38
    push bc
    rst $38
    db $e4
    rst $38
    rst $20
    rrca
    rrca
    rlca
    rlca
    ld bc, $00c1
    ld b, b
    nop
    ld a, $00
    ret c

    nop
    ldh a, [$fc]
    nop
    ldh a, [rIE]
    ld hl, sp-$01
    cp $3f
    rst $38
    ccf
    pop hl
    add c
    daa
    rlca
    rrca
    rrca
    rst $38
    inc bc
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    nop
    nop
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
    ld bc, $0fff
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
    ld a, [hl]

jr_008_51a6:
    jr nc, jr_008_5226

    jr nz, jr_008_51a6

    ld b, b
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    cp $81
    ld a, [hl]
    add c
    db $fc
    inc bc
    ld sp, hl
    rlca
    rst $20
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    ld de, $2100
    nop
    db $e3
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    xor $00
    sbc $00
    inc e
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld b, $08
    inc e
    jr nz, jr_008_5239

    ld b, b
    ld [hl], c
    add b
    pop bc
    nop
    ldh a, [rP1]
    ld sp, hl
    nop
    pop af
    nop
    add b
    nop
    ld c, b
    nop
    or b
    nop
    ldh a, [rP1]
    pop af
    nop
    rrca
    rrca
    ld b, $06
    ld c, $0e
    ld a, a
    ld a, a
    or a
    or a
    ld c, a
    ld c, a
    rrca
    rrca
    ld c, $0e
    nop

jr_008_5226:
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
    ld h, b
    rst $28
    db $c4, $07, $00
    nop
    nop
    nop

jr_008_5239:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_008_527d

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    add a
    nop
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld a, b
    nop
    ld b, $00
    ld bc, $0000
    nop
    add a
    nop
    adc h
    nop
    adc c
    nop
    adc c
    nop
    adc b
    nop
    sub c
    nop
    inc de
    nop
    inc de
    nop
    add a
    ld a, b
    adc h
    ld [hl], e
    adc b
    db $76
    adc b
    db $76

jr_008_527d:
    adc b
    ld [hl], a
    sub b
    ld l, [hl]
    db $10
    db $ec
    db $10
    db $ec
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $feff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $03
    nop
    rra
    ld bc, $073f
    ld a, a
    rrca
    rst $38
    ccf
    rst $38
    cp $3d
    inc a
    inc de
    nop
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    cp $00
    cp $c2
    db $fc
    db $ec
    ld hl, sp+$00
    ldh a, [$f0]
    ldh [$e0], a
    db $fc
    ret nz

    ld hl, sp-$80
    ldh a, [rP1]
    db $ec
    nop
    db $fc
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    jp $8703


    rlca
    rrca
    rrca
    rra
    inc de
    ld a, e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld a, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
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
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    add hl, sp
    nop
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    sbc a
    rst $38
    add a
    db $dd
    pop bc
    add $c0
    inc bc
    inc e
    rlca
    jr c, @+$0f

    jr nc, jr_008_5344

    ld h, b
    db $10
    ld h, b
    ld hl, $2340
    ld b, b
    rlca
    ld b, b
    db $fc
    ldh [$f8], a
    ret nz

    ld a, [c]
    jp nz, $86e7

    rst $28
    adc b
    sbc $80
    call c, $f880

jr_008_5344:
    add b
    ld d, [hl]
    ld [hl], a
    ld e, e
    ld a, l
    ld d, l
    ld a, e
    db $eb
    ld [hl], c
    rst $10
    ld l, a
    xor a
    rra
    ld a, [$0033]
    rst $38
    xor h
    ld [hl], $a4
    ld [hl], l
    xor e
    dec hl
    inc d
    ld de, $2f2f
    ld e, h
    dec de
    dec b
    ld hl, $0000
    nop
    rst $38
    ldh a, [rIE]
    xor [hl]
    rst $38
    rra
    rra
    jr c, @+$01

    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rrca
    cp a
    pop af
    rst $38
    ldh [rNR10], a
    rst $00
    rst $28
    nop
    ret c

    db $fc
    db $fc
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    xor [hl]
    rst $38
    rra
    rra
    jr c, @+$01

    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rrca
    ccf
    pop af
    rst $38
    ldh [rNR10], a
    rst $00
    rst $28
    nop
    ret c

    db $fc
    db $fc
    nop
    nop
    nop
    rst $38
    db $fd
    rst $38
    ld [hl], e
    rst $38
    rst $08
    db $fc
    inc sp
    ld a, $cc
    rst $08
    di
    di
    nop
    rst $38
    nop
    nop
    inc bc
    rra
    sbc h
    rst $28
    ld a, b
    cp h
    call c, Call_000_372e
    adc e
    inc c
    ld h, b
    nop
    nop
    nop
    rst $38
    or a
    rst $38
    cp l
    rst $38
    rst $20
    ld a, a
    cp e
    rst $38
    ld a, h
    db $fd
    xor $e0
    nop
    rst $38
    nop
    nop
    rst $08
    rst $38
    ld [hl], d
    rst $38
    ccf
    ld a, a
    ld b, h
    db $ec
    add e
    reti


    ld de, $0060
    nop
    nop
    rst $38
    ld b, a
    rst $38
    add a
    add a
    dec a
    rst $38
    ret nc

    ld hl, sp+$7e
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp-$01
    ld a, e
    add a
    add $ff
    ccf
    ld a, b
    add c
    add e
    inc e
    ld e, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    daa
    ld bc, $ffd7
    rra
    rst $08
    ld a, [$00f3]
    rst $38
    nop
    nop
    nop
    nop
    rst $18
    rst $28
    ret c

    ld bc, $ff7f
    db $e4
    rlc l
    ld h, c
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    xor [hl]
    rst $38
    rra
    rra
    jr c, @+$01

    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rrca
    ccf
    pop af
    rst $38
    ldh [rNR10], a
    rst $00
    rst $28
    nop
    ret c

    db $fc
    db $fc
    nop
    nop
    nop
    rst $38
    push bc
    db $fd
    ld h, b
    rst $20
    dec bc
    rra
    cp h
    rst $38
    pop hl
    pop hl
    ld [c], a
    rst $38
    ld a, [bc]
    push af
    nop
    nop
    ld a, [hl-]
    ld a, b
    sbc a
    rst $00
    db $fc
    ld e, $63
    rst $38
    sbc $e1
    rra
    rst $38
    nop
    nop
    ld bc, $3cfe
    rst $38
    add c
    sbc l
    ei
    ei
    ld d, b
    rst $38
    sbc l
    cp l
    ld l, b
    ei
    inc c
    ldh [rP1], a
    nop
    jp Jump_008_7ef7


    inc e
    inc b
    add e
    rst $38
    rst $38
    jp z, $f798

    di
    inc de
    nop
    nop
    rst $38
    nop
    sbc c
    nop
    inc h
    nop
    inc h
    nop
    nop
    nop
    ld b, d
    nop
    cp l
    nop
    jp $ffff


    sbc c
    sbc c
    inc h
    inc h
    inc h
    inc h
    nop
    nop
    ld b, d
    ld b, d
    cp l
    cp l
    db $c3, $c3


label8_54a5:
    db $0b


    nop
    nop
    ld c, $3e
    ld bc, $10ef
    add b
    ld [hl], c
    nop
    sub b
    jr nc, jr_008_54b3

jr_008_54b3:
    jr nc, jr_008_54b5

jr_008_54b5:
    db $f4
    db $e4
    rst $38
    pop af
    rst $38
    ret nz

    pop hl
    nop
    adc [hl]
    ld c, $6f
    ld l, a
    rst $08
    rst $00
    rst $08
    pop bc
    db $fd
    ld bc, $03ff
    ld a, [de]
    db $e3
    add c
    ld e, $ee
    ld bc, $001b
    ld [$1e00], sp
    nop
    di
    ld [bc], a
    jp $e700


    inc b
    cp $00
    rra
    nop
    push hl
    db $e4
    rst $38
    rst $00
    rst $38
    add c
    db $e3
    db $fc
    nop
    rst $38
    rra
    ldh [$f2], a
    nop
    rrca
    add c
    ld e, $c2
    ld a, l
    nop
    ld a, h
    nop
    cp $02
    rst $38
    nop
    ldh [rP1], a
    dec c
    inc c
    pop af
    ld [hl], b
    db $e3
    jr nz, @-$4c

    add b
    di
    add e
    nop
    nop
    inc c
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    rst $38
    di
    di
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $00
    ret nz

    ld c, a
    nop
    ld e, [hl]
    nop
    ld l, c
    ld bc, $01e1
    di
    ld bc, $0033
    inc sp
    nop
    sbc e
    nop
    or b
    add b
    and c
    add c
    sub a
    add [hl]
    rra
    ld c, $0f
    inc c
    rst $08
    call z, $ccde
    db $ec
    ld h, h
    ccf
    inc de
    rst $38
    db $e3
    rst $30
    ret


    db $e3
    adc l
    db $e3
    dec c
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    rst $38
    ret nz

    rst $28
    nop
    rst $28
    nop
    rst $18
    db $10
    sbc a
    db $10
    inc de
    db $10
    ld de, $3110
    jr nc, jr_008_5566

jr_008_5566:
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    rrca
    rst $38
    rra
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
    adc a

jr_008_5586:
    nop
    rrca
    nop
    ld e, $00
    nop
    nop
    jr nc, jr_008_55bf

    pop hl
    pop hl
    rrca
    rrca
    ccf
    jr c, jr_008_5586

    ldh a, [$f0]
    ldh a, [$e1]
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ret nz

    inc bc
    rst $38
    ld h, e
    rst $38
    ei
    rst $38
    ret


    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff

jr_008_55bf:
    rst $38
    ld bc, $01ff
    rst $38
    nop
    nop
    add a
    nop
    adc a
    nop
    rst $08
    nop
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_008_560b

    db $10
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    db $fc
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    db $ed
    rst $38
    db $dd
    rst $38
    db $db
    rst $38
    cp e
    rst $38
    ld a, e
    rst $38
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    jp $83ff


    rst $38
    inc bc
    ld b, $02
    cpl
    ccf
    dec d
    rra

jr_008_560b:
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    cp $01
    sub $01
    ld [$1015], a
    rrca
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    cp a
    rst $38
    ld a, a
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
    cp $ff
    rst $38
    add b
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
    cp $fe
    rst $38
    rst $38
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    nop
    ld d, b
    cp $10
    cp $90
    db $fc
    jr c, @-$02

    inc e
    db $fc
    inc e
    rst $38
    inc c
    rst $38
    ld b, $ff
    pop hl
    ld b, c
    pop hl
    ld bc, $03f3
    di
    inc bc
    ei
    inc bc
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    jr nc, jr_008_56a7

jr_008_56a7:
    jr jr_008_56a9

jr_008_56a9:
    ld c, $00
    nop
    nop
    ld bc, $063e
    ld a, b
    inc a
    ret nz

    ld h, b
    add b
    rst $08
    pop bc
    rst $20
    pop hl
    pop af
    ldh a, [rIE]
    rst $38

jr_008_56bd:
    cp $c0
    ld sp, hl
    add c
    jp $9f03


    rra
    ld e, $00
    inc e
    nop
    inc c
    nop
    nop
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
    add c
    rst $38
    add e
    rst $38
    jp $e7ff


    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    nop
    rla
    nop
    adc a
    nop
    add a
    nop
    ld b, d
    nop
    ld [$0400], sp
    nop
    inc bc
    nop
    db $fd
    ld bc, $00fe
    ld a, [hl]
    nop
    ld a, [hl]
    jr nc, jr_008_56bd

    or c
    rst $30
    pop af
    ei
    ld sp, hl
    db $fc
    db $fc
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld [bc], a
    pop hl
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$dd], a
    nop
    rst $28
    nop
    rst $20
    nop
    rst $20
    nop
    ld a, [hl]
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    and $22
    ld [hl], $10
    jr jr_008_5753

    jr jr_008_5755

    add e
    add c
    ei
    ld sp, hl
    ei
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $00
    nop
    sbc e
    nop
    dec sp
    nop
    ld [hl], e
    nop
    ld [hl], b
    inc bc
    ld h, d
    ld bc, $0061

jr_008_5753:
    ld h, b
    nop

jr_008_5755:
    jr c, jr_008_578f

    ld h, l
    ld h, h
    push bc
    call nz, $8c8c
    adc a
    adc h
    sbc a
    sbc h
    sbc a
    sbc h
    sbc a
    sbc l
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    sbc a
    rrca
    push af
    rlca
    ld sp, hl
    adc a
    ld [hl], c
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
    ld a, e
    nop
    ldh [$e0], a
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    ccf
    ccf

jr_008_578f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    ret nz

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
    rst $38
    ld [c], a
    rst $38
    and $ff
    xor $ff
    call c, $9cff
    rst $38
    cp c
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
    nop
    ld sp, hl
    db $10
    ld a, d
    ld [$083b], sp
    dec e
    inc b
    ld c, $06
    rlca
    ld bc, $0003
    ld bc, $0006
    dec b
    add b
    inc b
    ret nz

    ld [bc], a
    ldh [rSB], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $7b
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    db $e4
    rst $38
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
    rlca
    rst $38
    ld b, $ff
    inc b
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    dec e
    rst $38
    add hl, sp
    rst $38

jr_008_5815:
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    jr c, jr_008_5815

    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    ld [c], a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rP1]
    adc a
    nop
    rst $08
    nop
    rst $20
    ret nz

    scf
    ret nz

    cp a
    ldh [$9f], a
    ldh a, [$8f]
    ld a, b
    rst $00
    ld [hl], b
    ld [hl], b
    jr nc, jr_008_58c9

    jr @+$1a

    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    pop af
    nop
    pop af
    ld b, b

jr_008_58a9:
    pop af
    ld h, b
    di
    jr nz, jr_008_58a9

    db $10
    ei
    db $10
    rst $38
    ld [$003d], sp
    adc [hl]
    ld c, $8e
    ld c, [hl]
    adc [hl]
    ld l, [hl]
    call c, $fc2c
    inc b
    db $fc
    inc b
    db $fc
    nop
    cp $c2
    nop
    nop
    nop
    nop

jr_008_58c9:
    nop
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    ld bc, $020f
    rra
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$c3]
    ret nz

    add a
    add b
    rst $38
    ldh a, [rIE]
    ldh [$7d], a
    cp $7f
    xor $7d
    ld l, h
    ld b, [hl]
    ld l, l
    xor $6b
    ld [hl], d
    db $eb
    ld c, d
    rst $28
    ld l, d
    rst $28
    ld a, [hl+]
    ld a, $28
    inc l
    xor [hl]
    jr z, @-$46

    inc l
    jr c, @+$0a

    inc c
    ld a, [hl+]
    inc a
    ld l, $34
    inc l
    ld bc, $001e
    ld bc, $1000
    nop
    rla
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh [$80], a
    nop
    pop hl
    ldh [$fe], a
    ldh [$ef], a
    ldh [$e8], a
    add sp, -$79
    add h
    rrca
    ld c, $1f
    rra
    ld a, a
    ld a, a
    rst $20
    ld b, b
    ld [hl], a
    ret nc

    dec sp
    ld d, b
    inc sp
    ret nc

    inc de
    nop
    inc bc
    nop
    inc bc
    nop
    dec bc
    nop
    ld sp, hl
    jr jr_008_59b1

    ld [$04b5], sp
    dec e
    inc b
    db $ed
    inc b
    db $fd
    inc b
    db $fd
    add b
    push af
    db $f4
    ld b, b
    nop
    add b
    nop
    ld [bc], a
    nop
    rrca
    ld bc, $013d
    db $f4
    inc b
    add b
    nop
    add b
    nop
    cp a
    cp c
    ld a, a
    ld [hl], c
    db $fd
    pop bc
    pop af
    add b
    jp $0f80


    ld [$717f], sp
    ld a, a
    ld [hl], e
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rrca
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    add e
    nop
    inc bc
    nop
    ld b, b
    ld b, b
    ldh a, [$f0]
    cp $fe
    rst $30
    rra
    rst $18
    cpl
    adc $3f
    adc [hl]
    ld a, a
    adc $3f
    add sp, $1f
    rst $30
    rrca
    rst $38
    rra
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
    ccf
    nop
    rra
    nop
    cp c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38

jr_008_59b1:
    ld b, d
    rst $38
    ld [c], a
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
    ldh a, [$f0]
    ld a, [c]
    ld a, [c]
    pop af
    pop af
    pop af
    pop af
    ldh a, [$f0]
    ld a, [$f4f0]
    ldh [$fb], a
    ret nz

    ld bc, $81ff
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec [hl]
    add b
    ld l, e
    ret nz

    inc b
    add sp, -$01
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add d
    rst $38
    add c
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    nop

jr_008_5a01:
    rst $38
    nop
    rst $38
    nop
    ld [hl], d
    rst $38
    db $76
    rst $38
    call $bbff
    rst $38
    ld a, e
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
    ld e, $ff
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $58
    ld d, b
    scf
    jr nc, jr_008_5aa9

    ld h, e
    ld hl, sp+$48
    ldh a, [$f0]
    cp $fe
    nop
    nop
    nop
    nop
    scf
    rst $20
    jr c, jr_008_5a01

    ld b, b
    and b
    ld b, a
    nop
    rrca
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$7f]
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra

jr_008_5a61:
    rrca
    rrca
    rrca
    rrca
    dec h
    nop
    daa
    nop
    rst $08
    nop
    rst $28
    nop
    rst $20
    nop
    rst $28
    nop
    ret


    nop

jr_008_5a73:
    sbc b
    nop
    db $db
    jp c, $d8db

    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr jr_008_5a73

    db $10
    rst $30
    ld [hl], $e7
    ld h, a
    ld b, b
    ret nz

    ret nz

    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    rst $18
    ccf
    rst $38
    rrca
    rst $38
    rrca
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    sbc $01
    rst $28
    nop
    jr nz, jr_008_5a61

jr_008_5aa1:
    nop
    ldh a, [rP1]
    ldh a, [$fe]
    nop
    db $fc
    nop

jr_008_5aa9:
    ld h, b
    ld h, b
    add [hl]
    add b
    ld b, $00
    ld a, a
    db $10
    rst $38
    ld h, b
    rst $38
    add b
    ld a, a
    ld a, a
    rra
    rra
    rst $38
    inc bc
    ld sp, hl
    ld bc, $01f9
    sub b
    nop
    ld h, e
    nop
    add b
    nop
    ccf
    ld [$103f], sp
    ccf
    nop
    ld a, c
    nop
    ld h, c
    nop
    ret nz

    ld b, $c0
    inc c
    nop
    ld e, $ff
    ret nz

    rst $38
    ret nz

    cp $c0
    cp $86
    cp $9e
    ld a, a
    jr c, jr_008_5aa1

    jr nc, @+$01

    pop hl
    ld [hl], d
    ld [hl], a
    ld h, [hl]
    rst $30
    ld [hl], h
    ld [hl], a
    db $10
    db $db
    jr jr_008_5b4a

    ld [de], a
    db $db
    jp z, $aa5b

    ld a, a
    xor h
    ld [hl], h
    jr c, jr_008_5b6f

    sbc d
    ld [hl], d
    ld l, [hl]
    ld e, d
    xor $5a
    ld l, h
    ld e, b
    ld [hl], h
    ld e, b
    ld d, h
    ld [hl], h
    rra
    inc e
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ld [c], a
    add c
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rTAC]
    rlca
    nop
    nop
    ret nz

    ret nz

    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    nop
    rst $38
    nop
    rrca
    ld hl, sp+$00
    rst $38
    nop
    ccf
    nop
    ld bc, $0000
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_5b4a:
    ldh a, [rIF]
    rrca
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_008_5b5a:
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    nop

jr_008_5b6f:
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    dec a
    ld [bc], a
    ld a, e
    inc b
    sbc [hl]
    ld h, b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    di
    nop
    pop bc
    nop
    db $fc
    ret nz

    db $fc
    add b
    ld sp, hl
    ld bc, $00e3
    pop bc
    nop
    ld [de], a
    nop
    ld l, h
    inc c
    cp $3e
    ret nz

    rst $38
    and b
    ld a, a
    ret c

    ccf
    and $1f
    ld sp, hl
    rlca
    ldh a, [$03]
    ld [c], a
    ld bc, $0080
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    inc c
    inc c
    inc e
    inc e
    ld a, a
    ld a, a
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
    ld a, a
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
    ldh [rIE], a
    ld e, $ff
    ld bc, $001f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $00ff
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
    rrca
    nop
    inc a
    nop
    ld a, e
    nop
    ld a, a
    nop
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rlca
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
    ldh a, [rP1]
    add b
    nop
    ld [bc], a
    nop
    add a
    nop
    inc c
    nop
    jr jr_008_5c65

jr_008_5c65:
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $7e
    cp $1e
    rst $38
    rrca
    rst $38
    rlca
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    jr jr_008_5ca5

    jr nc, jr_008_5cbf

    jr c, jr_008_5cc9

    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fd
    nop
    rst $38
    ldh [$e7], a
    inc b
    rst $08
    rlca
    rst $00
    inc bc
    rst $38
    nop
    rst $38
    ccf

jr_008_5ca5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    add hl, de

jr_008_5cb4:
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add c
    rst $38
    rrca

jr_008_5cbf:
    cp $1c
    cp $f8
    and $e0
    ret nz

    nop
    ldh [rP1], a

jr_008_5cc9:
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr c, jr_008_5cd1

jr_008_5cd1:
    jr jr_008_5cd3

jr_008_5cd3:
    inc c
    nop
    ccf
    ccf
    rra
    dec de
    rrca
    add hl, bc
    adc a
    ld [$8c8f], sp
    rst $00
    ld b, h
    rst $20
    ld hl, $11f3
    ld h, l
    cp $77
    xor $7d
    ld l, h
    ld b, [hl]
    ld l, l
    xor $6b
    ld [hl], d
    db $eb
    ld c, d
    rst $28
    ld l, d

jr_008_5cf4:
    rst $28
    ld a, [de]
    ld a, $28
    inc l
    xor [hl]
    jr z, jr_008_5cb4

    inc l
    jr c, jr_008_5d07

    inc c
    ld a, [hl+]
    inc a
    ld l, $34
    inc l
    ld [hl], d
    ld [hl], a

jr_008_5d07:
    ld h, [hl]
    rst $30
    ld [hl], h
    ld [hl], a
    db $10
    db $db
    jr @+$5d

    ld [de], a
    db $db
    jp z, $aa5b

jr_008_5d14:
    ld a, a
    xor h
    ld [hl], h
    jr c, jr_008_5d8f

    sbc d
    ld [hl], d
    ld l, [hl]
    ld e, d
    xor $5a
    ld l, h
    ld e, b
    ld [hl], h
    ld e, b
    ld d, h
    ld [hl], h
    ld h, l
    cp $77
    xor $7d
    ld l, h
    ld b, [hl]
    ld l, l
    xor $6b
    ld [hl], d
    db $eb
    ld c, d
    rst $28
    ld l, d
    rst $28
    ld a, [de]
    ld a, $28
    inc l
    xor [hl]
    jr z, jr_008_5cf4

    inc l
    jr c, @+$0a

    inc c
    ld a, [hl+]
    inc a
    ld l, $34
    inc l
    ld a, c
    cp $73
    xor $75
    ld l, h
    ld b, [hl]
    ld l, l
    adc $6b
    ld [hl], d
    db $eb
    ld l, d
    rst $28
    ld l, d
    rst $28
    ld a, [hl+]
    ld a, [hl-]
    jr z, jr_008_5d81

    xor [hl]
    jr z, jr_008_5d14

    inc l
    jr c, jr_008_5d87

    inc l
    ld a, [hl+]
    jr c, @+$2c

    jr c, @+$2a

    rra
    ldh [$83], a
    ld a, h
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    nop
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    di
    inc bc

jr_008_5d81:
    rrca
    rrca
    rst $38
    rst $38
    add b
    add b

jr_008_5d87:
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    jr jr_008_5d8e

jr_008_5d8e:
    nop

jr_008_5d8f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $28
    rra
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $00
    ld a, $00
    ld a, $00
    ccf
    nop
    ccf
    nop
    ld h, $00
    inc b
    nop
    nop
    nop
    rst $28
    pop hl
    rst $18
    add c
    rst $38
    add c
    db $fc
    ret nz

    ld hl, sp-$40
    ld sp, hl
    reti


    ei
    ei
    rst $38
    rst $38
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $3e
    cp $0e
    rst $38
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    nop
    rst $38
    nop
    sbc c
    nop
    inc h
    nop
    inc h
    nop
    nop
    nop
    ld b, d
    nop
    cp l
    nop
    jp $ffff


    sbc c
    sbc c
    inc h
    inc h
    inc h
    inc h
    nop
    nop
    ld b, d
    ld b, d
    cp l
    cp l
    db $c3, $c3, $14


    nop
    db $f4
    nop
    call c, $df00
    ld [bc], a
    adc a
    ld b, $1f
    inc b
    cp a
    inc c
    ccf
    ld [$ebeb], sp
    dec hl
    dec bc
    db $e3
    inc hl
    pop hl
    ld [hl+], a
    di
    ld [hl], h
    ei
    db $e4
    ld a, a
    ld b, b
    rst $38
    ret nz

    jr nc, jr_008_5e77

    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    db $10
    rst $28
    add l
    ld_long a, $ffc0
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_008_5e9b

    ld [$0808], sp
    ld [$0505], sp
    dec b
    dec b
    ld b, $06
    ld a, a
    rst $38

jr_008_5e77:
    rst $38
    ccf
    ccf
    rst $08
    ld a, a
    rst $30
    rst $30
    rst $38
    ld a, [$faff]
    rst $38
    ld sp, hl
    rst $38
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ret nz

jr_008_5e8c:
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    sbc a
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38

jr_008_5e9b:
    ld sp, $07ff
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld h, d
    nop
    add d
    nop
    inc b
    nop
    inc b
    nop
    jr c, jr_008_5eaf

jr_008_5eaf:
    ret nz

    nop
    nop
    nop
    nop
    nop
    sbc l
    add c
    ld a, l
    ld bc, $03fb
    ei
    inc bc
    rst $00
    rlca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    adc b
    ld [hl], b
    ret nz

    jr jr_008_5e8c

    inc l
    ret nc

    jr nz, jr_008_5f10

    jr nc, jr_008_5ef2

    jr jr_008_5ef4

    jr @+$01

    rrca
    ld a, a
    rlca
    ccf
    rlca
    rra
    inc bc
    rrca
    inc bc
    adc a
    add e
    rst $00
    pop bc
    rst $00
    pop bc
    ld b, c
    ld b, $4f
    dec b
    ld l, a
    ld [bc], a
    ld l, l
    ld bc, $006c
    ld l, [hl]
    nop
    ld c, [hl]

jr_008_5ef2:
    nop
    ld c, [hl]

jr_008_5ef4:
    nop
    cp a
    cp b
    or a
    or b
    sub e
    sub b
    sub d
    sub e
    sub e
    sub e
    sub c
    sub c
    or c
    or c
    or c
    or c
    rst $30
    db $fd
    rst $30
    ld l, c
    rst $38
    xor a
    di
    di
    rlca
    rlca
    rrca

jr_008_5f10:
    dec bc
    rrca
    rlca
    rra
    ld d, $9c
    ld h, c
    db $dd
    jr nz, @-$03

    inc b
    rst $28
    inc e
    cp $f9
    cp $f1
    db $fc
    di
    ld hl, sp-$1a
    db $db
    db $db
    call c, $d8dc
    ret c

    ret nc

    ret nc

    add b
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    ei
    inc h
    cp h
    ld h, e
    cp c
    ld h, a
    scf
    rst $28
    ld l, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld [hl], a
    ld a, a
    ldh [$e0], a
    nop
    nop
    inc c
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    inc c
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
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
    ld [hl], d
    rst $30
    ld h, [hl]
    rst $30
    ld [hl], h
    rst $30
    db $10
    db $db
    sbc b
    ld e, e
    ld [de], a
    rst $18
    ret z

    ld e, l
    ld a, [hl+]

jr_008_5f74:
    rst $38
    inc l
    ld [hl], h
    jr c, jr_008_5fef

    ld a, [de]
    ld [hl], d
    ld l, [hl]
    ld e, d
    ld l, [hl]
    ld e, d
    ld l, h
    ld e, h
    db $76
    ld e, h
    ld d, h
    ld [hl], h
    inc l
    rst $38
    ld e, b
    db $db
    ld c, d
    ei
    ld a, [hl-]
    ld a, a
    ld [$a27f], a
    scf
    ld [$2d5b], sp
    ld a, [hl]
    ld [hl], d
    ld a, d
    db $76
    ld d, d
    ld d, h
    ld d, d
    call nc, Call_000_3476
    inc [hl]
    ld e, h
    ld d, $f6
    ld e, d
    jp nc, Jump_008_5b5a

    cp $7b
    xor $5d
    ld l, b
    ld h, [hl]
    ld l, e
    adc $6b
    ld [hl], d
    db $eb
    ld c, d
    rst $28
    ld h, d
    rst $28
    jr z, jr_008_5fef

    jr z, jr_008_5fe1

    xor d
    jr z, jr_008_5f74

    jr z, jr_008_5ff6

    jr z, @+$2e

    ld a, [hl+]
    jr c, jr_008_5fed

    jr c, jr_008_5fed

    nop
    rst $38
    nop
    sbc c
    nop
    inc h
    nop
    inc h
    nop
    nop
    nop
    ld b, d
    nop
    cp l
    nop
    jp $ffff


    sbc c
    sbc c
    inc h
    inc h
    inc h
    inc h
    nop
    nop
    ld b, d
    ld b, d

jr_008_5fe1:
    cp l
    cp l
    jp $00c3


    nop
    nop
    nop
    ld c, $00
    ld c, $00

jr_008_5fed:
    rlca
    nop

jr_008_5fef:
    ld b, a
    nop
    and e
    nop
    pop de
    nop
    add c

jr_008_5ff6:
    rst $38
    add e
    rst $38
    pop af
    pop af
    pop af
    pop af
    ld a, b
    ld hl, sp+$38
    cp b
    inc e
    ld e, h
    ld c, $2e
    ld h, d
    ld b, d
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    db $f4
    db $f4
    cp l
    cp h
    sbc e
    sbc b
    sbc e
    sbc b
    sbc a
    sbc b
    dec e
    rst $18
    dec e
    rst $38
    sbc e
    rst $38
    dec bc
    rst $38
    ld b, d
    cp $44
    db $fc
    ld b, h
    db $fc
    ld b, b
    ld hl, sp+$1e
    ld [$000c], sp
    nop
    nop
    nop
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
    pop hl
    rst $38
    inc sp
    rst $38
    rra
    rst $38
    nop
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc a
    ld a, [hl]
    ld [bc], a
    ccf
    dec a
    add b
    nop
    ldh a, [rP1]
    jr c, jr_008_6053

jr_008_6053:
    inc e
    nop
    rst $38
    nop
    rst $38
    nop
    cp $81
    cp $c1
    ld a, a
    ld a, a
    rrca
    rrca
    rst $00
    rst $00
    db $e3
    db $e3
    ld b, $06
    inc c
    inc c
    jr jr_008_6083

    ldh a, [$f0]
    ld sp, $6311
    ld b, e
    ld h, b
    jr nz, jr_008_60d4

    jr nz, @-$05

    rst $38
    ld [hl], e
    rst $38
    ld h, b
    rst $38
    ld [$e9ff], sp
    sbc $bb
    call c, $bfd9

jr_008_6083:
    db $d3
    cp a
    nop
    nop
    jr nc, jr_008_60b9

    ld b, b
    ld b, b
    sbc h
    add b
    inc a
    nop
    db $fc
    nop
    jr nc, jr_008_6093

jr_008_6093:
    nop
    nop
    rst $38
    rst $38
    ld sp, $4ccf
    cp a
    add e
    ld h, e
    inc bc
    jp $0303


    rst $08
    rst $08
    rst $38
    rst $38
    ld e, b
    db $fd
    ld e, d
    ld sp, hl
    db $76
    db $fd
    ld l, $fd
    ld l, l
    db $fc
    ld a, a
    cp $17
    cp $6b
    cp $76
    ld [hl], h
    ld [hl], h
    ld [hl], b

jr_008_60b9:
    ld e, b
    ld a, b
    ld d, b
    ld a, h
    ld [hl-], a
    ld [hl], h
    jr nc, jr_008_613b

    ld l, b
    ld a, [hl]
    ld b, h
    ld l, h
    inc b
    jr jr_008_60d8

    inc c
    nop
    inc c
    ld bc, $800d
    dec c
    nop
    dec b
    nop
    ld b, $00

jr_008_60d4:
    ld b, $e3
    pop hl
    db $e3

jr_008_60d8:
    ldh [$f3], a
    ldh a, [$f2]
    ldh a, [$72]
    ld [hl], b
    ld a, [$f9f8]
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rlca
    dec sp
    ld bc, $be7e
    ld e, a
    ld a, a
    cp l
    cp e
    ld a, l
    rst $38
    xor [hl]
    cp l
    inc a
    jp $f400


    set 3, a
    and b
    rst $38
    nop
    pop hl
    inc e
    push hl

jr_008_60fe:
    jr jr_008_60fe

    nop
    inc a
    ld b, d
    nop
    inc a
    ccf
    ld a, $bf
    cp h
    rst $38
    ld a, h
    ld a, c
    ld hl, sp+$79
    ld hl, sp-$1d
    ld h, b
    pop hl
    ld h, b
    pop hl
    ld h, b
    ret c

    and $58
    db $e4
    or b
    ld c, h
    sub [hl]
    ld l, [hl]
    add $3e
    call z, $ce3c

jr_008_6122:
    ld a, $ce
    ld a, $c0
    nop
    ret nz

jr_008_6128:
    nop
    ret nz

    nop
    add b
    nop
    add a
    nop
    rra
    rlca
    ccf
    rra
    inc a
    inc a
    scf
    ccf
    cpl
    ccf
    rrca
    ccf

jr_008_613b:
    rra
    ld a, a
    ccf
    ld a, b
    jr c, jr_008_6128

    jr nz, jr_008_6122

    inc bc
    rst $38
    ld h, b
    ld h, b
    jr nc, jr_008_6179

    rra
    rra
    ld [hl], e
    inc bc
    ld hl, sp+$00
    db $fc
    nop
    ld a, $00
    ld a, $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    pop bc
    rst $18
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    sub b
    nop
    sub b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38

jr_008_6179:
    db $fc
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
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$111f], sp
    rra
    ld de, $031f
    ld a, $26
    ld a, $26
    rrca
    db $fc
    rra
    ld hl, sp+$3f
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fe], a
    pop bc
    cp $c1
    db $fc
    ld a, h
    pop af
    pop af
    di
    ld a, [c]
    rst $28
    add sp, -$31
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    ldh [$1f], a
    pop hl
    ld e, $83
    ld a, h
    add a
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    ldh a, [$30]
    ccf
    ret nz

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
    rrca
    ld a, h
    nop
    ld hl, sp-$80
    ld hl, sp-$40
    inc e
    nop
    jr nz, jr_008_61ef

jr_008_61ef:
    ld [bc], a
    nop
    nop
    nop
    rra
    nop
    inc bc
    add e
    rlca
    add a
    add a
    ld b, a
    db $e3
    db $e3
    rst $18
    rst $18
    db $fd
    db $fd
    rst $38
    rst $38
    ldh [$e0], a
    ld e, $18
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    ld a, [de]
    db $10
    sbc d
    db $10
    sbc b
    db $10
    pop bc
    ld sp, hl
    jp $83f3


    di
    add e
    di
    add e
    di
    add l
    push af
    dec b
    ld [hl], l
    rlca
    ld [hl], a
    add b
    nop
    ld [$0800], sp
    nop
    add hl, bc
    nop
    ld a, [bc]
    nop
    ld [de], a
    nop
    ld [hl+], a
    nop
    add d
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    nop
    ld b, $00
    add [hl]
    nop
    ld b, [hl]
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, a
    nop
    adc a
    nop
    db $e3
    db $e3
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ld h, b
    jr nz, jr_008_62c8

    jr nz, jr_008_62cb

    ld h, c
    ld [hl], d
    ld [hl], d
    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    db $fc
    inc a
    add sp, $28
    jp $c7bf


    cp a
    adc [hl]
    rst $38
    adc l
    rst $38
    ld bc, $017f
    ld a, a
    inc bc
    ccf
    rlca
    ccf
    ld [$b108], a
    jr nc, jr_008_62ef

    ld h, h
    ld c, b
    ld c, b
    adc h
    adc h
    add l
    add h
    add a
    ld b, $93
    inc bc
    inc bc
    dec e

jr_008_6297:
    ld [hl], c
    ld c, [hl]
    pop hl
    sbc [hl]
    ret c

    or a
    ld hl, sp+$77
    ld hl, sp+$7e
    cp h
    ld a, d
    xor [hl]
    ld l, l
    ld [hl], d
    rst $28
    ld a, [bc]
    rst $38
    ld b, h
    db $fd
    ld d, h
    ld a, l
    ld l, d
    ei
    ld l, d
    ld a, e
    or $77
    ld d, [hl]
    rst $30
    ld b, h
    ld h, h
    ld h, h
    ld l, h
    ld a, $78
    cp d
    ld a, h
    inc a
    ld d, b
    sub h
    ld a, [hl-]
    jr jr_008_62e5

    jr z, jr_008_62f9

    nop
    nop
    rrca

jr_008_62c8:
    nop
    ccf
    nop

jr_008_62cb:
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld h, b
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [$fc]
    ret nz

    ldh a, [$80]
    pop hl
    add c
    jp $c783


    add a
    rst $18
    sbc a

jr_008_62e5:
    rst $08
    ld bc, $00cd
    rst $08
    nop
    ld h, e
    nop
    ld h, a
    inc b

jr_008_62ef:
    ld [hl], a
    dec b
    ld b, $02
    ld b, $02
    ld sp, $3130
    ld [hl-], a

jr_008_62f9:
    inc sp
    jr nc, jr_008_6297

    sbc h
    sbc a
    sbc b
    add a
    adc b
    cp $09
    cp $01
    call z, $cc40
    ret nz

    adc $c0
    and a
    and b
    daa
    jr nz, jr_008_6315

    nop
    ld b, b
    ld b, b
    ld c, c
    ld c, b

jr_008_6315:
    add e
    ld [hl], e

jr_008_6317:
    sub e
    ld [hl], e
    sub c
    ld [hl], c
    jr jr_008_6315

    jr jr_008_6317

    ld a, [hl-]
    ld_long a, $ff3e
    ld a, $f6
    ld a, h
    jr c, jr_008_63a5

    ld a, b
    cp $70
    or $70
    and $e0
    di
    ldh [$fb], a
    ldh [$e0], a
    ldh [rSCX], a
    cp e
    ld [bc], a
    ld a, [$7181]
    adc c
    ld a, c
    add hl, de
    ld sp, hl
    inc c
    db $ec
    inc b
    db $e4
    rra
    rst $38
    ld e, $10
    adc [hl]
    ld bc, $00c7
    ld h, e
    nop
    inc sp
    nop
    ld bc, $0100
    nop
    nop
    nop
    rst $28
    pop af
    ld a, a
    ld [hl], b
    ccf
    jr c, @-$5f

    sbc h
    rst $08
    call z, $feff
    rst $38
    cp $ff
    rst $38
    nop
    nop
    inc c
    inc c
    inc a
    inc a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_008_6375

jr_008_6375:
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
    rst $18
    rst $18
    dec a
    dec b
    ld a, l
    ld c, h
    ld a, e
    ld c, b
    ld a, a
    ld c, h
    ld a, a
    ld c, c
    ccf
    cpl
    inc a
    inc l
    jr nc, @+$32

    cp h
    jp $82fd


    ei
    add h
    ei
    add h
    rst $30
    adc b
    cp $c1
    di
    rst $08
    rst $28
    rst $18

jr_008_63a5:
    rst $38
    add d
    rst $38
    rla
    rst $38
    cpl
    cp $3e
    rst $38
    rst $38
    db $fc
    add h
    inc de
    nop
    ld [hl-], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    nop
    add a
    db $ec
    db $ec
    call $e0cd
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$90], a
    sub b
    ret nz

    ret nz

    ld c, b
    nop
    ld b, a
    nop
    rst $38
    rra
    rst $38
    rra
    rst $18
    ccf
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    or a
    or a
    cp [hl]
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc a
    ccf
    inc bc
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    db $fc
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    dec b
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
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
    rrca
    nop
    ldh [rP1], a
    cp a
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
    ldh a, [rP1]
    rra
    nop
    ld b, b
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [rSVBK]
    db $fc
    inc a
    db $fc
    inc e
    adc $06
    add e
    ld bc, $0000
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    ld sp, $7c30
    ld a, h
    rst $38
    rst $38

jr_008_64a5:
    add b
    ld [$0120], sp
    db $10
    rlca
    db $10
    ld [bc], a
    jr nz, jr_008_64b2

    inc bc
    inc bc
    db $10

jr_008_64b2:
    jr nz, jr_008_64b4

jr_008_64b4:
    nop
    ld bc, $0210
    db $10
    inc b
    jr nz, jr_008_64cb

    ld bc, $2007
    rrca
    ld bc, $2001
    dec bc
    ld bc, $1499
    add hl, sp
    inc d
    ld a, [hl-]
    inc d

jr_008_64cb:
    ld bc, $bc14
    inc d
    cp l
    inc d
    cp [hl]
    inc d
    ld c, d
    db $d4, $0c, $14
    dec c
    inc d
    ld c, $14
    ld a, [hl+]
    inc d
    jr nz, jr_008_6501

    nop
    inc b
    db $10
    ld b, $10
    dec b
    db $10
    inc b
    jr nz, jr_008_64f2

    ld bc, $0220
    nop
    inc b
    db $10
    dec b
    db $10
    inc d

jr_008_64f2:
    ret nc

    inc de
    ret nc

    jr nz, jr_008_6507

    nop
    jr nz, jr_008_653c

    nop
    dec b

jr_008_64fc:
    jr nz, @+$0d

    ld bc, $1449

jr_008_6501:
    ld c, d
    inc d
    ld a, [hl-]
    inc d
    ld c, h
    inc d

jr_008_6507:
    ld bc, $0114
    inc d
    rst $38
    inc d
    inc e
    inc d
    dec e
    inc d
    ld e, $14
    ld a, [hl+]
    ld d, h

jr_008_6515:
    inc bc
    db $10
    ld [bc], a
    jr nz, jr_008_655f

    ld bc, $1005
    ld b, $20
    ld c, c
    ld bc, $1004
    jr nz, jr_008_64a5

    nop
    ld [de], a
    jr nz, @-$79

    ld bc, $5820
    nop
    jr nz, jr_008_6551

    nop
    ld b, $10
    ld [bc], a
    db $10
    ld e, [hl]
    inc d
    ld e, c
    inc d
    ld c, c
    inc d
    ld c, e
    inc d

jr_008_653c:
    ld e, h
    inc d
    ld e, l
    inc d

jr_008_6540:
    ld c, l
    inc d
    ld c, [hl]
    inc d
    inc l
    inc d
    dec l
    inc d
    ld l, $14
    ld a, [hl+]
    inc d
    jr nz, jr_008_65a0

    ld [bc], a
    jr nz, jr_008_6515

jr_008_6551:
    ld [bc], a
    inc b
    jr nz, @+$55

    ld bc, $2006
    dec bc
    ld bc, $9620
    ld [bc], a
    jr nz, @-$64

jr_008_655f:
    inc b
    ld [bc], a
    db $10
    ld l, [hl]
    inc d
    ld l, c
    inc d
    ld l, d
    inc d
    ld e, e
    inc d
    ld l, h
    inc d
    ld l, l
    inc d
    db $10
    inc d
    cp $14
    inc a
    inc d
    dec a
    inc d
    ld a, $14
    ld e, d
    inc d
    jr nz, jr_008_64fc

    ld b, $75
    sbc b
    db $76
    sbc b
    ld [hl], a
    sbc b
    ld a, b
    sbc b
    ld a, c
    sbc b
    ld a, d
    sbc b
    ld a, e
    sbc b
    ld a, d
    ld e, b
    ld a, d
    jr nz, jr_008_659f

    inc de
    jr nz, jr_008_659f

    db $10
    ld a, d
    sbc b
    ld a, e
    ret c

    ld a, d
    ret c

    ld a, c
    ret c

    ld a, b
    ret c

    ld [hl], a

jr_008_659f:
    ret c

jr_008_65a0:
    db $76
    ret c

jr_008_65a2:
    ld [hl], l
    ret c

    cp e
    inc d
    db $10
    jr nz, jr_008_65e0

    ld de, $14fe
    rlca
    jr nz, jr_008_6540

    ld bc, $4620
    nop
    and d
    jr jr_008_65d6

jr_008_65b6:
    ret c

    rst $38
    dec d
    ldh [rNR23], a
    or a
    inc d
    cp b
    inc d
    cp c
    inc d
    cp d
    inc d
    cp e
    inc d

jr_008_65c5:
    jr nz, jr_008_6623

    ld [bc], a
    rrca
    db $10
    dec b
    db $10
    ldh [rNR41], a
    ld c, e
    rra
    ld d, $f0

jr_008_65d2:
    jr jr_008_663f

    inc d
    ei

jr_008_65d6:
    jr jr_008_65f8

    cp b
    ld [de], a
    jr nz, jr_008_65ea

    ld [bc], a
    rra
    db $10
    dec b

jr_008_65e0:
    db $10
    ldh a, [rNR41]
    ld c, e
    rra
    ld d, $d6
    ret c

    jr nz, jr_008_65a2

jr_008_65ea:
    inc d
    ei
    jr @-$03

    inc d
    ei
    inc d
    rlca
    db $10
    cpl
    db $10
    dec b
    db $10
    or d

jr_008_65f8:
    jr nz, jr_008_65c5

    rra

jr_008_65fb:
    jr @+$33

    jr nz, jr_008_65b6

    dec d
    ei
    inc d
    ld bc, $fb10
    inc d
    ccf
    db $10
    ld b, $10
    or d
    sbc b
    jr nz, @-$26

    rst $38
    dec d
    or d
    sbc b
    ld b, c
    inc d
    ld [hl-], a
    inc d
    inc sp
    inc d
    inc [hl]
    jr nz, jr_008_65d2

    db $10
    jr nz, @+$7f

    ld hl, $104f

jr_008_6621:
    ld b, $10

jr_008_6623:
    sub $20
    rr a
    ld a, [de]
    ld b, d
    inc d
    ld b, e
    inc d
    ld b, h
    jr nz, @-$47

    dec d
    ld e, a
    db $10
    ld b, $10
    rst $10
    jr nz, jr_008_6682

jr_008_6637:
    rra
    ld d, $c2
    sbc b
    ei
    jr jr_008_6690

    inc d

jr_008_663f:
    ld d, e
    inc d

jr_008_6641:
    ld d, h
    jr nz, jr_008_65fb

    dec d
    ld l, a
    jr nz, jr_008_668f

jr_008_6648:
    jr nz, jr_008_666a

    ld c, e
    rra
    ld d, $b2
    sbc b
    ei

jr_008_6650:
    jr jr_008_66b4

jr_008_6652:
    inc d
    ld h, e
    inc d
    ld h, h
    jr nz, jr_008_668f

    ld h, $18
    rrca
    db $10
    jp nz, Jump_008_4b20

    rra
    ld d, $d7
    sbc b
    jr nc, @+$12

    ld d, b
    inc d
    ld d, c
    jr nz, jr_008_6621

jr_008_666a:
    inc de
    ld a, [bc]
    db $10
    dec bc
    db $10
    ei
    jr jr_008_6683

    inc d

jr_008_6673:
    ret c

    jr nz, jr_008_6641

    rra
    rla
    sbc b
    ld b, b
    db $10
    ld h, b
    db $10
    ld h, c
    jr nz, jr_008_6637

    inc de
    ld a, [de]

jr_008_6682:
    db $10

jr_008_6683:
    dec de
    db $10
    ei
    jr jr_008_66d7

    jr nz, @+$0b

    cpl

jr_008_668b:
    jr jr_008_6652

    jr nz, jr_008_6648

jr_008_668f:
    inc de

jr_008_6690:
    dec d
    db $10
    ld d, $10
    dec h
    db $10
    jr nz, jr_008_6650

    ld [de], a
    jp z, $d710

    ld e, b
    jr nz, jr_008_66eb

    cpl
    rla
    ld hl, $2210
    db $10
    inc hl
    db $10
    inc h
    db $10
    ei
    inc d
    dec [hl]
    db $10
    ld [hl], $10
    scf
    db $10
    jr c, jr_008_66c3

    ld e, a

jr_008_66b4:
    db $10
    or d
    jr nz, jr_008_66c3

    ld c, a
    ld d, $f0
    sbc b
    ld [hl], d
    db $10
    ld [hl], d
    ld d, b
    ld [hl], c
    ld d, b
    ld [hl], b

jr_008_66c3:
    ld d, b
    ret nz

    db $10
    ld b, l
    db $10
    ld b, [hl]
    db $10
    ld b, a
    db $10
    ld c, b
    db $10
    ld l, a
    jr nz, jr_008_671a

    ld c, a
    jr jr_008_66b4

    sbc b
    or b
    ld d, b

jr_008_66d7:
    add d
    ld d, b
    add c
    ld d, b
    add b

jr_008_66dc:
    ld d, b
    ret nc

    db $10
    ld d, l
    db $10
    ld d, [hl]
    db $10
    ld d, a
    db $10
    ld e, b
    db $10
    ld l, a
    jr nz, jr_008_6673

    rra

jr_008_66eb:
    jr jr_008_66c3

    jr jr_008_6762

    ld d, b
    sub d
    ld d, b
    sub c
    ld d, b
    sub b
    ld d, b
    pop bc

jr_008_66f7:
    db $10
    ld h, l
    db $10
    ld h, [hl]
    db $10
    ld h, a
    db $10

jr_008_66fe:
    jr nz, jr_008_6700

jr_008_6700:
    jr nz, jr_008_6722

    jp z, $171f

    rst $10
    jr jr_008_668b

    ld d, b
    ei
    inc d
    ld [$0910], sp
    db $10
    pop de
    db $10
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    ld [hl], d
    db $10
    ld [hl], d
    db $10
    and c

jr_008_671a:
    jr nz, jr_008_6765

    rra
    jr jr_008_66f7

    sbc b
    sub e
    ld d, b

jr_008_6722:
    rla
    db $10
    jr jr_008_6736

    add hl, de
    db $10
    pop hl
    db $10
    add b
    db $10
    add c
    db $10

jr_008_672e:
    add d
    db $10
    or b
    db $10
    or c
    jr nz, jr_008_66fe

    cpl

jr_008_6736:
    add hl, de
    jr jr_008_66dc

jr_008_6739:
    ld d, b
    daa
    db $10

jr_008_673c:
    jr z, @+$12

    add hl, hl
    db $10
    pop af
    db $10
    sub b
    db $10
    sub c
    db $10
    sub d
    db $10
    ld [hl], e
    db $10
    ld [hl], h
    db $10
    ld [hl], l

jr_008_674d:
    jr jr_008_67c5

    jr jr_008_67c8

    jr jr_008_67cb

    jr jr_008_67ce

    jr jr_008_67d1

    jr jr_008_67d4

    jr jr_008_67d5

    ret c

    ld a, d
    jr nz, jr_008_672e

    ld d, e
    jr nz, jr_008_672e

jr_008_6762:
    ld d, b
    jr nz, jr_008_6739

jr_008_6765:
    ld d, h
    jr nz, jr_008_673c

    ld d, d
    ld [hl], l
    ld e, b
    ei
    inc d
    call $ce14
    inc d
    rst $08
    inc d
    ld [hl], e
    db $10
    add $10
    rst $00
    inc d
    ret z

    inc d
    add e
    db $10
    add h
    db $10
    add l
    jr nz, jr_008_674d

    ld bc, $1088
    adc d
    db $10
    ld b, $10
    ld b, $10
    adc h
    db $10
    adc l
    db $10
    adc [hl]
    db $10
    adc a
    db $10
    adc a
    ld d, b
    jp nc, $d314

    inc d
    call nc, $d514
    inc d
    and $14
    rst $20
    inc d
    add sp, $14
    jp hl


    inc d
    xor c
    inc d
    db $db
    inc d
    ei
    inc d
    db $dd
    inc d
    sbc $14
    rst $18
    inc d
    add e
    db $10
    ei
    jr jr_008_67e1

    ld d, b
    dec hl
    db $10
    sub e
    db $10
    sub h
    db $10
    sub l
    db $10
    sub [hl]
    db $10
    inc b
    db $10
    sbc b
    db $10

jr_008_67c5:
    sbc d
    db $10
    sbc e

jr_008_67c8:
    db $10
    sbc h
    db $10

jr_008_67cb:
    ld b, $10
    sbc l

jr_008_67ce:
    db $10
    sbc [hl]
    db $10

jr_008_67d1:
    sbc a
    db $10
    xor l

jr_008_67d4:
    sub b

jr_008_67d5:
    ld [c], a
    inc d
    db $e3
    inc d
    db $e4
    inc d
    push hl
    inc d
    or $14
    rst $30
    inc d

jr_008_67e1:
    ld hl, sp+$14
    ld sp, hl
    inc d
    ei
    inc d
    db $eb
    inc d
    db $ec

jr_008_67ea:
    inc d
    db $ed
    inc d
    xor $14
    ei
    inc d
    sub e
    db $10
    ei
    jr jr_008_6831

    ld d, b
    dec sp
    db $10
    and e
    db $10
    and h
    db $10
    and l
    db $10
    and [hl]
    db $10
    and a
    db $10
    xor b
    db $10
    xor d
    db $10
    xor e
    jr nz, @+$15

    ld h, c
    jr nz, jr_008_6821

    ld h, b
    xor a
    inc d
    adc c
    inc d
    ld a, [c]
    inc d

jr_008_6814:
    di

jr_008_6815:
    inc d
    db $f4
    inc d
    push af
    inc d
    jr nz, jr_008_681c

jr_008_681c:
    jr nz, jr_008_67ea

    inc d
    xor [hl]
    inc d

jr_008_6821:
    and b
    inc d
    db $eb
    sub h
    ld h, $14
    add a
    inc d
    rst $28
    inc d
    jp c, $a314

    jr nz, jr_008_6831

    ld b, e

jr_008_6831:
    ld e, d
    ld d, h
    ld a, $14
    sub a
    ld d, h
    sub a
    inc d
    or e
    inc d
    or h
    inc d
    or l
    inc d
    or [hl]
    jr nz, jr_008_6815

    ld h, b
    ld d, h
    or l
    ld d, h
    or h
    ld d, h
    or e
    ld d, h
    sub a
    inc d
    adc e
    inc d
    xor h
    inc d
    ld a, $94
    ld a, $94
    add [hl]
    inc d
    cp a
    inc d

jr_008_6858:
    call c, $a920
    ld h, c
    jr nz, jr_008_685e

jr_008_685e:
    jr nz, jr_008_68c8

jr_008_6860:
    inc d
    ei
    inc d
    ld [$a920], a
    ld h, b
    jr nz, jr_008_6860

    ld d, $20
    add hl, bc
    ld a, a
    ld c, l
    jr nz, jr_008_688f

    ld a, a
    ld [bc], a
    jr nz, jr_008_6814

    rst $38
    ld c, l
    jr nz, jr_008_6858

    rst $38
    dec c
    rst $38
    ld b, a
    ld b, b
    add hl, bc
    nop
    ld de, $1a03
    ld l, $02
    sub c
    ld [bc], a
    inc [hl]
    inc bc
    cp c
    inc bc
    db $fd
    inc bc
    rst $38
    dec hl
    rst $38

jr_008_688f:
    ld b, a
    sbc l
    inc c
    ld h, c
    nop
    rst $38
    ld a, a
    rra
    inc bc
    sbc a
    inc bc
    rst $38
    ld b, a
    ret nz

    inc b
    add e
    nop
    inc c
    ld bc, $00a7
    or c
    ld [bc], a
    inc [hl]
    inc bc
    rlca
    ld c, $40
    add hl, bc
    rst $38
    inc bc
    ld e, d
    inc bc
    add [hl]
    ld bc, $1820
    add c
    ld a, h
    sbc l
    inc c
    jr nz, @+$22

    add b
    dec h
    nop
    rrca
    ld bc, $00aa
    or h
    ld [bc], a
    add hl, sp
    inc bc
    add hl, bc
    ld c, $42

jr_008_68c8:
    add hl, bc
    cp a
    inc bc
    ld e, l
    inc bc
    adc d
    jr nz, jr_008_6907

    add c
    di
    dec e
    sbc b
    ld [de], a
    rst $38
    ld b, a
    nop
    ld a, h
    jr nz, jr_008_693d

    adc a
    add hl, bc

label8_68dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    inc c
    add e
    db $10
    adc a
    nop
    rst $38
    inc c
    di

jr_008_6907:
    nop
    ei
    nop
    rst $38
    jr nc, @+$01

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

jr_008_6918:
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38

jr_008_691e:
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    add b
    ld a, a
    ld [hl], b
    rst $38
    db $10
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

jr_008_693d:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_008_691e

    jr nc, jr_008_6918

    add b
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
    ld [hl], b
    rst $38
    nop
    rst $38
    add d
    ld bc, $0102
    inc b
    ei
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
    add [hl]
    ld bc, $06c9
    rst $10
    inc c
    rst $30
    ld [$13ec], sp
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ld a, b
    ld a, b
    or l
    or b
    xor e
    and b
    sub a
    add b
    rst $08
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $28
    ldh [rP1], a
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    ccf
    ccf
    rrca
    nop
    rrca
    nop
    rlca
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
    ld a, [$f405]
    dec bc

jr_008_69e1:
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$f805]
    rlca
    ld hl, sp+$07
    rst $28
    ldh [$2f], a
    jr nz, jr_008_69e1

    ldh [$f7], a
    ldh a, [$97]
    sub b
    rst $20
    ldh [$f7], a
    ldh a, [$f7]
    ldh a, [$7f]
    cp a
    ld h, a
    ldh [$6f], a
    ldh [$59], a
    add $51
    adc $77
    add sp, $7f
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld a, a
    cp a
    ld a, b
    rst $18
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld e, b
    rst $38
    ld a, b
    rst $38
    ld [hl], a
    db $eb
    nop
    rst $38
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    inc e
    nop
    nop
    nop
    db $fc
    rst $38
    ld a, [hl+]
    db $d3
    inc e
    push hl
    cp d
    ld b, e
    sbc $27
    ld e, d
    and e
    cp $ff
    nop
    rst $38
    cp $00
    db $fc
    nop
    ld a, [$fc00]
    nop
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$07
    adc h
    inc bc
    sub b
    rrca
    nop
    rst $38
    inc c
    di
    nop
    ei
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
    ld a, a
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rla
    rst $28
    inc de

jr_008_6a88:
    db $eb
    ld bc, $31f9
    ret


    ld a, a
    nop
    ld a, a
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    halt
    halt
    rst $38
    rst $38
    ld [$fff7], sp
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    db $fc
    ld c, h
    or [hl]
    ld [hl-], a
    ld l, l
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
    inc bc
    nop
    ld a, c
    nop
    sbc [hl]
    nop
    rst $28
    rst $38
    jr c, jr_008_6a88

    rst $38
    rst $38
    nop
    rst $38
    add e
    rst $38
    nop
    cp $44
    cp d
    ld l, h
    sub $ff
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr c, jr_008_6ad7

jr_008_6ad7:
    ld a, l
    nop
    ld a, l
    nop
    add hl, sp
    nop
    nop
    rst $38
    add b
    ld a, a
    ld bc, $03fe
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    adc [hl]
    ld hl, $07de
    ld hl, sp+$08
    rst $30
    nop
    rst $38
    inc bc
    db $fd
    rst $38
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
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ld bc, $00ff
    rst $38
    add b
    rst $38
    jp $fffc


    rst $38

jr_008_6b4b:
    nop
    rst $38

jr_008_6b4d:
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
    rst $38
    ldh [rIE], a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    ld d, b
    add b
    ld d, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr z, jr_008_6b4b

    jr nc, jr_008_6b4d

    xor a
    cpl
    xor a
    cpl
    sbc a
    rra
    sbc a
    rra
    cp a
    ccf
    cp a
    ccf
    rst $10
    rla
    rst $08
    rrca
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    ld c, $f7
    ld [$07f8], sp
    pop af
    ld c, $e2
    dec e
    call nz, $873b
    add b
    rst $30
    ldh a, [$ef]
    ldh [$e8], a
    ldh [rNR41], a
    daa
    ret nz

    adc $c0
    db $dd
    add b
    cp e
    nop
    rst $38
    rrca

Call_008_6c00:
    ldh a, [$81]
    ld a, [hl]
    ldh [$1f], a
    add b
    ld a, a
    ret nz

    ccf
    ccf
    rst $18
    ld b, b
    cp a
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
    ccf
    nop
    nop
    ret nz

    nop
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

jr_008_6c49:
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
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    adc a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], b
    adc b
    jr nc, jr_008_6c49

    ld b, b
    cp a
    rrca
    rst $38
    ld h, $99
    ld a, a
    rst $38
    add b
    ld a, a
    ld a, a
    add b
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop
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
    nop
    ccf
    ld [bc], a
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    ld l, h
    sub c
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

    nop
    db $fc
    nop
    nop
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
    add hl, hl
    ld l, l
    inc bc
    dec sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    sub d
    nop
    call nz, RST_00
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
    rst $38
    rst $38
    db $10
    rst $08
    nop
    rst $28
    nop
    rst $28
    ld [$03e7], sp
    db $f4
    nop
    ei
    ret nz

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
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    add b
    inc bc
    nop
    inc e
    inc bc
    db $e3
    inc e
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [$03], a
    add e
    inc e
    rra
    ld h, b
    rst $38
    ld a, a
    add c
    ld a, [hl]
    add b
    inc bc
    add b
    ld a, h
    inc bc
    add e
    ld a, h
    ld a, a
    add b
    rst $38
    ld a, h
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ld a, h
    nop
    nop
    inc bc
    inc bc
    ld a, h
    ld a, a
    add b
    db $fc
    nop
    add e
    nop
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    jr nc, @+$01

    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_008_6d5b:
    rst $08
    nop
    nop
    rst $38
    rrca
    rst $38
    di
    db $fc
    adc a
    ld a, a
    ldh a, [rIE]
    rrca
    rst $38
    jr nz, jr_008_6d5b

    sub b
    db $fd
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld l, a
    nop
    ld [de], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    inc c
    di
    rst $38
    rst $38
    nop
    rst $38
    rst $08
    ldh a, [$30]
    rst $08
    rst $08
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_008_6d9b

jr_008_6d9b:
    ret nz

jr_008_6d9c:
    nop
    add b

jr_008_6d9e:
    rst $38
    ret nz

    cp a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld h, b
    rst $18
    ld h, b
    cp a
    jr nz, @+$41

    jr nc, jr_008_6d9c

    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    cp a

jr_008_6db6:
    nop
    rst $18
    nop
    rst $18
    nop
    rra

jr_008_6dbc:
    nop
    jr nc, jr_008_6d9e

    db $10
    rst $38
    db $10
    rst $38
    jr jr_008_6dbc

    jr jr_008_6db6

    ld [$08ff], sp
    db $fc
    inc b
    rst $38
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    di
    nop
    ld hl, sp+$00
    inc b
    rst $38
    ld b, $fd
    ld b, $fb
    ld [bc], a
    rst $38
    inc bc
    cp $03
    db $fd
    ld bc, $0101
    rst $38
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    nop
    nop
    add b
    rst $38
    ret nz

    cp a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$21

    jr nz, jr_008_6e4a

    jr nz, @+$01

    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    cp a

jr_008_6e16:
    nop
    rst $38
    nop
    rst $18
    nop
    rra
    nop
    db $10
    rra
    db $10
    rst $18
    ld de, $18f9
    rst $30
    jr jr_008_6e16

    ld [$0cff], sp
    ei
    inc c
    rst $30
    rst $28
    nop
    rst $28
    nop
    xor $00
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    add b
    cp h
    ld b, b
    rst $18
    jr nz, @-$0f

    db $10

jr_008_6e44:
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a

jr_008_6e4a:
    cp $01
    rst $38
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30

jr_008_6e56:
    nop
    ei
    nop
    db $fd
    nop
    cp $00
    add b
    rst $38
    ret nz

    ld a, a
    ld h, b
    cp a
    jr nc, jr_008_6e44

    jr jr_008_6e56

    inc c
    rst $30
    ld [bc], a
    inc bc
    ld bc, $7fff
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    db $fd
    nop
    nop
    nop
    ldh [$df], a
    ld a, b
    or a
    ld e, $ed
    rlca
    ei
    ld bc, $00fe
    rst $38
    nop
    nop
    rst $38
    rst $38
    ccf
    nop
    rst $08
    nop
    di
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38

jr_008_6ebc:
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    ret nz

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
    add hl, sp
    rst $38
    ld d, [hl]
    rst $38
    ld l, d
    db $fd
    sub c
    rst $38
    and d
    rst $38
    dec [hl]
    rst $28
    ld c, d
    cp $d4
    cp h
    ld bc, $0700
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    jr c, jr_008_6ef9

jr_008_6ef9:
    ld [hl], c
    nop
    db $e3
    nop
    adc h
    rst $38
    inc sp
    rst $38
    call z, $3cfc
    db $fc
    ld [c], a
    cp $41
    ld a, a
    nop
    ld a, a
    ld [hl+], a
    ld e, l
    ldh a, [rP1]
    ret nz

    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $9c00
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    inc bc
    add b
    add b
    rst $38
    ld d, b
    ld l, a
    ld e, a
    ld h, b
    ldh [rIE], a
    add sp, -$09
    cpl
    jr nc, jr_008_6ebc

    sbc a
    ld a, a
    nop
    nop
    nop
    sbc a
    nop
    sbc a
    nop
    nop
    nop
    rrca
    nop
    rst $08
    nop
    ld h, b
    nop
    db $10
    xor $22
    db $dd
    ld b, h
    cp e
    adc c
    db $76
    db $10
    rst $28
    dec h
    jp c, $3fc0

    ld [bc], a
    db $fd
    pop af
    nop
    ld a, $00
    rst $00
    nop
    ld sp, hl
    nop
    inc e
    nop
    push hl
    nop
    ld sp, hl
    nop
    ld [bc], a
    nop
    ld h, l
    ld a, [hl]
    ld [de], a
    sbc a
    adc b
    ld l, a
    ld [hl+], a
    db $dd
    push bc
    dec sp
    dec [hl]
    bit 0, l
    cp e
    inc d
    db $eb
    adc l
    nop
    ld h, d
    nop
    sub c
    nop
    ld [c], a
    nop
    db $f4
    nop
    inc [hl]
    nop
    call nz, Call_008_7400
    nop
    cp a
    ld a, b
    ld a, a
    ldh a, [$9f]
    ldh [$67], a
    ld hl, sp+$39
    cp $8e
    rst $38
    pop bc
    ld a, a
    pop af
    ccf
    add a
    nop
    rrca
    nop
    sbc a
    nop
    rst $20
    nop
    ld a, c
    nop
    ld a, $00
    adc c
    nop
    rst $00
    nop
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $28
    rst $10
    rst $08
    or a
    rst $08
    or [hl]
    adc a
    ld [hl], a
    rlca
    ei
    rst $08
    rst $18
    rst $08
    rst $08
    rst $08
    rst $08
    rst $10
    rst $10
    or a
    or a
    or [hl]
    or a
    ld [hl], a
    ld [hl], a
    ei
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    add e
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    di
    rrca
    rst $28
    inc de
    sub e
    ld a, h
    ld a, h
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
    rst $00
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    rst $38
    nop
    ld a, h
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
    db $fc
    nop
    nop
    inc bc
    ld c, a
    cp a
    cp a
    rst $18
    cp a
    rst $18
    sub a
    rst $28
    set 6, a
    jp hl


    rst $30
    rst $38
    nop
    nop
    nop
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    ld [bc], a
    add e
    adc [hl]
    ld a, c
    add [hl]
    ld a, c
    adc a
    ld [hl], b
    xor h
    ld [hl], b
    adc b
    ld [hl], b
    rst $38
    rrca
    rra
    add sp, -$02
    cp $fe
    ld a, b
    cp $70
    db $fc
    ld h, b
    ld hl, sp+$63
    ldh a, [$67]
    rst $28
    nop
    ld [$ff00], sp
    cp $ff
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ret nz

    nop
    cp $fe
    ldh [rP1], a
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    nop
    nop
    ccf
    add b
    nop
    rst $38
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    ld bc, $0000
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rrca
    nop
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    nop
    rst $38
    rst $38
    nop
    rlca
    nop
    nop
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $03fe
    db $fc
    nop
    ret nz

    ld b, a
    and a
    ld b, e
    and e
    ld b, e
    add e
    ld b, a
    and [hl]
    ld b, a
    add [hl]
    ld l, e
    sbc h
    rst $38
    nop
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, [hl]
    ld a, $7e
    ld a, $7e
    inc e
    nop
    nop
    jr c, @-$7e

    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    add c
    add b
    rst $18
    ret nz

    rst $38
    add b
    ret nz

    ld b, a
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    add b
    ld a, [hl]
    pop bc
    ld hl, $1f9f
    ld [hl], h
    sbc h
    ld a, [hl+]
    ld a, [$f9e9]
    db $10
    cp $e0
    rst $38
    nop
    ccf
    ld de, $1b2e
    dec [hl]
    db $e3
    nop
    push bc
    nop
    ld b, $00
    ld bc, $0e00
    nop
    rst $18
    nop
    rst $18
    nop
    adc $00
    ld [hl], $6b
    push de
    rst $30
    add e
    sbc a
    ld a, [hl]
    cp $00
    ld h, b
    nop
    cp a
    ld d, e
    db $ed
    ld c, h
    db $db
    sbc h
    nop
    ld [$6000], sp
    nop
    ld bc, $9f00
    nop
    ld b, b
    nop
    ld e, $00
    daa
    nop
    adc d
    adc l
    ld h, l
    ld h, [hl]
    ld l, $6f
    ld de, $2073
    ld a, l
    call $56f7
    ei
    xor l
    ld a, d
    ld [hl], e
    nop
    sbc c
    nop
    sub b
    nop
    adc h
    nop
    add d
    nop
    jr jr_008_7139

jr_008_7139:
    inc c
    nop
    add a
    nop
    nop
    rst $38
    push bc
    ld a, [hl-]
    ld a, [hl+]
    push de
    ret nz

    rst $38
    ld a, h
    rst $38
    nop
    db $fd
    ld c, h
    or [hl]
    ld [hl-], a
    db $ed
    ei

jr_008_714e:
    nop
    push bc
    nop
    ld a, [hl-]
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, c
    nop
    ld e, $00
    add l
    ld a, e
    inc d
    db $eb
    dec b
    ei
    ld [hl+], a
    db $dd
    jr jr_008_714e

    db $e3
    rra
    inc b
    rst $38
    jp c, $85ff

    nop
    db $f4
    nop
    inc b
    nop
    ld [c], a
    nop
    jr jr_008_7177

jr_008_7177:
    db $e3
    nop
    inc b
    nop
    jr jr_008_717d

jr_008_717d:
    ld l, b
    sbc a
    sbc h
    rst $38
    ld b, c
    rst $38
    ld h, e
    cp $af
    db $fc
    ld d, a
    ld hl, sp-$55
    ld a, h
    srl [hl]
    ld l, c
    nop
    sbc [hl]
    nop
    ld e, h
    nop
    ld h, c
    nop
    and e
    nop
    rla
    nop
    adc e
    nop
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
    rlca
    nop
    ei
    inc b
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
    ld hl, sp+$03
    rlca
    rst $38
    rst $38
    db $fd
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld sp, hl
    ld b, $ff
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
    ld bc, $fef8
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $38
    rra
    sbc a
    ld h, e
    di
    inc c
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    nop
    add e
    ldh [$f0], a
    db $fc
    inc bc
    nop
    ld h, a
    ldh [rVBK], a
    ret nz

    ld e, a
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add c
    db $fc
    db $fc
    ei
    ld a, e
    rst $30
    ld [hl], a
    rst $20
    ld h, a
    rst $08
    ld c, a
    sbc $5e
    call c, Call_000_3c1c
    dec a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    db $e3
    nop
    di
    nop
    ld h, a
    ld h, a
    db $dd
    rst $18
    cp e
    cp e
    inc sp
    inc sp
    ld l, d
    ld l, d
    ld c, d
    ld c, d
    ld e, h
    ld e, h
    ld c, h
    ld c, h
    rst $38
    ld [bc], a
    cp a
    ld b, [hl]
    ld a, e
    adc d
    ld a, [c]
    ld bc, $10f7
    rst $28
    nop
    ld e, [hl]
    nop
    ld e, e
    ld [bc], a
    ld hl, sp-$06
    or b
    or $64
    xor $6c
    ld l, l
    ld c, e
    ld e, e
    ld d, [hl]
    ld d, [hl]
    xor c
    xor c
    and h
    and [hl]
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ld b, b
    cp $81
    rst $38
    nop
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, $be
    ld e, $5e
    ld c, $8f
    ld b, a
    ld b, a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$fa05]
    dec b
    db $fd
    add d
    db $fd
    ld b, d
    db $fd
    ld b, d
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    ld a, l
    ld a, b
    ld a, l
    inc a
    cp [hl]
    inc e
    ld e, [hl]
    inc e
    ld e, [hl]
    ld a, a
    add b
    ld a, e
    add b
    ld [hl], a
    add b
    ld [hl], a
    add b
    ld a, a
    add b
    ld h, a
    add b
    rst $20
    jr jr_008_72b0

    ei
    add hl, sp
    add hl, sp
    dec [hl]

jr_008_72b0:
    dec [hl]
    dec hl
    dec hl
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld a, [de]
    ld a, c
    ld [$0000], sp
    ret c

    jr nz, jr_008_733c

    add b
    ld e, [hl]
    and h
    or $02
    ld h, d
    add b
    rst $20
    add c
    ret c

    nop
    ld c, b
    add b
    rla
    scf
    inc bc
    add e
    ld de, $29b5
    inc hl
    sbc l
    add c
    sbc b
    add c
    and a
    daa
    scf
    scf
    ld a, [bc]
    dec de
    nop
    ld c, $00
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $e4
    nop
    pop af
    nop
    nop
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
    ret nz

    rst $08
    pop bc
    pop bc
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    jr nc, jr_008_730f

jr_008_730f:
    ld a, $00
    nop
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
    jr nc, @+$01

    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], $89
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop

jr_008_733c:
    nop
    ld b, b
    rst $38
    ld h, d
    db $e3
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop

jr_008_734e:
    nop
    inc e
    nop
    nop
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
    daa
    rst $38
    reti


    ld sp, hl
    nop
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    jr nz, jr_008_736f

jr_008_736f:
    add $00
    nop
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
    jr nc, jr_008_734e

    rst $08
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    jr nc, jr_008_738f

jr_008_738f:
    rrca
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop

jr_008_739a:
    nop
    nop
    nop
    ld [de], a
    ld bc, $0205
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_008_739a

    db $ed
    ld sp, hl
    ei
    ei
    ei
    ei
    ei
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $00
    nop
    adc a
    nop
    sbc h
    nop
    sbc b
    nop
    ldh [rP1], a
    nop
    nop
    rlca
    rlca
    nop
    nop
    cp e
    add e
    ld [hl], b
    nop
    ld h, e
    inc bc
    ld h, a
    rlca
    rra
    rra
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp [hl]
    ld hl, $119e
    rst $08
    ld [$0407], sp
    rlca
    ld b, $07
    rlca
    add a
    add a
    rlca
    rlca
    ld c, [hl]
    ld l, a
    ld h, [hl]
    ld [hl], a
    inc sp
    dec sp
    ld sp, hl
    db $fd
    ld hl, sp-$02
    ld hl, sp-$01
    ld a, b
    rst $38
    ld hl, sp-$01
    inc bc
    nop
    rlca

Call_008_7400:
    jp $c60f


    ld c, $c4
    ld e, [hl]
    call z, $cc1e
    ld e, [hl]
    xor h
    rra
    xor $fc
    db $fc
    ld hl, sp+$78
    ldh a, [rSVBK]
    pop af
    ld [hl], c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld hl, $0000
    ret nz

    ld b, b
    sub b
    nop
    rra
    stop
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
    ld a, a
    ld l, a
    ld l, a
    ldh [$f0], a
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
    jr nz, jr_008_743f

jr_008_743f:
    ldh [$a0], a
    add b
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
    rst $18
    rst $18
    rra
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
    ld b, $06
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
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
    inc bc
    inc bc
    add e
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    rra
    adc $5f
    xor a
    ld e, a
    xor a
    ld e, a
    adc a
    ld e, a
    xor a
    ld c, a
    add a
    ld l, a
    sub [hl]
    ld c, $f4
    ld h, b
    jr nz, jr_008_7510

    nop
    ld h, b
    jr nz, jr_008_7514

    jr nz, jr_008_7516

    jr nz, jr_008_7528

    jr nc, jr_008_752a

    stop
    ld bc, $0000
    add b
    nop
    ret nz

    add b
    ld hl, sp-$68
    rst $18
    adc a
    adc a
    inc bc
    inc de
    inc c
    add hl, de
    ld b, $ff
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rlca
    rra
    nop
    cpl
    nop
    ld [hl], e
    inc c
    ldh [rTMA], a
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    nop
    inc bc
    inc bc
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [rIE]
    rst $38
    db $fc

jr_008_7510:
    rst $38
    ret nz

    rst $38
    nop

jr_008_7514:
    rst $38
    nop

jr_008_7516:
    rst $38
    nop
    cp $00
    db $fd
    nop
    di
    ld a, a
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    sbc e
    cp a
    scf
    ld a, a

jr_008_7528:
    ld l, a
    ld a, a

jr_008_752a:
    ld e, a
    rst $38
    rst $18
    add b
    cp $00
    db $fc
    nop
    ldh [rNR23], a
    add b
    jr nc, jr_008_7577

    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ld b, $00
    inc b
    ldh [rDIV], a
    ret nz

    add hl, bc
    ret nz

    ld c, e
    ld [c], a
    ld a, [bc]
    ldh [$5c], a
    or b
    inc c
    ldh a, [$f8]
    ld sp, hl
    ld hl, sp+$7b
    ld hl, sp+$7b
    ldh a, [rPCM12]
    ld a, [c]
    ld [hl], h
    ldh a, [$75]
    ldh a, [$33]
    nop
    inc bc
    dec e
    ld [bc], a
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    db $10
    ccf
    db $10
    rra
    ld [$000f], sp
    ld [bc], a
    db $ec
    nop
    xor $00
    rst $28
    nop
    rst $08
    nop
    rst $00

jr_008_7577:
    nop
    rst $00
    nop
    db $e3
    nop
    di
    rst $38
    ld bc, $3eff
    cp l
    ld a, [hl]
    sbc d
    ld a, h
    call nz, $e838
    db $10
    ld hl, sp+$08
    db $fc
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $8300
    nop
    rst $00
    ld [$04e7], sp
    di
    db $fc
    ret z

    ld sp, hl
    ld sp, $1119
    ld sp, $2331
    inc hl
    inc bc
    ld [bc], a
    rlca
    ld b, $0f
    ld c, $08
    jp $0631


    ld de, $31e6
    adc $23
    call c, $fc02
    ld b, $f8
    ld c, $f0
    rst $38
    cp a
    rst $30
    cp a
    xor $7f
    call nz, $807f
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_75d7:
    nop
    nop
    nop
    nop
    add b
    nop
    ld [$48c0], sp
    and b
    ld d, b
    and b
    ld d, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    jr nz, @-$3e

    ld [hl], b
    scf
    ld [hl], b
    rla
    ld h, b
    cpl
    ld h, b
    cpl
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    nop
    rra
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, l
    ld b, d
    ld a, h
    ld b, e
    ld a, $21
    ld [bc], a
    ld sp, hl
    ld bc, $00fc
    cp $00
    ld a, a
    add b
    ccf
    ld b, d
    sbc l
    ld b, e
    sbc h
    ld hl, $0fce
    dec c
    rst $08
    call $efef
    rst $38
    ld a, a
    rst $38
    jr nc, @-$45

    ld b, [hl]
    ld d, $e9
    add hl, bc
    or $0d
    ldh a, [$cd]
    jr nc, @-$0f

    db $10
    ld a, a
    nop
    jr nc, jr_008_75d7

    ld b, [hl]
    add c
    jp hl


    nop
    ldh a, [rP1]
    ret nz

    cp a
    pop hl
    sbc $ff
    pop hl
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, $df
    inc h
    ld [hl], a
    adc b
    add b
    nop
    ret nz

    nop
    pop hl
    nop
    rst $38
    nop
    cp $00
    ld e, $00
    dec h
    pop bc
    adc c
    ld [hl], c
    jr z, jr_008_767f

jr_008_767f:
    xor $c8
    sbc $cc
    rst $18
    adc $ef
    pop hl
    ld [c], a
    ldh [$de], a
    ld [hl-], a
    ld d, $e2
    ret nz

    rst $10
    ret z

    pop de
    db $ec
    pop hl
    xor $e0
    pop af
    ldh a, [$fd]
    db $fc
    di
    jr nc, jr_008_769f

    ld [$1c1c], sp

jr_008_769f:
    rra
    rra
    rrca
    rrca
    add a
    rlca
    rst $38
    add b
    ld bc, $0001
    nop
    ld bc, $1c01
    db $e3
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld a, b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $31
    cp h
    cp e
    cp $f9
    rst $38
    ld hl, sp-$02
    ld sp, hl
    db $fd
    ld [bc], a
    dec a
    ld a, [hl-]
    rst $38
    ld hl, sp+$31
    add $bb
    ld b, b
    ld sp, hl
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld [bc], a
    ld bc, $01fa
    ld hl, sp+$03
    inc b
    ei
    rra
    ldh [$7e], a
    add c
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
    ldh [rP1], a
    add c
    ld e, $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp l
    ld b, d
    rst $18
    jr nz, jr_008_7751

    or b
    daa
    ret c

    and e
    ld e, h
    or c
    ld c, [hl]
    sub b
    ld l, a
    ret c

    daa
    ld b, d
    inc a
    jr nz, jr_008_7730

jr_008_7711:
    or b
    rrca
    ret c

    rlca
    ld e, h
    add e
    ld c, [hl]
    add c
    ld l, a
    add b
    daa
    ret nz

    rla
    call nz, $a456
    ld d, [hl]
    and h
    ld d, h
    add b
    ld [hl], h
    and b
    ld d, h
    add b
    ld h, h
    add b
    inc h
    ret nz

    ld h, h
    jr z, jr_008_7794

jr_008_7730:
    add hl, bc
    ld h, h
    add hl, hl
    ld h, b
    dec hl
    ld h, b
    dec hl
    ld h, b
    dec hl
    ld b, b
    dec de
    nop
    dec de
    ldh a, [rNR10]
    ccf
    jr nz, @+$10

    ld b, $1e

jr_008_7744:
    ld b, $1e
    ld c, $1c
    inc c
    inc e
    inc e
    jr jr_008_7765

    rra
    nop
    jr nz, jr_008_7711

jr_008_7751:
    ld b, $f1
    ld b, $e1
    ld c, $e1
    inc c
    db $e3
    inc e
    db $e3
    jr jr_008_7744

    rra
    jr @+$01

    nop
    cpl
    ld [$082f], sp

jr_008_7765:
    cpl
    ld [$082f], sp
    cpl
    inc c
    scf
    inc b
    ld hl, sp+$03
    nop
    inc bc
    ld [$08d3], sp
    db $d3
    ld [$08d3], sp
    db $d3
    inc c
    pop de
    inc b
    ret


    rst $38
    nop

jr_008_777f:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_008_7794:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret c

    daa
    ret c

    daa
    ret c

    daa
    ret c

    daa
    ret c

    daa
    call nc, $e22b
    dec e
    pop hl
    ld e, $27
    ret nz

    daa
    ret nz

    daa
    ret nz

    daa
    ret nz

    daa
    ret nz

    dec hl
    ret nz

    dec e
    ret nz

    ld e, $c0
    jr nz, jr_008_777f

    ld [hl+], a
    nop
    ld [c], a
    ret nz

    db $e4
    ret nz

    db $e4
    ret nz

    call nz, $c480
    add b
    call nz, RST_00
    rra
    ret nz

    db $dd
    ret nz

    db $dd
    ret nz

    db $db
    ret nz

jr_008_77d6:
    db $db
    add b

jr_008_77d8:
    cp e
    add b
    cp e
    add b
    dec sp
    jr jr_008_77f7

    jr jr_008_77f9

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_008_77d6

    jr jr_008_77d8

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38

jr_008_77f7:
    nop
    rst $38

jr_008_77f9:
    nop
    rst $38
    nop
    rst $38
    rla
    inc b
    rla
    inc b
    rla
    inc b
    rla
    inc b
    ld d, $05
    rla
    ld b, $17
    ld b, $17
    rlca
    inc b
    jp hl


    inc b
    jp hl


    inc b
    jp hl


    inc b
    jp hl


    dec b
    add sp, $06
    add sp, $06
    add sp, $07
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ldh [$1f], a
    and b
    ld e, a
    db $10
    rst $28
    inc c
    di
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ret nz

    ld e, a
    add b
    rst $28
    nop
    di
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, h
    adc b
    ld c, b
    add b
    ld l, b
    add b
    ld l, b
    add b
    ld a, b
    and b
    ld c, a
    add b
    ld l, h
    sbc e
    inc b
    ei
    ld [$0033], sp
    scf
    ld b, b
    rla
    ld b, b
    rla
    ld h, b
    daa
    ld [hl], b
    jr nc, jr_008_78f2

    dec de
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp+$00
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
    rlca
    nop
    ld hl, sp+$07
    rlca
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
    rst $38
    nop
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    nop
    ret nz

    cp a
    ldh a, [$8f]
    db $fc
    or e
    rst $38
    call c, $ddff
    rst $38
    rst $18
    rst $38
    rra
    rra
    ldh [$bf], a
    nop
    adc a
    nop
    or e
    nop
    call c, $dd00
    nop
    rst $18
    nop
    rra
    nop
    nop
    db $e0

label8_78dd:
    add b
    ld [$131b], sp
    ld d, h
    ret nc

    inc d
    pop de
    inc d
    jp nc, $d310

    db $10
    call nc, $d510
    inc d
    ld [de], a
    inc d
    inc de
    inc d

jr_008_78f2:
    inc d
    inc d
    ld de, $1314
    ld d, h
    ld [de], a
    ld d, h
    inc d
    ld d, h
    ld de, $1414
    ld d, h
    inc de
    inc d
    ld [de], a
    ld d, h
    ld de, $0d1b
    dec bc
    dec bc
    ld d, b
    ld a, [bc]
    ld d, b
    add hl, bc
    ld d, b
    dec de
    ld [de], a
    nop
    ld [de], a
    inc d
    ld bc, $d614
    inc d
    rst $10
    inc d
    ret c

    inc d
    reti


    inc d
    reti


    inc d
    ret c

    ld d, h
    jp c, $0114

    inc d
    ld [bc], a
    inc d
    jr nz, @+$16

    ld hl, $2214
    inc d
    inc hl
    db $10
    inc h
    db $10
    dec h
    db $10
    dec h
    ld d, b
    inc h
    ld d, b
    inc hl
    ld d, b
    ld [hl+], a
    ld d, h
    ld hl, $2054
    ld d, h
    ld [bc], a
    inc d
    inc bc
    dec de
    ld c, a
    ld bc, $1009
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc bc
    inc d
    ld [bc], a
    inc d
    ld [bc], a
    ld d, h
    db $db
    inc d
    call c, $dd14
    dec de
    ld b, a
    ld bc, $481b
    nop
    sbc $1b
    dec sp
    ld bc, $1030
    ld sp, $3210
    db $10
    inc sp
    db $10
    inc [hl]
    db $10
    dec [hl]
    db $10
    dec [hl]
    ld d, b
    inc [hl]
    ld d, b
    inc sp
    ld d, b
    ld [hl-], a
    ld d, b
    ld sp, $3050
    ld d, b
    dec de
    ld c, $00
    dec de
    inc h
    nop
    dec de
    inc [hl]
    ld [bc], a
    inc de
    inc d
    ld [de], a
    inc d
    ld [de], a
    ld d, h
    reti


    inc d
    sbc d
    ld d, b
    sbc d
    db $10
    dec de
    ld c, b
    nop
    ldh [rNR10], a
    pop hl
    db $10
    ld [c], a
    db $10
    rrca
    db $10
    ld c, $50
    ld b, b
    db $10
    ld b, c
    db $10
    ld b, d
    db $10
    ld b, e
    db $10
    ld b, h
    db $10
    ld b, l
    db $10
    ld b, l
    ld d, b
    ld b, h
    ld d, b
    ld b, e
    ld d, b
    ld b, d
    ld d, b
    ld b, c
    ld d, b
    ld b, b
    ld d, b
    ld c, $10
    rrca
    ld d, b
    dec de
    ret nc

    nop
    dec c
    ld d, b
    dec c
    db $10
    rrca
    ld d, b
    dec c
    ld d, b
    dec de
    ld d, b
    nop
    sbc d
    db $10
    sbc d
    ret nc

    sbc d

Jump_008_79c9:
    sub b
    ld [hl], $10
    db $e4
    db $10
    push hl
    db $10
    ld e, $10
    rra
    ld d, b
    rra
    db $10
    ld e, $50
    ld d, b
    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, e
    db $10
    ld d, h
    db $10
    ld d, l
    db $10
    ld d, l
    ld d, b
    ld d, h
    ld d, b
    ld d, e
    ld d, b
    ld d, d
    ld d, b
    ld d, c
    ld d, b
    ld d, b
    ld d, b
    dec de
    inc c
    inc d
    dec e
    ld d, b
    dec e
    db $10
    rra
    ld d, b
    dec e
    ld d, b
    dec de
    inc h
    nop
    sbc d
    sub b
    db $fd
    db $10
    scf
    db $10
    sbc b
    db $10
    and $10
    rst $20
    db $10
    ld a, [$1b00]
    ld c, h
    rra
    inc de
    cp $10
    rst $38
    db $10
    cp $50
    inc bc
    ld d, b
    inc b
    db $10
    inc bc
    db $10
    add sp, $10
    xor c
    ret nc

    xor c
    db $10
    xor d
    db $10
    ld [$eb10], a
    dec de
    ld c, e
    rra
    ld d, $1b
    ld [hl], h
    ld [bc], a
    inc de
    ld d, b
    inc d
    db $10
    inc de
    db $10
    db $ec
    db $10
    db $ed
    db $10
    xor $10
    rst $28
    db $10
    ldh a, [rNR10]
    dec bc
    dec de
    ld c, e
    rra
    ld d, $1b
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld d, b
    ld bc, $0210
    db $10
    pop af
    db $10
    ld a, [c]
    db $10
    di
    db $10
    db $f4
    db $10
    push af
    db $10
    add hl, bc
    ld d, b
    dec de
    adc h
    rra
    dec de
    ld [de], a
    ld d, b
    ld de, $1210
    db $10
    ld bc, $f610
    db $10
    inc bc
    db $10
    dec de
    ld [hl], h
    ld [bc], a
    dec de
    call z, $1b1f
    dec de
    ld a, d
    ld [de], a
    ld de, $f710
    db $10
    ld hl, sp+$10
    dec de
    inc [hl]
    ld [bc], a
    dec de
    adc h
    rra
    dec e
    jr c, jr_008_7a99

    add hl, sp
    jr jr_008_7a87

    db $10
    inc b
    db $10

jr_008_7a87:
    ld sp, hl
    dec de
    ld b, l
    cpl
    jr nz, jr_008_7ac7

    jr @+$3d

    jr jr_008_7acd

    jr jr_008_7ad0

    jr @+$14

    ld d, b
    inc d
    ld d, b
    db $fc

jr_008_7a99:
    dec de
    add l
    cpl
    ld e, $3e
    jr @+$41

    jr @+$48

    jr jr_008_7aeb

    jr jr_008_7aee

    jr jr_008_7ac3

    db $fc
    db $10
    inc bc
    ld d, b
    dec de
    ld b, [hl]
    cpl
    dec e
    ld c, c
    jr jr_008_7afd

    jr @+$4d

    jr jr_008_7b03

    jr @+$4f

    jr jr_008_7ad6

    inc a
    jr nz, jr_008_7ad1

    dec de
    add l
    cpl
    ld e, $4e

jr_008_7ac3:
    jr jr_008_7b14

    jr jr_008_7b1d

jr_008_7ac7:
    jr @+$59

    jr jr_008_7b23

    dec de
    cp a

jr_008_7acd:
    ld hl, $1b01

jr_008_7ad0:
    ld b, l

jr_008_7ad1:
    cpl
    ld e, $59
    jr jr_008_7b30

jr_008_7ad6:
    jr @+$5d

    jr jr_008_7b36

    jr @+$5f

    dec de
    rst $38
    ld hl, $1b11
    add l
    cpl
    ld e, $5e
    jr jr_008_7b46

    jr jr_008_7b49

    jr jr_008_7b4c

jr_008_7aeb:
    jr jr_008_7b4f

jr_008_7aed:
    dec de

jr_008_7aee:
    ccf
    ccf
    inc h
    ld h, e
    jr @+$66

    jr jr_008_7b5b

    jr jr_008_7b5e

    jr jr_008_7b61

    dec de
    ld a, a
    ccf

jr_008_7afd:
    inc h
    ld l, b
    jr jr_008_7b6a

    jr jr_008_7b6d

jr_008_7b03:
    jr jr_008_7b70

    jr @+$6e

    dec de
    cp a
    ccf
    inc h
    ld l, l
    jr jr_008_7b7c

    jr jr_008_7b7f

    jr jr_008_7b82

jr_008_7b12:
    jr jr_008_7b85

jr_008_7b14:
    dec de

jr_008_7b15:
    rst $38
    inc sp
    xor e

jr_008_7b18:
    db $10
    ld a, [bc]
    ld d, b
    or l
    dec de

jr_008_7b1d:
    adc e
    rra
    jr jr_008_7b93

    jr jr_008_7b96

jr_008_7b23:
    jr @+$76

    jr jr_008_7b9c

    jr jr_008_7b9f

    dec de
    ccf
    inc sp
    xor h
    db $10
    or e
    db $10

jr_008_7b30:
    or h
    dec de
    rr a
    jr jr_008_7bad

jr_008_7b36:
    jr jr_008_7bb0

    jr jr_008_7bb3

    jr jr_008_7bb6

    jr jr_008_7bb9

    jr jr_008_7aed

    db $10
    xor [hl]
    db $10
    xor a
    db $10
    or b

jr_008_7b46:
    db $10
    or c
    db $10

jr_008_7b49:
    or d
    dec de
    adc e

jr_008_7b4c:
    rra

jr_008_7b4d:
    jr @+$7e

jr_008_7b4f:
    jr jr_008_7bce

    jr jr_008_7bd1

jr_008_7b53:
    jr jr_008_7bd4

jr_008_7b55:
    jr @-$7e

    jr @-$48

    inc d
    or a

jr_008_7b5b:
    db $10
    cp b
    db $10

jr_008_7b5e:
    cp c
    db $10
    cp d

jr_008_7b61:
    db $10
    cp e
    db $10
    cp h
    db $10
    cp l
    inc d
    cp [hl]
    inc d

jr_008_7b6a:
    cp a
    inc d
    db $10

jr_008_7b6d:
    inc d
    db $10
    ld d, h

jr_008_7b70:
    db $10
    sub h
    ld h, $54
    inc de
    ld d, h
    ld [de], a
    dec de
    dec d
    ld bc, $1426

jr_008_7b7c:
    db $10
    ld d, h
    cpl

jr_008_7b7f:
    sub h
    db $10
    inc d

jr_008_7b82:
    dec hl
    dec de
    cp e

jr_008_7b85:
    ld bc, $5413
    dec l
    inc d
    add c

jr_008_7b8b:
    jr @-$7c

    jr jr_008_7b12

    jr jr_008_7b15

jr_008_7b91:
    jr jr_008_7b18

jr_008_7b93:
    jr jr_008_7b55

    inc d

jr_008_7b96:
    pop bc
    db $10

jr_008_7b98:
    jp nz, $c310

    db $10

jr_008_7b9c:
    call nz, $c510

jr_008_7b9f:
    inc d
    add $14
    rst $00
    inc d
    ret z

    inc d
    ret


    inc d
    inc de
    dec de
    dec d
    nop
    inc d

jr_008_7bad:
    daa
    ld d, h
    sbc c

jr_008_7bb0:
    inc d
    db $10
    inc d

jr_008_7bb3:
    cpl
    inc d
    db $10

jr_008_7bb6:
    sub h
    daa
    inc d

jr_008_7bb9:
    dec de
    cp d
    ld bc, $1314
    ld d, h
    inc l
    dec de
    dec e
    ld h, e
    add [hl]
    jr jr_008_7b4d

    jr @-$76

    jr jr_008_7b53

    jr @-$74

jr_008_7bcc:
    jr jr_008_7b98

jr_008_7bce:
    inc d

jr_008_7bcf:
    rl b

jr_008_7bd1:
    call z, $cd14

jr_008_7bd4:
    db $10
    adc $10
    rst $08
    db $10
    add $14
    dec b
    dec de
    rra
    ld h, b
    ld d, h
    db $10
    sub h
    dec de
    ld e, $60
    jr z, jr_008_7c3b

    sbc e
    inc d
    sbc h
    inc d
    sbc l
    inc d
    sbc [hl]
    inc d
    jr z, jr_008_7c05

    inc c
    dec de
    dec e
    ld h, d
    inc d
    inc c
    sub h
    dec hl
    dec de
    dec h
    ld h, c
    adc e
    jr jr_008_7b8b

    jr @-$71

jr_008_7c01:
    jr jr_008_7b91

    jr @-$6f

jr_008_7c05:
    jr jr_008_7c0d

    inc d
    rlca
    inc d
    add $1b
    add e

jr_008_7c0d:
    ld h, l
    ld [$651b], sp
    ld h, c
    inc c
    ld d, h
    db $10
    ld d, h
    sbc a
    inc d
    and b
    inc d
    and c
    inc d
    and d
    inc d
    and d
    inc d
    and e
    inc d
    and h
    inc d
    add hl, hl
    dec de
    ld l, e
    ld h, c
    cpl
    call nc, $1410
    db $10
    call nc, $142b
    cpl
    db $d4, $90, $18
    sub c
    jr @-$6c

    jr jr_008_7bcc

    jr jr_008_7bcf

jr_008_7c3b:
    jr jr_008_7c52

    inc d
    ld d, $1b
    add e
    ld h, l
    rla
    inc d
    jr jr_008_7c5a

    add hl, de
    dec de
    inc de
    ld h, c
    inc de
    inc d
    and l
    inc d
    and [hl]
    dec de
    sbc l
    ld h, c

jr_008_7c52:
    sbc d
    ld d, h
    sbc d
    inc d
    and a
    inc d
    xor b
    dec de

jr_008_7c5a:
    rrca
    ld bc, $1e1b
    nop
    dec de
    call nc, $2c60
    inc d
    inc e
    jr jr_008_7c95

    jr @-$69

    jr jr_008_7c01

    jr @-$67

    jr @-$03

    dec de
    rst $38
    ld l, a
    ld c, l
    dec de
    rra
    ld a, a
    inc c
    dec de
    and b
    rst $38
    ld c, l
    dec de
    rst $18
    rst $38
    ld c, $38
    nop
    nop
    ld h, l
    nop
    ld c, h
    ld bc, $05ae
    ld [de], a
    ld c, $76
    ld a, [de]
    inc e
    cpl
    ld a, [bc]
    ld bc, $14c6
    jr z, @+$3f

    xor h

jr_008_7c95:
    ld c, l
    adc h
    ld d, [hl]
    pop af
    ld l, d
    ld e, h
    ld bc, $14c6
    dec de
    nop
    add d
    and [hl]
    nop
    rst $00
    nop
    ld a, [bc]
    ld bc, $056f
    ld a, b
    ld [de], a
    inc e
    cpl
    dec de
    ld [de], a
    add [hl]
    rst $20
    ld bc, $12cc
    dec de
    nop
    add d
    add $14
    xor h
    ld c, l
    dec de
    ld a, [hl+]
    add b
    nop
    dec [hl]
    and b
    ld b, l
    ld a, l
    ld b, $55
    ld b, [hl]
    ei
    add hl, hl
    cp l
    ld b, [hl]
    ld a, h
    ld l, a
    dec de
    ld a, [bc]
    add b
    nop
    jr c, jr_008_7cf1

    nop
    dec de
    ld h, d
    adc a
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_7cf1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_7ec9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_7ef7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
