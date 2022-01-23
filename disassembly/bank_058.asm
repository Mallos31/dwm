; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

    ld e, b
    rst $08
    ld d, e
    ld c, c
    ld d, a
    ld d, l
    ld e, c
    call c, Call_058_7959
    ld h, e
    inc l
    ld h, h
    push bc
    ld d, a
    and h
    ld d, a
    sbc b
    ld d, h
    ld e, $59
    jp hl


    ld b, c
    cp d
    ld h, a
    ld c, b
    ld e, h
    scf
    ld h, a
    ld l, c
    ld d, b
    ld l, c
    ld d, b
    ld l, c
    ld d, b
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    jp nc, $bf4f

    ld h, d
    cp a
    ld h, d
    ld de, $bf52
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    xor c
    ld d, d
    ld h, a
    ld h, e
    ld d, h
    ld c, b
    cp a
    ld h, d
    ld c, e
    ld b, a
    call $ab62
    ld c, b
    cp a
    ld h, d
    ld c, $49
    call $cd62
    ld h, d
    dec bc
    ld b, a
    call Call_058_6762
    ld h, e
    ld h, a
    ld h, e
    ret c

    ld c, [hl]
    call $f762
    ld b, h
    rst $30
    ld b, h
    rst $30
    ld b, h
    call $cd62
    ld h, d
    sbc [hl]
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    ld e, a
    ld h, e
    rst $00
    ld b, [hl]
    call $cd62
    ld h, d
    call $e962
    ld b, c
    jp hl


    ld b, c
    sub $63
    jp hl


    ld b, c
    jp hl


    ld b, c
    nop
    ld d, c
    jp hl


    ld b, c
    nop
    ld d, c
    ld a, c
    ld h, e
    jp hl


    ld b, c
    ld h, a
    ld h, e
    inc l
    ld h, h
    ld h, a
    ld h, e
    add hl, sp
    ld d, e
    ld d, d
    ld d, e
    ld l, e
    ld d, e
    add h
    ld d, e
    ld a, [de]
    ld c, l
    ld e, l
    ld c, l
    ld l, l
    ld c, l
    ld a, l
    ld c, l
    adc l
    ld c, l
    sbc l
    ld c, l
    xor l
    ld c, l
    cp a
    ld h, d
    jp hl


    ld b, c
    inc l
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    sub $63
    jp hl


    ld b, c
    jp hl


    ld b, c
    cp a
    ld h, d
    sbc l
    ld d, e
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    db $ed
    ld c, l
    add l
    ld c, h
    add hl, sp
    ld c, [hl]
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    add l
    ld c, [hl]
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    cp a
    ld h, d
    pop de
    ld c, h
    pop de
    ld c, h
    ld h, a
    ld h, e
    cp a
    ld h, d
    add l
    ld c, [hl]
    ld [hl], h
    ld c, e
    inc h
    ld c, h
    cp a
    ld h, d
    cp a
    ld h, d
    jp hl


    ld b, c
    ld h, a
    ld h, e
    cp a
    ld h, d
    call $2162
    ld c, d
    db $fd
    ld h, d
    sub $63
    sub $63
    sub $63
    sub $63
    cp d
    ld c, d
    call Call_058_6762
    ld h, e
    call Call_058_6762
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    call Call_058_6762
    ld h, e
    cp a
    ld h, d
    ld h, $4b
    ld h, a
    ld h, e
    call $5f62
    ld h, e
    ld e, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld a, c
    ld h, h
    inc l
    ld h, h
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    inc l
    ld h, h
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    db $fd
    ld h, d
    call $bf62
    ld h, d
    db $fd
    ld h, d
    call $bf62
    ld h, d
    cp a
    ld h, d
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    cp a
    ld h, d
    cp a
    ld h, d
    ld e, a
    ld h, e
    call $bf62
    ld h, d
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    sub $63
    ld h, a
    ld h, e
    cp l
    ld c, l
    call $dd4d
    ld c, l
    or [hl]
    ld d, e
    ld h, h
    ld d, c
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    jp hl


    ld b, c
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld hl, $db56
    ld bc, $0008
    xor a
    call Call_000_12c7
    call Call_058_654d
    ret z

    ld a, [$c86c]
    or a
    jp nz, Jump_058_4206

    ld a, [$db88]
    cp $04
    jp nc, Jump_058_441b

Jump_058_4206:
    ld a, [$db88]
    and $04
    xor $04
    ld [$db89], a
    ld b, $03
    ld c, a

jr_058_4213:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_421e

    call Call_058_660d
    jr c, jr_058_4228

jr_058_421e:
    inc c
    dec b
    jr nz, jr_058_4213

    call Call_058_432c
    jp Jump_058_431a


jr_058_4228:
    ld b, $03
    ld a, [$db89]
    ld c, a

jr_058_422e:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4239

    call Call_058_43ea
    jr z, jr_058_4243

jr_058_4239:
    inc c
    dec b
    jr nz, jr_058_422e

    call Call_058_4384
    jp Jump_058_431a


jr_058_4243:
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jr nz, jr_058_4270

    ld b, $03
    ld a, [$db89]
    ld c, a

jr_058_425a:
    ld a, c
    call Call_058_43ea
    jr nz, jr_058_4266

    ld a, c
    call Call_000_2f76
    jr nc, jr_058_42c6

jr_058_4266:
    inc c
    dec b
    jr nz, jr_058_425a

    call Call_058_4384
    jp Jump_058_431a


jr_058_4270:
    ld b, $03
    ld a, [$db89]
    ld c, a

jr_058_4276:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_42a6

    call Call_058_43ea
    jr nz, jr_058_42a6

    call Call_058_43ff
    ld a, c
    call Call_000_2fe8
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_058_429c

    ld hl, $0000

jr_058_429c:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    jr jr_058_42ae

jr_058_42a6:
    ld a, $ff
    ld [$db56], a
    ld [$db57], a

jr_058_42ae:
    pop bc
    call Call_058_4fa7
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_058_43d7
    inc c
    dec b
    jr nz, jr_058_4276

    call Call_058_433e
    jr jr_058_431a

jr_058_42c6:
    ld b, $03
    ld a, [$db89]
    ld c, a

jr_058_42cc:
    push bc
    ld a, c
    call Call_000_2f76
    jr c, jr_058_42fc

    call Call_058_43ea
    jr nz, jr_058_42fc

    call Call_058_43ff
    ld a, c
    call Call_000_2fe8
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr nc, jr_058_42f2

    ld hl, $0000

jr_058_42f2:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    jr jr_058_4304

jr_058_42fc:
    ld a, $ff
    ld [$db56], a
    ld [$db57], a

jr_058_4304:
    pop bc
    call Call_058_4fa7
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_058_43d7
    inc c
    dec b
    jr nz, jr_058_42cc

    call Call_058_433e

Jump_058_431a:
jr_058_431a:
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
    ret


Call_058_432c:
    ld a, $00
    ld [$db63], a
    ld b, $03
    ld a, [$db89]
    ld c, a

jr_058_4337:
    call Call_058_43aa
    inc c
    dec b
    jr nz, jr_058_4337

Call_058_433e:
    ld a, $00
    ld [$db61], a
    ld a, [$db58]
    ld c, a
    ld a, [$db59]
    ld b, a
    ld de, $0201

jr_058_434e:
    ld a, e
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr z, jr_058_436b

    jr nc, jr_058_4375

jr_058_4363:
    ld b, h
    ld c, l
    ld a, e
    ld [$db61], a
    jr jr_058_4375

jr_058_436b:
    call Call_058_5c3e
    ld a, [wRNG1]
    bit 1, a
    jr z, jr_058_4363

jr_058_4375:
    inc e
    dec d
    jr nz, jr_058_434e

    ld hl, $db89
    ld a, [$db61]
    add [hl]
    ld [$db89], a
    ret


Call_058_4384:
    ld a, $01
    ld [$db63], a
    ld b, $03
    ld a, [$db89]
    ld c, a

jr_058_438f:
    ld a, c
    ld hl, $db06
    call Call_000_2f6c
    bit 2, [hl]
    jr nz, jr_058_439f

    call Call_058_43aa
    jr jr_058_43a2

jr_058_439f:
    call Call_058_43d4

jr_058_43a2:
    inc c
    dec b
    jr nz, jr_058_438f

    call Call_058_433e
    ret


Call_058_43aa:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_43d4

    call Call_000_2fe8
    push hl
    ld a, c
    call Call_000_2fd3
    ld a, [$db63]
    or a
    jr z, jr_058_43d0

    push hl
    ld a, c
    ld hl, $db08
    call Call_000_2f6c
    ld a, [hl]
    pop hl
    bit 2, a
    jr z, jr_058_43d0

    srl h
    rr l

jr_058_43d0:
    pop de
    add hl, de
    jr jr_058_43d7

Call_058_43d4:
jr_058_43d4:
    ld hl, $ffff

Call_058_43d7:
jr_058_43d7:
    ld a, c
    and $03
    add a
    ld de, $db58
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


Call_058_43ea:
    ld hl, $db06
    call Call_000_2f6c
    bit 2, [hl]
    jr nz, jr_058_43fe

    inc hl
    inc hl
    ld a, [hl+]
    and $20
    jr nz, jr_058_43fe

    ld a, [hl]
    and $07

jr_058_43fe:
    ret


Call_058_43ff:
    push bc
    ld a, [$db8a]
    cp $37
    jr c, jr_058_4415

    cp $d9
    jr z, jr_058_4415

    cp $dd
    jr z, jr_058_4415

    ld hl, $5203
    rst $10
    jr jr_058_4419

jr_058_4415:
    ld hl, $5403
    rst $10

jr_058_4419:
    pop bc
    ret


Call_058_441b:
Jump_058_441b:
    call Call_058_654d
    ret z

    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jr z, jr_058_448a

    call Call_058_5e5b
    call Call_058_5e75

Call_058_4436:
    xor a
    ld [$db89], a

jr_058_443a:
    ld a, d
    dec a
    rst $00
    ld h, e
    ld b, h
    ld d, e
    ld b, h
    ld b, e
    ld b, h
    push bc
    call Call_058_5c3e
    pop bc
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_4463

    ld hl, $db89
    inc [hl]
    push bc
    call Call_058_5c3e
    pop bc
    ld a, [wRNG1]
    cp $aa
    jr c, jr_058_4463

    ld hl, $db89
    inc [hl]

jr_058_4463:
    ld hl, $db4c
    ld a, [$db89]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db89], a
    call Call_000_2fa5
    jr c, jr_058_443a

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
    ret


jr_058_448a:
    call Call_058_5e19

jr_058_448d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_44b2

    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, c
    call Call_000_2fd3
    srl h
    rr l
    srl d
    rr e
    add hl, de
    ld d, h
    ld e, l
    jr jr_058_44b5

jr_058_44b2:
    ld de, $ffff

jr_058_44b5:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    inc c
    dec b
    jr nz, jr_058_448d

    call Call_058_5e5b
    call Call_058_5e75
    ld a, d
    cp $02
    jr c, jr_058_44f3

    push af
    push bc
    push de
    push hl
    call Call_058_5e81
    pop hl
    pop de
    pop bc
    pop af
    ld a, d
    cp $03
    jr c, jr_058_44f3

    push af
    push bc
    push de
    push hl
    call Call_058_5ebf
    pop hl
    pop de
    pop bc
    pop af

jr_058_44f3:
    call Call_058_4436
    ret


    call Call_058_6556
    ret z

    ld a, [$db88]
    and $04
    ld e, a
    ld d, $03
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jp z, Jump_058_4591

Jump_058_4515:
jr_058_4515:
    ld a, e
    ld [$db4f], a
    ld a, d
    ld [$db50], a
    ld a, e
    call Call_000_2fa5
    jr nc, jr_058_452b

    ld bc, $0000
    ld hl, $0000
    jr jr_058_454d

jr_058_452b:
    ld a, e
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, e
    call Call_000_2fda
    call Call_000_2f45
    jr nz, jr_058_454a

    ld bc, $0001
    ld hl, $0000
    jr jr_058_454d

jr_058_454a:
    call Call_000_2f4b

jr_058_454d:
    push hl
    ld a, [$db4f]
    ld e, a
    ld a, [$db50]
    ld d, a
    ld a, $03
    sub d
    ld hl, $db61
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    pop hl
    ld b, h
    ld c, l
    ld a, [$db4f]
    ld e, a
    ld a, [$db50]
    ld d, a
    ld a, $03
    sub d
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db4f]
    ld e, a
    ld a, [$db50]
    ld d, a
    inc e
    dec d
    jr nz, jr_058_4515

    call Call_058_665a
    ret


Jump_058_4591:
    xor a
    ld [$db4c], a
    ld b, d
    ld c, e
    xor a
    ld hl, $db51
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_058_459e:
    ld a, c
    ld [$db4f], a
    ld a, b
    ld [$db50], a
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_45e1

    ld hl, $db4c
    inc [hl]
    ld a, c
    call Call_000_2fda
    ld a, c
    ld de, $db8b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    bit 0, a
    jr z, jr_058_45ca

    ld a, $1e
    call Call_000_1de6
    jr jr_058_45cc

jr_058_45ca:
    ld e, $00

jr_058_45cc:
    ld a, [$db51]
    add l
    ld [$db51], a
    ld a, [$db52]
    adc h
    ld [$db52], a
    ld a, [$db53]
    adc e
    ld [$db53], a

jr_058_45e1:
    ld a, [$db4f]
    ld c, a
    ld a, [$db50]
    ld b, a
    inc c
    dec b
    jr nz, jr_058_459e

    ld a, [$db51]
    ld l, a
    ld a, [$db52]
    ld h, a
    ld a, [$db53]
    ld e, a
    ld a, [$db4c]
    call Call_000_1e1e
    ld a, [$db4c]
    call Call_000_1e1e
    ld a, l
    ld [$db61], a
    ld a, h
    ld [$db62], a
    ld a, [$db88]
    and $04
    ld e, a
    ld d, $03
    ld a, $ff
    ld [$db4e], a

jr_058_461a:
    ld a, e
    ld [$db4c], a
    ld a, d
    ld [$db4d], a
    ld a, e
    call Call_000_2fa5
    jr c, jr_058_466e

    ld a, e
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, e
    call Call_000_2fe8
    call Call_000_2f45
    jr z, jr_058_466e

    ld a, [$db61]
    ld c, a
    ld a, [$db62]
    ld b, a
    call Call_000_2f45
    jr z, jr_058_465e

    jr nc, jr_058_466e

    ld a, l
    ld [$db61], a
    ld a, h
    ld [$db62], a
    ld a, [$db4c]
    ld [$db4e], a
    jr jr_058_466e

jr_058_465e:
    call Call_058_5c3e
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_466e

    ld a, [$db4c]
    ld [$db4e], a

jr_058_466e:
    ld a, [$db4c]
    ld e, a
    ld a, [$db4d]
    ld d, a
    inc e
    dec d
    jr nz, jr_058_461a

    ld a, [$db4e]
    cp $ff
    jr z, jr_058_4693

    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4e]
    ld [hl], a
    ret


jr_058_4693:
    ld a, [$db88]
    and $04
    ld e, a
    ld d, $03
    jp Jump_058_4515


    ld a, [$db88]
    and $04
    or $02
    ld c, a
    ld b, $03

jr_058_46a8:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_46b0

    jr nz, jr_058_46b8

jr_058_46b0:
    dec c
    dec b
    jr nz, jr_058_46a8

    ld a, [$db88]
    ld c, a

jr_058_46b8:
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ret


    call Call_058_6556
    ret z

    ld a, [$db88]
    and $04
    or $02
    ld c, a
    ld [$db89], a
    ld b, $03

jr_058_46d8:
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 1, [hl]
    jr nz, jr_058_46fc

    dec c
    dec b
    jr nz, jr_058_46d8

    ld a, [$db89]
    ld c, a
    ld b, $02

jr_058_46ed:
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_058_46fc

    dec c
    dec b
    jr nz, jr_058_46ed

jr_058_46fc:
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ret


    call Call_058_6556
    ret z

    call Call_058_627c
    ld a, c
    xor $04
    ld c, a

jr_058_4716:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_473a

    ld de, $0001
    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 2, [hl]
    jr nz, jr_058_473d

    ld a, c
    ld hl, $dbe3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_058_473d

jr_058_473a:
    ld de, $0000

jr_058_473d:
    call Call_058_6292
    inc c
    dec b
    jr nz, jr_058_4716

    call Call_058_619a
    call Call_058_6188
    ret


    call Call_058_6556
    ret z

    ld hl, $db61
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld a, [$db88]
    and $04
    ld [$db4e], a
    ld b, $03

jr_058_4764:
    push bc
    ld a, [$db4e]
    call Call_000_2fa5
    jr c, jr_058_47ad

    ld a, [$db4e]
    call Call_058_5c96
    ld a, [$db4e]
    call Call_000_2fd3
    ld a, [$c86c]
    or a
    jr nz, jr_058_4786

    ld a, [$db88]
    cp $04
    jr nc, jr_058_4795

jr_058_4786:
    ld a, [$db4e]
    and $03
    cp $03
    cp $03
    jr z, jr_058_4795

    sla c
    rl b

jr_058_4795:
    sla c
    rl b
    call Call_000_2f45
    jr nc, jr_058_47a8

    ld bc, $03e7
    call Call_000_2f45
    jr nc, jr_058_47a8

    jr jr_058_47b0

jr_058_47a8:
    ld hl, $fffe
    jr jr_058_47b0

jr_058_47ad:
    ld hl, $ffff

jr_058_47b0:
    push hl
    pop de
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    pop bc
    ld hl, $db4e
    inc [hl]
    dec b
    jr nz, jr_058_4764

    ld hl, $db61
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $db63
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld a, [$db88]
    and $04
    ld [$db4e], a
    inc a
    ld [$db4f], a
    ld a, $02
    ld [$db50], a

jr_058_47f0:
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr c, jr_058_4814

    jr nz, jr_058_481c

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_481c

jr_058_4814:
    push hl
    pop bc
    ld a, [$db4f]
    ld [$db4e], a

jr_058_481c:
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld hl, $db4f
    inc [hl]
    ld hl, $db50
    dec [hl]
    ld a, [$db50]
    or a
    jr nz, jr_058_47f0

    ld a, [$db4e]
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
    ret


    call Call_058_654d
    ret z

    call Call_058_627c

jr_058_485b:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_489c

    ld de, $0001
    ld a, c
    call Call_000_2fd3
    cp $01
    jr c, jr_058_489f

    jr nz, jr_058_4873

    ld a, h
    or a
    jr z, jr_058_489f

jr_058_4873:
    inc de
    push hl
    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    pop hl
    and $22
    jr nz, jr_058_489f

    push hl
    ld a, $03
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    xor $30
    and $30
    pop de
    or d
    ld d, a
    jr jr_058_489f

jr_058_489c:
    ld de, $0000

jr_058_489f:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_485b

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_627c

jr_058_48b2:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_48ff

    ld de, $0001
    ld a, c
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    cp $01
    jr c, jr_058_4902

    jr nz, jr_058_48d4

    ld h, a
    or a
    jr z, jr_058_4902

jr_058_48d4:
    inc de
    push hl
    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    pop hl
    and $22
    jr nz, jr_058_4902

    push hl
    ld a, $03
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    rlca
    rlca
    xor $30
    and $30
    pop de
    or d
    ld d, a
    jr jr_058_4902

jr_058_48ff:
    ld de, $0000

jr_058_4902:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_48b2

    call Call_058_619a
    ret


    call Call_058_6556
    ret z

    ld hl, $db61
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld a, [$db88]
    and $04
    ld [$db4e], a
    ld b, $03

jr_058_4927:
    push bc
    ld a, [$db4e]
    call Call_000_2fa5
    jr c, jr_058_497a

    ld a, [$db4e]
    call Call_058_60f3
    ld a, [$db4e]
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    ld bc, $01ff
    call Call_000_2f45
    pop bc
    jr nc, jr_058_4975

    ld a, [$c86c]
    or a
    jr nz, jr_058_495d

    ld a, [$db88]
    cp $04
    jr nc, jr_058_496a

jr_058_495d:
    ld a, [$db4e]
    and $03
    cp $03
    jr z, jr_058_496a

    sla c
    rl b

jr_058_496a:
    sla c
    rl b
    call Call_000_2f45
    jr nc, jr_058_4975

    jr jr_058_497d

jr_058_4975:
    ld hl, $fffe
    jr jr_058_497d

jr_058_497a:
    ld hl, $ffff

jr_058_497d:
    push hl
    pop de
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    pop bc
    ld hl, $db4e
    inc [hl]
    dec b
    jr nz, jr_058_4927

    ld hl, $db61
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $db63
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld a, [$db88]
    and $04
    ld [$db4e], a
    inc a
    ld [$db4f], a
    ld a, $02
    ld [$db50], a

jr_058_49bd:
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr c, jr_058_49e1

    jr nz, jr_058_49e9

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_49e9

jr_058_49e1:
    push hl
    pop bc
    ld a, [$db4f]
    ld [$db4e], a

jr_058_49e9:
    ld a, [$db4c]
    ld l, a
    ld a, [$db4d]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db4c], a
    ld a, h
    ld [$db4d], a
    ld hl, $db4f
    inc [hl]
    ld hl, $db50
    dec [hl]
    ld a, [$db50]
    or a
    jr nz, jr_058_49bd

    ld a, [$db4e]
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
    ret


    call Call_058_654d
    ret z

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    push bc
    xor a
    ld hl, $db50
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_058_4a37:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4a8d

    ld a, c
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_058_60e0
    jr c, jr_058_4a7c

    ld a, c
    call Call_000_2fd3
    call Call_058_60e0
    jr c, jr_058_4a7c

    push bc
    ld a, $02
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4c]
    and $30
    ld [hl], a
    jr jr_058_4a9c

jr_058_4a7c:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $fe
    ld [hl], a
    jr jr_058_4a9c

jr_058_4a8d:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl], a

jr_058_4a9c:
    inc c
    dec b
    jr nz, jr_058_4a37

    pop bc
    ld a, c
    ld [$db4c], a
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4d], a
    inc c
    dec b
    call Call_058_5f0c
    ret


    call Call_058_6556
    ret z

    ld a, [$db88]
    and $04
    ld [$db89], a
    ld c, a
    ld b, $03

jr_058_4ac9:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4af0

    ld a, [$db88]
    cp c
    jr z, jr_058_4af0

    ld a, c
    call Call_000_2fe8
    push hl
    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    pop hl
    jr z, jr_058_4af3

    ld bc, $0200
    add hl, bc
    jr jr_058_4af3

jr_058_4af0:
    ld hl, $ffff

jr_058_4af3:
    ld d, h
    ld e, l
    pop bc
    ld a, c
    and $03
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    inc c
    dec b
    jr nz, jr_058_4ac9

    call Call_058_6224
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push hl
    call Call_000_2fa5
    pop hl
    ret nc

    ld a, [$db88]
    ld [hl], a
    ret


    call Call_058_654d
    ret z

    call Call_058_627c

jr_058_4b2d:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4b65

    ld de, $0001
    ld a, c
    call Call_058_656e
    jr nc, jr_058_4b68

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 7, [hl]
    jr nz, jr_058_4b68

    ld de, $00ff
    push de
    ld a, $06
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    xor $c0
    and $c0
    pop de
    or d
    ld d, a
    jr jr_058_4b68

jr_058_4b65:
    ld de, $0000

jr_058_4b68:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4b2d

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    push bc
    xor a
    ld hl, $db50
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

Jump_058_4b8a:
    push bc
    ld a, c
    call Call_000_2fa5
    pop bc
    jr c, jr_058_4bf8

    ld a, c
    call Call_000_2fd3
    cp $01
    jr c, jr_058_4bd6

    jr nz, jr_058_4ba0

    ld a, h
    or a
    jr z, jr_058_4bd6

jr_058_4ba0:
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    and $c0
    jr nz, jr_058_4be7

    inc hl
    inc hl
    ld a, [hl]
    and $3f
    jr nz, jr_058_4be7

    push bc
    ld a, $03
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4c]
    and $30
    ld [hl], a
    jr jr_058_4c07

jr_058_4bd6:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $fd
    ld [hl], a
    jr jr_058_4c07

jr_058_4be7:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $fe
    ld [hl], a
    jr jr_058_4c07

jr_058_4bf8:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl], a

jr_058_4c07:
    inc c
    dec b
    jp nz, Jump_058_4b8a

    pop bc
    ld a, c
    ld [$db4c], a
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4d], a
    call Call_058_5f0c
    ret


    call Call_058_654d
    ret z

    call Call_058_627c

jr_058_4c2b:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4c76

    ld de, $0001
    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 4, [hl]
    jr nz, jr_058_4c79

    ld de, $0002
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    and $d0
    jr nz, jr_058_4c79

    inc hl
    inc hl
    ld a, [hl]
    and $3f
    jr nz, jr_058_4c79

    ld de, $00ff
    push de
    ld a, $05
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    xor $0c
    and $0c
    pop de
    or d
    ld d, a
    jr jr_058_4c79

jr_058_4c76:
    ld de, $0000

jr_058_4c79:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4c2b

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_627c

jr_058_4c90:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4cc2

    ld de, $0001
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 7, [hl]
    jr nz, jr_058_4cc5

    ld hl, $00ff
    push hl
    ld a, $02
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    xor $c0
    and $c0
    pop de
    or d
    ld d, a
    jr jr_058_4cc5

jr_058_4cc2:
    ld de, $0000

jr_058_4cc5:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4c90

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_627c

jr_058_4cd8:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4d0b

    ld a, c
    ld hl, $dbc3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    or [hl]
    jr z, jr_058_4d0b

    ld a, $02
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld de, $0001
    ld a, [$db4c]
    rlca
    rlca
    xor $30
    and $30
    or d
    ld d, a
    jr jr_058_4d0e

jr_058_4d0b:
    ld de, $0000

jr_058_4d0e:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4cd8

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_627c

jr_058_4d21:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4d4e

    ld de, $0001
    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    jr z, jr_058_4d51

    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    xor $ff
    ld e, a
    ld a, [hl]
    xor $ff
    ld d, a
    jr jr_058_4d51

jr_058_4d4e:
    ld de, $0000

jr_058_4d51:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4d21

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $01
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $02
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $03
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $06
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $07
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $08
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $00
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $05
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_627c
    ld a, $04
    ld [$db4c], a
    call Call_058_64fc
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_627c

jr_058_4df8:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4e2a

    ld de, $0001
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr nz, jr_058_4e2d

    ld de, $00ff
    push de
    ld a, $04
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    and $03
    xor $03
    pop de
    ld d, a
    jr jr_058_4e2d

jr_058_4e2a:
    ld de, $0000

jr_058_4e2d:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4df8

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_627c

jr_058_4e44:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4e76

    ld de, $0001
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $cc
    jr nz, jr_058_4e79

    ld de, $00ff
    push de
    ld a, $05
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    and $c0
    xor $c0
    pop de
    ld d, a
    jr jr_058_4e79

jr_058_4e76:
    ld de, $0000

jr_058_4e79:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4e44

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_627c

jr_058_4e90:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_4ec9

    ld de, $0001
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    and $d0
    jr nz, jr_058_4ecc

    inc hl
    inc hl
    ld a, [hl]
    and $3f
    jr nz, jr_058_4ecc

    ld de, $00ff
    push de
    ld a, $05
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    ld a, [$db4c]
    and $0c
    xor $0c
    pop de
    ld d, a
    jr jr_058_4ecc

jr_058_4ec9:
    ld de, $0000

jr_058_4ecc:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_4e90

    call Call_058_619a
    ret


    call Call_058_654d
    ret z

    ld a, [$db88]
    and $04
    xor $04
    ld [$db4c], a
    inc a
    ld [$db4d], a
    ld a, $02
    ld [$db4e], a
    ld a, [$db4c]
    call Call_000_2fa5
    jr c, jr_058_4f1c

    ld hl, $dbb3
    ld a, [$db4c]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $dbd3
    ld a, [$db4c]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_058_5f01
    jr jr_058_4f21

jr_058_4f1c:
    ld bc, $0000
    ld e, $00

jr_058_4f21:
    ld hl, $db56
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl], a

Jump_058_4f2a:
    ld a, [$db4d]
    call Call_000_2fa5
    jr c, jr_058_4f57

    ld hl, $dbb3
    ld a, [$db4d]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $dbd3
    ld a, [$db4d]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_058_5f01
    jr jr_058_4f5c

jr_058_4f57:
    ld bc, $0000
    ld e, $00

jr_058_4f5c:
    ld hl, $db58
    ld a, e
    cp [hl]
    jr c, jr_058_4f80

    jr nz, jr_058_4f71

    dec hl
    ld a, b
    cp [hl]
    jr c, jr_058_4f80

    jr nz, jr_058_4f71

    dec hl
    ld a, c
    cp [hl]
    jr c, jr_058_4f80

jr_058_4f71:
    ld hl, $db56
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl], a
    ld a, [$db4d]
    ld [$db4c], a

jr_058_4f80:
    ld hl, $db4d
    inc [hl]
    ld hl, $db4e
    dec [hl]
    ld a, [$db4e]
    or a
    jp nz, Jump_058_4f2a

    ld a, [$db4c]
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
    ret


Call_058_4fa7:
    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    ret z

    push af
    push bc
    push de
    push hl
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, $32
    call Call_000_1de6
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19

Jump_058_4fdd:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_501e

    ld a, $02
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    push bc
    ld a, c
    and $03
    ld de, $db50
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [$db4c]
    and $30
    ld [de], a
    push de
    call Call_058_5e2f
    pop hl
    jr z, jr_058_500e

    set 6, [hl]

jr_058_500e:
    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_058_5030

jr_058_501e:
    ld a, c
    and $03
    ld de, $db50
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $ff
    ld [de], a
    ld de, $0000

jr_058_5030:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    pop bc
    inc c
    dec b
    jp nz, Jump_058_4fdd

    call Call_058_5d86
    call Call_058_5e3a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19

Jump_058_5074:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_50b5

    ld a, $00
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    push bc
    ld a, c
    and $03
    ld de, $db50
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [$db4c]
    and $30
    ld [de], a
    push de
    call Call_058_5e2f
    pop hl
    jr z, jr_058_50a5

    set 6, [hl]

jr_058_50a5:
    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_058_50c7

jr_058_50b5:
    ld a, c
    and $03
    ld de, $db50
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $ff
    ld [de], a
    ld de, $ffff

jr_058_50c7:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    pop bc
    inc c
    dec b
    jp nz, Jump_058_5074

    call Call_058_5cef
    call Call_058_5e3a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    xor a
    ld [$db50], a
    ld [$db51], a
    ld [$db52], a
    ld [$db53], a

jr_058_5118:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_5142

    ld de, $0001
    ld a, c
    ld hl, $db08
    call Call_000_2f6c
    bit 5, [hl]
    jr nz, jr_058_5145

    inc hl
    ld a, [hl]
    and $05
    jr nz, jr_058_5145

    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_058_5145

jr_058_5142:
    ld de, $0000

jr_058_5145:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    inc c
    dec b
    jr nz, jr_058_5118

    call Call_058_5d86
    call Call_058_5e3a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    ld a, [$c86c]
    or a
    jp nz, Jump_058_62bf

    ld a, [$db88]
    cp $04
    jp c, Jump_058_62bf

    call Call_058_5e19
    ld a, c
    ld [$db60], a
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_51ac

    ld d, $fe
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 4, [hl]
    jr nz, jr_058_51ae

    push bc
    ld a, $03
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    ld a, [$db4c]
    and $c0
    ld d, a
    jr jr_058_51ae

jr_058_51ac:
    ld d, $ff

jr_058_51ae:
    ld a, d
    ld [$db50], a
    ld a, c
    ld [$db60], a
    inc c
    dec b

Jump_058_51b8:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_51e3

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 4, [hl]
    jr nz, jr_058_51df

    push bc
    ld a, $03
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    ld a, [$db4c]
    and $c0
    jr jr_058_51e5

jr_058_51df:
    ld a, $fe
    jr jr_058_51e5

jr_058_51e3:
    ld a, $ff

jr_058_51e5:
    ld d, a
    ld hl, $db50
    cp [hl]
    jr c, jr_058_5200

    jr nz, jr_058_5208

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_5208

jr_058_5200:
    ld a, d
    ld [$db50], a
    ld a, c
    ld [$db60], a

jr_058_5208:
    inc c
    dec b
    jp nz, Jump_058_51b8

    call Call_058_5e3a
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    push bc
    xor a
    ld hl, $db50
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_058_522b:
    push bc
    ld a, c
    call Call_000_2fa5
    pop bc
    jr c, jr_058_527e

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    and $c0
    jr nz, jr_058_526d

    inc hl
    ld a, [hl+]
    and $22
    jr nz, jr_058_526d

    ld a, [hl]
    and $3f
    jr nz, jr_058_526d

    push bc
    ld a, $02
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4c]
    and $c0
    ld [hl], a
    jr jr_058_528d

jr_058_526d:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $fe
    ld [hl], a
    jr jr_058_528d

jr_058_527e:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl], a

jr_058_528d:
    inc c
    dec b
    jr nz, jr_058_522b

    pop bc
    ld a, c
    ld [$db4c], a
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4d], a
    call Call_058_5f0c
    ret


    call Call_058_654d
    ret z

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    push bc
    xor a
    ld hl, $db50
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_058_52bf:
    push bc
    ld a, c
    call Call_000_2fa5
    pop bc
    jr c, jr_058_530e

    ld a, c
    call Call_000_2fef
    or h
    jr z, jr_058_530e

    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    and $22
    jr nz, jr_058_52fd

    push bc
    ld a, $02
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4c]
    and $0c
    ld [hl], a
    jr jr_058_531d

jr_058_52fd:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $fe
    ld [hl], a
    jr jr_058_531d

jr_058_530e:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl], a

jr_058_531d:
    inc c
    dec b
    jr nz, jr_058_52bf

    pop bc
    ld a, c
    ld [$db4c], a
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4d], a
    call Call_058_5f0c
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    ld a, $00
    ld [$db4e], a
    ld a, $c0
    ld [$db4f], a
    call Call_058_5fa6
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    ld a, $01
    ld [$db4e], a
    ld a, $30
    ld [$db4f], a
    call Call_058_5fa6
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    ld a, $01
    ld [$db4e], a
    ld a, $c0
    ld [$db4f], a
    call Call_058_5fa6
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    ld a, $01
    ld [$db4e], a
    ld a, $0c
    ld [$db4f], a
    call Call_058_5fa6
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    ld a, $01
    ld [$db4e], a
    ld a, $c0
    ld [$db4f], a
    call Call_058_6043
    ret


    call Call_058_654d
    ret z

    call Call_058_6629
    ret z

    call Call_058_5e19
    ld a, $06
    ld [$db4e], a
    ld a, $0c
    ld [$db4f], a
    call Call_058_6043
    ret


    ld a, [$d9ed]
    rst $00
    rst $18
    ld d, e
    ld e, $54
    daa
    ld d, h
    pop de
    ld d, h
    jp nz, $0755

    ld d, a

Jump_058_53df:
    ld a, [$c86c]
    or a
    call nz, Call_058_5c18
    ld a, [$db88]
    cp $08
    jr z, jr_058_5411

    ld e, a
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_058_5403

    inc e
    ld a, e
    ld [$db88], a
    jr jr_058_541d

jr_058_5403:
    ld a, e
    ld [$db88], a
    ld hl, $d9ed
    inc [hl]
    xor a
    ld [$d9ee], a
    jr jr_058_541d

jr_058_5411:
    ld hl, $d9ed
    inc [hl]
    ld hl, $d9ed
    inc [hl]
    ld hl, $d9ed
    inc [hl]

jr_058_541d:
    ret


    ld hl, $5700
    rst $10
    ret


    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor a
    ld [$dd69], a
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_058_5478

    ld a, [$db88]
    call Call_000_2f76
    jr nc, jr_058_545b

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $3a
    ld [hl+], a
    ld a, [$db88]
    ld [hl], a
    jr jr_058_5478

jr_058_545b:
    ld a, [$c88b]
    or a
    call nz, Call_058_5a20
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    call z, Call_058_54ce
    call Call_058_5498

jr_058_5478:
    call Call_058_5a40
    call Call_058_5ba1
    ld a, [$db88]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $02
    ld [hl], a
    xor a
    ld [$d9ed], a
    ld hl, $db88
    inc [hl]
    jp Jump_058_53df


Call_058_5498:
    ld a, [$d9ed]
    cp $16
    jr c, jr_058_54b1

    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl-], a
    jr jr_058_54be

jr_058_54b1:
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_058_54be:
    ld a, [hl]
    ld [$db8a], a
    ld hl, $401d
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    call RST_08
    ret


Call_058_54ce:
    ld [hl], $3a
    ret


    ld hl, $db79
    ld bc, $0009
    ld a, $ff
    call Call_000_12c7
    ld hl, $db4c
    ld bc, $0009
    ld a, $ff
    call Call_000_12c7
    ld hl, $db61
    ld bc, $0010
    ld a, $00
    call Call_000_12c7
    xor a
    ld [$db82], a
    ld [$db55], a
    ld hl, $db61
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld de, $0800

Jump_058_5507:
    push de
    ld a, [$c86c]
    or a
    call nz, Call_058_5c18
    pop de
    ld a, e
    call Call_000_2fa5
    jr c, jr_058_5587

    ld a, e
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jr nz, jr_058_5587

    ld a, e
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, e
    call Call_058_5662
    ld a, b
    or a
    jr nz, jr_058_5543

    ld a, c
    cp $02
    jr nc, jr_058_5543

    ld bc, $0002

jr_058_5543:
    ld a, e
    call Call_058_56cf
    jr c, jr_058_5561

    ld a, e
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $55
    call z, Call_058_55b9
    cp $56
    call z, Call_058_55be
    jr jr_058_5565

jr_058_5561:
    ld a, b
    add $06
    ld b, a

jr_058_5565:
    ld hl, $db5e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db55]
    ld hl, $db4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], e
    ld hl, $db55
    inc [hl]
    ld hl, $db5e
    inc [hl]
    ld hl, $db5e
    inc [hl]

jr_058_5587:
    inc e
    dec d
    jp nz, Jump_058_5507

    ld a, [$c86c]
    or a
    jr nz, jr_058_55b3

    ld a, [$db77]
    cp $ff
    jr z, jr_058_55b3

    ld bc, $0200
    ld hl, $db5e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$db55]
    ld hl, $db4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $10

jr_058_55b3:
    ld hl, $d9ed
    inc [hl]
    jr jr_058_55c2

Call_058_55b9:
    ld a, b
    add $02
    ld b, a
    ret


Call_058_55be:
    ld bc, $0001
    ret


jr_058_55c2:
    ld d, $08

jr_058_55c4:
    ld hl, $db61
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $db63
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $00

jr_058_55da:
    call Call_000_2f45
    jr c, jr_058_5615

    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld [$db58], a
    ld a, b
    ld [$db59], a
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, [$db56]
    ld [hl+], a
    ld a, [$db57]
    ld [hl+], a
    ld a, [$db58]
    ld [hl+], a
    ld a, [$db59]
    ld [hl], a
    ld a, e
    ld hl, $db4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld [hl-], a
    ld [hl], b

jr_058_5615:
    inc e
    ld a, e
    cp d
    jr z, jr_058_5635

    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_058_55da

jr_058_5635:
    dec d
    jr nz, jr_058_55c4

    ld a, [$db82]
    ld de, $db79
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [$db82]
    ld hl, $db4c
    ld b, $08

jr_058_564c:
    ld a, [hl+]
    cp $ff
    jr z, jr_058_5656

    ld [de], a
    inc de
    dec b
    jr nz, jr_058_564c

jr_058_5656:
    ld a, $00
    ld [$db82], a
    ld hl, $d9ed
    inc [hl]
    jp Jump_058_5707


Call_058_5662:
    push hl
    push de
    push af
    push bc
    call Call_058_5c3e
    ld hl, $0001
    pop bc
    ld a, b
    or c
    jr nz, jr_058_5674

    ld bc, $0001

jr_058_5674:
    ld d, b
    ld e, c
    srl b
    rr c
    srl b
    rr c
    add hl, bc
    srl b
    rr c
    srl b
    rr c
    add hl, bc
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld b, h
    ld c, l
    ld a, [wRNG1]
    ld l, a
    ld a, [wRNG2]
    ld h, a
    ld a, h
    and $03
    ld h, a

jr_058_569c:
    call Call_000_2f45
    jr z, jr_058_56ab

    jr c, jr_058_56ab

    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr jr_058_569c

jr_058_56ab:
    add hl, de
    ld b, h
    ld c, l
    pop af
    ld e, a
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $55
    jr nz, jr_058_56c5

    ld a, b
    add $02
    ld b, a
    jr jr_058_56cc

jr_058_56c5:
    cp $56
    jr nz, jr_058_56cc

    ld bc, $0000

jr_058_56cc:
    pop de
    pop hl
    ret


Call_058_56cf:
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $2a
    jr z, jr_058_5705

    cp $7f
    jr z, jr_058_5705

    cp $88
    jr z, jr_058_5705

    cp $89
    jr z, jr_058_5705

    cp $8c
    jr z, jr_058_5705

    cp $8d
    jr z, jr_058_5705

    cp $8e
    jr z, jr_058_5705

    cp $8f
    jr z, jr_058_5705

    cp $90
    jr z, jr_058_5705

    cp $dc
    jr z, jr_058_5705

    xor a
    jr jr_058_5706

jr_058_5705:
    scf

jr_058_5706:
    ret


Jump_058_5707:
    xor a
    ld [$d9ed], a
    ld [$db82], a
    ld [$db88], a
    ld [$db89], a
    ld [$db8a], a
    ld hl, $d9ec
    inc [hl]
    ret


    push hl
    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [wRNG1]
    and $07
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_058_5745

    ld a, [bc]
    cp $ff
    jr nz, jr_058_5745

    ld a, $3a

jr_058_5745:
    ld c, a
    pop hl
    ld [hl], c
    ret


    ld a, $02
    ld [$d9f0], a
    ld a, [$c86c]
    or a
    jr z, jr_058_5766

    ld a, [$c863]
    bit 1, a
    jr z, jr_058_5766

    ld a, [$db89]
    bit 2, a
    ret nz

    ld a, [$db89]
    jr jr_058_5771

jr_058_5766:
    ld a, [$db89]
    bit 2, a
    ret z

    ld a, [$db89]
    sub $04

jr_058_5771:
    cp $02
    jr z, jr_058_5783

    cp $01
    jr z, jr_058_577e

    ld hl, $9000
    jr jr_058_5786

jr_058_577e:
    ld hl, $9240
    jr jr_058_5786

jr_058_5783:
    ld hl, $9480

jr_058_5786:
    ld c, $24

jr_058_5788:
    ld b, $08

jr_058_578a:
    di

jr_058_578b:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_058_578b

    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ei
    dec b
    jr nz, jr_058_578a

    dec c
    jr nz, jr_058_5788

    ld a, $05
    ld [$d9ed], a
    ret


    ld a, [$db78]
    cp $c2
    jr c, jr_058_57e6

    cp $c7
    jr nc, jr_058_57e6

    ld b, a
    ld a, $01
    ld [$c822], a
    ld a, [$db77]
    cp $04
    jr nc, jr_058_57c2

    call Call_058_59cf
    jp Jump_058_58f8


jr_058_57c2:
    jp Jump_058_58e8


    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    jr nz, jr_058_57f4

    inc hl
    bit 4, [hl]
    jr nz, jr_058_57fa

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

jr_058_57e6:
    ld hl, $5806
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4c], a
    ret


jr_058_57f4:
    ld a, $33
    ld [$db4c], a
    ret


jr_058_57fa:
    ld a, $4f
    ld [$db4c], a
    ret


    ld a, $ff
    ld [$db4c], a
    ret


    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_058_5879

    ld [hl-], a
    inc [hl]
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    dec [hl]
    inc h
    inc h
    ld [hl], $37
    jr c, jr_058_5895

    ld a, [hl-]
    inc h
    inc h
    dec sp
    inc a
    dec a
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    ld a, $3f
    ld b, b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec h
    dec h
    dec h
    dec h
    ld h, $41
    ld b, h
    ld h, $42

jr_058_5879:
    inc h
    inc h
    ld h, $26
    ld b, e
    ld h, $45
    ld b, l
    ld b, [hl]
    inc h
    ld c, b
    ld [hl+], a
    ld d, b
    daa
    daa
    daa
    ld [hl], b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld d, c
    ld d, d
    ld c, d
    ld c, e
    ld d, e
    jr z, @+$56

jr_058_5895:
    ld d, [hl]
    ld d, l
    ld h, $4c
    ld c, l
    ld h, $4e
    ld h, $2a
    jr jr_058_58c2

    ld [hl+], a
    ld d, a
    ld e, b
    ld e, h
    ld e, c
    ld e, d
    ld e, e
    add hl, hl
    ld l, a
    rst $38
    rst $38
    ld [hl], b
    ld [hl], c
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld [hl], h
    ld [hl], l
    rst $38
    rst $38
    ld [hl], a
    ld e, l
    ld e, l
    ld e, a
    ld h, b
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l

jr_058_58c2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    inc hl
    inc h
    inc h
    inc h
    inc h
    inc hl
    add hl, hl
    inc hl
    ld b, h
    ld h, a
    ld l, b
    rst $38
    ld l, d

Jump_058_58e8:
    ld a, [$db89]
    push af
    ld a, $04
    ld [$db89], a
    call Call_058_5955
    pop af
    ld [$db89], a

Jump_058_58f8:
    ld a, [$db78]
    cp $c5
    jr nz, jr_058_5907

    ld a, [$dd72]
    add $03
    ld [$dd72], a

jr_058_5907:
    ld a, [$dd72]
    ld hl, $5918
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db4c], a
    ret


    nop
    ld bc, $0002
    ld bc, $cd02
    dec bc
    ld e, h
    cp $04
    call nc, Call_058_593d
    ld a, [$dd72]
    ld hl, $5937
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c823], a
    ret


    inc bc
    dec b
    rlca
    inc b
    ld b, $08

Call_058_593d:
    ld hl, $c180
    jr jr_058_5945

Call_058_5942:
    ld hl, $c1a0

jr_058_5945:
    ld a, [hl]
    cp $f0
    jr z, jr_058_594d

    inc hl
    jr jr_058_5945

jr_058_594d:
    dec hl
    ld a, [hl]
    cp $24
    ret nc

    ld [hl], $f0
    ret


Call_058_5955:
    xor a
    ld [$dd72], a
    ld [$dd73], a
    ld a, [$db89]
    and $04
    ld c, a
    ld b, $03
    ld a, [$c86c]
    or a
    jr nz, jr_058_596f

    ld a, c
    cp $04
    jr nc, jr_058_5988

jr_058_596f:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_5979

    ld hl, $dd72
    inc [hl]

jr_058_5979:
    inc c
    dec b
    jr nz, jr_058_596f

    ld a, [$dd72]
    dec a
    or a
    jr z, jr_058_59d8

    ld a, $01
    jr jr_058_59d8

jr_058_5988:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_59b9

    ld hl, $dd72
    inc [hl]
    ld hl, $dd73
    ld a, [hl]
    or a
    jr nz, jr_058_59a8

    ld a, c
    ld de, $dc3c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld d, a
    inc [hl]
    jr jr_058_59b9

jr_058_59a8:
    push bc
    ld a, c
    ld bc, $dc3c
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    pop bc
    cp d
    jr z, jr_058_59b9

    inc [hl]

jr_058_59b9:
    inc c
    dec b
    jr nz, jr_058_5988

    ld a, [$dd72]
    cp $01
    jr z, jr_058_59cf

    ld a, [$dd73]
    cp $01
    jr z, jr_058_59d3

    ld a, $02
    jr jr_058_59d8

Call_058_59cf:
jr_058_59cf:
    ld a, $00
    jr jr_058_59d8

jr_058_59d3:
    call Call_058_5942
    ld a, $01

jr_058_59d8:
    ld [$dd72], a
    ret


    ld hl, $c180
    ld a, [$c86c]
    or a
    jr nz, jr_058_59f1

    ld a, [$db89]
    cp $03
    jr c, jr_058_59f1

    call Call_058_5a02
    jr jr_058_59fe

jr_058_59f1:
    push hl
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    pop hl
    call Call_000_0c80

jr_058_59fe:
    call Call_058_5955
    ret


Call_058_5a02:
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


Call_058_5a20:
    call Call_058_5c3e
    ld a, [$c88c]
    or a
    jr z, jr_058_5a2e

    ld hl, wRNG1
    cp [hl]
    ret c

jr_058_5a2e:
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c88d]
    ld [hl], a
    ret


Call_058_5a40:
    ld a, [$db88]
    call Call_000_2f76
    ret c

    ld a, [$c86c]
    or a
    jr z, jr_058_5a5a

    call Call_058_5c18
    ld a, [$db88]
    and $03
    cp $03
    ret z

    jr jr_058_5a63

jr_058_5a5a:
    ld a, [$db88]
    cp $03
    ret nc

    call Call_058_5c3e

jr_058_5a63:
    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl+]
    and $0c
    ret nz

    ld a, [hl]
    and $0c
    jp nz, Jump_058_5b1e

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $12
    ret c

    cp $14
    ret z

    cp $1b
    ret z

    cp $1e
    jr c, jr_058_5afb

    cp $20
    jr z, jr_058_5afb

    cp $21
    jr z, jr_058_5afb

    cp $2b
    ret c

    cp $32
    ret z

    cp $37
    jr c, jr_058_5b09

    cp $3a
    jr z, jr_058_5aed

    cp $44
    ret c

    cp $4f
    ret z

    cp $52
    jr c, jr_058_5aed

    cp $55
    jr z, jr_058_5aed

    cp $67
    ret c

    cp $6a
    jr c, jr_058_5aed

    cp $77
    jr z, jr_058_5b1e

    cp $7e
    jr c, jr_058_5afb

    cp $81
    jr z, jr_058_5b09

    cp $82
    jr z, jr_058_5afb

    cp $8c
    jr z, jr_058_5b10

    cp $8d
    jr z, jr_058_5af4

    cp $8e
    jr z, jr_058_5af4

    cp $90
    jr z, jr_058_5af4

    ret c

    cp $93
    jr c, jr_058_5afb

    cp $96
    jr c, jr_058_5b09

    cp $d6
    ret c

    cp $d9
    jr c, jr_058_5aed

    ret


jr_058_5aed:
    ld hl, $dc44
    ld d, $01
    jr jr_058_5b25

jr_058_5af4:
    ld hl, $dc44
    ld d, $02
    jr jr_058_5b63

jr_058_5afb:
    ld hl, $dc4c
    ld d, $04
    jr jr_058_5b25

Call_058_5b02:
    ld hl, $dc4c
    ld d, $08
    jr jr_058_5b63

jr_058_5b09:
    ld hl, $dc54
    ld d, $10
    jr jr_058_5b25

jr_058_5b10:
    ld hl, $dc54
    ld d, $20
    jr jr_058_5b63

Call_058_5b17:
    ld hl, $dc5c
    ld d, $40
    jr jr_058_5b25

Jump_058_5b1e:
jr_058_5b1e:
    ld hl, $dc5c
    ld d, $80
    jr jr_058_5b63

jr_058_5b25:
    ld a, [$db88]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $81
    ret c

    cp $a2
    jr c, jr_058_5b40

    cp $c3
    jr c, jr_058_5b44

    cp $e4
    jr c, jr_058_5b48

    jr jr_058_5b4c

jr_058_5b40:
    ld b, $01
    jr jr_058_5b4e

jr_058_5b44:
    ld b, $02
    jr jr_058_5b4e

jr_058_5b48:
    ld b, $04
    jr jr_058_5b4e

jr_058_5b4c:
    ld b, $08

jr_058_5b4e:
    ld a, [wRNG1]
    cp b
    ret nc

    ld a, [$db88]
    ld hl, $db42
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or d
    ld [hl], a
    ret


jr_058_5b63:
    ld a, [$db88]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $80
    ret nc

    cp $60
    jr nc, jr_058_5b7e

    cp $3f
    jr nc, jr_058_5b82

    cp $1e
    jr nc, jr_058_5b86

    jr jr_058_5b8a

jr_058_5b7e:
    ld b, $02
    jr jr_058_5b8c

jr_058_5b82:
    ld b, $04
    jr jr_058_5b8c

jr_058_5b86:
    ld b, $08
    jr jr_058_5b8c

jr_058_5b8a:
    ld b, $10

jr_058_5b8c:
    ld a, [wRNG1]
    cp b
    ret nc

    ld a, [$db88]
    ld hl, $db42
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or d
    ld [hl], a
    ret


Call_058_5ba1:
    ld a, [$db88]
    call Call_000_2f76
    ret c

    ld a, [$c86c]
    or a
    jr z, jr_058_5bbb

    call Call_058_5c18
    ld a, [$db88]
    and $03
    cp $03
    ret z

    jr jr_058_5bc4

jr_058_5bbb:
    ld a, [$db88]
    cp $03
    ret nc

    call Call_058_5c3e

jr_058_5bc4:
    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl+]
    and $0c
    ret nz

    ld a, [hl]
    and $0c
    ret nz

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $90
    jr z, jr_058_5c07

    cp $12
    jr c, jr_058_5c03

    cp $3a
    jr z, jr_058_5c03

    cp $44
    ret c

    cp $52
    jr c, jr_058_5c03

    cp $55
    ret c

    cp $6a
    jr c, jr_058_5c03

    cp $d6
    ret c

    cp $da
    ret nc

jr_058_5c03:
    call Call_058_5b17
    ret


jr_058_5c07:
    call Call_058_5b02
    ret


    ld a, [$c863]
    bit 1, a
    ld a, [$db89]
    ret z

    ld a, [$db88]
    ret


Call_058_5c18:
jr_058_5c18:
    push hl
    ld a, [$c1ed]
    ld l, a
    ld a, [$c1ee]
    ld h, a
    ld a, l
    ld [wRNG1], a
    ld a, h
    ld [wRNG2], a
    call GenerateRNG
    ld a, [wRNG1]
    ld l, a
    ld a, [wRNG2]
    ld h, a
    ld a, l
    ld [$c1ed], a
    ld a, h
    ld [$c1ee], a
    pop hl
    ret


Call_058_5c3e:
    ld a, [$c86c]
    or a
    jr nz, jr_058_5c18

    call GenerateRNG
    ret


    call Call_058_5498
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db8a], a
    ld a, [hl]
    ld [$db89], a
    ld a, [$d9ed]
    cp $17
    jr z, jr_058_5c6e

    ld a, $02
    ld [$d9ef], a
    jr jr_058_5c73

jr_058_5c6e:
    ld a, $01
    ld [$d9ef], a

jr_058_5c73:
    xor a
    ld [$d9ed], a
    ld a, $02
    ld [$d9ee], a
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    ret nz

    ld a, [$dd72]
    or a
    ret nz

    ld hl, $d9ee
    inc [hl]
    ret


Call_058_5c96:
    push hl
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_058_5ccf

    ld a, b
    cp $03
    jr c, jr_058_5cd6

    and $03
    cp $03
    jr z, jr_058_5cde

    ld a, b
    sub $04
    ld hl, $da03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_058_5cb9:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da23]
    ld c, a
    ld a, [$da24]
    ld b, a
    jr jr_058_5ced

jr_058_5ccf:
    ld a, b
    and $03
    cp $03
    jr z, jr_058_5cde

jr_058_5cd6:
    ld hl, $cb1b
    call Call_000_224f
    jr jr_058_5ced

jr_058_5cde:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_058_5cb9

jr_058_5ced:
    pop hl
    ret


Call_058_5cef:
    ld hl, $db58
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, $00
    ld [$db60], a
    ld hl, $db56
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0201

jr_058_5d08:
    push hl
    push de
    push bc
    call Call_058_5c3e
    ld a, [$db60]
    ld hl, $db50
    and $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, e
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    pop bc
    pop de
    pop hl
    jr c, jr_058_5d50

    jr nz, jr_058_5d61

    push hl
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    call Call_000_2f45
    jr c, jr_058_5d61

    jr nz, jr_058_5d5b

    ld a, [wRNG1]
    cp $80
    jr c, jr_058_5d61

    jr jr_058_5d5b

jr_058_5d50:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a

jr_058_5d5b:
    ld h, b
    ld l, c
    ld a, e
    ld [$db60], a

jr_058_5d61:
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    inc e
    dec d
    jr nz, jr_058_5d08

    ret


Call_058_5d86:
    ld hl, $db58
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, $00
    ld [$db60], a
    ld hl, $db56
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0201

jr_058_5d9f:
    push hl
    push de
    push bc
    call Call_058_5c3e
    ld a, [$db60]
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, e
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    pop bc
    pop de
    pop hl
    jr c, jr_058_5de3

    jr nz, jr_058_5df4

    push hl
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    call Call_000_2f45
    jr c, jr_058_5dee

    jr nz, jr_058_5df4

    ld a, [wRNG1]
    cp $80
    jr c, jr_058_5df4

    jr jr_058_5dee

jr_058_5de3:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a

jr_058_5dee:
    ld h, b
    ld l, c
    ld a, e
    ld [$db60], a

jr_058_5df4:
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    inc e
    dec d
    jr nz, jr_058_5d9f

    ret


Call_058_5e19:
    ld hl, $db56
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ret


Call_058_5e2f:
    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    and $22
    ret


Call_058_5e3a:
    ld a, [$db60]
    ld c, a
    ld a, [$db88]
    and $04
    xor $04
    add c
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
    ret


Call_058_5e5b:
    call Call_058_5e75
    ld b, $03
    ld d, $00

jr_058_5e62:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_5e6d

    ld a, c
    ld [hl+], a
    inc d
    jr jr_058_5e70

jr_058_5e6d:
    call Call_058_66e7

jr_058_5e70:
    inc c
    dec b
    jr nz, jr_058_5e62

    ret


Call_058_5e75:
    ld hl, $db4c
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ret


Call_058_5e81:
    xor a
    ld hl, $db50
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_058_5cef
    ld a, [$db60]
    ld hl, $db4c
    ld de, $db4c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    ld a, [hl]
    ld [de], a
    ld a, b
    ld [hl], a
    ld hl, $db56
    ld a, [$db60]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    push hl
    ld e, a
    ld hl, $db56
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, d
    ld [hl-], a
    ld [hl], e
    pop hl
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


Call_058_5ebf:
    call Call_058_5d86
    ld a, [$db60]
    ld hl, $db4e
    ld de, $db4c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    ld a, [hl]
    ld [de], a
    ld a, b
    ld [hl], a
    ld hl, $db56
    ld a, [$db60]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    push hl
    ld e, a
    ld hl, $db5a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, d
    ld [hl-], a
    ld [hl], e
    pop hl
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


    ld a, l
    add c
    ld l, a
    ld a, h
    adc b
    ld h, a
    xor a
    adc $00
    ld c, a
    ret


Call_058_5f01:
    ld a, c
    add e
    ld c, a
    ld a, b
    adc d
    ld b, a
    xor a
    adc $00
    ld e, a
    ret


Call_058_5f0c:
jr_058_5f0c:
    ld a, c
    and $03
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, [hl]
    ld a, [$db4d]
    cp d
    jr c, jr_058_5f3b

    jr nz, jr_058_5f33

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_5f3b

jr_058_5f33:
    ld a, c
    ld [$db4c], a
    ld a, d
    ld [$db4d], a

jr_058_5f3b:
    inc c
    dec b
    jr nz, jr_058_5f0c

    ld a, [$db4c]
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
    ret


Call_058_5f57:
    push hl
    push bc
    ld a, c
    call Call_000_2fa5
    pop bc
    jr c, jr_058_5f77

    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, c
    call Call_000_2fd3
    add hl, de
    jr nc, jr_058_5f7f

    jr jr_058_5f7c

jr_058_5f77:
    ld a, $ff
    ld [$db4c], a

jr_058_5f7c:
    ld hl, $ffff

jr_058_5f7f:
    ld d, h
    ld e, l
    pop hl
    ret


Call_058_5f83:
    push hl
    push bc
    ld a, c
    call Call_000_2fa5
    pop bc
    jr c, jr_058_5f9c

    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_058_5fa4

jr_058_5f9c:
    ld a, $ff
    ld [$db4c], a
    ld de, $ffff

jr_058_5fa4:
    pop hl
    ret


Call_058_5fa6:
    ld a, c
    ld [$db60], a
    push bc
    ld a, [$db4e]
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    call Call_058_5f57
    ld a, [$db4c]
    ld hl, $db4f
    and [hl]
    ld [$db50], a
    ld hl, $db56
    ld a, e
    ld [hl+], a
    ld [hl], d
    inc c
    dec b

jr_058_5fcf:
    push bc
    ld a, [$db4e]
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    call Call_058_5f57
    ld a, [$db4c]
    ld hl, $db4f
    and [hl]
    ld h, a
    ld a, [$db50]
    cp h
    jr c, jr_058_6027

    jr nz, jr_058_6013

    ld hl, $db57
    ld a, [hl-]
    cp d
    jr c, jr_058_6027

    jr nz, jr_058_6013

    ld a, [hl]
    cp e
    jr c, jr_058_6027

    jr nz, jr_058_6013

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_6027

jr_058_6013:
    ld a, [$db4c]
    ld hl, $db4f
    and [hl]
    ld [$db50], a
    ld hl, $db56
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, c
    ld [$db60], a

jr_058_6027:
    inc c
    dec b
    jr nz, jr_058_5fcf

    ld a, [$db60]
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
    ret


Call_058_6043:
    ld a, c
    ld [$db60], a
    push bc
    ld a, [$db4e]
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    call Call_058_5f83
    ld a, [$db4c]
    ld hl, $db4f
    and [hl]
    ld [$db50], a
    ld hl, $db56
    ld a, e
    ld [hl+], a
    ld [hl], d
    inc c
    dec b

jr_058_606c:
    push bc
    ld a, [$db4e]
    ld [$db4c], a
    ld a, c
    ld [$db89], a
    ld hl, $5206
    rst $10
    pop bc
    call Call_058_5f83
    ld a, [$db4c]
    ld hl, $db4f
    and [hl]
    ld h, a
    ld a, [$db50]
    cp h
    jr c, jr_058_60c4

    jr nz, jr_058_60b0

    ld hl, $db57
    ld a, [hl-]
    cp d
    jr c, jr_058_60c4

    jr nz, jr_058_60b0

    ld a, [hl]
    cp e
    jr c, jr_058_60c4

    jr nz, jr_058_60b0

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_60c4

jr_058_60b0:
    ld a, [$db4c]
    ld hl, $db4f
    and [hl]
    ld [$db50], a
    ld hl, $db56
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, c
    ld [$db60], a

jr_058_60c4:
    inc c
    dec b
    jr nz, jr_058_606c

    ld a, [$db60]
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
    ret


Call_058_60e0:
    ld a, h
    or a
    jr nz, jr_058_60ee

    ld a, l
    or a
    jr z, jr_058_60ec

    cp $01
    jr nz, jr_058_60ee

jr_058_60ec:
    scf
    ret


jr_058_60ee:
    ld a, $02
    cp $01
    ret


Call_058_60f3:
    push hl
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_058_612c

    ld a, b
    cp $03
    jr c, jr_058_6132

    and $03
    cp $03
    jr z, jr_058_613a

    ld a, b
    sub $04
    ld hl, $da03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_058_6116:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da25]
    ld c, a
    ld a, [$da26]
    ld b, a
    jr jr_058_6149

jr_058_612c:
    and $03
    cp $03
    jr z, jr_058_613a

jr_058_6132:
    ld hl, $cb1d
    call Call_000_224f
    jr jr_058_6149

jr_058_613a:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_058_6116

jr_058_6149:
    pop hl
    ret


    push hl
    ld bc, $0000
    ld a, [$db88]
    and $04
    xor $04
    ld e, a
    ld d, $03
    xor a
    ld [$db50], a

jr_058_615d:
    ld a, e
    call Call_000_2fa5
    jr c, jr_058_6178

    ld a, e
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $db50
    inc [hl]

jr_058_6178:
    inc e
    dec d
    jr nz, jr_058_615d

    ld a, [$db50]
    ld h, b
    ld l, c
    call Call_000_1e0d
    ld b, h
    ld c, l
    pop hl
    ret


Call_058_6188:
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    xor $04
    ld [hl], a
    ret


Call_058_619a:
    ld hl, $db58
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, $00
    ld [$db60], a
    ld hl, $db56
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0201

jr_058_61b3:
    push hl
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    call Call_000_2f45
    jr c, jr_058_61d9

    jr nz, jr_058_61df

    push af
    push bc
    push de
    push hl
    call Call_058_5c3e
    pop hl
    pop de
    pop bc
    pop af
    ld a, [wRNG1]
    cp $80
    jr c, jr_058_61df

jr_058_61d9:
    ld h, b
    ld l, c
    ld a, e
    ld [$db60], a

jr_058_61df:
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    inc e
    dec d
    jr nz, jr_058_61b3

    ld a, [$db60]
    ld c, a
    ld a, [$db88]
    and $04
    xor $04
    add c
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
    ret


Call_058_6224:
    ld a, $00
    ld [$db60], a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    call Call_000_2f45
    jr c, jr_058_624b

    ld a, $01
    ld [$db60], a
    ld a, [$db5a]
    ld l, a
    ld a, [$db5b]
    ld h, a

jr_058_624b:
    ld a, [$db5c]
    ld c, a
    ld a, [$db5d]
    ld b, a
    call Call_000_2f45
    jr c, jr_058_625d

    ld a, $02
    ld [$db60], a

jr_058_625d:
    ld a, [$db60]
    ld c, a
    ld a, [$db88]
    and $04
    add c
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
    ret


Call_058_627c:
    ld hl, $db56
    ld a, l
    ld [$db5e], a
    ld a, h
    ld [$db5f], a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ret


Call_058_6292:
    ld a, [$db5e]
    ld l, a
    ld a, [$db5f]
    ld h, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ld a, [$db5e]
    add $01
    ld [$db5e], a
    ld a, [$db5f]
    adc $00
    ld [$db5f], a
    ret


Jump_058_62bf:
    ld a, [$db88]
    and $04
    xor $04
    ld [$db4c], a
    call Call_058_62d9
    ret


    ld a, [$db88]
    and $04
    ld [$db4c], a
    call Call_058_62d9
    ret


Call_058_62d9:
    ld a, [$db4c]
    ld c, a
    ld b, $03

jr_058_62df:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_62ed

    inc c
    dec b
    jr nz, jr_058_62df

    ld a, [$db4c]
    ld c, a

jr_058_62ed:
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    ld [hl], a
    ret


    ld a, [$dd69]
    or a
    jr nz, jr_058_632a

    ld a, [$db88]
    and $04
    xor $04
    ld c, a

jr_058_630b:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_631b

    ld a, c
    and $03
    cp $03
    jr z, jr_058_632a

    inc c
    jr jr_058_630b

jr_058_631b:
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ret


jr_058_632a:
    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld c, a
    ld a, c
    and $03
    cp $03
    jr c, jr_058_634f

    ld a, c
    and $04
    xor $04
    ld b, a
    ld a, [$db88]
    and $04
    cp b
    ret nz

    ld [hl], b
    ret


jr_058_634f:
    inc c

jr_058_6350:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_631b

    ld a, c
    and $03
    cp $03
    ret z

    inc c
    jr jr_058_6350

    ld a, [$db88]
    and $04
    ld c, a
    jr jr_058_62ed

    ld a, [$db88]
    ld hl, $dced
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db88]
    ld [hl], a
    ret


    ld a, [wRNG1]
    ld c, a
    and $07
    call Call_000_2fa5
    jr nc, jr_058_63b4

    ld a, [wRNG2]
    ld b, a
    and $07
    call Call_000_2fa5
    jr nc, jr_058_63b7

    or c
    and $07
    call Call_000_2fa5
    ld c, a
    jr nc, jr_058_63b4

    or b
    and $07
    call Call_000_2fa5
    jr nc, jr_058_63ba

    ld a, b
    add c
    and $07
    call Call_000_2fa5
    jr nc, jr_058_63be

jr_058_63a9:
    dec b
    ld a, b
    and $07
    call Call_000_2fa5
    jr c, jr_058_63a9

    jr jr_058_63b7

jr_058_63b4:
    ld a, c
    jr jr_058_63c0

jr_058_63b7:
    ld a, b
    jr jr_058_63c0

jr_058_63ba:
    ld a, c
    or b
    jr jr_058_63c0

jr_058_63be:
    ld a, b
    add c

jr_058_63c0:
    and $07
    ld c, a
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db8a], a
    ld [hl], c
    ret


    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db8a], a
    ld a, [$db88]
    ld [hl], a
    ret


Call_058_63ec:
    ld c, e
    ld b, $03
    ld d, $00

jr_058_63f1:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_63f8

    inc d

jr_058_63f8:
    inc c
    dec b
    jr nz, jr_058_63f1

    ret


Call_058_63fd:
    call Call_058_5c3e
    ld a, [wRNG1]
    ld b, a
    ld a, d
    push de
    call Call_000_1dfb
    pop bc
    inc a
    ld e, a

jr_058_640c:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_6415

jr_058_6412:
    inc c
    jr jr_058_640c

jr_058_6415:
    dec e
    jr nz, jr_058_6412

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db8a], a
    ld a, c
    ld [hl], a
    ret


Call_058_642c:
    ld a, [$db88]
    and $04
    xor $04
    ld e, a
    call Call_058_63ec
    call Call_058_63fd
    ret


    call Call_058_5c3e
    ld a, [$db88]
    and $04
    xor $04
    ld b, a
    ld a, [wRNG1]
    and $03
    or b
    ld c, a

jr_058_644d:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_6462

    ld a, c
    sub $01
    ld c, a
    jr c, jr_058_645c

    cp b
    jr nc, jr_058_644d

jr_058_645c:
    ld a, b
    or $03
    ld c, a
    jr jr_058_644d

jr_058_6462:
    ld a, b
    or c
    ld c, a
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db8a], a
    ld a, c
    ld [hl], a
    ret


Call_058_6479:
    ld a, [$db88]
    and $04
    ld e, a
    call Call_058_63ec
    call Call_058_63fd
    ret


    ld a, [$db88]
    and $04
    ld b, a
    ld a, [wRNG1]
    and $03
    or b
    ld c, a
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $30
    jr z, jr_058_64ac

    cp $31
    jr z, jr_058_64ac

    ld a, c
    jr jr_058_64cb

jr_058_64ac:
    ld a, c

jr_058_64ad:
    ld c, a
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_058_64e1

    ld a, c
    sub $01
    jr c, jr_058_64c4

    cp b
    jr nc, jr_058_64ad

jr_058_64c4:
    ld a, [$db88]
    or $03
    jr jr_058_64ad

jr_058_64cb:
    ld c, a
    call Call_000_2fa5
    jr nc, jr_058_64e1

    ld a, c
    sub $01
    ld c, a
    jr c, jr_058_64da

    cp b
    jr nc, jr_058_64cb

jr_058_64da:
    ld a, [$db88]
    or $03
    jr jr_058_64cb

jr_058_64e1:
    ld a, [$db88]
    and $04
    or c
    ld c, a
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db8a], a
    ld a, c
    ld [hl], a
    ret


Call_058_64fc:
jr_058_64fc:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_651f

    call Call_058_6533
    jr nz, jr_058_6524

    pop bc
    push bc
    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    xor $ff
    ld e, a
    ld a, [hl]
    xor $ff
    ld d, a
    jr jr_058_6527

jr_058_651f:
    ld de, $0000
    jr jr_058_6527

jr_058_6524:
    ld de, $0001

jr_058_6527:
    call Call_058_6292
    pop bc
    inc c
    dec b
    jr nz, jr_058_64fc

    call Call_058_619a
    ret


Call_058_6533:
    ld a, c
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld hl, $db4c
    cp [hl]
    ret


Call_058_654d:
    call Call_058_655f
    ret nz

    call Call_058_642c
    xor a
    ret


Call_058_6556:
    call Call_058_655f
    ret nz

    call Call_058_6479
    xor a
    ret


Call_058_655f:
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    ret


Call_058_656e:
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08

jr_058_657b:
    ld a, [hl]
    cp $43
    jr z, jr_058_659b

    cp $5c
    jr c, jr_058_6594

    cp $64
    jr c, jr_058_659b

    cp $6a
    jr c, jr_058_6594

    cp $6e
    jr c, jr_058_659b

    cp $8f
    jr z, jr_058_659b

jr_058_6594:
    inc hl
    inc hl
    dec b
    jr nz, jr_058_657b

    xor a
    ret


jr_058_659b:
    scf
    ret


    push bc
    push de
    push hl
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld e, $00
    ld d, $00

jr_058_65ae:
    ld a, c
    push de
    call Call_000_2fa5
    pop de
    jr c, jr_058_65cf

    inc e
    ld a, c
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl+]
    and $0c
    jr nz, jr_058_65ce

    inc hl
    ld a, [hl+]
    and $28
    jr nz, jr_058_65ce

    ld a, [hl]
    and $07
    jr z, jr_058_65cf

jr_058_65ce:
    inc d

jr_058_65cf:
    inc c
    dec b
    jr nz, jr_058_65ae

    ld a, d
    cp e
    jr z, jr_058_65da

    scf
    jr jr_058_65de

jr_058_65da:
    ld a, $0a
    cp $01

jr_058_65de:
    pop hl
    pop de
    pop bc
    ret


    push hl
    ld a, [$db89]
    call Call_000_2fa5
    jr c, jr_058_6607

    ld a, [$db89]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl+]
    and $0c
    jr nz, jr_058_6607

    inc hl
    ld a, [hl+]
    and $28
    jr nz, jr_058_6607

    ld a, [hl]
    and $07
    jr nz, jr_058_6607

    scf
    jr jr_058_660b

jr_058_6607:
    ld a, $0a
    cp $01

jr_058_660b:
    pop hl
    ret


Call_058_660d:
    push hl
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_6623

    ld a, c
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    jr nz, jr_058_6623

    scf
    jr jr_058_6627

jr_058_6623:
    ld a, $0a
    cp $01

jr_058_6627:
    pop hl
    ret


Call_058_6629:
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    jr z, jr_058_6656

    ld a, [$db88]
    and $03
    cp $03
    jr z, jr_058_6650

    ld a, [$c86c]
    or a
    jr nz, jr_058_6656

    ld a, [$db88]
    cp $04
    jr c, jr_058_6656

jr_058_6650:
    call Call_058_441b
    xor a
    or a
    ret


jr_058_6656:
    ld a, $01
    or a
    ret


Call_058_665a:
    ld a, $00
    ld [$db5e], a
    ld a, $01
    ld [$db5f], a
    ld a, $02
    ld [$db60], a

jr_058_6669:
    ld a, [$db5f]
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db5e]
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr c, jr_058_66b5

    jr nz, jr_058_66bb

    ld a, [$db5f]
    ld hl, $db61
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db5e]
    ld hl, $db61
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr nc, jr_058_66bb

jr_058_66b5:
    ld a, [$db5f]
    ld [$db5e], a

jr_058_66bb:
    ld hl, $db5f
    inc [hl]
    ld a, [$db60]
    dec a
    ld [$db60], a
    jr nz, jr_058_6669

    ld a, [$db5e]
    ld c, a
    ld a, [$db88]
    and $04
    add c
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
    ret


Call_058_66e7:
    push hl
    push de
    ld a, c
    and $03
    cp $02
    jr z, jr_058_6734

    cp $01
    jr z, jr_058_6714

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db58]
    ld e, a
    ld a, [$db59]
    ld d, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a

jr_058_6714:
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [$db5a]
    ld e, a
    ld a, [$db5b]
    ld d, a
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    ld a, e
    ld [$db58], a
    ld a, d
    ld [$db59], a

jr_058_6734:
    pop de
    pop hl
    ret


    ld a, [$db88]
    cp $10
    jr z, jr_058_6750

    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$db4c], a
    call Call_058_6794
    ret


jr_058_6750:
    ld hl, $db78
    ld a, [hl-]
    ld [$db4c], a
    cp $c2
    jr c, jr_058_6794

    cp $c7
    jr nc, jr_058_6794

    ld a, [hl]
    cp $04

Call_058_6762:
    ret c

    and $04
    ld c, a
    ld b, $03
    ld d, $ff

jr_058_676a:
    ld a, c
    call Call_000_2fa5
    jr nc, jr_058_677b

jr_058_6770:
    inc c
    dec b
    jr nz, jr_058_676a

    ld a, d
    cp $ff
    ret z

    ld c, d
    jr jr_058_678d

jr_058_677b:
    ld a, d
    cp $ff
    call z, Call_058_6792
    ld a, c
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    jr nz, jr_058_6770

jr_058_678d:
    ld hl, $db77
    ld [hl], c
    ret


Call_058_6792:
    ld d, c
    ret


Call_058_6794:
jr_058_6794:
    ld a, $00
    ld [$db4d], a
    ld a, $02
    ld [$db4e], a
    push hl
    ld hl, $5400
    rst $10
    pop hl
    ld a, [$db4c]
    and $03
    cp $01
    ret z

jr_058_67ac:
    ld a, [hl]
    call Call_000_2fa5
    ret nc

    ld a, [hl]
    and $03
    cp $02
    ret z

    inc [hl]
    jr jr_058_67ac

    ld a, $14
    ld [$dd26], a
    call Call_058_68a5
    ld a, [$db88]
    call Call_000_2fcc
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    jp c, Jump_058_6859

    ld hl, $dd26
    ld b, $0a
    call Call_058_6918
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    srl b
    rr c
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    add hl, bc
    push hl
    ld a, [$db88]
    call Call_000_2fcc
    pop bc
    call Call_000_2f45
    jr c, jr_058_6859

    ld hl, $dd26
    ld b, $0a
    call Call_058_6918
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    add hl, bc
    push hl
    ld a, [$db88]
    call Call_000_2fcc
    pop bc
    call Call_000_2f45
    jr c, jr_058_6859

    ld hl, $dd26
    ld b, $0a
    call Call_058_6918
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    add hl, hl
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    srl b
    rr c
    add hl, bc
    push hl
    ld a, [$db88]
    call Call_000_2fcc
    pop bc
    call Call_000_2f45
    jr c, jr_058_6859

    ld hl, $dd26
    ld b, $0a
    call Call_058_6918

Jump_058_6859:
jr_058_6859:
    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl+]
    and $0c
    jr nz, jr_058_686e

    inc hl
    inc hl
    ld a, [hl]
    and $03
    jr z, jr_058_6876

jr_058_686e:
    ld hl, $dd26
    ld b, $1e
    call Call_058_6918

jr_058_6876:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_058_6880:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_689b

    ld a, c
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl+]
    and $0c
    jr nz, jr_058_689b

    inc hl
    bit 5, [hl]
    jr nz, jr_058_689b

    inc hl
    bit 2, [hl]
    ret z

jr_058_689b:
    inc c
    dec b
    jr nz, jr_058_6880

    ld a, $01
    ld [$dd26], a
    ret


Call_058_68a5:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_058_68af:
    ld a, c
    call Call_000_2fa5
    jr c, jr_058_68c5

    ld a, c
    ld hl, $dbf3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_058_68c8

jr_058_68c5:
    ld de, $ffff

jr_058_68c8:
    ld a, $03
    sub b
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc c
    dec b
    jr nz, jr_058_68af

    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    call Call_000_2f45
    jr c, jr_058_6903

    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ld h, b
    ld l, c

jr_058_6903:
    ld a, [$db5c]
    ld c, a
    ld a, [$db5d]
    ld b, a
    call Call_000_2f45
    ret c

    ld a, c
    ld [$db56], a
    ld a, b
    ld [$db57], a
    ret


Call_058_6918:
    ld a, [hl]
    add b
    ld [hl], a
    ret nc

    ld a, $ff
    ld [hl], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_058_7959:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
