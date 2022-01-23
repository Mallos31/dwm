; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

    ld d, d
    ld c, l
    ld l, h
    ret z

    db $76
    jr jr_052_4081

    adc a
    ld d, e
    jp $d752


    ld h, b
    adc d
    ld l, d
    pop af
    ld a, [hl]
    call $cd41
    ld b, c
    call $d441
    ld b, c
    call nc, $d441
    ld b, c
    db $db
    ld b, c
    db $db
    ld b, c
    db $db
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld b, c
    jp hl


    ld b, c
    jp hl


    ld b, c
    jp hl


    ld b, c
    ldh a, [rSTAT]
    ldh a, [rSTAT]
    ldh a, [rSTAT]
    rst $30
    ld b, c
    rst $30
    ld b, c
    dec hl
    ld b, d
    dec [hl]
    ld b, d
    dec [hl]
    ld b, d
    ld a, h
    ld b, d
    xor d
    ld b, d
    ret c

    ld b, d
    ld [$3043], sp
    ld b, e
    ld c, d
    ld b, e
    ld c, d
    ld b, e
    ld l, l
    ld b, e
    ld l, l
    ld b, e
    add l
    ld b, e
    add l
    ld b, e
    xor b
    ld b, e
    xor b
    ld b, e
    ret nz

    ld b, e
    ei
    ld b, e
    dec d
    ld b, h
    inc [hl]
    ld b, h
    inc [hl]
    ld b, h
    ld l, h
    ld b, h
    ld a, a
    ld b, h
    call nz, $c444
    ld b, h
    call nz, $c444
    ld b, h
    call nz, $f844
    ld b, h
    ld hl, sp+$44
    ld a, [hl]
    ld b, l
    adc a
    ld b, l
    and a
    ld b, l
    ret c

    ld b, l
    cp $45
    dec h
    ld b, [hl]

jr_052_4081:
    dec h
    ld b, [hl]
    ld d, $46
    dec h
    ld b, [hl]
    cpl
    ld b, [hl]
    ld c, h
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld a, h
    ld b, [hl]
    add e
    ld b, [hl]
    add e
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    rst $08
    ld b, [hl]
    rrca
    ld b, a
    jr nz, jr_052_40e2

    ld a, [hl+]
    ld b, a
    inc [hl]
    ld b, a
    ld a, $47
    ld c, b
    ld b, a
    ld d, d
    ld b, a
    ld e, h
    ld b, a
    ld h, [hl]
    ld b, a
    ld [hl], b
    ld b, a
    ld a, d
    ld b, a
    add h
    ld b, a
    adc [hl]
    ld b, a
    sbc b
    ld b, a
    sbc b
    ld b, a
    inc c
    ld c, b
    inc c
    ld c, b
    adc b
    ld c, b
    sub a
    ld c, b
    cpl
    ld b, [hl]
    or h
    ld c, b
    jr jr_052_410c

    jr jr_052_410e

    ldh a, [rSTAT]
    dec hl
    ld c, c
    ld [hl-], a
    ld c, c
    ld [hl-], a
    ld c, c
    ld [hl-], a
    ld c, c
    ld [hl-], a
    ld c, c
    inc a
    ld c, c
    inc a
    ld c, c
    inc a
    ld c, c
    inc a
    ld c, c
    ldh a, [rSTAT]
    ld b, [hl]
    ld c, c
    ld c, l
    ld c, c
    dec h
    ld b, [hl]
    dec h

jr_052_40e2:
    ld b, [hl]
    dec h
    ld b, [hl]
    dec [hl]
    ld b, d
    ld d, h
    ld c, c
    ld a, e
    ld c, c
    ld a, e
    ld c, c
    ret c

    ld b, d
    jp nc, $0049

    ld c, d
    rst $30
    ld b, c
    ld [hl+], a
    ld c, d
    ld [hl+], a
    ld c, d
    ld d, a
    ld c, d
    ld a, e
    ld c, d
    ld [$a343], sp
    ld c, d
    push bc
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    inc [hl]
    ld c, e
    inc [hl]
    ld c, e
    ld l, b

jr_052_410c:
    ld c, e
    dec h

jr_052_410e:
    ld b, [hl]
    sub d
    ld c, e
    and c
    ld c, e
    xor e
    ld c, e
    or [hl]
    ld c, e
    and c
    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ld sp, $314c
    ld c, h
    dec sp
    ld c, h
    dec sp
    ld c, h
    ld [hl], d
    ld c, h
    add c
    ld c, h
    add c
    ld c, h
    and l
    ld c, h
    add c
    ld c, h
    call c, $0a4c
    ld c, l
    jr c, jr_052_4186

    call nz, $9244
    ld c, l
    jp hl


    ld c, l
    dec h
    ld b, [hl]
    ld a, [bc]
    ld c, [hl]
    adc d
    ld c, [hl]
    and h
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    db $e3
    ld c, [hl]
    db $e3
    ld c, [hl]
    ret c

    ld c, [hl]
    rst $20
    ld c, [hl]
    rst $20
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    inc l
    ld c, a
    ld sp, hl
    ld c, [hl]
    and c
    ld c, e
    dec [hl]
    ld c, a
    ld d, h
    ld c, a
    ld a, a
    ld c, a
    db $e3
    ld c, [hl]
    ld c, $4e
    and c
    ld c, a
    call z, $f84f
    ld b, h
    db $fc
    ld c, a
    rra
    ld d, b
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h

jr_052_4186:
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    dec h
    ld b, [hl]
    ld c, $4e
    dec d
    ld c, [hl]
    rra
    ld c, [hl]
    add hl, hl
    ld c, [hl]
    inc sp
    ld c, [hl]
    ret c

    ld b, d
    ld a, [hl-]
    ld c, [hl]
    ld a, c
    ld b, h
    ld l, l
    ld c, [hl]
    call Call_052_5bff
    call Call_052_54e7
    ret


    call Call_052_5c0d
    call Call_052_54e7
    ret


    call Call_052_5c1b
    call Call_052_54e7
    ret


    call Call_052_5c27
    call Call_052_54e7
    ret


    call Call_052_5c43
    call Call_052_54e7
    ret


    call Call_052_5c35
    call Call_052_54e7
    ret


    xor a
    ld [$d9f0], a
    call Call_052_5c51
    jr nc, jr_052_4225

    ld a, [$db89]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    ld hl, $b8e8
    call Call_052_54af
    push hl
    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    pop hl
    ret


jr_052_4225:
    ld a, $b8
    call Call_052_545d
    ret


    ld a, $03
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ret


    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $8c
    jr nz, jr_052_4276

    call Call_052_5c8f
    jr nc, jr_052_4270

    ld hl, $bccc
    call Call_052_54d2

Call_052_4262:
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    or $8c
    ld [hl], a
    ret


jr_052_4270:
    ld a, $bc
    call Call_052_545d
    ret


jr_052_4276:
    ld a, $bd
    call Call_052_5475
    ret


    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_052_42a0

    call Call_052_5cbc
    jr nc, jr_052_42a4

    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    set 0, [hl]
    ld hl, $b888
    call Call_052_54d2
    ret


jr_052_42a0:
    call Call_052_548d
    ret


jr_052_42a4:
    ld a, $b8
    call Call_052_545d
    ret


    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    jr nz, jr_052_42ce

    call Call_052_5cda
    jr nc, jr_052_42d2

    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    set 1, [hl]
    ld hl, $b898
    call Call_052_5493
    ret


jr_052_42ce:
    call Call_052_548d
    ret


jr_052_42d2:
    ld a, $b8
    call Call_052_545d
    ret


    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    bit 4, [hl]
    jr z, jr_052_42eb

    ld a, $be
    call Call_052_5475
    ret


jr_052_42eb:
    call Call_052_5d05
    jr nc, jr_052_4302

    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    set 4, [hl]
    ld hl, $b88e
    call Call_052_54af
    ret


jr_052_4302:
    ld a, $b8
    call Call_052_545d
    ret


    ld a, [$db89]
    ld hl, $dbc3
    call Call_052_6ab8
    ld a, [hl+]
    or [hl]
    jr z, jr_052_432a

    call Call_052_5d25
    jr nc, jr_052_4324

    call Call_052_5d48
    ld hl, $b88a
    call Call_052_54af
    ret


jr_052_4324:
    ld a, $b8
    call Call_052_545d
    ret


jr_052_432a:
    ld a, $bb
    call Call_052_545d
    ret


    ld a, [$db88]
    ld hl, $db04
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_052_4346

    set 0, [hl]
    ld hl, $8c00
    call Call_052_54a1
    ret


jr_052_4346:
    call Call_052_548d
    ret


    call Call_052_5dcc
    jr nc, jr_052_4367

    call Call_052_5dfc
    jr nc, jr_052_4361

    ld a, [$db89]
    call Call_052_5377
    ld hl, $b886
    call Call_052_54af
    ret


jr_052_4361:
    ld a, $bb
    call Call_052_5475
    ret


jr_052_4367:
    ld a, $b8
    call Call_052_545d
    ret


    call Call_052_5e3e
    jr nc, jr_052_437f

    ld hl, $9292
    call Call_052_5493
    ld a, [$db89]
    call Call_052_536c
    ret


jr_052_437f:
    ld a, $bb
    call Call_052_5475
    ret


    call Call_052_5e94
    jr nc, jr_052_43a2

    call Call_052_5eb4
    jr nc, jr_052_439c

    ld a, [$db89]
    call Call_052_5377
    ld hl, $b895
    call Call_052_54af
    ret


jr_052_439c:
    ld a, $bb
    call Call_052_5475
    ret


jr_052_43a2:
    ld a, $b8
    call Call_052_545d
    ret


    call Call_052_5f08
    jr nc, jr_052_43ba

    ld hl, $9797
    call Call_052_5493
    ld a, [$db89]
    call Call_052_536c
    ret


jr_052_43ba:
    ld a, $bb
    call Call_052_5475
    ret


    ld a, [$db89]
    and $04
    ld c, a
    ld b, $04
    ld d, $00

jr_052_43ca:
    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_43f3

    bit 2, [hl]
    jr nz, jr_052_43de

    inc d
    set 2, [hl]

jr_052_43de:
    inc c
    dec b
    jr nz, jr_052_43ca

    ld a, d
    or a
    jr z, jr_052_43f7

    ld hl, $5803
    rst $10
    ld a, [$dd72]
    add $09
    call Call_052_5481
    ret


jr_052_43f3:
    res 2, [hl]
    jr jr_052_43de

jr_052_43f7:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 2, [hl]
    jr nz, jr_052_4411

    set 2, [hl]
    ld hl, $9090
    call Call_052_54bd
    ret


jr_052_4411:
    call Call_052_548d
    ret


    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_052_441d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_442c

    ld a, c
    ld hl, $db05
    call Call_000_2f6c
    set 6, [hl]

jr_052_442c:
    inc c
    dec b
    jr nz, jr_052_441d

    call Call_052_548d
    ret


    ld a, [$db88]
    ld hl, $db04
    call Call_000_2f6c
    ld a, [$db8a]
    cp $28
    jr z, jr_052_4455

    bit 5, [hl]
    jr nz, jr_052_4466

    ld a, [hl]
    and $dd
    or $20
    ld [hl], a
    ld hl, $9999
    call Call_052_54bd
    ret


jr_052_4455:
    bit 1, [hl]
    jr nz, jr_052_4466

    ld a, [hl]
    and $dd
    or $02
    ld [hl], a
    ld hl, $9a9a
    call Call_052_5493
    ret


jr_052_4466:
    ld a, $bb
    call Call_052_5475
    ret


    ld a, [$db88]
    call Call_052_5382
    ld hl, $a0a0
    call Call_052_54bd
    ret


    ld a, [$db88]
    ld [$db89], a
    ld a, [$c86c]
    or a
    jr nz, jr_052_449c

    ld a, [$db89]
    bit 2, a
    jr z, jr_052_449c

    ld hl, $db07
    call Call_000_2f6c
    push hl
    pop hl
    ld b, $01
    ld a, [$db89]
    ld c, a
    jr jr_052_44aa

jr_052_449c:
    ld b, $04
    ld a, [$db89]
    and $04
    ld c, a
    ld hl, $db07
    call Call_000_2f6c

jr_052_44aa:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_44b4

    ld a, [hl]
    or $c0
    ld [hl], a

jr_052_44b4:
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc c
    dec b
    jr nz, jr_052_44aa

    call Call_052_5506
    ret


Call_052_44c4:
    ld a, [$db89]
    call Call_000_2fa5
    jr nc, jr_052_44d2

jr_052_44cc:
    ld a, $bb
    call Call_052_545d
    ret


jr_052_44d2:
    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr z, jr_052_44cc

    call Call_052_607d
    ld hl, $bb84
    call Call_052_54f8
    ret


Call_052_44f8:
    ld a, [$db89]
    call Call_000_2fa5
    jr nc, jr_052_456d

    jr z, jr_052_457a

    ld a, [$db8a]
    cp $30
    jr nz, jr_052_453a

    call Call_052_5559
    ld a, [$c899]
    cp $80
    jr nc, jr_052_4567

    jr jr_052_453a

jr_052_4515:
    ld a, [$db88]
    and $04
    ld c, a
    or $03
    ld b, a

jr_052_451e:
    ld a, c
    call Call_000_2fa5
    jr z, jr_052_4526

    jr c, jr_052_452d

jr_052_4526:
    inc a
    ld c, a
    cp b
    jr c, jr_052_451e

    jr jr_052_4574

jr_052_452d:
    ld [$db89], a
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld [hl], c

jr_052_453a:
    ld a, [$db89]
    ld b, a
    ld hl, $dbb3
    call Call_052_6ab8
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$db8a]
    cp $30
    jr nz, jr_052_4552

    srl d
    rr e

jr_052_4552:
    ld a, b
    ld hl, $dba3
    call Call_052_6ab8
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, b
    call Call_052_51dd
    ld hl, $9e9e
    call Call_052_54bd
    ret


jr_052_4567:
    ld a, $c0
    call Call_052_545d
    ret


jr_052_456d:
    ld a, [$db8a]
    cp $30
    jr nz, jr_052_4515

jr_052_4574:
    ld a, $bb
    call Call_052_545d
    ret


jr_052_457a:
    call Call_052_548d
    ret


    ld a, $04
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ld [$dd72], a
    xor a
    ld [$d9ef], a
    ret


    call Call_052_519e
    and $03
    jr z, jr_052_45a1

    ld a, [hl]
    and $fc
    ld [hl], a
    ld hl, $9c9c
    call Call_052_54bd
    ret


jr_052_45a1:
    ld a, $bb
    call Call_052_545d
    ret


    call Call_052_519e
    and $cc
    jr z, jr_052_45d2

    push hl
    bit 6, [hl]
    jr z, jr_052_45b8

    ld hl, $9d9d
    jr jr_052_45bb

jr_052_45b8:
    ld hl, $dbdb

jr_052_45bb:
    call Call_052_54bd
    pop hl
    ld a, [hl]
    and $33
    ld [hl], a
    ld a, [$db89]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $03
    ret


jr_052_45d2:
    ld a, $bb
    call Call_052_545d
    ret


    call Call_052_519e
    and $10
    jr z, jr_052_45f8

    ld a, [hl]
    and $ef
    ld [hl], a
    ld a, [$db89]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $03
    ld hl, $dcdc
    call Call_052_54bd
    ret


jr_052_45f8:
    ld a, $bb
    call Call_052_545d
    ret


    call Call_052_519e
    and $20
    jr z, jr_052_4610

    ld a, [hl]
    and $df
    ld [hl], a
    ld hl, $9f9f
    call Call_052_54bd
    ret


jr_052_4610:
    ld a, $bb
    call Call_052_545d
    ret


    ld hl, $5303
    rst $10
    ld a, $00
    ld [$dd6b], a
    ld a, $01
    ld [$d9ed], a
    ret


    call Call_052_519a
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_519a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6979
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6214
    call Call_052_54e7
    ret


    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    set 2, [hl]
    call Call_052_519a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    sla l
    rl h
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6232
    call Call_052_54e7
    ret


    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_46b4

    ld a, [$db8a]
    cp $3f
    jr z, jr_052_46a2

    ld a, [$db89]
    call Call_000_2f76
    jr c, jr_052_46a2

    ld b, $a0
    ld a, [$c899]
    cp b
    jr c, jr_052_46b8

jr_052_46a2:
    ld a, [$db88]
    ld hl, $db04
    call Call_000_2f6c
    set 7, [hl]
    ld hl, $b682
    call Call_052_54ea
    ret


jr_052_46b4:
    call Call_052_548d
    ret


jr_052_46b8:
    ld a, $78
    call Call_052_545d
    ret


    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    or $03
    ld [hl], a
    call Call_052_548d
    ret


    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    jr nz, jr_052_46ee

    ld a, [hl]
    or $0c
    ld [hl], a
    call Call_052_548d
    xor a
    ld [$d9ee], a
    ld a, $06
    ld [$d9ed], a
    ret


jr_052_46ee:
    ld a, [hl]
    and $f3
    ld [hl], a
    call Call_052_519a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6979
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $b682
    call Call_052_54ea
    ret


    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    or $30
    ld [hl], a
    call Call_052_548d
    ret


    call Call_052_6298
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_62a9
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_62ba
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_62cb
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_62dc
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6311
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_631f
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_632d
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6357
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6365
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6373
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6381
    ld hl, $b682
    call Call_052_54ea
    ret


    ld a, [$db8a]
    cp $51
    jr z, jr_052_47ac

    ld a, [$db89]
    call Call_000_2fa5
    call c, Call_052_4807
    ld d, $00
    jr jr_052_47bb

jr_052_47ac:
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [hl]
    ld [$db89], a
    ld d, $01

jr_052_47bb:
    ld a, [$db88]
    ld hl, $dbe3
    call Call_052_6ab8
    ld a, l
    ld [$db63], a
    ld a, h
    ld [$db64], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, d
    or a
    jr nz, jr_052_47d9

    call Call_052_69c6
    jr jr_052_47e2

jr_052_47d9:
    call Call_052_6b43
    ld b, h
    ld c, l
    call Call_052_6b2e
    add hl, bc

jr_052_47e2:
    ld a, [$db63]
    ld c, a
    ld a, [$db64]
    ld b, a
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    call Call_052_519a
    pop hl
    ld a, [$db63]
    ld c, a
    ld a, [$db64]
    ld b, a
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld hl, $b682
    call Call_052_54ea
    ret


Call_052_4807:
    ld hl, $580a
    rst $10
    ret


    ld a, [$dd69]
    cp $01
    jr nz, jr_052_486b

    call Call_052_5559
    ld a, [$c899]
    and $01
    jr z, jr_052_4859

    ld a, $03
    ld [$d9ef], a
    ld a, $0f
    ld [$dd69], a
    xor a
    ld [$d9ee], a
    ld [$c822], a
    ld a, $a1
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    set 0, [hl]
    ld a, [$c86c]
    or a
    ret nz

    ld a, [$db88]
    cp $04
    ret c

    ld hl, $dd69
    inc [hl]
    ld a, [$db8a]
    cp $52
    ret z

    inc [hl]
    ret


jr_052_4859:
    ld a, $ff
    ld [$dd69], a
    xor a
    ld [$db56], a
    ld [$db57], a
    ld a, $c2
    call Call_052_545d
    ret


jr_052_486b:
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [hl]
    ld [$db89], a
    call Call_000_2fa5
    jp c, Jump_052_50f8

    call Call_052_63dc
    ld hl, $b682
    call Call_052_54ea
    ret


    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    set 7, [hl]
    call Call_052_548d
    ret


    call Call_052_519a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_69b7
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $b682
    call Call_052_54ea
    ret


    ld a, [$dd69]
    cp $05
    jr nc, jr_052_4914

    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_48f5

    call Call_052_519a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$dd69]
    cp $01
    jr z, jr_052_48de

    cp $02
    jr z, jr_052_48e3

    call Call_052_69e1
    jr jr_052_48e6

jr_052_48de:
    call Call_052_69b7
    jr jr_052_48e6

jr_052_48e3:
    call Call_052_69d2

jr_052_48e6:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $b682
    call Call_052_54ea
    ret


jr_052_48f5:
    ld a, [$db89]
    and $04
    or $02
    ld b, a
    ld a, [$db89]
    cp b
    jr z, jr_052_4914

    inc a
    ld [$db89], a
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [$db89]
    ld [hl], a

jr_052_4914:
    call Call_052_548d
    ret


    ld a, [$db8a]
    cp $59
    jr z, jr_052_4924

    call Call_052_641a
    jr jr_052_4927

jr_052_4924:
    call Call_052_6491

jr_052_4927:
    call Call_052_54e7
    ret


    call Call_052_6506
    call Call_052_54e7
    ret


    call Call_052_6514
    call Call_052_5539
    call Call_052_54e7
    ret


    call Call_052_6522
    call Call_052_5539
    call Call_052_54e7
    ret


    call Call_052_6530
    call Call_052_54e7
    ret


    call Call_052_653e
    call Call_052_54e7
    ret


    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    bit 6, [hl]
    jr nz, jr_052_4977

    push hl
    call Call_052_65b5
    pop hl
    jr c, jr_052_496e

    ld a, $c3
    call Call_052_5469
    ret


jr_052_496e:
    set 6, [hl]
    ld hl, $cfcf
    call Call_052_54bd
    ret


jr_052_4977:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [$db8a]
    cp $6d
    jr z, jr_052_4997

    ld a, $ce
    ld [$db4c], a
    ld a, [hl]
    and $03
    jr nz, jr_052_49ce

    jr jr_052_49a0

jr_052_4997:
    ld a, $d0
    ld [$db4c], a
    bit 1, [hl]
    jr nz, jr_052_49ce

jr_052_49a0:
    call Call_052_65c9
    jr c, jr_052_49ab

    ld a, $c3
    call Call_052_5469
    ret


jr_052_49ab:
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [$db8a]
    cp $6d
    jr z, jr_052_49c1

    set 0, [hl]
    res 1, [hl]
    jr jr_052_49c5

jr_052_49c1:
    set 1, [hl]
    res 0, [hl]

jr_052_49c5:
    ld a, [$db4c]
    ld h, a
    ld l, a
    call Call_052_54bd
    ret


jr_052_49ce:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    bit 5, [hl]
    jr nz, jr_052_49fc

    call Call_052_65d5
    jr c, jr_052_49ea

    ld a, $b8
    call Call_052_5469
    ret


jr_052_49ea:
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    set 5, [hl]
    ld hl, $d1d1
    call Call_052_54bd
    ret


jr_052_49fc:
    call Call_052_548d
    ret


    call Call_052_5422
    bit 5, [hl]
    jr nz, jr_052_4a18

    call Call_052_65e3
    jr nc, jr_052_4a1c

    call Call_052_5422
    set 5, [hl]
    ld hl, $a7a7
    call Call_052_5493
    ret


jr_052_4a18:
    call Call_052_548d
    ret


jr_052_4a1c:
    ld a, $b8
    call Call_052_5469
    ret


    ld a, [$db89]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr nz, jr_052_4a53

    call Call_052_5cda
    jr nc, jr_052_4a4d

    ld a, [$db89]
    ld hl, $db07
    call Call_000_2f6c
    set 1, [hl]
    set 0, [hl]
    ld a, [$db8a]
    add $30
    ld h, a
    ld l, a
    call Call_052_5493
    ret


jr_052_4a4d:
    ld a, $b8
    call Call_052_5469
    ret


jr_052_4a53:
    call Call_052_548d
    ret


    call Call_052_5422
    bit 7, [hl]
    jr nz, jr_052_4a6f

    call Call_052_5c51
    jr nc, jr_052_4a75

    call Call_052_5422
    set 7, [hl]
    ld hl, $a4a4
    call Call_052_5493
    ret


jr_052_4a6f:
    ld a, $bb
    call Call_052_5475
    ret


jr_052_4a75:
    ld a, $b8
    call Call_052_5469
    ret


    ld a, [$db89]
    ld hl, $dbc3
    call Call_052_6ab8
    ld a, [hl+]
    or [hl]
    jr z, jr_052_4a9d

    call Call_052_5d25
    jr nc, jr_052_4a97

    call Call_052_5d7a
    ld hl, $a5a5
    call Call_052_5493
    ret


jr_052_4a97:
    ld a, $b8
    call Call_052_545d
    ret


jr_052_4a9d:
    ld a, $bb
    call Call_052_545d
    ret


    call Call_052_5559
    ld a, [$db88]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    jr nz, jr_052_4ac1

    ld a, [$c899]
    and $04
    add $04
    ld b, a
    ld a, [hl]
    and $f3
    or b
    ld [hl], a

jr_052_4ac1:
    call Call_052_548d
    ret


    call Call_052_5422
    bit 1, [hl]
    jr nz, jr_052_4ae3

    call Call_052_65e3
    jr nc, jr_052_4add

    call Call_052_5422
    set 1, [hl]
    ld hl, $a6a6
    call Call_052_5493
    ret


jr_052_4add:
    ld a, $c8
    call Call_052_545d
    ret


jr_052_4ae3:
    call Call_052_548d
    ret


    call Call_052_5422
    bit 3, [hl]
    jr nz, jr_052_4b30

    ld a, [$db8a]
    cp $7a
    jr z, jr_052_4afa

    call Call_052_65e3
    jr jr_052_4afd

jr_052_4afa:
    call Call_052_5dcc

jr_052_4afd:
    jr nc, jr_052_4b2a

    call Call_052_5422
    set 3, [hl]
    ld a, [$db8a]
    cp $79
    jr z, jr_052_4b1f

    ld a, [$db89]
    ld hl, $dbf3
    call Call_052_6ab8
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    ld a, [$db89]
    call Call_052_5377

jr_052_4b1f:
    ld a, [$db8a]
    add $2f
    ld h, a
    ld l, a
    call Call_052_54bd
    ret


jr_052_4b2a:
    ld a, $ca
    call Call_052_5469
    ret


jr_052_4b30:
    call Call_052_548d
    ret


    call Call_052_5422
    bit 2, [hl]
    jr nz, jr_052_4b4c

    call Call_052_65ff
    jr nc, jr_052_4b50

    call Call_052_5422
    set 2, [hl]
    ld hl, $abab
    call Call_052_54bd
    ret


jr_052_4b4c:
    call Call_052_548d
    ret


jr_052_4b50:
    ld a, [$db89]
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 4, [hl]
    ld a, $c9
    jr z, jr_052_4b64

    ld a, $c1

jr_052_4b64:
    call Call_052_545d
    ret


    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_4b88

    call Call_052_5422
    bit 4, [hl]
    jr nz, jr_052_4b88

    call Call_052_65e3
    jr nc, jr_052_4b8c

    call Call_052_5422
    set 4, [hl]
    ld hl, $aaaa
    call Call_052_54bd
    ret


jr_052_4b88:
    call Call_052_548d
    ret


jr_052_4b8c:
    ld a, $ca
    call Call_052_5469
    ret


    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    set 3, [hl]
    call Call_052_548d
    ret


    ld a, $03
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ret


    ld hl, $530a
    rst $10
    ld hl, $aeae
    call Call_052_5493
    ret


    call Call_052_5c51
    jr nc, jr_052_4bca

    call Call_052_6612
    jr nc, jr_052_4bca

    xor a
    ld [$d9ee], a
    ld a, $03
    ld [$d9ed], a
    ret


jr_052_4bca:
    ld a, $b8
    call Call_052_545d
    ret


    call Call_052_5559
    ld a, [$db88]
    rrca
    rrca
    and $01
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 2, [hl]
    jr nz, jr_052_4c25

    ld a, $c0
    ld b, a
    ld a, [$c899]
    cp b
    jr nc, jr_052_4c2b

    set 2, [hl]
    ld a, [$db8a]
    call Call_052_6648
    ld a, [$db4c]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $00
    ld a, [$db4c]
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db8a]
    add $54
    ld [hl], a
    ld a, [$db4c]
    ld [$db89], a
    ld hl, $afaf
    call Call_052_5493
    ret


jr_052_4c25:
    ld a, $bb
    call Call_052_5475
    ret


jr_052_4c2b:
    ld a, $cb
    call Call_052_545d
    ret


    ld a, $03
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ret


jr_052_4c3b:
    ld a, [$db89]
    ld hl, $db04
    call Call_000_2f6c
    set 6, [hl]
    ld a, [$db8a]
    cp $8a
    jr z, jr_052_4c6e

    ld a, [$db89]
    and $03
    cp $02
    jr z, jr_052_4c5c

    ld hl, $db89
    inc [hl]
    jr jr_052_4c3b

jr_052_4c5c:
    ld a, [$db89]
    rra
    rra
    and $01
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    set 5, [hl]

jr_052_4c6e:
    call Call_052_548d
    ret


    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    set 5, [hl]
    call Call_052_548d
    ret


    ld a, [$db88]
    ld hl, $db09
    call Call_000_2f6c
    ld a, [$db8a]
    cp $90
    jr z, jr_052_4c9b

    sub $8c
    ld b, a
    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    jr jr_052_4ca1

jr_052_4c9b:
    ld a, [hl]
    and $f0
    or $04
    ld [hl], a

jr_052_4ca1:
    call Call_052_548d
    ret


    ld a, [$db88]
    cp $04
    jr c, jr_052_4cb1

    ld hl, $db01
    jr jr_052_4cb4

jr_052_4cb1:
    ld hl, $db00

jr_052_4cb4:
    bit 6, [hl]
    jr nz, jr_052_4cd8

    set 6, [hl]
    ld a, $4a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db88]
    and $03
    rla
    rla
    ld b, a
    ld a, [hl]
    or b
    ld [hl], a
    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    set 1, [hl]

jr_052_4cd8:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 6, [hl]
    jr nz, jr_052_4d06

    call Call_052_6692
    jr nc, jr_052_4d00

    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    set 6, [hl]
    ld hl, $b0b0
    call Call_052_54d2
    ret


jr_052_4d00:
    ld a, $b8
    call Call_052_545d
    ret


jr_052_4d06:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 7, [hl]
    jr nz, jr_052_4d2e

    call Call_052_669e
    jr nc, jr_052_4d32

    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    set 7, [hl]
    ld hl, $b2b2
    call Call_052_54d2
    ret


jr_052_4d2e:
    call Call_052_548d
    ret


jr_052_4d32:
    ld a, $c9
    call Call_052_5469
    ret


    ld a, [$db88]
    ld hl, $dbb3
    call Call_052_6ab8
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, c
    ld [$db5a], a
    ld a, b
    ld [$db5b], a
    ld a, [$db88]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, l
    ld [$db5c], a
    ld a, h
    ld [$db5d], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr z, jr_052_4d8c

    ld bc, $01f4
    add hl, bc
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    call Call_000_2f45
    jr c, jr_052_4d78

    ld h, b
    ld l, c

jr_052_4d78:
    ld a, [$db5c]
    ld c, a
    ld a, [$db5d]
    ld b, a
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld hl, $8484
    call Call_052_5493
    ret


jr_052_4d8c:
    ld a, $bb
    call Call_052_545d
    ret


    ld a, [$db88]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $10
    jr nz, jr_052_4daa

    ld a, [hl]
    and $cf
    or $20
    ld [hl], a
    call Call_052_548d
    ret


jr_052_4daa:
    ld a, [hl]
    and $cf
    ld [hl], a
    call Call_052_5559
    ld a, [$c899]
    cp $80
    jr c, jr_052_4de3

    ld a, [$db88]
    and $04
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $03

jr_052_4dc8:
    ld a, [hl+]
    cp $01
    jr z, jr_052_4dd2

    dec b
    jr nz, jr_052_4dc8

    jr jr_052_4de3

jr_052_4dd2:
    ld a, $04
    ld [$d9ed], a
    ld [$dd72], a
    xor a
    ld [$d9ee], a
    xor a
    ld [$d9ef], a
    ret


jr_052_4de3:
    ld a, $cb
    call Call_052_545d
    ret


    call Call_052_5559
    ld a, [$c899]
    cp $7f
    jr c, jr_052_4df9

    ld a, $bb
    call Call_052_545d
    ret


jr_052_4df9:
    ld a, $04
    ld [$d9ed], a
    ld [$dd72], a
    xor a
    ld [$d9ee], a
    xor a
    ld [$d9ef], a
    ret


    call Call_052_548d
    ret


    ld hl, $9191
    call Call_052_54bd
    ret


    call Call_052_6304
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_6349
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_633b
    ld hl, $b682
    call Call_052_54ea
    ret


    call Call_052_66ac
    call Call_052_54e7
    ret


Call_052_4e3a:
    ld a, [$db88]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $ff
    ld a, [$db88]
    cp $04
    jr c, jr_052_4e64

    and $03
    ld hl, $dc33
    ld b, a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_052_7242

jr_052_4e64:
    ld a, $01
    ld [$d9ed], a
    call Call_052_548d
    ret


    call Call_052_519a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6b43
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $ca82
    call Call_052_54ea
    ret


    call Call_052_5559
    ld a, [$c899]
    cp $40
    jr c, jr_052_4e9e

    call Call_052_519a
    ld hl, $b682
    call Call_052_54ea
    ret


jr_052_4e9e:
    ld a, $b6
    call Call_052_545d
    ret


    call Call_052_5559
    ld a, [$c899]
    cp $c0
    jr c, jr_052_4eb8

    call Call_052_519a
    ld hl, $b682
    call Call_052_54ea
    ret


jr_052_4eb8:
    ld a, $b6
    call Call_052_545d
    ret


    ld a, [$db88]
    ld [$db89], a
    ld hl, $dced
    call Call_052_6ab8
    ld a, [$db88]
    ld [hl], a
    call Call_052_519a
    ld hl, $b682
    call Call_052_54ea
    ret


    ld a, [$db88]
    ld hl, $db05
    call Call_000_2f6c
    set 2, [hl]
    call Call_052_548d
    ret


    ld a, [$db88]
    ld hl, $db02
    call Call_000_2f6c
    set 6, [hl]
    ld hl, $cf00
    call Call_052_54a1
    ret


    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$db88]
    push af
    ld a, [$db89]
    ld [$db88], a
    call Call_052_4e3a
    pop af
    ld [$db88], a
    ld a, $01
    ld [$d9ed], a
    ld hl, $e9e9
    ld a, [$db8a]
    cp $a4
    jr z, jr_052_4f28

    ld hl, $2929

jr_052_4f28:
    call Call_052_54bd
    ret


    ld a, $2f
    ld [$db8a], a
    call Call_052_44c4
    ret


    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_052_4f3d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_4f4c

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    set 3, [hl]

jr_052_4f4c:
    inc c
    dec b
    jr nz, jr_052_4f3d

    call Call_052_548d
    ret


    ld a, [$db89]
    ld c, a
    call Call_000_2fa5
    jr c, jr_052_4f7b

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 7, [hl]
    jr nz, jr_052_4f75

    ld a, [hl]
    and $73
    or $8c
    ld [hl], a
    ld hl, $cccc
    call Call_052_54d2
    ret


jr_052_4f75:
    ld a, $bd
    call Call_052_545d
    ret


jr_052_4f7b:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld c, a
    call Call_000_2fa5
    jr c, jr_052_4f9d

    ld a, c
    ld hl, $dbc3
    call Call_052_6ab8
    ld a, [hl+]
    or [hl]
    jr z, jr_052_4f9d

    xor a
    ld [hl-], a
    ld [hl], a
    ld hl, $7272
    call Call_052_54bd
    ret


jr_052_4f9d:
    call Call_052_548d
    ret


    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [hl]
    ld [$db89], a
    call Call_000_2fa5
    jr c, jr_052_4fc8

    call Call_052_66ba
    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    set 0, [hl]
    ld hl, $b682
    call Call_052_54ea
    ret


jr_052_4fc8:
    call Call_052_548d
    ret


    call Call_052_5422
    bit 0, [hl]
    jr nz, jr_052_4fdc

    set 0, [hl]
    ld hl, $b5b5
    call Call_052_54d2
    ret


jr_052_4fdc:
    call Call_052_548d
    ret


    ld a, [$db89]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_052_4ff8

    ld hl, $9e9e
    call Call_052_5493
    ret


jr_052_4ff8:
    call Call_052_548d
    ret


    ld a, [$db89]
    call Call_000_2fe1
    push hl
    ld a, [$db89]
    ld hl, $dbc3
    call Call_052_6ab8
    pop bc
    ld a, [hl+]
    cp [hl]
    jr z, jr_052_501b

    ld a, b
    ld [hl-], a
    ld [hl], c
    ld hl, $7676
    call Call_052_54bd
    ret


jr_052_501b:
    call Call_052_548d
    ret


    ld a, [$dd69]
    ld c, a
    dec a
    cp $08
    jr nc, jr_052_5066

    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_506a

    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    cp $01
    jr nz, jr_052_5044

    ld a, d
    or a
    jr z, jr_052_5054

jr_052_5044:
    dec de
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a
    ld hl, $8585
    call Call_052_54f8
    ret


jr_052_5054:
    ld hl, $0001
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $8282
    call Call_052_54f8
    ret


jr_052_5066:
    call Call_052_548d
    ret


jr_052_506a:
    ld a, c
    and $03
    ld b, a
    ld a, c
    cp $04
    jr c, jr_052_507b

    ld a, [$db88]
    and $04
    or b
    jr jr_052_5083

jr_052_507b:
    ld a, [$db88]
    and $04
    xor $04
    or b

jr_052_5083:
    ld b, a
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld [hl], b
    ld a, b
    ld [$db89], a
    xor a
    ld [$d9ee], a
    ret


    ld a, $00
    ld [$db56], a
    ld a, $00
    ld [$db57], a

Call_052_50a1:
    call Call_052_50e2
    ld a, [$db55]
    ld b, a
    ld a, [$db54]
    or a
    jr z, jr_052_50b5

    ld a, [$db88]
    srl a
    srl a

jr_052_50b5:
    add b
    ld l, a
    ld h, $00
    ld a, h
    ld [$c822], a
    ld a, l
    ld [$c823], a
    ld hl, $5f04
    rst $10
    ret


    ld a, $82
    ld [$db55], a
    ld [$db54], a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, l
    or h
    jr nz, jr_052_50de

    call Call_052_5143
    ret


jr_052_50de:
    call Call_052_50a1
    ret


Call_052_50e2:
    call Call_052_6c23
    call Call_052_50e9
    ret


Call_052_50e9:
    ld hl, $c190
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_0a7c
    ret


Jump_052_50f8:
    ld a, $05
    ld [$db51], a
    ld a, $02
    ld [$dd6b], a
    ret


    ld hl, $c180
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    ld a, $00
    ld [$c822], a
    ld a, $b8
    ld [$c823], a
    ld a, $00
    ld [$dd6b], a
    ld a, $04
    ld [$d9ef], a
    ld a, $6f
    call Call_000_1b2c
    ret


    ld hl, $c180
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    ld hl, $0078
    call Call_052_515d
    ret


    ld hl, $00bb
    call Call_052_515d
    ret


Call_052_5143:
    ld hl, $c180
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    call Call_052_7fcb
    srl a
    srl a
    xor $01
    add $b6
    ld l, a
    ld h, $00

Call_052_515d:
    ld a, h
    ld [$c822], a
    ld a, l
    ld [$c823], a
    ld a, $00
    ld [$dd6b], a
    ld hl, $d9ef
    inc [hl]
    ld a, $6f
    call Call_000_1b2c
    ret


    ld hl, $c180
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    ld a, [$db55]
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld a, $02
    ld [$dd6b], a
    ld hl, $d9ef
    inc [hl]
    ld a, $6f
    call Call_000_1b2c
    ret


Call_052_519a:
    call Call_052_60d7
    ret


Call_052_519e:
    ld a, $00
    ld [$db56], a
    ld a, $00
    ld [$db57], a
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    ret


    call Call_052_5559
    scf
    ccf
    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    ret z

    ld a, [$c899]
    cp $a0
    ret


    ld a, [$db89]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    ret z

    ld a, [$c899]
    cp $80
    ret


Call_052_51dd:
    push hl
    push bc
    ld b, a
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $00
    ld a, b
    ld hl, $db02
    call Call_000_2f6c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    call Call_052_5213
    pop bc
    pop hl
    ret


    ld a, [$db4c]
    call Call_052_51dd
    ret


Call_052_5213:
    call Call_052_5257
    ld a, [$c863]
    bit 1, a
    ld a, b
    jr z, jr_052_5224

    cp $03
    jr nc, jr_052_5256

    jr jr_052_522e

jr_052_5224:
    cp $04
    jr c, jr_052_5256

    cp $07
    jr z, jr_052_5256

    sub $04

jr_052_522e:
    push bc
    ld bc, $0240
    call Call_000_1de6
    ld bc, $9000
    add hl, bc
    pop bc
    push hl
    ld l, c
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call Call_000_1577
    ld hl, $5110
    rst $10
    ld hl, $1708
    rst $10

jr_052_5256:
    ret


Call_052_5257:
    ld a, [$c81d]
    or a
    ret z

    ld a, $02
    ldh [rSVBK], a
    ld a, b
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ld a, $00
    ldh [rSVBK], a
    ret


Call_052_5270:
    push hl
    ld [$dd72], a
    ld hl, $5704
    rst $10
    ld a, [$dd72]
    ld c, a
    ld a, [$dd73]
    ld b, a
    ld hl, $03e7
    call Call_000_2f45
    jr nc, jr_052_528b

    ld bc, $03e7

jr_052_528b:
    pop hl
    ret


Call_052_528d:
    push hl
    ld [$dd72], a
    ld hl, $5705
    rst $10
    ld a, [$dd72]
    ld c, a
    ld a, [$dd73]
    ld b, a
    pop hl
    ret


Call_052_529f:
    push hl
    ld [$dd72], a
    ld hl, $5706
    rst $10
    ld a, [$dd72]
    ld c, a
    ld a, [$dd73]
    ld b, a
    pop hl
    ret


Call_052_52b1:
    push hl
    ld [$dd72], a
    ld hl, $5707
    rst $10
    ld a, [$dd72]
    ld c, a
    ld a, [$dd73]
    ld b, a
    pop hl
    ret


    ld a, [$dd72]

Call_052_52c6:
    push hl
    ld [$dd72], a
    ld hl, $5708
    rst $10
    ld a, [$dd72]
    ld c, a
    ld a, [$dd73]
    ld b, a
    pop hl
    ret


Call_052_52d8:
    ld b, a
    cp $03
    jr c, jr_052_530d

    and $03
    cp $03
    jr z, jr_052_5315

    ld a, [$c86c]
    or a
    ld a, b
    jr nz, jr_052_530d

    and $03
    ld hl, $da03
    call Call_052_6ab1

jr_052_52f2:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da18]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld hl, $da42
    jr jr_052_5324

jr_052_530d:
    ld hl, $cb29
    call Call_000_2229
    jr jr_052_5324

jr_052_5315:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_052_52f2

jr_052_5324:
    ret


Call_052_5325:
    ld b, a
    cp $03
    jr c, jr_052_5352

    and $03
    cp $03
    jr z, jr_052_535c

    ld a, [$c86c]
    or a
    ld a, b
    jr nz, jr_052_5352

    sub $04
    ld hl, $da03
    call Call_052_6ab1

jr_052_533f:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld hl, $da2d
    ld b, $04
    jr jr_052_536b

jr_052_5352:
    ld hl, $caea
    call Call_000_2229
    ld b, $08
    jr jr_052_536b

jr_052_535c:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_052_533f

jr_052_536b:
    ret


Call_052_536c:
    push hl
    ld hl, $db08
    call Call_000_2f6c
    set 6, [hl]
    pop hl
    ret


Call_052_5377:
    push hl
    ld hl, $db08
    call Call_000_2f6c
    set 7, [hl]
    pop hl
    ret


Call_052_5382:
    push hl
    ld hl, $db08
    call Call_000_2f6c
    ld a, [hl]
    or $c0
    ld [hl], a
    pop hl
    ret


    ld a, [$db8a]
    cp $3a
    jr c, jr_052_53dc

    cp $7e
    jr z, jr_052_53dc

    cp $40
    jr c, jr_052_53bc

    jr z, jr_052_53c0

    cp $50
    jr c, jr_052_53c4

    cp $55
    jr c, jr_052_53c8

    cp $58
    jr c, jr_052_53cc

    cp $67
    jr c, jr_052_53d0

    cp $d6
    jr c, jr_052_53d4

    cp $dd
    jr c, jr_052_53d8

    ld a, $1b
    jr jr_052_53de

jr_052_53bc:
    sub $3a
    jr jr_052_53de

jr_052_53c0:
    ld a, $05
    jr jr_052_53de

jr_052_53c4:
    sub $3e
    jr jr_052_53de

jr_052_53c8:
    ld a, $11
    jr jr_052_53de

jr_052_53cc:
    sub $42
    jr jr_052_53de

jr_052_53d0:
    ld a, $14
    jr jr_052_53de

jr_052_53d4:
    sub $51
    jr jr_052_53de

jr_052_53d8:
    sub $bd
    jr jr_052_53de

jr_052_53dc:
    ld a, $00

jr_052_53de:
    ld c, a
    ld b, $00
    ld hl, $53e9
    add hl, bc
    add hl, bc
    jp RST_08


    rst $10
    ld h, b
    rst $10
    ld h, b
    inc d
    ld h, d
    rst $10
    ld h, b
    ld [hl-], a
    ld h, d
    rst $10
    ld h, b
    sbc b
    ld h, d
    xor c
    ld h, d
    cp d
    ld h, d
    bit 4, d
    db $dc, $62, $11
    ld h, e
    rra
    ld h, e
    dec l
    ld h, e
    ld d, a
    ld h, e
    ld h, l
    ld h, e
    ld [hl], e
    ld h, e
    rst $10
    ld h, b
    rst $10
    ld h, b
    rst $10
    ld h, b
    ld a, [de]
    ld h, h
    rst $10
    ld h, b
    rst $10
    ld h, b
    rst $10
    ld h, b
    inc b
    ld h, e
    ld c, c
    ld h, e
    dec sp
    ld h, e
    rst $10
    ld h, b
    ret


Call_052_5422:
    ld a, [$db89]
    ld hl, $db05
    call Call_000_2f6c
    ret


    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    ret z

    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $02
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    and $02
    ret nz

    ld hl, $5808
    rst $10
    ld a, $01
    or a
    ret


Call_052_545d:
    ld [$dd70], a
    ld [$dd71], a
    ld a, $80
    ld [$dd6f], a
    ret


Call_052_5469:
    ld [$dd70], a
    ld [$dd71], a
    ld a, $88
    ld [$dd6f], a
    ret


Call_052_5475:
    ld [$dd70], a
    ld [$dd71], a
    ld a, $84
    ld [$dd6f], a
    ret


Call_052_5481:
    ld [$dd70], a
    ld [$dd71], a
    ld a, $93
    ld [$dd6f], a
    ret


Call_052_548d:
    ld a, $40
    ld [$dd6f], a
    ret


Call_052_5493:
    ld a, $90
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    ret


Call_052_54a1:
    ld a, $d0
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    ret


Call_052_54af:
    ld a, $98
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    ret


Call_052_54bd:
    ld a, $90
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    xor a
    ld [$db56], a
    ld [$db57], a
    ret


Call_052_54d2:
    ld a, $98
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    xor a
    ld [$db56], a
    ld [$db57], a
    ret


Call_052_54e7:
    ld hl, $b882

Call_052_54ea:
    ld a, $a8
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    ret


Call_052_54f8:
    ld a, $a0
    ld [$dd6f], a
    ld a, l
    ld [$dd70], a
    ld a, h
    ld [$dd71], a
    ret


Call_052_5506:
    ld a, [$db88]
    cp $04
    jr nc, jr_052_5512

    ld bc, $0300
    jr jr_052_551b

jr_052_5512:
    ld a, [$c86c]
    or a
    jr z, jr_052_5532

    ld bc, $0304

jr_052_551b:
    ld d, $00

jr_052_551d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_5524

    inc d

jr_052_5524:
    inc c
    dec b
    jr nz, jr_052_551d

    ld a, d
    cp $01
    jr z, jr_052_5532

    ld hl, $9393
    jr jr_052_5535

jr_052_5532:
    ld hl, $9494

jr_052_5535:
    call Call_052_5493
    ret


Call_052_5539:
    ld a, [$db89]
    ld hl, $db04
    call Call_000_2f6c
    bit 2, [hl]
    ret z

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6b43
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Call_052_5559:
    ld a, [$c86c]
    or a
    jr nz, jr_052_5563

    call GenerateRNG
    ret


jr_052_5563:
    push hl
    ld a, [$c1ed]
    ld l, a
    ld a, [$c1ee]
    ld h, a
    ld a, l
    ld [$c899], a
    ld a, h
    ld [$c89a], a
    call GenerateRNG
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, l
    ld [$c1ed], a
    ld a, h
    ld [$c1ee], a
    pop hl
    ret


Call_052_5589:
    ld a, $00
    ld [$db4d], a
    ld a, [$db77]
    ld [$db89], a
    ld a, [$db78]
    ld [$db4c], a
    sub $b0
    ld hl, $55c1
    call Call_052_6ab1
    ld a, [$db78]
    cp $bb
    ld a, [$db89]
    jr z, jr_052_55b1

    call Call_000_2fa5
    jr c, jr_052_55b5

jr_052_55b1:
    call Call_052_55c0
    ret


jr_052_55b5:
    ld a, $00
    ld [$c822], a
    ld a, $bf
    ld [$c823], a
    ret


Call_052_55c0:
    jp hl


    ld [hl], d
    ld d, [hl]
    ld [hl], d
    ld d, [hl]
    ld [hl], d
    ld d, [hl]
    ld [hl], d
    ld d, [hl]
    ld a, d
    ld d, a
    ld a, d
    ld d, a
    ld c, l
    ld e, b
    ld [hl], d
    ld e, b
    sub a
    ld e, b
    cp h
    ld e, b
    sbc $58
    inc bc
    ld e, c
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld b, b
    ld e, c
    ld b, b
    ld e, c
    ld b, b
    ld e, c
    cp b
    ld e, c
    ld b, b
    ld e, c
    inc bc
    ld e, d
    dec de
    ld e, d
    inc sp
    ld e, d
    ld l, d
    ld e, d
    add d
    ld e, d
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    sbc d
    ld e, d

Call_052_560b:
Jump_052_560b:
    ld a, [$db78]
    cp $b3
    jr z, jr_052_5616

    xor a
    ld [$db8a], a

Jump_052_5616:
jr_052_5616:
    ld a, $bb
    ld [$db55], a

Call_052_561b:
    ld a, $00
    ld [$c822], a
    ld a, [$db55]
    ld [$c823], a
    ld a, $00
    ld [$dd6b], a
    ret


Call_052_562c:
    ld a, $01
    ld [$db8a], a
    ld a, [$db89]
    ld hl, $5004
    rst $10
    call Call_052_6c23
    ld de, $ca42
    ld hl, $c1a0
    call Call_000_0c80
    ld a, [$db78]
    cp $c2
    jr c, jr_052_565a

    cp $c7
    jr nc, jr_052_565a

    ld hl, $5809
    rst $10
    ld a, $01
    ld [$c822], a
    jr jr_052_5665

jr_052_565a:
    ld a, [$db55]
    ld [$c823], a
    ld a, $00
    ld [$c822], a

jr_052_5665:
    ld a, [$db78]
    ld [$db8a], a
    ld a, $01
    ld [$dd6b], a
    ret


    ret


    ld a, [$db78]
    cp $b3
    jr nz, jr_052_56ce

    ld hl, $dd69
    inc [hl]
    ld a, [$dd69]
    cp $01
    jr nz, jr_052_56a3

    ld a, [$db89]
    and $04
    ld c, a
    ld b, $03

jr_052_568c:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_5698

    ld a, c
    call Call_052_69ef
    jr nz, jr_052_56a3

jr_052_5698:
    inc c
    dec b
    jr nz, jr_052_568c

    xor a
    ld [$db8a], a
    jp Jump_052_5616


jr_052_56a3:
    ld a, [$db89]
    call Call_052_69ef
    jp z, Jump_052_560b

    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db89]
    call Call_000_2fda
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    jp Jump_052_5733


jr_052_56ce:
    ld a, [$db89]
    call Call_052_69ef
    jp z, Jump_052_560b

    ld a, [$db89]
    cp $04
    jr c, jr_052_56e5

    ld a, $0f
    ld [$db4e], a
    jr jr_052_56ea

jr_052_56e5:
    ld a, $0b
    ld [$db4e], a

jr_052_56ea:
    ld hl, $5401
    rst $10
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    call Call_052_679c
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    push hl
    ld a, [$db89]
    call Call_000_2fe8
    pop bc
    add hl, bc
    push hl
    ld a, [$db89]
    call Call_000_2fda
    pop bc
    call Call_000_2f45
    jr nc, jr_052_5733

    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, [$db5a]
    ld l, a
    ld a, [$db5b]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a

Jump_052_5733:
jr_052_5733:
    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db5a]
    ld l, a
    ld a, [$db5b]
    ld h, a
    ld a, [$db89]
    bit 2, a
    jr z, jr_052_5766

    ld b, h
    ld c, l
    call Call_052_6b32
    call Call_052_5bd1

jr_052_5766:
    ld a, $84
    ld [$db55], a
    call Call_052_562c
    call Call_052_5bc4
    ld hl, $5f06
    rst $10
    xor a
    ld [$dd6b], a
    ret


    ld a, [$db78]
    cp $b5
    jr nz, jr_052_57ac

    ld a, [$db89]
    call Call_052_6a01
    jp z, Jump_052_560b

    ld a, [$db89]
    ld hl, $dbc3
    call Call_052_6ab8
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db89]
    call Call_000_2fe1
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    jp Jump_052_5811


jr_052_57ac:
    ld a, [$db89]
    call Call_052_6a01
    jp z, Jump_052_560b

    ld a, [$db89]
    cp $04
    jr c, jr_052_57c3

    ld a, $10
    ld [$db4e], a
    jr jr_052_57c8

jr_052_57c3:
    ld a, $0b
    ld [$db4e], a

jr_052_57c8:
    ld hl, $5401
    rst $10
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    call Call_052_679c
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    push hl
    ld a, [$db89]
    call Call_000_2fef
    pop bc
    add hl, bc
    push hl
    ld a, [$db89]
    call Call_000_2fe1
    pop bc
    call Call_000_2f45
    jr nc, jr_052_5811

    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, [$db5a]
    ld l, a
    ld a, [$db5b]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a

Jump_052_5811:
jr_052_5811:
    ld a, [$db89]
    ld hl, $dbc3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db5a]
    ld l, a
    ld a, [$db5b]
    ld h, a
    ld a, [$db89]
    bit 2, a
    jr z, jr_052_5841

    ld b, h
    ld c, l
    call Call_052_5bd1

jr_052_5841:
    ld a, $76
    ld [$db55], a
    call Call_052_562c
    call Call_052_5bc4
    ret


    ld a, $9c
    ld [$db55], a
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr nz, jr_052_5864

    call Call_052_5bb9
    ret


jr_052_5864:
    ld a, [hl]
    and $fc
    ld [hl], a
    call Call_052_5baa
    call Call_052_562c
    call Call_052_5bc4
    ret


    ld a, $9d
    ld [$db55], a
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $40
    jr nz, jr_052_5889

    call Call_052_5bb9
    ret


jr_052_5889:
    call Call_052_6b0b
    ld a, [hl]
    and $bf
    ld [hl], a
    call Call_052_562c
    call Call_052_5bc4
    ret


    ld a, $dc
    ld [$db55], a
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $10
    jr nz, jr_052_58ae

    call Call_052_5bb9
    ret


jr_052_58ae:
    call Call_052_6b0b
    ld a, [hl]
    and $ef
    ld [hl], a
    call Call_052_562c
    call Call_052_5bc4
    ret


    ld a, $9f
    ld [$db55], a
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $20
    jr nz, jr_052_58d3

    call Call_052_5bb9
    ret


jr_052_58d3:
    ld a, [hl]
    and $df
    ld [hl], a
    call Call_052_562c
    call Call_052_5bc4
    ret


    ld a, $db
    ld [$db55], a
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $8c
    jr nz, jr_052_58f5

    call Call_052_5bb9
    ret


jr_052_58f5:
    call Call_052_6b0b
    ld a, [hl]
    and $73
    ld [hl], a
    call Call_052_562c
    call Call_052_5bc4
    ret


    ld a, [$db77]
    call Call_000_2fa5
    jr nc, jr_052_593c

    jr z, jr_052_593c

    ld a, [$db77]
    ld [$db4c], a
    ld hl, $510a
    rst $10
    ld a, [$db77]
    ld b, a
    call Call_052_51dd
    ld a, b
    ld hl, $dba3
    call Call_052_6ab8
    ld d, h
    ld e, l
    ld a, b
    ld hl, $dbb3
    call Call_052_6ab8
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, $9e
    ld [$db55], a
    call Call_052_562c
    ret


jr_052_593c:
    call Call_052_5bb9
    ret


    ld a, $01
    ld [$db8a], a
    ld a, [$db77]
    cp $04
    jr c, jr_052_5984

    sub $04
    ld hl, $db83
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $0f
    ld [$db4e], a
    ld hl, $5401
    rst $10
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    pop hl
    add hl, bc
    ld bc, $0640
    call Call_000_2f45
    ld b, h
    ld c, l
    jr c, jr_052_597e

    ld bc, $0640

jr_052_597e:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    jr jr_052_59b0

jr_052_5984:
    ld hl, $dc23
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $0b
    ld [$db4e], a
    ld hl, $5401
    rst $10
    pop hl
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    jr nc, jr_052_59ac

    ld bc, $0000

jr_052_59ac:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b

jr_052_59b0:
    call Call_052_562c
    xor a
    ld [$da33], a
    ret


    ld a, $01
    ld [$db8a], a
    ld a, [$db77]
    cp $04
    jr c, jr_052_59e0

    sub $04
    ld hl, $db83
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0005
    add hl, bc
    ld bc, $0400
    call Call_000_2f45
    ld b, h
    ld c, l
    jr c, jr_052_59f7

    ld bc, $0400
    jr jr_052_59f7

jr_052_59e0:
    ld hl, $dc23
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    sub $05
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld b, h
    ld c, l
    jr nc, jr_052_59f7

    ld bc, $0000

jr_052_59f7:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    call Call_052_562c
    xor a
    ld [$da33], a
    ret


    ld a, [$db89]
    call Call_000_2fa5
    ret c

    call Call_052_5ab2
    call Call_052_67c0
    swap a
    and $03
    call Call_052_6756
    call Call_052_5ad4
    ret


    ld a, [$db89]
    call Call_000_2fa5
    ret c

    call Call_052_5ab2
    call Call_052_67c0
    rlca
    rlca
    and $03
    call Call_052_6756
    call Call_052_5ad4
    ret


    ld a, [$db89]
    call Call_000_2fa5
    ret c

    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    ret nz

    call Call_052_5cbc
    jr nc, jr_052_5a62

    ld a, $01
    ld [$db8a], a
    ld a, [$db77]
    ld hl, $db03
    call Call_000_2f6c
    set 0, [hl]
    ld a, $88
    ld [$db55], a
    jr jr_052_5a66

jr_052_5a62:
    call Call_052_5b9e
    ret


jr_052_5a66:
    call Call_052_562c
    ret


    ld a, [$db89]
    call Call_000_2fa5
    ret c

    call Call_052_5ab2
    call Call_052_67bb
    rrca
    rrca
    and $03
    call Call_052_6756
    call Call_052_5ad4
    ret


    ld a, [$db89]
    call Call_000_2fa5
    ret c

    call Call_052_5ab2
    call Call_052_67cf
    rrca
    rrca
    and $03
    call Call_052_6756
    call Call_052_5ad4
    ret


    ld a, [$db89]
    call Call_000_2fa5
    ret c

    call Call_052_5ab2
    call Call_052_67bb
    swap a
    and $03
    call Call_052_6756
    call Call_052_5ad4
    ret


Call_052_5ab2:
    ld a, $0b
    ld [$db4e], a
    ld hl, $5401
    rst $10
    ld a, $82
    ld [$db55], a
    ld a, $00
    ld [$db54], a
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    call Call_052_679c
    ld hl, $0000
    ret


Call_052_5ad4:
    ld a, [$db56]
    ld e, a
    ld a, [$db57]
    ld d, a
    ld a, e
    or d
    jr z, jr_052_5af2

    call Call_052_5af6
    jr c, jr_052_5af2

    call Call_052_5b26
    ld hl, $5f04
    rst $10
    ld hl, $5502
    rst $10
    jr jr_052_5af5

jr_052_5af2:
    call Call_052_5b98

jr_052_5af5:
    ret


Call_052_5af6:
    ld a, [$db89]
    ld hl, $db09
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr z, jr_052_5b24

    ld h, d
    ld l, e
    bit 1, a
    jr nz, jr_052_5b0f

    call Call_052_6b43
    jr jr_052_5b14

jr_052_5b0f:
    ld a, $0a
    call Call_000_1e0d

jr_052_5b14:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld d, h
    ld e, l
    ld a, h
    or l
    jr nz, jr_052_5b24

    scf
    ret


jr_052_5b24:
    xor a
    ret


Call_052_5b26:
    ld a, $01
    ld [$db8a], a
    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, l
    ld [$db61], a
    ld a, h
    ld [$db62], a
    ld a, [hl+]
    ld h, [hl]
    sub e
    ld c, a
    ld a, h
    sbc d
    ld b, a
    ld a, e
    ld [$db5a], a
    ld a, d
    ld [$db5b], a
    jr nc, jr_052_5b71

    ld a, [$db61]
    ld l, a
    ld a, [$db62]
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    ld [$db5a], a
    ld a, d
    ld [$db5b], a
    ld bc, $0000
    ld a, [$db89]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    set 0, [hl]

jr_052_5b71:
    push bc
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    call Call_052_6b32
    call Call_052_5be3
    pop bc
    ld a, [$db61]
    ld l, a
    ld a, [$db62]
    ld h, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $82
    ld [$db55], a
    call Call_052_50e9
    call Call_052_562c
    ret


Call_052_5b98:
    ld bc, $0002
    call Call_052_5be3

Call_052_5b9e:
    ld a, $b8
    ld [$db55], a
    call Call_052_6c23
    call Call_052_561b
    ret


Call_052_5baa:
    ld a, [$db89]
    bit 2, a
    jr z, jr_052_5bb8

    ld bc, $0064
    call Call_052_5bd1
    ret


jr_052_5bb8:
    ret


Call_052_5bb9:
    ld a, [$db89]
    bit 2, a
    jr z, jr_052_5bc0

jr_052_5bc0:
    call Call_052_560b
    ret


Call_052_5bc4:
    ld a, [$db89]
    cp $04
    jr nc, jr_052_5bd0

    ld a, $70
    call Call_000_1b2c

jr_052_5bd0:
    ret


Call_052_5bd1:
    ld a, [$db83]
    ld l, a
    ld a, [$db84]
    ld h, a
    add hl, bc
    ld a, l
    ld [$db83], a
    ld a, h
    ld [$db84], a
    ret


Call_052_5be3:
    ld a, [$db83]
    ld l, a
    ld a, [$db84]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_052_5bf6

    ld hl, $0000

jr_052_5bf6:
    ld a, l
    ld [$db83], a
    ld a, h
    ld [$db84], a
    ret


Call_052_5bff:
    call Call_052_66d6
    call Call_052_67bb
    swap a
    and $03
    call Call_052_6756
    ret


Call_052_5c0d:
    call Call_052_66d6
    call Call_052_67bb
    rrca
    rrca
    and $03
    call Call_052_6756
    ret


Call_052_5c1b:
    call Call_052_66d6
    call Call_052_67bb
    and $03
    call Call_052_6756
    ret


Call_052_5c27:
    call Call_052_66d6

Call_052_5c2a:
    call Call_052_67c0
    rlca
    rlca
    and $03
    call Call_052_6756
    ret


Call_052_5c35:
    call Call_052_66d6
    call Call_052_67c0
    swap a
    and $03
    call Call_052_6756
    ret


Call_052_5c43:
    call Call_052_66d6
    call Call_052_67c0
    rrca
    rrca
    and $03
    call Call_052_6756
    ret


Call_052_5c51:
    call Call_052_6b21
    jp z, Jump_052_6b1e

    ld hl, $0000
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_6706
    call Call_052_67c5
    swap a
    and $03
    ld [$db4e], a
    ld a, [$db8a]
    cp $72
    jr c, jr_052_5c81

    cp $82
    jr z, jr_052_5c88

    ld a, [$db4e]
    call Call_052_6710
    ret


jr_052_5c81:
    ld a, [$db4e]
    call Call_052_6749
    ret


jr_052_5c88:
    ld a, [$db4e]
    call Call_052_6733
    ret


Call_052_5c8f:
    ld hl, $0000
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_66d6
    call Call_052_67c5
    rlca
    rlca
    and $03
    ld [$db4e], a
    call Call_052_6adc
    jr z, jr_052_5cae

    scf
    ret


jr_052_5cae:
    ld a, [$db8a]
    cp $15
    ld a, [$db4e]
    jp z, Jump_052_6710

    jp Jump_052_6749


Call_052_5cbc:
    ld hl, $0000
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_6706
    call Call_052_67c5
    and $03
    call Call_052_6adc
    jr z, jr_052_5cd6

    scf
    ret


jr_052_5cd6:
    call Call_052_6710
    ret


Call_052_5cda:
    ld hl, $0000
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_6706
    call Call_052_67c0
    and $03
    call Call_052_6adc
    jr z, jr_052_5cf4

    scf
    ret


jr_052_5cf4:
    ld b, a
    ld a, [$db8a]
    cp $72
    ld a, b
    jr z, jr_052_5d01

    call Call_052_6710
    ret


jr_052_5d01:
    call Call_052_6749
    ret


Call_052_5d05:
    ld hl, $0000
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_6706
    call Call_052_67ca
    rlca
    rlca
    and $03
    call Call_052_6adc
    jr z, jr_052_5d21

    scf
    ret


jr_052_5d21:
    call Call_052_6749
    ret


Call_052_5d25:
    ld hl, $0000
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    call Call_052_6706
    call Call_052_67c5
    rrca
    rrca
    and $03
    ld [$db4e], a
    call Call_052_6adc
    jr z, jr_052_5d44

    scf
    ret


jr_052_5d44:
    call Call_052_6710
    ret


Call_052_5d48:
    call Call_052_5d7a
    ld a, [$db88]
    ld hl, $dbc3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db88]
    call Call_052_6a01
    jr nc, jr_052_5d79

    ld a, [$db88]
    ld bc, $dbd4
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    ld [hl-], a
    dec bc
    ld a, [bc]
    ld [hl], a

jr_052_5d79:
    ret


Call_052_5d7a:
    ld a, [$db89]
    ld hl, $dbc3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_052_5db9

    ld a, [$db88]
    ld de, $db9b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    srl a
    srl a
    add $05
    ld c, a
    ld b, $00
    call Call_000_2f45
    jr nc, jr_052_5da7

    ld b, h
    ld c, l

jr_052_5da7:
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    jr jr_052_5dc4

jr_052_5db9:
    ld bc, $0000
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a

jr_052_5dc4:
    pop hl
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    ret


Call_052_5dcc:
    ld hl, $0000
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    call Call_052_6706
    call Call_052_67ca
    swap a
    and $03
    ld [$db4e], a
    call Call_052_6adc
    jr z, jr_052_5deb

    scf
    ret


jr_052_5deb:
    ld b, a
    ld a, [$db8a]
    cp $7a
    ld a, b
    jr z, jr_052_5df8

    call Call_052_6710
    ret


jr_052_5df8:
    call Call_052_6749
    ret


Call_052_5dfc:
    ld a, [$db89]
    call Call_000_2fd3
    ld b, h
    ld c, l
    ld hl, $0001
    call Call_000_2f45
    jr c, jr_052_5e0e

    xor a
    ret


jr_052_5e0e:
    ld a, [$db89]
    call Call_052_52b1
    call Call_052_6b32
    ld a, [$db89]
    ld hl, $dbf3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    or h
    pop hl
    jr z, jr_052_5e3c

    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    jr nc, jr_052_5e3a

    xor a
    ld [hl-], a
    ld [hl], a

jr_052_5e3a:
    scf
    ret


jr_052_5e3c:
    xor a
    ret


Call_052_5e3e:
    ld a, [$db89]
    call Call_052_6a13
    jr nc, jr_052_5e92

    jr z, jr_052_5e92

    ld a, [$db89]
    call Call_052_52b1
    call Call_052_6b32
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ld a, [$db89]
    ld hl, $dbf3
    call Call_052_6ab8
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$db89]
    push hl
    call Call_052_6a13
    pop hl
    jr c, jr_052_5e90

    ld a, [hl-]
    ld e, [hl]
    ld d, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld a, [$db56]
    sub e
    ld e, a
    ld a, [$db57]
    sbc d
    ld d, a
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a

jr_052_5e90:
    scf
    ret


jr_052_5e92:
    xor a
    ret


Call_052_5e94:
    ld hl, $0000
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    call Call_052_6706
    call Call_052_67ca
    rrca
    rrca
    and $03
    call Call_052_6adc
    jr z, jr_052_5eb0

    scf
    ret


jr_052_5eb0:
    call Call_052_6710
    ret


Call_052_5eb4:
    ld a, [$db89]
    call Call_052_52c6
    call Call_052_6b32
    ld a, [$db89]
    ld hl, $dc03
    call Call_052_6ab8
    push hl
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr nz, jr_052_5ed3

    ld d, $01

jr_052_5ed3:
    push bc
    ld bc, $0002
    call Call_000_2f45
    pop bc
    pop hl
    jr c, jr_052_5f06

    ld a, c
    sub d
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ld a, [hl]
    ld e, a
    sub c
    ld [hl+], a
    ld a, [hl]
    ld d, a
    sbc b
    ld [hl], a
    jr nc, jr_052_5f04

    xor a
    ld [hl-], a
    ld [hl], $01
    dec de
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a

jr_052_5f04:
    scf
    ret


jr_052_5f06:
    xor a
    ret


Call_052_5f08:
    ld a, [$db89]
    call Call_052_6a49
    jr nc, jr_052_5f5c

    ld a, [$db89]
    call Call_052_52c6
    call Call_052_6b32
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ld a, [$db89]
    ld hl, $dc03
    call Call_052_6ab8
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$db89]
    push hl
    call Call_052_6a49
    pop hl
    jr c, jr_052_5f5a

    dec hl
    ld a, [hl+]
    sub c
    ld e, a
    ld a, [hl]
    sbc b
    ld d, a
    ld a, b
    ld [hl-], a
    ld [hl], c
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, c
    sub e
    ld e, a
    ld a, b
    sbc d
    ld d, a
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a

jr_052_5f5a:
    scf
    ret


jr_052_5f5c:
    xor a
    ret


Call_052_5f5e:
    ld a, [$db88]
    ld hl, $c1cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $80
    ld [hl], a
    ld a, [$db89]
    call Call_052_5270
    ld a, [$db88]
    ld hl, $dba3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    pop hl
    jr c, jr_052_5f8a

    ld a, c
    ld [hl+], a
    ld [hl], b

jr_052_5f8a:
    ld a, [$db88]
    ld hl, $dbb3
    call Call_052_6ab8
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db89]
    call Call_052_528d
    ld a, [$db88]
    ld hl, $dbc3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    pop hl
    jr c, jr_052_5fb2

    ld a, c
    ld [hl+], a
    ld [hl], b

jr_052_5fb2:
    ld a, [$db88]
    ld hl, $dbd3
    call Call_052_6ab8
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db88]
    ld hl, $dbe3
    call Call_052_6ab8
    ld a, [$db89]
    call Call_052_529f
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db88]
    ld hl, $dbf3
    call Call_052_6ab8
    ld a, [$db89]
    call Call_052_52b1
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db88]
    ld hl, $dc03
    call Call_052_6ab8
    ld a, [$db89]
    call Call_052_52c6
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db89]
    call Call_052_52d8
    ld a, [$db88]
    ld de, $dd28
    ld b, a
    add a
    add b
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_052_6a75
    ld a, [$db89]
    call Call_052_5325
    ld a, [$db88]
    ld de, $dc64
    swap a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld c, $00

jr_052_6024:
    ld a, [hl]
    ld [$db4c], a
    cp $db
    call z, Call_052_6077
    cp $ff
    jr z, jr_052_605d

    ld a, $00
    ld [$db4d], a
    ld a, $01
    ld [$db4e], a
    push af
    push bc
    push de
    push hl
    ld hl, $5400
    rst $10
    pop hl
    pop de
    pop bc
    pop af
    ld a, [$db4c]
    swap a
    and $0f
    ld a, a
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc c
    dec b
    jr nz, jr_052_6024

    ld a, c
    cp $08
    jr z, jr_052_606b

jr_052_605d:
    ld a, $00
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    inc de
    inc c
    ld a, c
    cp $08
    jr nz, jr_052_605d

jr_052_606b:
    call Call_052_6acf
    ld c, [hl]
    ld a, [$db88]
    ld b, a
    call Call_052_5213
    ret


Call_052_6077:
    ld a, $ff
    ld [$db4c], a
    ret


Call_052_607d:
    ld a, [$db8a]
    cp $2d
    jr z, jr_052_609d

    cp $2f
    jr z, jr_052_609d

    cp $32
    jr z, jr_052_609d

    cp $96
    jr z, jr_052_609d

    call Call_052_66d6
    ld a, [$db56]
    ld e, a
    ld a, [$db57]
    ld d, a
    jr jr_052_60b1

jr_052_609d:
    ld a, [$db89]
    ld hl, $dbb3
    call Call_052_6ab8
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a

jr_052_60b1:
    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    add e
    ld c, a
    ld a, h
    adc d
    ld b, a
    ld a, [$db89]
    call Call_000_2fda
    call Call_000_2f45
    jr nc, jr_052_60d1

    ld b, h
    ld c, l

jr_052_60d1:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    scf
    ret


Call_052_60d7:
    call Call_052_5559
    ld a, [$db89]
    ld hl, $dbf3
    call Call_052_6ab8
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_052_6b32
    ld a, [$db88]
    call Call_000_2fcc
    call Call_000_2f45
    jr z, jr_052_6112

    jr c, jr_052_6112

    ld a, l
    sub c
    ld e, a
    ld a, h
    sbc b
    ld d, a
    srl d
    rr e
    push hl
    push bc
    ld b, d
    ld c, e
    call Call_052_6b37
    call Call_000_2f45
    pop bc
    pop hl
    jr z, jr_052_611d

    jr nc, jr_052_611d

    jr jr_052_6138

jr_052_6112:
    ld a, [$c899]
    and $01
    ld e, a
    ld d, $00
    jp Jump_052_6183


jr_052_611d:
    call Call_052_6b37
    ld a, h
    or l
    jr z, jr_052_6112

    ld b, h
    ld c, l
    push hl
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    call Call_000_2f4b
    pop hl
    ld d, b
    ld e, c
    jp Jump_052_6183


jr_052_6138:
    push de
    ld h, d
    ld l, e
    call Call_052_6b3b
    pop de
    ld a, h
    or l
    jr z, jr_052_6173

    push hl
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    pop bc
    ld a, c
    inc a
    push de
    call Call_000_1e0d
    pop de
    ld c, a
    ld b, $00
    call Call_052_6b32
    ld a, [$c89a]
    and $0f
    or a
    jr z, jr_052_6173

    bit 3, a
    jr nz, jr_052_616e

    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr jr_052_6173

jr_052_616e:
    ld h, b
    ld l, c
    add hl, de
    ld d, h
    ld e, l

jr_052_6173:
    ld a, [$c899]
    and $03
    or a
    jr z, jr_052_6183

    bit 0, a
    jr z, jr_052_6182

    inc de
    jr jr_052_6183

jr_052_6182:
    dec de

Jump_052_6183:
jr_052_6183:
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a
    call Call_052_61ec
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, h
    or l
    ret nz

    ld b, a
    ld a, [$c89a]
    and $01
    ld c, a
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ret


jr_052_61a9:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db88]
    and $03
    cp $03
    ret z

    or a
    ret z

    jr jr_052_6205

jr_052_61bd:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db89]
    and $03
    cp $03
    ret z

    or a
    ret z

    jr jr_052_6205

    ld a, [$c86c]
    or a
    jr nz, jr_052_61a9

    ld a, [$db88]
    cp $03
    ret nc

    or a
    ret z

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db88]
    jr jr_052_6205

Call_052_61ec:
    ld a, [$c86c]
    or a
    jr nz, jr_052_61bd

    ld a, [$db89]
    cp $03
    ret nc

    or a
    ret z

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db89]

jr_052_6205:
    cp $02
    ret nz

    call Call_052_69b7
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Call_052_6214:
    ld a, [$db89]
    call Call_000_2fe8
    call Call_052_69b7
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_6706
    call Call_052_67ca
    and $03
    call Call_052_6756
    ret


Call_052_6232:
    call Call_052_6706
    call Call_052_67ca
    and $03
    call Call_052_6733
    jr nc, jr_052_628b

    ld a, [$db88]
    call Call_000_2fe8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or a
    jr nz, jr_052_6259

    ld a, l
    cp $01
    jr z, jr_052_6281

jr_052_6259:
    ld a, [$c86c]
    or a
    jr nz, jr_052_6265

    ld a, [$db73]
    or a
    jr nz, jr_052_626e

jr_052_6265:
    ld a, [$db89]
    call Call_000_2fe8
    dec hl
    jr jr_052_627a

jr_052_626e:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    dec hl
    call Call_052_6b43

jr_052_627a:
    ld a, h
    or l
    jr nz, jr_052_6281

    ld hl, $0001

jr_052_6281:
    scf
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


jr_052_628b:
    ld hl, $0000
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    xor a
    ret


Call_052_6298:
    call Call_052_60d7
    call Call_052_6706
    call Call_052_67bb
    swap a
    and $03
    call Call_052_6782
    ret


Call_052_62a9:
    call Call_052_60d7
    call Call_052_6706
    call Call_052_67c0
    swap a
    and $03
    call Call_052_6782
    ret


Call_052_62ba:
    call Call_052_60d7
    call Call_052_6706
    call Call_052_67c0
    rlca
    rlca
    and $03
    call Call_052_6782
    ret


Call_052_62cb:
    call Call_052_60d7
    call Call_052_6706
    call Call_052_67c0
    rrca
    rrca
    and $03
    call Call_052_6782
    ret


Call_052_62dc:
    call Call_052_60d7
    ld a, [$db89]
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    jr z, jr_052_6303

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6979
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_052_6303:
    ret


Call_052_6304:
    call Call_052_60d7
    call Call_052_6ac0
    or a
    jr nz, jr_052_6310

    call Call_052_6965

jr_052_6310:
    ret


Call_052_6311:
    call Call_052_60d7
    call Call_052_6ac0
    cp $01
    jr nz, jr_052_631e

    call Call_052_6965

jr_052_631e:
    ret


Call_052_631f:
    call Call_052_60d7
    call Call_052_6ac0
    cp $02
    jr nz, jr_052_632c

    call Call_052_6965

jr_052_632c:
    ret


Call_052_632d:
    call Call_052_60d7
    call Call_052_6ac0
    cp $03
    jr nz, jr_052_633a

    call Call_052_6965

jr_052_633a:
    ret


Call_052_633b:
    call Call_052_60d7
    call Call_052_6ac0
    cp $04
    jr nz, jr_052_6348

    call Call_052_6965

jr_052_6348:
    ret


Call_052_6349:
    call Call_052_60d7
    call Call_052_6ac0
    cp $05
    jr nz, jr_052_6356

    call Call_052_6965

jr_052_6356:
    ret


Call_052_6357:
    call Call_052_60d7
    call Call_052_6ac0
    cp $06
    jr nz, jr_052_6364

    call Call_052_6965

jr_052_6364:
    ret


Call_052_6365:
    call Call_052_60d7
    call Call_052_6ac0
    cp $07
    jr nz, jr_052_6372

    call Call_052_6965

jr_052_6372:
    ret


Call_052_6373:
    call Call_052_60d7
    call Call_052_6ac0
    cp $08
    jr nz, jr_052_6380

    call Call_052_6965

jr_052_6380:
    ret


Call_052_6381:
    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, [$c86c]
    or a
    jr nz, jr_052_63a0

    ld a, [$db88]
    cp $04
    jr c, jr_052_63a0

    ld a, $0f
    ld [$db4e], a
    jr jr_052_63a5

jr_052_63a0:
    ld a, $0b
    ld [$db4e], a

jr_052_63a5:
    ld hl, $5401
    rst $10
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    call Call_052_679c
    call Call_052_6ac0
    cp $07
    jr nz, jr_052_63ce

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6980
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_052_63ce:
    call Call_052_6706
    call Call_052_67c0
    rlca
    rlca
    and $03
    call Call_052_676c
    ret


Call_052_63dc:
    ld a, [$db88]
    ld hl, $db9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    ld a, [$c86c]
    or a
    jr nz, jr_052_6403

    ld a, [$db88]
    cp $04
    jr c, jr_052_6403

    ld a, l
    srl a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_052_6404

jr_052_6403:
    add hl, hl

jr_052_6404:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_6706
    call Call_052_67d9
    swap a
    and $03
    call Call_052_6756
    ret


Call_052_641a:
    ld a, [$db88]
    ld hl, $db9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    ld b, h
    ld c, l
    ld a, [$c86c]
    or a
    jr nz, jr_052_643d

    ld a, [$db88]
    cp $04
    jr c, jr_052_643d

    call Call_052_6b32
    jr jr_052_6442

jr_052_643d:
    add hl, bc
    add hl, bc
    ld bc, $000a

jr_052_6442:
    add hl, bc
    ld bc, $00b4
    call Call_000_2f45
    jr c, jr_052_644e

    ld hl, $00b4

jr_052_644e:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_69e8
    ld b, h
    ld c, l
    call Call_052_5559
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    call Call_000_2f4b
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    sra b
    rr c
    jr nc, jr_052_647f

    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    jr jr_052_6482

jr_052_647f:
    add hl, bc
    ld b, h
    ld c, l

jr_052_6482:
    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    call Call_052_6706
    call Call_052_5c2a
    ret


Call_052_6491:
    ld a, [$db88]
    ld hl, $db9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    ld a, [$c86c]
    or a
    jr nz, jr_052_64b1

    cp $04
    jr c, jr_052_64b1

    ld b, h
    ld c, l
    call Call_052_6b32
    jr jr_052_64b5

jr_052_64b1:
    add hl, hl
    ld bc, $001e

jr_052_64b5:
    add hl, bc
    ld bc, $0096
    call Call_000_2f45
    jr c, jr_052_64c1

    ld hl, $0096

jr_052_64c1:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, $05
    call Call_000_1e0d
    ld b, h
    ld c, l
    call Call_052_5559
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    call Call_000_2f4b
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    sra b
    rr c
    jr c, jr_052_64ef

    add hl, bc
    jr jr_052_64f7

jr_052_64ef:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_052_64ff

jr_052_64f7:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_052_64ff:
    call Call_052_6706
    call Call_052_5c2a
    ret


Call_052_6506:
    call Call_052_66d6
    call Call_052_67d9
    swap a
    and $03
    call Call_052_676c
    ret


Call_052_6514:
    call Call_052_66d6
    call Call_052_67cf
    swap a
    and $03
    call Call_052_676c
    ret


Call_052_6522:
    call Call_052_66d6
    call Call_052_67cf
    rrca
    rrca
    and $03
    call Call_052_676c
    ret


Call_052_6530:
    call Call_052_66d6
    call Call_052_67bb
    swap a
    and $03
    call Call_052_676c
    ret


Call_052_653e:
    ld a, [$db88]
    ld e, a
    call Call_000_2fef
    add hl, hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, e
    ld hl, $db9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    add hl, bc
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_052_69e1
    call Call_052_6b3f
    ld a, l
    or h
    jr z, jr_052_65a7

    ld b, h
    ld c, l
    call Call_052_5559
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    call Call_000_2f4b
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$c899]
    and $01
    jr z, jr_052_659e

    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr jr_052_659f

jr_052_659e:
    add hl, bc

jr_052_659f:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_052_65a7:
    call Call_052_6706
    call Call_052_67cf
    rlca
    rlca
    and $03
    call Call_052_676c
    ret


Call_052_65b5:
    call Call_052_6b21
    jp z, Jump_052_6b1e

    call Call_052_6706
    call Call_052_67d4
    rlca
    rlca
    and $03
    call Call_052_6749
    ret


Call_052_65c9:
    call Call_052_6706
    call Call_052_67cf
    and $03
    call Call_052_6749
    ret


Call_052_65d5:
    call Call_052_6706
    call Call_052_67d4
    swap a
    and $03
    call Call_052_6749
    ret


Call_052_65e3:
    call Call_052_6706
    call Call_052_67d4
    rrca
    rrca
    and $03
    ld b, a
    ld a, [$db8a]
    cp $7c
    ld a, b
    jr nc, jr_052_65fb

    call Call_052_6710
    jr jr_052_65fe

jr_052_65fb:
    call Call_052_6749

jr_052_65fe:
    ret


Call_052_65ff:
    ld a, [$db89]
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 4, [hl]
    ret nz

    call Call_052_65e3
    ret


Call_052_6612:
    ld a, [$db89]
    ld hl, $dbf3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    ld a, b
    or c
    jr nz, jr_052_6646

    ld a, $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    ld a, b
    or c
    jr nz, jr_052_6646

    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    jr z, jr_052_6646

    xor a
    ret


jr_052_6646:
    scf
    ret


Call_052_6648:
    ld a, [$db8a]
    cp $84
    jr z, jr_052_665d

    cp $85
    jr z, jr_052_6663

    cp $86
    jr z, jr_052_6669

    ld hl, $5108
    rst $10
    jr jr_052_666d

jr_052_665d:
    ld hl, $5105
    rst $10
    jr jr_052_666d

jr_052_6663:
    ld hl, $5106
    rst $10
    jr jr_052_666d

jr_052_6669:
    ld hl, $5107
    rst $10

jr_052_666d:
    ld a, [$db88]
    and $04
    or $03
    ld hl, $db02
    call Call_000_2f6c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_052_6684:
    ld hl, $5109
    rst $10
    ld c, $c9
    ld a, [$db88]
    ld b, a
    call Call_052_5213
    ret


Call_052_6692:
    call Call_052_6706
    call Call_052_67d4
    and $03
    call Call_052_6710
    ret


Call_052_669e:
    call Call_052_6706
    call Call_052_67d9
    rlca
    rlca
    and $03
    call Call_052_6710
    ret


Call_052_66ac:
    call Call_052_66d6
    call Call_052_67d9
    rrca
    rrca
    and $03
    call Call_052_6756
    ret


Call_052_66ba:
    ld a, [$db88]
    ld hl, $dbe3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    push bc
    ld a, $01
    ld [hl-], a
    ld [hl], $90
    call Call_052_519a
    pop bc
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_052_66d6:
    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, [$c86c]
    or a
    jr nz, jr_052_66f2

    ld a, [$db88]
    bit 2, a
    jr z, jr_052_66f2

    ld a, $0f
    jr jr_052_66f4

jr_052_66f2:
    ld a, $0b

jr_052_66f4:
    ld [$db4e], a
    ld hl, $5401
    rst $10
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    call Call_052_679c

Call_052_6706:
    ld a, [$db89]
    ld hl, $db05
    call Call_000_2f6c
    ret


Call_052_6710:
Jump_052_6710:
    bit 6, [hl]
    jr z, jr_052_6719

    call Call_052_680f
    jr jr_052_6725

jr_052_6719:
    bit 7, [hl]
    jr z, jr_052_6722

    call Call_052_6802
    jr jr_052_6725

jr_052_6722:
    call Call_052_67ec

jr_052_6725:
    ret


    bit 6, [hl]
    jr z, jr_052_672f

    call Call_052_67ec
    jr jr_052_6732

jr_052_672f:
    call Call_052_6802

jr_052_6732:
    ret


Call_052_6733:
    bit 6, [hl]
    jr z, jr_052_673c

    call Call_052_6825
    jr jr_052_6748

jr_052_673c:
    bit 7, [hl]
    jr z, jr_052_6745

    call Call_052_6802
    jr jr_052_6748

jr_052_6745:
    call Call_052_680f

jr_052_6748:
    ret


Call_052_6749:
Jump_052_6749:
    bit 7, [hl]
    jr z, jr_052_6752

    call Call_052_67ec
    jr jr_052_6755

jr_052_6752:
    call Call_052_6825

jr_052_6755:
    ret


Call_052_6756:
    bit 6, [hl]
    jr z, jr_052_675f

    call Call_052_684f
    jr jr_052_676b

jr_052_675f:
    bit 7, [hl]
    jr z, jr_052_6768

    call Call_052_6862
    jr jr_052_676b

jr_052_6768:
    call Call_052_683c

jr_052_676b:
    ret


Call_052_676c:
    bit 6, [hl]
    jr z, jr_052_6775

    call Call_052_6879
    jr jr_052_6781

jr_052_6775:
    bit 7, [hl]
    jr z, jr_052_677e

    call Call_052_6862
    jr jr_052_6781

jr_052_677e:
    call Call_052_684f

jr_052_6781:
    ret


Call_052_6782:
    bit 6, [hl]
    jr z, jr_052_678b

    call Call_052_683c
    jr jr_052_678e

jr_052_678b:
    call Call_052_6862

jr_052_678e:
    ret


    bit 7, [hl]
    jr z, jr_052_6798

    call Call_052_683c
    jr jr_052_679b

jr_052_6798:
    call Call_052_6862

jr_052_679b:
    ret


Call_052_679c:
    ld a, [$db4e]
    or a
    jr z, jr_052_67b2

    inc a
    ld c, a
    ld a, [$c899]

jr_052_67a7:
    cp c
    jr c, jr_052_67ae

    sub c
    jr nc, jr_052_67a7

    ld a, c

jr_052_67ae:
    ld c, a
    ld b, $00
    add hl, bc

jr_052_67b2:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Call_052_67bb:
    ld de, $dd28
    jr jr_052_67dc

Call_052_67c0:
    ld de, $dd29
    jr jr_052_67dc

Call_052_67c5:
    ld de, $dd2a
    jr jr_052_67dc

Call_052_67ca:
    ld de, $dd2b
    jr jr_052_67dc

Call_052_67cf:
    ld de, $dd2c
    jr jr_052_67dc

Call_052_67d4:
    ld de, $dd2d
    jr jr_052_67dc

Call_052_67d9:
    ld de, $dd2e

jr_052_67dc:
    ld a, [$db89]
    ld b, a
    add a
    add b
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ret


Call_052_67ec:
    and a
    jr nz, jr_052_67f1

    scf
    ret


jr_052_67f1:
    cp $01
    jr nz, jr_052_67f8

    jp Jump_052_6890


jr_052_67f8:
    cp $02
    jr nz, jr_052_67ff

    jp Jump_052_68a2


jr_052_67ff:
    scf
    ccf
    ret


Call_052_6802:
    cp $02
    jr nc, jr_052_6807

    ret


jr_052_6807:
    jr nz, jr_052_680c

    jp Jump_052_6899


jr_052_680c:
    scf
    ccf
    ret


Call_052_680f:
    and a
    jr nz, jr_052_6814

    scf
    ret


jr_052_6814:
    cp $01
    jr nz, jr_052_681b

    jp Jump_052_6899


jr_052_681b:
    cp $02
    jr nz, jr_052_6822

    jp Jump_052_68ab


jr_052_6822:
    scf
    ccf
    ret


Call_052_6825:
    and a
    jr nz, jr_052_682b

    jp Jump_052_6899


jr_052_682b:
    cp $01
    jr nz, jr_052_6832

    jp Jump_052_68a2


jr_052_6832:
    cp $02
    jr nz, jr_052_6839

    jp Jump_052_68b4


jr_052_6839:
    scf
    ccf
    ret


Call_052_683c:
    and a
    ret z

    cp $01
    jr nz, jr_052_6845

    jp Jump_052_68e5


jr_052_6845:
    cp $02
    jr nz, jr_052_684c

    jp Jump_052_690d


jr_052_684c:
    jp Jump_052_695d


Call_052_684f:
    and a
    ret z

    cp $01
    jr nz, jr_052_6858

    jp Jump_052_68f9


jr_052_6858:
    cp $02
    jr nz, jr_052_685f

    jp Jump_052_6921


jr_052_685f:
    jp Jump_052_695d


Call_052_6862:
    and a
    jr nz, jr_052_6868

    jp Jump_052_68bd


jr_052_6868:
    cp $01
    jr nz, jr_052_686f

    jp Jump_052_68d1


jr_052_686f:
    cp $02
    jr nz, jr_052_6876

    jp Jump_052_68f9


jr_052_6876:
    jp Jump_052_6935


Call_052_6879:
    and a
    jr nz, jr_052_687f

    jp Jump_052_68f9


jr_052_687f:
    cp $01
    jr nz, jr_052_6886

    jp Jump_052_690d


jr_052_6886:
    cp $02
    jr nz, jr_052_688d

    jp Jump_052_6949


jr_052_688d:
    jp Jump_052_695d


Jump_052_6890:
    call Call_052_5559
    ld a, [$c899]
    cp $d8
    ret


Jump_052_6899:
    call Call_052_5559
    ld a, [$c899]
    cp $bf
    ret


Jump_052_68a2:
    call Call_052_5559
    ld a, [$c899]
    cp $7f
    ret


Jump_052_68ab:
    call Call_052_5559
    ld a, [$c899]
    cp $66
    ret


Jump_052_68b4:
    call Call_052_5559
    ld a, [$c899]
    cp $3f
    ret


Jump_052_68bd:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6980
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_68d1:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_698b
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_68e5:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_69a8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_68f9:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_69c6
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_690d:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6b43
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_6921:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_69e1
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_6935:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_69e8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_6949:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6b3f
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Jump_052_695d:
    xor a
    ld [$db56], a
    ld [$db57], a
    ret


Call_052_6965:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6979
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


Call_052_6979:
    ld b, h
    ld c, l
    call Call_052_6b43
    add hl, bc
    ret


Call_052_6980:
    ld b, h
    ld c, l
    call Call_052_6b2e
    add hl, bc
    call Call_052_6b2e
    add hl, bc
    ret


Call_052_698b:
    ld b, h
    ld c, l
    call Call_052_6b2a
    add hl, bc
    call Call_052_6b2e
    add hl, bc
    ret


    call Call_052_6b43
    ld b, h
    ld c, l
    call Call_052_6b32
    add hl, bc
    call Call_052_6b32
    add hl, bc
    call Call_052_6b2e
    add hl, bc
    ret


Call_052_69a8:
    push de
    ld b, h
    ld c, l
    ld a, $55
    call Call_000_1de6
    ld a, $64
    call Call_000_1e1e
    pop de
    ret


Call_052_69b7:
    push de
    ld b, h
    ld c, l
    ld a, $08
    call Call_000_1de6
    ld a, $0a
    call Call_000_1e1e
    pop de
    ret


Call_052_69c6:
    push bc
    call Call_052_6b43
    ld b, h
    ld c, l
    call Call_052_6b32
    add hl, bc
    pop bc
    ret


Call_052_69d2:
    push de
    ld b, h
    ld c, l
    ld a, $06
    call Call_000_1de6
    ld a, $0a
    call Call_000_1e1e
    pop de
    ret


Call_052_69e1:
    call Call_052_69b7
    call Call_052_6b43
    ret


Call_052_69e8:
    call Call_052_69d2
    call Call_052_6b43
    ret


Call_052_69ef:
    push hl
    push bc
    ld b, a
    call Call_000_2fe8
    push hl
    ld a, b
    call Call_000_2fda
    pop bc
    call Call_000_2f45
    pop bc
    pop hl
    ret


Call_052_6a01:
    push hl
    push bc
    ld b, a
    call Call_000_2fef
    push hl
    ld a, b
    call Call_000_2fe1
    pop bc
    call Call_000_2f45
    pop bc
    pop hl
    ret


Call_052_6a13:
    ld [$db4c], a
    call Call_000_2fd3
    ld bc, $03e7
    call Call_000_2f45
    jr nc, jr_052_6a45

    push hl
    ld a, [$db4c]
    call Call_052_52b1
    ld a, [$c86c]
    or a
    jr nz, jr_052_6a35

    ld a, [$db4c]
    cp $04
    jr nc, jr_052_6a39

jr_052_6a35:
    sla c
    rl b

jr_052_6a39:
    sla c
    rl b
    pop hl
    call Call_000_2f45
    jr nc, jr_052_6a45

jr_052_6a43:
    scf
    ret


jr_052_6a45:
    jr z, jr_052_6a43

    xor a
    ret


Call_052_6a49:
    ld [$db4c], a
    ld hl, $dc03
    call Call_052_6ab1
    ld bc, $01ff
    call Call_000_2f45
    jr z, jr_052_6a73

    jr nc, jr_052_6a73

    push hl
    ld a, [$db4c]
    call Call_052_52c6
    ld a, [$db4c]
    ld [$dd74], a
    call Call_052_6af5
    pop hl
    call Call_000_2f45
    jr nc, jr_052_6a73

    ret


jr_052_6a73:
    xor a
    ret


Call_052_6a75:
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld a, e
    ld [$db4e], a
    ld a, d
    ld [$db4f], a
    ld hl, $5101
    rst $10
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$db4c]
    ld hl, $6aa3
    call Call_052_6ab8
    call RST_08
    ld [$db4c], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    jp hl


    cp e
    ld h, a
    ret nz

    ld h, a
    push bc
    ld h, a
    jp z, $cf67

    ld h, a
    call nc, $d967
    ld h, a

Call_052_6ab1:
    call Call_052_6ab8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_052_6ab8:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Call_052_6ac0:
    call Call_052_6acf
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ret


Call_052_6acf:
    ld a, [$db89]
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Call_052_6adc:
    cp $03
    ret z

    push bc
    push hl
    ld b, a
    ld a, [$db88]
    ld hl, $db42
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $04
    ld a, b
    pop hl
    pop bc
    ret


Call_052_6af5:
    ld a, [$c86c]
    or a
    jr nz, jr_052_6b02

    ld a, [$dd74]
    cp $04
    jr nc, jr_052_6b06

jr_052_6b02:
    sla c
    rl b

jr_052_6b06:
    sla c
    rl b
    ret


Call_052_6b0b:
    push hl
    push af
    ld a, [$db89]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $03
    pop af
    pop hl
    ret


Jump_052_6b1e:
    scf
    ccf
    ret


Call_052_6b21:
    ld hl, $5310
    rst $10
    ld a, [$db4c]
    or a
    ret


Call_052_6b2a:
    srl b
    rr c

Call_052_6b2e:
    srl b
    rr c

Call_052_6b32:
    srl b
    rr c
    ret


Call_052_6b37:
    srl h
    rr l

Call_052_6b3b:
    srl h
    rr l

Call_052_6b3f:
    srl h
    rr l

Call_052_6b43:
    srl h
    rr l
    ret


Call_052_6b48:
    cp $03
    jr nc, jr_052_6b66

Call_052_6b4c:
jr_052_6b4c:
    push hl
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_000_0c80
    pop hl

jr_052_6b5b:
    ld a, [hl]
    cp $f0
    ret z

    inc hl
    jr jr_052_6b5b

jr_052_6b62:
    ld a, b
    pop bc
    jr jr_052_6b4c

jr_052_6b66:
    push bc
    ld b, a
    and $03
    cp $03
    ld a, b
    pop bc
    jr z, jr_052_6b8f

    push bc
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_052_6b62

    push hl
    ld a, b
    and $03
    ld hl, $c1ca
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    cp $ff
    jr nz, jr_052_6b8c

    ld a, b

jr_052_6b8c:
    pop bc
    jr nz, jr_052_6bb7

jr_052_6b8f:
    push af
    call Call_052_6b99
    pop af
    ld hl, $5104
    rst $10
    ret


Call_052_6b99:
    ld [$db60], a
    push hl
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld l, a
    ld h, $05
    pop de
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    call Call_000_097a
    ret


jr_052_6bb7:
    call Call_052_6b4c
    ld a, $2f
    ld [hl+], a
    ld a, $46
    ld [hl+], a
    ld a, $48
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld [hl], $f0
    push hl
    ld hl, $c1ca
    ld a, [$db50]
    and $03
    cp $01
    jr z, jr_052_6be3

    cp $02
    jr z, jr_052_6bed

    ld a, [hl+]
    cp [hl]
    jr z, jr_052_6c09

    inc hl
    cp [hl]
    jr z, jr_052_6c09

    jr jr_052_6c18

jr_052_6be3:
    ld a, [hl+]
    cp [hl]
    jr z, jr_052_6c0e

    ld a, [hl+]
    cp [hl]
    jr z, jr_052_6c09

    jr jr_052_6c18

jr_052_6bed:
    ld d, $00
    inc hl
    inc hl
    ld a, [hl-]
    dec hl
    cp [hl]
    jr nz, jr_052_6bf7

    inc d

jr_052_6bf7:
    inc hl
    cp [hl]
    jr nz, jr_052_6bfc

    inc d

jr_052_6bfc:
    ld a, d
    or a
    jr z, jr_052_6c18

    cp $01
    jr z, jr_052_6c0e

    pop hl
    ld a, $03
    jr jr_052_6c11

jr_052_6c09:
    pop hl
    ld a, $01
    jr jr_052_6c11

jr_052_6c0e:
    pop hl
    ld a, $02

jr_052_6c11:
    ld [$db4d], a
    ld [hl+], a
    ld [hl], $f0
    ret


jr_052_6c18:
    pop hl
    xor a
    ld [$db4d], a
    ret


    ld hl, $c1a0
    jr jr_052_6c26

Call_052_6c23:
    ld hl, $c180

jr_052_6c26:
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    ret


    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    ld [$db50], a
    call Call_052_6b48
    ret


    ld a, [$da82]
    or a
    jr nz, jr_052_6c5c

    ld hl, $5f05
    rst $10
    ld a, [$da82]
    or a
    ret z

jr_052_6c5c:
    ld a, [$d9ed]
    rst $00
    sbc b
    ld l, h
    or d
    ld l, h
    ld d, [hl]
    ld l, l
    dec hl
    ld l, [hl]
    ld [hl], h
    ld l, [hl]
    ld d, [hl]
    ld l, a
    ld a, [$276f]
    ld [hl], d
    ld b, d
    ld [hl], d
    ld a, d
    ld [hl], d
    ld d, b
    ld [hl], e
    ld d, $74
    ld [hl], h
    ld [hl], h
    db $ed
    ld [hl], h
    pop af
    ld [hl], h
    sub b
    ld [hl], l
    sbc c
    ld [hl], l
    and e
    ld [hl], l
    sbc b
    ld l, h
    xor b
    ld [hl], l
    or h
    ld [hl], l
    or l
    ld a, [hl]
    reti


    ld a, [hl]
    sbc $7e
    reti


    ld a, [hl]
    sbc $7e
    db $e3
    ld a, [hl]
    add sp, $7e
    ld hl, $5300
    rst $10
    ld a, [$d9ed]
    cp $09
    ret nz

    xor a
    ld hl, $d9ee
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $fe
    ld [hl], a
    jp Jump_052_727a


    ld a, [$d9ee]
    cp $0b
    jr z, jr_052_6cc7

    cp $10
    jr z, jr_052_6cf2

    ld hl, $5305
    rst $10
    ld a, [$d9ee]
    cp $0b
    ret nz

jr_052_6cc7:
    ld hl, $d9ee
    inc [hl]
    xor a
    ld [$c1c9], a
    ld a, [$db8a]
    ld c, a
    ld b, $00
    ld hl, $4011
    add hl, bc
    add hl, bc
    call RST_08
    ld a, [$d9ee]
    cp $0c
    ret nz

    ld a, [$d9ed]
    cp $01
    ret nz

    ld hl, $5305
    rst $10
    ret


    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_052_6cf2:
    ld hl, $d9ed
    inc [hl]
    xor a
    ld [$d9ee], a
    ld a, [$db8a]
    cp $29
    jr z, jr_052_6d20

    cp $aa
    jr z, jr_052_6d0a

    cp $d5
    jp nz, Jump_052_6d56

jr_052_6d0a:
    ld a, $04
    ld [$d9ed], a
    call Call_052_6684
    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    set 4, [hl]
    jp Jump_052_6e74


jr_052_6d20:
    ld a, $05
    ld [$d9ed], a
    call Call_052_5f5e
    ld hl, $d9ed
    inc [hl]
    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    set 5, [hl]
    ld a, [$c86c]
    or a
    jp nz, Jump_052_6f56

    ld a, [$db88]
    cp $04
    jp c, Jump_052_6f56

    and $03
    ld hl, $c1ca
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db89]
    ld [hl], a
    ret


Jump_052_6d56:
    ld a, [$dd80]
    ld hl, $dd9a
    and [hl]
    cp $ff
    ret nz

    ld a, [$da82]
    or a
    ret z

    ld a, [$db8a]
    cp $a4
    jr z, jr_052_6d70

    cp $a2
    jr nz, jr_052_6d77

jr_052_6d70:
    ld hl, $d9ed
    inc [hl]
    jp Jump_052_6e6f


jr_052_6d77:
    xor a
    ld [$dd72], a
    ld hl, $d9ed
    inc [hl]
    ld hl, $d9ed
    inc [hl]
    ld a, [$db8a]
    cp $1a
    jp z, Jump_052_6df2

    cp $75
    jp z, Jump_052_6df2

    cp $76
    jp z, Jump_052_6df2

    cp $15
    jr c, jr_052_6db0

    cp $71
    jp z, Jump_052_6df2

    cp $37
    jr z, jr_052_6db0

    cp $38
    jr z, jr_052_6db0

    cp $3a
    jp c, Jump_052_6df2

    cp $94
    jp z, Jump_052_6df2

jr_052_6db0:
    ld a, [$db8a]
    cp $12
    jp z, Jump_052_6df2

    cp $13
    jp z, Jump_052_6df2

    ld a, [$dd6f]
    bit 5, a
    jp z, Jump_052_6df2

    ld a, [$db89]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr c, jr_052_6de8

    ld a, d
    ld [hl-], a
    ld [hl], e
    or e
    jp nz, Jump_052_6df2

jr_052_6de8:
    ld a, $1a
    ld [$d9ed], a
    xor a
    ld [$d9f1], a
    ret


Jump_052_6df2:
    ld a, [$c863]
    bit 1, a
    ld a, [$db89]
    jr z, jr_052_6e02

    cp $03
    jr nc, jr_052_6e26

    jr jr_052_6e0a

jr_052_6e02:
    cp $04
    jr c, jr_052_6e26

    cp $07
    jr z, jr_052_6e26

jr_052_6e0a:
    ld a, [$db89]
    call Call_000_2fa5
    jr nc, jr_052_6e26

    ld a, $1a
    ld [$d9ed], a
    xor a
    ld [$d9f1], a
    ret


    ld hl, $5006
    rst $10
    ld a, $01
    ld [$c87e], a
    ret


jr_052_6e26:
    ld hl, $5006
    rst $10
    ret


    ld a, [$db8a]
    cp $14
    jr z, jr_052_6e60

    cp $80
    jr z, jr_052_6e5b

    cp $82
    jr z, jr_052_6e65

    cp $83
    jr z, jr_052_6e5b

    cp $a5
    jr z, jr_052_6e5b

    cp $88
    jr z, jr_052_6e6a

    cp $89
    jr z, jr_052_6e6a

    cp $a2
    jr z, jr_052_6e6f

    cp $a4
    jr z, jr_052_6e6f

    ld hl, $d9ed
    inc [hl]
    inc [hl]
    inc [hl]
    jp Jump_052_6ffa


jr_052_6e5b:
    ld hl, $530b
    rst $10
    ret


jr_052_6e60:
    ld hl, $530d
    rst $10
    ret


jr_052_6e65:
    ld hl, $530c
    rst $10
    ret


jr_052_6e6a:
    ld hl, $5304
    rst $10
    ret


Jump_052_6e6f:
jr_052_6e6f:
    ld hl, $530f
    rst $10
    ret


Jump_052_6e74:
    ld a, [$c825]
    or a
    ret nz

    ld a, [$da82]
    or a
    ret z

    ld a, [$da33]
    or a
    jr z, jr_052_6e89

    dec a
    ld [$da33], a
    ret


Jump_052_6e89:
jr_052_6e89:
    ld a, [$db8a]
    cp $32
    jr z, jr_052_6ef1

    cp $96
    jr z, jr_052_6ef1

    cp $3b
    jr z, jr_052_6ef6

    cp $3e
    jr z, jr_052_6f02

    cp $3c
    jr z, jr_052_6f0e

    cp $67
    jr z, jr_052_6f1a

    cp $68
    jr z, jr_052_6f24

    cp $69
    jp z, Jump_052_6f2e

    cp $80
    jp z, Jump_052_6f38

    cp $95
    jp z, Jump_052_6f42

    cp $aa
    jp z, Jump_052_6f4e

    cp $d5
    jp z, Jump_052_6f4e

    call Call_052_6ecf
    jp nz, Jump_052_6f52

    ld hl, $d9ed
    inc [hl]
    jp Jump_052_6f56


    ret


Call_052_6ecf:
    ld a, [$dd6e]
    or a
    jr z, jr_052_6ed7

    xor a
    ret


jr_052_6ed7:
    ld a, [$dd6c]
    and $08
    cp $08
    ret z

    ld a, [$db89]
    ld hl, $db09
    call Call_000_2f6c
    bit 2, [hl]
    ret z

    ld a, [$dcfd]
    bit 7, a
    ret


jr_052_6ef1:
    ld hl, $530e
    rst $10
    ret


jr_052_6ef6:
    ld a, [$d9ee]
    rst $00
    ret z

    ld [hl], a
    ld [c], a
    ld [hl], a
    jr nz, jr_052_6f79

    ld a, h
    ld a, c

jr_052_6f02:
    ld a, [$d9ee]
    rst $00
    sub d
    ld a, b
    and e
    ld a, b
    jr nz, @+$7b

    ld a, h
    ld a, c

jr_052_6f0e:
    ld a, [$d9ee]
    rst $00
    and h
    ld a, c
    or l
    ld a, c
    jr nz, @+$7b

    ld a, h
    ld a, c

jr_052_6f1a:
    ld a, [$d9ee]
    rst $00
    ld sp, $8e7b
    ld a, c
    ld a, h
    ld a, c

jr_052_6f24:
    ld a, [$d9ee]
    rst $00
    ld [hl], l
    ld a, e
    adc [hl]
    ld a, c
    ld a, h
    ld a, c

Jump_052_6f2e:
    ld a, [$d9ee]
    rst $00
    or a
    ld a, e
    adc [hl]
    ld a, c
    ld a, h
    ld a, c

Jump_052_6f38:
    ld a, [$d9ee]
    rst $00
    ld c, c
    ld a, d
    ld e, a
    ld a, d
    ld a, h
    ld a, c

Jump_052_6f42:
    ld a, [$d9ee]
    rst $00
    ld l, c
    ld a, d
    add b
    ld a, d
    sub l
    ld a, d
    ld a, h
    ld a, c

Jump_052_6f4e:
    call Call_052_7ab5
    ret


Jump_052_6f52:
    call Call_052_7bec
    ret


Jump_052_6f56:
    ld hl, $5311
    rst $10
    ret


Jump_052_6f5b:
    res 6, [hl]
    ld a, [$dcff]
    bit 4, a
    jp z, Jump_052_706c

    call Call_052_7fd8
    jp c, Jump_052_706c

    ld a, $12
    ld [$d9ed], a
    ret


Jump_052_6f71:
    ld a, [$dd69]
    cp $04
    jp z, Jump_052_706c

jr_052_6f79:
    ld hl, $5805
    rst $10
    ld a, $01
    ld [$d9ed], a
    ret


Jump_052_6f83:
    ld a, [$dd69]
    cp $02
    jp z, Jump_052_706c

    ld a, $01
    ld [$d9ed], a
    ld a, [$db89]
    call Call_000_2fa5
    ret nc

    ld hl, $5805
    rst $10
    ret


Jump_052_6f9c:
    ld a, [$dd69]
    cp $13
    jp z, Jump_052_706c

    ld b, $03
    jr jr_052_6fb2

Jump_052_6fa8:
    ld a, [$dd69]
    cp $17
    jp z, Jump_052_706c

    ld b, $07

jr_052_6fb2:
    and b
    ld c, a
    ld a, [$c89a]
    and b
    cp c
    jp z, Jump_052_706c

    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    bit 0, [hl]
    jp z, Jump_052_706c

    ld hl, $5805
    rst $10
    ld a, $01
    ld [$d9ed], a
    ret


Jump_052_6fd4:
jr_052_6fd4:
    ld a, [$dd69]
    cp $04
    jp nc, Jump_052_706c

    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [hl]
    inc a
    ld [hl], a
    and $03
    cp $03
    jr z, jr_052_706c

    ld a, [hl]
    call Call_000_2fa5
    jr c, jr_052_6fd4

    ld a, $01
    ld [$d9ed], a
    ret


Jump_052_6ffa:
    ld a, [$da33]
    or a
    jr z, jr_052_7005

    dec a
    ld [$da33], a
    ret


jr_052_7005:
    ld a, [$c1c8]
    cp $ff
    jr z, jr_052_702c

    ld hl, $5004
    rst $10
    ld a, [$c1c8]
    ld [$db89], a
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db89]
    ld [hl], a
    ld a, $ff
    ld [$c1c8], a

jr_052_702c:
    ld hl, $5004
    rst $10
    call Call_052_7e85
    call Call_052_7782
    jp c, Jump_052_70e0

    call Call_052_7dd7
    ret c

    xor a
    ld [$dd6b], a
    ld a, [$db8a]
    cp $50
    jp z, Jump_052_6f83

    cp $51
    jp z, Jump_052_6f71

    cp $52
    jp z, Jump_052_6f9c

    cp $53
    jp z, Jump_052_6fa8

    cp $57
    jp z, Jump_052_6fd4

    cp $a7
    jp z, Jump_052_714c

    cp $a8
    jp z, Jump_052_714c

    cp $af
    jp z, Jump_052_714c

Jump_052_706c:
jr_052_706c:
    ld a, [$db88]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $03
    ld [hl], a
    ld a, [$dcfc]
    and $03
    cp $01
    jp nz, Jump_052_7184

Call_052_7085:
Jump_052_7085:
    call Call_052_7d77
    ld a, [$dd6d]
    or a
    call nz, Call_052_7d7c
    call Call_052_7b1a
    ld a, [$db88]
    ld [$db89], a
    cp $04
    jr nc, jr_052_70a4

    ld hl, $5004
    rst $10
    ld hl, $5006
    rst $10

jr_052_70a4:
    call Call_052_7dcd
    bit 6, [hl]
    jp nz, Jump_052_6f5b

    call Call_052_7ef1
    jp nc, Jump_052_706c

jr_052_70b2:
    ld a, [$db82]
    inc a
    ld [$db82], a
    cp $09
    jr nc, jr_052_7120

    call Call_052_7782
    jr c, jr_052_70e0

    ld a, [$db82]
    ld hl, $db79
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_052_7120

    cp $10
    jr z, jr_052_70dc

    call Call_000_2fa5
    jr c, jr_052_70b2

jr_052_70dc:
    ld hl, $d9ec
    dec [hl]

Jump_052_70e0:
jr_052_70e0:
    ld a, [$db8a]
    cp $52
    jr c, jr_052_710e

    cp $54
    jr nc, jr_052_710e

    ld a, [$c1c9]
    or a
    jr z, jr_052_7111

    ld hl, $5605
    rst $10
    ld a, $da
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ld a, $1b
    ld [$d9ed], a
    ld a, $07
    ld [$d9ec], a
    ret


Call_052_710e:
jr_052_710e:
    call Call_052_76c8

jr_052_7111:
    call Call_052_7b1a
    xor a
    ld hl, $d9ed
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


jr_052_7120:
    xor a
    ld [$db82], a
    ld hl, $d9ec
    inc [hl]
    ld hl, $db00
    ld a, [hl]
    and $50
    call nz, Call_052_7139
    inc hl
    ld a, [hl]
    and $50
    call nz, Call_052_7139
    ret


Call_052_7139:
    push hl
    ld a, [hl]
    and $af
    ld [hl], a
    ld a, $4a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $03
    ld [hl], a
    pop hl
    ret


Jump_052_714c:
jr_052_714c:
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [$dd69]
    cp $08
    jp nc, Jump_052_706c

    cp $04
    jr nz, jr_052_7169

    ld a, [hl]
    and $04
    xor $04
    ld [hl], a
    jr jr_052_7176

jr_052_7169:
    inc [hl]
    ld a, [hl]
    call Call_000_2fa5
    jr nc, jr_052_7176

    ld hl, $dd69
    inc [hl]
    jr jr_052_714c

jr_052_7176:
    ld a, $01
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    xor a
    ld [$d9ef], a
    ret


Jump_052_7184:
jr_052_7184:
    ld a, [$dd6c]
    cp $02
    jp z, Jump_052_71f8

    cp $10
    jr z, jr_052_719c

    cp $04
    jr z, jr_052_7198

    cp $01
    jr nz, jr_052_719c

jr_052_7198:
    call Call_052_7ef1
    ret


jr_052_719c:
    ld a, [$db89]
    bit 2, a
    push af
    jr z, jr_052_71a8

    ld a, $07
    jr jr_052_71aa

jr_052_71a8:
    ld a, $03

jr_052_71aa:
    ld c, a
    pop af
    cp c
    jp z, Jump_052_7085

    inc a
    push af
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    pop af
    ld [hl], a
    ld [$db89], a
    ld a, [$db8a]
    cp $95
    jr z, jr_052_71d7

    cp $96
    jr z, jr_052_71d7

    cp $ad
    jr z, jr_052_71d7

    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_7184

jr_052_71d7:
    ld hl, $dd13
    ld a, [$db88]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $02
    ld a, $01
    ld [$d9ed], a
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [$db89]
    ld [hl], a
    ret


Jump_052_71f8:
    ld a, [$db89]
    call Call_000_2f76
    jp c, Jump_052_7085

    call Call_052_6c23
    ld a, [$db8a]
    ld l, a
    ld h, $06
    ld de, $c190
    call Call_000_097a
    xor a
    ld [$c822], a
    ld a, $d7
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld a, $40
    ld [$db4c], a
    ld hl, $5309
    rst $10
    ret


    xor a
    ld [$d9ed], a
    ld hl, $d9ec
    inc [hl]
    ret


    ld hl, $5f06
    rst $10
    ld hl, $d9ee
    inc [hl]
    ret


    ld hl, $4c00
    rst $10
    ld hl, $d9ee
    inc [hl]
    ret


Call_052_7242:
    ld a, [$db89]
    ld [$db4c], a
    ld hl, $5103
    rst $10
    ld a, [$c87e]
    or a
    jr nz, jr_052_7257

    ld a, [$c825]
    or a
    ret nz

jr_052_7257:
    ld a, [$d9f0]
    cp $01
    jr nz, jr_052_7262

    ld hl, $5801
    rst $10

jr_052_7262:
    xor a
    ld [$c87e], a
    ld hl, $5005
    rst $10
    ld a, [$db8a]
    cp $3b
    jr z, jr_052_7274

    cp $3e
    ret nz

jr_052_7274:
    ld a, $04
    ld [$d9ed], a
    ret


Jump_052_727a:
    ld a, [$db78]
    cp $d5
    jr nz, jr_052_7286

    ld hl, $5408
    rst $10
    ret


jr_052_7286:
    xor a
    ld [$d9ef], a
    xor a
    ld [$d9f0], a
    ld a, $80
    ld [wMenu_selection], a
    ld a, $10
    ld [$db88], a
    ld hl, $580d
    rst $10
    ld a, $00
    ld [$db8a], a
    ld de, $ca42
    ld hl, $c180
    call Call_000_0c80
    ld a, [$db78]
    sub $af
    ld l, a
    ld h, $08
    ld de, $c190
    call Call_000_097a
    ld hl, $c1a0
    ld a, [$db77]
    ld [$db50], a
    call Call_052_6b48
    ld hl, $5807
    rst $10
    ld a, $18
    ld [$da33], a
    ld a, [$db4c]
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld a, [$db78]
    cp $c2
    jr c, jr_052_72fb

    cp $c7
    jr nc, jr_052_72fb

    ld a, $01
    ld [$c822], a
    ld a, [$db77]
    cp $04
    jr nz, jr_052_72fb

    ld a, [$dc40]
    cp $d7
    jr nz, jr_052_72fb

    ld a, $14
    ld [$d9ed], a

jr_052_72fb:
    ld hl, $4c00
    rst $10
    ld hl, $d9ed
    inc [hl]
    ld a, [$db77]
    ld [$db52], a
    ld a, $10
    ld [$db88], a
    ret


jr_052_730f:
    ld hl, $c180
    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    ld a, $ba
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ld a, $0c
    ld [$d9ed], a
    ld a, [$db78]
    cp $c2
    ret c

    ld a, $01
    ld [$db8a], a
    ret


jr_052_733a:
    ld a, [$db77]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    jr nz, jr_052_730f

    ld hl, $d9ef
    inc [hl]
    call Call_052_5589
    ret


    ld a, [$da33]
    or a
    jr z, jr_052_735b

    dec a
    ld [$da33], a
    ret


jr_052_735b:
    ld a, [$d9ef]
    or a
    jr z, jr_052_7375

    cp $01
    jr z, jr_052_73b3

    cp $02
    jr z, jr_052_73bc

    cp $03
    jr z, jr_052_733a

    cp $04
    jp z, Jump_052_73f0

    jp Jump_052_73f0


jr_052_7375:
    ld a, [$db77]
    call Call_000_2fa5
    jr nc, jr_052_739d

    ld a, [$db78]
    cp $bb
    jr z, jr_052_739d

jr_052_7384:
    ld a, $00
    ld [$c822], a
    ld a, $bb
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld a, $0c
    ld [$d9ed], a
    ld a, $00
    ld [$db8a], a
    ret


jr_052_739d:
    ld hl, $d9ef
    inc [hl]
    ld a, [$db77]
    ld [$db89], a
    ld a, [$db78]
    ld [$db8a], a
    call Call_052_75b5
    ret c

    jr jr_052_7384

jr_052_73b3:
    ld hl, $5f06
    rst $10
    ld hl, $d9ef
    inc [hl]
    ret


jr_052_73bc:
    ld hl, $d9ef
    inc [hl]
    ld hl, $d9f0
    inc [hl]
    ld a, [$dd68]
    cp $02
    ret nz

    ld a, [$db53]
    ld b, a
    ld a, [$d9f0]
    cp b
    ret z

jr_052_73d3:
    ld a, [$db89]
    inc a
    ld [$db89], a
    and $03
    cp $03
    ret z

    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_73d3

    ld hl, $d9ef
    dec [hl]
    ld hl, $d9ef
    dec [hl]
    ret


Jump_052_73f0:
    xor a
    ld [$d9f0], a
    ld a, [$dd6b]
    or a
    jr nz, jr_052_7408

    ld hl, $d9ed
    inc [hl]
    ld a, $04
    ld [$d9ef], a
    ld hl, $4c00
    rst $10
    ret


jr_052_7408:
    ld hl, $5f06
    rst $10
    xor a
    ld [$dd6b], a
    ld a, $0a
    ld [$d9ed], a
    ret


    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_7428

    ld hl, $d9ed
    inc [hl]
    xor a
    ld [$db53], a
    jr jr_052_7474

jr_052_7428:
    ld a, [$db89]
    and $03
    cp $03
    jr z, jr_052_744b

    ld a, [$db77]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_052_746a

    call Call_052_7242
    ld a, [$db77]
    ld [$dd61], a

jr_052_744b:
    ld hl, $c180
    ld a, [$db77]
    ld [$db50], a
    call Call_052_6b48
    ld a, $e4
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ld a, $05
    ld [$da33], a

jr_052_746a:
    ld a, $0c
    ld [$d9ed], a
    xor a
    ld [$db53], a
    ret


jr_052_7474:
    ld a, [$da33]
    or a
    jr z, jr_052_747f

    dec a
    ld [$da33], a
    ret


jr_052_747f:
    ld a, [$db53]
    or a
    jr nz, jr_052_74d1

    ld hl, $5006
    rst $10
    ld a, [$db78]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $02
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    bit 0, a
    jr z, jr_052_74d5

jr_052_74a4:
    ld a, [$db78]
    cp $c5
    jr nz, jr_052_74af

    call Call_052_74fb
    ret nc

jr_052_74af:
    ld a, [$db78]
    ld b, a
    ld a, $ff
    ld [$db77], a
    ld a, $ff
    ld [$db78], a
    ld a, [$db8a]
    or a
    jr nz, jr_052_74c8

    ld a, b
    cp $c9
    jr nz, jr_052_74d1

jr_052_74c8:
    ld hl, $5406
    rst $10
    ld a, [$db53]
    or a
    ret nz

jr_052_74d1:
    call Call_052_7085
    ret


jr_052_74d5:
    ld a, [$db77]
    and $03
    cp $03
    jr z, jr_052_74a4

    ld hl, $db77
    inc [hl]
    ld a, [$db77]
    call Call_000_2fa5
    jr c, jr_052_74d5

    jr jr_052_74f1

    ret


    call Call_052_7085
    ret


jr_052_74f1:
    ld a, $0a
    ld [$d9ed], a
    ld hl, $d9ef
    dec [hl]
    ret


Call_052_74fb:
    call GenerateRNG
    ld a, [$dd69]
    or a
    jr nz, jr_052_7514

    ld a, [$db77]
    bit 2, a
    jr z, jr_052_7511

    ld c, $04
    jr jr_052_7515

jr_052_750f:
    scf
    ret


jr_052_7511:
    ld c, a
    jr jr_052_7515

jr_052_7514:
    ld c, a

jr_052_7515:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_052_7525

    inc c
    ld a, c
    and $03
    cp $02
    jr z, jr_052_750f

    jr jr_052_7515

jr_052_7525:
    ld a, c
    bit 2, a
    jr z, jr_052_7532

    ld a, c
    ld [$dd69], a
    ld hl, $dd69
    inc [hl]

jr_052_7532:
    ld a, c
    ld hl, $dd2c
    add a
    add c
    add a
    add c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $03
    or a
    jr z, jr_052_7552

    cp $01
    jr z, jr_052_7556

    cp $02
    jr z, jr_052_755a

    ld a, $ff
    jr jr_052_755c

jr_052_7552:
    ld a, $40
    jr jr_052_755c

jr_052_7556:
    ld a, $80
    jr jr_052_755c

jr_052_755a:
    ld a, $c0

jr_052_755c:
    ld hl, $c899
    cp [hl]
    ld a, c
    ld [$db89], a
    jr nc, jr_052_758a

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr nz, jr_052_758a

    push bc
    set 0, [hl]
    call Call_052_6c23
    ld a, $ce
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10
    pop bc
    ld hl, $5004
    rst $10

jr_052_758a:
    ld a, [$db89]
    cp $04
    ret


    call Call_052_7085
    ld a, $00
    ld [$d9ed], a
    ret


    xor a
    ld [$d9ed], a
    ld a, $01
    ld [$d9ee], a
    ret


    ld hl, $5301
    rst $10
    ret


    ld a, [$d9ee]
    rst $00
    db $76
    ld a, h
    xor c
    ld a, h
    ld l, l
    ld a, l
    ld [hl+], a
    ld a, l
    ret


Call_052_75b5:
    cp $c2
    ret c

    cp $c7
    jr c, jr_052_75be

jr_052_75bc:
    scf
    ret


jr_052_75be:
    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    and $cc
    jr nz, jr_052_75dd

    inc hl
    inc hl
    ld a, [hl+]
    and $3f
    jr nz, jr_052_75dd

    ld a, [hl+]
    and $0c
    jr nz, jr_052_75dd

    ld a, [hl]
    and $c0
    jr z, jr_052_75bc

jr_052_75dd:
    ld hl, $db89
    inc [hl]
    ld a, [hl]
    call Call_000_2fa5
    jr nc, jr_052_75be

    ld a, [hl]
    and $03
    cp $02
    jr c, jr_052_75dd

    xor a
    ret


    ld a, [hl]
    and $0c
    jr z, jr_052_7609

    cp $04
    jr z, jr_052_7605

    cp $08
    jr z, jr_052_7601

    ld b, $60
    jr jr_052_760b

jr_052_7601:
    ld b, $a0
    jr jr_052_760b

jr_052_7605:
    ld b, $e0
    jr jr_052_760b

jr_052_7609:
    ld b, $ff

jr_052_760b:
    ld a, [$c899]
    cp b
    jr z, jr_052_762d

    jr c, jr_052_762d

    ld a, [hl]
    and $f3
    ld b, a
    ld a, [hl]
    and $0c
    dec a
    push bc
    push af
    pop bc
    bit 5, c
    pop bc
    jr nz, jr_052_7627

    and $0c
    jr jr_052_7628

jr_052_7627:
    xor a

jr_052_7628:
    or b
    ld [hl], a
    ld a, $0f
    ret


jr_052_762d:
    ld a, [hl]
    and $73
    ld [hl], a
    ld a, [$db88]
    ld [$db89], a
    ld hl, $5004
    rst $10
    ld a, $db
    ret


    ld a, [$db89]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    jr z, jr_052_765b

    ld a, [$db8a]
    cp $80
    jr z, jr_052_768e

    cp $83
    jr z, jr_052_768e

    cp $a5
    jr z, jr_052_768e

jr_052_765b:
    dec hl
    ld a, [hl]
    and $0c
    jr z, jr_052_768e

    ld a, [$db8a]
    cp $3a
    jr c, jr_052_768e

    cp $29
    jr c, jr_052_7690

    cp $44
    jr c, jr_052_768e

    cp $5a
    jr c, jr_052_7690

    cp $5b
    jr z, jr_052_7690

    cp $67
    jr c, jr_052_768e

    cp $7e
    jr c, jr_052_7690

    cp $b0
    jr c, jr_052_768e

    cp $d5
    jr c, jr_052_7690

    jr z, jr_052_768e

    cp $da
    jr c, jr_052_7690

jr_052_768e:
    scf
    ret


jr_052_7690:
    ld a, $c1

Call_052_7692:
    push af
    ld a, $06
    ld [$d9ed], a
    ld a, [$db89]
    ld hl, $c180
    ld [$db50], a
    call Call_052_6b48
    pop af
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4c00
    rst $10
    scf
    ccf
    ret


    ld a, [$db89]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    ret z

    ld a, $ba
    call Call_052_7692
    scf
    ret


Call_052_76c8:
    ld bc, $0300

jr_052_76cb:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_76dc

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 6, [hl]
    jr z, jr_052_7709

jr_052_76dc:
    inc c
    dec b
    jr nz, jr_052_76cb

    ld a, $0e
    ld [$d9ec], a
    ld a, [$c86c]
    or a
    jr z, jr_052_76f6

    ld hl, $500a
    rst $10
    ld a, $01
    ld [$db55], a
    jr jr_052_7743

jr_052_76f6:
    ld de, $ca42
    ld hl, $c180
    call Call_000_0c80
    ld hl, $00eb
    ld a, $01
    ld [$db55], a
    jr jr_052_7737

jr_052_7709:
    ld bc, $0304

jr_052_770c:
    ld a, c
    call Call_000_2fa5
    jr c, jr_052_7723

    ld a, [$c86c]
    or a
    jr z, jr_052_777b

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 6, [hl]
    jr z, jr_052_777b

jr_052_7723:
    inc c
    dec b
    jr nz, jr_052_770c

    ld a, $00
    ld [$db55], a
    ld a, $00
    ld [$db4e], a
    ld hl, $5009
    rst $10
    jr jr_052_7743

jr_052_7737:
    ld a, h
    ld [$c822], a
    ld a, l
    ld [$c823], a
    ld hl, $4c00
    rst $10

jr_052_7743:
    ld c, $69
    ld a, [$c863]
    bit 1, a
    ld a, [$db55]
    jr z, jr_052_7754

    xor $01
    ld [$db55], a

jr_052_7754:
    or a
    jr z, jr_052_775e

    ld a, $ff
    ld [$db73], a
    ld c, $4f

jr_052_775e:
    push bc
    ld a, $02
    call Call_000_1ae1
    pop bc
    ld a, c
    call Call_000_1b2c
    ld a, $00
    ld [$db4e], a
    ld a, $0a
    ld [$d9ec], a
    scf
    ld a, [$db55]
    ld [$dd6b], a
    ret


jr_052_777b:
    ld a, $ff
    ld [$dd6b], a
    xor a
    ret


Call_052_7782:
    ld bc, $0300
    call Call_052_77a8
    jr nc, jr_052_7795

    inc c
    call Call_052_77a8
    jr nc, jr_052_7795

    inc c
    call Call_052_77a8
    ret c

jr_052_7795:
    ld bc, $0304
    call Call_052_77a8
    jr nc, jr_052_77a7

    inc c
    call Call_052_77a8
    jr nc, jr_052_77a7

    inc c
    call Call_052_77a8

jr_052_77a7:
    ret


Call_052_77a8:
    ld a, [$c86c]
    or a
    jr nz, jr_052_77b7

    ld a, c
    cp $04
    jr c, jr_052_77b7

    call Call_000_2fa5
    ret


jr_052_77b7:
    ld a, c
    call Call_000_2fa5
    ret c

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 6, [hl]
    ret z

    scf
    ret


    call Call_052_7997
    ret c

    ld a, [$db88]
    call Call_000_2fa5
    jp c, Jump_052_797c

    ld hl, $5f06
    rst $10
    ld hl, $5504
    rst $10
    ld hl, $d9ee
    inc [hl]
    ret


    ld hl, $d9ee
    inc [hl]
    ld hl, $d9ee
    inc [hl]
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    srl b
    rr c
    srl b
    rr c
    ld a, c
    ld [$db5a], a
    ld a, b
    ld [$db5b], a
    ld a, b
    or c
    jr nz, jr_052_780f

    inc bc
    ld a, c
    ld [$db5a], a
    ld a, b
    ld [$db5b], a

jr_052_780f:
    ld a, [$db88]
    ld hl, $dba3
    call Call_052_6ab8
    ld d, h
    ld e, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    ld h, d
    ld l, e
    jr c, jr_052_782e

    jr z, jr_052_782e

    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    jr jr_052_7840

jr_052_782e:
    xor a
    ld [hl-], a
    ld [hl], a
    ld a, $ff
    ld [$d9ef], a
    ld a, $ff
    ld [$d9f0], a
    ld a, $02
    ld [$d9ee], a

Call_052_7840:
jr_052_7840:
    ld hl, $c190
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    call Call_000_0a7c
    ld a, $82
    ld [$db55], a
    call Call_052_7fcb
    cp $04
    jr c, jr_052_785e

    ld hl, $db55
    inc [hl]

jr_052_785e:
    call Call_052_7868
    call z, Call_052_7875
    call Call_052_78f4
    ret


Call_052_7868:
    ld a, [$db88]
    and $04
    ld b, a
    ld a, [$db89]
    and $04
    cp b
    ret


Call_052_7875:
    ld a, [$db55]
    xor $01
    ld [$db55], a
    ret


Call_052_787e:
    ld a, [$db55]
    cp $85
    ret z

    cp $e7
    jr z, jr_052_788c

    ld a, $e7
    jr jr_052_788e

jr_052_788c:
    ld a, $ea

jr_052_788e:
    ld [$db55], a
    ret


    call Call_052_7997
    ret c

    ld hl, $5f06
    rst $10
    ld hl, $5504
    rst $10
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$db88]
    ld hl, $dba3
    call Call_052_6ab8
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    ld a, b
    or c
    jr z, jr_052_78c0

    ld a, $03
    ld [$d9ee], a
    ld a, $00
    ld [hl-], a
    ld [hl], $01
    jr jr_052_78e5

jr_052_78c0:
    xor a
    ld [hl-], a
    ld [hl], a
    ld a, $ff
    ld [$d9ef], a
    ld a, $03
    ld [$d9f0], a
    ld a, $02
    ld [$d9ee], a
    ld a, $ea
    ld [$db55], a
    call Call_052_7fcb
    cp $04
    jr nc, jr_052_78ea

    ld a, $e7
    ld [$db55], a
    jr jr_052_78ea

jr_052_78e5:
    ld a, $85
    ld [$db55], a

jr_052_78ea:
    call Call_052_7868
    call z, Call_052_787e
    call Call_052_78f4
    ret


Call_052_78f4:
    ld hl, $5004
    rst $10
    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    ld [$db50], a
    call Call_052_6b48
    ld a, $00
    ld [$c822], a
    ld a, [$db55]
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld hl, $5006
    rst $10
    ret


    ld hl, $d9ee
    inc [hl]
    ld a, [$d9ef]
    cp $ff
    jr z, jr_052_792e

    ld [$d9ed], a

jr_052_792e:
    ld a, [$d9f0]
    cp $ff
    jr z, jr_052_7938

    ld [$d9ee], a

jr_052_7938:
    xor a
    ld [$d9ef], a
    ld [$d9f0], a
    call Call_052_7a18
    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    ld [$db50], a
    call Call_052_6b48
    ld a, $00
    ld [$c822], a
    call Call_052_7fcb
    cp $04
    jr nc, jr_052_7966

    ld a, $e7
    jr jr_052_7968

jr_052_7966:
    ld a, $ea

jr_052_7968:
    ld [$db55], a
    call Call_052_7868
    call z, Call_052_787e
    ld a, [$db55]
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ret


Jump_052_797c:
    call Call_052_6ecf
    jp nz, Jump_052_7bec

Jump_052_7982:
    ld hl, $d9ed
    inc [hl]
    ld a, $00
    ld [$d9ee], a
    jp Jump_052_6f56


    ld hl, $d9ee
    inc [hl]
    ld hl, $4c00
    rst $10
    ret


Call_052_7997:
    ld a, [$db88]
    call Call_000_2fa5
    ret nc

    ld hl, $d9ed
    inc [hl]
    scf
    ret


    call Call_052_7997
    ret c

    ld hl, $5f06
    rst $10
    ld hl, $5504
    rst $10
    ld hl, $d9ee
    inc [hl]
    ret


    ld hl, $d9ee
    inc [hl]
    ld hl, $d9ee
    inc [hl]
    ld a, [$db88]
    ld hl, $dba3
    call Call_052_6ab8
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_052_69b7
    inc hl
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    pop bc
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    jr c, jr_052_79e5

    or c
    jr z, jr_052_79e5

    jr jr_052_79e8

jr_052_79e5:
    ld bc, $0000

jr_052_79e8:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    or c
    jr nz, jr_052_7a02

    ld hl, $d9ee
    dec [hl]
    ld a, $04
    ld [$d9ef], a
    ld a, $ff
    ld [$d9f0], a
    ld a, $02
    ld [$d9ee], a

jr_052_7a02:
    call Call_052_7840
    ret


    ld a, [$dd69]
    cp $01
    jr nz, jr_052_7a13

    ld a, $01
    ld [$d9ed], a
    ret


jr_052_7a13:
    ld hl, $d9ee
    inc [hl]
    ret


Call_052_7a18:
    ld a, [$db88]
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    ld a, [$db89]
    push af
    ld a, [$db88]
    ld [$db89], a
    call Call_052_7242
    pop af
    ld [$db89], a
    ld a, [$db88]
    cp $04
    jr c, jr_052_7a48

    cp $07
    jr z, jr_052_7a48

    ld a, [$db88]
    ld [$dd61], a

jr_052_7a48:
    ret


    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    bit 4, [hl]
    jr nz, jr_052_7a5a

    ld hl, $d9ee
    inc [hl]

jr_052_7a5a:
    ld hl, $d9ee
    inc [hl]
    ret


    ld a, [$db88]
    ld [$db89], a
    call Call_052_5f5e
    ret


    ld hl, $d9ee
    inc [hl]
    ld a, [$db89]
    call Call_000_2fa5
    jr z, jr_052_7a7b

    jr nc, jr_052_7a7b

    call Call_052_44f8
    ret


jr_052_7a7b:
    ld hl, $d9ee
    inc [hl]
    ret


    ld hl, $d9ee
    inc [hl]
    call Call_052_6c23
    ld a, $9e
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ret


jr_052_7a95:
    ld hl, $5004
    rst $10
    ld hl, $db89
    inc [hl]
    ld a, [hl]
    ld b, a
    and $03
    cp $03
    jr z, jr_052_7ab0

    ld a, b
    call Call_000_2fa5
    jr z, jr_052_7a95

    xor a
    ld [$d9ee], a
    ret


jr_052_7ab0:
    ld hl, $d9ee
    inc [hl]
    ret


Call_052_7ab5:
    ld a, [$db88]
    ld hl, $dcec
    call Call_052_6ab8
    push hl
    ld a, [$c899]
    and $03
    ld hl, $7aff
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ld [hl+], a
    ld c, a
    push hl
    ld a, [$db88]
    and $04
    xor $04
    ld b, a
    ld a, c
    cp $3a
    jr nz, jr_052_7af6

    ld a, [$c899]
    and $03
    add b

jr_052_7ae5:
    ld b, a
    call Call_000_2fa5
    jr nc, jr_052_7af6

    ld a, b
    and $03
    jr nz, jr_052_7af3

    ld b, a
    or $03

jr_052_7af3:
    dec a
    jr jr_052_7ae5

jr_052_7af6:
    pop hl
    ld a, b
    ld [hl], a
    ld a, $00
    ld [$d9ed], a
    ret


    ld a, [hl-]
    ld e, [hl]
    ld h, d
    add b
    rst $38
    push af
    push bc
    push de
    push hl
    ld a, [$db88]
    ld hl, $db05
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_052_7b1a:
    ld a, [$db8a]
    cp $32
    jr z, jr_052_7b24

    cp $66
    ret nz

jr_052_7b24:
    ld a, [$db88]
    ld hl, $dbc3
    call Call_052_6ab8
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld hl, $d9ee
    inc [hl]
    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_7b70

    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    ld a, l
    ld [$db61], a
    ld a, h
    ld [$db62], a
    ld a, [hl]
    and $03
    jr nz, jr_052_7b70

    call Call_052_65c9
    jr nc, jr_052_7b70

    ld a, [$db61]
    ld l, a
    ld a, [$db62]
    ld h, a
    set 0, [hl]
    ld a, $ce
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $5f06
    rst $10
    ret


jr_052_7b70:
    ld hl, $d9ee
    inc [hl]
    ret


    ld hl, $d9ee
    inc [hl]
    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_7bb2

    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    bit 7, [hl]
    jr nz, jr_052_7bb2

    call Call_052_5c8f
    jr nc, jr_052_7bb2

    call Call_052_4262
    ld c, $cc
    call Call_052_7fcb
    cp $04
    jr nc, jr_052_7ba0

    inc c

jr_052_7ba0:
    ld a, c
    ld [$c823], a
    xor a
    ld [$c822], a
    ld a, $04
    ld [$d9ed], a
    ld hl, $5f06
    rst $10
    ret


jr_052_7bb2:
    ld hl, $d9ee
    inc [hl]
    ret


    ld hl, $d9ee
    inc [hl]
    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_7be7

    ld a, [$db89]
    ld hl, $db02
    call Call_000_2f6c
    bit 6, [hl]
    jr nz, jr_052_7be7

    push hl
    call Call_052_65b5
    pop hl
    jr nc, jr_052_7be7

    set 6, [hl]
    ld a, $cf
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $5f06
    rst $10
    ret


jr_052_7be7:
    ld hl, $d9ee
    inc [hl]
    ret


Call_052_7bec:
Jump_052_7bec:
    ld a, [$dd6e]
    or a
    jp nz, Jump_052_6e89

    ld a, $13
    ld [$d9ed], a
    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db89]
    ld b, a
    call Call_000_2f76
    jp c, Jump_052_7982

    ld a, [$db89]
    ld [$db50], a
    call Call_052_6b48
    call Call_052_5559
    ld b, $00
    ld a, [$db89]
    ld hl, $db42
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 3, [hl]
    jr z, jr_052_7c32

    ld hl, $c899
    res 0, [hl]
    ld b, $01

jr_052_7c32:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6b43
    ld a, h
    or l
    or a
    jr nz, jr_052_7c47

    ld a, $01
    ld [$c899], a

jr_052_7c47:
    ld a, [$c899]
    and $01
    add $d5
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    bit 0, b
    call nz, Call_052_7c92
    ld hl, $4c00
    rst $10
    ld a, [$c899]
    and $01
    ld [$d9ee], a
    ld a, [$c899]
    and $01
    ret z

    ld a, [$d9ee]
    add $01
    ld [$d9ee], a
    ret


    ld hl, $d9ee
    inc [hl]
    call Call_052_7c98
    ld a, [$db89]
    call Call_000_2fa5
    ret c

    ld hl, $5f04
    rst $10
    ld hl, $5500
    rst $10
    ld a, $80
    ld [$db54], a
    ret


Call_052_7c92:
    ld a, $6a
    ld [$c823], a
    ret


Call_052_7c98:
jr_052_7c98:
    ld a, [$db88]
    ld l, a
    ld a, [$db89]
    ld h, a
    ld a, l
    ld [$db89], a
    ld a, h
    ld [$db88], a
    ret


    ld hl, $d9ee
    inc [hl]
    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_052_7c98

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_052_6b43
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, h
    or l
    jr z, jr_052_7d1e

    call Call_052_50e2
    ld c, $82
    call Call_052_7fcb
    bit 2, a
    jr nz, jr_052_7cda

    ld c, $83

jr_052_7cda:
    ld a, c
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ld a, $01
    ld [$da82], a
    ld a, $00
    ld [$da83], a
    call Call_052_7c98
    ld hl, $dba3
    call Call_052_6ab8
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld [hl], d
    push af
    dec hl
    pop bc
    ld [hl], e
    ld a, d
    or e
    jr z, jr_052_7d16

    push bc
    pop af
    ret nc

jr_052_7d16:
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $d9ee
    inc [hl]
    ret


jr_052_7d1e:
    call Call_052_5143
    ret


    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    ld [$db50], a
    call Call_052_6b48
    ld a, $00
    ld [$c822], a
    ld b, $e3
    ld a, [$db88]
    rrca
    rrca
    and $01
    add b
    ld [$c823], a
    ld hl, $4c00
    rst $10
    ld hl, $d9ee
    dec [hl]
    ld a, [$db88]
    ld [$db4c], a
    ld hl, $5103
    rst $10
    ld a, [$db89]
    push af
    ld a, [$db88]
    ld [$db89], a
    ld hl, $5801
    rst $10
    pop af
    ld [$db89], a
    ret


    ld a, $05
    ld [$d9ed], a
    xor a
    ld [$d9ee], a
    ret


Call_052_7d77:
    ld hl, $5701
    rst $10
    ret


Call_052_7d7c:
    ld a, [$dd6d]
    cp $02
    jr nz, jr_052_7dc8

    ld a, [$db89]
    rrca
    rrca
    and $01
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 5, [hl]
    jr z, jr_052_7dc8

    ld a, [$db89]
    ld e, a
    and $04
    ld c, a
    cp $04
    jr c, jr_052_7da7

    ld a, [$db75]
    jr jr_052_7daa

jr_052_7da7:
    ld a, [$db74]

jr_052_7daa:
    ld b, a

jr_052_7dab:
    ld a, c
    cp e
    jr z, jr_052_7db1

    jr nc, jr_052_7db7

jr_052_7db1:
    inc c
    dec b
    jr nz, jr_052_7dab

    jr jr_052_7dc8

jr_052_7db7:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_052_7dc3

    inc c
    dec b
    jr nz, jr_052_7db7

    jr jr_052_7dc8

jr_052_7dc3:
    xor a
    ld [$dd6d], a
    ret


jr_052_7dc8:
    ld hl, $4c03
    rst $10
    ret


Call_052_7dcd:
    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ret


Call_052_7dd7:
    ld a, [$db8a]
    cp $7f
    jr nz, jr_052_7de0

jr_052_7dde:
    xor a
    ret


jr_052_7de0:
    ld a, [$dd6e]
    or a
    jr nz, jr_052_7dde

    ld a, [$dd6c]
    or a
    jr z, jr_052_7df9

    cp $08
    jr z, jr_052_7dde

    cp $20
    jr nz, jr_052_7dde

    call Call_052_7ef1
    jr jr_052_7dde

jr_052_7df9:
    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    cp $0c
    ret z

    ld a, [$dcfc]
    bit 4, a
    jr z, jr_052_7dde

    ld a, [$db89]
    ld hl, $db08
    call Call_000_2f6c
    bit 3, [hl]
    jr z, jr_052_7dde

    ld a, [$db89]
    call Call_000_2f76
    jr c, jr_052_7dde

    ld a, [$dcff]
    bit 2, a
    jr z, jr_052_7e44

    ld a, $d3
    call Call_052_7e74
    ld a, $08
    ld [$dd6c], a
    ld a, $08
    ld [$db4c], a
    ld hl, $5309
    rst $10
    xor a
    ld [$c1c9], a
    scf
    ret


jr_052_7e44:
    ld a, $d4
    call Call_052_7e74
    xor a
    ret


    ld a, [$db89]
    ld hl, $db03
    call Call_000_2f6c
    ld a, [$dcfd]
    bit 6, a
    jr nz, jr_052_7e64

    bit 5, a
    jr nz, jr_052_7e6e

    bit 4, a
    jr nz, jr_052_7e71

    ret


jr_052_7e64:
    bit 0, [hl]
    jr nz, jr_052_7e44

    ld a, [$db00]
    bit 3, a
    ret


jr_052_7e6e:
    bit 6, [hl]
    ret


jr_052_7e71:
    bit 7, [hl]
    ret


Call_052_7e74:
    push af
    call Call_052_6c23
    pop af
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ret


Call_052_7e85:
    ld a, [$dd6e]
    or a
    ret z

    cp $01
    jr z, jr_052_7e96

    ld a, [$dd6d]
    cp $02
    jr z, jr_052_7ea7

    ret


jr_052_7e96:
    call Call_052_7ea7
    ld hl, $db08
    call Call_000_2f6c
    res 4, [hl]
    inc hl
    ld a, [hl]
    and $0f
    ld [hl], a
    ret


Call_052_7ea7:
jr_052_7ea7:
    ld a, [$db88]
    ld hl, $dced
    call Call_052_6ab8
    ld a, [hl]
    ld [$db89], a
    ret


    ld a, $bb
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10
    ld a, $01
    ld [$db8a], a
    ld a, $ff
    ld [$db77], a
    ld a, $ff
    ld [$db78], a
    ld hl, $5406
    rst $10
    call Call_052_7085
    ret


    ld hl, $5700
    rst $10
    ret


    ld hl, $580c
    rst $10
    ret


    ld hl, $510f
    rst $10
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_052_710e
    ret


Call_052_7ef1:
    ld a, [$dd6c]
    or a
    jp z, Jump_052_7fc9

    ld hl, $c1c0
    ld a, [hl+]
    ld [$db88], a
    ld a, [hl+]
    ld [$db89], a
    ld a, [hl+]
    ld [$dd69], a
    ld a, [$db88]
    ld de, $dcec
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$db89]
    ld de, $dcec
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$db89]
    ld de, $dd13
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl]
    ld [de], a
    ld a, [$dd6c]
    cp $40
    jp z, Jump_052_7fc9

    cp $01
    jr z, jr_052_7f9e

    cp $02
    jr z, jr_052_7f55

    cp $04
    call z, Call_052_7fb2

jr_052_7f4e:
    ld a, $00
    ld [$dd6c], a
    xor a
    ret


jr_052_7f55:
    ld a, [$db89]
    rrca
    rrca
    and $01
    ld hl, $db4a
    add l
    ld l, a
    ld a, [hl]
    rrca
    rrca
    and $03
    ld l, a
    ld a, [$db89]
    and $04
    or l
    ld [$db4c], a
    call Call_000_2f76
    jr c, jr_052_7f83

    ld a, [$db4c]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    jr z, jr_052_7f4e

jr_052_7f83:
    ld a, [$db89]
    or $03
    ld [$db89], a
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or $03
    ld [hl], a
    jr jr_052_7fc9

jr_052_7f9e:
    ld a, $d9
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    ld hl, $4c00
    rst $10
    xor a
    ld [$dd6d], a
    jr jr_052_7f4e

Call_052_7fb2:
    ld a, [$dd6d]
    cp $07
    ret nz

    ld a, $de
    ld [$c823], a
    xor a
    ld [$c822], a
    ld [$dd6d], a
    ld hl, $4c00
    rst $10
    ret


Jump_052_7fc9:
jr_052_7fc9:
    scf
    ret


Call_052_7fcb:
    ld a, [$c863]
    bit 1, a
    ld a, [$db89]
    ret z

    ld a, [$db88]
    ret


Call_052_7fd8:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_052_7fe2:
    ld a, c
    call Call_000_2fa5
    ret nc

    inc c
    dec b
    jr nz, jr_052_7fe2

    scf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
