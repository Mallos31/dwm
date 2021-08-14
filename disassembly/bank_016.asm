; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld d, $15
    ld b, b
    ld e, h
    ld c, b
    ld l, [hl]
    ld b, l
    and e
    ld b, l
    ld c, d
    ld b, a
    ld c, [hl]
    ld e, e
    db $e4
    ld e, a
    or b
    ld l, l
    dec b
    ld l, a
    inc sp
    ld [hl], b
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_016_401c:
    ld a, [de]
    or a
    jr z, jr_016_402d

    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_016_401c

    ret


jr_016_402d:
    ld a, c
    ld [$cac0], a
    ld [$ca40], a
    ld hl, $cac1
    call Call_016_41b1
    ld bc, $0095
    xor a
    call Call_000_12c7
    ld hl, $caea
    call Call_016_41b1
    ld bc, $0008
    ld a, $ff
    call Call_000_12c7
    ld hl, $caf2
    call Call_016_41b1
    ld bc, $0019
    ld a, $ff
    call Call_000_12c7
    ld hl, $cac1
    call Call_016_41b1
    ld [hl], $01
    ld a, [$d66e]
    ld [$da6f], a
    ld a, [$d703]
    ld [$da70], a
    ld a, $14
    ld [$da75], a
    ld a, $15
    ld [$da76], a
    call Call_016_456e
    ld hl, $caca
    call Call_016_41b1
    ld a, [$da71]
    ld [hl], a
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da31]
    ld hl, $ca94
    call Call_000_2670
    ld hl, $cacb
    call Call_016_41b1
    ld a, [$da33]
    ld [hl], a
    ld a, [$da77]
    push af
    ld hl, $cb23
    call Call_016_41b1
    pop af
    cp $63
    jr c, jr_016_40b3

    ld a, $63

jr_016_40b3:
    ld [hl], a
    ld hl, $cb23
    call Call_016_41b1
    ld a, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$da34]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, h
    or a
    jr nz, jr_016_40d7

    ld a, l
    cp $02
    jr nc, jr_016_40d3

    ld a, $02

jr_016_40d3:
    cp $63
    jr c, jr_016_40d9

jr_016_40d7:
    ld a, $63

jr_016_40d9:
    push af
    ld hl, $cb0d
    call Call_016_41b1
    pop af
    ld [hl], a
    ld hl, $cb0c
    call Call_016_41b1
    ld [hl], $01
    ld hl, $cb13
    call Call_016_41b8
    push bc
    ld hl, $cb11
    call Call_016_41b1
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $cb17
    call Call_016_41b8
    push bc
    ld hl, $cb15
    call Call_016_41b1
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $cb19
    call Call_016_41b8
    ld hl, $cb1b
    call Call_016_41b8
    ld hl, $cb1d
    call Call_016_41b8
    ld hl, $cb1f
    call Call_016_41b8
    ld hl, $cb25
    call Call_016_41ff
    ld hl, $cb26
    call Call_016_41ff
    ld hl, $cb28
    call Call_016_41ff
    ld hl, $cb27
    call Call_016_41ff
    ld hl, $cb29
    ld de, $da42
    ld b, $1b
    call Call_016_4227
    call Call_016_4360
    call Call_000_12d0
    ld hl, $44cc
    ld a, [$da36]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c899]
    cp [hl]
    jr z, jr_016_4169

    jr nc, jr_016_4169

    ld hl, $cacc
    call Call_016_41b1
    ld [hl], $01

jr_016_4169:
    ld hl, $cb24
    call Call_016_41b1
    ld [hl], $01
    call Call_016_4238
    ld de, $da39
    ld b, $03
    call Call_016_4496
    ld a, [$d66e]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld de, $da39
    ld b, $03
    call Call_016_4496
    ld a, [$d703]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld de, $da39
    ld b, $03
    call Call_016_4496
    ld de, $d68e
    ld b, $08
    call Call_016_4496
    ld de, $d723
    ld b, $08
    call Call_016_4496
    ret


Call_016_41b1:
    ld a, [$cac0]
    call Call_000_223b
    ret


Call_016_41b8:
    push hl
    ld a, l
    add $a4
    ld l, a
    ld a, h
    adc $0b
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, l
    add $94
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    srl b
    rr c
    srl b
    rr c
    pop hl
    push bc
    call Call_016_41b1
    pop bc
    push hl
    push bc
    push bc
    call Call_016_4313
    pop bc
    call Call_000_1de6
    ld a, $32
    call Call_000_1e0d
    pop bc
    add hl, bc
    ld c, l
    ld b, h
    ld a, c
    or b
    jr nz, jr_016_41fa

    ld bc, $0001

jr_016_41fa:
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_016_41ff:
    push hl
    ld a, l
    add $a4
    ld l, a
    ld a, h
    adc $0b
    ld h, a
    ld a, [hl]
    ld c, a
    ld b, $00
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    add c
    ld c, a
    ld a, $00
    add b
    ld b, a
    srl b
    rr c
    pop hl
    push bc
    call Call_016_41b1
    pop bc
    ld [hl], c
    ret


Call_016_4227:
    push bc
    push de
    ld a, [$cac0]
    call Call_000_223b
    pop de
    pop bc

jr_016_4231:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_016_4231

    ret


Call_016_4238:
    ld a, [$d670]
    and $01
    or a
    jp nz, Jump_016_42aa

    ld hl, $cad6
    call Call_016_41b1
    ld a, [$d66e]
    ld [hl], a
    ld hl, $cad8
    ld de, $d671
    ld b, $08
    call Call_016_4227
    ld hl, $cae0
    call Call_016_41b1
    ld a, [$ca4a]
    ld [hl], a
    ld hl, $cb44
    ld de, $d666
    ld b, $08
    call Call_016_4227
    ld hl, $cb4c
    call Call_016_41b1
    ld a, [$d6c7]
    ld [hl], a
    ld hl, $cad7
    call Call_016_41b1
    ld a, [$d703]
    ld [hl], a
    ld hl, $cae1
    ld de, $d706
    ld b, $08
    call Call_016_4227
    ld hl, $cae9
    call Call_016_41b1
    ld a, [$ca4a]
    ld [hl], a
    ld hl, $cb4d
    ld de, $d6fb
    ld b, $08
    call Call_016_4227
    ld hl, $cb55
    call Call_016_41b1
    ld a, [$d75c]
    ld [hl], a
    ret


Jump_016_42aa:
    ld hl, $cad6
    call Call_016_41b1
    ld a, [$d703]
    ld [hl], a
    ld hl, $cad8
    ld de, $d706
    ld b, $08
    call Call_016_4227
    ld hl, $cae0
    call Call_016_41b1
    ld a, [$ca4a]
    ld [hl], a
    ld hl, $cb44
    ld de, $d6fb
    ld b, $08
    call Call_016_4227
    ld hl, $cb4c
    call Call_016_41b1
    ld a, [$d75c]
    ld [hl], a
    ld hl, $cad7
    call Call_016_41b1
    ld a, [$d66e]
    ld [hl], a
    ld hl, $cae1
    ld de, $d671
    ld b, $08
    call Call_016_4227
    ld hl, $cae9
    call Call_016_41b1
    ld a, [$ca4a]
    ld [hl], a
    ld hl, $cb4d
    ld de, $d666
    ld b, $08
    call Call_016_4227
    ld hl, $cb55
    call Call_016_41b1
    ld a, [$d6c7]
    ld [hl], a
    ret


Call_016_4313:
    ld c, $00
    ld hl, $d671
    call Call_016_434f
    ld a, [$d67a]
    cp $ff
    ld hl, $d6e8
    call nz, Call_016_434f
    ld a, [$d67b]
    cp $ff
    ld hl, $d6f1
    call nz, Call_016_434f
    ld hl, $d706
    call Call_016_434f
    ld a, [$d70f]
    cp $ff
    ld hl, $d77d
    call nz, Call_016_434f
    ld a, [$d710]
    cp $ff
    ld hl, $d786
    call nz, Call_016_434f
    ld a, c
    ret


Call_016_434f:
    ld de, $ca42
    ld b, $09

jr_016_4354:
    ld a, [de]
    cp [hl]
    jr z, jr_016_435a

    inc c
    ret


jr_016_435a:
    inc de
    inc hl
    dec b
    jr nz, jr_016_4354

    ret


Call_016_4360:
    xor a
    ld [$da72], a
    ld b, $1b

jr_016_4366:
    push bc
    call Call_016_4373
    ld hl, $da72
    inc [hl]
    pop bc
    dec b
    jr nz, jr_016_4366

    ret


Call_016_4373:
    ld a, [$da72]
    ld hl, $cb29
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_41b1
    ld a, [hl]
    cp $03
    ret z

    cp $02
    jp z, Jump_016_43fc

    ld a, [$da72]
    ld hl, $d6cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, [$da72]
    ld hl, $d762
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add [hl]
    and $07
    rst $00
    cp b
    ld b, e
    cp b
    ld b, e
    cp b
    ld b, e
    cp c
    ld b, e
    add $43
    db $d3
    ld b, e
    db $ec
    ld b, e
    ret


    ld a, [$da77]
    ld b, a
    ld a, $64
    call Call_016_4444
    call c, Call_016_4481
    ret


    ld a, [$da77]
    ld b, a
    ld a, $1e
    call Call_016_4444
    call c, Call_016_4481
    ret


    ld a, [$da77]
    ld b, a
    ld a, $0a
    call Call_016_4444
    call c, Call_016_4481
    ld a, [$da77]
    ld b, a
    ld a, $1e
    call Call_016_4444
    call c, Call_016_4481
    ret


    call Call_016_4481
    ld a, [$da77]
    ld b, a
    ld a, $14
    call Call_016_4444
    call c, Call_016_4481
    ret


Jump_016_43fc:
    ld a, [$da72]
    ld hl, $d6cd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, [$da72]
    ld hl, $d762

Call_016_4410:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add [hl]
    and $07
    rst $00
    add hl, hl
    ld b, h
    add hl, hl
    ld b, h
    add hl, hl
    ld b, h
    add hl, hl
    ld b, h
    add hl, hl
    ld b, h
    ld a, [hl+]
    ld b, h
    scf
    ld b, h
    ret


    ld a, [$da77]
    ld b, a
    ld a, $c8
    call Call_016_4444
    call c, Call_016_446c
    ret


    ld a, [$da77]
    ld b, a
    ld a, $28
    call Call_016_4444
    call c, Call_016_446c
    ret


Call_016_4444:
    push bc
    push af
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    pop af
    call Call_000_1e0d
    pop bc
    cp b
    ret


    ld a, [$da72]
    ld hl, $cb29
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_41b1
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_016_446c:
    ld a, [$da72]
    ld hl, $cb29
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_41b1
    ld a, [hl]
    cp $03
    ret z

    inc [hl]
    ret


Call_016_4481:
    ld a, [$da72]
    ld hl, $cb29
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_41b1
    ld a, [hl]
    cp $02
    ret z

    inc [hl]
    ret


Call_016_4496:
jr_016_4496:
    ld a, [de]
    inc de
    push bc
    push de
    call Call_016_44a3
    pop de
    pop bc
    dec b
    jr nz, jr_016_4496

    ret


Call_016_44a3:
    cp $ff
    ret z

    ld hl, $4874
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $caf2
    call Call_016_41b1
    pop af
    ld b, $19
    ld c, a

jr_016_44be:
    ld a, [hl]
    cp c
    ret z

    cp $ff
    jr nz, jr_016_44c7

    ld [hl], c
    ret


jr_016_44c7:
    inc hl
    dec b
    jr nz, jr_016_44be

    ret


    nop
    ld a, [de]
    add b
    sub $fa
    ld l, h
    ret z

    or a
    ret nz

    xor a
    ld [$d9e6], a
    ret


    ld a, [$da71]
    cp $ff
    jr z, jr_016_450f

    call Call_000_12d0
    ld a, [$c899]
    cp $03
    ret nc

    ld b, $c8
    ld d, $d7
    call Call_016_453d
    ld a, [$c89a]
    ld b, a
    ld a, c
    or a
    ret z

    call Call_000_1dfb
    ld b, $c8
    ld d, $d7
    ld e, a
    call Call_016_4553
    ld a, b
    ld [$da71], a
    ld hl, $d9e6
    inc [hl]
    cp $ff
    ret z

    ret


jr_016_450f:
    call Call_000_12d0
    ld a, [$c899]
    cp $0e
    ret nc

    ld b, $00
    ld d, $c8
    call Call_016_453d
    ld a, [$c89a]
    ld b, a
    ld a, c
    or a
    ret z

    call Call_000_1dfb
    ld b, $00
    ld d, $c8
    ld e, a
    call Call_016_4553
    ld a, b
    ld [$da71], a
    cp $ff
    ret z

    ld hl, $d9e6
    inc [hl]
    ret


Call_016_453d:
    ld c, $00

jr_016_453f:
    push bc
    push de
    ld hl, $ca94
    ld a, b
    call Call_000_267e
    pop de
    pop bc
    jr z, jr_016_454d

    inc c

jr_016_454d:
    inc b
    ld a, b
    cp d
    jr nz, jr_016_453f

    ret


Call_016_4553:
    ld c, $00

jr_016_4555:
    push bc
    push de
    ld hl, $ca94
    ld a, b
    call Call_000_267e
    pop de
    pop bc
    jr z, jr_016_4566

    ld a, c
    cp e
    ret z

    inc c

jr_016_4566:
    inc b
    ld a, b
    cp d
    jr nz, jr_016_4555

    ld b, $ff
    ret


Call_016_456e:
    ld a, $ff
    ld [$da71], a
    ld a, $ff
    ld [$da72], a
    ld a, $ff
    ld [$da73], a
    ld a, $ff
    ld [$da74], a
    ld a, $ff
    ld [$da77], a
    call Call_016_4653
    ld a, [$da71]
    cp $ff
    ret nz

    call Call_016_45d5
    call $44d0
    ld a, [$da71]
    cp $ff
    ret nz

    ld a, [$da6f]
    ld [$da71], a
    ret


    ld a, $ff
    ld [$da71], a
    ld a, $ff
    ld [$da72], a
    ld a, $ff
    ld [$da73], a
    ld a, $ff
    ld [$da74], a
    ld a, $ff
    ld [$da77], a
    call Call_016_4653
    ld a, [$da71]
    cp $ff
    ret nz

    call Call_016_45d5
    ld a, [$da71]
    cp $ff
    ret nz

    ld a, [$da6f]
    ld [$da71], a
    ret


Call_016_45d5:
    ld a, [$da70]
    cp $f0
    jr nc, jr_016_45ff

    ld a, [$da6f]
    push af
    call Call_016_45ff
    pop af
    ld [$da6f], a
    ld a, [$da71]
    cp $ff
    ret nz

    ld a, [$da70]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    add $f0
    ld [$da70], a

Call_016_45ff:
jr_016_45ff:
    ld a, [$da6f]
    cp $f0
    jr nc, jr_016_4615

    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    add $f0
    ld [$da72], a

jr_016_4615:
    ld hl, $4974
    ld d, $ff

jr_016_461a:
    inc d
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld a, b
    or c
    ret z

    ld a, b
    and c
    cp $ff
    jr z, jr_016_461a

    ld a, [$da70]
    and $f0
    cp $f0
    jr nz, jr_016_4636

    ld a, c
    cp $fa
    jr z, jr_016_463c

jr_016_4636:
    ld a, [$da70]
    cp c
    jr nz, jr_016_461a

jr_016_463c:
    ld a, [$da6f]
    cp b
    jr z, jr_016_464e

    ld a, [$da72]
    cp b
    jr nz, jr_016_464c

    ld a, d
    ld [$da71], a

jr_016_464c:
    jr jr_016_461a

jr_016_464e:
    ld a, d
    ld [$da71], a
    ret


Call_016_4653:
    ld a, [$da75]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_016_467d

    ld a, [$da75]
    ld hl, $cb23
    call Call_000_223b
    ld b, [hl]
    push bc
    ld a, [$da76]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    pop bc
    cp b
    jr nc, jr_016_467e

jr_016_467d:
    ld a, b

jr_016_467e:
    inc a
    ld [$da77], a
    ld a, [$da75]
    ld hl, $cb0c
    call Call_000_223b
    ld b, [hl]
    push bc
    ld a, [$da76]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    pop bc
    add b
    ld c, $04
    cp $64
    jr nc, jr_016_46b3

    ld c, $03
    cp $4c
    jr nc, jr_016_46b3

    ld c, $02
    cp $3c
    jr nc, jr_016_46b3

    ld c, $01
    cp $28
    jr nc, jr_016_46b3

    ld c, $00

jr_016_46b3:
    ld a, [$da77]
    add c
    ld [$da77], a
    ld a, [$da77]
    cp $63
    jr c, jr_016_46c6

    ld a, $63
    ld [$da77], a

jr_016_46c6:
    ld a, [$da6f]
    cp $f0
    jr nc, jr_016_46dc

    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    add $f0
    ld [$da73], a

jr_016_46dc:
    ld a, [$da70]
    cp $f0
    jr nc, jr_016_46f2

    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    add $f0
    ld [$da74], a

jr_016_46f2:
    ld hl, $4b30

jr_016_46f5:
    ld a, [hl]
    cp $ff
    jr z, jr_016_4710

    push hl
    call Call_016_471c
    pop hl
    ld a, [$da71]
    cp $ff
    jr nz, jr_016_4710

    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_016_46f5

jr_016_4710:
    ld a, [$da77]
    cp $63
    ret c

    ld a, $63
    ld [$da77], a
    ret


Call_016_471c:
    ld a, [$da6f]
    cp [hl]
    jr z, jr_016_4728

    ld a, [$da73]
    cp [hl]
    jr nz, jr_016_4749

jr_016_4728:
    inc hl
    ld a, [$da70]
    cp [hl]
    jr z, jr_016_4735

    ld a, [$da74]
    cp [hl]
    jr nz, jr_016_4749

jr_016_4735:
    inc hl
    ld a, [$da77]
    cp [hl]
    jr c, jr_016_4749

    inc hl
    ld a, [hl]
    ld [$da71], a
    inc hl
    ld a, [$da77]
    add [hl]
    ld [$da77], a

jr_016_4749:
    ret


    ld hl, $cb21
    call Call_016_47e0
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $cacd
    ld de, $ca42
    ld b, $08
    call Call_016_47e7
    ld hl, $cad5
    call Call_016_47e0
    ld a, [$ca4a]
    ld [hl], a
    ld hl, $c0d8
    ld bc, $0019
    ld a, $ff
    call Call_000_12c7
    ld hl, $caca
    call Call_016_47e0
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld de, $da39
    ld b, $03
    call Call_016_47f8
    ld hl, $cad6
    call Call_016_47e0
    ld a, [hl]
    cp $ff
    jr z, jr_016_47b9

    ld [$da31], a
    ld hl, $0301
    rst $10
    ld de, $da39
    ld b, $03
    call Call_016_47f8
    ld hl, $cad7
    call Call_016_47e0
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld de, $da39
    ld b, $03
    call Call_016_47f8

jr_016_47b9:
    ld hl, $caf2
    call Call_016_47e0
    ld e, l
    ld d, h
    ld b, $19
    call Call_016_4805
    ld hl, $caf2
    call Call_016_47e0
    ld de, $c0d8
    ld b, $19

jr_016_47d1:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_016_47d1

    ld hl, $cb24
    call Call_016_47e0
    ld [hl], $00
    ret


Call_016_47e0:
    ld a, [$cac0]
    call Call_000_223b
    ret


Call_016_47e7:
    push bc
    push de
    ld a, [$cac0]
    call Call_000_223b
    pop de
    pop bc

jr_016_47f1:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_016_47f1

    ret


Call_016_47f8:
jr_016_47f8:
    ld a, [de]
    inc de
    push bc
    push de
    call Call_016_4838
    pop de
    pop bc
    dec b
    jr nz, jr_016_47f8

    ret


Call_016_4805:
jr_016_4805:
    push bc
    push de
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $64
    call Call_000_1e0d
    ld b, a
    push bc
    ld hl, $cb23
    call Call_016_47e0
    pop bc
    ld a, [hl]
    cp b
    pop de
    pop bc
    jr jr_016_482b

    inc de
    dec b
    jr nz, jr_016_4805

    ret


jr_016_482b:
    ld a, [de]
    inc de
    push bc
    push de
    call Call_016_4838
    pop de
    pop bc
    dec b
    jr nz, jr_016_4805

    ret


Call_016_4838:
    cp $ff
    ret z

    ld hl, $4874
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    ld hl, $c0d8
    ld b, $19
    ld c, a

jr_016_484e:
    ld a, [hl]
    cp c
    ret z

    cp $ff
    jr nz, jr_016_4857

    ld [hl], c
    ret


jr_016_4857:
    inc hl
    dec b
    jr nz, jr_016_484e

    ret


    ld a, [$da6f]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $74
    ld l, a
    ld a, h
    adc $49
    ld h, a
    ld a, [hl+]
    ld [$da71], a
    ld a, [hl]
    ld [$da72], a
    ret


    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $09
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    ld [de], a
    ld [de], a
    inc d
    dec d
    dec d
    rla
    jr jr_016_48a7

    ld a, [de]
    ld a, [de]
    inc e
    inc e
    ld e, $1e
    jr nz, jr_016_48b6

    ld [hl+], a
    ld [hl+], a
    inc h
    dec h
    ld h, $27
    daa
    add hl, hl
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    ld l, $2e
    jr nc, jr_016_48d6

    ld [hl-], a

jr_016_48a7:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_016_48e7

    rst $38
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_016_48b6:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld h, b
    ld h, b

jr_016_48d6:
    ld h, b
    ld h, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, h
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_016_48e7:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    ld a, e
    ld a, e
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add h
    add h
    add h
    adc b
    adc b
    adc d
    adc d
    adc h
    rst $38
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    sub $d7
    ret c

    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ldh a, [$f2]
    ldh a, [$f3]
    ldh a, [$f4]
    ldh a, [$f5]
    ldh a, [$f6]
    ldh a, [$f7]
    ldh a, [$f8]
    rst $38
    rst $38
    ldh a, [$5a]
    ldh a, [$2e]
    ldh a, [$c6]
    ldh a, [$bd]
    ldh a, [$33]
    rst $38
    rst $38
    ldh a, [$f9]
    ldh a, [$b9]
    db $10
    db $10
    ld de, $1211
    ld [de], a
    pop af
    ldh a, [$f1]
    ld a, [c]
    pop af
    di
    pop af
    db $f4
    pop af
    push af
    pop af
    or $f1
    rst $30
    pop af
    ld hl, sp+$14
    inc d
    pop af
    ld b, [hl]
    pop af
    ld [hl-], a
    pop af
    ld d, e
    pop af
    cp b
    pop af
    ld [hl], a
    pop af
    ld e, a
    pop af
    ld b, $f1
    ld a, l
    rst $38
    rst $38
    pop af
    ld c, a
    ld h, $26
    daa
    daa
    ld [hl+], a
    adc h
    pop af
    adc l
    pop af
    ld d, l
    dec hl
    add hl, hl
    ld a, [c]
    ldh a, [$f2]
    pop af
    ld a, [c]
    di
    ld a, [c]
    db $f4
    ld a, [c]
    push af
    rst $38
    rst $38
    ld a, [c]
    rst $30
    ld a, [c]
    ld hl, sp-$01
    rst $38
    ld a, [c]
    and h
    ld a, [c]
    dec d
    ld a, [c]
    ld c, d
    ld a, [c]
    ld h, d
    ld a, [c]
    or $f2
    adc a
    ld a, [c]
    cp e
    ld a, [c]
    ld hl, $0af2
    ld a, [c]
    nop
    ld a, [c]
    ld c, e
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld a, [c]
    ld sp, hl
    ld a, [c]
    inc e
    ld a, [c]
    add a
    di
    ldh a, [$f3]
    pop af
    di
    ld a, [c]
    di
    db $f4
    di
    push af
    di
    or $f3
    rst $30
    di
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    di
    dec bc
    rst $38
    rst $38
    di
    ld a, h
    di
    or d
    di
    pop bc
    di
    cp a
    di
    ld sp, hl
    di
    rra
    di
    ld h, h
    ld d, h
    ld d, l
    db $f4
    ldh a, [$f4]
    pop af
    db $f4
    ld a, [c]
    db $f4
    di
    db $f4
    push af
    db $f4
    or $f4
    rst $30
    db $f4
    ld hl, sp-$01
    rst $38
    db $f4

jr_016_4a3b:
    ld [hl], b
    db $f4
    or e
    db $f4
    add d
    db $f4
    and l
    db $f4
    ld e, b
    db $f4
    jr nc, jr_016_4a3b

    add [hl]
    ld l, c
    ld l, c
    ld l, d
    ld l, d
    db $f4
    ld sp, hl
    rst $38
    rst $38
    push af
    ldh a, [$f5]
    pop af
    push af
    ld a, [c]
    push af
    di
    push af
    db $f4
    push af
    or $f5
    rst $30
    push af
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    push af
    ld e, h
    push af
    scf
    push af
    ld h, c
    push af
    ld sp, $9bf5
    push af
    and b
    push af
    dec a
    ld [hl], l
    ld [hl], l
    ld a, a
    ld a, a
    push af
    ld sp, hl
    or $f0
    or $f9
    rst $38
    rst $38
    or $f3
    or $f4
    or $f5
    or $f7
    or $f8
    rst $38
    rst $38
    or $f2
    or $f1
    or $19
    or $43
    or $68
    or $39
    add l
    add l
    adc d
    adc d
    or $1e
    sub e
    sub e
    or $b6
    or $45
    rst $38
    rst $38
    or $79
    sub h
    ld e, c
    sub a
    rst $00
    rst $30
    ldh a, [$f7]
    dec de
    rst $30
    ld a, [c]
    rst $30
    di
    rst $30
    db $f4
    rst $30
    push af
    rst $30
    or $f7
    ld hl, sp-$01
    rst $38
    rst $30
    ld l, [hl]
    rst $30
    ld c, l
    rst $30
    pop af
    rst $30
    inc [hl]
    rst $30
    ld [hl], d
    and c
    and c
    rst $30
    ld sp, hl
    and e
    and e
    xor e
    xor e
    xor h
    xor h
    rst $38
    rst $38
    ld hl, sp-$10
    ld hl, sp-$0f
    ld hl, sp-$0e
    ld hl, sp-$0d
    ld hl, sp-$0c
    ld hl, sp-$0b
    ld hl, sp-$0a
    ld hl, sp-$09
    rst $38
    rst $38
    ld hl, sp+$74
    ld hl, sp+$22
    ld hl, sp-$07
    ld hl, sp+$73
    ld hl, sp+$5d
    ld hl, sp-$78
    ld hl, sp+$04
    or a
    ld e, e
    cp c
    add e
    cp l
    ld b, d
    ld hl, sp+$07
    or a
    or a
    jp $c4c3


    call nz, $b4b4
    pop bc
    ret nz

    xor l
    dec h
    ret z

    inc l
    xor d
    ld [de], a
    sbc c
    ld l, h
    jp z, $c829

    res 3, d
    inc l
    adc $42
    rst $08
    inc de
    ret nc

    inc h
    call z, $cd43
    ret nc

    db $d3
    add b
    call nc, $d5d2
    ld l, l
    rst $38
    rst $38
    rst $38
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
    dec de
    nop
    inc c
    nop
    nop
    inc h
    nop
    inc c
    nop
    nop
    dec h
    nop
    inc c
    nop
    nop
    ld a, [hl+]
    nop
    inc c
    nop
    nop
    dec hl
    nop
    inc c
    nop
    dec b
    dec de
    nop
    inc c
    nop
    dec b
    inc h
    nop
    inc c
    nop
    dec b
    dec h
    nop
    inc c
    nop
    dec b
    ld a, [hl+]
    nop
    inc c
    nop
    dec b
    dec hl
    nop
    inc c
    nop
    dec bc
    dec de
    nop
    inc c
    nop
    dec bc
    inc h
    nop
    inc c
    nop
    dec bc
    dec h
    nop
    inc c
    nop
    dec bc
    ld a, [hl+]
    nop
    inc c
    nop
    dec bc
    dec hl
    nop
    inc c
    nop
    ld de, $001b
    inc c
    nop
    ld de, $0024
    inc c
    nop
    ld de, $0025
    inc c
    nop
    ld de, $002a
    inc c
    nop
    ld de, $002b
    inc c
    nop
    rrca
    dec h
    nop
    ld c, $00
    rrca
    ld a, [hl+]
    nop
    ld c, $00
    rrca
    inc l
    nop
    ld c, $00
    rrca
    ld a, $00
    ld c, $00
    rrca
    ld b, d
    nop
    ld c, $00
    rrca
    ld d, e
    nop
    ld c, $00
    rrca
    ld d, [hl]
    nop
    ld c, $00
    rrca
    ld d, a
    nop
    ld c, $00
    rrca
    sub [hl]
    nop
    ld c, $00
    rrca
    sub a
    nop
    ld c, $00
    rrca
    xor c
    nop
    ld c, $00
    rrca
    xor d
    nop
    ld c, $00
    ld [de], a
    dec h
    nop
    ld c, $00
    ld [de], a
    ld a, [hl+]
    nop
    ld c, $00
    ld [de], a
    inc l
    nop
    ld c, $00
    ld [de], a
    ld a, $00
    ld c, $00
    ld [de], a
    ld b, d
    nop
    ld c, $00
    ld [de], a
    ld d, e
    nop
    ld c, $00
    ld [de], a
    ld d, [hl]
    nop
    ld c, $00
    ld [de], a
    ld d, a
    nop
    ld c, $00
    ld [de], a
    sub [hl]
    nop
    ld c, $00
    ld [de], a
    sub a
    nop
    ld c, $00
    ld [de], a
    xor c
    nop
    ld c, $00
    ld [de], a
    xor d
    nop
    ld c, $00
    ld c, $25
    nop
    rrca
    nop
    ld c, $2a
    nop
    rrca
    nop
    ld c, $2c
    nop
    rrca
    nop
    ld c, $3e
    nop
    rrca
    nop
    ld c, $42
    nop
    rrca
    nop
    ld c, $53
    nop
    rrca
    nop
    ld c, $56
    nop
    rrca
    nop
    ld c, $57
    nop
    rrca
    nop
    ld c, $96
    nop
    rrca
    nop
    ld c, $97
    nop
    rrca
    nop
    ld c, $a9
    nop
    rrca
    nop
    ld c, $aa
    nop
    rrca
    nop
    ld [$0508], sp
    rrca
    nop
    ld bc, $0501
    ld c, $00
    ld c, $c7
    nop
    inc de
    nop
    rrca
    rst $00
    nop
    inc de
    nop
    ld [de], a
    rst $00
    nop
    inc de
    nop
    ld c, $b9
    nop
    ld [de], a
    nop
    rrca
    cp c
    nop
    ld [de], a
    nop
    inc d
    inc d
    inc b
    dec h
    nop
    inc d
    inc d
    nop
    inc e
    nop
    inc e
    inc e
    inc b
    dec h
    nop
    rla
    ccf
    nop
    ld [hl+], a
    nop
    rla
    ld b, c
    nop
    ld [hl+], a
    nop
    rla
    ld d, e
    nop
    ld [hl+], a
    nop
    rla
    ld d, a
    nop
    ld [hl+], a
    nop
    rla
    ld e, b
    nop
    ld [hl+], a
    nop
    rla
    add e
    nop
    ld [hl+], a
    nop
    rla
    adc l
    nop
    ld [hl+], a
    nop
    rla
    adc [hl]
    nop
    ld [hl+], a
    nop
    rla
    sub b
    nop
    ld [hl+], a
    nop
    rla
    sub h
    nop
    ld [hl+], a
    nop
    rla
    xor c
    nop
    ld [hl+], a
    nop
    rla
    call nz, Call_000_2200
    nop
    ld e, $3f
    nop
    ld [hl+], a
    nop
    ld e, $41
    nop
    ld [hl+], a
    nop
    ld e, $53
    nop
    ld [hl+], a
    nop
    ld e, $57
    nop
    ld [hl+], a
    nop
    ld e, $58
    nop
    ld [hl+], a
    nop
    ld e, $83
    nop
    ld [hl+], a
    nop
    ld e, $8d
    nop
    ld [hl+], a
    nop
    ld e, $8e
    nop
    ld [hl+], a
    nop
    ld e, $90
    nop
    ld [hl+], a
    nop
    ld e, $94
    nop
    ld [hl+], a
    nop
    ld e, $a9
    nop
    ld [hl+], a
    nop
    ld e, $c4
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    ccf
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    ld b, c
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    ld d, e
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    ld d, a
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    ld e, b
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    add e
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    adc l
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    adc [hl]
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    sub b
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    sub h
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    xor c
    nop
    ld [hl+], a
    nop
    ld a, [hl+]
    call nz, Call_000_2200
    nop
    dec hl
    ccf
    nop
    ld [hl+], a
    nop
    dec hl
    ld b, c
    nop
    ld [hl+], a
    nop
    dec hl
    ld d, e
    nop
    ld [hl+], a
    nop
    dec hl
    ld d, a
    nop
    ld [hl+], a
    nop
    dec hl
    ld e, b
    nop
    ld [hl+], a
    nop
    dec hl
    add e
    nop
    ld [hl+], a
    nop
    dec hl
    adc l
    nop
    ld [hl+], a
    nop
    dec hl
    adc [hl]
    nop
    ld [hl+], a
    nop
    dec hl
    sub b
    nop
    ld [hl+], a
    nop
    dec hl
    sub h
    nop
    ld [hl+], a
    nop
    dec hl
    xor c
    nop
    ld [hl+], a
    nop
    dec hl
    call nz, Call_000_2200
    nop
    add hl, de
    ld [bc], a
    nop
    rra
    nop
    add hl, de
    ld b, c
    nop
    rra
    nop
    add hl, de
    ld b, h
    nop
    rra
    nop
    add hl, de
    ld h, [hl]
    nop
    rra
    nop
    add hl, de
    adc l
    nop
    rra
    nop
    add hl, de
    adc [hl]
    nop
    rra
    nop
    add hl, de
    sub c
    nop
    rra
    nop
    add hl, de
    sub [hl]
    nop
    rra
    nop
    ld d, $43
    nop
    jr z, jr_016_4d97

jr_016_4d97:
    ld d, $95
    nop
    jr z, jr_016_4d9c

jr_016_4d9c:
    ld d, $ae
    nop
    jr z, jr_016_4da1

jr_016_4da1:
    ld d, $c5
    nop
    jr z, jr_016_4da6

jr_016_4da6:
    rla
    ld b, e
    nop
    jr z, jr_016_4dab

jr_016_4dab:
    rla
    sub l
    nop
    jr z, jr_016_4db0

jr_016_4db0:
    rla
    xor [hl]
    nop
    jr z, jr_016_4db5

jr_016_4db5:
    rla
    push bc
    nop
    jr z, jr_016_4dba

jr_016_4dba:
    add hl, de
    ld b, e
    nop
    jr z, jr_016_4dbf

jr_016_4dbf:
    add hl, de
    sub l
    nop
    jr z, jr_016_4dc4

jr_016_4dc4:
    add hl, de
    xor [hl]
    nop
    jr z, jr_016_4dc9

jr_016_4dc9:
    add hl, de
    push bc
    nop
    jr z, jr_016_4dce

jr_016_4dce:
    ld a, [hl+]
    ld b, e
    nop
    jr z, jr_016_4dd3

jr_016_4dd3:
    ld a, [hl+]
    sub l
    nop
    jr z, jr_016_4dd8

jr_016_4dd8:
    ld a, [hl+]
    xor [hl]
    nop
    jr z, jr_016_4ddd

jr_016_4ddd:
    ld a, [hl+]
    push bc
    nop
    jr z, jr_016_4de2

jr_016_4de2:
    dec hl
    ld b, e
    nop
    jr z, jr_016_4de7

jr_016_4de7:
    dec hl
    sub l
    nop
    jr z, jr_016_4dec

jr_016_4dec:
    dec hl
    xor [hl]
    nop
    jr z, jr_016_4df1

jr_016_4df1:
    dec hl
    push bc
    nop
    jr z, jr_016_4df6

jr_016_4df6:
    ld [hl+], a
    inc c
    nop
    cp c
    nop
    ld [hl+], a
    rrca
    nop
    cp c
    nop
    ld [hl+], a
    add c
    nop
    cp c
    nop
    ld [hl+], a
    sbc h
    nop
    cp c
    nop
    ld [hl+], a
    cp l
    nop
    cp c
    nop
    ld [hl+], a
    call nz, $b900
    nop
    ld [hl+], a
    push bc
    nop
    cp c
    nop
    inc h
    inc c
    nop
    cp c
    nop
    inc h
    rrca
    nop
    cp c
    nop
    inc h
    add c
    nop
    cp c
    nop
    inc h
    sbc h
    nop
    cp c
    nop
    inc h
    cp l
    nop
    cp c
    nop
    inc h
    call nz, $b900
    nop
    inc h
    push bc
    nop
    cp c
    nop
    dec h
    inc c
    nop
    cp c
    nop
    dec h
    rrca
    nop
    cp c
    nop
    dec h
    add c
    nop
    cp c
    nop
    dec h
    sbc h
    nop
    cp c
    nop
    dec h
    cp l
    nop
    cp c
    nop
    dec h
    call nz, $b900
    nop
    dec h
    push bc
    nop
    cp c
    nop
    ld [hl+], a
    adc h
    nop
    add hl, hl
    nop
    dec h
    adc h
    nop
    add hl, hl
    nop
    scf
    ld d, $00
    dec sp
    nop
    scf
    rla
    nop
    dec sp
    nop
    scf
    dec de
    nop
    dec sp
    nop
    scf
    ld e, $00
    dec sp
    nop
    scf
    ld a, [hl+]
    nop
    dec sp
    nop
    scf
    dec hl
    nop
    dec sp
    nop
    ccf
    ld d, $00
    dec sp
    nop
    ccf
    rla
    nop
    dec sp
    nop
    ccf
    dec de
    nop
    dec sp
    nop
    ccf
    ld e, $00
    dec sp
    nop
    ccf
    ld a, [hl+]
    nop
    dec sp
    nop
    ccf
    dec hl
    nop
    dec sp
    nop
    ld b, b
    ld d, $00
    dec sp
    nop
    ld b, b
    rla
    nop
    dec sp
    nop
    ld b, b
    dec de
    nop
    dec sp
    nop
    ld b, b
    ld e, $00
    dec sp
    nop
    ld b, b
    ld a, [hl+]
    nop
    dec sp
    nop
    ld b, b
    dec hl
    nop
    dec sp
    nop
    ld b, h
    ld d, $00
    dec sp
    nop
    ld b, h
    rla
    nop
    dec sp
    nop
    ld b, h
    dec de
    nop
    dec sp
    nop
    ld b, h
    ld e, $00
    dec sp
    nop
    ld b, h
    ld a, [hl+]
    nop
    dec sp
    nop
    ld b, h
    dec hl
    nop
    dec sp
    nop
    dec l
    inc bc
    nop
    ld [hl], $00
    dec l
    ld a, [bc]
    nop
    ld [hl], $00
    dec l
    ld e, $00
    ld [hl], $00
    dec l
    ld e, b
    nop
    ld [hl], $00
    dec l
    ld e, d
    nop
    ld [hl], $00
    dec l
    ld h, [hl]
    nop
    ld [hl], $00
    dec l
    ld [hl], h
    nop
    ld [hl], $00
    dec l
    add l
    nop
    ld [hl], $00
    dec l
    adc e
    nop
    ld [hl], $00
    dec l
    xor [hl]
    nop
    ld [hl], $00
    dec l
    xor a
    nop
    ld [hl], $00
    dec l
    jp nz, Jump_000_3600

    nop
    ld [hl-], a
    inc bc
    nop
    ld [hl], $00
    ld [hl-], a
    ld a, [bc]
    nop
    ld [hl], $00
    ld [hl-], a
    ld e, $00
    ld [hl], $00
    ld [hl-], a
    ld e, b
    nop
    ld [hl], $00
    ld [hl-], a
    ld e, d
    nop
    ld [hl], $00
    ld [hl-], a
    ld h, [hl]
    nop
    ld [hl], $00
    ld [hl-], a
    ld [hl], h
    nop
    ld [hl], $00
    ld [hl-], a
    add l
    nop
    ld [hl], $00
    ld [hl-], a
    adc e
    nop
    ld [hl], $00
    ld [hl-], a
    xor [hl]
    nop
    ld [hl], $00
    ld [hl-], a
    xor a
    nop
    ld [hl], $00
    ld [hl-], a
    jp nz, Jump_000_3600

    nop
    dec l
    ld d, c
    nop
    ld b, c
    nop
    dec l
    ld d, e
    nop
    ld b, c
    nop
    dec l
    ld d, [hl]
    nop
    ld b, c
    nop
    dec l
    ld d, a
    nop
    ld b, c
    nop
    ld [hl-], a
    ld d, c
    nop
    ld b, c
    nop
    ld [hl-], a
    ld d, e
    nop
    ld b, c
    nop
    ld [hl-], a
    ld d, [hl]
    nop
    ld b, c
    nop
    ld [hl-], a
    ld d, a
    nop
    ld b, c
    nop
    ld a, [hl-]
    ld d, c
    nop
    ld b, c
    nop
    ld a, [hl-]
    ld d, e
    nop
    ld b, c
    nop
    ld a, [hl-]
    ld d, [hl]
    nop
    ld b, c
    nop
    ld a, [hl-]
    ld d, a
    nop
    ld b, c
    nop
    dec sp
    ld d, c
    nop
    ld b, c
    nop
    dec sp
    ld d, e
    nop
    ld b, c
    nop
    dec sp
    ld d, [hl]
    nop
    ld b, c
    nop
    dec sp
    ld d, a
    nop
    ld b, c
    nop
    dec l
    add c
    nop
    ld [hl-], a
    nop
    dec l
    sbc h
    nop
    ld [hl-], a
    nop
    dec l
    xor c
    nop
    ld [hl-], a
    nop
    dec l
    xor d
    nop
    ld [hl-], a
    nop
    dec l
    xor h
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    add c
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    sbc h
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    xor c
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    xor d
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    xor h
    nop
    ld [hl-], a
    nop
    dec sp
    add c
    nop
    ld [hl-], a
    nop
    dec sp
    sbc h
    nop
    ld [hl-], a
    nop
    dec sp
    xor c
    nop
    ld [hl-], a
    nop
    dec sp
    xor d
    nop
    ld [hl-], a
    nop
    dec sp
    xor h
    nop
    ld [hl-], a
    nop
    ld a, $81
    nop
    ld [hl-], a
    nop
    ld a, $9c
    nop
    ld [hl-], a
    nop
    ld a, $a9
    nop
    ld [hl-], a
    nop
    ld a, $aa
    nop
    ld [hl-], a
    nop
    ld a, $ac
    nop
    ld [hl-], a
    nop
    ld b, b
    add c
    nop
    ld [hl-], a
    nop
    ld b, b
    sbc h
    nop
    ld [hl-], a
    nop
    ld b, b
    xor c
    nop
    ld [hl-], a
    nop
    ld b, b
    xor d
    nop
    ld [hl-], a
    nop
    ld b, b
    xor h
    nop
    ld [hl-], a
    nop
    ld b, c
    add c
    nop
    ld [hl-], a
    nop
    ld b, c
    sbc h
    nop
    ld [hl-], a
    nop
    ld b, c
    xor c
    nop
    ld [hl-], a
    nop
    ld b, c
    xor d
    nop
    ld [hl-], a
    nop
    ld b, c
    xor h
    nop
    ld [hl-], a
    nop
    scf
    cp c
    nop
    ld [hl-], a
    nop
    scf
    cp l
    nop
    ld [hl-], a
    nop
    scf
    ret nz

    nop
    ld [hl-], a
    nop
    scf
    pop bc
    nop
    ld [hl-], a
    nop
    scf
    call nz, Call_000_3200
    nop
    scf
    push bc
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    cp c
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    cp l
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    ret nz

    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    pop bc
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    call nz, Call_000_3200
    nop
    ld a, [hl-]
    push bc
    nop
    ld [hl-], a
    nop
    dec sp
    cp c
    nop
    ld [hl-], a
    nop
    dec sp
    cp l
    nop
    ld [hl-], a
    nop
    dec sp
    ret nz

    nop
    ld [hl-], a
    nop
    dec sp
    pop bc
    nop
    ld [hl-], a
    nop
    dec sp
    call nz, Call_000_3200
    nop
    dec sp
    push bc
    nop
    ld [hl-], a
    nop
    ld a, $b9
    nop
    ld [hl-], a
    nop
    ld a, $bd
    nop
    ld [hl-], a
    nop
    ld a, $c0
    nop
    ld [hl-], a
    nop
    ld a, $c1
    nop
    ld [hl-], a
    nop
    ld a, $c4
    nop
    ld [hl-], a
    nop
    ld a, $c5
    nop
    ld [hl-], a
    nop
    ccf
    cp c
    nop
    ld [hl-], a
    nop
    ccf
    cp l
    nop
    ld [hl-], a
    nop
    ccf
    ret nz

    nop
    ld [hl-], a
    nop
    ccf
    pop bc
    nop
    ld [hl-], a
    nop
    ccf
    call nz, Call_000_3200
    nop
    ccf
    push bc
    nop
    ld [hl-], a
    nop
    ld b, b
    cp c
    nop
    ld [hl-], a
    nop
    ld b, b
    cp l
    nop
    ld [hl-], a
    nop
    ld b, b
    ret nz

    nop
    ld [hl-], a
    nop
    ld b, b
    pop bc
    nop
    ld [hl-], a
    nop
    ld b, b
    call nz, Call_000_3200
    nop
    ld b, b
    push bc
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    cp c
    nop
    ld b, c
    nop
    ld [hl-], a
    cp d
    nop
    ld b, c
    nop
    ld [hl-], a
    cp l
    nop
    ld b, c
    nop
    ld [hl-], a
    ret nz

    nop
    ld b, c
    nop
    ld [hl-], a
    pop bc
    nop
    ld b, c
    nop
    ld [hl-], a
    call nz, $4100
    nop
    ld [hl-], a
    push bc
    nop
    ld b, c
    nop
    ld b, c
    cp c
    nop
    ld b, d
    nop
    ld b, c
    cp d
    nop
    ld b, d
    nop
    ld b, c
    rst $00
    nop
    ld b, d
    nop
    ld d, c
    dec bc
    nop
    ld d, a
    nop
    ld d, c
    inc c
    nop
    ld d, a
    nop
    ld d, c
    add c
    nop
    ld d, a
    nop
    ld d, c
    cp c
    nop
    ld d, a
    nop
    ld d, c
    call nz, Call_016_5700
    nop
    ld d, c
    push bc
    nop
    ld d, a
    nop
    ld d, d
    dec bc
    nop
    ld d, a
    nop
    ld d, d
    inc c
    nop
    ld d, a
    nop
    ld d, d
    add c
    nop
    ld d, a
    nop
    ld d, d
    cp c
    nop
    ld d, a
    nop
    ld d, d
    call nz, Call_016_5700
    nop
    ld d, d
    push bc
    nop
    ld d, a
    nop
    ld d, e
    dec bc
    nop
    ld d, a
    nop
    ld d, e
    inc c
    nop
    ld d, a
    nop
    ld d, e
    add c
    nop
    ld d, a
    nop
    ld d, e
    cp c
    nop
    ld d, a
    nop
    ld d, e
    call nz, Call_016_5700
    nop
    ld d, e
    push bc
    nop
    ld d, a
    nop
    ld d, h
    dec bc
    nop
    ld d, a
    nop
    ld d, h
    inc c
    nop
    ld d, a
    nop
    ld d, h
    add c
    nop
    ld d, a
    nop
    ld d, h
    cp c
    nop
    ld d, a
    nop
    ld d, h
    call nz, Call_016_5700
    nop
    ld d, h
    push bc
    nop
    ld d, a
    nop
    ld d, [hl]
    dec bc
    nop
    ld d, a
    nop
    ld d, [hl]
    inc c
    nop
    ld d, a
    nop
    ld d, [hl]
    add c
    nop
    ld d, a
    nop
    ld d, [hl]
    cp c
    nop
    ld d, a
    nop
    ld d, [hl]
    call nz, Call_016_5700
    nop
    ld d, [hl]
    push bc
    nop
    ld d, a
    nop
    ld d, e
    cp a
    nop
    ld d, [hl]
    nop
    ld d, l
    cp a
    nop
    ld d, [hl]
    nop
    ld d, a
    cp a
    nop
    ld d, [hl]
    nop
    ld [hl], c
    ld [hl], c
    nop
    ld a, h
    nop
    ld [hl], c
    ld a, b
    nop
    ld a, h
    nop
    ld [hl], c
    ld a, d
    nop
    ld a, h
    nop
    ld a, b
    ld [hl], c
    nop
    ld a, h
    nop
    ld a, b
    ld a, b
    nop
    ld a, h
    nop
    ld a, b
    ld a, d
    nop
    ld a, h
    nop
    ld a, d
    ld [hl], c
    nop
    ld a, h
    nop
    ld a, d
    ld a, b
    nop
    ld a, h
    nop
    ld a, d
    ld a, d
    nop
    ld a, h
    nop
    add h
    ld c, $00
    add e
    nop
    add h
    rrca
    nop
    add e
    nop
    add h
    ld [de], a
    nop
    add e
    nop
    add h
    ld [hl+], a
    nop
    add e
    nop
    add h
    dec h
    nop
    add e
    nop
    add h
    add hl, hl
    nop
    add e
    nop
    add h
    ld b, c
    nop
    add e
    nop
    add h
    ld b, d
    nop
    add e
    nop
    add h
    ld d, [hl]
    nop
    add e
    nop
    add h
    ld d, a
    nop
    add e
    nop
    add h
    cp c
    nop
    add e
    nop
    add h
    push bc
    nop
    add e
    nop
    sub e
    ld c, $00
    add e
    nop
    sub e
    rrca
    nop
    add e
    nop
    sub e
    ld [de], a
    nop
    add e
    nop
    sub e
    ld [hl+], a
    nop
    add e
    nop
    sub e
    dec h
    nop
    add e
    nop
    sub e
    add hl, hl
    nop
    add e
    nop
    sub e
    ld b, c
    nop
    add e
    nop
    sub e
    ld b, d
    nop
    add e
    nop
    sub e
    ld d, [hl]
    nop
    add e
    nop
    sub e
    ld d, a
    nop
    add e
    nop
    sub e
    cp c
    nop
    add e
    nop
    sub e
    push bc
    nop
    add e
    nop
    sub [hl]
    ld c, $00
    add e
    nop
    sub [hl]
    rrca
    nop
    add e
    nop
    sub [hl]
    ld [de], a
    nop
    add e
    nop
    sub [hl]
    ld [hl+], a
    nop
    add e
    nop
    sub [hl]
    dec h
    nop
    add e
    nop
    sub [hl]
    add hl, hl
    nop
    add e
    nop
    sub [hl]
    ld b, c
    nop
    add e
    nop
    sub [hl]
    ld b, d
    nop
    add e
    nop
    sub [hl]
    ld d, [hl]
    nop
    add e
    nop
    sub [hl]
    ld d, a
    nop
    add e
    nop
    sub [hl]
    cp c
    nop
    add e
    nop
    sub [hl]
    push bc
    nop
    add e
    nop
    add h
    inc c
    nop
    sub c
    nop
    add h
    dec de
    nop
    sub c
    nop
    add h
    jr z, jr_016_52b8

jr_016_52b8:
    sub c
    nop
    add h
    ld c, l
    nop
    sub c
    nop
    add h
    ld d, e
    nop
    sub c
    nop
    add h
    ld l, h
    nop
    sub c
    nop
    add h
    ld a, e
    nop
    sub c
    nop
    add h
    sbc h
    nop
    sub c
    nop
    add h
    xor c
    nop
    sub c
    nop
    add h
    xor d
    nop
    sub c
    nop
    sub e
    inc c
    nop
    sub c
    nop
    sub e
    dec de
    nop
    sub c
    nop
    sub e
    jr z, jr_016_52ea

jr_016_52ea:
    sub c
    nop
    sub e
    ld c, l
    nop
    sub c
    nop
    sub e
    ld d, e
    nop
    sub c
    nop
    sub e
    ld l, h
    nop
    sub c
    nop
    sub e
    ld a, e
    nop
    sub c
    nop
    sub e
    sbc h
    nop
    sub c
    nop
    sub e
    xor c
    nop
    sub c
    nop
    sub e
    xor d
    nop
    sub c
    nop
    sub [hl]
    inc c
    nop
    sub c
    nop
    sub [hl]
    dec de
    nop
    sub c
    nop
    sub [hl]
    jr z, jr_016_531c

jr_016_531c:
    sub c
    nop
    sub [hl]
    ld c, l
    nop
    sub c
    nop
    sub [hl]
    ld d, e
    nop
    sub c
    nop
    sub [hl]
    ld l, h
    nop
    sub c
    nop
    sub [hl]
    ld a, e
    nop
    sub c
    nop
    sub [hl]
    sbc h
    nop
    sub c
    nop
    sub [hl]
    xor c
    nop
    sub c
    nop
    sub [hl]
    xor d
    nop
    sub c
    nop
    add h
    ld [hl-], a
    nop
    sub b
    nop
    add h
    ld a, $00
    sub b
    nop
    add h
    add c
    nop
    sub b
    nop
    add h
    cp l
    nop
    sub b
    nop
    sub e
    ld [hl-], a
    nop
    sub b
    nop
    sub e
    ld a, $00
    sub b
    nop
    sub e
    add c
    nop
    sub b
    nop
    sub e
    cp l
    nop
    sub b
    nop
    sub [hl]
    ld [hl-], a
    nop
    sub b
    nop
    sub [hl]
    ld a, $00
    sub b
    nop
    sub [hl]
    add c
    nop
    sub b
    nop
    sub [hl]
    cp l
    nop
    sub b
    nop
    add e
    sub c
    nop
    sub h
    nop
    sbc a
    dec bc
    nop
    xor e
    nop
    sbc a
    inc c
    nop
    xor e
    nop
    sbc a
    ld d, c
    nop
    xor e
    nop
    sbc a
    ld d, d
    nop
    xor e
    nop
    sbc a
    ld e, h
    nop
    xor e
    nop
    sbc a
    ld a, a
    nop
    xor e
    nop
    sbc a
    adc e
    nop
    xor e
    nop
    and c
    dec bc
    nop
    xor e
    nop
    and c
    inc c
    nop
    xor e
    nop
    and c
    ld d, c
    nop
    xor e
    nop
    and c
    ld d, d
    nop
    xor e
    nop
    and c
    ld e, h
    nop
    xor e
    nop
    and c
    ld a, a
    nop
    xor e
    nop
    and c
    adc e
    nop
    xor e
    nop
    and e
    dec bc
    nop
    xor e
    nop
    and e
    inc c
    nop
    xor e
    nop
    and e
    ld d, c
    nop
    xor e
    nop
    and e
    ld d, d
    nop
    xor e
    nop
    and e
    ld e, h
    nop
    xor e
    nop
    and e
    ld a, a
    nop
    xor e
    nop
    and e
    adc e
    nop
    xor e
    nop
    sbc a
    ld [hl-], a
    nop
    xor h
    nop
    sbc a
    ld a, [hl-]
    nop
    xor h
    nop
    sbc a
    ld b, h
    nop
    xor h
    nop
    sbc a
    ld c, h
    nop
    xor h
    nop
    sbc a
    ld d, e
    nop
    xor h
    nop
    sbc a
    adc c
    nop
    xor h
    nop
    sbc a
    sub b
    nop
    xor h
    nop
    sbc a
    call nz, $ac00
    nop
    sbc a
    push bc
    nop
    xor h
    nop
    and c
    ld [hl-], a
    nop
    xor h
    nop
    and c
    ld a, [hl-]
    nop
    xor h
    nop
    and c
    ld b, h
    nop
    xor h
    nop
    and c
    ld c, h
    nop
    xor h
    nop
    and c
    ld d, e
    nop
    xor h
    nop
    and c
    adc c
    nop
    xor h
    nop
    and c
    sub b
    nop
    xor h
    nop
    and c
    call nz, $ac00
    nop
    and c
    push bc
    nop
    xor h
    nop
    and e
    ld [hl-], a
    nop
    xor h
    nop
    and e
    ld a, [hl-]
    nop
    xor h
    nop
    and e
    ld b, h
    nop
    xor h
    nop
    and e
    ld c, h
    nop
    xor h
    nop
    and e
    ld d, e
    nop
    xor h
    nop
    and e
    adc c
    nop
    xor h
    nop
    and e
    sub b
    nop
    xor h
    nop
    and e
    call nz, $ac00
    nop
    and e
    push bc
    nop
    xor h
    nop
    and h
    ld [hl-], a
    nop
    xor h
    nop
    and h
    ld a, [hl-]
    nop
    xor h
    nop
    and h
    ld b, h
    nop
    xor h
    nop
    and h
    ld c, h
    nop
    xor h
    nop
    and h
    ld d, e
    nop
    xor h
    nop
    and h
    adc c
    nop
    xor h
    nop
    and h
    sub b
    nop
    xor h
    nop
    and h
    call nz, $ac00
    nop
    and h
    push bc
    nop
    xor h
    nop
    and h
    add e
    nop
    xor c
    nop
    and h
    adc l
    nop
    xor c
    nop
    and h
    sub c
    nop
    xor c
    nop
    and h
    cp c
    nop
    xor c
    nop
    and h
    cp l
    nop
    xor c
    nop
    and [hl]
    add e
    nop
    xor c
    nop
    and [hl]
    adc l
    nop
    xor c
    nop
    and [hl]
    sub c
    nop
    xor c
    nop
    and [hl]
    cp c
    nop
    xor c
    nop
    and [hl]
    cp l
    nop
    xor c
    nop
    xor e
    add e
    nop
    xor c
    nop
    xor e
    adc l
    nop
    xor c
    nop
    xor e
    sub c
    nop
    xor c
    nop
    xor e
    cp c
    nop
    xor c
    nop
    xor e
    cp l
    nop
    xor c
    nop
    xor h
    add e
    nop
    xor c
    nop
    xor h
    adc l
    nop
    xor c
    nop
    xor h
    sub c
    nop
    xor c
    nop
    xor h
    cp c
    nop
    xor c
    nop
    xor h
    cp l
    nop
    xor c
    nop
    sbc h
    ld c, $00
    xor d
    nop
    sbc h
    rrca
    nop
    xor d
    nop
    sbc h
    ld [de], a
    nop
    xor d
    nop
    sbc h
    ld [hl+], a
    nop
    xor d
    nop
    sbc h
    dec h
    nop
    xor d
    nop
    sbc h
    ld b, d
    nop
    xor d
    nop
    sbc h
    ld d, h
    nop
    xor d
    nop
    sbc h
    ld d, [hl]
    nop
    xor d
    nop
    sbc h
    ld d, a
    nop
    xor d
    nop
    sbc h
    rst $00
    nop
    xor d
    nop
    xor c
    ld c, $00
    xor d
    nop
    xor c
    rrca
    nop
    xor d
    nop
    xor c
    ld [de], a
    nop
    xor d
    nop
    xor c
    ld [hl+], a
    nop
    xor d
    nop
    xor c
    dec h
    nop
    xor d
    nop
    xor c
    ld b, d
    nop
    xor d
    nop
    xor c
    ld d, h
    nop
    xor d
    nop
    xor c
    ld d, [hl]
    nop
    xor d
    nop
    xor c
    ld d, a
    nop
    xor d
    nop
    xor c
    rst $00
    nop
    xor d
    nop
    xor e
    ld c, $00
    xor d
    nop
    xor e
    rrca
    nop
    xor d
    nop
    xor e
    ld [de], a
    nop
    xor d
    nop
    xor e
    ld [hl+], a
    nop
    xor d
    nop
    xor e
    dec h
    nop
    xor d
    nop
    xor e
    ld b, d
    nop
    xor d
    nop
    xor e
    ld d, h
    nop
    xor d
    nop
    xor e
    ld d, [hl]
    nop
    xor d
    nop
    xor e
    ld d, a
    nop
    xor d
    nop
    xor e
    rst $00
    nop
    xor d
    nop
    xor h
    ld c, $00
    xor d
    nop
    xor h
    rrca
    nop
    xor d
    nop
    xor h
    ld [de], a
    nop
    xor d
    nop
    xor h
    ld [hl+], a
    nop
    xor d
    nop
    xor h
    dec h
    nop
    xor d
    nop
    xor h
    ld b, d
    nop
    xor d
    nop
    xor h
    ld d, h
    nop
    xor d
    nop
    xor h
    ld d, [hl]
    nop
    xor d
    nop
    xor h
    ld d, a
    nop
    xor d
    nop
    xor h
    rst $00
    nop
    xor d
    nop
    sbc h
    xor [hl]
    nop
    xor c
    nop
    and c
    xor [hl]
    nop
    xor c
    nop
    and h
    xor [hl]
    nop
    xor c
    nop
    xor e
    xor [hl]
    nop
    xor c
    nop
    xor h
    xor [hl]
    nop
    xor c
    nop
    call nz, RST_00
    cp b
    nop
    call nz, Call_000_0004
    cp b
    nop
    call nz, $0005
    cp b
    nop
    call nz, Call_000_000b
    cp b
    nop
    push bc
    nop
    nop
    cp b
    nop
    push bc
    inc b
    nop
    cp b
    nop
    push bc
    dec b
    nop
    cp b
    nop
    push bc
    dec bc
    nop
    cp b
    nop
    or b
    ld d, c
    nop
    cp e
    nop
    or b
    ld d, d
    nop
    cp e
    nop
    or b
    ld d, l
    nop
    cp e
    nop
    or b
    ld e, b
    nop
    cp e
    nop
    cp b
    ld d, c
    nop
    cp e
    nop
    cp b
    ld d, d
    nop
    cp e
    nop
    cp b
    ld d, l
    nop
    cp e
    nop
    cp b
    ld e, b
    nop
    cp e
    nop
    call nz, Call_000_0051
    cp e
    nop
    call nz, $0052
    cp e
    nop
    call nz, Call_000_0055
    cp e
    nop
    call nz, SerialTransferCompleteInterrupt
    cp e
    nop
    push bc
    ld d, c
    nop
    cp e
    nop
    push bc
    ld d, d
    nop
    cp e
    nop
    push bc
    ld d, l
    nop
    cp e
    nop
    push bc
    ld e, b
    nop
    cp e
    nop
    or c
    nop
    nop
    cp a
    nop
    or c
    ld b, a
    nop
    cp a
    nop
    or c
    ld c, l
    nop
    cp a
    nop
    or c
    ld d, l
    nop
    cp a
    nop
    or c
    ld e, e
    nop
    cp a
    nop
    or c
    ld l, c
    nop
    cp a
    nop
    or l
    nop
    nop
    cp a
    nop
    or l
    ld b, a
    nop
    cp a
    nop
    or l
    ld c, l
    nop
    cp a
    nop
    or l
    ld d, l
    nop
    cp a
    nop
    or l
    ld e, e
    nop
    cp a
    nop
    or l
    ld l, c
    nop
    cp a
    nop
    or a
    nop
    nop
    cp a
    nop
    or a
    ld b, a
    nop
    cp a
    nop
    or a
    ld c, l
    nop
    cp a
    nop
    or a
    ld d, l
    nop
    cp a
    nop
    or a
    ld e, e
    nop
    cp a
    nop
    or a
    ld l, c
    nop
    cp a
    nop
    cp e
    inc c
    nop
    cp l
    nop
    cp e
    dec h
    nop
    cp l
    nop
    cp e
    ld a, $00
    cp l
    nop
    cp e
    sub b
    nop
    cp l
    nop
    cp e
    sub e
    nop
    cp l
    nop
    cp e
    sbc b
    nop
    cp l
    nop
    cp e
    xor c
    nop
    cp l
    nop
    cp e
    xor h
    nop
    cp l
    nop
    cp c
    sbc h
    nop
    pop bc
    nop
    cp c
    xor d
    nop
    pop bc
    nop
    cp c
    add hl, hl
    nop
    ret nz

    nop
    cp c
    ld b, d
    nop
    ret nz

    nop
    cp c
    ld d, [hl]
    nop
    ret nz

    nop
    cp c
    add e
    nop
    ret nz

    nop
    cp c
    sub a
    nop
    ret nz

Call_016_5700:
    nop
    cp l
    ld [hl-], a
    nop
    ld b, d
    nop
    cp l
    ld [hl], $00
    ld b, d
    nop
    cp l
    ld a, $00
    ld b, d
    nop
    cp l
    ld b, c
    nop
    ld b, d
    nop
    cp l
    ld b, e
    nop
    ld b, d
    nop
    cp l
    ld b, h
    nop
    ld b, d
    nop
    cp l
    ld b, d
    nop
    pop bc
    nop
    sub h
    ld e, c
    nop
    sbc c
    nop
    ld e, c
    sub h
    nop
    sbc c
    nop
    rst $00
    sub a
    nop
    sbc d
    nop
    sub a
    rst $00
    nop
    sbc d
    nop
    xor l
    ld [hl+], a
    nop
    ret z

    nop
    xor l
    dec h
    nop
    ret z

    nop
    xor d
    ld [de], a
    nop
    jp z, $9900

    ld l, h
    nop
    rlc b
    jp z, $0029

    call z, $c800
    rlc b
    call $c900
    rlc b
    call $9a00
    inc l
    nop
    adc $00
    adc $42
    nop
    rst $08
    nop
    rst $08
    inc de
    nop
    ret nc

    nop
    ret nc

    inc h
    nop
    pop de
    nop
    call z, $0043
    jp nc, $cd00

    ret nc

    nop
    db $d3
    nop
    call Call_000_00d1
    db $d3
    nop
    ret nc

    call $d300
    nop
    pop de
    call $d300
    nop
    db $d3
    add b
    nop
    call nc, $d400
    jp nc, $d500

    nop
    push de
    ld l, l
    nop
    sub $00
    rla
    ld a, [c]
    nop
    ld e, $00
    ld a, [hl-]
    pop af
    nop
    ld [hl-], a
    nop
    dec sp
    pop af
    nop
    ld [hl-], a
    nop
    ld b, c
    pop af
    nop
    ld [hl-], a
    nop
    ld b, l
    pop af
    nop
    ld [hl-], a
    nop
    ld l, $f1
    nop
    ld b, b
    nop
    ld [hl], $f1
    nop
    ld b, c
    nop
    dec l
    ldh a, [rP1]
    ld a, $00
    ld [hl-], a
    ldh a, [rP1]
    ld a, $00
    ld a, [hl-]
    ldh a, [rP1]
    ld a, $00
    dec sp
    ldh a, [rP1]
    ld a, $00
    ccf
    ldh a, [rP1]
    ld a, $00
    ld b, b
    ldh a, [rP1]
    ld a, $00
    ld b, c
    ldh a, [rP1]
    ld a, $00
    cpl
    di
    nop
    inc [hl]
    nop
    ld a, [hl-]
    or $00
    ld [hl-], a
    nop
    ld sp, $00f1
    dec [hl]
    nop
    ld b, a
    pop af
    nop
    ld d, d
    nop
    ld d, c
    pop af
    nop
    ld d, d
    nop
    ld d, e
    pop af
    nop
    ld d, d
    nop
    ld d, l
    pop af
    nop
    ld d, d
    nop
    ld c, b
    ld a, [c]
    nop
    ld d, c
    nop
    ld d, c
    or $00
    ld d, e
    nop
    ld b, a
    rst $30
    nop
    ld d, d
    nop
    ld d, c
    rst $30
    nop
    ld d, d
    nop
    ld d, e
    rst $30
    nop
    ld d, d
    nop
    ld d, l
    rst $30
    nop
    ld d, d
    nop
    ld b, [hl]
    ldh a, [rP1]
    ld c, [hl]
    nop
    ld e, d
    ld a, [c]
    nop
    ld h, h
    nop
    ld h, h
    or $00
    ld h, a
    nop
    ld h, a
    pop af
    nop
    ld h, [hl]
    nop
    ld h, c
    ld a, [c]
    nop
    ld h, d
    nop
    ld l, [hl]
    ldh a, [rP1]
    halt
    ld [hl], h
    ldh a, [rP1]
    ld a, h
    nop
    ld l, a
    ld a, [c]
    nop
    ld a, d
    nop
    ld [hl], e
    ld hl, sp+$00
    ld a, c
    nop
    ld [hl], c
    or $00
    ld a, e
    nop
    ld a, d
    rst $30
    nop
    ld a, [hl]
    nop
    ld a, h
    rst $30
    nop
    ld a, [hl]
    nop
    ld [hl], d
    db $f4
    nop
    ld a, b
    nop
    ld a, h
    pop af
    nop
    ld a, c
    nop
    ld a, c
    or $00
    ld a, a
    nop
    add d
    ldh a, [rP1]
    adc d
    nop
    add l
    ldh a, [rP1]
    adc d
    nop
    add a
    ldh a, [rP1]
    adc d
    nop
    add [hl]
    rst $30
    nop
    adc h
    nop
    adc d
    rst $30
    nop
    adc h
    nop
    adc e
    rst $30
    nop
    adc h
    nop
    adc b
    pop af
    nop
    add h
    nop
    adc c
    pop af
    nop
    add h
    nop
    adc e
    pop af
    nop
    add h
    nop
    adc h
    pop af
    nop
    add h
    nop
    adc b
    ld a, [c]
    nop
    sub e
    nop
    adc c
    ld a, [c]
    nop
    sub e
    nop
    adc e
    ld a, [c]
    nop
    sub e
    nop
    adc h
    ld a, [c]
    nop
    sub e
    nop
    adc b
    rst $30
    nop
    sub [hl]
    nop
    adc c
    rst $30
    nop
    sub [hl]
    nop
    adc e
    rst $30
    nop
    sub [hl]
    nop
    adc h
    rst $30
    nop
    sub [hl]
    nop
    add e
    pop af
    nop
    sub a
    nop
    add e
    ld hl, sp+$00
    sbc b
    nop
    add e
    rst $30
    nop
    adc l
    nop
    add e
    ld a, [c]
    nop
    adc [hl]
    nop
    sub c
    pop af
    nop
    sub b
    nop
    sub c
    ld hl, sp+$00
    sbc b
    nop
    sub c
    rst $30
    nop
    add e
    nop
    sub c
    ld a, [c]
    nop
    sub a
    nop
    sub b
    pop af
    nop
    add e
    nop
    sub b
    ld hl, sp+$00
    sbc b
    nop
    sub b
    ld a, [c]
    nop
    sub a
    nop
    sub b
    rst $30
    nop
    sub c
    nop
    sbc e
    ld a, [c]
    nop
    and e
    nop
    sbc e
    or $00
    xor b
    nop
    and e
    or $00
    xor b
    nop
    and b
    or $00
    and l
    nop
    and [hl]
    or $00
    and l
    nop
    sbc h
    di
    nop
    and [hl]
    nop
    and c
    di
    nop
    and [hl]
    nop
    and h
    di
    nop
    and [hl]
    nop
    xor c
    di
    nop
    and [hl]
    nop
    xor e
    di
    nop
    and [hl]
    nop
    xor h
    di
    nop
    and [hl]
    nop
    sbc [hl]
    di
    nop
    and a
    nop
    xor d
    or $00
    xor l
    nop
    sbc h
    pop af
    nop
    sbc h
    nop
    xor c
    pop af
    nop
    sbc h
    nop
    xor d
    pop af
    nop
    sbc h
    nop
    xor e
    pop af
    nop
    sbc h
    nop
    xor h
    pop af
    nop
    sbc h
    nop
    and [hl]
    pop af
    nop
    xor h
    nop
    xor a
    ldh a, [rP1]
    or a
    nop
    cp l
    pop af
    nop
    cp c
    nop
    cp a
    or $00
    cp [hl]
    nop
    ret nz

    or $00
    cp d
    nop
    pop bc
    or $00
    cp d
    nop
    cp c
    pop af
    nop
    cp c
    ld [bc], a
    cp l
    push af
    nop
    add $00
    cp l
    rst $30
    nop
    jp nz, $bd00

    di
    nop
    cp h
    nop
    ldh a, [$30]
    nop
    add hl, bc
    nop
    ldh a, [$58]
    nop
    add hl, bc
    nop
    ldh a, [$ae]
    nop
    add hl, bc
    nop
    ldh a, [rNR30]
    nop
    ld b, $00
    ldh a, [$7b]
    nop
    ld b, $00
    ldh a, [$f9]
    nop
    rrca
    ld [bc], a
    ldh a, [$a1]
    nop
    dec bc
    nop
    ldh a, [$c4]
    nop
    dec bc
    nop
    ldh a, [$c5]
    nop
    dec bc
    nop
    ldh a, [$32]
    nop
    ld a, [bc]
    nop
    ldh a, [rSTAT]
    nop
    ld a, [bc]
    nop
    ldh a, [rSCY]
    nop
    ld a, [bc]
    nop
    ldh a, [rSCX]
    nop
    ld a, [bc]
    nop
    ldh a, [rLY]
    nop
    ld a, [bc]
    nop
    ldh a, [$b9]
    nop
    stop
    ldh a, [$81]
    nop
    dec bc
    nop
    pop af
    ld sp, hl
    nop
    add hl, hl
    nop
    pop af
    ld c, $00
    dec h
    nop
    pop af
    rrca
    nop
    dec h
    nop
    pop af
    ld [de], a
    nop
    dec h
    nop
    pop af
    ld a, [hl+]
    nop
    dec h
    nop
    pop af
    ld a, $00
    dec h
    nop
    pop af
    ld d, [hl]
    nop
    dec h
    nop
    pop af
    ld d, a
    nop
    dec h
    nop
    pop af
    sub [hl]
    nop
    dec h
    nop
    pop af
    sub a
    nop
    dec h
    nop
    pop af
    ld b, d
    nop
    ld a, [hl+]
    nop
    pop af
    sub b
    nop
    ld a, [hl+]
    nop
    pop af
    sub l
    nop
    ld a, [hl+]
    nop
    pop af
    sbc b
    nop
    ld a, [hl+]
    nop
    pop af
    sbc h
    nop
    sbc h
    nop
    pop af
    xor c
    nop
    sbc h
    nop
    pop af
    xor d
    nop
    sbc h
    nop
    pop af
    xor l
    nop
    sbc h
    nop
    pop af
    add c
    nop
    inc h
    nop
    ld a, [c]
    add hl, de
    nop
    ccf
    nop
    ld a, [c]
    cp c
    nop
    ld a, [hl-]
    nop
    ld a, [c]
    cp l
    nop
    ld a, [hl-]
    nop
    ld a, [c]
    ret nz

    nop
    ld a, [hl-]
    nop
    ld a, [c]
    pop bc
    nop
    ld a, [hl-]
    nop
    ld a, [c]
    call nz, Call_000_3a00
    nop
    ld a, [c]
    push bc
    nop
    ld a, [hl-]
    nop
    di
    nop
    nop
    ld d, l
    nop
    di
    ld [hl-], a
    nop
    ld d, l
    nop
    di
    scf
    nop
    ld d, l
    nop
    di
    ld a, [hl-]
    nop
    ld d, l
    nop
    di
    add e
    nop
    ld d, l
    nop
    di
    xor [hl]
    nop
    ld d, l
    nop
    di
    ret nz

    nop
    ld d, l
    nop
    di
    stop
    ld d, h
    nop
    di
    ld de, $5400
    nop
    di
    ld [hl], $00
    ld d, h
    nop
    di
    dec sp
    nop
    ld d, h
    nop
    di
    ccf
    nop
    ld d, h
    nop
    di
    ld b, c
    nop
    ld d, h
    nop
    di
    sbc h
    nop
    ld d, h
    nop
    di
    xor c
    nop
    ld d, h
    nop
    di
    xor d
    nop
    ld d, h
    nop
    di
    xor h
    nop
    ld d, h
    nop
    di
    xor l
    nop
    ld d, h
    nop
    db $f4
    dec bc
    nop
    ld l, c
    nop
    db $f4
    ld b, l
    nop
    ld l, c
    nop
    db $f4
    ld c, d
    nop
    ld l, c
    nop
    db $f4
    ld [hl], c
    nop
    ld l, c
    nop
    db $f4
    ld a, d
    nop
    ld l, c
    nop
    db $f4
    add a
    nop
    ld l, c
    nop
    db $f4
    or l
    nop
    ld l, c
    nop
    rst $30
    dec de
    nop
    sbc h
    nop
    rst $30
    dec de
    nop
    sbc h
    nop
    rst $30
    rra
    nop
    sbc h
    nop
    rst $30
    ld [hl+], a
    nop
    sbc h
    nop
    rst $30
    dec h
    nop
    sbc h
    nop
    rst $30
    add hl, hl
    nop
    sbc h
    nop
    rst $30
    ld a, [hl+]
    nop
    sbc h
    nop
    rst $30
    inc l
    nop
    sbc h
    nop
    rst $30
    rlca
    nop
    and h
    nop
    rst $30
    ld a, [bc]
    nop
    and h
    nop
    rst $30
    dec l
    nop
    and h
    nop
    rst $30
    dec sp
    nop
    and h
    nop
    rst $30
    ld e, b
    nop
    and h
    nop
    rst $30
    ld e, d
    nop
    and h
    nop
    rst $30
    ld h, h
    nop
    and h
    nop
    rst $30
    ld [hl], h
    nop
    and h
    nop
    rst $30
    ld a, h
    nop
    and h
    nop
    ld hl, sp+$32
    nop
    cp l
    nop
    ld hl, sp+$3a
    nop
    cp l
    nop
    ld hl, sp+$41
    nop
    cp l
    nop
    ld hl, sp+$42
    nop
    cp l
    nop
    ld hl, sp+$7f
    nop
    push bc
    nop
    ld hl, sp-$7f
    nop
    push bc
    nop
    rst $38
    ld a, [$c969]
    or a
    ret z

    ld a, [$c8ea]
    bit 7, a
    ret nz

    ld hl, $c939
    inc [hl]
    xor a
    ld [$c93e], a
    ld a, [$c969]
    bit 7, a
    jr nz, jr_016_5b72

    ld a, [$c968]
    ld [$c935], a
    xor a
    ld [$c939], a

jr_016_5b72:
    ld hl, $010c
    rst $10
    ld a, [$c935]
    add a
    add a
    add a
    ld hl, $70a6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$c936], a
    ld a, [hl+]
    ld [$c937], a
    ld a, [hl+]
    ld [$c938], a
    push hl
    ld a, [hl+]
    ld [$c93a], a
    ld a, [hl+]
    ld [$c93b], a
    inc hl
    inc hl
    ld a, [hl]
    ld [$c93c], a
    pop hl
    ld a, [$c939]
    ld b, a
    inc a
    cp [hl]
    jr z, jr_016_5be1

    ld a, [$c935]
    or a
    jr z, jr_016_5bbf

    ld a, [$c899]
    bit 4, a
    jr z, jr_016_5bbf

    ld a, $03
    call Call_000_1dfb
    cp $02
    jr z, jr_016_5c1c

jr_016_5bbf:
    ld a, [$c936]
    add a
    add a
    add a
    add a
    ld hl, $71a6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_5fc0
    ld [$c936], a
    ld a, [$c936]
    ld [$c968], a
    ld a, $01
    ld [$c969], a
    ret


jr_016_5be1:
    ld a, [$c935]
    add a
    add a
    add a
    ld hl, $70aa
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    or $08
    ld [$c96f], a
    ld a, b
    and $0f
    ld [$c970], a
    ld a, [hl+]
    swap a
    ld b, a
    and $f0
    or $08
    ld [$c971], a
    ld a, b
    and $0f
    ld [$c972], a
    ret


jr_016_5c1c:
    ld a, [$c937]
    add a
    add a
    add a
    ld hl, $72a6
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_5fc0
    ld [$c937], a
    rst $00
    ld b, d
    ld e, h
    cp c
    ld e, h
    bit 3, h
    db $ec
    ld e, h
    dec c
    ld e, l
    ld l, $5d
    ret c

    ld e, [hl]
    ld c, h
    ld e, a
    call Call_016_6db0

Call_016_5c45:
    ld a, [$c899]
    ld b, a
    ld a, $03
    call Call_000_1dfb
    cp $01
    jr z, jr_016_5c77

    cp $02
    jr z, jr_016_5c98

    ld a, $5a
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


jr_016_5c77:
    ld a, $5b
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


jr_016_5c98:
    ld a, $5c
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0068
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0048
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


    ld hl, $d9cf
    ld bc, $0008
    ld a, $ff
    call Call_000_12c7
    call Call_016_6ddb
    call Call_016_5c45
    ret


    ld a, $53
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0068
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


    ld a, $51
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0068
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


    ld a, $50
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0068
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


    xor a
    ld [$d9cf], a
    ld [$d9d0], a
    call Call_016_5e38
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$d9d1], a
    ld a, h
    ld [$d9d2], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$d9d3], a
    ld a, h
    ld [$d9d4], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$d9d5], a
    ld a, h
    ld [$d9d6], a
    call Call_016_5e38
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$d9d9], a
    ld a, h
    ld [$d9da], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$d9db], a
    ld a, h
    ld [$d9dc], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$d9dd], a
    ld a, h
    ld [$d9de], a
    call Call_016_5e38
    ld hl, $d7ca
    call Call_016_5dc6
    ld a, $52
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0068
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    xor a
    ld [$d9cd], a
    ret


Call_016_5dc6:
    push hl
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    push hl
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    call Call_016_5e2e
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$da02]
    or a
    ret z

    push hl
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    call Call_016_5e2e
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$da02]
    cp $01
    ret z

    push hl
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    call Call_016_5e2e
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ret


Call_016_5e2e:
    ld hl, $1401
    rst $10
    ld a, [$da18]
    add $10
    ret


Call_016_5e38:
    ld hl, $0000
    ld c, $00
    ld a, [$ca8e]
    call Call_016_5e91
    ld a, [$ca8f]
    call Call_016_5e91
    ld a, [$ca90]
    call Call_016_5e91
    ld a, c
    call Call_000_1e0d
    ld a, l
    ld hl, $0209
    cp $04
    jr c, jr_016_5ea7

    ld hl, $0d12
    cp $0a
    jr c, jr_016_5ea7

    ld hl, $2112
    cp $10
    jr c, jr_016_5ea7

    ld hl, $3912
    cp $16
    jr c, jr_016_5ea7

    ld hl, $5112
    cp $1c
    jr c, jr_016_5ea7

    ld hl, $6912
    cp $22
    jr c, jr_016_5ea7

    ld hl, $8112
    cp $28
    jr c, jr_016_5ea7

    ld hl, $9d12
    cp $2e
    jr c, jr_016_5ea7

    ld hl, $b512
    jr jr_016_5ea7

Call_016_5e91:
    cp $ff
    ret z

    push bc
    push hl
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    pop hl
    pop bc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc c
    ret


jr_016_5ea7:
    ld a, $02
    ld [$da02], a
    call Call_016_5ec9
    ld [$da03], a
    call Call_016_5ec9
    ld [$da05], a
    call Call_016_5ec9
    ld [$da07], a
    xor a
    ld [$da04], a
    ld [$da06], a
    ld [$da08], a
    ret


Call_016_5ec9:
    push hl
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, l
    call Call_000_1dfb
    pop hl
    add h
    ret


    ld a, [$c899]
    ld b, a
    ld a, $03
    call Call_000_1dfb
    cp $01
    jr z, jr_016_5f0a

    cp $02
    jr z, jr_016_5f2b

    ld a, $57
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $00f8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $00b8
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


jr_016_5f0a:
    ld a, $58
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0018
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0028
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


jr_016_5f2b:
    ld a, $59
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0018
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0028
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


    ld a, [$c899]
    ld b, a
    ld a, $03
    call Call_000_1dfb
    cp $01
    jr z, jr_016_5f7e

    cp $02
    jr z, jr_016_5f9f

    ld a, $54
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $00d8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $00d8
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


jr_016_5f7e:
    ld a, $55
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $0048
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0168
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


jr_016_5f9f:
    ld a, $56
    ld [$c968], a
    ld a, $00
    ld [$c969], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $00b8
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ret


Call_016_5fc0:
    push hl
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $64
    call Call_000_1e0d
    pop hl
    ld c, a
    ld b, $ff

jr_016_5fd5:
    ld a, [hl]
    inc b
    inc hl
    or a
    jr z, jr_016_5fd5

    cp $64
    jr z, jr_016_5fe2

    cp c
    jr c, jr_016_5fd5

jr_016_5fe2:
    ld a, b
    ret


    call Call_016_6e14
    ld a, [$c969]
    or a
    jr nz, jr_016_6002

    ld a, $ff
    ld [$c926], a
    xor a
    ld [$c92b], a
    ld [$c92c], a
    xor a
    ld [$c92d], a
    xor a
    ld [$c92e], a
    ret


jr_016_6002:
    ld de, $2e15
    ld hl, $8500
    call Call_000_1577
    ld de, $2e16
    ld hl, $8540
    call Call_000_1577
    ld de, $2e17
    ld hl, $8580
    call Call_000_1577
    ld de, $2e18
    ld hl, $85c0
    call Call_000_1577
    ld de, $2e19
    ld hl, $8600
    call Call_000_1577
    ld de, $2e1a
    ld hl, $8640
    call Call_000_1577
    ld de, $2e1b
    ld hl, $8680
    call Call_000_1577
    ld de, $2e1c
    ld hl, $86c0
    call Call_000_1577
    ld a, [$c8ea]
    bit 7, a
    jr z, @+$0c

    xor a
    ld [$c8ec], a
    ret


    nop
    nop
    nop
    ld bc, $cd02
    ret nc

    ld [de], a
    ld a, [$c899]
    ld b, a
    ld a, $05
    call Call_000_1dfb
    ld hl, $6056
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c93f], a
    ld hl, $c950
    ld bc, $0010
    xor a
    call Call_000_12c7
    ld hl, $c940
    ld bc, $0010
    ld a, $ff
    call Call_000_12c7
    ld a, [$c93f]
    cp $02
    jr nz, jr_016_60b9

    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $15
    call Call_000_1dfb
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $36
    ld l, a
    ld a, h
    adc $77
    ld h, a
    ld de, $c940
    ld b, $10

jr_016_60b0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_016_60b0

    jp Jump_016_616c


jr_016_60b9:
    ld hl, $7096
    ld a, [$c93d]
    inc a
    ld b, a
    push hl
    ld a, [hl]
    ld c, a
    push bc
    ld a, b
    cp $09
    ld bc, $0000
    jr nc, jr_016_60d8

    ld a, [$c899]
    ld b, a

jr_016_60d1:
    inc b
    ld a, b
    and $05
    jr z, jr_016_60d1

    ld b, a

jr_016_60d8:
    push bc
    call Call_016_6800
    pop bc
    cp $0f
    jr z, jr_016_60d8

    pop bc
    push af
    ld a, c
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    ld [hl], a
    pop hl
    inc hl
    dec b

jr_016_60f2:
    push hl
    ld a, [hl]
    ld c, a
    push bc
    call Call_016_6744
    ld a, b
    or a
    ld a, $ff
    jr z, jr_016_6102

    call Call_016_6800

jr_016_6102:
    pop bc
    push af
    ld a, c
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    ld [hl], a
    pop hl
    inc hl
    dec b
    jr nz, jr_016_60f2

    ld hl, $7096
    ld b, $10

jr_016_611a:
    push hl
    ld a, [hl]
    cp $ff
    jr z, jr_016_6140

    ld c, a
    push bc
    call Call_016_6744
    ld a, b
    or a
    ld a, $0f
    jr z, jr_016_6132

    ld a, b
    xor $0f
    ld c, a
    call Call_016_6800

jr_016_6132:
    pop bc
    push af
    ld a, c
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    ld [hl], a

jr_016_6140:
    pop hl
    inc hl
    dec b
    jr nz, jr_016_611a

    ld hl, $c940
    ld b, $10

jr_016_614a:
    push bc
    push hl
    ld c, $0c
    ld a, [$c93f]
    cp $01
    jr z, jr_016_6162

    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $0c
    call Call_000_1dfb
    ld c, a

jr_016_6162:
    pop hl
    ld a, [hl]
    swap a
    add c
    ld [hl+], a
    pop bc
    dec b
    jr nz, jr_016_614a

Jump_016_616c:
    ld a, $40
    ld [$c0a9], a

jr_016_6171:
    ld a, [$c0a9]
    dec a
    ld [$c0a9], a
    jp z, $605b

    call Call_016_66ae
    ld a, [$c925]
    ld [$c960], a
    ldh a, [$a5]
    ld [$c0a5], a
    ldh a, [$a6]
    ld [$c0a6], a
    ldh a, [$a7]
    ld [$c0a7], a
    ldh a, [$a8]
    ld [$c0a8], a
    call Call_016_6afb
    jr z, jr_016_6171

    ld a, [$c0a7]
    ld [$c966], a
    and $f0
    ld l, a
    ld a, [$c0a8]
    ld [$c967], a
    sla l
    rla
    sla l
    rla
    ld h, a
    ld a, [$c0a6]
    ld [$c965], a
    ld d, a
    ld a, [$c0a5]
    ld [$c964], a
    srl d
    rra
    srl d
    rra
    srl d
    rra
    and $1e
    ld e, a
    ld d, $00
    add hl, de
    ld a, l
    ld [$c962], a
    ld a, h
    ld [$c963], a
    ld a, [$c960]
    add a
    add a
    ld hl, $2da7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c964]
    add [hl]
    ld [$c964], a
    inc hl
    ld a, [$c965]
    adc [hl]
    ld [$c965], a
    inc hl
    ld a, [$c966]
    add [hl]
    ld [$c966], a
    inc hl
    ld a, [$c967]
    adc [hl]
    ld [$c967], a
    inc hl
    ld a, $40
    ld [$c0a9], a

jr_016_620a:
    ld a, [$c0a9]
    dec a
    ld [$c0a9], a
    jp z, $605b

    call Call_016_6585
    ld a, [$c960]
    ld b, a
    ld a, [$c925]
    cp b
    jr z, jr_016_620a

    ld a, [$c925]
    ld [$c926], a
    add a
    add a
    ld hl, $2da7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$c927], a
    ld a, [hl+]
    ld [$c928], a
    ld a, [hl+]
    ld [$c929], a
    ld a, [hl+]
    ld [$c92a], a
    ld hl, $c927
    ldh a, [$a5]
    add [hl]
    ld [hl+], a
    ldh a, [$a6]
    adc [hl]
    ld [hl], a
    ld hl, $c929
    ldh a, [$a7]
    add [hl]
    ld [hl+], a
    ldh a, [$a8]
    adc [hl]
    ld [hl], a
    ld a, [$cab4]
    or a
    jr z, jr_016_6262

    cp $01
    jr nz, jr_016_6266

jr_016_6262:
    xor a
    ld [$c92d], a

jr_016_6266:
    ld a, [$c92d]
    ld [$c92b], a
    cp $04
    jr z, jr_016_627e

    cp $05
    jr z, jr_016_627e

    cp $06
    jr z, jr_016_627e

    cp $07
    jr z, jr_016_627e

    jr jr_016_628a

jr_016_627e:
    call Call_000_12d0
    ld a, [$c899]
    bit 0, a
    jr z, jr_016_62cf

    jr jr_016_629f

jr_016_628a:
    call Call_000_12d0
    ld a, [$c938]
    ld hl, $7886
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c899]
    cp [hl]
    jr c, jr_016_62b5

jr_016_629f:
    xor a
    ld [$c92b], a
    ld [$c92c], a
    xor a
    ld [$c92d], a
    xor a
    ld [$c92e], a
    ld a, $ff
    ld [$c926], a
    jr jr_016_62cf

jr_016_62b5:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $05
    call Call_000_1dfb
    ld [$c92c], a
    call Call_000_12d0
    ld a, [$c899]
    and $03
    ld [$c92b], a

jr_016_62cf:
    xor a
    ld [$c92d], a
    ld a, $40
    ld [$c0a9], a

Jump_016_62d8:
jr_016_62d8:
    ld a, [$c0a9]
    dec a
    ld [$c0a9], a
    jp z, $605b

    call Call_016_661b
    ld hl, $c960
    ld a, [$c925]
    cp [hl]
    jr nz, jr_016_62f1

    call Call_016_661b

jr_016_62f1:
    ld a, [$c925]
    ld [$c0af], a
    call Call_016_68c6
    jp z, Jump_016_62d8

    ld a, [$c926]
    ld b, a
    ld a, [$c925]
    cp b
    jr z, jr_016_62d8

    ld a, [$c925]
    ld [$c0a0], a
    add a
    add a
    ld hl, $2da7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$c96f], a
    ld a, [hl+]
    ld [$c970], a
    ld a, [hl+]
    ld [$c971], a
    ld a, [hl+]
    ld [$c972], a
    ldh a, [$a5]
    ld [$c0a1], a
    ldh a, [$a6]
    ld [$c0a2], a
    ldh a, [$a7]
    ld [$c0a3], a
    ldh a, [$a8]
    ld [$c0a4], a
    ld hl, $c96f
    ldh a, [$a5]
    add [hl]
    ld [hl+], a
    ldh a, [$a6]
    adc [hl]
    ld [hl], a
    ld hl, $c971
    ldh a, [$a7]
    add [hl]
    ld [hl+], a
    ldh a, [$a8]
    adc [hl]
    ld [hl], a
    ld hl, $c100
    ld bc, $0010
    xor a
    call Call_000_12c7
    ld a, [$c938]
    ld hl, $732f
    add a
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    push af
    ld a, [$c899]
    ld b, a
    ld a, [hl+]
    inc a
    push hl
    call Call_000_1dfb
    pop hl
    ld b, a
    pop af
    add b
    ld b, a
    ld c, [hl]
    push bc
    ld hl, $c940
    ld b, $10
    ld c, $00

jr_016_6386:
    ld a, [hl+]
    and $f0
    cp $f0
    jr z, jr_016_638e

    inc c

jr_016_638e:
    dec b
    jr nz, jr_016_6386

    ld a, c
    pop bc
    cp $06
    jr nc, jr_016_639b

    srl b
    res 7, b

jr_016_639b:
    ld hl, $d793
    ld a, b
    or a
    jr z, jr_016_63ac

jr_016_63a2:
    push bc
    ld [hl], $ff
    call Call_016_6432
    pop bc
    dec b
    jr nz, jr_016_63a2

jr_016_63ac:
    ld [hl], $ff
    ret


Call_016_63af:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a

jr_016_63b6:
    inc b
    ld a, b
    and $0f
    ld [$c925], a
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $f0
    cp $f0
    jr z, jr_016_63b6

    ld hl, $0b08
    rst $10
    ld hl, $c300
    call Call_000_14cf
    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a

jr_016_63e1:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $08
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $06
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_000_1e31
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    ret z

    cp $0d
    ret z

    jr jr_016_63e1

Call_016_6432:
    push hl
    ld a, $10
    ld [$c0a9], a
    push bc
    ld a, [$c938]
    ld hl, $7326
    add a
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_016_5fc0
    ld [$c0ae], a
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $64
    call Call_000_1e0d
    pop bc
    cp c
    jr z, jr_016_646d

    jr nc, jr_016_646d

    ld a, [$c0ae]
    add $10
    ld [$c0ae], a

Jump_016_646d:
jr_016_646d:
    ld a, [$c0a9]
    dec a
    ld [$c0a9], a
    jr nz, jr_016_6478

    pop hl
    ret


jr_016_6478:
    call Call_016_63af
    ld a, [$c925]
    ld b, a
    ld a, [$c960]
    cp b
    jr nz, jr_016_6488

    call Call_016_63af

jr_016_6488:
    ld a, [$c925]
    ld b, a
    ld a, [$c0af]
    cp b
    jr nz, jr_016_6495

    call Call_016_63af

jr_016_6495:
    ld a, [$c925]
    ld hl, $c100
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_016_64a8

    call Call_016_63af

jr_016_64a8:
    ldh a, [$a5]
    ld [$c0aa], a
    ldh a, [$a6]
    ld [$c0ab], a
    ldh a, [$a7]
    ld [$c0ac], a
    ldh a, [$a8]
    ld [$c0ad], a
    call Call_016_6955
    jr z, jr_016_646d

    ld a, [$c0aa]
    ldh [$a5], a
    ld a, [$c0ab]
    ldh [$a6], a
    ld a, [$c0ac]
    ldh [$a7], a
    ld a, [$c0ad]
    ldh [$a8], a
    call Call_016_68c6
    jr z, jr_016_646d

    call Call_016_68ea
    jr z, jr_016_646d

    call Call_016_690e
    jr z, jr_016_646d

    ld a, [$c925]
    ld b, a
    ld a, [$c926]
    cp b
    jp z, Jump_016_646d

    ld a, [$c925]
    ld hl, $c100
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jp z, Jump_016_646d

    inc [hl]
    ld a, [$c925]
    add a
    add a
    ld hl, $2da7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ldh [$db], a
    ld a, [hl+]
    ldh [$dc], a
    ld a, [hl+]
    ldh [$dd], a
    ld a, [hl+]
    ldh [$de], a
    ld hl, $ffdb
    ldh a, [$a5]
    add [hl]
    ld [hl+], a
    ldh a, [$a6]
    adc [hl]
    ld [hl], a
    ld hl, $ffdd
    ldh a, [$a7]
    add [hl]
    ld [hl+], a
    ldh a, [$a8]
    adc [hl]
    ld [hl], a
    pop hl
    ld a, [$c0ae]
    ld [hl+], a
    push hl
    ld a, [$c0ae]
    and $0f
    ld hl, $7426
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_016_6564

    ld a, [$c938]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    add hl, hl
    add hl, de
    ld a, l
    add $36
    ld l, a
    ld a, h
    adc $74
    ld h, a
    call Call_016_5fc0

jr_016_6564:
    pop hl
    ld [hl+], a
    ldh a, [$db]
    swap a
    and $0f
    ld b, a
    ldh a, [$dc]
    swap a
    and $f0
    or b
    ld [hl+], a
    ldh a, [$dd]
    swap a
    and $0f
    ld b, a
    ldh a, [$de]
    swap a
    and $f0
    or b
    ld [hl+], a
    ret


Call_016_6585:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a

Jump_016_658c:
jr_016_658c:
    inc b
    ld a, b
    and $0f
    ld [$c925], a
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $f0
    cp $f0
    jr z, jr_016_658c

    ld hl, $0b08
    rst $10
    ld hl, $c300
    call Call_000_14cf
    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a
    ld a, $40
    ldh [$d5], a

jr_016_65bb:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $08
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $06
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_000_1e31
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    ret z

    cp $0d
    ret z

    cp $0e
    ret z

    ldh a, [$d5]
    dec a
    ldh [$d5], a
    jr nz, jr_016_65bb

    ld a, [$c925]
    ld b, a
    jp Jump_016_658c


Call_016_661b:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a

Jump_016_6622:
jr_016_6622:
    inc b
    ld a, b
    and $0f
    ld [$c925], a
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $f0
    cp $f0
    jr z, jr_016_6622

    ld hl, $0b08
    rst $10
    ld hl, $c300
    call Call_000_14cf
    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a
    ld a, $40
    ldh [$d5], a

jr_016_6651:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $08
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $06
    call Call_000_1dfb
    add $01
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_000_1e31
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    ret z

    cp $0d
    ret z

    ldh a, [$d5]
    dec a
    ldh [$d5], a
    jr nz, jr_016_6651

    ld a, [$c925]
    ld b, a
    jp Jump_016_6622


Call_016_66ae:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a

Jump_016_66b5:
jr_016_66b5:
    inc b
    ld a, b
    and $0f
    ld [$c925], a
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $f0
    cp $f0
    jr z, jr_016_66b5

    ld hl, $0b08
    rst $10
    ld hl, $c300
    call Call_000_14cf
    xor a
    ldh [$b7], a
    ldh [$b8], a
    xor a
    ldh [$bb], a
    ldh [$bc], a
    ld a, $40
    ldh [$d5], a

jr_016_66e4:
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $06
    call Call_000_1dfb
    add $02
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $04
    call Call_000_1dfb
    add $02
    swap a
    ld h, a
    and $f0
    or $08
    ld l, a
    ld a, h
    and $0f
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_000_1e31
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    ret z

    cp $0d
    ret z

    cp $0e
    ret z

    ldh a, [$d5]
    dec a
    ldh [$d5], a
    jr nz, jr_016_66e4

    ld a, [$c925]
    ld b, a
    jp Jump_016_66b5


Call_016_6744:
    ld bc, $0000
    ld d, a
    sub $04
    jr c, jr_016_676f

    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_016_6773

    add a
    add a
    ld hl, $7055
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 2, [hl]
    jr z, jr_016_676f

    ld a, $08
    or b
    ld b, a
    jr jr_016_6773

jr_016_676f:
    ld a, $08
    or c
    ld c, a

jr_016_6773:
    ld a, d
    add $04
    cp $10
    jr nc, jr_016_679d

    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_016_67a1

    add a
    add a
    ld hl, $7055
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 3, [hl]
    jr z, jr_016_679d

    ld a, $04
    or b
    ld b, a
    jr jr_016_67a1

jr_016_679d:
    ld a, $04
    or c
    ld c, a

jr_016_67a1:
    ld a, d
    and $03
    jr z, jr_016_67cb

    ld a, d
    dec a
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_016_67cf

    add a
    add a
    ld hl, $7055
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    jr z, jr_016_67cb

    ld a, $02
    or b
    ld b, a
    jr jr_016_67cf

jr_016_67cb:
    ld a, $02
    or c
    ld c, a

jr_016_67cf:
    ld a, d
    and $03
    cp $03
    jr z, jr_016_67fb

    ld a, d
    inc a
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_016_67ff

    add a
    add a
    ld hl, $7055
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 1, [hl]
    jr z, jr_016_67fb

    ld a, $01
    or b
    ld b, a
    jr jr_016_67ff

jr_016_67fb:
    ld a, $01
    or c
    ld c, a

jr_016_67ff:
    ret


Call_016_6800:
    ld de, $c500
    ld hl, $7055

jr_016_6806:
    ld a, [hl]
    cp $ff
    jr z, jr_016_6826

    and c
    jr nz, jr_016_681c

    ld a, [hl]
    and b
    cp b
    jr nz, jr_016_681c

    push hl
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    pop hl

jr_016_681c:
    ld a, l
    add $04
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_016_6806

jr_016_6826:
    ld [de], a
    inc de
    ld [de], a
    ld hl, $c0a0
    ld bc, $0005
    ld a, $00
    call Call_000_12c7
    ld hl, $c501

jr_016_6837:
    ld a, [hl+]
    cp $ff
    jr z, jr_016_684b

    inc hl
    ld de, $c0a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    jr jr_016_6837

jr_016_684b:
    xor a
    ld [$c0a0], a
    ld a, [$c0a1]
    ld b, $14
    call Call_000_1dfb
    ld a, b
    ld [$c0a1], a
    ld a, [$c0a2]
    ld b, $28
    call Call_000_1dfb
    ld a, b
    ld [$c0a2], a
    ld a, [$c0a3]
    ld b, $3c
    call Call_000_1dfb
    ld a, b
    ld [$c0a3], a
    ld a, [$c0a4]
    ld b, $50
    call Call_000_1dfb
    ld a, b
    ld [$c0a4], a
    ld hl, $c501
    ld b, $00

jr_016_6884:
    ld a, [hl]
    cp $ff
    jr z, jr_016_689a

    ld de, $c0a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld b, a
    ld [hl], a
    inc hl
    inc hl
    jr jr_016_6884

jr_016_689a:
    push bc
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    pop af
    or a
    jr z, jr_016_68ad

    call Call_000_1e0d

jr_016_68ad:
    ld b, a
    ld hl, $c501

jr_016_68b1:
    ld a, [hl]
    cp $ff
    jr nz, jr_016_68ba

    ld a, $0f
    jr jr_016_68c5

jr_016_68ba:
    cp b
    jr c, jr_016_68c1

    dec hl
    ld a, [hl]
    jr jr_016_68c5

jr_016_68c1:
    inc hl
    inc hl
    jr jr_016_68b1

jr_016_68c5:
    ret


Call_016_68c6:
    ld hl, $c960
    ld a, [$c925]
    cp [hl]
    ret nz

    ld hl, $ffa5
    ld a, [$c0a5]
    cp [hl]
    ret nz

    inc hl
    ld a, [$c0a6]
    cp [hl]
    ret nz

    ld hl, $ffa7
    ld a, [$c0a7]
    cp [hl]
    ret nz

    inc hl
    ld a, [$c0a8]
    cp [hl]
    ret


Call_016_68ea:
    ld hl, $c0a0
    ld a, [$c925]
    cp [hl]
    ret nz

    ld hl, $ffa5
    ld a, [$c0a1]
    cp [hl]
    ret nz

    inc hl
    ld a, [$c0a2]
    cp [hl]
    ret nz

    ld hl, $ffa7
    ld a, [$c0a3]
    cp [hl]
    ret nz

    inc hl
    ld a, [$c0a4]
    cp [hl]
    ret


Call_016_690e:
    ld hl, $d793

jr_016_6911:
    ld a, [hl]
    cp $ff
    jr nz, jr_016_6918

    or a
    ret


jr_016_6918:
    push hl
    call Call_016_6924
    pop hl
    ret z

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_016_6911

Call_016_6924:
    inc hl
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld a, $0a
    call Call_000_1dfb
    ld a, b
    ldh [$da], a
    pop hl
    ld a, [hl]
    and $f8
    srl a
    ld b, a
    ldh a, [$da]
    add b
    ldh [$da], a
    ld a, [hl]
    and $07
    swap a
    or $08
    ldh [$db], a
    ld hl, $ffda
    ld a, [$c925]
    cp [hl]
    ret nz

    ld hl, $ffa7
    ldh a, [$db]
    cp [hl]
    ret


Call_016_6955:
    ld a, [$c0ae]
    and $f0
    jp z, Jump_016_6d93

    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b0], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b1], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b2], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b3], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b4], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b5], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b6], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b7], a
    ld a, [$c0aa]
    ld l, a
    ld a, [$c0ab]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0ac]
    ld l, a
    ld a, [$c0ad]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b8], a
    jp Jump_016_6c96


Call_016_6afb:
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b0], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b1], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b2], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b3], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b4], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b5], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    add $f0
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b6], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b7], a
    ld a, [$c0a5]
    ld l, a
    ld a, [$c0a6]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a5], a
    ld a, h
    ldh [$a6], a
    ld a, [$c0a7]
    ld l, a
    ld a, [$c0a8]
    ld h, a
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$a7], a
    ld a, h
    ldh [$a8], a
    call Call_016_6d99
    ld a, b
    ld [$c0b8], a

Jump_016_6c96:
    ld a, [$c0b3]
    or a
    jr z, jr_016_6cb1

    ld a, [$c0b2]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b5]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b8]
    or a
    jp nz, Jump_016_6d97

jr_016_6cb1:
    ld a, [$c0b7]
    or a
    jr z, jr_016_6ccc

    ld a, [$c0b0]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b1]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b2]
    or a
    jp nz, Jump_016_6d97

jr_016_6ccc:
    ld a, [$c0b1]
    or a
    jr z, jr_016_6ce7

    ld a, [$c0b6]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b7]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b8]
    or a
    jp nz, Jump_016_6d97

jr_016_6ce7:
    ld a, [$c0b5]
    or a
    jr z, jr_016_6d02

    ld a, [$c0b0]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b3]
    or a
    jp nz, Jump_016_6d97

    ld a, [$c0b6]
    or a
    jp nz, Jump_016_6d97

jr_016_6d02:
    ld a, [$c0b0]
    or a
    jr z, jr_016_6d27

    ld a, [$c0b1]
    or a
    jr nz, jr_016_6d15

    ld a, [$c0b2]
    or a
    jp nz, Jump_016_6d97

jr_016_6d15:
    ld a, [$c0b3]
    or a
    jr nz, jr_016_6d21

    ld a, [$c0b6]
    or a
    jr nz, jr_016_6d97

jr_016_6d21:
    ld a, [$c0b8]
    or a
    jr nz, jr_016_6d97

jr_016_6d27:
    ld a, [$c0b2]
    or a
    jr z, jr_016_6d4b

    ld a, [$c0b1]
    or a
    jr nz, jr_016_6d39

    ld a, [$c0b0]
    or a
    jr nz, jr_016_6d97

jr_016_6d39:
    ld a, [$c0b5]
    or a
    jr nz, jr_016_6d45

    ld a, [$c0b8]
    or a
    jr nz, jr_016_6d97

jr_016_6d45:
    ld a, [$c0b6]
    or a
    jr nz, jr_016_6d97

jr_016_6d4b:
    ld a, [$c0b6]
    or a
    jr z, jr_016_6d6f

    ld a, [$c0b3]
    or a
    jr nz, jr_016_6d5d

    ld a, [$c0b0]
    or a
    jr nz, jr_016_6d97

jr_016_6d5d:
    ld a, [$c0b7]
    or a
    jr nz, jr_016_6d69

    ld a, [$c0b8]
    or a
    jr nz, jr_016_6d97

jr_016_6d69:
    ld a, [$c0b2]
    or a
    jr nz, jr_016_6d97

jr_016_6d6f:
    ld a, [$c0b8]
    or a
    jr z, jr_016_6d93

    ld a, [$c0b5]
    or a
    jr nz, jr_016_6d81

    ld a, [$c0b2]
    or a
    jr nz, jr_016_6d97

jr_016_6d81:
    ld a, [$c0b7]
    or a
    jr nz, jr_016_6d8d

    ld a, [$c0b6]
    or a
    jr nz, jr_016_6d97

jr_016_6d8d:
    ld a, [$c0b0]
    or a
    jr nz, jr_016_6d97

Jump_016_6d93:
jr_016_6d93:
    ld a, $01
    or a
    ret


Jump_016_6d97:
jr_016_6d97:
    xor a
    ret


Call_016_6d99:
    call Call_000_1e31
    ld b, $00
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    ret z

    cp $0d
    ret z

    cp $0e
    ret z

    ld b, $01
    ret


Call_016_6db0:
    ld hl, $d9cf
    ld b, $08

jr_016_6db5:
    push bc
    push hl
    call Call_016_6dc1
    pop hl
    pop bc
    ld [hl+], a
    dec b
    jr nz, jr_016_6db5

    ret


Call_016_6dc1:
    ld a, [$c938]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    add hl, hl
    add hl, de
    ld a, l
    add $36
    ld l, a
    ld a, h
    adc $74
    ld h, a
    call Call_016_5fc0
    ret


Call_016_6ddb:
    call Call_000_12d0
    ld a, [$c899]
    and $03
    ld hl, $d9cf
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $6e04
    push de
    push hl
    call Call_000_12d0
    ld a, [$c899]
    and $0f
    pop hl
    pop de
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ret


    inc bc
    inc b
    ld b, $0c
    dec d
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec h
    ld a, [de]
    dec de
    inc e
    dec h

Call_016_6e14:
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, $65
    call Call_000_1e0d
    ld hl, $6e3d

jr_016_6e27:
    cp [hl]
    jr z, jr_016_6e32

    jr c, jr_016_6e32

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_016_6e27

jr_016_6e32:
    inc hl
    inc hl
    ld a, [hl+]
    ld [$ca39], a
    ld a, [hl+]
    ld [$ca3a], a
    ret


    ld [bc], a
    nop
    ld c, h
    inc b
    inc b
    nop
    or b
    inc b
    ld b, $00
    inc d
    dec b
    ld [$7800], sp
    dec b
    ld a, [bc]
    nop
    call c, Call_000_0c05
    nop
    ld b, b
    ld b, $0e
    nop
    and h
    ld b, $10
    nop
    ld [$1207], sp
    nop
    ld l, h
    rlca
    inc d
    nop
    ret nc

    rlca
    ld d, $00
    inc [hl]
    ld [$0018], sp
    sbc b
    ld [$001a], sp
    db $fc
    ld [$001c], sp
    ld h, b
    add hl, bc
    ld e, $00
    call nz, Call_000_2009
    nop
    jr z, jr_016_6e87

    ld [hl+], a
    nop
    adc h
    ld a, [bc]
    inc h
    nop
    ldh a, [$0a]
    ld h, $00

jr_016_6e87:
    ld d, h
    dec bc
    jr z, jr_016_6e8b

jr_016_6e8b:
    cp b
    dec bc
    ld a, [hl+]
    nop
    inc e
    inc c
    inc l
    nop
    add b
    inc c
    ld l, $00
    db $e4
    inc c
    jr nc, jr_016_6e9b

jr_016_6e9b:
    ld c, b
    dec c
    ld [hl-], a
    nop
    xor h
    dec c
    inc [hl]
    nop
    db $10
    ld c, $36
    nop
    ld [hl], h
    ld c, $38
    nop
    ret c

    ld c, $3a
    nop
    inc a
    rrca
    inc a
    nop
    and b
    rrca
    ld a, $00
    inc b
    db $10
    ld b, b
    nop
    ld l, b
    db $10
    ld b, d
    nop
    call z, Call_016_4410
    nop
    jr nc, jr_016_6ed6

    ld b, [hl]
    nop
    sub h
    ld de, $0048
    ld hl, sp+$11
    ld c, d
    nop
    ld e, h
    ld [de], a
    ld c, h
    nop
    ret nz

    ld [de], a
    ld c, [hl]

jr_016_6ed6:
    nop
    inc h
    inc de
    ld d, b
    nop
    adc b
    inc de
    ld d, d
    nop
    db $ec
    inc de
    ld d, h
    nop
    ld d, b
    inc d
    ld d, [hl]
    nop
    or h
    inc d
    ld e, b
    nop
    jr jr_016_6f02

    ld e, d
    nop
    ld a, h
    dec d
    ld e, h
    nop
    ldh [$15], a
    ld e, [hl]
    nop
    ld b, h
    ld d, $60
    nop
    xor b
    ld d, $62
    nop
    inc c
    rla
    rst $38

jr_016_6f02:
    nop
    ld [hl], b
    rla
    ld a, [$c8eb]
    bit 2, a
    ret nz

    bit 5, a
    ret nz

    bit 6, a
    ret nz

    ld a, [$c850]
    or a
    ret nz

    ld a, [$c93e]
    bit 1, a
    ret nz

    ld a, [$c969]
    or a
    jr nz, jr_016_6f39

    ld bc, $0050
    ld a, [$c968]
    cp $54
    jr z, jr_016_6f62

    cp $55
    jr z, jr_016_6f62

    cp $56
    jr z, jr_016_6f62

    ld bc, $0064
    jr jr_016_6f62

jr_016_6f39:
    ld hl, $6fab
    ld a, [$c968]
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$aa]
    srl a
    srl a
    cp $0c
    jr z, jr_016_6f5f

    inc hl
    inc hl
    cp $0d
    jr z, jr_016_6f5f

    inc hl
    inc hl
    cp $0e
    jr z, jr_016_6f5f

    ret


jr_016_6f5f:
    ld a, [hl+]
    ld b, [hl]
    ld c, a

jr_016_6f62:
    push bc
    ld hl, $010d
    rst $10
    ld hl, $702b
    ld a, [$c8a9]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop bc
    call Call_000_1de6
    ld a, $40
    call Call_000_1e1e
    ld e, l
    ld d, h
    ld a, [$ca39]
    ld l, a
    ld a, [$ca3a]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_016_6fa2

    ld hl, $010b
    rst $10
    ld hl, $c8eb
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $00
    ld [$da09], a
    ret


jr_016_6fa2:
    ld a, l
    ld [$ca39], a
    ld a, h
    ld [$ca3a], a
    ret


    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    adc d
    nop
    sub [hl]
    nop
    adc d
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc h
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc h
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    nop
    nop
    adc d
    nop
    adc d
    nop
    adc d
    nop
    nop
    nop
    ld h, h
    nop
    or h
    nop
    ld a, [$0000]
    nop
    ld h, h
    nop
    or h
    nop
    or h
    nop
    nop
    nop
    ld h, h
    nop
    or h
    nop
    ld a, [$0000]
    nop
    ld h, h
    nop
    or h
    nop
    or h
    nop
    nop
    nop
    sub [hl]
    nop
    or h
    nop
    sub [hl]
    nop
    nop
    nop
    db $10
    dec d
    jr nz, @+$42

    ld d, b
    ld h, b
    ld [hl], b
    add b
    ld de, $7896
    ld a, [$c93f]
    cp $02
    jr nz, jr_016_7040

    ld de, $7a96

jr_016_7040:
    ld a, [$c925]
    ld hl, $c940
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    rrca
    nop
    inc b
    nop
    rlca
    ld bc, $0003
    dec bc
    ld [bc], a
    inc bc
    nop
    dec c
    inc bc
    inc bc
    nop
    ld c, $04
    inc bc
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    dec b
    ld b, $02
    nop
    ld b, $07
    ld [bc], a
    nop
    add hl, bc
    ld [$0002], sp
    ld a, [bc]
    add hl, bc
    ld [bc], a
    nop
    inc c
    ld a, [bc]
    ld [bc], a
    nop
    ld [$010b], sp
    nop
    inc b
    inc c
    ld bc, $0200
    dec c
    ld bc, $0100
    ld c, $01
    nop
    nop
    rrca
    nop
    nop
    rst $38
    dec b
    ld b, $0a
    add hl, bc
    ld [$0004], sp
    ld bc, $0302
    rlca
    dec bc
    rrca
    ld c, $0d
    inc c
    nop
    nop
    nop
    dec b
    jr nc, jr_016_70b3

    ld [bc], a
    ld bc, $0101
    ld bc, $3105

jr_016_70b3:
    ld bc, $0106
    ld bc, $0201
    ld b, $32
    dec b
    ld bc, $0201
    ld bc, $0502
    inc sp
    inc b
    ld b, $01
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $34
    nop
    rlca
    ld bc, $0203
    inc bc
    add hl, bc
    dec [hl]
    ld bc, $0106
    inc bc
    ld [bc], a
    inc b
    ld [$0536], sp
    ld bc, $0302
    inc bc
    inc b
    add hl, bc
    scf
    dec b
    rlca
    ld [bc], a
    inc b
    inc bc
    dec b
    inc c
    jr c, jr_016_70f4

    inc bc
    ld [bc], a
    inc b
    inc b
    dec b
    dec bc
    add hl, sp
    ld [bc], a

jr_016_70f4:
    ld bc, $0402
    inc b
    dec b
    dec bc
    inc a
    ld [bc], a
    ld b, $02
    inc b
    inc b
    ld b, $0c
    db $10
    ld [$0205], sp
    dec b
    ld b, $06
    ld c, $3b
    inc b
    ld bc, $0502
    ld b, $06
    rrca
    ld a, [hl-]
    ld bc, $0207
    dec b
    ld b, $07
    db $10
    dec a
    inc b
    rlca
    ld [bc], a
    ld b, $07
    rlca
    ld [de], a
    ld a, $04
    ld bc, $0703
    rlca
    ld [$3f14], sp
    ld b, $03
    inc bc
    rlca
    dec b
    ld [$4013], sp
    inc b
    ld b, $03
    ld [$0908], sp
    rla
    ld b, d
    inc b
    ld b, $03
    ld [$0909], sp
    add hl, de
    ld b, e
    dec b
    dec b
    inc bc
    ld [$0905], sp
    add hl, de
    ld b, h
    nop
    inc bc
    inc bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec e
    ld b, l
    inc b
    rlca
    inc bc
    ld a, [bc]
    dec bc
    dec bc
    ld e, $46
    dec b
    ld b, $03
    ld a, [bc]
    dec bc
    dec bc
    dec e
    ld b, a
    dec b
    ld b, $03
    ld a, [bc]
    dec bc
    dec bc
    dec de
    ld c, b
    inc b
    rlca
    inc bc
    dec bc
    inc c
    inc c
    ld e, $49
    inc b
    rlca
    inc bc
    dec bc
    inc c
    inc c
    ld e, $4a
    add hl, bc
    rlca
    inc bc
    dec bc
    dec c
    dec c
    ld e, $4b
    inc b
    rlca
    inc bc
    inc c
    dec c
    dec c
    ld e, $4c
    dec b
    dec b
    inc bc
    dec c
    ld c, $0e
    dec de
    ld c, l
    dec b
    rlca
    inc bc
    ld c, $0e
    ld c, $1e
    ld c, [hl]
    ld [$030c], sp
    rrca
    rrca
    rrca
    ld h, e
    ld c, a
    dec b
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_016_71c3

jr_016_71c3:
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_016_71d1

jr_016_71d1:
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    ld e, $28
    ld h, h
    nop
    nop
    inc d
    jr z, jr_016_7225

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $3c
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld h, h
    nop
    nop
    nop
    nop
    ld e, $3c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $3c
    nop
    nop
    nop
    nop
    ld d, b
    ld h, h

jr_016_7225:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    jr z, jr_016_7230

jr_016_7230:
    nop
    nop
    inc a
    nop
    ld h, h
    nop
    ld a, [bc]
    inc d
    ld e, $23
    jr z, jr_016_723c

jr_016_723c:
    ld [hl-], a
    nop
    inc a
    ld b, [hl]
    nop
    nop
    ld d, b
    nop
    ld h, h
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    inc d
    nop
    jr z, jr_016_7250

jr_016_7250:
    nop
    nop
    inc a
    nop
    ld d, b
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    inc d
    nop
    jr z, jr_016_7260

jr_016_7260:
    inc a
    nop
    ld d, b
    nop
    ld h, h
    nop
    ld a, [bc]
    nop
    nop
    inc d
    ld e, $00
    jr z, jr_016_726e

jr_016_726e:
    ld [hl-], a
    inc a
    ld b, [hl]
    nop
    ld d, b
    nop
    ld e, d
    ld h, h
    nop
    ld a, [bc]
    nop
    inc d
    ld e, $00
    jr z, jr_016_727e

jr_016_727e:
    ld [hl-], a
    inc a
    ld b, [hl]
    nop
    ld d, b
    nop
    ld e, d
    ld h, h
    nop
    nop
    ld a, [bc]
    inc d
    ld e, $00
    jr z, jr_016_728e

jr_016_728e:
    ld [hl-], a
    inc a
    ld b, [hl]
    nop
    ld d, b
    nop
    ld e, d
    ld h, h
    dec b
    ld a, [bc]
    nop
    inc d
    ld e, $00
    jr z, jr_016_729e

jr_016_729e:
    ld [hl-], a
    inc a
    ld b, [hl]
    nop
    ld d, b
    nop
    ld e, d
    ld h, h
    inc d
    nop
    nop
    ld b, [hl]
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld h, h
    nop
    nop
    nop
    jr z, jr_016_72b8

jr_016_72b8:
    nop
    ld b, [hl]
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $3c
    nop
    ld h, h
    nop
    nop
    nop
    jr z, jr_016_7310

    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld c, e
    ld h, h
    nop
    nop
    nop
    nop
    nop
    ld e, $3c
    nop
    nop
    ld h, h
    rrca
    inc d
    ld e, $3c
    ld e, d
    ld h, h
    nop
    nop
    rrca
    inc d
    nop
    ld [hl-], a
    ld d, b
    nop
    ld e, d
    ld h, h
    ld e, $00
    dec l
    inc a
    ld c, e
    ld e, d
    ld e, a
    ld h, h
    ld a, [bc]
    ld e, $28
    scf
    ld b, [hl]
    ld d, b
    ld e, d
    ld h, h
    dec b
    add hl, de
    jr z, jr_016_732f

    ld [hl-], a
    inc a
    ld d, b
    ld h, h
    dec b
    ld e, $28
    ld [hl-], a
    scf
    ld b, [hl]
    ld d, b
    ld h, h
    dec b
    inc hl

jr_016_7310:
    ld [hl-], a
    inc a
    ld b, c
    ld d, b
    ld e, d
    ld h, h
    dec b
    inc hl
    ld [hl-], a
    ld b, [hl]
    ld c, e
    ld e, d
    ld e, a
    ld h, h
    dec b
    add hl, de
    inc hl
    dec l
    scf
    ld d, b
    ld e, d
    ld h, h
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_732f:
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    ld [bc], a
    inc b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld h, h
    ld [bc], a
    inc b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld h, h
    ld [bc], a
    inc b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    ld b, $1e
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    ld b, $1e
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    ld b, $1e
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    inc b
    ld e, $00
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    inc b
    ld e, $00
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    inc b
    ld e, $00
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    inc b
    ld e, $00
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld h, h
    nop
    ld [bc], a
    ld e, $00
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff00
    ld bc, $0101
    ld bc, $0101
    ld bc, $5d00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    ld d, e
    ld e, b
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    nop
    inc [hl]
    dec [hl]
    ld d, e
    ld e, b
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ld a, [hl+]
    nop
    nop
    nop
    nop
    inc l
    ld l, $30
    ld [hl-], a
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $37
    nop
    nop
    ld c, a
    ld d, h
    ld d, a
    nop
    nop
    nop
    ld e, d
    ld e, e
    nop
    nop
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $20
    nop
    nop
    dec h
    nop
    ld a, [hl+]
    inc l
    ld l, $30
    ld [hl-], a
    nop
    nop
    inc sp
    nop
    nop
    inc [hl]
    dec [hl]
    ld c, c
    ld c, [hl]
    ld d, c
    ld d, d
    ld d, e
    nop
    ld d, [hl]
    ld e, b
    ld e, c
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0025
    nop
    add hl, hl
    ld a, [hl+]
    cpl
    ld sp, $3533
    scf
    jr c, jr_016_756d

    nop
    ld a, [hl-]
    dec sp
    nop
    nop
    ld b, b
    ld c, a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    ld d, a
    ld e, c
    nop
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec de
    nop
    jr nz, jr_016_757f

    inc h
    add hl, hl
    dec hl
    dec l
    cpl
    ld sp, $0032
    inc sp
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    ld c, c
    ld d, e
    ld d, h

jr_016_756d:
    ld d, l
    ld d, [hl]
    nop
    ld e, b
    nop
    ld e, c
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    nop

jr_016_757f:
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    inc h
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $30
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    dec [hl]
    nop
    nop
    nop
    nop
    ld b, h
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    ld e, b
    nop
    ld e, c
    ld e, e
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    nop
    jr nz, jr_016_75dd

    inc h
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $2f
    jr nc, jr_016_75c5

jr_016_75c5:
    nop
    ld sp, $3332
    nop
    dec a
    ld d, c
    ld d, e
    ld d, l
    ld d, [hl]
    nop
    ld e, b
    nop
    ld e, c
    ld e, e
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_75dd:
    ld h, b
    ld h, c
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    rla
    nop
    dec de
    dec e
    rra
    ld hl, $2523
    ld h, $27
    jr z, jr_016_75f6

jr_016_75f6:
    add hl, hl
    ld a, [hl+]
    dec hl
    nop
    jr nc, jr_016_7645

    ld c, e
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    nop
    ld d, d
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    rla
    nop
    dec de
    dec e
    rra
    ld hl, $2523
    ld h, $27
    nop
    jr z, jr_016_7650

    ld a, [hl+]
    dec hl
    nop
    nop
    ld c, c
    ld c, e
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    nop
    ld d, d
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop

jr_016_7645:
    nop
    nop
    nop
    ld de, $1600
    nop
    ld a, [de]
    dec de
    ld e, $20

jr_016_7650:
    ld [hl+], a
    inc h
    dec h
    nop
    ld h, $28
    nop
    add hl, hl
    nop
    nop
    nop
    ld b, l
    ld b, a
    ld c, h
    nop
    nop
    ld c, l
    nop
    ld d, b
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1600
    nop
    ld a, [de]
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    dec h
    ld h, $00
    nop
    daa
    nop
    add hl, hl
    nop
    nop
    ld b, l
    ld b, a
    ld c, h
    nop
    nop
    ld c, l
    nop
    ld d, b
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1600
    nop
    ld a, [de]
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    dec h
    nop
    daa
    jr z, jr_016_76b7

jr_016_76b7:
    add hl, hl
    nop
    nop
    nop
    ld b, l
    ld b, a
    ld c, h
    nop
    nop
    ld c, l
    nop
    ld d, b
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1600
    nop
    ld a, [de]
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    dec h
    ld h, $00
    nop
    jr z, jr_016_76e8

jr_016_76e8:
    add hl, hl
    nop
    nop
    ld b, l
    ld b, a
    ld c, h
    nop
    nop
    ld c, l
    nop
    ld d, b
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    inc d
    nop
    jr jr_016_7728

    inc e
    ld e, $20
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_016_7742

    nop
    nop
    ld b, l
    ld b, a
    ld c, h
    nop
    nop
    ld c, l
    nop
    ld d, b
    ld d, h
    ld d, l
    nop
    nop
    nop

jr_016_7728:
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    ld h, b
    db $10
    db $10
    ld [hl], b
    jr nc, jr_016_773c

jr_016_773c:
    nop
    ld b, b
    jr nc, jr_016_7740

jr_016_7740:
    nop
    ld b, b

jr_016_7742:
    add b
    jr nz, jr_016_7765

    sub b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    jr nc, jr_016_778c

    jr nc, jr_016_778e

    jr nc, jr_016_7790

    jr nc, jr_016_7792

    add b
    ld [hl+], a
    inc hl
    sub b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    add b
    inc c
    dec c
    sub b
    ld h, b
    dec bc
    ld a, [bc]
    ld [hl], b
    add b
    sub b
    add b

jr_016_7765:
    sub b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    jr nc, jr_016_77ac

    inc sp
    sub b
    jr nc, jr_016_77b0

    ld sp, $8070
    ld [hl+], a
    inc hl
    sub b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    jr nc, jr_016_77bc

    add b
    ld b, d
    jr nc, jr_016_7787

    db $10
    ld b, c
    add b
    jr nz, jr_016_77a5

    sub b
    ld h, c

jr_016_7787:
    ld [hl], d
    ld h, c
    ld [hl], d
    and b
    and b

jr_016_778c:
    and b
    and b

jr_016_778e:
    and b
    and b

jr_016_7790:
    and b
    and b

jr_016_7792:
    or b
    add d
    sub d
    or b
    ld h, h
    ld d, b
    ld d, b
    ld [hl], h
    and b
    ldh a, [$f0]
    and b
    and b
    ldh a, [$f0]
    and b
    add h
    ld d, b
    ld d, b

jr_016_77a5:
    sub h
    ld h, h
    ld d, b
    ld [de], a
    ld [hl], h
    and b
    ld h, b

jr_016_77ac:
    ld b, c
    and b
    and b
    add b

jr_016_77b0:
    sub b
    and b
    add h
    ld d, b
    ld d, b
    sub h
    ld h, h
    ld d, $16
    ld [hl], h
    ld [hl], $01

jr_016_77bc:
    ld bc, $3646
    ld bc, $4601
    add h
    ld h, $26
    sub h
    ld h, h
    ld d, b
    ld d, b
    ld [hl], h
    add h
    ld d, b
    ld d, b
    ld b, l
    ld h, h
    ld d, b
    ld d, b
    ld b, h
    add h
    ld d, b
    ld d, b
    sub h
    ld h, h
    inc d
    dec d
    ld [hl], h
    dec [hl]
    sub h
    add h
    ld b, l
    inc [hl]
    ld [hl], h
    ld h, h
    ld b, h
    add h
    inc h
    dec h
    sub h
    ld h, h
    ld d, $16
    ld [hl], h
    dec [hl]
    ld h, $26
    sub h
    inc [hl]
    ld d, $16
    ld [hl], h
    add h
    ld h, $26
    sub h
    ld h, h
    ld [de], a
    ld d, b
    ld [hl], h
    and b
    inc [hl]
    ld [hl], h
    and b
    and b
    add h
    sub h
    and b
    add h
    ld d, b
    ld d, b
    sub h
    ld h, b
    db $10
    ld [hl], b
    ret nz

    jr nc, jr_016_780c

jr_016_780c:
    ld b, b
    and b
    add b
    jr nz, jr_016_7853

    and b
    ldh [$50], a
    ld hl, $6094
    ld [hl], b
    ldh [$74], a
    jr nc, jr_016_7823

    ld de, $3043
    ld [$a090], sp
    add b

jr_016_7823:
    sub b
    ldh [$94], a
    ldh [$71], a
    ret nz

    ret nz

    ld h, h
    ld hl, $a045
    and b
    ld h, h
    ld hl, $b045
    or b
    ldh [$91], a
    ldh a, [$64]
    ld [hl], h
    ldh a, [$64]
    sub h
    add h
    ld [hl], h
    add h
    ld [hl], h
    ld h, h
    sub h
    ldh a, [$84]
    sub h
    ldh a, [$64]
    ld d, $16
    ld [hl], h
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    add h

jr_016_7853:
    ld h, $26
    sub h
    ldh [$71], a
    ld h, d
    ret nc

    ld h, c
    ld a, [bc]
    dec bc
    ld [hl], d
    or b
    inc sp
    ld b, d
    or b
    ldh [$91], a
    add c
    ret nc

    ld h, h
    ld [hl], c
    ld h, d
    ld [hl], h
    and b
    ld sp, $a041
    and b
    inc sp
    ld b, d
    and b
    add h
    sub c
    add c
    sub h
    ld h, h
    ld [hl], c
    ld h, d
    ld [hl], h
    or b
    and c
    and c
    or b
    ld h, d
    sub h
    add h
    ld [hl], c
    add c
    ld d, c
    ld d, d
    sub c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld h, $26
    ld h, $26
    ld h, $10
    jr z, jr_016_78aa

    jr z, jr_016_78ad

    jr z, jr_016_78b0

    jr z, jr_016_78b3

    jr z, @+$17

    jr z, jr_016_78a3

jr_016_78a3:
    dec hl
    ld bc, $022b
    dec hl
    inc bc
    dec hl

jr_016_78aa:
    inc b
    dec hl
    dec b

jr_016_78ad:
    dec hl
    inc d
    inc l

jr_016_78b0:
    db $10
    jr z, jr_016_78c3

jr_016_78b3:
    jr z, jr_016_78c5

    jr z, jr_016_78cd

    jr z, jr_016_78d0

    jr z, jr_016_78d3

    jr z, @+$1b

    jr z, @+$1c

    jr z, jr_016_78dc

    jr z, jr_016_78c9

jr_016_78c3:
    dec hl
    rlca

jr_016_78c5:
    dec hl
    ld [$092b], sp

jr_016_78c9:
    dec hl
    ld a, [bc]
    dec hl
    dec bc

jr_016_78cd:
    dec hl
    dec d
    inc l

jr_016_78d0:
    db $10
    jr z, jr_016_78e3

jr_016_78d3:
    jr z, jr_016_78e5

    jr z, jr_016_78d7

jr_016_78d7:
    daa
    ld bc, $0227
    daa

jr_016_78dc:
    inc bc
    daa
    inc b
    daa
    dec b
    daa
    inc c

jr_016_78e3:
    dec hl
    dec c

jr_016_78e5:
    dec hl
    ld c, $2b
    rrca
    dec hl
    db $10
    dec hl
    ld de, $162b
    inc l
    db $10
    jr z, jr_016_7903

    jr z, jr_016_7905

    jr z, jr_016_78fd

    daa
    rlca
    daa
    ld [$0927], sp

jr_016_78fd:
    daa
    ld a, [bc]
    daa
    dec bc
    daa
    ld [de], a

jr_016_7903:
    dec hl
    inc de

jr_016_7905:
    dec hl
    inc d
    dec hl
    dec d
    dec hl
    ld d, $2b
    rla
    dec hl
    rla
    inc l
    db $10
    jr z, jr_016_7923

    jr z, jr_016_7925

    jr z, jr_016_7923

    daa
    dec c
    daa
    ld c, $27
    rrca
    daa
    db $10
    daa
    ld de, $1827

jr_016_7923:
    dec hl
    add hl, de

jr_016_7925:
    dec hl
    ld a, [de]
    dec hl
    dec de
    dec hl
    inc e
    dec hl
    dec e
    dec hl
    jr jr_016_795c

    db $10
    jr z, @+$12

    jr z, jr_016_7945

    jr z, @+$14

    daa
    inc de
    daa
    inc d
    daa
    dec d
    daa
    ld d, $27
    rla
    daa
    ld e, $2b
    rra

jr_016_7945:
    dec hl
    jr nz, jr_016_7973

    ld hl, $222b
    dec hl
    inc hl
    dec hl
    add hl, de
    inc l
    db $10
    jr z, jr_016_7963

    jr z, jr_016_7965

    jr z, jr_016_796f

    daa
    add hl, de
    daa
    ld a, [de]
    daa

jr_016_795c:
    dec de
    daa
    inc e
    daa
    dec e
    daa
    inc h

jr_016_7963:
    dec hl
    dec h

jr_016_7965:
    dec hl
    ld h, $2b
    daa
    dec hl
    jr z, jr_016_7997

    add hl, hl
    dec hl
    ld a, [de]

jr_016_796f:
    inc l
    db $10
    jr z, jr_016_7983

jr_016_7973:
    jr z, jr_016_7985

    jr z, jr_016_7995

    daa
    rra
    daa
    jr nz, @+$29

    ld hl, $2227
    daa
    inc hl
    daa
    ld a, [hl+]

jr_016_7983:
    dec hl
    dec hl

jr_016_7985:
    dec hl
    inc l
    dec hl
    dec l
    dec hl
    ld l, $2b
    cpl
    dec hl
    dec de
    inc l
    db $10
    jr z, @+$12

    jr z, @+$12

jr_016_7995:
    jr z, jr_016_79bb

jr_016_7997:
    daa
    dec h
    daa
    ld h, $27
    daa
    daa
    jr z, @+$29

    add hl, hl
    daa
    jr nc, jr_016_79cf

    ld sp, $322b
    dec hl
    inc sp
    dec hl
    inc [hl]
    dec hl
    dec [hl]
    dec hl
    inc e
    inc l
    db $10
    jr z, @+$12

    jr z, jr_016_79c5

    jr z, jr_016_79e1

    daa
    dec hl
    daa
    inc l

jr_016_79bb:
    daa
    dec l
    daa
    ld l, $27
    cpl
    daa
    ld [hl], $2b
    scf

jr_016_79c5:
    dec hl
    jr c, jr_016_79f3

    add hl, sp
    dec hl
    ld a, [hl-]
    dec hl
    dec sp
    dec hl
    dec e

jr_016_79cf:
    inc l
    db $10
    jr z, jr_016_79e3

    jr z, jr_016_79e5

    jr z, jr_016_7a07

    daa
    ld sp, $3227
    daa
    inc sp
    daa
    inc [hl]
    daa
    dec [hl]

jr_016_79e1:
    daa
    inc a

jr_016_79e3:
    dec hl
    dec a

jr_016_79e5:
    dec hl
    ld a, $2b
    ccf
    dec hl
    ld b, b
    dec hl
    ld b, c
    dec hl
    ld e, $2c
    db $10
    jr z, jr_016_7a03

jr_016_79f3:
    jr z, jr_016_7a05

    jr z, jr_016_7a2d

    daa
    scf
    daa
    jr c, jr_016_7a23

    add hl, sp
    daa
    ld a, [hl-]
    daa
    dec sp
    daa
    ld b, d

jr_016_7a03:
    dec hl
    ld b, e

jr_016_7a05:
    dec hl
    ld b, h

jr_016_7a07:
    dec hl
    ld b, l
    dec hl
    ld b, [hl]
    dec hl
    ld b, a
    dec hl
    rra
    inc l
    db $10
    jr z, jr_016_7a23

    jr z, jr_016_7a25

    jr z, jr_016_7a53

    daa
    dec a
    daa
    ld a, $27
    ccf
    daa
    ld b, b
    daa
    ld b, c
    daa
    ld [bc], a

jr_016_7a23:
    inc l
    inc bc

jr_016_7a25:
    inc l
    inc b
    inc l
    dec b
    inc l
    ld b, $2c
    rlca

jr_016_7a2d:
    inc l
    jr nz, jr_016_7a5c

    db $10
    jr z, @+$12

    jr z, jr_016_7a45

    jr z, jr_016_7a79

    daa
    ld b, e
    daa
    ld b, h
    daa
    ld b, l
    daa
    ld b, [hl]
    daa
    ld b, a
    daa
    ld [$092c], sp

jr_016_7a45:
    inc l
    ld a, [bc]
    inc l
    dec bc
    inc l
    inc c
    inc l
    dec c
    inc l
    ld hl, $102c
    jr z, @+$12

jr_016_7a53:
    jr z, jr_016_7a65

    jr z, jr_016_7a9f

    daa
    ld c, c
    daa
    ld c, d
    daa

jr_016_7a5c:
    ld c, e
    daa
    ld c, h
    daa
    ld c, l
    daa
    ld c, $2c
    rrca

jr_016_7a65:
    inc l
    db $10
    inc l
    ld de, $122c
    inc l
    inc de
    inc l
    ld [hl+], a
    inc l
    db $10
    jr z, jr_016_7a83

    jr z, jr_016_7a85

    jr z, jr_016_7ac5

    daa
    ld c, [hl]

jr_016_7a79:
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]

jr_016_7a83:
    daa
    ld c, [hl]

jr_016_7a85:
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    inc hl
    inc l
    inc h
    inc l
    dec h
    inc l
    ld h, $2c
    daa

jr_016_7a9f:
    inc l
    jr z, jr_016_7ace

    add hl, hl
    inc l
    ld a, [hl+]
    inc l
    dec hl
    inc l
    inc l
    inc l
    dec l
    inc l
    ld l, $2c
    cpl
    inc l
    jr nc, jr_016_7ade

    inc hl
    inc l
    inc hl
    inc l
    nop
    dec sp
    ld bc, $023b
    dec sp
    inc bc
    dec sp
    inc b
    dec sp
    dec b
    dec sp
    ld b, $3b
    inc hl

jr_016_7ac5:
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l

jr_016_7ace:
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    rlca
    dec sp
    ld [$093b], sp
    dec sp
    ld a, [bc]
    dec sp

jr_016_7ade:
    dec bc
    dec sp
    inc c
    dec sp
    dec c
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld c, $3b
    rrca
    dec sp
    db $10
    dec sp
    ld de, $123b
    dec sp
    inc de
    dec sp
    inc d
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    scf
    ld a, [hl-]
    jr c, jr_016_7b54

    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    inc a
    ld a, [hl-]
    dec a
    ld a, [hl-]
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld a, $3a
    ccf
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld b, c
    ld a, [hl-]
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l

jr_016_7b54:
    inc hl
    inc l
    ld b, d
    ld a, [hl-]
    ld b, e
    ld a, [hl-]
    ld b, h
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, [hl]
    ld a, [hl-]
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld b, a
    ld a, [hl-]
    ld c, b
    ld a, [hl-]
    ld c, c
    ld a, [hl-]
    ld c, d
    ld a, [hl-]
    ld c, e
    ld a, [hl-]
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld c, h
    ld a, [hl-]
    ld c, l
    ld a, [hl-]
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    ld a, [hl-]
    ld d, b
    ld a, [hl-]
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    dec d
    dec sp
    ld d, $3b
    rla
    dec sp
    jr jr_016_7bf9

    add hl, de
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld a, [de]
    dec sp
    dec de
    dec sp
    inc e
    dec sp
    dec e
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld e, $3b
    rra

jr_016_7bf9:
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    jr nz, jr_016_7c53

    ld hl, $233b
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld [hl+], a
    dec sp
    inc hl
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl

jr_016_7c53:
    inc l
    inc hl
    inc l
    inc h
    dec sp
    dec h
    dec sp
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    inc hl
    inc l
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    ld c, [hl]
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
