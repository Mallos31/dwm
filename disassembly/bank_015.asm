; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    dec d
    add hl, bc
    ld b, b
    or e
    ld b, d
    rst $10
    ld b, [hl]
    ld a, h
    ld d, h
    ld hl, sp+$00
    ld a, l
    ld [$da7b], a
    ld a, h
    ld [$da7c], a
    xor a
    ld hl, wMenu_selection
    ld bc, $0008
    call Call_000_12c7
    xor a
    ld hl, $c827
    ld bc, $0012
    call Call_000_12c7
    ld hl, $99c1
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    xor a
    ld hl, $c8d2
    ld bc, $0008
    call Call_000_12c7
    call Call_000_1264
    xor a
    ld [$c8c7], a
    ld a, [$c88b]
    rst $00
    ld c, a
    ld b, b
    and b
    ld b, b
    ld [hl], d
    ld b, c
    jr @+$44

    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $5f02
    rst $10
    ld a, $fc
    call Call_000_1688
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    ld [$c86c], a
    ld [$c86d], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld a, $03
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


    ld a, $02
    call Call_000_1c89
    call Call_000_1013
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $1709
    rst $10
    ld hl, $170a
    rst $10
    ld a, $fc
    call Call_000_1688
    ld hl, $ff8a
    ld bc, $0021
    xor a
    call Call_000_12c7
    ld hl, $c8ea
    ld bc, $1100
    xor a
    call Call_000_12c7
    ld a, $04
    ld [$c8ee], a
    call Call_015_60df
    ld de, $2e1e
    ld hl, $9000
    call Call_000_14cf
    ld de, $2e1f
    ld hl, $8800
    call Call_000_14cf
    ld de, $2e20
    ld hl, $8a00
    call Call_000_14cf
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
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
    call Call_015_5e8b
    ld a, $24
    call Call_000_1ae1
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a

Jump_015_413e:
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    ld a, $00
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c864], a
    ld [$c86c], a
    ld [$c86d], a
    xor a
    ld [$c863], a
    ld [$c864], a
    ld a, $03
    ld [$c8a1], a
    ld a, $09
    jp Jump_000_11cb


    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $fc
    call Call_000_1688
    ld a, $04
    ld [$c8ee], a
    call Call_015_60df
    ld de, $2e1e
    ld hl, $9000
    call Call_000_14cf
    ld de, $2e1f
    ld hl, $8800
    call Call_000_14cf
    ld de, $2e20
    ld hl, $8a00
    call Call_000_14cf
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
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
    call Call_015_5e8b
    ld hl, $c0d8
    ld bc, $0017
    ld a, $ff
    call Call_000_12c7
    ld a, $24
    call Call_000_1ae1
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86e], a
    ld a, $03
    ld [$c8a1], a
    ld a, $09
    jp Jump_000_11cb


    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld a, $fc
    call Call_000_1688
    ld a, $04
    ld [$c8ee], a
    call Call_015_60df
    ld de, $2e1e
    ld hl, $9000
    call Call_000_14cf
    ld de, $2e1f
    ld hl, $8800
    call Call_000_14cf
    ld de, $2e20
    ld hl, $8a00
    call Call_000_14cf
    ld de, $2e00
    ld hl, $8d00
    call Call_000_14cf
    ld hl, $8b00
    ld de, $1202
    call Call_000_098f
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
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
    call Call_015_5e8b
    ld a, $24
    call Call_000_1ae1
    ld a, $07
    ldh [$b5], a
    ld a, $ff
    ldh [$b6], a
    ld a, $00
    ldh [$bb], a
    ld a, $00
    ldh [$b7], a
    xor a
    ld [$c8a4], a
    ld [$c8a5], a
    xor a
    ld [$c892], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86e], a
    ld a, $03
    ld [$c8a1], a
    ld a, $09
    jp Jump_000_11cb


    ld a, [$c88b]
    rst $00
    ret nz

    ld b, d
    jp z, $b942

    ld b, [hl]
    ld h, d
    ld d, h
    ret


    ld a, $f4
    call Call_000_1275
    ld hl, $5f03
    rst $10
    ret


    call Call_015_42f1
    di
    ld a, [$c86d]
    or a
    jr z, jr_015_42ef

    ld a, [$c86d]
    ld b, a
    xor a
    ld [$c86d], a
    ld a, [$c88e]
    or a
    jr nz, jr_015_42ef

    ld a, b
    call Call_000_126b

jr_015_42e6:
    ld a, [$c864]
    and $03
    cp $03
    jr nz, jr_015_42e6

jr_015_42ef:
    ei
    ret


Call_015_42f1:
    ld a, [$c8d2]
    rst $00
    ld bc, $4243
    ld b, e
    push bc
    ld b, e
    rst $18
    ld b, e
    ld [bc], a
    ld b, h
    ld [hl], $44
    ld a, $f4
    call Call_000_1275
    call Call_015_5e7c
    ld de, $6454
    ld hl, $a002
    call Call_000_20ee
    or a
    jr z, jr_015_4318

    ld de, $647d

jr_015_4318:
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $43b2
    ld hl, $a002
    call Call_000_20ee
    or a
    jr z, jr_015_432d

    ld de, $43b7

jr_015_432d:
    xor a
    ld [$c8df], a
    ld a, [wMenu_selection]
    ld [$c8e0], a
    call Call_015_60a2
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c850]
    or a
    ld a, $f4
    call nz, Call_000_1275
    ret nz

    ld de, $43b2
    ld b, $01
    ld hl, $a002
    call Call_000_20ee
    or a
    jr z, jr_015_435f

    ld de, $43b7
    ld b, $04

jr_015_435f:
    ld hl, wMenu_selection
    ld a, [$c8e0]
    ld [wMenu_selection], a
    call Call_015_5f85
    ld a, [wMenu_selection]
    ld [$c8e0], a
    ld de, $43b6
    ld hl, $a002
    call Call_000_20ee
    or a
    jr z, jr_015_4380

    ld de, $43c1

jr_015_4380:
    ld a, [wMenu_selection]
    and $7f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    call Call_000_1275
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_43b1

    ld a, [wMenu_selection]
    and $7f
    cp $02
    jr z, jr_015_43a9

    cp $03
    jr z, jr_015_43a9

    ld a, $59
    call Call_000_1b2c

jr_015_43a9:
    ld hl, $c8d2
    inc [hl]
    xor a
    ld [$c8d3], a

Jump_015_43b1:
    ret


    ld hl, $ff00
    rst $38
    db $f4
    ld hl, $6100
    nop
    and c
    nop
    pop hl
    nop
    rst $38
    rst $38
    db $f4
    db $f4
    ld a, [c]
    di
    ld a, [wMenu_selection]
    and $7f
    ld b, a
    ld hl, $a002
    call Call_000_20ee
    or a
    jr nz, jr_015_43d5

    inc b

jr_015_43d5:
    ld a, b
    rst $00
    ld b, l
    ld b, h
    ld e, $46
    ld [hl], a
    ld b, [hl]
    sbc b
    ld b, [hl]
    ld a, $f4
    call Call_000_1275
    ld a, $04
    call Call_000_1688
    ld a, $01
    ld [wGameMode], a
    ld a, $00
    ld [$c88b], a
    ld a, $00
    ld [$c88c], a
    ld a, $00
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    ret


    ld a, $f4
    call Call_000_1275
    ld a, [$c81c]
    cp $01
    jr nz, jr_015_4422

    ld hl, $0270
    call Call_000_096d
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


jr_015_4422:
    ld hl, $021b
    call Call_000_096d
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, $f4
    call Call_000_1275
    ld a, [$c825]
    or a
    ret nz

    xor a
    ld [$c8d2], a
    ret


    ld a, $f4
    call Call_000_1275
    ld a, [$c8d3]
    rst $00
    ld d, d
    ld b, h
    db $fc
    ld b, l
    di
    call Call_000_21b2
    ei
    ld hl, $1700
    rst $10
    jr jr_015_44d7

    ld a, [$c969]
    or a
    jr z, jr_015_44d7

    ld a, [$d9e7]
    or a
    jr z, jr_015_44cd

    ld a, $01
    ld [$c8ea], a
    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$c96d], a
    ld [$c96e], a
    ld hl, $00e8
    ld a, l
    ld [$c96f], a
    ld a, h
    ld [$c970], a
    ld hl, $0058
    ld a, l
    ld [$c971], a
    ld a, h
    ld [$c972], a
    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ld a, $02
    ldh [$8e], a
    ldh a, [$8f]
    add $00
    ld [$d7b8], a
    xor a
    ld [$d7ba], a
    ld [$d7bb], a
    ld [$d7b6], a
    ld hl, $d7b6
    ld a, l
    ld [$d7b4], a
    ld a, h
    ld [$d7b5], a
    ldh a, [$8a]
    ld [$d7b7], a
    ld hl, $0200
    rst $10
    ld a, [$d7ba]
    ldh [$8b], a
    ld hl, $0109
    rst $10
    jr jr_015_44e3

jr_015_44cd:
    ld a, $01
    ld [$d9e7], a
    di
    call Call_000_2128
    ei

jr_015_44d7:
    ld a, [$d974]
    cp $06
    jr z, jr_015_44e3

    ld a, $80
    ld [$c8ea], a

jr_015_44e3:
    ld a, [wGameState]
    bit 4, a
    jr nz, jr_015_44ee

    xor a
    ld [wGameState], a

jr_015_44ee:
    xor a
    ld [$d9e7], a
    ld hl, $0103
    rst $10
    ld de, $ca42
    ld hl, $9000
    call Call_015_5e2e
    call Call_015_45ae
    ld de, $673b
    call Call_015_5d8f
    ld a, [$cab8]
    ld c, a
    ld b, $00
    ld hl, HeaderComplementCheck
    call Call_015_5d33
    call Call_000_20ad
    ld a, [$cab7]
    ld c, a
    ld b, $00
    ld hl, $0150
    call Call_015_5d33
    call Call_000_20ad
    ld a, [$ca8d]
    or a
    jr z, jr_015_4578

    ld hl, $cb0c
    ld a, $00
    call Call_000_224a
    ld c, a
    ld b, $00
    ld hl, $01a4
    call Call_015_5d33
    call Call_000_2082
    ld a, [$ca8d]
    cp $01
    jr z, jr_015_457e

    ld hl, $cb0c
    ld a, $01
    call Call_000_224a
    ld c, a
    ld b, $00
    ld hl, $01aa
    call Call_015_5d33
    call Call_000_2082
    ld a, [$ca8d]
    cp $02
    jr z, jr_015_4584

    ld hl, $cb0c
    ld a, $02
    call Call_000_224a
    ld c, a
    ld b, $00
    ld hl, $01b0
    call Call_015_5d33
    call Call_000_2082
    jr jr_015_458a

jr_015_4578:
    ld hl, $0181
    call Call_015_4592

jr_015_457e:
    ld hl, $0187
    call Call_015_4592

jr_015_4584:
    ld hl, $018d
    call Call_015_4592

jr_015_458a:
    call Call_015_5dc0
    ld hl, $c8d3
    inc [hl]
    ret


Call_015_4592:
    push hl
    call Call_015_5d33
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_015_5d33
    ld a, $e0
    ld [hl+], a
    ld [hl], a
    ret


Call_015_45ae:
    ld hl, $cac2
    ld a, $00
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $9040
    ld a, $01
    call Call_015_45e5
    ld hl, $cac2
    ld a, $01
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $9080
    ld a, $02
    call Call_015_45e5
    ld hl, $cac2
    ld a, $02
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $90c0
    ld a, $03
    call Call_015_45e5
    ret


Call_015_45e5:
    ld b, a
    ld a, [$ca8d]
    cp b
    jp nc, Jump_015_5e2e

    ld b, $20

jr_015_45ef:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_015_45ef

    ret


    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_015_460e

    ld a, $59
    call Call_000_1b2c
    ld hl, $c8d2
    inc [hl]
    jr jr_015_461d

jr_015_460e:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_461d

    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]

jr_015_461d:
    ret


    ld a, $f4
    call Call_000_1275
    ld a, [$c8d3]
    rst $00
    dec l
    ld b, [hl]
    dec l
    ld b, [hl]
    dec l
    ld b, [hl]
    ld hl, $ff8a
    ld bc, $0021
    xor a
    call Call_000_12c7
    ld hl, $c8ea
    ld bc, $1100
    xor a
    call Call_000_12c7
    ld a, $04
    ld [$c8ee], a
    xor a
    ld [$c8ea], a
    ld hl, $c8d2
    inc [hl]
    xor a
    ld [$d8d7], a
    ld a, $2f
    ld [$c968], a
    ld [$c96a], a
    ld a, $00
    ld [$c969], a
    ld [$c96b], a
    ld a, $00
    ld [$ca8d], a
    ld a, $ff
    ld [$ca8e], a
    ld a, $ff
    ld [$ca8f], a
    ld a, $ff
    ld [$ca90], a
    ret


    ld a, [$c8df]
    cp $ff
    jr z, jr_015_4689

    ld a, $00
    ld [$c841], a
    ld a, $f0
    ld [$c86d], a
    ret


jr_015_4689:
    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c86d], a
    ld a, $04
    ld [$c8d2], a
    ret


    ld a, [$c8df]
    cp $ff
    jr z, jr_015_46aa

    ld a, $00
    ld [$c841], a
    ld a, $f1
    ld [$c86d], a
    ret


jr_015_46aa:
    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c86d], a
    ld a, $04
    ld [$c8d2], a
    ret


    call Call_000_047e
    ld a, [$c8d2]
    cp $06
    jr z, jr_015_46cc

    cp $14
    jr z, jr_015_46cc

    cp $1c
    jr z, jr_015_46cc

    ret


jr_015_46cc:
    call Call_015_53b2
    call Call_015_53ee
    ld hl, $1702
    rst $10
    ret


    ld a, [$c8d2]
    rst $00
    dec h
    ld b, a
    or a
    ld b, a
    ld b, h
    ld c, c
    rrca
    ld c, d
    inc d
    ld c, d
    dec a
    ld c, d
    dec bc
    ld c, e
    ld hl, $574b
    ld c, e
    ld l, e
    ld c, e
    sub e
    ld c, e
    jp hl


    ld c, e
    db $fd
    ld c, e
    dec h
    ld c, h
    sub h
    ld c, h
    ld [hl+], a
    ld c, l
    ret z

    ld c, l
    ld e, c
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    add a
    ld c, [hl]
    ld e, e
    ld c, a
    ld [hl], c
    ld c, a
    and a
    ld c, a
    or a
    ld c, a
    ld hl, sp+$4f
    db $10
    ld d, b
    jr nz, jr_015_4761

    ld c, l
    ld d, b
    db $e3
    ld d, b
    cp $50
    inc [hl]
    ld d, c
    ld l, b
    ld d, c
    xor d
    ld d, c
    cp d
    ld d, c
    and c
    ld d, d
    inc a
    ld d, e
    ld e, h
    ld d, e
    call Call_015_4730
    call Call_015_476f
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4730:
    ld de, $cac1
    ld b, $00
    ld c, $00

jr_015_4737:
    push de
    ld a, [de]
    or a
    jr z, jr_015_475b

    ld a, e
    add $63

Jump_015_473f:
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_475b

    ld a, [$c0ec]
    cp b
    jr z, jr_015_475b

    ld a, [$c0ed]
    cp b
    jr z, jr_015_475b

    ld a, [$c0ee]
    cp b
    jr z, jr_015_475b

    inc c

jr_015_475b:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d

jr_015_4761:
    adc $00
    ld d, a
    inc b
    ld a, b
    cp $14
    jr nz, jr_015_4737

    ld a, c
    ld [$c8d8], a
    ret


Call_015_476f:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_4784:
    push de
    ld a, [de]
    or a
    jr z, jr_015_47a9

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_47a9

    ld a, [$c0ec]
    cp c
    jr z, jr_015_47a9

    ld a, [$c0ed]
    cp c
    jr z, jr_015_47a9

    ld a, [$c0ee]
    cp c
    jr z, jr_015_47a9

    ld [hl], c
    inc hl

jr_015_47a9:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_015_4784

    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5605
    rst $10
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_480b
    call Call_015_47dd
    call Call_015_4afb
    call Call_015_5dc0
    ld hl, $0225
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_47dd:
    ld de, $6928
    call Call_015_5d8f
    call Call_015_48e5
    ld de, $67b5
    call Call_015_5d8f
    ld de, $680f
    call Call_015_5d8f
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $4a03
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, wMenu_selection
    call Call_015_6080
    ret


Call_015_480b:
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9100
    call Call_015_4825
    call Call_015_4825
    call Call_015_4825

Call_015_4825:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_015_4846

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_015_5e2e
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


jr_015_4846:
    ld b, $20

jr_015_4848:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_015_4848

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


Call_015_4860:
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld b, a
    ld a, [wMenu_selection]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $9000
    call Call_015_5e2e
    pop af
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld hl, $9200
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


Call_015_48e5:
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld b, a
    ld a, [wMenu_selection]
    and $7f
    add b
    ld hl, $c0d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $cb0c
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    ld hl, $0161
    call Call_015_5d33
    ld a, $de
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $e0
    ld [hl-], a
    call Call_015_6135
    pop af
    push af
    ld hl, $cac1
    call Call_000_223b
    pop af
    ld b, a
    ld a, [hl]
    cp $02
    jr z, jr_015_4930

    call Call_015_4f14
    jr nz, jr_015_4930

    jr jr_015_493a

jr_015_4930:
    ld hl, $0169
    call Call_015_5d33
    ld a, $e3
    ld [hl], a
    ret


jr_015_493a:
    ld hl, $0169
    call Call_015_5d33
    ld a, $e0
    ld [hl], a
    ret


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    call Call_015_5391
    ret z

    ld de, $4a03
    ld hl, wMenu_selection
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_015_5efc
    pop af
    ld hl, wMenu_selection
    cp [hl]
    jr z, jr_015_4976

    call Call_015_4860
    call Call_015_48e5
    call Call_015_5dc0

jr_015_4976:
    pop af
    ld hl, wOPTN_and_Item_selection
    cp [hl]
    jr z, jr_015_4989

    call Call_015_480b
    call Call_015_4860
    call Call_015_48e5
    call Call_015_5dc0

jr_015_4989:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_49d4

    ld a, [$c0ee]
    cp $ff
    jr z, jr_015_499e

    ld a, $ff
    ld [$c0ee], a
    jr jr_015_49b8

jr_015_499e:
    ld a, [$c0ed]
    cp $ff
    jr z, jr_015_49ac

    ld a, $ff
    ld [$c0ed], a
    jr jr_015_49b8

jr_015_49ac:
    ld a, [$c0ec]
    cp $ff
    jr z, jr_015_49c2

    ld a, $ff
    ld [$c0ec], a

jr_015_49b8:
    call Call_015_4afb
    ld a, $00
    ld [$c8d2], a
    jr jr_015_4a02

jr_015_49c2:
    ld hl, $022d
    call Call_000_096d
    ld a, $24
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    jr jr_015_4a02

jr_015_49d4:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_4a02

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [wPLAN_selection], a
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld b, a
    ld a, [wMenu_selection]
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

Jump_015_4a02:
jr_015_4a02:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e7c
    call Call_015_4a27
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4a27:
    call Call_015_47dd
    ld de, $6849
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $4af5
    ld a, [wPLAN_selection]
    call Call_015_60a2
    ret


    call Call_015_5391
    ret z

    ld de, $4af5
    ld hl, wPLAN_selection
    ld b, $02
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_4a71

    call Call_015_5e7c
    call Call_015_4860
    call Call_015_480b
    call Call_015_47dd
    call Call_015_5dc0
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_015_4af4


jr_015_4a71:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_4af4

    ld a, $59
    call Call_000_1b2c
    ld a, [wPLAN_selection]
    cp $81
    jr z, jr_015_4a93

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4af4


jr_015_4a93:
    ld a, [$c0ec]
    cp $ff
    jr nz, jr_015_4aa2

    ld a, [$cac0]
    ld [$c0ec], a
    jr jr_015_4ad3

jr_015_4aa2:
    ld a, [$c0ed]
    cp $ff
    jr nz, jr_015_4ab1

    ld a, [$cac0]
    ld [$c0ed], a
    jr jr_015_4ad3

jr_015_4ab1:
    ld a, [$cac0]
    ld [$c0ee], a
    call Call_015_4afb
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ret


jr_015_4ad3:
    call Call_015_4afb
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    call Call_015_4730
    or a
    jr nz, jr_015_4af4

    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_4af4:
jr_015_4af4:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38

Call_015_4afb:
    ld de, $c0ec
    ld hl, $9040
    call Call_015_4825
    call Call_015_4825
    call Call_015_4825
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


    ld de, $2e1e
    ld hl, $9000
    call Call_000_1577
    ld de, $2e1f
    ld hl, $8800
    call Call_000_1577
    ld hl, $0225
    call Call_000_096d
    call Call_000_0609
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_480b
    call Call_015_47dd
    call Call_015_4a27
    call Call_015_4afb
    call Call_015_5dc0
    ld a, $05
    ld [$c8d2], a
    ret


    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld hl, $0227
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    call Call_015_4b80
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4b80:
    ld de, $6873
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $4be3
    ld a, [$c8dd]
    call Call_015_60a2
    ret


    call Call_015_5391
    ret z

    ld de, $4be3
    ld hl, $c8dd
    ld b, $02
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_4bb0

jr_015_4ba9:
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4be2


jr_015_4bb0:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_4be2

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dd]
    cp $81
    jr z, jr_015_4ba9

    call Call_015_4730
    call Call_015_476f
    call Call_015_4860
    call Call_015_480b
    call Call_015_47dd
    ld a, $01
    ld [$c8d2], a
    xor a
    ld [wMenu_selection], a
    ld [wOPTN_and_Item_selection], a
    jp Jump_015_4be2


Jump_015_4be2:
    ret


    rst $08
    ld bc, $020f
    rst $38
    rst $38
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld hl, $0228
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    call Call_015_4c12
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4c12:
    ld de, $6873
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $4c8e
    ld a, [$c8de]
    call Call_015_60a2
    ret


    call Call_015_5391
    ret z

    ld de, $4c8e
    ld hl, $c8de
    ld b, $02
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_4c5c

jr_015_4c3b:
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld hl, $0229
    call Call_000_096d
    ld a, $14
    ld [$cac0], a
    ld a, $00
    ld [$d665], a
    ld a, $16
    ld [$c8d2], a
    jp Jump_015_4c8d


jr_015_4c5c:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_4be2

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_015_4c3b

    call Call_015_4cc2
    call Call_015_4cec
    call Call_015_4860
    call Call_015_480b
    call Call_015_47dd
    xor a
    ld [wMenu_selection], a
    ld [wOPTN_and_Item_selection], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4c8d


Jump_015_4c8d:
    ret


    rst $08
    ld bc, $020f
    rst $38
    rst $38
    call Call_015_4cc2
    call Call_015_4cec
    ld hl, $c8d2
    inc [hl]
    ld a, [$c8d8]
    or a
    ret nz

    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld hl, $0229
    call Call_000_096d
    ld a, $14
    ld [$cac0], a
    ld a, $00
    ld [$d665], a
    ld a, $16
    ld [$c8d2], a
    ret


Call_015_4cc2:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_4cc9:
    push de
    ld a, [de]
    or a
    jr z, jr_015_4cdb

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_4cdb

    inc c

jr_015_4cdb:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_015_4cc9

    ld a, c
    ld [$c8d8], a
    ret


Call_015_4cec:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_4d01:
    push de
    ld a, [de]
    or a
    jr z, jr_015_4d14

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_4d14

    ld [hl], c
    inc hl

jr_015_4d14:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_015_4d01

    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5605
    rst $10
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_4d73
    call Call_015_4d45
    call Call_015_5dc0
    ld hl, $022a
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4d45:
    ld de, $6928
    call Call_015_5d8f
    call Call_015_48e5
    ld de, $67b5
    call Call_015_5d8f
    ld de, $680f
    call Call_015_5d8f
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $4e4d
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, wMenu_selection
    call Call_015_6080
    ret


Call_015_4d73:
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9100
    call Call_015_4d8d
    call Call_015_4d8d
    call Call_015_4d8d

Call_015_4d8d:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_015_4dae

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_015_5e2e
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


jr_015_4dae:
    ld b, $20

jr_015_4db0:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_015_4db0

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


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    call Call_015_5391
    ret z

    ld de, $4e4d
    ld hl, wMenu_selection
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_015_5efc
    pop af
    ld hl, wMenu_selection
    cp [hl]
    jr z, jr_015_4dfa

    call Call_015_4860
    call Call_015_48e5
    call Call_015_5dc0

jr_015_4dfa:
    pop af
    ld hl, wOPTN_and_Item_selection
    cp [hl]
    jr z, jr_015_4e0d

    call Call_015_4d73
    call Call_015_4860
    call Call_015_48e5
    call Call_015_5dc0

jr_015_4e0d:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_4e1b

    ld a, $0b
    ld [$c8d2], a
    jr jr_015_4e4c

jr_015_4e1b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_4e4c

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [wPLAN_selection], a
    ld [$c8dd], a
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld b, a
    ld a, [wMenu_selection]
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

Jump_015_4e4c:
jr_015_4e4c:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e7c
    call Call_015_4e71
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_4e71:
    call Call_015_4d45
    ld de, $6849
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $4f0e
    ld a, [wPLAN_selection]
    call Call_015_60a2
    ret


    call Call_015_5391
    ret z

    ld de, $4f0e
    ld hl, wPLAN_selection
    ld b, $02
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_4ebb

    call Call_015_5e7c
    call Call_015_4860
    call Call_015_4d73
    call Call_015_4d45
    call Call_015_5dc0
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_015_4f0d


jr_015_4ebb:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_4f0d

    ld a, $59
    call Call_000_1b2c
    ld a, [wPLAN_selection]
    cp $81
    jr z, jr_015_4edd

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_4f0d


jr_015_4edd:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld a, [$cac0]
    ld b, a
    call Call_015_4f14
    jr nz, jr_015_4f00

    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    jr nz, jr_015_4f0d

jr_015_4f00:
    ld hl, $025c
    call Call_000_096d
    ld a, $23
    ld [$c8d2], a
    jr jr_015_4f0d

Jump_015_4f0d:
jr_015_4f0d:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38

Call_015_4f14:
    ld hl, $a1c7
    call Call_000_20ee
    or a
    jr nz, jr_015_4f55

    ld hl, $a1f3
    call Call_000_20ee
    or a
    jr z, jr_015_4f55

    ld hl, $a1f4
    call Call_000_20ee
    cp b
    jr z, jr_015_4f57

    ld hl, $a1f3
    call Call_000_20ee
    cp $01
    jr z, jr_015_4f55

    ld hl, $a1f5
    call Call_000_20ee
    cp b
    jr z, jr_015_4f57

    ld hl, $a1f3
    call Call_000_20ee
    cp $02
    jr z, jr_015_4f55

    ld hl, $a1f6
    call Call_000_20ee
    cp b
    jr z, jr_015_4f57

jr_015_4f55:
    xor a
    ret


jr_015_4f57:
    ld a, $01
    or a
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


    ld de, $2e1e
    ld hl, $9000
    call Call_000_1577
    ld de, $2e1f
    ld hl, $8800
    call Call_000_1577
    ld hl, $022a
    call Call_000_096d
    call Call_000_0609
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_4d73
    call Call_015_4d45
    call Call_015_4e71
    call Call_015_4afb
    call Call_015_5dc0
    ld a, $12
    ld [$c8d2], a
    ret


    ld hl, $021f
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    call Call_015_5391
    ret z

    ld a, [$c86e]
    cp $01
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $95
    ld [$c871], a
    xor a
    ld [$c872], a
    ld a, [$cac0]
    ld [$c8ba], a
    ld hl, $cac1
    call Call_000_223b
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $d6fa
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld a, $00
    ld [$c873], a
    ld hl, $c8d2
    inc [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $022b
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e7c
    call Call_015_5037
    call Call_015_5dc0
    xor a
    ld [$c8dd], a
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_5037:
    call Call_015_4d45
    ld de, $6898
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $50db
    ld a, [$c8dd]
    call Call_015_60a2
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_5067

    ld hl, $022e
    call Call_000_096d
    ld a, $1e
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_50da


jr_015_5067:
    ld de, $50db
    ld hl, $c8dd
    ld b, $03
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_508c

jr_015_5079:
    ld hl, $022d
    call Call_000_096d
    ld a, $1e
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_50da


jr_015_508c:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_50da

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dd]
    cp $80
    jr z, jr_015_50c6

    cp $82
    jr z, jr_015_5079

    ld a, [$d6fa]
    or a
    jr z, jr_015_50b8

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_50da


jr_015_50b8:
    ld hl, $022f
    call Call_000_096d
    ld a, $19
    ld [$c8d2], a
    jp Jump_015_50da


jr_015_50c6:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_50da:
    ret


    inc l
    nop
    ld l, h
    nop
    xor h
    nop
    rst $38
    rst $38
    ld a, $15
    ld [$cac0], a
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


    ld de, $2e1e
    ld hl, $9000
    call Call_000_1577
    ld de, $2e1f
    ld hl, $8800
    call Call_000_1577
    ld hl, $022b
    call Call_000_096d
    call Call_000_0609
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_4d73
    call Call_015_4d45
    call Call_015_4afb
    call Call_015_5037
    call Call_015_5dc0
    ld a, $1a
    ld [$c8d2], a
    ret


    ld a, [$c86e]
    cp $fe
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
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


    ld hl, $021f
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_51d4

    ld hl, $022e
    call Call_000_096d
    ld a, $1e
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_5286


jr_015_51d4:
    ld a, [$c86e]
    cp $01
    ret nz

    ld a, [$c0ec]
    ld de, $c300
    call Call_015_5287
    ld a, [$c0ed]
    ld de, $c395
    call Call_015_5287
    ld a, [$c0ee]
    ld de, $c42a
    call Call_015_5287
    ld hl, $c300
    ld de, $cac1
    ld b, $95

jr_015_51fd:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_51fd

    ld a, [$c0ec]
    ld [$c8c4], a
    ld a, [$c0ed]
    ld [$c8c5], a
    ld a, [$c0ee]
    ld [$c8c6], a
    xor a
    ld [$c8c3], a
    ld a, [$c8c4]
    cp $ff
    jr z, jr_015_5243

    ld a, $01
    ld [$c8c3], a
    ld a, [$c8c5]
    cp $ff
    jr z, jr_015_5243

    ld a, $02
    ld [$c8c3], a
    ld a, [$c8c6]
    cp $ff
    jr z, jr_015_5243

    ld a, $03
    ld [$c8c3], a

jr_015_5243:
    ld hl, $ca42
    ld de, $cacd
    ld b, $08

jr_015_524b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_524b

    ld hl, $01bf
    ld a, l
    ld [$c871], a
    ld a, h
    ld [$c872], a
    ld hl, $cac1
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $cd15
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ld hl, $022c
    call Call_000_096d

Jump_015_5286:
    ret


Call_015_5287:
    and $7f
    cp $7f
    jr nz, jr_015_5290

    xor a
    ld [de], a
    ret


jr_015_5290:
    push de
    ld hl, $cac1
    call Call_000_223b
    pop de
    ld b, $95

jr_015_529a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_529a

    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld hl, $010b
    rst $10
    ld hl, $cac1
    ld de, $cac1
    ld b, $95
    ld a, [$c863]
    bit 1, a
    jr z, jr_015_52c1

    ld de, $cd15

jr_015_52c1:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_52c1

    ld a, $ff
    ld [$ca8e], a
    ld [$ca8f], a
    ld [$ca90], a
    ld b, $00
    ld a, [$cac1]
    or a
    jr z, jr_015_5307

    ld a, $00
    ld [$ca8e], a
    inc b
    ld a, [$cb56]
    or a
    jr z, jr_015_5307

    ld a, $01
    ld [$ca8f], a
    inc b
    ld a, [$cbeb]
    or a
    jr z, jr_015_5307

    ld a, $02
    ld [$ca90], a
    inc b

jr_015_5307:
    ld a, b
    ld [$ca8d], a
    ld a, [$c8ba]
    cp $14
    jr nz, jr_015_5317

    ld a, $ff
    ld [$c8ba], a

jr_015_5317:
    ld hl, wGameMode
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $00
    ld hl, $c88e
    inc [hl]
    ld a, $01
    ld [$c865], a
    ld a, $00
    ld [$c866], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86e], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e7c
    call Call_015_4860
    call Call_015_4d73
    call Call_015_4d45
    call Call_015_5dc0
    ld hl, $022a
    call Call_000_096d
    ld a, $10
    ld [$c8d2], a
    ret


    ld a, [$c86e]
    cp $fd
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $1f
    ld [$c8d2], a
    ld a, $01
    ld [$c8c7], a
    ret


Call_015_5391:
    ld a, [$c86e]
    cp $fd
    ret nz

    ld hl, $022e
    call Call_000_096d
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld a, $24
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    xor a
    ret


Call_015_53b2:
    ld a, [$c90e]
    cp $05
    ret nz

    ld hl, $caca
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_53e1

    ld b, $01

jr_015_53e1:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_015_53ee:
    ld a, [$c90e]
    cp $09
    ret nz

    ld hl, $cad6
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5420

    ld b, $01

jr_015_5420:
    ld a, b
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld hl, $cad7
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5455

    ld b, $01

jr_015_5455:
    ld a, b
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


    call Call_000_047e
    ld a, [$c8d2]
    cp $06
    jr z, jr_015_5471

    cp $0e
    jr z, jr_015_5471

    ret


jr_015_5471:
    call Call_015_5c60
    call Call_015_5c9c
    ld hl, $1702
    rst $10
    ret


    ld a, [$c8d2]
    rst $00
    or h
    ld d, h
    rra
    ld d, l
    cp a
    ld d, l
    ld e, c
    ld d, [hl]
    ld e, [hl]
    ld d, [hl]
    add a
    ld d, [hl]
    cpl
    ld d, a
    ld b, l
    ld d, a
    ld [hl], l
    ld d, a
    add l
    ld d, a
    jp Jump_000_2f57


    ld e, b
    ld a, [hl-]
    ld e, b
    ld h, e
    ld e, b
    jp hl


    ld e, b
    inc b
    ld e, c
    inc [hl]
    ld e, c
    ld e, h
    ld e, c
    sub b
    ld e, c
    jp nc, $e159

    ld e, c
    rrca

Call_015_54ab:
    ld e, d
    ld a, e
    ld e, d
    adc e
    ld e, d
    rst $18
    ld e, d
    ld a, [bc]
    ld e, h
    call Call_015_54bf
    call Call_015_54e9
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_54bf:
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_54c6:
    push de
    ld a, [de]
    or a
    jr z, jr_015_54d8

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_54d8

    inc c

jr_015_54d8:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_015_54c6

    ld a, c
    ld [$c8d8], a
    ret


Call_015_54e9:
    ld hl, $c0d8
    ld bc, $0014
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_015_54fe:
    push de
    ld a, [de]
    or a
    jr z, jr_015_5511

    ld a, e
    add $63
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_015_5511

    ld [hl], c
    inc hl

jr_015_5511:
    pop de
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    inc c
    dec b
    jr nz, jr_015_54fe

    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $5605
    rst $10
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_556a
    call Call_015_5542
    call Call_015_5dc0
    ld hl, $021c
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_5542:
    ld de, $6928
    call Call_015_5d8f
    call Call_015_48e5
    ld de, $67b5
    call Call_015_5d8f
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $564d
    ld b, $04
    ld a, [$c8d8]
    ld c, a
    ld hl, wMenu_selection
    call Call_015_6080
    ret


Call_015_556a:
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld de, $c0d8
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9100
    call Call_015_5584
    call Call_015_5584
    call Call_015_5584

Call_015_5584:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr z, jr_015_55a5

    ld a, [de]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_015_5e2e
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


jr_015_55a5:
    ld b, $20

jr_015_55a7:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_015_55a7

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


    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    call Call_015_5c3f
    ret z

    ld de, $564d
    ld hl, wMenu_selection
    ld a, [$c8d8]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_015_5efc
    pop af
    ld hl, wMenu_selection
    cp [hl]
    jr z, jr_015_55f1

    call Call_015_4860
    call Call_015_48e5
    call Call_015_5dc0

jr_015_55f1:
    pop af
    ld hl, wOPTN_and_Item_selection
    cp [hl]
    jr z, jr_015_5604

    call Call_015_556a
    call Call_015_4860
    call Call_015_48e5
    call Call_015_5dc0

jr_015_5604:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jp z, Jump_015_561e

    ld hl, $0221
    call Call_000_096d
    ld a, $19
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    jr jr_015_564c

Jump_015_561e:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_564c

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [wPLAN_selection], a
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld b, a
    ld a, [wMenu_selection]
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

Jump_015_564c:
jr_015_564c:
    ret


    ld b, l
    ld bc, $0061
    and c
    nop
    pop hl
    nop
    ld hl, $ff01
    rst $38
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e7c
    call Call_015_5671
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_5671:
    call Call_015_5542
    ld de, $6849
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $5729
    ld a, [wPLAN_selection]
    call Call_015_60a2
    ret


    call Call_015_5c3f
    ret z

    ld de, $5729
    ld hl, wPLAN_selection
    ld b, $02
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_56bb

    call Call_015_5e7c
    call Call_015_4860
    call Call_015_556a
    call Call_015_5542
    call Call_015_5dc0
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    ld hl, $c8d2
    dec [hl]
    jp Jump_015_5728


jr_015_56bb:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_5728

    ld a, $59
    call Call_000_1b2c
    ld a, [wPLAN_selection]
    cp $81
    jr z, jr_015_56dd

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_5728


jr_015_56dd:
    ld a, [$cac0]
    ld b, a
    call Call_015_4f14
    jr nz, jr_015_56f4

    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld a, [hl]
    cp $02
    jr nz, jr_015_5701

jr_015_56f4:
    ld hl, $025d
    call Call_000_096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_5728

jr_015_5701:
    ld a, [$cac0]
    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp $0a
    jr nc, jr_015_571c

    ld hl, $0230
    call Call_000_096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_5728

jr_015_571c:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_5728:
jr_015_5728:
    ret


    ld l, $00
    ld l, [hl]
    nop
    rst $38
    rst $38
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


    ld de, $2e1e
    ld hl, $9000
    call Call_000_1577
    ld de, $2e1f
    ld hl, $8800
    call Call_000_1577
    ld hl, $021c
    call Call_000_096d
    call Call_000_0609
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_556a
    call Call_015_5671
    call Call_015_5dc0
    ld a, $05
    ld [$c8d2], a
    ret


    ld hl, $021f
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    call Call_015_5c3f
    ret z

    ld a, [$c86e]
    cp $01
    ret nz

    ld hl, $c8d2
    inc [hl]
    ld a, $95
    ld [$c871], a
    xor a
    ld [$c872], a
    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $d6fa
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [$d705]
    and $01
    ld b, a
    ld a, [hl]
    and $01
    cp b
    jr nz, jr_015_57ef

    ld hl, $021e
    call Call_000_096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_582e

jr_015_57ef:
    ld a, [$cac0]
    ld d, a
    ld hl, $0107
    rst $10
    ld a, d
    ld c, $1b
    call Call_000_1dbe
    push hl
    ld d, $15
    ld hl, $0107
    rst $10
    ld a, d
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    add $7b
    ld l, a
    ld a, h
    adc $61
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_015_5825

    ld hl, $025e
    call Call_000_096d
    ld a, $10
    ld [$c8d2], a
    jr jr_015_582e

jr_015_5825:
    ld a, $00
    ld [$c873], a
    ld hl, $c8d2
    inc [hl]

jr_015_582e:
    ret


    ld hl, $0220
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_015_5e7c
    call Call_015_584d
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_584d:
    call Call_015_5542
    ld de, $68e0
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $58e1
    ld a, [$c8dd]
    call Call_015_60a2
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_587d

    ld hl, $0222
    call Call_000_096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58e0


jr_015_587d:
    ld de, $58e1
    ld hl, $c8dd
    ld b, $03
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_58a2

jr_015_588f:
    ld hl, $0221
    call Call_000_096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58e0


jr_015_58a2:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_58e0

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8dd]
    cp $80
    jr z, jr_015_58c8

    cp $82
    jr z, jr_015_588f

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_58e0


jr_015_58c8:
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]
    ld hl, $c8d2
    inc [hl]

Jump_015_58e0:
    ret


    inc l
    nop
    ld l, h
    nop
    xor h
    nop
    rst $38
    rst $38
    ld a, $15
    ld [$cac0], a
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


    ld de, $2e1e
    ld hl, $9000
    call Call_000_1577
    ld de, $2e1f
    ld hl, $8800
    call Call_000_1577
    ld hl, $0220
    call Call_000_096d
    call Call_000_0609
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_556a
    call Call_015_584d
    call Call_015_5dc0
    ld a, $0d
    ld [$c8d2], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $00
    ld [$c873], a
    ld hl, $021c
    call Call_000_096d
    call Call_000_0609
    call Call_015_5e7c
    call Call_015_4860
    call Call_015_556a
    call Call_015_5542
    call Call_015_5dc0
    ld a, $02
    ld [$c8d2], a
    ret


    ld a, [$c86e]
    cp $fe
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
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


    ld hl, $0223
    call Call_000_096d
    xor a
    ld [$c8de], a
    ld hl, $c8d2
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    call Call_015_5e7c
    call Call_015_59f9
    call Call_015_5dc0
    ld hl, $c8d2
    inc [hl]
    ret


Call_015_59f9:
    call Call_015_584d
    ld de, $6716
    call Call_015_5d8f
    call Call_015_5fe3
    ld de, $5a75
    ld a, [$c8de]
    call Call_015_60a2
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_5a29

    ld hl, $0222
    call Call_000_096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58e0


jr_015_5a29:
    ld de, $5a75
    ld hl, $c8de
    ld b, $02
    call Call_015_5f85
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_015_5a52

jr_015_5a3b:
    call Call_015_5e7c
    call Call_015_584d
    call Call_015_5dc0
    ld hl, $0220
    call Call_000_096d
    ld a, $0c
    ld [$c8d2], a
    jp Jump_015_5a74


jr_015_5a52:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_015_5a74

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_015_5a3b

    xor a
    ld [$c90d], a
    ld [$c90e], a
    ld hl, $c8d2
    inc [hl]
    jp Jump_015_5a74


Jump_015_5a74:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $021f
    call Call_000_096d
    ld hl, $c8d2
    inc [hl]
    ld a, $01
    ld [$c873], a
    ret


    ld a, [$c86e]
    cp $fe
    jr nz, jr_015_5aa5

    ld hl, $0222
    call Call_000_096d
    ld a, $11
    ld [$c8d2], a
    ld a, $fe
    ld [$c873], a
    jp Jump_015_58e0


jr_015_5aa5:
    ld a, [$c86e]
    cp $01
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $01
    ld [$c8c7], a
    ld hl, $c8d2
    inc [hl]
    ld hl, $0224
    call Call_000_096d
    ret


    ld a, [$c86e]
    cp $f0
    ret nz

    xor a
    ld [$c8c7], a
    ld hl, wGameMode
    ld a, $01
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
    xor a
    ld [$c86e], a
    xor a
    ld [$c873], a
    xor a
    ld [$c86d], a
    ld a, $04
    call Call_000_1688
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    ld b, a
    ld a, [wMenu_selection]
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
    ld hl, $cac1
    call Call_000_223b
    ld de, $d665
    ld b, $95

jr_015_5b41:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_5b41

    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac1
    call Call_000_223b
    ld [hl], $00
    ld a, $15
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld hl, $0105
    rst $10
    ld hl, $1600
    rst $10
    xor a
    ld [$c86c], a
    di
    ld hl, $ca94
    ld de, $a1ce
    ld b, $20
    ld a, $0a
    ld [$0100], a

jr_015_5b93:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_5b93

    ld a, $00
    ld [$0100], a
    call Call_000_2197
    ei
    ld a, $14
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    ld a, $15
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c190
    call Call_000_0c80
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld l, [hl]
    ld h, $05
    ld de, $c1a0
    call Call_000_097a
    ld a, $04
    ld [$c8ee], a
    xor a
    ld [$c8ea], a
    xor a
    ld [$d8d7], a
    xor a
    ld [wGameState], a
    ld a, $08
    ld [$c968], a
    ld [$c96a], a
    ld a, $00
    ld [$c969], a
    ld [$c96b], a
    ld a, $00
    ld [$ca8d], a
    ld a, $ff
    ld [$ca8e], a
    ld a, $ff
    ld [$ca8f], a
    ld a, $ff
    ld [$ca90], a
    ret


    ld a, [$c86e]
    cp $fd
    ret nz

    ld a, $64
    ld [$c871], a
    xor a
    ld [$c872], a
    ld hl, $c300
    ld a, l
    ld [$c874], a
    ld a, h
    ld [$c875], a
    ld hl, $c300
    ld a, l
    ld [$c86f], a
    ld a, h
    ld [$c870], a
    ld a, $ff
    ld [$c873], a
    ld a, $12
    ld [$c8d2], a
    ld a, $01
    ld [$c8c7], a
    ret


Call_015_5c3f:
    ld a, [$c86e]
    cp $fd
    ret nz

    ld hl, $0222
    call Call_000_096d
    ld de, $2e07
    call Call_015_5d8f
    call Call_015_5dc0
    ld a, $19
    ld [$c8d2], a
    ld a, $fd
    ld [$c873], a
    xor a
    ret


Call_015_5c60:
    ld a, [$c90e]
    cp $05
    ret nz

    ld hl, $caca
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5c8f

    ld b, $01

jr_015_5c8f:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_015_5c9c:
    ld a, [$c90e]
    cp $09
    ret nz

    ld hl, $cad6
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $30
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5cce

    ld b, $01

jr_015_5cce:
    ld a, b
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ld hl, $cad7
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl]
    push af
    ld hl, $ffc3
    ld a, $90
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop af
    add $10
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_015_5d03

    ld b, $01

jr_015_5d03:
    ld a, b
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10
    ret


Call_015_5d10:
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


Call_015_5d1f:
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


Call_015_5d33:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_015_5d3c:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_015_5d1f
    ld a, b
    and $1f
    jr z, jr_015_5d51

    ld b, a

jr_015_5d4b:
    call Call_015_5d10
    dec b
    jr nz, jr_015_5d4b

jr_015_5d51:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_015_5d3c
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_015_5d62:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_015_5d87

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
    jr jr_015_5d62

jr_015_5d87:
    call Write_gfx_tile
    call Call_015_5d10
    jr jr_015_5d62

Call_015_5d8f:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_015_5d33
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_015_5d9e:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_015_5dbd

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
    jr jr_015_5d9e

jr_015_5dbd:
    ld [hl+], a
    jr jr_015_5d9e

Call_015_5dc0:
    ld a, [$c8d6]
    ld l, a
    ld a, [$c8d7]
    ld h, a
    ld de, $c500
    ld c, $12

jr_015_5dcd:
    ld b, $20
    push hl

jr_015_5dd0:
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
    jr nz, jr_015_5dd0

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
    jr nz, jr_015_5dcd

    ret


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


Call_015_5e2e:
Jump_015_5e2e:
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


Call_015_5e7c:
    ld hl, $c500
    ld bc, $0240

jr_015_5e82:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_015_5e82

    ret


Call_015_5e8b:
    ld hl, $9800
    ld bc, $0400

jr_015_5e91:
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    dec bc
    ld a, b
    or c
    jr nz, jr_015_5e91

    ret


    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c8d6], a
    ld a, h
    ld [$c8d7], a
    call Call_015_5e7c
    call Call_015_5e8b
    ld de, $2e0d
    ld hl, $9000
    call Call_000_1577
    call Call_015_5fe3
    ld hl, $c8d2
    inc [hl]
    ret


    call Call_015_5e7c
    call Call_015_5dc0
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    call Call_000_2518
    call Call_000_25f1
    ld hl, wGameState
    res 1, [hl]
    xor a
    ld [$c8d2], a
    ret


Call_015_5efc:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_015_5f63

    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_015_5f29

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
    jr c, jr_015_5f47

    ld a, c
    dec a
    jr jr_015_5f47

jr_015_5f29:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_015_5f63

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
    jr c, jr_015_5f47

    ld a, $00

jr_015_5f47:
    ld [hl-], a
    dec c
    cp c
    jr nz, jr_015_5fab

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
    jr z, jr_015_5fab

    dec a
    cp [hl]
    jr nc, jr_015_5fab

    ld [hl], a
    jr jr_015_5fab

Jump_015_5f63:
jr_015_5f63:
    push bc
    push de
    push hl
    call Call_015_6047
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
    jr nz, jr_015_5f85

    ld a, [$c8e1]
    inc a
    ld b, a

Call_015_5f85:
jr_015_5f85:
    res 7, [hl]
    ld a, b
    cp $01
    jr z, jr_015_5fb3

    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_015_5f9c

    ld a, [hl]
    dec a
    cp b
    jr c, jr_015_5faa

    dec b
    ld a, b
    jr jr_015_5faa

jr_015_5f9c:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_015_5fb3

    ld a, [hl]
    inc a
    cp b
    jr c, jr_015_5faa

    ld a, $00

jr_015_5faa:
    ld [hl], a

jr_015_5fab:
    xor a
    ld [$c8d9], a
    push hl
    push de
    pop de
    pop hl

jr_015_5fb3:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_015_5fbc

    set 7, [hl]

jr_015_5fbc:
    ld a, [hl]
    call Call_015_5fe8
    ret


    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_015_5fd3

    ld a, [hl]
    dec a
    cp b
    jr c, jr_015_5faa

    dec b
    ld a, b
    jr jr_015_5faa

jr_015_5fd3:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_015_5fb3

    ld a, [hl]
    inc a
    cp b
    jr c, jr_015_5faa

    ld a, $00
    jr jr_015_5faa

Call_015_5fe3:
    xor a
    ld [$c8d9], a
    ret


Call_015_5fe8:
    ld c, a
    bit 7, a
    jr nz, jr_015_5ffd

    ld a, [$c8d9]
    and $0f
    push af
    ld a, [$c8d9]
    inc a
    ld [$c8d9], a
    pop af
    ld a, c
    ret nz

jr_015_5ffd:
    ld c, a
    ld b, $00

jr_015_6000:
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
    call Call_015_5d3c
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_015_6030

    ld a, $e9
    bit 7, c
    jr nz, jr_015_6030

    ld a, [$c8d9]
    bit 4, a
    ld a, $e0
    jr nz, jr_015_6030

    ld a, $e8

jr_015_6030:
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
    jr jr_015_6000

Call_015_6047:
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
    call Call_015_5d3c
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


Call_015_6080:
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
    jr nc, jr_015_6099

    ld a, $e7

jr_015_6099:
    ld [hl-], a
    pop bc
    jr nc, jr_015_60a1

    ld a, [bc]
    add $f1
    ld [hl], a

jr_015_60a1:
    pop af

Call_015_60a2:
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
    call Call_015_5d3c
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_015_60cd

    ld a, [$c8d9]
    bit 4, a
    ld a, $e0
    jr nz, jr_015_60cd

    ld a, $e8

jr_015_60cd:
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


Call_015_60df:
    ld a, $0a
    ld [$0100], a
    ld a, [$a002]
    or a
    jr z, jr_015_610a

    ld hl, $a002
    ld bc, $1ffe
    call Call_000_210e
    ld a, $0a
    ld [$0100], a
    ld a, [$a000]
    ld l, a
    ld a, [$a001]
    ld h, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    jr z, jr_015_6127

jr_015_610a:
    ld hl, $a002
    ld bc, $1ffe
    push hl
    push bc
    call Call_015_612d
    pop bc
    pop hl
    call Call_000_210e
    ld a, $0a
    ld [$0100], a
    ld a, e
    ld [$a000], a
    ld a, d
    ld [$a001], a

jr_015_6127:
    ld a, $00
    ld [$0100], a
    ret


Call_015_612d:
jr_015_612d:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_015_612d

    ret


Call_015_6135:
    ld de, $000a
    push bc
    call Call_015_6151
    pop bc
    or a
    jr z, jr_015_614c

    ld de, $000a
    call Call_015_6151
    call Call_015_6166
    call Call_015_616c

jr_015_614c:
    ld a, c
    call Call_015_6166
    ret


Call_015_6151:
    push hl
    ld h, $ff

jr_015_6154:
    inc h
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    jr nc, jr_015_6154

    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    ld a, h
    pop hl
    ret


Call_015_6166:
    add $f0
    call Write_gfx_tile
    ret


Call_015_616c:
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


    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0000
    ld bc, $0000
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    nop
    nop
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
    ei
    ret c

    cp $e0
    ld sp, $3a28
    ldh [$2a], a
    inc h
    jr nc, @+$2a

    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
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
    ei
    ret c

    cp $e0
    ld h, $32
    ld sp, $2c37
    ld sp, $2838
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld sp, $3a28
    ldh [$2a], a
    inc h
    jr nc, @+$2a

    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    add hl, sp
    ld [hl], $e0
    jr nc, jr_015_64f9

    daa
    jr z, @-$1e

    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    dec h
    dec [hl]
    jr z, jr_015_6508

    daa
    inc l
    ld sp, $e02a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, $00
    ld a, [$efef]

jr_015_64f9:
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    nop
    ld bc, $0302
    ldh [rIE], a
    ret c

jr_015_6508:
    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee

jr_015_6518:
    db $fd
    reti


    and b
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $24
    dec h
    ld h, $27
    jr z, jr_015_6518

    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ldh [$e0], a
    sub c
    sub d
    sub e
    sub h
    sub l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ldh [rSCX], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ldh [$e0], a
    ld c, c
    ld c, e
    ld c, l
    adc l
    adc [hl]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $2e
    cpl
    jr nc, jr_015_65bb

    ld [hl-], a
    ldh [rOBP0], a
    ldh [rWY], a
    ldh [$4c], a
    ldh [$e0], a
    ld h, b
    ld l, d
    ld h, b

jr_015_6596:
    ld [hl], b
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $33
    inc [hl]
    dec [hl]
    scf
    jr c, jr_015_6596

    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_015_65bb:
    ldh [$e0], a
    ld b, a
    sbc b
    ld d, b
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ldh [rHDMA3], a
    ld d, h
    ld d, l
    ld [hl], $9c
    ldh [$e0], a
    jr z, jr_015_663c

    ld d, b
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    and b
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $2e
    cpl
    jr nc, jr_015_6665

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

jr_015_663c:
    ld a, [hl-]
    ldh [rNR51], a
    ld h, $27
    jr z, @+$01

    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $3b
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_015_6665:
    ld b, [hl]
    ld b, a
    ldh [$29], a
    ld a, [hl+]
    dec hl
    inc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $48
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ldh [$2d], a
    inc h
    ld l, c
    ld l, d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $55
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ldh [$2f], a
    ld l, $30
    jr c, @+$01

    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $62
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld [hl-], a
    dec sp
    ld sp, $ffe0
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


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
    ld sp, $e032
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    jr nz, @+$03

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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $30
    inc h
    ld [hl], $37
    jr z, jr_015_678d

    db $e4
    nop
    ld bc, $0302
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $da
    inc b
    dec b
    ld b, $07
    ldh [$db], a
    ld [$0a09], sp
    dec bc
    ldh [$dc], a
    inc c
    dec c
    ld c, $0f
    rst $38
    ret c

jr_015_678d:
    cp $e0
    ld h, l
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ld h, l
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    ld h, l
    db $e4
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
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
    ld a, [hl-]
    dec hl
    ld [hl-], a
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
    db $10
    ld de, $1312
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc d
    dec d
    ld d, $17
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr jr_015_680c

    ld a, [de]
    dec de
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc e
    dec e
    ld e, $1f
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee

jr_015_680c:
    xor $fd
    reti


    call $fa00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $f1
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

    cp $f2
    ld [$0a09], sp
    dec bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $f3
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
    inc l
    ld sp, $3229
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl-], a
    ld l, $e0
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    xor [hl]
    ld bc, $effa
    rst $28
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
    ld sp, $e032
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    dec bc
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28

jr_015_68a0:
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add hl, hl
    inc l
    ld a, [hl+]
    dec hl
    scf
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    inc sp
    dec [hl]
    inc l
    dec a
    jr z, jr_015_68a0

    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, @+$3d

    inc l
    scf
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    dec bc
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    dec h
    dec [hl]
    jr z, jr_015_691a

    daa
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, $2b
    jr z, jr_015_692c

    ld l, $e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    jr z, jr_015_6953

    inc l
    scf

jr_015_691a:
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa

jr_015_692c:
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
    ldh [$e0], a
    nop
    ld bc, $0302
    jr nz, @-$1e

    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ccf
    ld sp, $8f3f

jr_015_6952:
    rst $38

jr_015_6953:
    adc h
    db $fc
    adc h
    db $fc
    adc a
    rst $38
    adc h
    db $fc
    adc h
    db $fc
    adc a
    adc a
    rst $38
    rst $38
    ei
    rst $38
    inc b
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    nop
    inc b
    rst $38
    adc b
    rst $18
    rst $38
    jr nz, jr_015_6952

    ret nz

    ret nz

    rst $38
    rst $38
    inc b
    nop
    inc b
    rst $38
    adc [hl]
    pop af
    rst $38
    ld sp, $313f
    ccf
    pop af
    rst $38
    ld sp, $313f
    ccf
    pop af
    pop af
    dec b
    rst $38
    sbc c
    adc b
    ei
    adc h
    adc b
    ei
    adc a
    rst $38
    adc h
    db $fc
    adc h
    db $fc
    adc a
    rst $38
    adc h
    db $fc
    adc h
    db $fc
    adc a
    rst $38
    adc h
    db $fc
    adc h
    db $fc
    adc a
    adc a
    rlca
    rst $38
    add h
    nop
    rst $38
    nop
    nop
    inc bc
    rst $38
    adc l
    nop
    nop
    inc bc
    inc bc
    rst $38
    cp $03
    ld [bc], a
    ld [bc], a
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    inc bc
    add hl, bc
    rst $38
    add h
    nop
    rst $38
    nop
    nop
    inc bc
    rst $38
    adc l
    nop
    nop
    ret nz

    ret nz

    rst $38
    ld a, a
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld a, a
    rst $38
    ld b, b
    inc bc
    ret nz

    add hl, bc
    rst $38
    sbc c
    ld de, $31df
    ld de, $f1df
    rst $38
    ld sp, $313f
    ccf
    pop af
    rst $38
    ld sp, $313f
    ccf
    pop af
    rst $38
    ld sp, $313f
    ccf
    pop af
    pop af
    inc b
    rst $38
    stop
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    add b
    inc b
    sbc a
    stop
    adc h
    rst $38
    inc bc
    cp $03
    cp $03
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    inc b
    rst $38
    stop
    adc h
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    inc b
    rst $38
    stop
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $01ff
    ld bc, $f904
    ld c, $9f
    adc [hl]
    cp a
    cp a
    sbc a
    sbc a
    rst $18
    rst $18
    sbc a
    sbc a
    cp a
    cp a
    rst $18
    rst $18
    cp a
    cp a
    ld b, h
    rst $38
    ld c, $f9
    adc [hl]
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ei
    ei
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    ei
    ei
    db $fd
    db $fd
    inc b
    rst $38
    sbc [hl]
    inc bc
    ld bc, $0207
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    dec c
    ld b, $7d
    ld c, $f3
    ld a, h
    rst $38
    add b
    di
    ld a, h
    ld a, l
    ld c, $0d
    ld b, $07
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0008
    sub c
    inc e
    nop
    rra
    inc c
    rra
    dec bc
    ld c, $05
    dec c
    ld b, $0e
    dec b
    rra
    dec bc
    rra
    inc c
    inc e
    ld de, $9300
    inc e
    nop
    ccf
    inc e
    dec sp
    rla
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    dec c
    ld b, $0f
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    nop
    db $10
    rst $38
    ld de, $b000
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    nop
    rrca
    rst $38
    sbc b
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$ffff], sp
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp h
    rst $08
    cp l
    adc $bd
    adc $ff
    rst $38
    ld bc, $ffff
    ld bc, $f1ff
    rst $30
    ld sp, hl
    scf
    ld sp, hl
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    ld bc, $ffff
    ld bc, $31ff
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    cp a
    rst $08
    rst $38
    rst $38
    ld bc, $ffff
    ld bc, $f1ff
    rst $30
    ld sp, hl
    scf
    ld sp, hl
    rst $30
    add hl, sp
    rst $30
    ret nc

    ld sp, hl
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    cp a
    jp $39f7


    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $20
    add hl, de
    rst $38
    ld bc, $ffff
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    ld de, $90ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    add hl, bc
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
    add b
    rst $38
    add b
    rst $38
    add b
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp l
    adc $bd
    adc $bd
    adc $bf
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    rst $38
    rst $38
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld bc, $ffff
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $20
    add hl, de
    rst $38
    ld bc, $ffff
    cp a
    rst $08
    cp h
    rst $08
    cp l
    adc $bf
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    rst $38
    rst $38
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld bc, $f1ff
    and [hl]
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld bc, $ffff
    cp a
    jp $c1be


    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    rst $38
    rst $38
    rst $30
    ld sp, hl
    scf
    ld sp, hl
    rst $30
    add hl, sp
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld bc, $ff04
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    call z, $cebd

jr_015_6c94:
    cp l
    adc $bd
    adc $bf
    rst $08
    rst $38
    rst $38
    ld bc, $ffff
    ld bc, $31ff
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    ld sp, hl
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp h
    rst $08
    cp l
    adc $bf
    rst $08
    rst $38
    rst $38
    ld bc, $ffff
    ld bc, $f1ff
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld bc, $f1ff
    rst $38
    jr c, jr_015_6c94

    ld a, l
    sub d
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sub d
    rst $38
    rst $00
    ld a, l
    rst $38
    jr c, @+$01

    rst $28
    jr @+$01

    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    jr @+$01

    rst $38
    rst $28
    rst $38
    rst $30
    ld c, l
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    ret


    rst $38
    ret


    rst $38
    ld c, l
    rst $38
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    db $fc
    inc de
    ldh a, [$2c]
    db $e3
    dec sp
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $38
    adc c
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
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
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc

jr_015_6d25:
    rst $00
    db $f4
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    db $e3
    dec sp
    ldh [$2f], a
    ldh a, [rNR10]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $20
    inc [hl]
    rst $20
    inc [hl]
    rst $20
    call nc, $f407
    rrca
    ld [$f0ff], sp
    rst $38
    nop
    rst $38
    nop
    push hl
    adc e
    and l
    db $d3
    and l
    db $d3
    ret


    and l
    pop de
    adc e
    and c
    db $d3
    and c
    call $85e9
    jr c, jr_015_6d25

    db $10
    ldh a, [rP1]
    rst $38
    ld bc, $02be
    cp l
    ld [de], a
    dec l
    ld a, [hl+]
    sub l
    ld b, $39
    inc c
    dec l
    nop
    ld [de], a
    adc h
    ld [hl], e
    ld [$00f7], sp
    rst $38
    ld b, e
    cp h
    dec bc
    db $f4
    ld d, $e9
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    and d
    cp a
    ret nz

    rst $38
    rst $38
    rst $30
    ld sp, hl
    scf
    ld sp, hl
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    add hl, sp
    rst $20
    add hl, de
    rst $38
    ld bc, $ffff
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    inc b
    rst $38
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    rst $08
    cp a
    rst $08
    cp b
    rst $00
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $19ff
    rst $20
    inc [hl]
    jp $817a


    db $fd
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ret c

    rlca
    db $f4
    db $e3
    ld a, [$1ef3]
    ld sp, hl
    dec c
    ld sp, hl
    rrca
    rst $20
    rst $38
    rst $20
    inc l
    di
    ld e, $f1
    rla
    ld hl, sp+$0b
    cp $06
    rst $38
    ld bc, $00ff
    ld sp, hl
    rrca
    ld sp, hl
    dec c
    di
    ld e, $e3
    ld a, [$f407]
    rra
    ret c

    rst $38
    ldh [rIE], a
    nop
    jr c, jr_015_6e45

    ld [hl], h
    ld c, h
    ld [$ea96], a
    sub [hl]
    ld [$ea96], a
    sub [hl]
    ld [hl], h
    ld c, h
    jr c, @+$3a

    rst $38
    ld b, d
    cp l
    rst $20
    db $db
    ld a, [hl]
    rst $20
    inc a
    rst $20
    inc a
    db $db
    ld a, [hl]
    cp l
    rst $20
    rst $38
    ld b, d
    rst $38
    cp $83
    cp $9f
    db $fc
    add e
    ld a, [$7ef3]
    di
    ld a, [hl]
    add e
    ld a, [$fcff]
    rst $38
    sbc l
    ld a, h
    add e
    cp d
    sub e
    cp $93
    cp $93

jr_015_6e45:
    cp $93
    cp $83
    cp d
    rst $38
    ld a, h
    rst $38
    rst $38
    sbc c
    ld h, [hl]
    rst $20
    ld [$2610], sp
    adc b
    ld d, c
    rlca
    ret z

    nop

jr_015_6e59:
    scf
    inc b
    rst $38
    rst $38
    db $fd
    add e

jr_015_6e5f:
    push bc
    add c
    push bc
    sbc c
    call $fd91
    add c
    add c
    pop bc
    rst $38
    rst $38
    ld e, $a1
    inc a
    jp Jump_015_413e


    cp e
    add a
    or a
    rst $08
    cpl
    ld e, [hl]
    inc a
    ld e, a
    dec de
    rst $38
    ld c, a
    or b
    rst $38
    nop
    ei
    db $fc
    db $fd
    cp $7e
    add a
    ld e, a
    db $e3
    cp $81
    xor a
    ld d, b
    rlca
    add a
    nop
    dec bc
    add a
    ld a, b
    inc c
    di
    ld [$20f7], sp
    rst $18
    dec b
    ld a, [$fc03]
    nop
    db $ed
    inc bc
    rst $00
    add hl, hl
    rst $10
    sub d
    ld l, l
    daa
    ret c

    ld d, a
    xor b
    rst $08
    jr nc, jr_015_6e59

    ld d, c
    inc e
    ld e, a
    nop
    rst $28
    db $eb
    sub a
    rst $38
    adc a
    cp $1d

jr_015_6eb5:
    rst $30
    jr c, @+$01

    ld h, [hl]
    ld a, a
    adc h
    jr nz, jr_015_6e5f

    nop
    add c
    ld l, e
    sub a
    or [hl]
    rst $08
    sbc $ed
    cp $61
    cp a
    ld [hl], b
    rst $38
    db $76
    rlca
    rst $00
    nop
    add h
    sub c
    ld l, [hl]
    nop
    rst $38
    ld b, e
    cp h
    swap a
    or a
    ld c, a
    ld c, [hl]
    cp a
    db $10
    rst $38
    sbc d
    nop
    or c
    ld h, d
    sbc l
    push de
    dec hl
    rst $00
    dec sp
    rst $18
    rst $20
    xor $ff
    rst $38
    ld a, h
    nop
    rst $38
    ld a, $be
    rst $38
    rst $38
    db $ed
    di
    cp a
    ret nz

    rst $28
    db $10
    cp a
    ld h, b
    ld a, a
    ret nz

    jr nc, jr_015_6eb5

    ld bc, $bfee
    pop bc
    rst $38
    pop hl
    ld a, [hl]
    pop af
    or a
    ld a, b
    db $dd
    dec sp
    ld [$1e1d], a
    rst $38
    daa
    db $db
    ccf
    add $3b
    push bc
    ccf
    jp $c03f


    ccf
    ret nz

    ccf
    ld b, c
    rst $38
    and b
    rst $18
    ld h, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    sub b
    rst $08
    dec a
    db $fd
    ld [bc], a
    rst $38
    inc b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld h, e
    ld e, e
    rst $20
    cp [hl]
    rst $00
    push af
    ld c, $ff
    inc c
    db $ed
    rra
    ei
    rra
    db $dd
    ld a, $b5
    adc $7e
    add a
    ei
    rlca
    ei
    rlca
    rst $38
    jp $c3bf


    ld a, l
    and e
    rst $38
    ret nz

    rst $38
    ld a, e
    rst $20
    rst $38
    di
    db $dd
    db $e3
    di
    cp l
    ld a, [hl]
    jp hl


    sbc a
    ldh a, [$7f]
    ldh [$f7], a
    ret z

    cp a
    ld a, a
    ld l, e
    rst $30
    db $dd
    db $e3
    cp a
    pop de
    sub $e9
    ld l, a
    ret c

    rst $18
    or b
    cp e
    ld h, h
    cp a
    ld a, [hl]
    db $76
    rst $38
    rst $38
    db $e3
    db $dd
    di
    rst $38
    pop hl
    ld l, [hl]
    reti


    ld a, a
    or b
    rst $30
    ld l, h
    ld c, a
    or b
    db $fd
    inc bc
    rst $30
    rrca
    rst $28
    ld e, $df
    inc a
    ei
    dec a
    cp $fb
    ld [hl], a
    cp $ff
    inc bc
    or $f9
    ld e, a
    cp b
    rst $38
    inc c
    rst $30
    adc [hl]
    ld a, l
    add d
    rst $28
    db $10
    cp $a1
    ld_long a, $ff1d
    rra
    rst $30
    rrca
    rst $38
    nop
    rst $38
    inc bc
    or a
    ld a, c

jr_015_6fb9:
    ld a, e
    db $fc
    rst $08
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

jr_015_6fc1:
    cp a
    ret nz

    rst $30
    jr c, jr_015_6fc1

    dec e
    ld a, a
    add c
    db $ed
    rra
    cp [hl]
    ld a, a
    rst $38
    inc e
    db $db
    ccf
    rst $30
    inc a
    cp d
    ld a, a
    db $fd
    ld a, [hl]
    rst $18
    ld l, h
    rst $30
    jr jr_015_6fb9

    rst $38
    ld a, $79
    cp a
    rst $38
    dec de
    rst $38
    ld a, $fd
    dec sp
    and a
    ld a, [hl]
    rst $38
    ld l, l
    xor l
    ld e, e
    di
    ld e, $ff
    add b
    xor a
    ld d, b
    rst $18
    or b
    cp a
    ld h, b
    rst $30
    ret z

    rst $38
    sub b
    cp a
    ld h, c
    ld a, a
    jp Jump_000_1cef


    rst $38
    inc c
    rst $38
    inc c
    push af
    ld c, $ff
    ld b, $ff
    ld b, $bf
    add $fb
    add $3d
    ld b, e
    ccf
    jp $c73b


    ld a, $47
    cp [hl]
    rst $00
    cp a
    add a
    dec sp
    ld b, a
    cp a
    jp Jump_000_30df


    ld d, a
    cp b
    sbc a
    ld a, b
    ccf
    ret c

    sbc [hl]
    ld a, a
    cpl
    rst $18
    ld e, [hl]
    cp a
    ld sp, hl
    cp $ff
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
    ld bc, $3df3
    or $3b
    db $db
    inc a
    db $ed
    rra
    rst $30
    rrca
    db $fc
    inc bc
    db $fd
    inc bc
    cp a
    rst $00
    cp [hl]
    pop bc
    db $fd
    ld b, e
    or a
    rst $08
    ld l, a
    sbc a
    cp $ff
    rst $20
    rst $38
    db $db
    and $89
    db $dd
    ld [c], a
    rst $18
    jr nc, @+$01

    ld h, b
    cp e
    call z, $039e
    rst $38
    rst $38
    ld a, c
    rst $38
    rst $18
    inc a
    cp e
    ld a, h
    ld l, a
    ret c

    rst $30
    jr c, jr_015_70e3

    ld hl, sp+$3e
    rst $38
    rst $28
    rst $38
    call $ffff
    inc e
    or $0f
    xor a
    ld e, b
    sbc $31
    or c
    ld a, a
    ccf
    rst $38
    rst $38
    cp $db
    db $fc
    cp a
    ld a, b
    push de
    ld a, $3f
    rst $00
    rst $30
    rrca
    ld a, a
    adc a
    rst $28
    sbc a
    cp a
    rst $08
    rst $28
    rst $18
    ret c

    rst $20
    ld e, a
    ldh [$df], a
    ld [c], a
    rst $38
    ld [c], a
    db $fc
    db $e3
    rst $38
    pop hl
    db $dd
    db $e3
    rst $18
    pop hl
    ld e, $e1
    rst $38
    nop
    cp l
    jp Jump_015_473f


    ld a, $cf
    scf
    ret c

    rra
    ldh [$39], a
    add $3b
    rst $00
    ccf
    jp $ffef


    cp e
    rst $00
    ld l, a
    ldh a, [rPCM34]
    ld hl, sp-$25
    inc a
    rst $10
    ld l, $7d
    add e
    sbc $e1
    ld a, a
    add e
    db $db
    rst $20
    or a
    ld a, a
    rst $38
    rrca
    db $fd
    rra
    rst $18
    inc a
    db $fc
    dec sp
    jr nc, @+$01

    db $fd
    jp $c0bf


jr_015_70e3:
    ld a, a
    add b
    ld a, a
    add b
    cp a
    sbc l
    ret nz

    rst $38
    ret nz

    rst $18
    ld h, b
    ld a, a
    ldh [$7f], a
    and b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    rlca
    rst $30
    rrca
    xor $1f
    db $fd
    ld e, $ef
    jr @+$01

    nop
    rst $38
    nop
    inc b
    rst $38
    rst $38
    adc l
    di
    pop de
    ld l, $80
    ld a, a
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    rst $30
    ld hl, sp-$03
    cp $3f
    rst $38
    rst $20
    rra
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    rrca
    rst $18
    ccf
    db $fd
    cp $cb
    db $f4
    ei
    rlca
    rst $28
    rra
    db $dd
    ld a, $bb
    ld a, h
    cp $f9
    db $fd
    ld a, [c]
    ld l, e
    push af
    db $fd
    inc bc
    ei
    db $fc
    ld b, a
    cp [hl]
    ld [$17f7], sp
    add sp, -$49
    ld a, b
    rst $38
    db $fc

jr_015_714b:
    or c
    adc $7f
    add b
    scf
    rst $08
    dec a
    rst $08
    ccf
    rst $18
    ld [hl], $fb
    dec h
    cp a
    ld c, e
    db $fd
    ld c, $b3
    ccf
    ld b, a
    ld a, e
    add a
    rst $38
    add c
    ld a, a
    and b
    rst $08
    ld a, b
    sbc a
    ldh a, [rIE]
    and b
    cp a
    ld b, b
    rst $18
    ldh [rIE], a
    pop bc
    rst $18
    ldh [$ef], a
    ldh a, [$7f]
    ldh a, [rIE]
    ld a, b
    rst $30
    jr c, jr_015_714b

    jr nc, @+$01

    nop
    ret nc

    rst $28
    db $fc
    ei
    cp a
    ld a, a
    rst $20
    rra
    db $fd
    rst $38
    inc bc
    rst $38
    nop
    ei
    rlca
    rst $30
    rrca
    ld e, a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $03fd
    cp $01
    rst $38
    nop
    rst $28
    ldh a, [$3e]
    pop bc
    ccf
    ld b, b
    cp a
    ret nz

    cp a
    add b
    cp a
    ret nz

    ccf
    ld b, b
    ccf
    pop bc
    ccf
    ld b, e
    rst $30
    ld hl, sp-$11
    inc e
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    ld a, e
    db $fc
    rst $38
    rst $38
    rst $08
    rst $38
    ld a, h
    ei
    db $dd
    cp $ec
    sbc a
    rst $30
    ld c, $fe
    rlca
    rst $38
    rlca
    ei
    rlca
    cp a
    jp Jump_000_20ff


    scf
    ld hl, sp-$65
    ld a, h
    ccf
    rst $18
    rlca
    rst $38
    adc l
    ld [hl], e
    ld b, d
    cp l
    add c
    cp $ff
    inc e
    db $fd
    ld e, $ee
    rra
    ld [hl], a
    adc a
    rst $38
    rst $38
    cp $ff

jr_015_71fc:
    ret nc

    cpl
    ld b, d
    cp l
    add e
    ld a, h
    ld d, [hl]
    xor c
    db $fc
    inc bc
    ld hl, sp+$07
    jp hl


    or b
    rst $08
    ld [c], a
    dec e
    nop
    rst $38
    add hl, sp
    add $87
    ld a, b
    rlca
    ld hl, sp+$2b
    call nc, Call_015_54ab
    ld [de], a
    db $ed
    add l
    ld a, d
    and h
    ld e, e
    adc h
    ld [hl], e
    ret nc

    cpl
    ld b, b
    cp a
    sub d
    ld l, l
    ld a, [hl+]
    push de
    sbc d
    ld h, l
    jr nc, jr_015_71fc

    ld d, b
    xor a
    ld [c], a
    dec e
    rst $38
    inc bc
    jp nc, $ee2f

    rla
    adc $37
    xor e
    ld d, a
    dec c
    di
    or l
    ld c, e
    ccf
    jp Jump_000_00ff


    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ld a, b
    add a
    rst $38
    add c
    db $fd
    add e
    ld a, [hl]
    add c
    dec sp
    rst $08
    scf
    srl l
    jp $c13f


    ld a, $41
    ccf
    nop
    cp a
    add b
    cp a
    ret nz

    db $f4
    ei
    ld a, a
    cp a
    rst $28
    sbc a
    cp e
    sub $d7
    db $ec
    db $ed
    ei
    ld a, e
    rst $38
    rst $38
    ld [hl], a
    cp $03
    rst $38
    sbc h
    ld a, l
    add e
    or [hl]
    ld l, c
    ld l, a
    ret nc

    db $fd
    db $e3
    db $eb
    rst $30
    rst $38
    rst $30
    db $fd
    ld c, $9b
    db $fc
    cp $f1
    rst $38
    pop hl
    db $fd
    inc bc
    rst $18
    db $e3
    ei
    rst $20
    xor $f7
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $08
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$01
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
    rst $38
    rrca
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $08
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$01
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
    rra
    rra
    ccf
    cpl
    ld [hl], b

jr_015_73db:
    ld e, a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a

jr_015_73ec:
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a

jr_015_73f4:
    ret nz

    rlca
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_015_73db

    inc a
    cp l
    ld a, [hl]
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld h, [hl]
    rst $38
    jr jr_015_73f4

    rst $28
    db $10
    sub a
    ld a, b
    ld a, e
    and h
    db $fc
    and a
    ld a, b
    ldh [$3f], a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    push de
    ccf
    dec d
    rst $38
    cp $ff
    ld de, $93fe
    ld a, h
    ld d, l
    cp $52
    rst $38
    sub d
    rst $38
    rst $00
    jr c, jr_015_73ec

    ld a, h
    jp $9d3c


    ld a, [hl]
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    add d
    rst $38
    dec a
    cp $c5
    ld a, $cb
    inc a
    or a
    ld a, b
    rst $38
    nop
    rst $38
    jr @+$01

    jr c, @-$1f

    jr c, jr_015_7456

jr_015_7456:
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    rra
    ldh [$ed], a
    ld a, [c]
    ld a, [de]
    rst $20
    ld a, [$fa07]
    rlca
    push af
    ld c, $0b
    db $fc
    rst $30
    ld hl, sp-$3d
    inc a
    cp l
    ld a, [hl]
    srl h
    cp l
    ld a, [hl]
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    push af
    rrca
    ret nz

    ccf
    ld a, $ff
    ret


    cp $17
    ld hl, sp-$29
    jr c, @-$15

    ld e, $f6
    rrca
    rst $38
    nop
    or e
    ld c, h
    ld d, l
    xor $5a
    rst $20
    nop
    inc b
    rst $38
    sbc h
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
    rst $30
    ld [$5cab], sp
    ld e, l
    cp $6a
    rst $38
    nop
    inc b
    rst $38
    sbc h
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
    ei
    inc b
    push af
    ld c, $eb
    inc e
    rst $10
    jr c, jr_015_74d2

jr_015_74d2:
    inc b
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
    add e
    ld a, h
    ld a, l
    cp $8b
    ld a, h
    sbc l
    ld a, [hl]
    nop
    ld hl, sp-$08
    db $fc
    db $f4
    ld c, $fa
    rlca
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$2f], a
    ld [hl], b
    rra
    ccf
    nop
    rra
    ld a, c
    cp $aa
    ld [hl], a
    and d

jr_015_7535:
    ld a, a
    db $dd
    ld a, $ff
    nop
    jp $bd3c


    ld a, [hl]
    jp nz, $f53f

    ld c, $bb
    ld b, h
    ld b, c
    cp $be
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld h, d
    rst $38
    sbc d
    ld h, a
    rst $38
    push bc
    ld a, $bb
    ld a, h
    cp a
    ld b, b
    ld e, l
    ld [c], a
    ld d, d
    rst $28
    xor l
    ld a, [hl]
    or e
    ld a, h
    ld c, a
    ldh a, [rSTAT]
    cp $be
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    jr @+$01

    jr @+$01

    jr jr_015_7535

    ld a, [hl]
    push af
    rrca
    jp c, $2525

    cp $f2
    rst $38
    ld a, [hl+]
    rst $38
    ld c, c
    cp $8b
    db $fc
    scf
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_015_758f:
    nop
    rst $38
    srl h
    cp e
    ld a, h
    ld c, l
    cp $b3
    ld a, h
    push af
    rrca
    ret nz

    ccf
    ld a, $ff
    ret


    cp $17
    ld hl, sp-$29
    jr c, jr_015_758f

    ld e, $f6
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld e, d
    rst $20
    ld b, d
    rst $38
    ld d, l
    ld a, [$70af]
    rst $28
    db $10
    sub a
    ld a, b
    ld a, l
    cp $89
    ld a, [hl]
    cp [hl]
    ld a, a
    add l
    ld a, [hl]
    ld b, e
    db $fc
    cp l
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    jp nc, $b2ff

    rst $38
    rst $38
    xor d
    rst $30
    push de
    ld l, [hl]
    jp $bd3c


    ld a, [hl]
    srl h
    cp l
    ld a, [hl]

jr_015_75e2:
    srl h
    cp e
    ld a, h
    ld c, l
    cp $b3
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    xor a
    ld [hl], b
    rst $10
    jr c, jr_015_75e2

    inc e
    push af
    ld c, $f7
    ld [$7e89], sp
    ld a, [hl]
    rst $38
    adc c
    ld a, [hl]
    cp e
    ld a, h
    xor e
    ld a, h
    sbc e
    ld a, h
    ld [hl], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld h, d
    rst $38
    sbc d
    rst $38
    ld a, [hl+]
    rst $38
    db $dd
    ld a, $ff
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
    rst $38
    nop
    rst $38
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    ld a, [$f407]
    ld c, $f8
    db $fc
    nop
    ld hl, sp+$00
    rra
    sbc a
    rra
    ccf

jr_015_7657:
    cpl
    ld [hl], b
    ld e, a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a

jr_015_7662:
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fd
    cp $c3
    db $fc
    db $fd
    cp $06
    rst $38
    cp $07
    add [hl]
    rst $38
    ld a, l
    cp $ea
    rla
    push de
    ccf
    xor d
    ld e, a
    ld d, l
    xor $00
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    rst $00
    jr c, jr_015_7657

    ld a, h
    ld c, l
    cp $d7
    xor $d7
    xor $d7
    xor $65
    cp $bb
    ld a, h
    ld de, $fefe
    rst $38
    ld [bc], a
    rst $38
    push hl
    ld e, $00
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    add d
    ld a, a
    ld a, [$fa07]
    rlca
    ld a, [$8207]
    ld a, a
    ld a, [hl]
    rst $38
    rst $10
    jr c, jr_015_7662

    ld a, b
    ld d, a
    ld hl, sp+$55
    ld a, [$0400]
    rst $38
    sbc h
    nop
    rst $38
    nop
    ld a, [$f507]
    ld c, $cb
    inc a
    scf
    ld hl, sp-$35
    db $fc
    dec hl
    call c, $1ceb
    db $eb
    inc e
    push af
    rrca
    jp c, $2525

    cp $f2
    rst $38
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    rra
    ldh [$ed], a
    ld a, [c]
    ld a, [de]
    rst $20
    ld a, [$fa07]
    rlca
    push af
    ld c, $0b
    db $fc
    rst $30
    ld hl, sp-$19
    jr @-$23

    inc a
    cp e
    ld a, h
    db $db
    inc a
    nop
    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop
    push af
    rrca
    jp nz, $bd3d

    ld a, [hl]
    jp nz, $f53f

    ld c, $bb
    ld b, h
    ld b, c
    cp $be
    ld a, a
    jp $bd3c


    ld a, [hl]
    srl h
    cp l
    ld a, [hl]
    rlca
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld e, l
    ld [c], a
    ld d, d
    rst $28
    xor l
    ld a, [hl]
    or e
    ld a, h
    ld c, a
    ldh a, [rSTAT]
    cp $be
    ld a, a
    rst $38
    nop
    or e
    ld c, h
    ld d, l
    xor $5a
    rst $20
    ldh [$3f], a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and c
    ld e, [hl]
    ld e, [hl]
    rst $38
    ld b, c
    cp $5f
    ldh [rBGP], a
    ld hl, sp+$49
    cp $b6
    ld l, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp-$08
    db $fc
    db $f4
    ld c, $fa
    rlca
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    ld a, a

jr_015_778e:
    ret nz

    ld a, a
    ret nz

    db $fc
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$2f], a
    ld [hl], b
    rra
    ccf
    nop
    rra
    ld d, l
    xor $ba
    rst $00
    cp d
    rst $00

jr_015_77b4:
    ld a, d
    add a
    rst $30
    ld [$5cab], sp
    ld e, l
    cp $6a
    rst $38
    jp nc, $b2ff

    rst $38
    xor d
    rst $30
    push de
    ld l, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38

jr_015_77ce:
    db $db
    inc a
    dec [hl]
    cp $d2
    rst $38
    dec d
    ld a, [$04fb]
    push af
    ld c, $eb
    inc e
    rst $10
    jr c, jr_015_778e

    ld [hl], b
    rst $10
    jr c, jr_015_77ce

    inc e
    push af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    ld d, l
    cp $9b
    db $fc
    rst $00
    jr c, jr_015_77b4

    ld a, h
    jp $ad3c


    ld a, [hl]
    ld d, d
    rst $38
    ld l, d
    rst $30
    add d
    ld a, a
    db $dd
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    stop
    sub b
    rst $38
    rst $38
    db $eb
    sbc h
    call z, $cfbf
    cp a
    ret z

    cp b
    cp a
    rst $38
    cp a
    ldh [$b0], a
    rst $28
    stop
    inc bc
    jp Jump_000_0082


    nop
    inc bc
    jp Jump_000_0082


    nop
    inc bc
    rst $38
    sbc e
    nop
    nop
    rst $38
    or b
    rst $28
    and b
    rst $38
    ldh [rIE], a
    jr nz, jr_015_787a

    jr nz, jr_015_787c

    jr nz, jr_015_787e

    jr nz, jr_015_7880

    db $10
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0801
    nop
    adc l
    rst $38
    rst $38
    db $db
    and l
    cp l
    jp $dbbd


    cp l
    db $db
    cp l
    jp Jump_000_05a5


    rst $38
    add e
    nop
    rst $38
    nop
    inc bc
    rst $38

jr_015_7863:
    ld [$0300], sp
    rst $38
    jp c, $ff81

    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38

jr_015_787a:
    add c
    rst $38

jr_015_787c:
    add c
    rst $38

jr_015_787e:
    add c
    rst $38

jr_015_7880:
    add c
    rst $38
    add c
    rst $38
    rst $38
    ccf
    ccf
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    dec a
    daa
    ccf
    ccf
    jr c, jr_015_78df

    jr z, jr_015_78e1

    jr z, jr_015_78e3

    jr z, jr_015_78e5

    jr z, jr_015_78e7

    jr z, jr_015_78e9

    jr z, jr_015_78eb

    jr z, jr_015_78ed

    jr z, @+$3a

    jr z, jr_015_78f1

    jr z, @+$3a

    jr z, jr_015_78f5

    jr z, jr_015_78f7

    jr z, jr_015_78f9

    jr z, jr_015_78c6

    jr c, jr_015_7863

    nop

jr_015_78c6:
    nop
    ld bc, $0701
    ld b, $0f
    ld [$171a], sp
    rla
    inc e
    rra
    jr jr_015_78eb

    dec de
    ld e, $13
    ccf
    jr nz, jr_015_7959

    ld b, b
    rst $38
    add [hl]
    db $f4
    adc a

jr_015_78df:
    ld l, e
    ld e, e

jr_015_78e1:
    jr nc, jr_015_7913

jr_015_78e3:
    inc b
    nop

jr_015_78e5:
    rst $38
    db $fc

jr_015_78e7:
    db $fc
    xor d

jr_015_78e9:
    db $76
    push af

jr_015_78eb:
    dec de
    rst $38

jr_015_78ed:
    ld bc, $01ff
    db $fd

jr_015_78f1:
    rst $20
    sbc $e2
    rst $28

jr_015_78f5:
    ld e, c
    rst $38

jr_015_78f7:
    ld a, c
    db $fd

jr_015_78f9:
    inc de
    ld a, [$7c36]
    and h
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    ld a, [hl+]
    rst $38
    ld c, c
    cp $8b
    db $fc
    scf
    ld hl, sp-$0d
    inc c
    xor l
    ld e, [hl]
    ld d, l
    cp $d5

jr_015_7913:
    cp $65
    cp $55
    xor $d5
    xor $5a
    rst $20
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    cp l
    ld a, [hl]
    jp $bd3c


    ld a, [hl]
    srl h
    cp l
    ld a, [hl]
    srl h
    cp e
    ld a, h
    ld c, l
    cp $b3
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    srl h
    cp e
    ld a, h
    ld c, l
    cp $b3
    ld a, h
    rst $30
    ld [$7e89], sp
    ld a, [hl]
    rst $38
    adc c
    ld a, [hl]
    cp e
    ld a, h
    xor e
    ld a, h
    sbc e

jr_015_7959:
    ld a, h
    ld [hl], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld e, d
    rst $38
    rst $20
    ld b, d
    rst $38
    ld d, l
    ld a, [$70af]
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
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    ld a, [$f407]
    ld c, $f8
    db $fc
    nop
    ld hl, sp+$00
    rra
    rra
    ccf
    cpl
    ld [hl], b
    ld e, a
    ldh [$7f], a
    ret nz

    ld a, e
    call nz, $cf74
    ld a, l
    rst $08
    db $76
    rst $08
    ld [hl], l
    adc $7d
    adc $74
    rst $08
    ld a, b
    rst $00
    ld [hl], a
    rst $08
    db $76
    rst $08
    ld [hl], a
    rst $08
    add c
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $efd2


    cpl
    rst $38
    and h
    ld a, a
    and h
    ld a, a
    ld a, [hl+]
    db $fd
    db $d3
    rst $28
    dec e
    db $e3
    pop bc
    rst $38
    ld l, a
    rst $38
    pop bc
    rst $38
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld e, a
    ldh [$2e], a

jr_015_7a13:
    pop af
    xor c
    rst $30
    sub [hl]
    rst $28
    cp b
    rst $00
    ld a, l
    add e
    ld e, b
    rst $30
    ld d, a
    rst $38
    db $e4
    rst $38
    jr jr_015_7a13

    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    rst $30
    rrca
    ld a, d
    add a
    or h
    rst $08
    ld d, h
    rst $28
    ld e, c
    rst $28
    cp d
    call $ee11
    xor $ff
    ld hl, $2ffe
    ldh a, [rP1]
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    ei
    inc b
    ld [hl], l
    adc [hl]
    push de
    xor $1a
    rst $20
    db $eb
    rst $30
    inc d
    rst $28
    inc d
    rst $28
    db $eb
    rst $30
    cp $01
    reti


    daa
    and a
    ld a, a
    xor d
    ld [hl], a
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    call c, $2b23
    rst $30
    call c, Call_000_3fe3
    ret nz

    ei
    inc b
    inc d
    rst $28
    db $eb
    rst $30
    db $fd
    ld [bc], a
    ld a, [hl-]
    rst $00
    db $db
    rst $20
    ld d, $ef
    nop
    inc b
    rst $38
    sbc h
    nop
    rst $38
    nop
    cp $01
    add hl, sp
    rst $00
    sub $ef
    add hl, hl
    rst $30
    ld d, e
    rst $28
    cp h
    ld c, a
    ld [de], a
    db $ed
    db $ed
    di
    db $db
    inc h
    dec h
    cp $a5
    cp $15
    xor $00
    inc b
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    call c, $b3e3
    rst $08
    inc a
    rst $08
    pop de
    rst $28
    dec l
    di
    ld l, $f1
    rst $18
    ldh [rIE], a
    nop
    db $fc
    inc bc
    di
    rrca
    db $fc
    rrca
    nop
    ld hl, sp-$08
    db $fc
    db $f4
    ld c, $fa
    rlca
    ld e, [hl]
    di
    ld c, $f3
    xor $f3
    sbc [hl]
    db $e3
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    sbc [hl]
    db $e3
    ld l, [hl]
    di
    sbc [hl]
    ld h, e
    ld l, [hl]
    di
    sbc $e3
    cp [hl]
    jp $cf76


    db $76
    rst $08
    ld [hl], a
    rst $08
    ld [hl], b
    rst $08
    ld a, a
    ret nz

    ld a, h
    jp $c77b


    ld a, h
    jp $c07f


    ld a, e
    call nz, $cf74
    ld a, e
    rst $00
    ld e, a
    ldh [$2f], a
    ld [hl], b
    rra
    ccf
    nop
    rra
    ld l, c
    rst $30
    ld h, l
    rst $38
    push bc
    rst $38
    add hl, de
    rst $28
    cp $01
    add hl, sp
    rst $00
    rst $10
    rst $28
    ld a, [hl+]
    rst $30
    ld d, h
    rst $28
    or h
    ld c, a
    add hl, de
    rst $28
    ld_long $fffd, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc sp
    rst $08
    ld e, h
    db $e3
    rst $38
    inc l
    di
    dec hl
    rst $30
    db $fc
    inc bc
    ld a, e
    add a
    call c, Call_000_17e3
    rst $28
    add sp, -$09
    dec e
    db $e3
    ld a, [de]
    rst $20
    push hl
    cp $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $18
    ldh [$5f], a
    ldh [$b0], a
    rst $08
    ld a, a
    adc a
    ld a, a
    add b
    cp h
    jp $8f73


    call c, $b1ef
    rst $08
    ld a, l
    add e
    sbc [hl]
    pop hl
    ld l, a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    and a
    ld a, a
    ld e, c
    rst $20
    cp d
    rst $00
    ld a, e
    add a
    sbc a
    ld h, b
    ld l, a
    ldh a, [$de]
    pop hl
    cp l
    jp $877a


    ld a, l
    add e
    sbc [hl]
    pop hl
    ld l, a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    jp $c37e


    ld l, e
    rst $30
    sub [hl]
    rst $28
    ld a, [de]
    rst $28
    and $ff
    cp [hl]
    ld b, c
    ld e, c
    rst $20
    or a
    rst $08
    ld a, d
    add a
    db $f4
    rrca
    ld [hl], h
    adc a
    or l
    rst $08
    ld e, d
    db $ed

jr_015_7b98:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    push de
    xor $25
    db $fd
    cp $a4
    ld a, a
    ld e, e
    rst $20
    ld e, [hl]
    pop af
    add hl, hl
    rst $10
    rst $10
    rst $28
    jr jr_015_7b98

    rst $28
    ldh a, [rNR31]
    db $e4
    inc d
    rst $28
    db $eb
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    pop af
    rrca
    cp l
    ld b, e
    ld e, [hl]
    pop hl
    cp a
    ret nz

    rst $38
    nop
    dec sp
    call nz, $eed5
    or l
    adc $55
    xor $54
    rst $28
    dec [hl]
    rst $08
    jp c, $ffe7

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    sbc [hl]
    db $e3
    ld l, [hl]
    di
    cp $03
    ld a, $c3
    ld e, [hl]
    db $e3
    xor [hl]
    ld [hl], e
    xor [hl]
    ld [hl], e
    ld l, $f3
    ld e, [hl]
    and e
    cp $03
    ld a, [$f407]
    ld c, $f8
    db $fc
    nop
    ld hl, sp+$00
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    ld c, $0b
    inc e
    rla
    jr c, jr_015_7c3d

    ld [hl], b
    ccf
    ld a, h
    rlca
    ld a, h
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c
    rlca
    inc c
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_7c3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
