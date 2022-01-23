; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]
    db $16 ;rom bank
    
    db $15, $40
    db $5c, $48
    db $6e, $45
    db $a3, $45
    db $4a, $47
    db $4e, $5b
    db $e4, $5f
    db $b0, $6d
    db $05, $6f
    db $33, $70
        
    
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
    call GenerateRNG
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
    call GenerateRNG
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

    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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

;4874
    db $00, $00, $00, $03, $03, $03, $06, $06, $06, $09, $09, $09, $0c, $0c, $0c, $0f
    db $0f, $0f, $12, $12, $14, $15, $15, $17, $18, $19, $1a, $1a, $1c, $1c, $1e, $1e
    db $20, $20, $22, $22, $24, $25, $26, $27, $27, $29, $2a, $2b, $2b, $2b, $2e, $2e
    db $30, $30, $32, $33, $34, $35, $36, $37, $38, $39, $ff, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $50, $52, $52, $54, $55, $56, $57, $58, $58, $5a, $5b, $5c, $5c, $5c, $5c
    db $60, $60, $60, $60, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6c, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $75, $77, $78, $79, $79, $7b, $7b, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $84, $84, $84, $88, $88, $8a, $8a, $8c, $ff, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $d5, $d6, $d7, $d8, $d9, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $f0, $f1, $f0, $f2, $f0, $f3, $f0, $f4, $f0, $f5, $f0, $f6, $f0, $f7, $f0, $f8
    db $ff, $ff, $f0, $5a, $f0, $2e, $f0, $c6, $f0, $bd, $f0, $33, $ff, $ff, $f0, $f9
    db $f0, $b9, $10, $10, $11, $11, $12, $12, $f1, $f0, $f1, $f2, $f1, $f3, $f1, $f4
    db $f1, $f5, $f1, $f6, $f1, $f7, $f1, $f8, $14, $14, $f1, $46, $f1, $32, $f1, $53
    db $f1, $b8, $f1, $77, $f1, $5f, $f1, $06, $f1, $7d, $ff, $ff, $f1, $4f, $26, $26
    db $27, $27, $22, $8c, $f1, $8d, $f1, $55, $2b, $29, $f2, $f0, $f2, $f1, $f2, $f3
    db $f2, $f4, $f2, $f5, $ff, $ff, $f2, $f7, $f2, $f8, $ff, $ff, $f2, $a4, $f2, $15
    db $f2, $4a, $f2, $62, $f2, $f6, $f2, $8f, $f2, $bb, $f2, $21, $f2, $0a, $f2, $00
    db $f2, $4b, $40, $40, $41, $41, $f2, $f9, $f2, $1c, $f2, $87, $f3, $f0, $f3, $f1
    db $f3, $f2, $f3, $f4, $f3, $f5, $f3, $f6, $f3, $f7, $f3, $f8, $ff, $ff, $ff, $ff
    db $f3, $0b, $ff, $ff, $f3, $7c, $f3, $b2, $f3, $c1, $f3, $bf, $f3, $f9, $f3, $1f
    db $f3, $64, $54, $55, $f4, $f0, $f4, $f1, $f4, $f2, $f4, $f3, $f4, $f5, $f4, $f6
    db $f4, $f7, $f4, $f8, $ff, $ff, $f4, $70, $f4, $b3, $f4, $82, $f4, $a5, $f4, $58
    db $f4, $30, $f4, $86, $69, $69, $6a, $6a, $f4, $f9, $ff, $ff, $f5, $f0, $f5, $f1
    db $f5, $f2, $f5, $f3, $f5, $f4, $f5, $f6, $f5, $f7, $f5, $f8, $ff, $ff, $ff, $ff
    db $f5, $5c, $f5, $37, $f5, $61, $f5, $31, $f5, $9b, $f5, $a0, $f5, $3d, $75, $75
    db $7f, $7f, $f5, $f9, $f6, $f0, $f6, $f9, $ff, $ff, $f6, $f3, $f6, $f4, $f6, $f5
    db $f6, $f7, $f6, $f8, $ff, $ff, $f6, $f2, $f6, $f1, $f6, $19, $f6, $43, $f6, $68
    db $f6, $39, $85, $85, $8a, $8a, $f6, $1e, $93, $93, $f6, $b6, $f6, $45, $ff, $ff
    db $f6, $79, $94, $59, $97, $c7, $f7, $f0, $f7, $1b, $f7, $f2, $f7, $f3, $f7, $f4
    db $f7, $f5, $f7, $f6, $f7, $f8, $ff, $ff, $f7, $6e, $f7, $4d, $f7, $f1, $f7, $34
    db $f7, $72, $a1, $a1, $f7, $f9, $a3, $a3, $ab, $ab, $ac, $ac, $ff, $ff, $f8, $f0
    db $f8, $f1, $f8, $f2, $f8, $f3, $f8, $f4, $f8, $f5, $f8, $f6, $f8, $f7, $ff, $ff
    db $f8, $74, $f8, $22, $f8, $f9, $f8, $73, $f8, $5d, $f8, $88, $f8, $04, $b7, $5b
    db $b9, $83, $bd, $42, $f8, $07, $b7, $b7, $c3, $c3, $c4, $c4, $b4, $b4, $c1, $c0
    db $ad, $25, $c8, $2c, $aa, $12, $99, $6c, $ca, $29, $c8, $cb, $9a, $2c, $ce, $42
    db $cf, $13, $d0, $24, $cc, $43, $cd, $d0, $d3, $80, $d4, $d2, $d5, $6d, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $1b, $00, $0c
    db $00, $00, $24, $00, $0c, $00, $00, $25, $00, $0c, $00, $00, $2a, $00, $0c, $00
    db $00, $2b, $00, $0c, $00, $05, $1b, $00, $0c, $00, $05, $24, $00, $0c, $00, $05
    db $25, $00, $0c, $00, $05, $2a, $00, $0c, $00, $05, $2b, $00, $0c, $00, $0b, $1b
    db $00, $0c, $00, $0b, $24, $00, $0c, $00, $0b, $25, $00, $0c, $00, $0b, $2a, $00
    db $0c, $00, $0b, $2b, $00, $0c, $00, $11, $1b, $00, $0c, $00, $11, $24, $00, $0c
    db $00, $11, $25, $00, $0c, $00, $11, $2a, $00, $0c, $00, $11, $2b, $00, $0c, $00
    db $0f, $25, $00, $0e, $00, $0f, $2a, $00, $0e, $00, $0f, $2c, $00, $0e, $00, $0f
    db $3e, $00, $0e, $00, $0f, $42, $00, $0e, $00, $0f, $53, $00, $0e, $00, $0f, $56
    db $00, $0e, $00, $0f, $57, $00, $0e, $00, $0f, $96, $00, $0e, $00, $0f, $97, $00
    db $0e, $00, $0f, $a9, $00, $0e, $00, $0f, $aa, $00, $0e, $00, $12, $25, $00, $0e
    db $00, $12, $2a, $00, $0e, $00, $12, $2c, $00, $0e, $00, $12, $3e, $00, $0e, $00
    db $12, $42, $00, $0e, $00, $12, $53, $00, $0e, $00, $12, $56, $00, $0e, $00, $12
    db $57, $00, $0e, $00, $12, $96, $00, $0e, $00, $12, $97, $00, $0e, $00, $12, $a9
    db $00, $0e, $00, $12, $aa, $00, $0e, $00, $0e, $25, $00, $0f, $00, $0e, $2a, $00
    db $0f, $00, $0e, $2c, $00, $0f, $00, $0e, $3e, $00, $0f, $00, $0e, $42, $00, $0f
    db $00, $0e, $53, $00, $0f, $00, $0e, $56, $00, $0f, $00, $0e, $57, $00, $0f, $00
    db $0e, $96, $00, $0f, $00, $0e, $97, $00, $0f, $00, $0e, $a9, $00, $0f, $00, $0e
    db $aa, $00, $0f, $00, $08, $08, $05, $0f, $00, $01, $01, $05, $0e, $00, $0e, $c7
    db $00, $13, $00, $0f, $c7, $00, $13, $00, $12, $c7, $00, $13, $00, $0e, $b9, $00
    db $12, $00, $0f, $b9, $00, $12, $00, $14, $14, $04, $25, $00, $14, $14, $00, $1c
    db $00, $1c, $1c, $04, $25, $00, $17, $3f, $00, $22, $00, $17, $41, $00, $22, $00
    db $17, $53, $00, $22, $00, $17, $57, $00, $22, $00, $17, $58, $00, $22, $00, $17
    db $83, $00, $22, $00, $17, $8d, $00, $22, $00, $17, $8e, $00, $22, $00, $17, $90
    db $00, $22, $00, $17, $94, $00, $22, $00, $17, $a9, $00, $22, $00, $17, $c4, $00
    db $22, $00, $1e, $3f, $00, $22, $00, $1e, $41, $00, $22, $00, $1e, $53, $00, $22
    db $00, $1e, $57, $00, $22, $00, $1e, $58, $00, $22, $00, $1e, $83, $00, $22, $00
    db $1e, $8d, $00, $22, $00, $1e, $8e, $00, $22, $00, $1e, $90, $00, $22, $00, $1e
    db $94, $00, $22, $00, $1e, $a9, $00, $22, $00, $1e, $c4, $00, $22, $00, $2a, $3f
    db $00, $22, $00, $2a, $41, $00, $22, $00, $2a, $53, $00, $22, $00, $2a, $57, $00
    db $22, $00, $2a, $58, $00, $22, $00, $2a, $83, $00, $22, $00, $2a, $8d, $00, $22
    db $00, $2a, $8e, $00, $22, $00, $2a, $90, $00, $22, $00, $2a, $94, $00, $22, $00
    db $2a, $a9, $00, $22, $00, $2a, $c4, $00, $22, $00, $2b, $3f, $00, $22, $00, $2b
    db $41, $00, $22, $00, $2b, $53, $00, $22, $00, $2b, $57, $00, $22, $00, $2b, $58
    db $00, $22, $00, $2b, $83, $00, $22, $00, $2b, $8d, $00, $22, $00, $2b, $8e, $00
    db $22, $00, $2b, $90, $00, $22, $00, $2b, $94, $00, $22, $00, $2b, $a9, $00, $22
    db $00, $2b, $c4, $00, $22, $00, $19, $02, $00, $1f, $00, $19, $41, $00, $1f, $00
    db $19, $44, $00, $1f, $00, $19, $66, $00, $1f, $00, $19, $8d, $00, $1f, $00, $19
    db $8e, $00, $1f, $00, $19, $91, $00, $1f, $00, $19, $96, $00, $1f, $00, $16, $43
    db $00, $28, $00, $16, $95, $00, $28, $00, $16, $ae, $00, $28, $00, $16, $c5, $00
    db $28, $00, $17, $43, $00, $28, $00, $17, $95, $00, $28, $00, $17, $ae, $00, $28
    db $00, $17, $c5, $00, $28, $00, $19, $43, $00, $28, $00, $19, $95, $00, $28, $00
    db $19, $ae, $00, $28, $00, $19, $c5, $00, $28, $00, $2a, $43, $00, $28, $00, $2a
    db $95, $00, $28, $00, $2a, $ae, $00, $28, $00, $2a, $c5, $00, $28, $00, $2b, $43
    db $00, $28, $00, $2b, $95, $00, $28, $00, $2b, $ae, $00, $28, $00, $2b, $c5, $00
    db $28, $00, $22, $0c, $00, $b9, $00, $22, $0f, $00, $b9, $00, $22, $81, $00, $b9
    db $00, $22, $9c, $00, $b9, $00, $22, $bd, $00, $b9, $00, $22, $c4, $00, $b9, $00
    db $22, $c5, $00, $b9, $00, $24, $0c, $00, $b9, $00, $24, $0f, $00, $b9, $00, $24
    db $81, $00, $b9, $00, $24, $9c, $00, $b9, $00, $24, $bd, $00, $b9, $00, $24, $c4
    db $00, $b9, $00, $24, $c5, $00, $b9, $00, $25, $0c, $00, $b9, $00, $25, $0f, $00
    db $b9, $00, $25, $81, $00, $b9, $00, $25, $9c, $00, $b9, $00, $25, $bd, $00, $b9
    db $00, $25, $c4, $00, $b9, $00, $25, $c5, $00, $b9, $00, $22, $8c, $00, $29, $00
    db $25, $8c, $00, $29, $00, $37, $16, $00, $3b, $00, $37, $17, $00, $3b, $00, $37
    db $1b, $00, $3b, $00, $37, $1e, $00, $3b, $00, $37, $2a, $00, $3b, $00, $37, $2b
    db $00, $3b, $00, $3f, $16, $00, $3b, $00, $3f, $17, $00, $3b, $00, $3f, $1b, $00
    db $3b, $00, $3f, $1e, $00, $3b, $00, $3f, $2a, $00, $3b, $00, $3f, $2b, $00, $3b
    db $00, $40, $16, $00, $3b, $00, $40, $17, $00, $3b, $00, $40, $1b, $00, $3b, $00
    db $40, $1e, $00, $3b, $00, $40, $2a, $00, $3b, $00, $40, $2b, $00, $3b, $00, $44
    db $16, $00, $3b, $00, $44, $17, $00, $3b, $00, $44, $1b, $00, $3b, $00, $44, $1e
    db $00, $3b, $00, $44, $2a, $00, $3b, $00, $44, $2b, $00, $3b, $00, $2d, $03, $00
    db $36, $00, $2d, $0a, $00, $36, $00, $2d, $1e, $00, $36, $00, $2d, $58, $00, $36
    db $00, $2d, $5a, $00, $36, $00, $2d, $66, $00, $36, $00, $2d, $74, $00, $36, $00
    db $2d, $85, $00, $36, $00, $2d, $8b, $00, $36, $00, $2d, $ae, $00, $36, $00, $2d
    db $af, $00, $36, $00, $2d, $c2, $00, $36, $00, $32, $03, $00, $36, $00, $32, $0a
    db $00, $36, $00, $32, $1e, $00, $36, $00, $32, $58, $00, $36, $00, $32, $5a, $00
    db $36, $00, $32, $66, $00, $36, $00, $32, $74, $00, $36, $00, $32, $85, $00, $36
    db $00, $32, $8b, $00, $36, $00, $32, $ae, $00, $36, $00, $32, $af, $00, $36, $00
    db $32, $c2, $00, $36, $00, $2d, $51, $00, $41, $00, $2d, $53, $00, $41, $00, $2d
    db $56, $00, $41, $00, $2d, $57, $00, $41, $00, $32, $51, $00, $41, $00, $32, $53
    db $00, $41, $00, $32, $56, $00, $41, $00, $32, $57, $00, $41, $00, $3a, $51, $00
    db $41, $00, $3a, $53, $00, $41, $00, $3a, $56, $00, $41, $00, $3a, $57, $00, $41
    db $00, $3b, $51, $00, $41, $00, $3b, $53, $00, $41, $00, $3b, $56, $00, $41, $00
    db $3b, $57, $00, $41, $00, $2d, $81, $00, $32, $00, $2d, $9c, $00, $32, $00, $2d
    db $a9, $00, $32, $00, $2d, $aa, $00, $32, $00, $2d, $ac, $00, $32, $00, $3a, $81
    db $00, $32, $00, $3a, $9c, $00, $32, $00, $3a, $a9, $00, $32, $00, $3a, $aa, $00
    db $32, $00, $3a, $ac, $00, $32, $00, $3b, $81, $00, $32, $00, $3b, $9c, $00, $32
    db $00, $3b, $a9, $00, $32, $00, $3b, $aa, $00, $32, $00, $3b, $ac, $00, $32, $00
    db $3e, $81, $00, $32, $00, $3e, $9c, $00, $32, $00, $3e, $a9, $00, $32, $00, $3e
    db $aa, $00, $32, $00, $3e, $ac, $00, $32, $00, $40, $81, $00, $32, $00, $40, $9c
    db $00, $32, $00, $40, $a9, $00, $32, $00, $40, $aa, $00, $32, $00, $40, $ac, $00
    db $32, $00, $41, $81, $00, $32, $00, $41, $9c, $00, $32, $00, $41, $a9, $00, $32
    db $00, $41, $aa, $00, $32, $00, $41, $ac, $00, $32, $00, $37, $b9, $00, $32, $00
    db $37, $bd, $00, $32, $00, $37, $c0, $00, $32, $00, $37, $c1, $00, $32, $00, $37
    db $c4, $00, $32, $00, $37, $c5, $00, $32, $00, $3a, $b9, $00, $32, $00, $3a, $bd
    db $00, $32, $00, $3a, $c0, $00, $32, $00, $3a, $c1, $00, $32, $00, $3a, $c4, $00
    db $32, $00, $3a, $c5, $00, $32, $00, $3b, $b9, $00, $32, $00, $3b, $bd, $00, $32
    db $00, $3b, $c0, $00, $32, $00, $3b, $c1, $00, $32, $00, $3b, $c4, $00, $32, $00
    db $3b, $c5, $00, $32, $00, $3e, $b9, $00, $32, $00, $3e, $bd, $00, $32, $00, $3e
    db $c0, $00, $32, $00, $3e, $c1, $00, $32, $00, $3e, $c4, $00, $32, $00, $3e, $c5
    db $00, $32, $00, $3f, $b9, $00, $32, $00, $3f, $bd, $00, $32, $00, $3f, $c0, $00
    db $32, $00, $3f, $c1, $00, $32, $00, $3f, $c4, $00, $32, $00, $3f, $c5, $00, $32
    db $00, $40, $b9, $00, $32, $00, $40, $bd, $00, $32, $00, $40, $c0, $00, $32, $00
    db $40, $c1, $00, $32, $00, $40, $c4, $00, $32, $00, $40, $c5, $00, $32, $00, $32
    db $b9, $00, $41, $00, $32, $ba, $00, $41, $00, $32, $bd, $00, $41, $00, $32, $c0
    db $00, $41, $00, $32, $c1, $00, $41, $00, $32, $c4, $00, $41, $00, $32, $c5, $00
    db $41, $00, $41, $b9, $00, $42, $00, $41, $ba, $00, $42, $00, $41, $c7, $00, $42
    db $00, $51, $0b, $00, $57, $00, $51, $0c, $00, $57, $00, $51, $81, $00, $57, $00
    db $51, $b9, $00, $57, $00, $51, $c4, $00, $57, $00, $51, $c5, $00, $57, $00, $52
    db $0b, $00, $57, $00, $52, $0c, $00, $57, $00, $52, $81, $00, $57, $00, $52, $b9
    db $00, $57, $00, $52, $c4, $00, $57, $00, $52, $c5, $00, $57, $00, $53, $0b, $00
    db $57, $00, $53, $0c, $00, $57, $00, $53, $81, $00, $57, $00, $53, $b9, $00, $57
    db $00, $53, $c4, $00, $57, $00, $53, $c5, $00, $57, $00, $54, $0b, $00, $57, $00
    db $54, $0c, $00, $57, $00, $54, $81, $00, $57, $00, $54, $b9, $00, $57, $00, $54
    db $c4, $00, $57, $00, $54, $c5, $00, $57, $00, $56, $0b, $00, $57, $00, $56, $0c
    db $00, $57, $00, $56, $81, $00, $57, $00, $56, $b9, $00, $57, $00, $56, $c4, $00
    db $57, $00, $56, $c5, $00, $57, $00, $53, $bf, $00, $56, $00, $55, $bf, $00, $56
    db $00, $57, $bf, $00, $56, $00, $71, $71, $00, $7c, $00, $71, $78, $00, $7c, $00
    db $71, $7a, $00, $7c, $00, $78, $71, $00, $7c, $00, $78, $78, $00, $7c, $00, $78
    db $7a, $00, $7c, $00, $7a, $71, $00, $7c, $00, $7a, $78, $00, $7c, $00, $7a, $7a
    db $00, $7c, $00, $84, $0e, $00, $83, $00, $84, $0f, $00, $83, $00, $84, $12, $00
    db $83, $00, $84, $22, $00, $83, $00, $84, $25, $00, $83, $00, $84, $29, $00, $83
    db $00, $84, $41, $00, $83, $00, $84, $42, $00, $83, $00, $84, $56, $00, $83, $00
    db $84, $57, $00, $83, $00, $84, $b9, $00, $83, $00, $84, $c5, $00, $83, $00, $93
    db $0e, $00, $83, $00, $93, $0f, $00, $83, $00, $93, $12, $00, $83, $00, $93, $22
    db $00, $83, $00, $93, $25, $00, $83, $00, $93, $29, $00, $83, $00, $93, $41, $00
    db $83, $00, $93, $42, $00, $83, $00, $93, $56, $00, $83, $00, $93, $57, $00, $83
    db $00, $93, $b9, $00, $83, $00, $93, $c5, $00, $83, $00, $96, $0e, $00, $83, $00
    db $96, $0f, $00, $83, $00, $96, $12, $00, $83, $00, $96, $22, $00, $83, $00, $96
    db $25, $00, $83, $00, $96, $29, $00, $83, $00, $96, $41, $00, $83, $00, $96, $42
    db $00, $83, $00, $96, $56, $00, $83, $00, $96, $57, $00, $83, $00, $96, $b9, $00
    db $83, $00, $96, $c5, $00, $83, $00, $84, $0c, $00, $91, $00, $84, $1b, $00, $91
    db $00, $84, $28, $00, $91, $00, $84, $4d, $00, $91, $00, $84, $53, $00, $91, $00
    db $84, $6c, $00, $91, $00, $84, $7b, $00, $91, $00, $84, $9c, $00, $91, $00, $84
    db $a9, $00, $91, $00, $84, $aa, $00, $91, $00, $93, $0c, $00, $91, $00, $93, $1b
    db $00, $91, $00, $93, $28, $00, $91, $00, $93, $4d, $00, $91, $00, $93, $53, $00
    db $91, $00, $93, $6c, $00, $91, $00, $93, $7b, $00, $91, $00, $93, $9c, $00, $91
    db $00, $93, $a9, $00, $91, $00, $93, $aa, $00, $91, $00, $96, $0c, $00, $91, $00
    db $96, $1b, $00, $91, $00, $96, $28, $00, $91, $00, $96, $4d, $00, $91, $00, $96
    db $53, $00, $91, $00, $96, $6c, $00, $91, $00, $96, $7b, $00, $91, $00, $96, $9c
    db $00, $91, $00, $96, $a9, $00, $91, $00, $96, $aa, $00, $91, $00, $84, $32, $00
    db $90, $00, $84, $3e, $00, $90, $00, $84, $81, $00, $90, $00, $84, $bd, $00, $90
    db $00, $93, $32, $00, $90, $00, $93, $3e, $00, $90, $00, $93, $81, $00, $90, $00
    db $93, $bd, $00, $90, $00, $96, $32, $00, $90, $00, $96, $3e, $00, $90, $00, $96
    db $81, $00, $90, $00, $96, $bd, $00, $90, $00, $83, $91, $00, $94, $00, $9f, $0b
    db $00, $ab, $00, $9f, $0c, $00, $ab, $00, $9f, $51, $00, $ab, $00, $9f, $52, $00
    db $ab, $00, $9f, $5c, $00, $ab, $00, $9f, $7f, $00, $ab, $00, $9f, $8b, $00, $ab
    db $00, $a1, $0b, $00, $ab, $00, $a1, $0c, $00, $ab, $00, $a1, $51, $00, $ab, $00
    db $a1, $52, $00, $ab, $00, $a1, $5c, $00, $ab, $00, $a1, $7f, $00, $ab, $00, $a1
    db $8b, $00, $ab, $00, $a3, $0b, $00, $ab, $00, $a3, $0c, $00, $ab, $00, $a3, $51
    db $00, $ab, $00, $a3, $52, $00, $ab, $00, $a3, $5c, $00, $ab, $00, $a3, $7f, $00
    db $ab, $00, $a3, $8b, $00, $ab, $00, $9f, $32, $00, $ac, $00, $9f, $3a, $00, $ac
    db $00, $9f, $44, $00, $ac, $00, $9f, $4c, $00, $ac, $00, $9f, $53, $00, $ac, $00
    db $9f, $89, $00, $ac, $00, $9f, $90, $00, $ac, $00, $9f, $c4, $00, $ac, $00, $9f
    db $c5, $00, $ac, $00, $a1, $32, $00, $ac, $00, $a1, $3a, $00, $ac, $00, $a1, $44
    db $00, $ac, $00, $a1, $4c, $00, $ac, $00, $a1, $53, $00, $ac, $00, $a1, $89, $00
    db $ac, $00, $a1, $90, $00, $ac, $00, $a1, $c4, $00, $ac, $00, $a1, $c5, $00, $ac
    db $00, $a3, $32, $00, $ac, $00, $a3, $3a, $00, $ac, $00, $a3, $44, $00, $ac, $00
    db $a3, $4c, $00, $ac, $00, $a3, $53, $00, $ac, $00, $a3, $89, $00, $ac, $00, $a3
    db $90, $00, $ac, $00, $a3, $c4, $00, $ac, $00, $a3, $c5, $00, $ac, $00, $a4, $32
    db $00, $ac, $00, $a4, $3a, $00, $ac, $00, $a4, $44, $00, $ac, $00, $a4, $4c, $00
    db $ac, $00, $a4, $53, $00, $ac, $00, $a4, $89, $00, $ac, $00, $a4, $90, $00, $ac
    db $00, $a4, $c4, $00, $ac, $00, $a4, $c5, $00, $ac, $00, $a4, $83, $00, $a9, $00
    db $a4, $8d, $00, $a9, $00, $a4, $91, $00, $a9, $00, $a4, $b9, $00, $a9, $00, $a4
    db $bd, $00, $a9, $00, $a6, $83, $00, $a9, $00, $a6, $8d, $00, $a9, $00, $a6, $91
    db $00, $a9, $00, $a6, $b9, $00, $a9, $00, $a6, $bd, $00, $a9, $00, $ab, $83, $00
    db $a9, $00, $ab, $8d, $00, $a9, $00, $ab, $91, $00, $a9, $00, $ab, $b9, $00, $a9
    db $00, $ab, $bd, $00, $a9, $00, $ac, $83, $00, $a9, $00, $ac, $8d, $00, $a9, $00
    db $ac, $91, $00, $a9, $00, $ac, $b9, $00, $a9, $00, $ac, $bd, $00, $a9, $00, $9c
    db $0e, $00, $aa, $00, $9c, $0f, $00, $aa, $00, $9c, $12, $00, $aa, $00, $9c, $22
    db $00, $aa, $00, $9c, $25, $00, $aa, $00, $9c, $42, $00, $aa, $00, $9c, $54, $00
    db $aa, $00, $9c, $56, $00, $aa, $00, $9c, $57, $00, $aa, $00, $9c, $c7, $00, $aa
    db $00, $a9, $0e, $00, $aa, $00, $a9, $0f, $00, $aa, $00, $a9, $12, $00, $aa, $00
    db $a9, $22, $00, $aa, $00, $a9, $25, $00, $aa, $00, $a9, $42, $00, $aa, $00, $a9
    db $54, $00, $aa, $00, $a9, $56, $00, $aa, $00, $a9, $57, $00, $aa, $00, $a9, $c7
    db $00, $aa, $00, $ab, $0e, $00, $aa, $00, $ab, $0f, $00, $aa, $00, $ab, $12, $00
    db $aa, $00, $ab, $22, $00, $aa, $00, $ab, $25, $00, $aa, $00, $ab, $42, $00, $aa
    db $00, $ab, $54, $00, $aa, $00, $ab, $56, $00, $aa, $00, $ab, $57, $00, $aa, $00
    db $ab, $c7, $00, $aa, $00, $ac, $0e, $00, $aa, $00, $ac, $0f, $00, $aa, $00, $ac
    db $12, $00, $aa, $00, $ac, $22, $00, $aa, $00, $ac, $25, $00, $aa, $00, $ac, $42
    db $00, $aa, $00, $ac, $54, $00, $aa, $00, $ac, $56, $00, $aa, $00, $ac, $57, $00
    db $aa, $00, $ac, $c7, $00, $aa, $00, $9c, $ae, $00, $a9, $00, $a1, $ae, $00, $a9
    db $00, $a4, $ae, $00, $a9, $00, $ab, $ae, $00, $a9, $00, $ac, $ae, $00, $a9, $00
    db $c4, $00, $00, $b8, $00, $c4, $04, $00, $b8, $00, $c4, $05, $00, $b8, $00, $c4
    db $0b, $00, $b8, $00, $c5, $00, $00, $b8, $00, $c5, $04, $00, $b8, $00, $c5, $05
    db $00, $b8, $00, $c5, $0b, $00, $b8, $00, $b0, $51, $00, $bb, $00, $b0, $52, $00
    db $bb, $00, $b0, $55, $00, $bb, $00, $b0, $58, $00, $bb, $00, $b8, $51, $00, $bb
    db $00, $b8, $52, $00, $bb, $00, $b8, $55, $00, $bb, $00, $b8, $58, $00, $bb, $00
    db $c4, $51, $00, $bb, $00, $c4, $52, $00, $bb, $00, $c4, $55, $00, $bb, $00, $c4
    db $58, $00, $bb, $00, $c5, $51, $00, $bb, $00, $c5, $52, $00, $bb, $00, $c5, $55
    db $00, $bb, $00, $c5, $58, $00, $bb, $00, $b1, $00, $00, $bf, $00, $b1, $47, $00
    db $bf, $00, $b1, $4d, $00, $bf, $00, $b1, $55, $00, $bf, $00, $b1, $5b, $00, $bf
    db $00, $b1, $69, $00, $bf, $00, $b5, $00, $00, $bf, $00, $b5, $47, $00, $bf, $00
    db $b5, $4d, $00, $bf, $00, $b5, $55, $00, $bf, $00, $b5, $5b, $00, $bf, $00, $b5
    db $69, $00, $bf, $00, $b7, $00, $00, $bf, $00, $b7, $47, $00, $bf, $00, $b7, $4d
    db $00, $bf, $00, $b7, $55, $00, $bf, $00, $b7, $5b, $00, $bf, $00, $b7, $69, $00
    db $bf, $00, $bb, $0c, $00, $bd, $00, $bb, $25, $00, $bd, $00, $bb, $3e, $00, $bd
    db $00, $bb, $90, $00, $bd, $00, $bb, $93, $00, $bd, $00, $bb, $98, $00, $bd, $00
    db $bb, $a9, $00, $bd, $00, $bb, $ac, $00, $bd, $00, $b9, $9c, $00, $c1, $00, $b9
    db $aa, $00, $c1, $00, $b9, $29, $00, $c0, $00, $b9, $42, $00, $c0, $00, $b9, $56
    db $00, $c0, $00, $b9, $83, $00, $c0, $00, $b9, $97, $00, $c0, $00, $bd, $32, $00
    db $42, $00, $bd, $36, $00, $42, $00, $bd, $3e, $00, $42, $00, $bd, $41, $00, $42
    db $00, $bd, $43, $00, $42, $00, $bd, $44, $00, $42, $00, $bd, $42, $00, $c1, $00
    db $94, $59, $00, $99, $00, $59, $94, $00, $99, $00, $c7, $97, $00, $9a, $00, $97
    db $c7, $00, $9a, $00, $ad, $22, $00, $c8, $00, $ad, $25, $00, $c8, $00, $aa, $12
    db $00, $ca, $00, $99, $6c, $00, $cb, $00, $ca, $29, $00, $cc, $00, $c8, $cb, $00
    db $cd, $00, $c9, $cb, $00, $cd, $00, $9a, $2c, $00, $ce, $00, $ce, $42, $00, $cf
    db $00, $cf, $13, $00, $d0, $00, $d0, $24, $00, $d1, $00, $cc, $43, $00, $d2, $00
    db $cd, $d0, $00, $d3, $00, $cd, $d1, $00, $d3, $00, $d0, $cd, $00, $d3, $00, $d1
    db $cd, $00, $d3, $00, $d3, $80, $00, $d4, $00, $d4, $d2, $00, $d5, $00, $d5, $6d
    db $00, $d6, $00, $17, $f2, $00, $1e, $00, $3a, $f1, $00, $32, $00, $3b, $f1, $00
    db $32, $00, $41, $f1, $00, $32, $00, $45, $f1, $00, $32, $00, $2e, $f1, $00, $40
    db $00, $36, $f1, $00, $41, $00, $2d, $f0, $00, $3e, $00, $32, $f0, $00, $3e, $00
    db $3a, $f0, $00, $3e, $00, $3b, $f0, $00, $3e, $00, $3f, $f0, $00, $3e, $00, $40
    db $f0, $00, $3e, $00, $41, $f0, $00, $3e, $00, $2f, $f3, $00, $34, $00, $3a, $f6
    db $00, $32, $00, $31, $f1, $00, $35, $00, $47, $f1, $00, $52, $00, $51, $f1, $00
    db $52, $00, $53, $f1, $00, $52, $00, $55, $f1, $00, $52, $00, $48, $f2, $00, $51
    db $00, $51, $f6, $00, $53, $00, $47, $f7, $00, $52, $00, $51, $f7, $00, $52, $00
    db $53, $f7, $00, $52, $00, $55, $f7, $00, $52, $00, $46, $f0, $00, $4e, $00, $5a
    db $f2, $00, $64, $00, $64, $f6, $00, $67, $00, $67, $f1, $00, $66, $00, $61, $f2
    db $00, $62, $00, $6e, $f0, $00, $76, $00, $74, $f0, $00, $7c, $00, $6f, $f2, $00
    db $7a, $00, $73, $f8, $00, $79, $00, $71, $f6, $00, $7b, $00, $7a, $f7, $00, $7e
    db $00, $7c, $f7, $00, $7e, $00, $72, $f4, $00, $78, $00, $7c, $f1, $00, $79, $00
    db $79, $f6, $00, $7f, $00, $82, $f0, $00, $8a, $00, $85, $f0, $00, $8a, $00, $87
    db $f0, $00, $8a, $00, $86, $f7, $00, $8c, $00, $8a, $f7, $00, $8c, $00, $8b, $f7
    db $00, $8c, $00, $88, $f1, $00, $84, $00, $89, $f1, $00, $84, $00, $8b, $f1, $00
    db $84, $00, $8c, $f1, $00, $84, $00, $88, $f2, $00, $93, $00, $89, $f2, $00, $93
    db $00, $8b, $f2, $00, $93, $00, $8c, $f2, $00, $93, $00, $88, $f7, $00, $96, $00
    db $89, $f7, $00, $96, $00, $8b, $f7, $00, $96, $00, $8c, $f7, $00, $96, $00, $83
    db $f1, $00, $97, $00, $83, $f8, $00, $98, $00, $83, $f7, $00, $8d, $00, $83, $f2
    db $00, $8e, $00, $91, $f1, $00, $90, $00, $91, $f8, $00, $98, $00, $91, $f7, $00
    db $83, $00, $91, $f2, $00, $97, $00, $90, $f1, $00, $83, $00, $90, $f8, $00, $98
    db $00, $90, $f2, $00, $97, $00, $90, $f7, $00, $91, $00, $9b, $f2, $00, $a3, $00
    db $9b, $f6, $00, $a8, $00, $a3, $f6, $00, $a8, $00, $a0, $f6, $00, $a5, $00, $a6
    db $f6, $00, $a5, $00, $9c, $f3, $00, $a6, $00, $a1, $f3, $00, $a6, $00, $a4, $f3
    db $00, $a6, $00, $a9, $f3, $00, $a6, $00, $ab, $f3, $00, $a6, $00, $ac, $f3, $00
    db $a6, $00, $9e, $f3, $00, $a7, $00, $aa, $f6, $00, $ad, $00, $9c, $f1, $00, $9c
    db $00, $a9, $f1, $00, $9c, $00, $aa, $f1, $00, $9c, $00, $ab, $f1, $00, $9c, $00
    db $ac, $f1, $00, $9c, $00, $a6, $f1, $00, $ac, $00, $af, $f0, $00, $b7, $00, $bd
    db $f1, $00, $b9, $00, $bf, $f6, $00, $be, $00, $c0, $f6, $00, $ba, $00, $c1, $f6
    db $00, $ba, $00, $b9, $f1, $00, $b9, $02, $bd, $f5, $00, $c6, $00, $bd, $f7, $00
    db $c2, $00, $bd, $f3, $00, $bc, $00, $f0, $30, $00, $09, $00, $f0, $58, $00, $09
    db $00, $f0, $ae, $00, $09, $00, $f0, $1a, $00, $06, $00, $f0, $7b, $00, $06, $00
    db $f0, $f9, $00, $0f, $02, $f0, $a1, $00, $0b, $00, $f0, $c4, $00, $0b, $00, $f0
    db $c5, $00, $0b, $00, $f0, $32, $00, $0a, $00, $f0, $41, $00, $0a, $00, $f0, $42
    db $00, $0a, $00, $f0, $43, $00, $0a, $00, $f0, $44, $00, $0a, $00, $f0, $b9, $00
    db $10, $00, $f0, $81, $00, $0b, $00, $f1, $f9, $00, $29, $00, $f1, $0e, $00, $25
    db $00, $f1, $0f, $00, $25, $00, $f1, $12, $00, $25, $00, $f1, $2a, $00, $25, $00
    db $f1, $3e, $00, $25, $00, $f1, $56, $00, $25, $00, $f1, $57, $00, $25, $00, $f1
    db $96, $00, $25, $00, $f1, $97, $00, $25, $00, $f1, $42, $00, $2a, $00, $f1, $90
    db $00, $2a, $00, $f1, $95, $00, $2a, $00, $f1, $98, $00, $2a, $00, $f1, $9c, $00
    db $9c, $00, $f1, $a9, $00, $9c, $00, $f1, $aa, $00, $9c, $00, $f1, $ad, $00, $9c
    db $00, $f1, $81, $00, $24, $00, $f2, $19, $00, $3f, $00, $f2, $b9, $00, $3a, $00
    db $f2, $bd, $00, $3a, $00, $f2, $c0, $00, $3a, $00, $f2, $c1, $00, $3a, $00, $f2
    db $c4, $00, $3a, $00, $f2, $c5, $00, $3a, $00, $f3, $00, $00, $55, $00, $f3, $32
    db $00, $55, $00, $f3, $37, $00, $55, $00, $f3, $3a, $00, $55, $00, $f3, $83, $00
    db $55, $00, $f3, $ae, $00, $55, $00, $f3, $c0, $00, $55, $00, $f3, $10, $00, $54
    db $00, $f3, $11, $00, $54, $00, $f3, $36, $00, $54, $00, $f3, $3b, $00, $54, $00
    db $f3, $3f, $00, $54, $00, $f3, $41, $00, $54, $00, $f3, $9c, $00, $54, $00, $f3
    db $a9, $00, $54, $00, $f3, $aa, $00, $54, $00, $f3, $ac, $00, $54, $00, $f3, $ad
    db $00, $54, $00, $f4, $0b, $00, $69, $00, $f4, $45, $00, $69, $00, $f4, $4a, $00
    db $69, $00, $f4, $71, $00, $69, $00, $f4, $7a, $00, $69, $00, $f4, $87, $00, $69
    db $00, $f4, $b5, $00, $69, $00, $f7, $1b, $00, $9c, $00, $f7, $1b, $00, $9c, $00
    db $f7, $1f, $00, $9c, $00, $f7, $22, $00, $9c, $00, $f7, $25, $00, $9c, $00, $f7
    db $29, $00, $9c, $00, $f7, $2a, $00, $9c, $00, $f7, $2c, $00, $9c, $00, $f7, $07
    db $00, $a4, $00, $f7, $0a, $00, $a4, $00, $f7, $2d, $00, $a4, $00, $f7, $3b, $00
    db $a4, $00, $f7, $58, $00, $a4, $00, $f7, $5a, $00, $a4, $00, $f7, $64, $00, $a4
    db $00, $f7, $74, $00, $a4, $00, $f7, $7c, $00, $a4, $00, $f8, $32, $00, $bd, $00
    db $f8, $3a, $00, $bd, $00, $f8, $41, $00, $bd, $00, $f8, $42, $00, $bd, $00, $f8
    db $7f, $00, $c5, $00, $f8, $81, $00, $c5, $00, $ff
;5b4e
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
    call GenerateRNG
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
    call GenerateRNG
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

    call GenerateRNG
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

    call GenerateRNG
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
    call GenerateRNG
    ld a, [$c899]
    bit 0, a
    jr z, jr_016_62cf

    jr jr_016_629f

jr_016_628a:
    call GenerateRNG
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
    call GenerateRNG
    ld a, [$c899]
    ld b, a
    ld a, $05
    call Call_000_1dfb
    ld [$c92c], a
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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
    call GenerateRNG
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


    db $02

    nop
    ld c, h
    inc b

    db $04

    nop
    or b
    inc b

    db $06

    nop
    inc d
    dec b

    db $08

    nop
    ld a, b
    dec b

    db $0a

    nop
    db $dc
    dec b

    db $0c

    nop
    ld b, b
    db $06

    db $0e

    nop
    and h
    db $06

    db $10

    nop
    db $08
    rlca

    db $12

    nop
    ld l, h
    rlca

    db $14

    nop
    ret nc

    rlca

    db $16

    nop
    inc [hl]
    db $08

    db $18

    nop
    sbc b
    db $08

    db $1a

    nop
    db $fc
    db $08

    db $1c

    nop
    ld h, b
    add hl, bc

    db $1e

    nop
    db $c4
    add hl, bc

    db $20

    nop
    jr z, jr_016_6e87

    db $22

    nop
    adc h
    ld a, [bc]

    db $24

    nop
    ldh a, [$0a]

    db $26

    nop

jr_016_6e87:
    ld d, h
    dec bc

    db $28

    nop
    cp b
    dec bc

    db $2a

    nop
    inc e
    inc c

    db $2c

    nop

    db $80, $0c, $2e

    nop

    db $e4, $0c, $30

    nop
    ld c, b
    dec c

    db $32

    nop

    db $ac, $0d, $34

    nop
    db $10
    db $0e

    db $36

    nop

    db $74, $0e

    jr c, jr_016_6eab

jr_016_6eab:
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
