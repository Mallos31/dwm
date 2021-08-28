; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    jr @+$0d

    ld b, b
    sbc $42
    ld a, a
    ld d, [hl]
    add [hl]
    ld d, [hl]
    adc l
    ld d, [hl]
    xor a
    ld hl, wMenu_selection
    ld bc, $0008
    call Call_000_12c7
    xor a
    ld hl, $c827
    ld bc, $0012
    call Call_000_12c7
    xor a
    ld hl, $c8d2
    ld bc, $0008
    call Call_000_12c7
    ld hl, $9800
    ld a, l
    ld [$c8d6], a
    ld a, h
    ld [$c8d7], a
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $1702
    rst $10
    ld hl, $1709
    rst $10
    ld hl, $170a
    rst $10
    ld a, $fc
    call Call_000_1688
    ld hl, $9800
    ld bc, $0400
    ld a, $e0
    call Call_000_12c7
    ld de, $3f03
    ld hl, $8800
    call Call_000_14cf
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld de, $2f00
    ld hl, $8000
    call Call_000_14cf
    ld a, [$c8c3]
    ld [$ca8d], a
    ld a, [$c8c4]
    ld [$ca8e], a
    ld a, [$c8c5]
    ld [$ca8f], a
    ld a, [$c8c6]
    ld [$ca90], a
    call Call_018_42d1
    cp $ff
    jr z, jr_018_40d0

    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    or a
    jr z, jr_018_40d0

    ld de, $313f
    push de
    call Call_018_42d1
    ld hl, $cb24
    call Call_000_223b
    pop de
    ld a, [hl]
    or a
    jr nz, jr_018_40ca

    call Call_018_42d1
    ld hl, $caca
    call Call_000_223b
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld a, l
    add $23
    ld l, a
    ld a, h
    adc $41
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a

jr_018_40ca:
    ld hl, $8200
    call Call_000_14cf

jr_018_40d0:
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    ld hl, $5605
    rst $10
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    ld hl, $cac1
    ld de, $a1fb
    ld bc, $0ba4
    call Call_018_4604
    call Call_018_5340
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    call Call_000_1264
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    xor a
    ld [$c865], a
    ld a, $03
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


    ld bc, $022f
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    cpl
    ld b, $2f
    rlca
    cpl
    ld [$092f], sp
    cpl
    ld a, [bc]
    cpl
    dec bc
    cpl
    inc c
    cpl
    dec c
    cpl
    ld c, $2f
    rrca
    cpl
    db $10
    cpl
    nop
    jr c, @+$03

    jr c, jr_018_414a

    jr c, @+$05

jr_018_414a:
    jr c, jr_018_4150

    jr c, @+$07

    jr c, jr_018_4156

jr_018_4150:
    jr c, @+$09

    jr c, jr_018_415c

    jr c, @+$0b

jr_018_4156:
    jr c, jr_018_4162

    jr c, @+$0d

    jr c, jr_018_4168

jr_018_415c:
    jr c, @+$0f

    jr c, jr_018_416e

    jr c, @+$11

jr_018_4162:
    jr c, jr_018_4174

    jr c, @+$13

    jr c, jr_018_417a

jr_018_4168:
    jr c, @+$15

    jr c, jr_018_4180

    jr c, @+$17

jr_018_416e:
    jr c, jr_018_4186

    jr c, @+$19

    jr c, jr_018_418c

jr_018_4174:
    jr c, @+$1b

    jr c, jr_018_4192

    jr c, @+$1d

jr_018_417a:
    jr c, jr_018_4198

    jr c, @+$1f

    jr c, jr_018_419e

jr_018_4180:
    jr c, @+$21

    jr c, jr_018_41a4

    jr c, @+$23

jr_018_4186:
    jr c, jr_018_41aa

    jr c, @+$25

    jr c, jr_018_41b0

jr_018_418c:
    jr c, @+$27

    jr c, jr_018_41b6

    jr c, @+$29

jr_018_4192:
    jr c, jr_018_41bc

    jr c, @+$2b

    jr c, jr_018_41c2

jr_018_4198:
    jr c, @+$2d

    jr c, jr_018_41c8

    jr c, @+$2f

jr_018_419e:
    jr c, jr_018_41ce

    jr c, @+$31

    jr c, jr_018_41d4

jr_018_41a4:
    jr c, @+$33

    jr c, jr_018_41da

    jr c, jr_018_41dd

jr_018_41aa:
    jr c, @+$36

    jr c, jr_018_41e3

    jr c, jr_018_41e6

jr_018_41b0:
    jr c, jr_018_41e9

    jr c, jr_018_41ec

    jr c, jr_018_41ef

jr_018_41b6:
    jr c, jr_018_41f2

    jr c, jr_018_41f5

    jr c, jr_018_41f8

jr_018_41bc:
    jr c, jr_018_41fb

    jr c, jr_018_41fe

    jr c, jr_018_4201

jr_018_41c2:
    jr c, @+$42

    jr c, jr_018_4207

    jr c, jr_018_420a

jr_018_41c8:
    jr c, jr_018_420d

    jr c, @+$46

    jr c, jr_018_4213

jr_018_41ce:
    jr c, @+$48

    jr c, jr_018_4219

    jr c, jr_018_41d4

jr_018_41d4:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_018_41da:
    add hl, sp
    inc b
    add hl, sp

jr_018_41dd:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_018_41e3:
    ld [$0939], sp

jr_018_41e6:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_018_41e9:
    dec bc
    add hl, sp
    inc c

jr_018_41ec:
    add hl, sp
    dec c
    add hl, sp

jr_018_41ef:
    ld c, $39
    rrca

jr_018_41f2:
    add hl, sp
    db $10
    add hl, sp

jr_018_41f5:
    ld de, $1239

jr_018_41f8:
    add hl, sp
    inc de
    add hl, sp

jr_018_41fb:
    inc d
    add hl, sp
    dec d

jr_018_41fe:
    add hl, sp
    ld d, $39

jr_018_4201:
    rla
    add hl, sp
    jr jr_018_423e

    add hl, de
    add hl, sp

jr_018_4207:
    ld a, [de]
    add hl, sp
    dec de

jr_018_420a:
    add hl, sp
    inc e
    add hl, sp

jr_018_420d:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_018_4213:
    jr nz, jr_018_424e

    ld hl, $2239
    add hl, sp

jr_018_4219:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_018_425e

    add hl, hl
    add hl, sp
    ld a, [hl+]
    add hl, sp
    dec hl
    add hl, sp
    inc l
    add hl, sp
    dec l
    add hl, sp
    ld l, $39
    cpl
    add hl, sp
    jr nc, jr_018_426e

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_018_423e:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_018_427e

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_018_424e:
    add hl, sp
    ld a, $39
    ccf
    add hl, sp
    ld b, b
    add hl, sp
    ld b, c
    add hl, sp
    ld b, d
    add hl, sp
    ld b, e
    add hl, sp
    ld b, h
    add hl, sp
    ld b, l

jr_018_425e:
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc bc
    ld a, [hl-]
    inc b
    ld a, [hl-]
    dec b

jr_018_426e:
    ld a, [hl-]
    ld b, $3a
    rlca
    ld a, [hl-]
    ld [$093a], sp
    ld a, [hl-]
    ld a, [bc]
    ld a, [hl-]
    dec bc
    ld a, [hl-]
    inc c
    ld a, [hl-]
    dec c

jr_018_427e:
    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld de, $123a
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc d
    ld a, [hl-]
    dec d
    ld a, [hl-]
    ld d, $3a
    rla
    ld a, [hl-]
    jr jr_018_42cf

    add hl, de
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    dec de
    ld a, [hl-]
    inc e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld e, $3a
    rra
    ld a, [hl-]
    jr nz, @+$3c

    ld hl, $223a
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc h
    ld a, [hl-]
    dec h
    ld a, [hl-]
    ld h, $3a
    daa
    ld a, [hl-]
    jr z, jr_018_42ef

    add hl, hl
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec l
    ld a, [hl-]
    ld l, $3a
    cpl
    ld a, [hl-]
    jr nc, jr_018_42ff

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_018_42cf:
    ld [hl], $3a

Call_018_42d1:
    ld a, [$db55]
    or a
    jr nz, jr_018_42da

    ld a, $15
    ret


jr_018_42da:
    ld a, [$c8ba]
    ret


    call Call_018_4dda
    ld a, [$c8d2]
    rst $00
    dec h
    ld b, e
    ld c, a
    ld b, e
    ld l, c
    ld b, e
    ld a, c
    ld b, e
    sub l
    ld b, e

jr_018_42ef:
    or c
    ld b, e
    call $0543
    ld b, h
    ld l, b
    ld b, h
    xor l
    ld b, h
    pop hl
    ld b, h
    dec d
    ld b, l
    adc e
    ld b, l

jr_018_42ff:
    ld a, [hl+]
    ld b, [hl]
    ld e, c
    ld b, [hl]
    sub [hl]
    ld b, [hl]
    and c
    ld b, [hl]
    xor h
    ld b, [hl]
    cp e
    ld b, a
    ld e, d
    ld c, d
    inc b
    ld c, e
    add hl, bc
    ld c, e
    ld b, [hl]
    ld c, e
    db $e3
    ld c, e
    ld sp, hl
    ld c, e
    ld c, c
    ld c, h
    db $dd
    ld c, h
    ld a, [de]
    ld c, l
    dec h
    ld c, l
    ld c, [hl]
    ld c, l
    sub [hl]
    ld c, l
    or b
    ld c, l
    ld a, $02
    ld [$c822], a
    ld a, $4a
    ld [$c823], a
    ld hl, $96c0
    ld de, $1001
    call Call_018_503b
    call Call_018_5142
    call Call_018_5390
    ld de, $2e07
    call Call_018_4fd5
    call Call_018_5006
    call Call_018_5244
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c850]
    or a
    jr nz, jr_018_4368

    ld hl, $0246
    ld a, [$db55]
    or a
    jr z, jr_018_4361

    ld hl, $0247

jr_018_4361:
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]

jr_018_4368:
    ret


    ld a, [$c825]
    or a
    jr nz, jr_018_4378

    ld hl, $c8d2
    inc [hl]
    ld a, $0c
    ld [wMenu_selection], a

jr_018_4378:
    ret


    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    ret nz

    ld a, $00
    call Call_018_4e8f
    ld a, $07
    call Call_018_4e8f
    ld hl, $c8d2
    inc [hl]
    ld a, $0c
    ld [wMenu_selection], a
    ret


    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    ret nz

    ld a, $01
    call Call_018_4e8f
    ld a, $06
    call Call_018_4e8f
    ld hl, $c8d2
    inc [hl]
    ld a, $0c
    ld [wMenu_selection], a
    ret


    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    ret nz

    ld a, $02
    call Call_018_4e8f
    ld a, $05
    call Call_018_4e8f
    ld hl, $c8d2
    inc [hl]
    ld a, $0c
    ld [wMenu_selection], a
    ret


    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    ret nz

    ld a, $03
    call Call_018_4e8f
    ld a, $04
    call Call_018_4e8f
    ld hl, $c8d2
    inc [hl]
    ld a, $20
    ld [wMenu_selection], a
    ld a, $00
    ld [wOPTN_and_Item_selection], a
    call Call_018_42d1
    cp $ff
    jr z, jr_018_43ff

    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    or a
    jr z, jr_018_43ff

    ret


jr_018_43ff:
    ld a, $1a
    ld [$c8d2], a
    ret


    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    ret nz

    ld hl, $98c0
    ld a, [wOPTN_and_Item_selection]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_018_4455
    ld hl, $98d3
    ld a, [wOPTN_and_Item_selection]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    call Call_018_4455
    ld a, $04
    ld [wMenu_selection], a
    ld a, [wOPTN_and_Item_selection]
    inc a
    ld [wOPTN_and_Item_selection], a
    cp $0a
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $b0
    ld [wMenu_selection], a
    ld a, $c0
    ld [wOPTN_and_Item_selection], a
    ld a, $f8
    ld [wPLAN_selection], a
    ld a, $1e
    ld [$c8dd], a
    ret


Call_018_4455:
    ld b, $06

jr_018_4457:
    ld a, $e0
    call Write_gfx_tile
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_018_4457

    ret


    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    jr nz, jr_018_449a

    ld a, $01
    ld [$c8dd], a
    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    call Call_018_4dfc
    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    call Call_018_4e2c
    ld a, [wMenu_selection]
    cp $60
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $1e
    ld [$c8dd], a
    ret


Jump_018_449a:
jr_018_449a:
    ld a, [wMenu_selection]
    call Call_018_4dfc
    ld a, [wOPTN_and_Item_selection]
    call Call_018_4e2c
    ld a, [wPLAN_selection]
    call Call_018_4e00
    ret


    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    jr nz, jr_018_449a

    ld a, $01
    ld [$c8dd], a
    ld a, [wMenu_selection]
    call Call_018_4dfc
    ld a, [wPLAN_selection]
    call Call_018_4e00
    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    call Call_018_4e2c
    ld a, [wOPTN_and_Item_selection]
    cp $50
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $1e
    ld [$c8dd], a
    ret


    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    jr nz, jr_018_449a

    ld a, $01
    ld [$c8dd], a
    ld a, [wMenu_selection]
    call Call_018_4dfc
    ld a, [wOPTN_and_Item_selection]
    call Call_018_4e2c
    ld a, [wPLAN_selection]
    inc a
    ld [wPLAN_selection], a
    call Call_018_4e00
    ld a, [wPLAN_selection]
    cp $40
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $3c
    ld [$c8dd], a
    ret


    ld a, [$c8dd]
    dec a
    ld [$c8dd], a
    jr z, jr_018_4525

    cp $1e
    jr c, jr_018_4578

    jp Jump_018_449a


jr_018_4525:
    ld a, $01
    ld [$c8dd], a
    ld a, [wMenu_selection]
    call Call_018_4dfc
    ld a, [wPLAN_selection]
    dec a
    ld [wPLAN_selection], a
    call Call_018_4dfc
    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    call Call_018_4e2c
    ld a, [wOPTN_and_Item_selection]
    cp $fe
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld de, $c8bb
    ld hl, $c180
    call Call_000_0c80
    call Call_018_42d1
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld hl, $0248
    ld a, [$db55]
    or a
    jr z, jr_018_4574

    ld hl, $0249

jr_018_4574:
    call Call_000_096d
    ret


jr_018_4578:
    ld a, [wMenu_selection]
    call Call_018_4dfc
    ld a, [wOPTN_and_Item_selection]
    call Call_018_4e2c
    ld a, [wPLAN_selection]
    call Call_018_4dfc
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, [$db55]
    or a
    jr nz, jr_018_45fe

    ld de, $cac1
    ld b, $00

jr_018_459b:
    ld a, [de]
    or a
    jr z, jr_018_45b8

    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc b
    ld a, b
    cp $14
    jr nz, jr_018_459b

    ld hl, $024b
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


jr_018_45b8:
    ld hl, $d5d0
    ld de, $d6fa
    ld b, $95

jr_018_45c0:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_018_45c0

    di
    ld hl, $ca8d
    ld de, $a1c7
    ld bc, $0007
    call Call_018_4604
    ld hl, $ca94
    ld de, $a1ce
    ld bc, $0020
    call Call_018_4604
    ei
    ld hl, $ca94
    ld a, [$d703]
    call Call_000_2670
    ld hl, $0105
    rst $10
    di
    ld hl, $ca94
    ld de, $a1ce
    ld bc, $0020
    call Call_018_4617
    call Call_000_2197
    ei

jr_018_45fe:
    ld a, $1a
    ld [$c8d2], a
    ret


Call_018_4604:
    ld a, $0a
    ld [$0100], a

jr_018_4609:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_018_4609

    ld a, $00
    ld [$0100], a
    ret


Call_018_4617:
    ld a, $0a
    ld [$0100], a

jr_018_461c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_018_461c

    ld a, $00
    ld [$0100], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_018_5142
    call Call_018_463d
    call Call_018_5006
    ld hl, $c8d2
    inc [hl]
    ret


Call_018_463d:
    call Call_018_4eee
    ld de, $2e07
    call Call_018_4fd5
    ld de, $547a
    call Call_018_4fd5
    call Call_018_5244
    ld de, $4690
    ld a, [$c8de]
    call Call_018_5303
    ret


    ld de, $4690
    ld hl, $c8de
    ld b, $02
    call Call_018_51eb
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_018_4672

jr_018_466b:
    ld hl, $c8d2
    inc [hl]
    jp Jump_018_468f


jr_018_4672:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_018_468f

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_018_466b

    xor a
    ld [$c8e0], a
    ld a, $1b
    ld [$c8d2], a

Jump_018_468f:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $024c
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $1a
    ld [$c8d2], a
    ret


    call Call_018_46d6
    or a
    jr nz, jr_018_46be

    ld hl, $0252
    call Call_000_096d
    ld a, $1e
    ld [$c8d2], a
    ret


jr_018_46be:
    call Call_018_471e
    ld hl, $024d
    ld a, [$c8e0]
    and $01
    jr z, jr_018_46ce

    ld hl, $0253

jr_018_46ce:
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_018_46d6:
    ld de, $cac1
    ld b, $00
    ld c, $00

jr_018_46dd:
    push de
    ld a, [de]
    or a
    jr z, jr_018_470a

    cp $02
    jr z, jr_018_470a

    push bc
    push de
    push hl
    call Call_018_4774
    pop hl
    pop de
    pop bc
    jr nz, jr_018_470a

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [$c8e0]
    and $01
    ld l, a
    ld a, [de]
    ld h, a
    srl a
    or h
    and $01
    xor l
    jr nz, jr_018_470a

    inc c

jr_018_470a:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc b
    ld a, b
    cp $14
    jr nz, jr_018_46dd

    ld a, c
    ld [$c8d8], a
    ret


Call_018_471e:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $00
    ld c, $00

jr_018_4733:
    push de
    ld a, [de]
    or a
    jr z, jr_018_4763

    cp $02
    jr z, jr_018_4763

    push bc
    push de
    push hl
    call Call_018_4774
    pop hl
    pop de
    pop bc
    jr nz, jr_018_4763

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push hl
    ld a, [$c8e0]
    and $01
    ld l, a
    ld a, [de]
    ld h, a
    srl a
    or h
    and $01
    xor l
    pop hl
    jr nz, jr_018_4763

    ld [hl], c
    inc hl

jr_018_4763:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    inc b
    ld a, b
    cp $14
    jr nz, jr_018_4733

    ret


Call_018_4774:
    ld hl, $a1c7
    call Call_000_20ee
    or a
    jr nz, jr_018_47b5

    ld hl, $a1f3
    call Call_000_20ee
    or a
    jr z, jr_018_47b5

    ld hl, $a1f4
    call Call_000_20ee
    cp b
    jr z, jr_018_47b7

    ld hl, $a1f3
    call Call_000_20ee
    cp $01
    jr z, jr_018_47b5

    ld hl, $a1f5
    call Call_000_20ee
    cp b
    jr z, jr_018_47b7

    ld hl, $a1f3
    call Call_000_20ee
    cp $02
    jr z, jr_018_47b5

    ld hl, $a1f6
    call Call_000_20ee
    cp b
    jr z, jr_018_47b7

jr_018_47b5:
    xor a
    ret


jr_018_47b7:
    ld a, $01
    or a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_018_5142
    call Call_018_4970
    call Call_018_480d
    call Call_018_47d4
    call Call_018_5006
    ld hl, $c8d2
    inc [hl]
    ret


Call_018_47d4:
    call Call_018_4d38
    ld de, $5577
    ld a, [$c8e0]
    and $01
    jr nz, jr_018_47ed

    ld de, $55f7
    call Call_018_4fd5
    call Call_018_49f8
    ld de, $549f

jr_018_47ed:
    call Call_018_4fd5
    call Call_018_5244
    ld de, $4aec
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4800

    ld de, $4af8

jr_018_4800:
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, $c8e2
    call Call_018_52e1
    ret


Call_018_480d:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [$c8e0]
    and $01
    jr nz, jr_018_4869

    ld hl, $9000
    call Call_018_482e
    call Call_018_482e
    call Call_018_482e

Call_018_482e:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_018_484f

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_018_5074
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_018_484f:
    ld b, $20

jr_018_4851:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_018_4851

    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_018_4869:
    ld hl, $9000
    call Call_018_487c
    call Call_018_487c
    call Call_018_487c
    call Call_018_487c
    call Call_018_48c0
    ret


Call_018_487c:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_018_48a6

    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    pop hl
    push hl
    call Call_018_503b
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_018_48a6:
    ld b, $48

jr_018_48a8:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_018_48a8

    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_018_48c0:
    ld a, [$c8e3]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9240
    call Call_018_48da
    call Call_018_48da
    call Call_018_48da

Call_018_48da:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_018_4956

    ld hl, $cb24
    call Call_000_223b
    ld a, [hl]
    cp $02
    ld a, $98
    jr nz, jr_018_48fb

    ld a, l
    add $a8
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld a, [hl]
    and $01
    add $a7

jr_018_48fb:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    pop hl
    push hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_018_4956:
    ld b, $08

jr_018_4958:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_018_4958

    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_018_4970:
    ld a, [$c8e0]
    and $01
    ret nz

    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $9100
    call Call_018_5074
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $9140
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_018_49f8:
    ld a, [$c8e0]
    and $01
    ret nz

    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $0161
    call Call_018_4f79
    ld a, $de
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $e0
    ld [hl-], a
    call Call_018_5434
    pop af
    push af
    ld hl, $cac1
    call Call_000_223b
    pop af
    ld b, a
    ld a, [hl]
    cp $02
    jr z, jr_018_4a46

    call Call_018_4774
    jr nz, jr_018_4a46

    jr jr_018_4a50

jr_018_4a46:
    ld hl, $0169
    call Call_018_4f79
    ld a, $e3
    ld [hl], a
    ret


jr_018_4a50:
    ld hl, $0169
    call Call_018_4f79
    ld a, $e0
    ld [hl], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $4aec
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4a6c

    ld de, $4af8

jr_018_4a6c:
    ld hl, $c8e2
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_018_5162
    pop af
    ld hl, $c8e2
    cp [hl]
    jr z, jr_018_4a8d

    call Call_018_4970
    call Call_018_49f8
    call Call_018_5006

jr_018_4a8d:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_018_4aa0

    call Call_018_480d
    call Call_018_4970
    call Call_018_49f8
    call Call_018_5006

jr_018_4aa0:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_018_4abd

    ld hl, $0251
    call Call_000_096d
    call Call_018_5142
    call Call_018_4d38
    call Call_018_5006
    ld a, $1d
    ld [$c8d2], a
    jr jr_018_4aeb

jr_018_4abd:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_018_4aeb

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c8df], a
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cac0], a
    ld hl, $c8d2
    inc [hl]

Jump_018_4aeb:
jr_018_4aeb:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    dec bc
    ld bc, $0021
    ld h, c
    nop
    and c
    nop
    pop hl
    nop
    rst $38
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_018_5142
    call Call_018_4b1c
    call Call_018_5006
    ld hl, $c8d2
    inc [hl]
    ret


Call_018_4b1c:
    call Call_018_47d4
    ld de, $54f9
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4b2c

    ld de, $5523

jr_018_4b2c:
    call Call_018_4fd5
    call Call_018_5244
    ld de, $4bb8
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4b3f

    ld de, $4bbe

jr_018_4b3f:
    ld a, [$c8df]
    call Call_018_5303
    ret


    ld de, $4bb8
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4b53

    ld de, $4bbe

jr_018_4b53:
    ld hl, $c8df
    ld b, $02
    call Call_018_51eb
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_018_4b80

    call Call_018_5142
    call Call_018_4970
    call Call_018_480d
    call Call_018_47d4
    call Call_018_5006
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_018_4bb7


jr_018_4b80:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_018_4bb7

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8df]
    cp $81
    jr z, jr_018_4ba2

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_018_4bb7


jr_018_4ba2:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $a1c7
    call Call_000_20ee
    or a
    jr z, jr_018_4bb7

Jump_018_4bb7:
jr_018_4bb7:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
    dec l
    nop
    ld l, l
    nop
    rst $38
    rst $38
    push bc
    call Call_000_20ee
    pop bc
    cp $ff
    ret z

    ld c, a
    ld a, [$cac0]
    cp c
    ret z

    push bc
    ld a, c
    ld hl, $a245
    call Call_000_223b
    call Call_000_20ee
    pop bc
    bit 7, a
    ret nz

    inc b
    ret


    xor a
    ld [$c906], a
    xor a
    ld [wGameState], a
    ld hl, $0701
    rst $10
    ld a, [$c906]
    or a
    ret z

    ld hl, $c8d2
    inc [hl]
    ret


    ld de, $3f03
    ld hl, $8800
    call Call_000_1577
    ld de, $2e00
    ld hl, $8d00
    call Call_000_1577
    ld de, $2f00
    ld hl, $8000
    call Call_000_1577
    ld a, $02
    ld [$c822], a
    ld a, $4a
    ld [$c823], a
    ld hl, $96c0
    ld de, $1001
    call Call_018_503b
    ld hl, $024d
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4c34

    ld hl, $0253

jr_018_4c34:
    call Call_000_096d
    call Call_000_0609
    call Call_018_5142
    call Call_018_4970
    call Call_018_480d
    ld a, $14
    ld [$c8d2], a
    ret


    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8e0]
    and $01
    jr nz, jr_018_4c76

    push hl
    ld a, [hl]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    pop hl

jr_018_4c76:
    push hl
    di
    ld hl, $ca8d
    ld de, $a1c7
    ld bc, $0007
    call Call_018_4604
    ld hl, $ca94
    ld de, $a1ce
    ld bc, $0020
    call Call_018_4604
    ei
    ld hl, $ca94
    ld a, [$d703]
    call Call_000_2670
    pop hl
    ld a, [hl]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $00
    ld hl, $0105
    rst $10
    ld hl, $d5d0
    ld de, $d6fa
    ld b, $95

jr_018_4cb0:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_018_4cb0

    ld hl, $0105
    rst $10
    di
    ld hl, $ca94
    ld de, $a1ce
    ld bc, $0020
    call Call_018_4617
    call Call_000_2197
    ei
    ld a, [$c8e0]
    and $01
    jr nz, jr_018_4cd8

    ld hl, $0254
    call Call_000_096d

jr_018_4cd8:
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, wGameMode
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld [$c86c], a
    xor a
    ld [$c86e], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86d], a
    ld a, $04
    call Call_000_1688
    ret


    ld hl, $0251
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_018_5142
    call Call_018_4d38
    call Call_018_5006
    ld hl, $c8d2
    inc [hl]
    ret


Call_018_4d38:
    call Call_018_463d
    ld de, $5552
    call Call_018_4fd5
    call Call_018_5244
    ld de, $4d90
    ld a, [$c8e0]
    call Call_018_5303
    ret


    ld de, $4d90
    ld hl, $c8e0
    ld b, $02
    call Call_018_51eb
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_018_4d76

    ld hl, $024f
    call Call_000_096d
    call Call_018_5142
    call Call_018_463d
    call Call_018_5006
    ld a, $0e
    ld [$c8d2], a
    jr jr_018_4d8f

jr_018_4d76:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_018_4d8f

    ld a, $59
    call Call_000_1b2c
    ld a, $11
    ld [$c8d2], a
    xor a
    ld [$c8e2], a
    ld [$c8e3], a

Jump_018_4d8f:
jr_018_4d8f:
    ret


    cpl
    nop
    ld l, a
    nop
    rst $38
    rst $38
    ld a, [$c825]
    or a
    ret nz

    ld hl, $0251
    call Call_000_096d
    call Call_018_5142
    call Call_018_4d38
    call Call_018_5006
    ld a, $1d
    ld [$c8d2], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_018_5142
    call Call_018_4970
    call Call_018_480d
    call Call_018_47d4
    call Call_018_5006
    ld hl, $024d
    ld a, [$c8e0]
    and $01
    jr z, jr_018_4dd1

    ld hl, $0253

jr_018_4dd1:
    call Call_000_096d
    ld a, $13
    ld [$c8d2], a
    ret


Call_018_4dda:
    call Call_018_42d1
    cp $ff
    ret z

    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    or a
    ret z

    ld a, [$c8d2]
    cp $0c
    ret c

    cp $17
    ret z

    cp $18
    ret z

    ld a, [wMenu_selection]
    call Call_018_4dfc
    ret


Call_018_4dfc:
    ld c, $20
    jr jr_018_4e02

Call_018_4e00:
    ld c, $00

jr_018_4e02:
    cp $e0
    ret nc

    ld hl, $ffc3
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $58
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld b, $02
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_018_4e20

    ld b, $03

jr_018_4e20:
    ld a, b
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, c
    ld [hl], a
    ld hl, $0402
    rst $10
    ret


Call_018_4e2c:
    ld c, $20
    jr jr_018_4e32

    ld c, $00

jr_018_4e32:
    cp $e0
    ret nc

    ld hl, $ffc3
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $58
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    push bc
    push de
    push hl
    call Call_018_42d1
    ld hl, $cb24
    call Call_000_223b
    ld a, [hl]
    pop hl
    pop de
    pop bc
    or a
    jr nz, jr_018_4e7f

    push bc
    push de
    push hl
    call Call_018_42d1
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    pop hl
    pop de
    pop bc
    add $10
    ld [hl+], a
    ld b, $02
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_018_4e73

    ld b, $03

jr_018_4e73:
    ld a, b
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, c
    ld [hl], a
    ld hl, $0402
    rst $10
    ret


jr_018_4e7f:
    ld a, $55
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, c
    ld [hl], a
    ld hl, $0500
    rst $10
    ret


Call_018_4e8f:
    push af
    ld de, $4f46
    ld a, [$db55]
    or a
    jr z, jr_018_4e9c

    ld de, $4f4e

jr_018_4e9c:
    pop af
    push af
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop af
    add a
    ld hl, $0042
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [de]
    cp $ff
    ret z

    add $80
    call Call_018_4ed1
    inc hl
    inc a
    call Call_018_4ed1
    push af
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    inc a
    call Call_018_4ed1
    inc hl
    inc a
    call Call_018_4ed1
    ret


Call_018_4ed1:
    push hl
    push af
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    pop hl
    push hl
    push af
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $98
    ld h, a
    pop af
    call Write_gfx_tile
    pop hl
    ret


Call_018_4eee:
    ld a, $00
    call Call_018_4f0e
    ld a, $01
    call Call_018_4f0e
    ld a, $02
    call Call_018_4f0e
    ld a, $04
    call Call_018_4f0e
    ld a, $05
    call Call_018_4f0e
    ld a, $06
    call Call_018_4f0e
    ld a, $07

Call_018_4f0e:
    push af
    ld de, $4f46
    ld a, [$db55]
    or a
    jr z, jr_018_4f1b

    ld de, $4f4e

jr_018_4f1b:
    pop af
    push af
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop af
    add a
    ld hl, $c542
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [de]
    cp $ff
    ret z

    add $80
    ld [hl+], a
    inc a
    ld [hl], a
    push af
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ret


    nop
    inc b
    ld [$0cff], sp
    db $10
    inc d
    jr jr_018_4f4f

jr_018_4f4f:
    inc b
    ld [$1cff], sp
    inc b
    jr nz, jr_018_4f7a

Call_018_4f56:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


Call_018_4f65:
    ld a, [$c8d6]
    add l
    ld l, a
    ld a, [$c8d7]
    adc h
    and $03
    ld h, a
    ld a, [$c8d7]
    and $fc
    or h
    ld h, a
    ret


Call_018_4f79:
    ld a, l

jr_018_4f7a:
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_018_4f82:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_018_4f65
    ld a, b
    and $1f
    jr z, jr_018_4f97

    ld b, a

jr_018_4f91:
    call Call_018_4f56
    dec b
    jr nz, jr_018_4f91

jr_018_4f97:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_018_4f82
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_018_4fa8:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_018_4fcd

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_018_4fa8

jr_018_4fcd:
    call Write_gfx_tile
    call Call_018_4f56
    jr jr_018_4fa8

Call_018_4fd5:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_018_4f79
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_018_4fe4:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_018_5003

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_018_4fe4

jr_018_5003:
    ld [hl+], a
    jr jr_018_4fe4

Call_018_5006:
    ld a, [$c8d6]
    ld l, a
    ld a, [$c8d7]
    ld h, a
    ld de, $c500
    ld c, $12

jr_018_5013:
    ld b, $20
    push hl

jr_018_5016:
    ld a, [de]
    call Write_gfx_tile
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_018_5016

    pop hl
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_018_5013

    ret


Call_018_503b:
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_018_5074:
    push hl
    ld hl, $c180
    call Call_000_0c80
    pop hl
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


    ld hl, $c500
    ld de, $c300
    ld bc, $0200

jr_018_5119:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_018_5119

    ld de, $c1c0
    ld c, $02

jr_018_5126:
    ld b, $14

jr_018_5128:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_018_5128

    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_018_5126

    ret


Call_018_5142:
    ld hl, $c500
    ld bc, $0240

jr_018_5148:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_018_5148

    ret


    ld hl, $9800
    ld bc, $0400

jr_018_5157:
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    dec bc
    ld a, b
    or c
    jr nz, jr_018_5157

    ret


Call_018_5162:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_018_51c9

    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_018_518f

    inc hl
    ld a, [hl]
    dec a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_018_51ad

    ld a, c
    dec a
    jr jr_018_51ad

jr_018_518f:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_018_51c9

    inc hl
    ld a, [hl]
    inc a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_018_51ad

    ld a, $00

jr_018_51ad:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_018_520c

    ld a, [$c8e1]
    ld c, a
    push de
    push bc
    ld a, b
    ld b, c
    call Call_000_1dfb
    pop bc
    pop de
    or a
    jr z, jr_018_520c

    dec a
    cp [hl]
    jr nc, jr_018_520c

    ld [hl], a
    jr jr_018_520c

Jump_018_51c9:
jr_018_51c9:
    push bc
    push de
    push hl
    call Call_018_52a8
    pop hl
    pop de
    pop bc
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld [$c8e1], a
    ld a, b
    pop bc
    pop de
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr nz, jr_018_51eb

    ld a, [$c8e1]
    inc a
    ld b, a

Call_018_51eb:
jr_018_51eb:
    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_018_51fd

    ld a, [hl]
    dec a
    cp b
    jr c, jr_018_520b

    dec b
    ld a, b
    jr jr_018_520b

jr_018_51fd:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_018_5214

    ld a, [hl]
    inc a
    cp b
    jr c, jr_018_520b

    ld a, $00

jr_018_520b:
    ld [hl], a

jr_018_520c:
    xor a
    ld [$c8d9], a
    push hl
    push de
    pop de
    pop hl

jr_018_5214:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_018_521d

    set 7, [hl]

jr_018_521d:
    ld a, [hl]
    call Call_018_5249
    ret


    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_018_5234

    ld a, [hl]
    dec a
    cp b
    jr c, jr_018_520b

    dec b
    ld a, b
    jr jr_018_520b

jr_018_5234:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_018_5214

    ld a, [hl]
    inc a
    cp b
    jr c, jr_018_520b

    ld a, $00
    jr jr_018_520b

Call_018_5244:
    xor a
    ld [$c8d9], a
    ret


Call_018_5249:
    ld c, a
    bit 7, a
    jr nz, jr_018_525e

    ld a, [$c8d9]
    and $0f
    push af
    ld a, [$c8d9]
    inc a
    ld [$c8d9], a
    pop af
    ld a, c
    ret nz

jr_018_525e:
    ld c, a
    ld b, $00

jr_018_5261:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_018_4f82
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_018_5291

    ld a, $e9
    bit 7, c
    jr nz, jr_018_5291

    ld a, [$c8d9]
    bit 4, a
    ld a, $e0
    jr nz, jr_018_5291

    ld a, $e8

jr_018_5291:
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_018_5261

Call_018_52a8:
    ld a, b
    cp c
    ret nc

    inc hl
    ld c, [hl]
    dec de
    dec de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    dec hl
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_018_4f82
    pop bc
    pop de
    ld a, c
    and $7f
    add $f1
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_018_52e1:
    ld a, [hl+]
    push af
    push hl
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, b
    cp c
    ld a, $ee
    jr nc, jr_018_52fa

    ld a, $e7

jr_018_52fa:
    ld [hl-], a
    pop bc
    jr nc, jr_018_5302

    ld a, [bc]
    add $f1
    ld [hl], a

jr_018_5302:
    pop af

Call_018_5303:
    ld c, a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_018_4f82
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_018_532e

    ld a, [$c8d9]
    bit 4, a
    ld a, $e0
    jr nz, jr_018_532e

    ld a, $e8

jr_018_532e:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_018_5340:
    ld a, [$ca8d]
    or a
    ret z

    ld a, $00
    ld hl, $caca
    call Call_000_224a
    ld hl, $9000
    call Call_018_5378
    ld a, [$ca8d]
    cp $01
    ret z

    ld a, $01
    ld hl, $caca
    call Call_000_224a
    ld hl, $9240
    call Call_018_5378
    ld a, [$ca8d]
    cp $02
    ret z

    ld a, $02
    ld hl, $caca
    call Call_000_224a
    ld hl, $9480

Call_018_5378:
    cp $ff
    ret z

    push hl
    ld l, a
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
    call Call_000_14cf
    ret


Call_018_5390:
    ld a, [$ca8d]
    cp $03
    jr z, jr_018_53cb

    cp $02
    jr z, jr_018_53ac

    ld a, $00
    ld hl, $00c7
    call Call_018_53f8
    ld a, $00
    ld hl, $00c7
    call Call_018_5410
    ret


jr_018_53ac:
    ld a, $00
    ld hl, $00c4
    call Call_018_53f8
    ld hl, $00ca
    call Call_018_53f8
    ld a, $00
    ld hl, $00c4
    call Call_018_5410
    ld a, $01
    ld hl, $00ca
    call Call_018_5410
    ret


jr_018_53cb:
    ld a, $00
    ld hl, $00c1
    call Call_018_53f8
    ld hl, $00c7
    call Call_018_53f8
    ld hl, $00cd
    call Call_018_53f8
    ld a, $00
    ld hl, $00c1
    call Call_018_5410
    ld a, $01
    ld hl, $00c7
    call Call_018_5410
    ld a, $02
    ld hl, $00cd
    call Call_018_5410
    ret


Call_018_53f8:
    ld c, $06

jr_018_53fa:
    push hl
    push af
    call Call_018_4f79
    pop af
    ld b, $06

jr_018_5402:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_018_5402

    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_018_53fa

    ret


Call_018_5410:
    push af
    ld a, l
    ld [$c820], a
    ld a, h
    ld [$c821], a
    pop af
    push af
    ld hl, $caca
    call Call_000_2229
    ld a, [hl]
    ld [$c81e], a
    pop af
    add $04
    ld [$c81f], a
    ld hl, $1706
    rst $10
    ld hl, $1708
    rst $10
    ret


Call_018_5434:
    ld de, $000a
    push bc
    call Call_018_5450
    pop bc
    or a
    jr z, jr_018_544b

    ld de, $000a
    call Call_018_5450
    call Call_018_5465
    call Call_018_546b

jr_018_544b:
    ld a, c
    call Call_018_5465
    ret


Call_018_5450:
    push hl
    ld h, $ff

jr_018_5453:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_018_5453

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_018_5465:
    add $f0
    call Write_gfx_tile
    ret


Call_018_546b:
    push af
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    pop af
    ret


    ld c, $01
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    xor b
    xor c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld l, h
    ld l, l
    ld l, [hl]
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    nop
    ld bc, $0302
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc b
    dec b
    ld b, $07
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [$0a09], sp
    dec bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc c
    dec c
    ld c, $0f
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], e
    ld [hl], h
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld [hl], e
    ld [hl], h
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $00
    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [hl], l
    db $76
    ld [hl], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld a, b
    ld a, c
    ld a, d
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$ff24], sp
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $ff25
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_018_55e2

    ld a, [de]
    ld h, $ff
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    dec de
    inc e
    dec e
    ld e, $1f

jr_018_55e2:
    jr nz, jr_018_5605

    ld [hl+], a
    inc hl
    daa
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

jr_018_5605:
    cp $e0
    ldh [$e0], a
    db $10
    ld de, $1312
    inc d
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    rra
    ld d, [hl]
    sub h
    ld d, [hl]
    adc c
    ld e, b
    ld d, c
    ld e, d
    xor b
    ld e, d
    and d
    ld e, e
    ld sp, $dd5c
    ld e, h
    dec d
    ld e, l
    jp nz, $8a5d

    ld e, [hl]
    ld a, d
    ld e, a
    and [hl]
    ld e, a
    cp b
    ld h, b
    ld c, e
    ld h, c
    sub b
    ld h, c
    ld a, $62
    ld b, a
    ld h, e
    and a
    ld h, e
    cp a
    ld h, h
    jp hl


    ld h, h
    ld h, c
    ld h, l
    ret


    ld h, l
    jp z, $ea66

    ld h, [hl]
    add hl, bc
    ld h, a
    ld a, [hl+]
    ld h, a
    ld c, b
    ld h, a
    ld l, c
    ld h, a
    adc c
    ld h, a
    or c
    ld h, a
    ret nc

    ld h, a
    ld [hl], $69
    ld h, a
    ld l, c
    ld [c], a
    ld l, c
    add hl, de
    ld l, d
    adc [hl]
    ld l, d
    ld [bc], a
    ld l, e
    jr c, jr_018_56d6

    ld d, l
    ld l, e
    or b
    ld l, e
    and b
    ld l, h
    ld [hl-], a
    ld l, l
    ld [hl], l
    ld l, l
    or [hl]
    ld l, l
    dec a
    ld l, [hl]
    di
    ld l, [hl]
    ld sp, $4e6f
    ld l, a

Call_018_567f:
    ld de, $561d
    call Call_000_05b6
    ret


    ld de, $561d
    call Call_000_05f6
    ret


    call Call_018_567f
    call Call_000_0609
    ret


    ld [$a39f], a
    dec hl
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $63
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec l
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    inc l
    rst $28
    xor $49
    ld b, d
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, l
    ld c, c
    ld a, $56
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, b
    ld d, d

jr_018_56d6:
    ld b, b
    ld b, l
    rst $28
    xor $40
    ld c, h
    ld c, e
    ld b, b
    ld b, d
    ld b, [hl]
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $50
    ld c, d
    ld a, $50
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $49
    ld c, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, h
    ld b, d
    ld b, c
    rst $28
    xor $52
    ld c, l
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl], $52
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld d, b
    ld b, [hl]
    ld c, d
    ld c, l
    ld c, c
    ld b, d
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld d, c
    ld a, $49
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $46
    ld c, e
    ld d, c
    ld c, a
    ld c, h
    ld b, c
    ld d, d
    ld b, b
    ld b, d
    ld h, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, h
    ld c, h
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $3f
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $42
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld c, a
    ld b, d
    ld a, $51
    ld h, d
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5808

    ld c, a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, @+$4e

    ld c, a
    ld b, d
    and e
    ld h, $4c
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld h, e
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld d, c
    ld b, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld d, c
    ld a, $49
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5840

    ld c, a
    ld b, d
    and e
    inc l
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    rst $28
    xor $51
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h

jr_018_5808:
    ld d, d
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, @+$4e

    ld c, a
    ld b, d
    and e
    ld e, a
    ld e, a
    ld e, a
    ld b, l
    ld c, h
    ld d, h
    rst $28
    xor $45
    ld b, d
    ld c, c
    ld c, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld a, $4b
    ld b, c
    ld a, [$eff7]
    xor $46
    ld c, d
    ld c, l
    ld b, d
    ld c, a
    ld b, e
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28

jr_018_5840:
    xor $3e
    ld c, a
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, @+$4e

    ld c, a
    ld b, d
    and e
    inc l
    ld l, d
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_58aa

    ld c, a
    ld b, d
    ld e, [hl]
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_58b8

    ld c, a
    ld b, d
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld b, e
    ld c, c
    ld b, d
    ld d, b
    ld b, l
    ld h, e
    ld h, e
    rst $30
    ldh a, [$ea]
    daa
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_58dd

    ld c, a
    ld b, d
    and e
    dec hl
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $ef
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld a, $4a
    ld b, d
    ld h, d
    ccf
    ld a, $40

jr_018_58aa:
    ld c, b
    ld e, a
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5903

    ld c, a

jr_018_58b8:
    ld b, d
    and e
    dec hl
    ld c, h
    ld d, h
    ld h, d
    ld b, b
    ld a, $4b
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, h
    ld c, c
    ld b, [hl]
    ld d, b
    ld b, l
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30

jr_018_58dd:
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5932

    ld c, a
    ld b, d
    and e
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld c, a
    ld b, d
    ld a, $49
    ld b, [hl]
    ld d, a
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld a, [$eff7]
    xor $45

jr_018_5903:
    ld b, d
    ld c, c
    ld c, l
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld c, e
    ld b, d
    ld d, b
    ld d, b
    ld e, [hl]
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5968

    ld c, a
    ld b, d
    and e
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $50
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld c, d
    ld b, [hl]
    ld d, b
    ld b, d
    ld c, a

jr_018_5932:
    ld a, $3f
    ld c, c
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, d
    ld b, e
    ld b, d
    ld a, $51
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_599a

    ld c, a
    ld b, d
    and e
    inc a
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $42
    ld d, l
    ld c, l
    ld b, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld c, e
    ld b, b
    ld b, d
    ld h, d
    or [hl]
    ld a, [$eff7]
    xor $51

jr_018_5968:
    ld c, a
    ld a, $46
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    rst $28
    xor $52
    ld d, b
    ld b, d
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, e
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_59d4

    ld c, a
    ld b, d
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld d, c
    ld b, l
    ld c, c
    ld b, d
    ld d, b

jr_018_599a:
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_59f3

    ld c, a
    ld b, d
    and e
    add hl, hl
    ld b, [hl]
    ld c, e
    ld b, d
    ld e, a
    rst $28
    xor $2c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, d
    ld a, $40
    ld b, l
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $4c
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld a, $4b
    ld b, c
    ld h, d
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld e, [hl]
    rst $28

jr_018_59d4:
    xor $fa
    rst $30
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5a2c

    ld c, a
    ld b, d
    and e
    ld d, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld a, $49

jr_018_59f3:
    ld c, c
    ld d, [hl]
    ld h, d
    ld a, [$eff7]
    xor $52
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5a5e

    ld c, a
    ld b, d
    and e
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5a6a

    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $2e

jr_018_5a2c:
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5a8c

    ld c, a
    ld b, d
    and e
    ld a, $49
    ld c, c
    ld h, d
    rst $28
    xor $43
    ld c, c
    ld b, d
    ld d, b
    ld b, l
    ld h, e
    rst $30
    ldh a, [$ea]
    daa
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5aa5

    ld c, a
    ld b, d
    and e
    inc h
    ld c, a

jr_018_5a5e:
    ld b, h
    ld b, l
    ld e, a
    ld e, a
    rst $28
    xor $2c
    ld e, a
    ld e, a
    ld c, c
    ld c, h
    ld d, b

jr_018_5a6a:
    ld d, c
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, @+$4e

    ld c, a
    ld b, d
    and e
    inc l
    ld h, d
    ld b, h
    ld d, d
    ld b, d
    ld d, b
    ld d, b
    rst $28
    xor $2c
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h

jr_018_5a8c:
    ld d, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld e, a
    ld e, a
    ld e, a
    rst $28

jr_018_5aa5:
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    rst $28
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_5b06

    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $4a
    ld c, h
    ld d, b
    ld d, c
    ld h, d
    ld c, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    rst $28
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld a, [$eff7]
    xor $49
    ld c, h
    ld c, a
    ld b, c
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc h
    ld b, b
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    rst $28
    xor $45
    ld b, d
    ld h, d

jr_018_5b06:
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ccf
    ld b, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld b, e
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $45
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    ld a, $4b
    ld h, d
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    rst $28
    xor $44
    ld d, d
    ld d, [hl]
    ld l, b
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld c, d
    ld h, h
    ld h, d
    ld [hl-], a
    ld b, l
    ld h, d
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, c
    ld c, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld sp, $544c
    ld e, [hl]
    rst $28
    xor $f6
    ld h, d
    cpl
    ld b, d
    ld d, c
    ld l, b
    ld h, d
    ld b, h
    ld c, h
    ld a, [$eff7]
    xor $3f
    ld a, $40
    ld c, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    ld a, [hl-]
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    ld a, [hl+]
    ld c, h
    ld c, h
    ld b, c
    rst $28
    xor $4a
    ld c, h
    ld c, a
    ld c, e
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    or $63
    ld a, [$eff7]
    xor $2c
    ld d, c
    ld l, b
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld d, c
    rst $28
    xor $3e
    ld h, d
    ld b, e
    ld c, h
    ld c, h
    ld d, c
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld a, $4b
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $47
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld b, d
    ld d, [hl]
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    and e
    inc l
    ld h, [hl]
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $54
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld a, $fa
    rst $30
    rst $28
    xor $3e
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $3f
    ld c, c
    ld b, d
    ld e, a
    rst $28
    xor $26
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld c, h
    ld c, e
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    or $63
    rst $28
    xor $3a
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ccf
    ld a, $40
    ld c, b
    ld h, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ccf
    ld b, d
    ld c, c
    ld b, [hl]
    ld b, d
    ld d, e
    ld b, d
    ld b, c
    ld h, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld l, l
    ld h, d
    ld c, a
    ld b, d
    ld d, c
    ld d, d
    ld c, a
    ld c, e
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    jr z, @+$55

    ld b, d
    ld c, a
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld a, [$eff7]
    xor $3e
    ld d, h
    ld a, $56
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld c, d
    ld d, d
    ld b, b
    ld b, l
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $50
    ld b, l
    ld a, $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    ld h, d
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld a, [$eff7]
    xor $54
    ld b, d
    ld c, c
    ld b, b
    ld c, h
    ld c, d
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    jr nc, jr_018_5d6a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $30
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    or $63
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, h
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld a, $4b
    ld b, c
    rst $28
    xor $42
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld h, d

jr_018_5d6a:
    ld a, [$eff7]
    xor $49
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld a, $47
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $54
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $2a
    ld c, h
    ld h, d
    ld c, l
    ld c, a
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld b, d
    ld c, c
    ld b, e
    ld h, e
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    or $63
    rst $28
    xor $2c
    ld d, c
    ld l, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    or $63
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $54
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, h
    ld h, d
    ld [hl], $52
    ld b, c
    ld b, c
    ld b, d
    ld c, e
    ld c, c
    ld d, [hl]
    rst $28
    xor $41
    ld b, [hl]
    ld d, b
    ld a, $4d
    ld c, l
    ld b, d
    ld a, $4f
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld a, [hl-]
    ld b, d
    ld l, h
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    rst $28
    xor $54
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, e
    ld h, d
    scf
    ld b, l
    ld b, d
    ld d, b
    ld b, d
    rst $28
    xor $43
    ld c, h
    ld c, c
    ld c, b
    ld d, b
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    rst $28
    xor $4d
    ld c, a
    ld b, d
    ld c, l
    ld a, $4f
    ld b, d
    ld b, c
    ld h, d
    ld a, $62
    ld c, l
    ld c, a
    ld b, [hl]
    ld d, a
    ld b, d
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $26
    ld b, l
    ld a, $4a
    ccf
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld e, a
    rst $28
    xor $37
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    rst $28
    xor $54
    ld a, $46
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld a, [hl-]
    ld b, d
    ld c, c
    ld c, c
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    rst $28
    xor $3f
    ld d, d
    ld d, b
    ld d, [hl]
    ld e, a
    ld h, d
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld d, b
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    dec h
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    rst $28
    xor $25
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld [hl], $46
    ld c, a
    ld h, d
    or $5e
    rst $28
    xor $37
    ld b, l
    ld a, $4b
    ld c, b
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    or $5e
    ld h, d
    ld d, c
    ld b, l
    ld a, $4b
    ld c, b
    ld d, b
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld d, b
    ld d, c
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    cpl
    ld b, [hl]
    ld d, b
    ld d, c
    ld b, d
    ld c, e
    ld e, [hl]
    ld h, d
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    rst $28
    xor $3e
    ld c, e
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, c
    ld b, d
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld a, [$eff7]
    xor $50
    ld a, $56
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld h, d
    inc l
    ld d, c
    ld h, d
    ld b, h
    ld c, h
    ld b, d
    ld d, b
    ld h, b
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    jr nc, jr_018_606e

    ld c, e
    ld c, b
    ld b, d
    ld d, [hl]
    ld d, b
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $4f
    ld b, d
    ccf
    ld c, h
    ld c, a
    ld c, e
    ld h, d
    ld a, $50
    ld h, d
    ld a, [$eff7]
    xor $42
    ld c, c
    ld b, d
    ld c, l
    ld b, l
    ld a, $4b
    ld d, c
    ld d, b
    ld e, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $41
    ld c, a
    ld b, d
    ld a, $4a
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ld a, [$eff7]
    xor $50
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld b, c
    ld a, $56
    ld e, a

jr_018_606e:
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld d, h
    ld b, l
    ld a, $51
    ld h, d
    rst $28
    xor $46
    ld d, c
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, d
    ld b, d
    ld a, $4b
    ld h, h
    ld a, [$eff7]
    xor $24
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld c, b
    ld b, d
    ld d, [hl]
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    rst $28
    xor $3e
    ld c, e
    ld h, d
    ld b, d
    ld c, c
    ld b, d
    ld c, l
    ld b, l
    ld a, $4b
    ld d, c
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    dec hl
    ld b, [hl]
    ld d, b
    ld h, d
    ld c, d
    ld a, $47
    ld b, d
    ld d, b
    ld d, c
    ld d, [hl]
    rst $28
    xor $44
    ld a, $53
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld a, $62
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, h
    rst $28
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $26
    ld b, l
    ld a, $4a
    ccf
    ld b, d
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr nc, jr_018_618e

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, @+$4e

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $f6
    ld e, [hl]
    ld h, d
    ld c, l
    ld c, c
    ld b, d
    ld a, $50
    ld b, d
    ld a, [$eff7]
    xor $50
    ld d, c
    ld a, $56
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, [hl]
    ld d, b
    rst $28
    xor $48
    ld b, [hl]
    ld c, e
    ld b, h
    ld b, c
    ld c, h
    ld c, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld h, e

jr_018_618e:
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld b, h
    ld a, $53
    ld b, d
    ld h, d
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld a, $62
    ld d, b
    ld c, l
    ld b, d
    ld b, b
    ld b, [hl]
    ld a, $49
    ld a, [$eff7]
    xor $4d
    ld b, d
    ld c, a
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, [hl]
    ld c, h
    ld c, e
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    add hl, hl
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld c, h
    ld c, e
    ld e, [hl]
    rst $28
    xor $51
    ld b, l
    ld b, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld b, d
    ld b, b
    ld c, a
    ld b, d
    ld d, c
    ld h, d
    ld c, l
    ld a, $51
    ld b, l
    ld a, [$eff7]
    xor $46
    ld d, b
    ld h, d
    ld a, $49
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld d, b
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ld e, a
    ld e, a
    ld a, [hl-]
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld b, [hl]
    ld c, b
    ld b, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, c
    ld b, d
    ld b, h
    ld b, d
    ld c, e
    ld b, c
    ld a, [$eff7]
    xor $4c
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    rst $28
    xor $31
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, h
    rst $38
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $51
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld h, d
    ld a, [$eff7]
    xor $04
    rlca
    ld d, c
    ld b, l
    ld h, d
    ld b, e
    ld d, d
    ld c, c
    ld c, c
    ld h, d
    ld c, d
    ld c, h
    ld c, h
    ld c, e
    ld e, a
    ld h, d
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    dec hl
    ld d, d
    ld c, e
    ld b, c
    ld c, a
    ld b, d
    ld b, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    rst $28
    xor $51
    ld b, l
    ld c, h
    ld d, d
    ld d, b
    ld a, $4b
    ld b, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, b
    ld d, c
    ld a, $4f
    ld d, b
    ld a, [$eff7]
    xor $9f
    and e
    ld b, e
    ld a, $49
    ld c, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld c, b
    ld d, [hl]
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    add hl, hl
    ld c, a
    ld a, $44
    ld c, d
    ld b, d
    ld c, e
    ld d, c
    ld d, b
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    rst $28
    xor $49
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld b, b
    ld c, h
    ld d, e
    ld b, d
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld a, [$eff7]
    xor $54
    ld c, h
    ld c, a
    ld c, c
    ld b, c
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    scf
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    ld h, d
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld b, l
    ld b, d
    ld c, e
    rst $28
    xor $40
    ld c, h
    ld d, d
    ld c, e
    ld d, c
    ld c, c
    ld b, d
    ld d, b
    ld d, b
    ld h, d
    ld c, c
    ld b, [hl]
    ld d, e
    ld b, d
    ld d, b
    ld h, d
    ld a, [$eff7]
    xor $50
    ld b, l
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $30
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_018_63a0

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $f6
    ld h, d
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $45
    ld a, $4b
    ld b, c
    ld b, d
    ld b, c
    ld h, d
    ld b, c
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld a, [$eff7]
    xor $44
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $44
    ld b, d
    ld c, e
    ld b, d
    ld c, a
    ld a, $51
    ld b, [hl]

jr_018_63a0:
    ld c, h
    ld c, e
    ld e, a
    ld e, a
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    cpl
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld a, $44
    ld c, h
    ld e, a
    ld e, a
    rst $28
    xor $24
    ld c, e
    ld h, d
    ld a, $4b
    ld b, b
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld h, d
    ld c, c
    ld c, h
    ld b, b
    ld c, b
    ld b, d
    ld b, c
    rst $28
    xor $4a
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]
    ld a, $51
    ld b, d
    ld d, b
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, b
    ld a, $52
    ld d, b
    ld b, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $3e
    ld h, d
    ccf
    ld a, $4b
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld b, l
    ld d, d
    ld c, d
    ld a, $4b
    ld d, b
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld [hl-], a
    ld d, d
    ld c, a
    ld d, b
    ld h, d
    ld a, $4b
    ld b, b
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld d, b
    ld h, d
    rst $28
    xor $41
    ld b, d
    ld c, d
    ld a, $4b
    ld b, c
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, d
    and h
    ld a, [$eff7]
    xor $9f
    and e
    and h
    ld b, l
    ld c, h
    ld c, c
    ld b, c
    ld h, d
    ld a, $62
    rst $28
    xor $51
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld h, d
    ld b, d
    ld d, e
    ld b, d
    ld c, a
    ld d, [hl]
    ld a, [$eff7]
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc h
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld c, d
    ld a, $4b
    ld d, [hl]
    ld h, d
    rst $28
    xor $40
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld c, a
    ld b, [hl]
    ld b, d
    ld d, b
    ld e, [hl]
    ld h, d
    ld a, [$eff7]
    xor $f6
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    ld h, e
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld e, [hl]
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    ld a, [$eff7]
    xor $27
    ld c, a
    ld a, $40
    ld c, h
    cpl
    ld c, h
    ld c, a
    ld b, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    rst $28
    xor $3f
    ld b, d
    ld a, $51
    ld h, d
    ld a, $4b
    ld h, d
    ld b, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld h, d
    ld c, c
    ld c, h
    ld c, a
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    inc l
    ld h, d
    ld b, b
    ld a, $4b
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    rst $28
    xor $3e
    ld h, d
    ld b, e
    ld b, [hl]
    ld d, c
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, l
    ld c, a
    ld a, $46
    ld d, b
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld b, l
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ccf
    ld b, d
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld l, $46
    ld c, e
    ld b, h
    ld h, d
    ld b, [hl]
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld a, $41
    ld h, e
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    dec l
    ld d, d
    ld d, b
    ld d, c
    ld h, d
    ld c, b
    ld b, [hl]
    ld b, c
    ld b, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    dec hl
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $63
    rst $28
    xor $3a
    ld c, h
    ld c, a
    ld c, b
    ld h, d
    ld b, l
    ld a, $4f
    ld b, c
    ld h, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    inc a
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    rst $28
    xor $41
    ld b, [hl]
    ld d, b
    ld c, d
    ld b, [hl]
    ld d, b
    ld d, b
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $25
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    ld h, d
    dec h
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    rst $28
    xor $25
    ld d, d
    ld d, b
    ld d, [hl]
    ld h, e
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $ef
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld b, h
    ld c, h
    ld c, h
    ld b, c
    ld a, [$eff7]
    xor $46
    ld c, e
    ld d, c
    ld b, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    ld a, [hl-]
    ld c, h
    ld c, a
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, l
    ld a, $4f
    ld b, c
    ld h, d
    rst $28
    xor $51
    ld c, h
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld d, b
    ld h, d
    ld a, [$eff7]
    xor $42
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    or $62
    ld b, [hl]
    ld d, b
    ld h, d
    rst $28
    xor $51
    ld c, a
    ld d, d
    ld c, c
    ld d, [hl]
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, [hl]
    ld c, d
    ld a, $44
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $3e
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    jr z, jr_018_66c9

    ld b, d
    ld c, a
    ld d, [hl]
    ccf
    ld c, h
    ld b, c
    ld d, [hl]
    ld h, d
    rst $28
    xor $4c
    ld d, d
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld c, l
    ld c, a
    ld a, $56
    ld a, [$eff7]
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld d, [hl]
    ld h, d
    ld c, d
    ld a, $56
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld h, d
    ld a, [$eff7]
    xor $51
    ld b, l
    ld c, h
    ld d, d
    ld d, b
    ld a, $4b
    ld b, c
    ld d, c
    ld b, l
    ld h, d
    ld c, h
    ld b, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    rst $28
    xor $53
    ld b, [hl]
    ld c, a
    ld d, c
    ld d, d
    ld b, d
    ld e, a
    rst $30

jr_018_66c9:
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    dec hl
    ld a, $4f
    ld b, h
    ld c, h
    ld c, e
    ld h, e
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    ld [hl], $46
    ld b, c
    ld c, h
    ld b, l
    ld h, e
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    dec h
    ld a, $4f
    ld a, $4a
    ld c, h
    ld d, b
    ld h, e
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    dec a
    ld c, h
    ld c, d
    ld a, $63
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    inc sp
    ld b, [hl]
    ld d, a
    ld d, a
    ld a, $4f
    ld c, h
    ld h, e
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    jr z, @+$52

    ld d, c
    ld b, d
    ld c, a
    ld c, b
    ld h, e
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld a, [$eff7]
    xor $30
    ld b, [hl]
    ld c, a
    ld d, d
    ld b, c
    ld c, a
    ld a, $3e
    ld d, b
    ld h, e
    rst $28
    xor $fa
    rst $30
    ldh a, [$ea]
    ld l, $46
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    jr nc, jr_018_681b

    ld b, c
    ld c, h
    ld d, d
    ld h, e
    ld a, [$f0f7]
    ld [$462e], a
    ld c, e
    ld b, h
    and e
    ld [hl-], a
    ld b, l
    ld h, d
    or $63
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld a, $51
    ld h, d
    ld a, [$eff7]
    xor $27
    ld b, d
    ld a, $51
    ld b, l
    jr nc, jr_018_683d

    ld c, a
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    scf
    ld b, l
    ld a, $51
    ld h, d
    ld c, d
    ld c, h
    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld c, a
    ld c, h
    ld c, e
    ld b, h
    ld b, d

jr_018_681b:
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4c
    ld c, e
    ld b, d
    ld h, d
    ccf
    ld b, d
    ld b, l
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $37
    ld c, a
    ld a, $53
    ld b, d
    ld c, c
    ld b, d
    ld c, a
    ld d, b
    ld e, h
    ld h, d
    ld a, [hl+]

jr_018_683d:
    ld a, $51
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    scf
    ld b, l
    ld a, $51
    ld l, b
    ld h, d
    ld c, d
    ld d, [hl]
    rst $28
    xor $f6
    ld h, e
    ld h, d
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, d
    ld c, h
    ld d, b
    ld d, c
    ld a, [$eff7]
    xor $4d
    ld c, h
    ld d, h
    ld b, d
    ld c, a
    ld b, e
    ld d, d
    ld c, c
    ld h, d
    ld c, d
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, d
    ld c, e
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, a
    ld d, b
    ld b, d
    ld h, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, a
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    rst $28
    xor $51
    ld b, [hl]
    ld c, d
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    dec h
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld l, d
    ld h, d
    rst $28
    xor $40
    ld c, h
    ld d, d
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld c, h
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld a, [$eff7]
    xor $43
    ld c, h
    ld c, a
    ld h, d
    ld c, e
    ld b, d
    ld d, l
    ld d, c
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, d
    ld a, $50
    rst $28
    xor $54
    ld b, d
    ld c, c
    ld c, c
    ld h, e
    ld a, [$eff7]
    xor $2e
    ld b, [hl]
    ld c, e
    ld b, h
    and e
    inc h
    ld c, e
    ld b, c
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $37
    ld b, [hl]
    ld c, e
    ld d, [hl]
    jr nc, @+$44

    ld b, c
    ld a, $49
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld c, h
    ld h, e
    ld h, d
    ld a, [$eff7]
    xor $2b
    ld a, $62
    ld b, l
    ld a, $62
    ld b, l
    ld a, $63
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld b, d
    ld d, b
    ld e, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld l, c
    ld b, d
    rst $28
    xor $3e
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld b, b
    ld a, $50
    ld d, c
    ld c, c
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    ld a, [$eff7]
    xor $2a
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld h, e
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl-]
    ld b, l
    ld d, [hl]
    ld h, d
    ld b, c
    ld b, [hl]
    ld b, c
    rst $28
    xor $3a
    ld a, $51
    ld a, $3f
    ld c, h
    ld d, d
    ld l, b
    ld a, [$eff7]
    xor $3e
    ld c, e
    ld b, b
    ld b, d
    ld d, b
    ld d, c
    ld c, h
    ld c, a
    ld h, d
    ld d, h
    ld a, $4b
    ld d, c
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld d, d
    ld c, a
    ld c, e
    ld a, $4a
    ld b, d
    ld c, e
    ld d, c
    ld a, [$eff7]
    xor $51
    ld c, h
    ld h, d
    ccf
    ld b, d
    ld h, d
    ld b, l
    ld b, d
    ld c, c
    ld b, c
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld b, [hl]
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld b, [hl]
    ld c, e
    ld b, c
    ld h, d
    ld c, h
    ld d, d
    ld d, c
    rst $28
    xor $3e
    ld b, e
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld a, [$eff7]
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, h
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld d, e
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, $44
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $2a
    ld c, a
    ld b, d
    ld a, $51
    scf
    ld c, a
    ld b, d
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld a, [$eff7]
    xor $43
    ld b, [hl]
    ld c, c
    ld c, c
    ld b, d
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, c
    ld b, l
    ld h, d
    ld b, a
    ld c, h
    ld d, [hl]
    ld h, e
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld b, h
    ld b, [hl]
    ld c, a
    ld c, c
    rst $28
    xor $41
    ld c, h
    ld d, h
    ld c, e
    ld d, b
    ld d, c
    ld a, $46
    ld c, a
    ld d, b
    ld h, d
    ld b, l
    ld a, $50
    ld a, [$eff7]
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld c, c
    ld c, h
    ld c, h
    ld c, b
    ld b, [hl]
    ld c, e
    ld b, h
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld c, e
    ld h, a
    ld h, d
    ld d, b
    ld b, d
    ld b, d
    ld c, e
    rst $28
    xor $56
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld h, d
    ld a, $62
    ld d, h
    ld b, l
    ld b, [hl]
    ld c, c
    ld b, d
    ld e, a
    ld a, [$eff7]
    xor $3a
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, l
    ld a, $53
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $3f
    ld b, d
    ld b, d
    ld c, e
    ld h, h
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    jr z, jr_018_6ae6

    ld b, d
    ld c, e
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    rst $28
    xor $4b
    ld c, h
    ld h, d
    ld c, d
    ld c, h
    ld c, a
    ld b, d
    ld h, d
    ld c, a
    ld b, d
    ld d, h
    ld a, $4f
    ld b, c
    ld d, b
    ld a, [$eff7]
    xor $44
    ld b, [hl]
    ld d, e
    ld b, d
    ld c, e
    ld h, d
    ccf
    ld d, [hl]
    ld h, d
    jr nc, jr_018_6b03

    ld b, c
    ld a, $49
    rst $28
    xor $30
    ld a, $4b
    ld e, a
    ld e, a
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld d, h
    ld b, [hl]
    ld c, c
    ld c, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    rst $28
    xor $40
    ld c, h
    ld c, e
    ld d, c
    ld b, [hl]
    ld c, e
    ld d, d
    ld b, d
    ld h, d
    ld d, c

jr_018_6ae6:
    ld c, h
    ld a, [$eff7]
    xor $40
    ld c, h
    ld c, c
    ld c, c
    ld b, d
    ld b, b
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4a
    ld b, d
    ld b, c
    ld a, $49
    ld d, b
    ld h, e
    ld h, h
    rst $38
    ldh a, [$ea]

jr_018_6b03:
    sbc a
    and e
    ld a, [hl+]
    ld c, a
    ld b, d
    ld a, $51
    ld e, [hl]
    ld h, d
    ld b, [hl]
    ld d, c
    ld l, b
    ld h, d
    ld d, b
    ld c, h
    rst $28
    xor $44
    ld c, a
    ld b, d
    ld a, $51
    ld e, a
    ld h, d
    dec h
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld a, [$eff7]
    xor $54
    ld c, h
    ld d, d
    ld c, c
    ld b, c
    ld h, d
    ld c, e
    ld c, h
    ld d, c
    ld h, d
    ld b, c
    ld c, h
    ld h, d
    ld b, [hl]
    ld d, c
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    inc a
    ld b, d
    ld d, b
    ld e, a
    ld h, d
    inc l
    ld d, c
    ld l, b
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $4f
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, h
    ld a, $56
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld b, e
    ld b, d
    ld b, d
    ld c, c
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    rst $28
    xor $46
    ld d, b
    ld h, d
    ld d, b
    ld c, l
    ld a, $4f
    ld c, b
    ld c, c
    ld b, [hl]
    ld c, e
    ld b, h
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $50
    ld d, c
    ld a, $4f
    ld d, b
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld b, [hl]
    ld c, c
    ld c, c
    ld a, [$eff7]
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld a, $46
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld b, [hl]
    ld c, h
    ld d, d
    ld d, b
    rst $28
    xor $4a
    ld a, $50
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $42
    ld d, e
    ld b, d
    ld c, e
    ld d, c
    ld d, d
    ld a, $49
    ld c, c
    ld d, [hl]
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld d, b
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    jr nc, @+$40

    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld h, d
    jr nc, jr_018_6c3a

    ld c, e
    ld d, b
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $37
    ld a, $4a
    ld b, d
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld h, d
    ld b, [hl]
    ld b, e
    ld h, d
    inc l
    rst $28
    xor $40
    ld a, $4b
    ld h, d
    ccf
    ld b, d
    ld b, b
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld c, h
    ld c, e
    ld b, d
    ld a, [$eff7]
    xor $51
    ld c, h
    ld c, h
    ld h, h
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld c, a
    ld b, d
    ld a, $41

jr_018_6c3a:
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, d
    rst $28
    xor $46
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ccf
    ld c, h
    ld c, h
    ld c, b
    ld h, d
    inc l
    ld h, d
    ld a, [$eff7]
    xor $3f
    ld c, h
    ld c, a
    ld c, a
    ld c, h
    ld d, h
    ld b, d
    ld b, c
    ld h, d
    ld b, e
    ld c, a
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    rst $28
    xor $49
    ld b, [hl]
    ccf
    ld c, a
    ld a, $4f
    ld d, [hl]
    ld h, d
    ccf
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld a, [$eff7]
    xor $41
    ld b, [hl]
    ld b, c
    ld c, e
    ld h, a
    ld h, d
    ld d, d
    ld c, e
    ld b, c
    ld b, d
    ld c, a
    ld d, b
    ld d, c
    ld a, $4b
    ld b, c
    ld h, d
    rst $28
    xor $46
    ld d, c
    ld h, d
    ld d, c
    ld b, l
    ld a, $51
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc h
    ld h, d
    ld d, h
    ld b, d
    ld c, c
    ld c, c
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld h, d
    rst $28
    xor $53
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    ld h, d
    inc l
    ld l, d
    ld h, d
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $45
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc l
    ld h, d
    ld b, l
    ld b, d
    ld a, $4f
    ld b, c
    ld h, d
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld d, b
    rst $28
    xor $40
    ld c, h
    ld c, d
    ld b, d
    ld h, d
    ld d, c
    ld c, a
    ld d, d
    ld b, d
    ld h, d
    ld a, $43
    ld d, c
    ld b, d
    ld c, a
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    ccf
    ld d, d
    ld d, c
    ld h, d
    inc l
    ld h, d
    ld a, $4a
    ld h, d
    ld b, l
    ld a, $4d
    ld c, l
    ld d, [hl]
    ld h, d
    rst $28
    xor $51
    ld b, l
    ld a, $51
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld c, h
    ld c, e
    ld e, [hl]
    ld h, d
    ld a, [$eff7]
    xor $f6
    ld e, a
    rst $28
    xor $f7
    ldh a, [$ea]
    sbc a
    and e
    jr z, jr_018_6d82

    ld d, c
    ld b, d
    ld c, a
    ld h, d
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    rst $28
    xor $51
    ld b, l
    ld b, d
    ld h, d
    add hl, sp
    ld a, $52
    ld c, c
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $26
    ld c, h
    ld c, e
    ld b, h
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    rst $28
    xor $4c
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld c, a
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    ld a, [hl+]
    ld c, h
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld h, d
    ld d, c

jr_018_6d82:
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    rst $28
    xor $25
    ld a, $57
    ld a, $3e
    ld c, a
    ld h, e
    ld h, d
    ld a, [$eff7]
    xor $2b
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, h
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld d, b
    ld c, h
    ld h, d
    rst $28
    xor $40
    ld c, h
    ld c, h
    ld c, c
    ld h, d
    ccf
    ld c, a
    ld c, h
    ld d, c
    ld b, l
    ld b, d
    ld c, a
    ld h, e
    rst $30
    ldh a, [$ea]
    sbc a
    and e
    ld h, $4c
    ld c, e
    ld b, h
    ld c, a
    ld a, $51
    ld d, d
    ld c, c
    ld a, $51
    ld b, [hl]
    ld c, h
    ld c, e
    ld d, b
    ld h, e
    rst $28
    xor $27
    ld c, h
    ld d, h
    ld c, e
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld d, b
    ld d, c
    ld a, $46
    ld c, a
    ld d, b
    ld h, d
    ld d, c
    ld c, h
    ld a, [$eff7]
    xor $51
    ld b, l
    ld b, d
    ld h, d
    ld [hl], $45
    ld c, a
    ld b, [hl]
    ld c, e
    ld b, d
    ld h, d
    ld c, h
    ld b, e
    rst $28
    xor $36
    ld d, c
    ld a, $4f
    ld c, a
    ld d, [hl]
    ld h, d
    ld sp, $4446
    ld b, l
    ld d, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    scf
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    ld h, d
    ld b, [hl]
    ld d, b
    ld h, d
    ld a, $62
    ld c, e
    ld b, d
    ld d, h
    rst $28
    xor $4f
    ld c, h
    ld c, h
    ld c, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, a
    ld b, [hl]
    ld b, h
    ld b, l
    ld d, c
    ld a, [$eff7]
    xor $41
    ld d, d
    ld b, d
    ld h, d
    ld d, c
    ld c, h
    ld h, d
    ld d, c
    ld b, l
    ld b, d
    ld h, d
    ld c, [hl]
    ld d, d
    ld a, $48
    ld b, d
    ld e, a
    rst $28
    xor $f7
    ldh a, [$eb]
    sbc a
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, e
    ld c, h
    ld c, h
    ld c, c
    ld h, e
    ld h, d
    ld a, [hl-]
    ld b, l
    ld b, d
    ld c, a
    ld b, d
    rst $28
    xor $45
    ld a, $53
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ccf
    ld b, d
    ld b, d
    ld c, e
    ld h, d
    ld b, e
    ld c, h
    ld c, a
    ld a, [$eff7]
    xor $50
    ld d, d
    ld b, b
    ld b, l
    ld h, d
    ld a, $62
    ld c, c
    ld c, h
    ld c, e
    ld b, h
    ld h, d
    ld d, c
    ld b, [hl]
    ld c, d
    ld b, d
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    daa
    ld a, $4f
    ld c, e
    ld h, d
    ld d, e
    ld b, [hl]
    ld b, b
    ld d, c
    ld c, h
    ld c, a
    ld d, [hl]
    ld h, e
    rst $28
    xor $3a
    ld b, l
    ld a, $51
    ld h, d
    ld a, $4f
    ld b, d
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, d
    ld d, b
    ld c, h
    ld a, [$eff7]
    xor $4d
    ld d, d
    ld b, e
    ld b, e
    ld b, d
    ld b, c
    ld h, d
    ld d, d
    ld c, l
    ld h, d
    ld a, $3f
    ld c, h
    ld d, d
    ld d, c
    ld h, e
    rst $28
    xor $fa
    rst $30
    rst $28
    xor $9f
    and e
    inc a
    ld c, h
    ld d, d
    ld h, d
    ld b, b
    ld b, l
    ld b, d
    ld a, $51
    ld b, d
    ld b, c
    ld h, e
    rst $28
    xor $2c
    ld d, c
    ld h, d
    ld d, h
    ld a, $50
    ld h, d
    ld d, d
    ld c, e
    ld b, e
    ld a, $46
    ld c, a
    ld h, e
    ld h, e
    ld a, [$eff7]
    xor $9f
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $50
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $5f
    ld e, a
    ld e, a
    ld d, h

jr_018_6eea:
    ld c, h
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld e, a
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    inc l
    ld h, d
    ld d, h
    ld a, $50
    ld e, a
    ld e, a
    ld e, a
    rst $28
    xor $5f
    ld e, a
    ld e, a
    ld d, h
    ld c, h
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, d
    ld b, c
    ld e, a
    ld a, [$eff7]
    xor $9f
    and e
    ld e, a
    ld e, a
    ld e, a
    dec hl
    ld b, d
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $28
    xor $3c
    ld c, h
    ld d, d
    ld h, d
    ld c, b
    ld c, e
    ld c, h
    ld d, h
    ld h, d
    ld c, d
    ld d, [hl]
    ld h, d
    ld c, e
    ld a, $4a
    ld b, d
    ld h, h
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    dec hl
    ld d, d
    ld b, e
    ld b, e
    ld e, [hl]
    ld h, d
    rst $28
    xor $2c
    ld h, d
    ld b, c
    ld c, h
    ld c, e
    ld h, a
    ld h, d
    ld c, e
    ld b, d
    ld b, d
    ld b, c
    ld h, d
    ld d, [hl]
    ld c, h
    ld d, d
    ld h, e
    rst $30
    ldh a, [$eb]
    sbc a
    and e
    scf
    ld b, l
    ld b, d
    ld c, e
    ld h, d
    ld d, b
    ld a, $56
    ld h, d
    ld b, [hl]
    ld d, c
    ld h, e
    rst $28
    xor $ff
    ldh a, [$31]
    add d
    inc sp
    dec [hl]
    add d
    jr nc, jr_018_6eea

    ld [hl-], a
    add d
    inc [hl]
    or c
    ld bc, $1300
    ld l, a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [bc]
    cp a
    ld a, b
    pop de
    ld b, h
    rra
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, l
    add d
    ld b, h
    add d
    ld b, e
    add d
    ld b, d
    add d
    ld b, e
    add d
    ld b, h
    add d
    ld b, l
    add d
    ld b, [hl]
    add d
    ld b, a
    add d
    or c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld a, b
    pop de
    ld a, $1f
    add d
    ld b, b
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, c
    add d
    ld b, b
    add d
    ccf
    add d
    ld a, $82
    ccf
    add d
    ld b, b
    add d
    ld b, c
    add d
    ld b, d
    add d
    ld b, e
    add d
    or c
    ld [bc], a
    nop
    ld [hl], b
    ld l, a
    xor l
    ld l, a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc [hl]
    cp a
    ld a, b
    pop de
    ld sp, $861f
    scf
    add d
    or c
    ld bc, $f000
    ld l, a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld b, l
    cp a
    ld a, b
    push de
    ld c, [hl]
    rra
    add [hl]
    pop de
    ld c, [hl]
    add hl, bc
    add d
    pop de
    ld c, [hl]
    inc c
    add d
    pop de
    ld c, [hl]
    inc b
    add d
    or c
    ld bc, $0300
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld d, l
    jp nz, $c10e

    ld b, b
    sub $30
    dec de
    add c
    pop bc
    ld b, d
    add c
    ld b, l
    add c
    ld c, d
    add c
    ld h, h
    add c
    ld a, b
    add c
    ld a, a
    add c
    pop bc
    ld b, b
    sub $30
    inc de
    add c
    pop bc
    ld b, d
    add c
    ld b, l
    add c
    ld c, d
    add c
    ld h, h
    add c
    ld a, b
    add c
    ld a, a
    add c
    or c
    ld bc, $2000
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, h
    cp a
    ld e, [hl]
    pop de
    ld c, [hl]
    ld d, $86
    ld e, a
    add d
    or c
    ld bc, $5500
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    push bc
    ld d, b
    cp a
    ld c, e
    db $d3
    ld d, h
    inc de
    add h
    ld e, b
    add h
    ld d, a
    add h
    ld d, [hl]
    add h
    ld e, a
    add h
    ld e, [hl]
    add h
    ld e, l
    add h
    ld e, c
    add h
    or c
    ld bc, $6800
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    dec sp
    cp a
    ld c, e
    pop de
    jr nc, jr_018_70ac

    add d
    ld a, [hl-]
    add d
    add hl, sp
    add d
    dec [hl]
    add d
    or c
    ld bc, $8900
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld e, [hl]
    jp nc, Jump_000_183c

    add e

jr_018_70ac:
    dec a
    add e
    ld a, $83
    ccf
    add e
    jp nc, Jump_000_163d

    add e
    ld a, $83
    ccf
    add e
    ld b, b
    add e
    jp nc, Jump_000_133e

    add e
    ccf
    add e
    ld b, b
    add e
    ld b, c
    add e
    jp nc, $113f

    add e
    ld b, b
    add e
    ld b, c
    add e
    ld b, d
    add e
    jp nc, Jump_000_0e40

    add e
    ld b, c
    add e
    ld b, d
    add e
    ld b, e
    add e
    jp nc, $0c41

    add e
    ld b, d
    add e
    ld b, e
    add e
    ld b, h
    add e

jr_018_70e4:
    jp nc, Jump_000_0942

    add e
    ld b, e
    add e
    ld b, h
    add e
    ld b, l
    add e
    jp nc, Jump_000_0743

    add e
    ld b, h
    add e
    ld b, l
    add e
    ld b, [hl]
    add e
    or c
    ld bc, $a000
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld [hl], c
    push de
    scf
    dec bc
    add [hl]

jr_018_7109:
    push de
    scf
    inc c
    add [hl]
    push de
    scf
    dec c
    add [hl]
    push de
    scf
    ld c, $86
    push de
    scf
    rrca
    add [hl]
    push de
    scf
    db $10
    add [hl]
    push de
    scf
    ld de, $d586
    scf
    ld [de], a
    add [hl]
    push de
    scf
    inc de
    add [hl]
    push de
    scf
    inc d
    add [hl]
    push de
    scf
    dec d
    add [hl]
    push de
    scf
    ld d, $86
    push de
    scf
    inc d
    add [hl]
    push de
    scf
    ld [de], a
    add [hl]
    push de
    scf
    db $10
    add [hl]
    push de
    scf
    ld c, $86
    push de
    scf
    inc c
    add [hl]
    push de
    scf
    dec bc
    add [hl]
    or c
    ld bc, $fd00
    ld [hl], b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, h
    cp a

jr_018_7159:
    ld h, a
    db $d3
    dec [hl]
    jr jr_018_70e4

    inc b
    add h

jr_018_7160:
    or c
    ld bc, $5200
    ld [hl], c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld [hl], c
    ret nc

    inc [hl]
    dec e
    add e
    ret nc

    dec [hl]
    dec de
    add e
    or c
    ld bc, $6500
    ld [hl], c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld b, b
    cp a
    ld a, b
    pop bc
    ld b, b
    db $db
    inc [hl]
    jr jr_018_7109

    pop bc
    ld b, h
    add c
    push bc
    dec hl
    pop bc
    ld b, h
    add c
    push bc
    daa
    pop bc
    inc a
    add c
    push bc
    jr nz, jr_018_7159

    inc l
    add c
    daa
    add c
    push bc
    jr jr_018_7160

    dec de
    add c
    push bc
    dec bc
    pop bc
    ld d, $81
    push bc
    rlca
    pop bc
    dec d
    add c
    push bc
    ld b, $c1
    inc d
    add c
    inc de
    add c
    push bc
    inc b
    add c
    rlca
    pop bc
    ld b, b
    db $db
    inc de
    add c
    pop bc
    ld b, h
    add c
    push bc
    dec d
    pop bc
    ld b, h
    add c
    push bc
    ld hl, $3cc1
    add c
    push bc
    add hl, hl
    pop bc
    inc l
    add c
    push bc
    ld sp, $27c1
    add c
    push bc
    inc sp
    pop bc
    dec de
    add c
    push bc
    ld [hl], $c1
    ld d, $81
    push bc
    dec [hl]
    pop bc
    dec d

jr_018_71e0:
    add c
    inc d
    add c
    push bc
    dec hl
    pop bc
    inc de
    add c
    push bc
    dec h
    add c
    pop bc
    ld b, b
    db $db
    inc c
    add c
    push bc
    add hl, de
    pop bc
    ld b, h
    add c
    push bc
    ld d, $c1
    ld b, h
    add c
    inc a
    add c
    inc l
    add c
    push bc
    ld a, [de]
    pop bc
    daa
    add c
    push bc
    ld [hl+], a
    pop bc
    dec de
    add c
    push bc
    ld l, $c1
    ld d, $81
    dec d
    add c
    push bc
    ld c, l
    pop bc
    inc d
    add c
    push bc
    ld d, c
    pop bc
    inc de
    add d
    ld b, b
    db $db
    rlca
    add c
    push bc
    ld c, l
    pop bc
    ld b, h
    add c
    push bc
    ld b, h
    pop bc
    ld b, h
    add c
    inc a
    add c
    push bc
    scf
    pop bc
    inc l
    add c
    push bc
    inc e
    pop bc
    daa
    add c
    dec de
    add c
    push bc
    ld [de], a
    pop bc
    ld d, $81
    push bc
    inc c
    pop bc
    dec d
    add c
    inc d
    add c
    push bc
    rrca
    pop bc
    inc de
    add d
    push bc
    dec h
    add c
    inc [hl]
    add c
    ld b, e
    add c
    ld c, c
    add c
    ld c, e
    add c
    ld c, c
    add c
    ld b, h
    add c

jr_018_7255:
    dec a
    add c
    dec [hl]
    add c
    inc l
    add c
    dec h
    add c
    jr nz, jr_018_71e0

jr_018_725f:
    rra
    add e
    ld [hl+], a
    add c
    ld l, $81
    inc a
    add c
    ld c, e
    add c
    ld d, e
    add c
    ld e, b
    add c
    ld e, d
    add d
    ld e, c
    add c
    ld d, e
    add c
    ld c, h
    add c
    ld b, h
    add c
    dec a
    add d
    dec [hl]
    add c
    cpl
    add c
    ld a, [hl+]
    add c
    ld h, $81
    inc h
    add c
    ld hl, $2081
    add c
    rra
    or c
    ld bc, $7a00
    ld [hl], c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld a, b
    db $d3
    ld [hl-], a
    rra
    add [hl]
    add hl, bc
    add h
    or c
    ld bc, $8d00
    ld [hl], d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]

jr_018_72a5:
    dec c
    jp $c47f


    nop
    push bc
    ld [hl-], a
    add $00
    cp a
    ld h, a
    call nc, $1b4c
    adc h
    rst $20
    sbc b
    push bc
    nop
    cp [hl]

jr_018_72b9:
    ld h, h
    cp a
    ld a, b
    jp nz, $e70a

    ld h, d
    rra
    add c
    pop bc
    ld b, d
    add c
    ld b, c
    add c
    ld a, $81
    inc a
    add c
    ld a, [hl-]
    add c
    dec [hl]
    add c
    inc sp
    add d
    jr nc, jr_018_7255

    ld l, $82
    cpl
    add d
    ld [hl-], a
    add d
    ld [hl], $82
    jr c, jr_018_725f

    dec a
    add d
    ld b, b
    add c
    call nc, $8513
    or c
    cp l
    nop
    cp [hl]
    ld e, l
    jp $c47f


    nop
    push bc
    ld [hl-], a
    add $00
    cp a
    ld h, a
    call nc, $1b4a
    adc h
    rst $20
    sbc b
    push bc
    nop
    cp [hl]
    ld l, b
    cp a
    ld d, l
    db $db
    dec sp
    db $10
    adc h
    cp [hl]
    ld h, l
    db $d3
    dec sp
    ld [de], a
    add h
    rst $10
    dec sp
    inc d
    adc b
    rst $10
    dec sp
    ld d, $88

jr_018_7311:
    rst $18
    dec sp
    jr jr_018_72a5

    db $eb
    dec sp
    dec de
    sbc h
    rst $10
    dec sp
    ld d, $88
    cp [hl]
    ld h, [hl]
    rst $20
    dec sp
    ld [de], a
    sbc b
    or c
    ld [bc], a
    nop
    and b

jr_018_7327:
    ld [hl], d
    push hl
    ld [hl], d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [bc]
    cp a

jr_018_7331:
    ld e, [hl]
    push bc
    ld h, h
    db $d3
    ld c, b
    jr jr_018_72b9

    ld c, d
    add c
    ld c, h
    add c
    ld c, [hl]
    add c
    ld d, b
    add c
    ld d, d
    add c
    ld c, d
    add c
    ld c, h
    add c
    ld c, [hl]
    add c
    ld d, b
    add c
    ld d, d
    add c
    ld d, h
    add c
    ld c, h
    add c
    ld c, [hl]
    add c
    ld d, b
    add c
    ld d, d
    add c
    ld d, h
    add c
    ld d, [hl]
    add c
    ld c, [hl]
    add c
    ld d, b
    add c
    ld d, d
    add c
    ld d, h
    add c
    ld d, [hl]
    add c
    ld e, b
    add h
    or c
    ld bc, $2a00
    ld [hl], e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    scf
    cp a
    ld h, a
    db $ed
    jr nc, @+$1a

    sbc [hl]
    ld b, b
    or c
    ld bc, $6b00
    ld [hl], e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [bc]
    push bc
    inc d
    cp a
    ld [hl], c

jr_018_7387:
    pop de
    add hl, sp
    dec e
    add d
    ld [hl], $82
    jr c, jr_018_7311

    dec [hl]
    add d
    scf
    add d
    inc [hl]

jr_018_7394:
    add d
    ld [hl], $82
    inc sp
    add d
    dec [hl]
    add d
    ld [hl-], a
    add d
    inc [hl]
    add d
    ld sp, $3382
    add d
    jr nc, jr_018_7327

    ld [hl-], a
    add d
    cpl
    add d
    ld sp, $2e82
    add d
    jr nc, jr_018_7331

    dec l
    add d

jr_018_73b1:
    cpl
    add d
    inc l
    add d
    ld l, $82
    dec hl
    add d
    or c
    cp l
    nop
    cp h
    ld c, d

jr_018_73be:
    cp [hl]
    ld l, l
    cp a
    ld a, b
    jp nc, Jump_000_1f47

    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    or c
    ld [bc], a
    nop
    ld a, l
    ld [hl], e
    cp d
    ld [hl], e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc a
    push bc
    inc d
    cp a
    ld [hl], c
    pop de
    ld a, [hl-]
    dec e
    add d
    scf
    add d
    add hl, sp
    add d
    ld [hl], $82
    jr c, jr_018_7387

    dec [hl]
    add d
    ld a, [hl-]
    ld d, $82
    scf
    add d

jr_018_740c:
    add hl, sp
    add d
    ld [hl], $82
    jr c, jr_018_7394

    dec [hl]
    add d
    or c
    ld bc, $ef00
    ld [hl], e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [bc]
    push bc
    inc d
    cp a
    ld [hl], c
    pop de
    ld a, [hl-]
    dec e
    add d
    scf
    add d
    add hl, sp
    add d
    ld [hl], $82
    jr c, jr_018_73b1

    dec [hl]
    add d
    ld a, [hl-]
    ld d, $82
    scf
    add d

jr_018_7436:
    add hl, sp
    add d
    ld [hl], $82
    jr c, jr_018_73be

    dec [hl]
    add d
    or c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, l
    cp a
    ld a, b
    jp nc, Jump_000_1f47

    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    or c
    ld [bc], a
    nop
    add hl, de
    ld [hl], h
    ccf
    ld [hl], h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    push bc
    inc d
    cp a
    ld a, b
    pop de
    ld b, c
    rra
    add d
    ld a, $82
    ld b, b
    add d
    dec a
    add d
    ccf
    add d
    inc a
    add d
    ld a, $82
    dec sp
    add d
    dec a
    add d
    ld a, [hl-]
    add d
    inc a
    add d
    add hl, sp
    add d
    dec sp
    add d
    jr c, jr_018_740c

    ld a, [hl-]
    add d
    scf
    add d
    add hl, sp
    add d
    ld [hl], $82
    jr c, @-$7c

    dec [hl]
    add d
    scf
    add d
    inc [hl]
    add d
    ld [hl], $82
    inc sp
    add d
    dec [hl]
    add d
    ld [hl-], a
    add d
    inc [hl]
    add d
    ld sp, $3382
    add d
    jr nc, @-$7c

    ld [hl-], a
    add d
    cpl
    add d
    ld sp, $2e82
    add d

jr_018_74b2:
    jr nc, jr_018_7436

    dec l
    add d
    cpl
    add d
    inc l
    add d
    ld l, $82
    dec hl
    add d
    or c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, l
    cp a
    ld a, b
    jp nc, Jump_000_1f47

    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    or c
    ld [bc], a
    nop
    ld h, d
    ld [hl], h
    cp a
    ld [hl], h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld [hl], c
    push bc
    nop
    push de
    add hl, sp
    rra
    adc h
    pop de
    ld [de], a
    add d
    or c
    ld bc, $0600
    ld [hl], l
    cp l
    nop
    cp h
    ld c, d

jr_018_7520:
    cp [hl]
    ld a, [bc]
    push bc
    inc d
    cp a
    ld c, e
    pop de
    ld a, [hl-]
    inc de
    add d
    scf
    add d
    dec sp
    add d
    jr c, jr_018_74b2

    inc a
    add d
    add hl, sp
    add d
    dec a
    add d
    ld a, [hl-]
    add d
    ld a, $82
    dec sp
    add d
    ccf
    add d
    inc a
    add d
    ld b, b
    add d
    dec a
    add d
    ld b, c
    add d
    ld a, $82
    ld b, d
    add d
    ccf
    add d
    ld b, e
    add d
    ld b, b
    add d
    ld b, h
    add d
    ld b, c
    add d
    ld b, l

jr_018_7555:
    add d
    ld b, d
    add d
    or c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, l

jr_018_755f:
    cp a
    ld a, b
    jp nc, Jump_000_1f47

    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e
    ld b, [hl]
    add e
    ld b, l
    add e
    ld b, a
    add e

jr_018_757d:
    ld b, [hl]
    add e
    ld b, l
    add e

jr_018_7581:
    ld b, a
    add e
    ld b, [hl]
    add e

jr_018_7585:
    ld b, l
    add e
    or c
    ld [bc], a
    nop
    inc e
    ld [hl], l
    ld e, c
    ld [hl], l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc a
    push bc
    inc d
    cp a
    ld e, [hl]
    pop de
    ld c, d
    jr jr_018_7520

    ld c, c
    add h
    ld c, b
    add h
    pop de
    ld c, d
    ld de, $4984
    add h
    ld c, b
    add h
    or c
    ld bc, $8e00
    ld [hl], l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld [hl-], a
    cp a
    ld [hl], c
    db $d3
    dec [hl]
    dec e
    add l
    db $d3
    add l
    db $d3
    add hl, sp
    add l
    or c
    ld bc, $ad00
    ld [hl], l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    cp a
    ld [hl], c
    pop de
    inc h
    dec e
    add d
    ld h, $82
    jr z, jr_018_7555

    add hl, hl
    add d
    dec hl
    add d
    dec l
    add d
    cpl
    add d
    jr nc, jr_018_755f

    ld [hl-], a
    add d
    inc [hl]
    add d
    dec [hl]
    add d
    scf
    add d
    add hl, sp
    add d

jr_018_75e7:
    dec sp
    add d
    inc a
    add d
    dec sp
    add d
    ld a, [hl-]
    add d
    add hl, sp
    add d
    ld a, [hl-]
    add d
    dec sp
    add d
    ld a, [hl-]
    add d
    add hl, sp
    add d
    jr c, jr_018_757d

    scf
    add d
    jr c, jr_018_7581

    add hl, sp
    add d
    jr c, jr_018_7585

jr_018_7603:
    scf
    add d
    ld [hl], $82
    dec [hl]
    add d
    ld [hl], $82
    scf
    add d
    ld [hl], $82
    dec [hl]
    add d
    inc [hl]
    add d
    inc sp
    add d
    inc [hl]
    add d
    dec [hl]
    add d
    or c
    ld bc, $c300
    ld [hl], l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ccf
    cp a
    ld [hl], c
    push de
    scf
    dec e
    add [hl]
    cp [hl]
    ld [hl], $d3
    dec [hl]
    dec e
    add [hl]
    or c
    ld bc, $1e00
    db $76
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    push bc
    ld h, h
    cp a
    ld [hl], c
    pop de
    ld c, b
    dec e
    add d
    ld b, d
    add d
    dec a
    add d
    ld b, a
    add d

jr_018_7649:
    ld b, c
    add d
    inc a
    add d
    ld b, [hl]
    add d
    ld b, b
    add d
    dec sp
    add d
    ld b, l
    add d
    ccf
    add d
    ld a, [hl-]
    add d
    ld b, h
    add d
    ld a, $82
    add hl, sp
    add d
    ld b, e
    add d
    dec a
    add d
    jr c, jr_018_75e7

    ld b, d
    add d
    inc a
    add d
    scf
    add d
    ld b, c
    add d
    dec sp
    add d
    ld [hl], $82
    ld b, b
    add d
    ld a, [hl-]
    add d
    dec [hl]
    add d
    ccf
    add d
    add hl, sp
    add d
    inc [hl]
    add d
    ld a, $82
    jr c, jr_018_7603

    inc sp
    add d
    dec a
    add d
    scf
    add d
    ld [hl-], a
    add d
    inc a
    add d
    ld sp, $3682
    add d
    or c
    ld bc, $3500
    db $76
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    cp a
    ld [hl], c
    jp nc, $1d30

    add e
    ld sp, $3283
    add e
    inc sp
    add e
    inc [hl]
    add e
    dec [hl]
    add e
    ld [hl], $83
    scf
    add e
    jr c, @-$7b

    add hl, sp
    add e
    jp nc, Jump_000_1130

    add e
    ld sp, $3283
    add e
    inc sp
    add e
    inc [hl]
    add e
    dec [hl]
    add e
    ld [hl], $83
    scf
    add e
    jr c, jr_018_7649

    add hl, sp
    add e
    or c
    ld bc, $9400
    db $76
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc sp
    cp a
    ld a, b
    db $d3
    jr nc, jr_018_76f7

    adc b
    or c
    ld bc, $cd00
    db $76

jr_018_76de:
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld d, l
    cp a
    ld a, b
    ret nc

    ld e, e
    rra
    add e
    ld h, e
    add e
    ld e, d
    add e
    ld d, [hl]
    add e
    ld h, l
    add e
    ld d, l
    add e
    ld c, a
    xor d
    or c

jr_018_76f7:
    cp l

jr_018_76f8:
    nop
    cp [hl]
    db $10
    cp a
    cpl
    sub d
    jp nc, $0c5b

    add e
    ld h, e
    add e
    ld e, d
    add e
    ld d, [hl]
    add e
    ld h, l
    add e
    ld d, l
    add e
    ld c, a
    and h
    or c
    cp l
    nop
    cp [hl]
    dec h
    cp a
    ld d, l
    add [hl]
    jp nc, $165b

    add e
    ld h, e
    add e

jr_018_771c:
    ld e, d
    add e
    ld d, [hl]
    add e
    ld h, l
    add e
    ld d, l
    add e
    ld c, a
    xor b
    or c
    inc bc
    nop
    sbc $76
    rst $30
    db $76
    rrca
    ld [hl], a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld e, [hl]
    ret nc

    jr nc, jr_018_7752

    add e
    ld a, $83
    ld b, [hl]
    add d
    or c

jr_018_7740:
    ld bc, $2f00
    ld [hl], a
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    push bc
    ld d, b
    cp a
    ld [hl], c
    pop bc
    ld b, b
    rst $18
    ld c, e

jr_018_7752:
    jr jr_018_76de

    pop bc
    scf
    add d
    ld sp, $2882
    add d
    inc h
    add d
    ld [hl+], a
    add d
    ld hl, $d682
    ld c, e
    inc c

jr_018_7764:
    add c
    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $48
    jr jr_018_76f8

    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $48
    inc c

jr_018_7788:
    add c
    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $41
    jr jr_018_771c

    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $41
    inc c
    add c
    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $3e
    jr jr_018_7740

    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $3e
    inc c
    add c
    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $3d
    jr jr_018_7764

    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $3d
    inc c

jr_018_77f4:
    add c
    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $3c
    jr jr_018_7788

    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    sub $3c
    inc c
    add c
    pop bc
    scf
    add c
    ld sp, $2881
    add c
    inc h
    add c
    ld [hl+], a
    add c
    ld hl, $4081
    or h
    or c
    cp l
    ld bc, $4abc
    cp [hl]
    ld a, [bc]
    push bc
    ld d, b
    cp a
    ld [hl], c
    pop bc
    ld b, b
    add [hl]
    or e
    ld d, b
    ld [hl], a
    or c
    ld [bc], a
    nop
    ld b, h
    ld [hl], a
    add hl, hl
    ld a, b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld [hl], c
    ret nc

    ld b, b
    dec e
    add c
    ld b, b
    add hl, de
    add c
    ld b, b
    rla
    add c
    ld a, $1d
    add c
    ld a, $19
    add c
    ld a, $17
    add c
    inc a
    dec e
    add c
    inc a
    add hl, de
    add c
    inc a
    rla
    add c
    dec sp
    dec e
    add c
    dec sp
    add hl, de
    add c
    dec sp
    rla
    add c
    add hl, sp
    dec e
    add c
    add hl, sp
    jr jr_018_77f4

    add hl, sp
    rla
    add c
    scf
    dec e
    add c
    scf
    add hl, de
    add c
    scf
    rla
    add c
    dec [hl]
    dec e
    add c
    dec [hl]
    add hl, de
    add c
    dec [hl]
    rla
    add c
    inc [hl]
    dec e
    add c
    inc [hl]
    add hl, de
    add c
    inc [hl]
    rla
    add c
    ld [hl-], a
    dec e
    add c
    ld [hl-], a
    add hl, de
    add c
    ld [hl-], a
    rla
    add c
    jr nc, jr_018_78b9

    add c
    jr nc, jr_018_78b8

    add c
    jr nc, jr_018_78b9

    add c
    ld [hl-], a
    dec e
    add c
    ld [hl-], a
    add hl, de
    add c
    ld [hl-], a
    rla
    add c
    inc [hl]
    dec e
    add c

jr_018_78af:
    inc [hl]
    add hl, de
    add c

jr_018_78b2:
    inc [hl]
    rla
    add c
    dec [hl]
    dec e
    add c

jr_018_78b8:
    dec [hl]

jr_018_78b9:
    add hl, de
    add c
    dec [hl]
    rla
    add c
    scf
    dec e
    add c
    scf
    add hl, de
    add c
    scf
    rla
    add c
    add hl, sp
    dec e
    add c
    add hl, sp
    add hl, de
    add c
    add hl, sp
    rla
    add c
    dec sp
    dec e
    add c
    dec sp
    add hl, de
    add c
    dec sp
    rla
    add c
    inc a
    dec e
    add c
    inc a
    add hl, de
    add c
    inc a
    rla
    add c
    ld a, $1d
    add c
    ld a, $19
    add c
    ld a, $17
    add c
    ld b, b
    dec e
    add c
    ld b, b
    add hl, de
    add c
    ld b, b
    rla
    add c
    or c
    ld bc, $4000
    ld a, b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    push bc
    ld h, h
    cp a
    ld [hl], c
    pop de
    ld h, b
    dec e
    add d
    ld d, h
    add d
    ld c, b

jr_018_790a:
    add d
    inc a
    add d
    ld e, a
    add d
    ld d, e
    add d
    ld b, a
    add d
    dec sp
    add d
    ld e, [hl]
    add d
    ld d, d
    add d
    ld b, [hl]
    add d
    ld a, [hl-]
    add d
    ld e, l
    add d
    ld d, c
    add d
    ld b, l
    add d
    add hl, sp
    add d
    ld e, h
    add d
    ld d, b
    add d
    ld b, h
    add d
    jr c, jr_018_78af

    ld e, e
    jr jr_018_78b2

    ld c, a
    add d
    ld b, e
    add d
    scf
    add d
    ld e, e
    ld de, $4f82
    add d
    ld b, e
    add d
    scf
    add d
    ld e, e
    inc c
    add d
    ld c, a
    add d
    ld b, e

jr_018_7945:
    add d
    scf
    add d
    or c
    ld bc, $f900
    ld a, b
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    inc sp
    cp a
    ld a, b
    sub $2b
    inc de
    adc b
    sub $2d
    ld d, $88
    sub $2f
    jr @-$76

    sub $30
    dec de
    adc b
    sub $32
    rra
    adc b
    or c
    ld bc, $4d00
    ld a, c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld [hl], $bf
    ld a, b
    sub $30
    rra
    adc b
    sub $2f
    dec de
    adc b
    sub $2e
    jr jr_018_790a

    sub $2d
    ld d, $88
    sub $2b
    inc de
    adc b
    or c
    ld bc, $6e00
    ld a, c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld a, b
    push de
    ld a, [hl-]
    rra
    adc h
    pop de
    ld [de], a
    add d
    pop de
    inc c
    add d
    or c
    ld bc, $8f00
    ld a, c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [hl-]
    cp a
    ld c, e
    db $e3
    ld h, b
    inc de
    sub h
    or c
    ld bc, $a600
    ld a, c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld e, [hl]
    ret nc

    ld c, d
    jr jr_018_7945

    ret nc

    ld b, a
    inc c
    add d
    or c
    ld bc, $b700
    ld a, c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld a, b
    sub $38
    rra
    adc b
    call nc, $0e38
    add [hl]
    db $d3
    scf

jr_018_79de:
    rlca
    add l
    or c
    ld bc, $cc00
    ld a, c
    cp l
    nop
    cp h

jr_018_79e8:
    ld c, d
    cp [hl]
    ld h, l
    push bc
    nop
    cp a
    ld e, [hl]
    ret nc

    ld c, a
    dec e
    add c
    ld c, [hl]
    add c
    ld c, l
    add c
    ld c, h
    add c
    ld c, e
    add c
    ld c, d
    add c
    ld c, c

jr_018_79fe:
    add c
    ld c, b
    add c
    ld b, a
    add c
    ld b, [hl]
    add c
    ld b, l
    add c
    ld b, h
    add c
    ld b, e
    add c
    ld b, d
    rlca
    add c
    ld b, c
    add c
    ld b, b
    add c
    ccf
    dec b
    add c
    ld a, $81
    dec a
    inc bc
    add c
    inc a
    add c
    dec sp
    ld bc, $3a81
    add c
    add hl, sp
    add c
    jr c, jr_018_7a25

jr_018_7a25:
    add c
    scf
    add c

jr_018_7a28:
    or c
    ld bc, $e500
    ld a, c
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld c, e
    jp nz, $c10e

    ld b, b
    sub $48
    inc de
    add c
    pop bc
    ld b, d
    add c
    ld b, l
    add c
    ld c, d
    add c
    ld h, h
    add c
    ld a, b
    add c
    ld a, a
    add c
    or c
    ld bc, $2d00
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    push bc
    nop
    cp a
    ld e, [hl]
    ret nc

    ld b, e

jr_018_7a5b:
    jr jr_018_79de

    inc c
    add c
    ld b, [hl]
    jr @-$7d

    inc c
    add c
    ld b, l
    jr jr_018_79e8

    inc c
    add c
    or c
    ld bc, $4f00
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld [hl], c
    ret nc

    ld c, b
    jr jr_018_79fe

    ld d, l
    add h
    ld a, $84
    ld h, e
    add h
    ld c, h
    add h
    ld e, c
    add h
    ld b, d
    add h
    ld e, e
    add h
    ld l, b
    add h
    ld d, c
    add h
    ld d, d
    add h
    ld b, a
    add h
    ld h, b
    add h
    or c
    ld bc, $6e00
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld e, l
    cp a
    ld h, a
    ret nc

    ld d, h
    jr @-$7d

    inc c
    add d
    jr jr_018_7a28

    inc c
    add d
    or c
    ld bc, $9700
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld a, b
    rst $10
    jr c, jr_018_7ad8

    adc d
    rst $10
    jr c, @+$06

    adc d
    or c
    ld bc, $ae00
    ld a, d

jr_018_7ac3:
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld [hl], c
    rst $10
    dec [hl]
    rra
    adc b
    rst $10
    dec [hl]
    jr jr_018_7a5b

    or c

jr_018_7ad4:
    ld bc, $c300
    ld a, d

jr_018_7ad8:
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [hl-]
    cp a
    ld c, e
    db $e3
    ld d, h
    inc de
    sub h
    or c
    ld bc, $d800
    ld a, d

jr_018_7ae9:
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld a, b
    cp [hl]
    dec bc
    pop hl
    ld h, b
    rra
    sub d
    or c
    ld bc, $e900
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    push bc
    ld [hl-], a
    cp a
    ld [hl], c
    db $db
    ld c, c
    dec e
    adc h
    or c
    ld bc, $fc00
    ld a, d
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld e, [hl]
    pop bc
    ld b, b
    jp nz, $e70a

    ld d, a
    dec d
    add a
    pop bc
    ccf
    adc b
    ld a, $89
    rst $20
    ld d, a

jr_018_7b26:
    ld c, $c1
    dec a
    adc d
    inc a
    adc b
    dec sp
    add d
    ld a, [hl-]
    add e
    add hl, sp
    add c
    jp hl


    ld d, a
    add hl, bc
    pop bc
    jr c, jr_018_7ac3

    scf
    add a
    ld [hl], $86
    dec [hl]
    add [hl]
    pop hl
    ld d, a
    rlca
    pop bc
    inc [hl]
    adc b
    inc sp
    add e
    ld [hl-], a
    add h
    ld sp, $da83
    ld d, a
    inc b
    pop bc
    jr nc, jr_018_7ad4

    cpl
    add a
    or c
    ld bc, $0f00
    ld a, e
    cp l
    inc bc
    cp h
    ld c, d
    cp [hl]
    inc a
    push bc
    inc d
    cp a
    ld [hl], c
    pop de
    ld c, d
    jr jr_018_7ae9

    ld c, e
    add h
    ld c, h
    add h
    pop de
    ld c, l
    ld de, $4e84
    add h
    ld c, a
    add h
    or c
    ld bc, $5700
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    rra
    cp a

jr_018_7b7d:
    ld e, [hl]
    pop bc
    ld e, a
    push de
    ld h, h
    add hl, de
    add c
    pop bc
    ld b, b
    add c
    ld bc, $d584
    ld h, h
    ld c, $81
    pop bc
    ld b, b
    add c
    ld bc, $b184
    ld bc, $7600
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld e, [hl]
    ret nc

    ld d, [hl]
    jr jr_018_7b26

    ld d, c
    add c
    or c

jr_018_7ba6:
    ld bc, $9700
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    ld h, a
    ret nc

    ld c, d
    dec de
    add e
    or c
    ld bc, $aa00
    ld a, e

jr_018_7bbb:
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld e, [hl]
    ret nc

    ld b, e
    jr @-$7b

    inc c
    add e
    or c
    ld bc, $bb00
    ld a, e
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, e
    cp a
    ld a, b
    ret nc

    ld e, b
    rra
    add [hl]
    ret nc

    ld d, h
    rra
    add [hl]
    ret nc

    ld e, b
    rra
    add [hl]
    ld e, e
    add d
    or c
    ld bc, $ce00
    ld a, e
    cp l
    nop

jr_018_7beb:
    cp h
    ld c, d
    cp [hl]
    dec [hl]
    cp a
    ld a, b
    rst $10
    ld c, b
    jr jr_018_7b7d

    rst $10
    adc b
    rst $10
    adc b
    rst $10
    adc b
    or c
    ld bc, $e900
    ld a, e
    cp l
    nop
    cp h
    ld c, d

jr_018_7c04:
    cp [hl]
    inc a
    cp a
    ld c, e
    rst $10

jr_018_7c09:
    ld b, b
    inc de
    adc b
    or c
    ld bc, $0000
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld c, e
    pop de
    ld d, h
    inc de
    add e
    ld b, e
    add e
    ld b, b
    add e
    jr nc, jr_018_7ba6

    ld [hl-], a
    add e
    ld b, l
    add e
    or c
    ld bc, $1100
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    dec sp
    cp a
    ld a, b
    push de
    ld b, c
    jr jr_018_7bbb

    ld h, l
    add [hl]
    or c
    ld bc, $2c00
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    jr c, jr_018_7c09

    ld b, b
    jp nz, $ce0a

    ld d, a
    ld c, $87
    pop bc
    ccf
    adc b
    ld a, $8a
    dec a
    adc c
    inc a
    adc b
    dec sp
    add d
    ld a, [hl-]
    add e
    add hl, sp
    add e
    jr c, jr_018_7beb

    scf
    add a
    ld [hl], $86
    dec [hl]
    add [hl]
    inc [hl]

jr_018_7c67:
    adc b
    inc sp
    add e
    ld [hl-], a
    add d
    ld sp, $3083
    add h
    cpl
    add a
    ld l, $87
    dec l
    add l
    inc l
    add [hl]
    dec hl
    adc b
    ld a, [hl+]
    add [hl]
    add hl, hl
    add [hl]
    jr z, jr_018_7c04

    daa
    add l
    ld h, $85
    dec h
    add l
    inc h
    add c
    inc hl
    add d
    ld [hl+], a
    add d
    ld hl, $2086
    add h
    rra
    add c
    ld e, $81
    dec e
    add d
    inc e
    add e
    dec de
    add d
    ld a, [de]
    add h
    rst $08
    or c
    ld bc, $3f00
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld e, [hl]
    pop bc
    ld b, b
    jp nz, $ce0a

    ld d, a
    dec d
    add a
    pop bc
    ccf
    adc b
    ld a, $8a
    dec a
    adc c
    inc a
    adc b
    dec sp
    add d
    ld a, [hl-]
    add e
    add hl, sp
    add e
    jr c, @-$73

    scf
    add a
    ld [hl], $86
    dec [hl]
    add [hl]
    inc [hl]
    adc b
    inc sp
    add e
    ld [hl-], a
    add d
    ld sp, $3083
    add h
    cpl
    add a
    ld l, $87
    dec l
    add l
    inc l
    add [hl]
    dec hl
    adc b
    ld a, [hl+]
    add [hl]
    add hl, hl
    add [hl]
    jr z, jr_018_7c67

    daa
    add l
    ld h, $85
    dec h
    add l
    inc h
    add c
    inc hl
    add d
    ld [hl+], a
    add d
    ld hl, $2086
    add h
    rra
    add c
    ld e, $81
    dec e
    add d
    inc e
    add e
    dec de
    add d
    ld a, [de]
    add h
    rst $08
    or c
    ld bc, $a200
    ld a, h
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld c, e
    pop de
    inc a
    inc de
    add e
    or c
    ld bc, $0500
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [bc]
    cp a
    nop
    ret nc

    inc a
    nop
    add c
    or c
    cp l
    nop
    cp [hl]
    inc d
    cp a
    nop
    ret nc

    inc a
    nop
    add c
    or c
    cp l
    nop
    cp [hl]
    ld e, $bf
    nop
    ret nc

    inc a
    nop
    add c
    or c
    cp l
    nop
    cp [hl]
    ld h, l
    cp a
    nop
    ret nc

    inc a
    nop
    add c
    or c
    inc b
    nop
    ld d, $7d
    inc hl
    ld a, l
    ld l, $7d
    add hl, sp
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld h, l
    cp a
    nop
    ret nc

    inc a
    nop
    add c
    or c
    ld bc, $4e00
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld a, [hl-]
    cp a
    ld c, e
    db $e3
    ld d, h
    inc de
    sub h
    or c
    ld bc, $5f00
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld e, [hl]
    pop de
    ld d, h
    ld de, $d182
    ld d, [hl]
    ld de, $d182
    ld e, b
    ld de, $b182
    ld bc, $7000
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld e, [hl]
    pop de
    ld e, b
    ld de, $d182
    ld d, [hl]
    ld de, $d182
    ld d, h
    ld de, $b182
    ld bc, $8900
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld l, d
    cp a
    ld e, [hl]
    pop de

jr_018_7dab:
    inc a
    jr @-$7a

    dec a
    add h
    ld a, $82
    or c
    ld bc, $a200
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld c, e
    jp nz, $c114

    ld b, c
    pop hl
    dec [hl]
    inc de
    add l
    pop bc
    ld b, d
    add c
    ld b, l
    add c
    ld c, d
    add d
    ld d, e
    add c
    ld d, [hl]
    add c
    ld e, [hl]
    add c
    ld h, [hl]
    add c
    ld l, c
    add c
    ld l, l
    add c
    ld [hl], e
    add c
    ld a, d
    add c
    ld a, [hl]
    add c
    or c
    ld bc, $b700
    ld a, l
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    db $10
    cp a
    ld c, e
    jp nz, $c114

    ccf
    pop hl
    ld c, b
    inc de
    add l
    pop bc
    ld a, $81
    dec sp

jr_018_7df9:
    add c
    ld [hl], $82
    dec l
    add c
    ld a, [hl+]

jr_018_7dff:
    add c
    ld [hl+], a
    add c
    ld a, [de]
    add c
    rla

jr_018_7e05:
    add c
    inc de
    add c
    dec c
    add c
    ld b, $81
    ld [bc], a
    add c
    or c
    ld bc, $e500
    ld a, l
    cp l
    nop
    cp h
    ld c, d

jr_018_7e17:
    cp [hl]
    db $10
    cp a
    ld [hl], c
    pop de
    ld c, b

jr_018_7e1d:
    dec e
    add e
    ld c, h
    add e
    ld c, a
    add e

jr_018_7e23:
    ld d, h
    add e
    ld c, b
    jr jr_018_7dab

    ld c, h
    add e
    ld c, a
    add e
    ld d, h
    add e
    ld c, b
    ld c, $83
    ld c, h
    add e
    ld c, a
    add e
    ld d, h
    add e
    or c
    ld bc, $1300
    ld a, [hl]
    cp l
    ld [bc], a
    cp h
    ld c, d
    cp [hl]
    dec c
    jp $c47f


    nop
    push bc
    ld [hl-], a
    add $00
    cp a
    ld a, b
    call nc, $1f35
    adc h
    rst $20
    sbc b
    or c
    cp l
    ld [bc], a
    cp [hl]
    ld e, l
    jp $c47f


    nop
    push bc
    ld [hl-], a
    add $00
    cp a
    ld a, b
    call nc, Call_000_1f33
    adc h
    rst $20
    sbc b
    or c
    ld [bc], a
    nop
    inc a
    ld a, [hl]
    ld d, e
    ld a, [hl]
    cp l
    nop
    cp [hl]

jr_018_7e71:
    ld c, d
    cp a
    ld e, [hl]
    ret nc

    ld e, a
    jr jr_018_7df9

    inc c
    add d
    ret nc

    ld h, b
    jr jr_018_7dff

    inc c
    add d
    ret nc

    ld e, a

jr_018_7e82:
    jr jr_018_7e05

    inc c
    add d
    ret nc

    ld h, b
    jr @-$7d

    inc c
    add d
    ret nc

    ld e, a
    jr @-$7d

    inc c
    add d
    ret nc

    ld h, b
    jr jr_018_7e17

    inc c
    add d
    rst $10
    ld e, a
    jr jr_018_7e1d

    inc c
    add d
    rst $10
    ld h, b
    jr jr_018_7e23

    inc c
    add d
    rst $10
    ld e, a
    ld de, $0781
    add d
    rst $10
    ld h, b
    ld de, $0781
    add d
    ret nc

    ld e, a
    ld de, $0781
    add d
    ret nc

    ld h, b
    ld de, $0781
    add d
    rst $10
    ld e, a
    ld de, $0781
    add d
    rst $10
    ld h, b
    ld de, $0781
    add d
    or c
    ld bc, $6e00
    ld a, [hl]
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld de, $5ebf
    rst $20
    ld d, h
    jr jr_018_7e71

    or c
    ld bc, $cd00
    ld a, [hl]
    cp l
    nop
    cp h
    ld c, d
    cp [hl]
    ld de, $5ebf
    rst $20
    ld h, b
    jr jr_018_7e82

    or c
    ld bc, $de00
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
