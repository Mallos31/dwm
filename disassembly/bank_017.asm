; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    rla
    dec e
    ld b, b
    sbc [hl]
    ld b, b
    ret nz

    ld b, c
    ld [hl], d
    ld b, d
    db $10
    ld b, h
    ld a, b
    ld b, h
    ret nc

    ld b, c
    ld a, [c]
    ld b, c
    db $dd
    ld b, [hl]
    ld [bc], a
    ld b, c
    sub d
    ld b, c
    ld [de], a
    ld b, a
    inc sp
    ld b, a
    ld d, c
    ld b, a
    ld a, [$c81d]
    or a
    ret z

    ld a, [$c969]
    or a
    jp nz, Jump_017_4064

    ld hl, $476f
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c925]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $00
    ld b, $04
    call Call_017_46a1
    jp Jump_017_4102


Jump_017_4064:
    ld de, $5215
    ld a, [$c93f]
    cp $02
    jr nz, jr_017_4071

    ld de, $5415

jr_017_4071:
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
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $51f5
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $00
    ld b, $04
    call Call_017_46a1
    jr jr_017_4102

    ld a, [$c969]
    or a
    jp nz, Jump_017_40da

    ld hl, $476f
    ld a, [$c968]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c925]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld hl, $c200
    call Call_000_14cf
    ret


Jump_017_40da:
    ld de, $5215
    ld a, [$c93f]
    cp $02
    jr nz, jr_017_40e7

    ld de, $5415

jr_017_40e7:
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
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c200
    call Call_000_14cf
    ret


Call_017_4102:
Jump_017_4102:
jr_017_4102:
    ld a, [$c81d]
    or a
    ret z

    ld hl, $5655
    ld c, $07
    ld b, $01
    call Call_017_46a1
    ld a, [$c7d1]
    ld l, a
    ld a, [$c7d2]
    ld h, a
    ld a, l
    ld [$c799], a
    ld a, h
    ld [$c79a], a
    ld a, l
    ld [$c7a1], a
    ld a, h
    ld [$c7a2], a
    ld a, l
    ld [$c7a9], a
    ld a, h
    ld [$c7aa], a
    ld a, l
    ld [$c7b1], a
    ld a, h
    ld [$c7b2], a
    ld a, l
    ld [$c7b9], a
    ld a, h
    ld [$c7ba], a
    ld a, l
    ld [$c7c1], a
    ld a, h
    ld [$c7c2], a
    ld a, l
    ld [$c7c9], a
    ld a, h
    ld [$c7ca], a
    ld a, [$c7d5]
    ld l, a
    ld a, [$c7d6]
    ld h, a
    ld a, l
    ld [$c79d], a
    ld a, h
    ld [$c79e], a
    ld a, l
    ld [$c7a5], a
    ld a, h
    ld [$c7a6], a
    ld a, l
    ld [$c7ad], a
    ld a, h
    ld [$c7ae], a
    ld a, l
    ld [$c7b5], a
    ld a, h
    ld [$c7b6], a
    ld a, l
    ld [$c7bd], a
    ld a, h
    ld [$c7be], a
    ld a, l
    ld [$c7c5], a
    ld a, h
    ld [$c7c6], a
    ld a, l
    ld [$c7cd], a
    ld a, h
    ld [$c7ce], a
    ret


    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ld b, $00
    ld hl, $9800

jr_017_41a5:
    ld a, $07
    call Call_000_1ab9
    call Call_000_1ab9
    call Call_000_1ab9
    call Call_000_1ab9
    dec b
    jr nz, jr_017_41a5

    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


    ld a, [$c81d]
    or a
    ret z

    ld hl, $5615
    ld c, $00
    ld b, $08
    call Call_017_46bf
    ret


    ld a, [$c81d]
    or a
    ret z

    ld a, [$c81e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $fd
    ld l, a
    ld a, h
    adc $62
    ld h, a
    ld a, [$c81f]
    ld c, a
    ld b, $01
    call Call_017_46a1
    call Call_017_4102
    ld a, [$c81d]
    or a
    ret z

    ldh a, [$bb]
    and $f8
    ld l, a
    xor a
    sla l
    rla
    sla l
    rla
    ld h, $98
    add h
    ld h, a
    ldh a, [$b7]
    rrca
    rrca
    rrca
    and $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c820]
    ld c, a
    ld a, [$c821]
    ld b, a
    ld a, c
    and $e0
    ld c, a
    add hl, bc
    res 2, h
    ld a, [$c820]
    and $1f
    ld b, a

jr_017_4229:
    call Call_017_4265
    dec b
    jr nz, jr_017_4229

    di
    call Call_000_1aa6
    ld a, $01
    ldh [rVBK], a
    ei
    ld c, $06

jr_017_423a:
    ld b, $06
    push hl

jr_017_423d:
    ld a, [$c81f]
    call Call_000_1aad
    call Call_017_4265
    dec b
    jr nz, jr_017_423d

    pop hl
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
    dec c
    jr nz, jr_017_423a

    di
    call Call_000_1aa6
    ld a, $00
    ldh [rVBK], a
    ei
    ret


Call_017_4265:
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
    ret


    ld a, [$c81d]
    or a
    ret z

    ld hl, $c89e
    ld a, [$c89b]
    cp [hl]
    jp z, Jump_017_4341

    call Call_000_1aa6
    ld a, $80
    ldh [rBCPS], a
    ld hl, $c797
    call Call_017_42ac
    call Call_017_42ac
    call Call_017_42ac
    call Call_017_42ac
    call Call_017_42ac
    call Call_017_42ac
    call Call_017_42ac
    call Call_017_42ac
    ld a, [$c89b]
    ld [$c89e], a
    jp Jump_017_4341


Call_017_42ac:
    push hl
    ld a, [$c89b]
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl]
    ldh [rBCPD], a
    pop hl
    push hl
    ld a, [$c89b]
    srl a
    srl a
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl]
    ldh [rBCPD], a
    pop hl
    push hl
    ld a, [$c89b]
    swap a
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl]
    ldh [rBCPD], a
    pop hl
    push hl
    ld a, [$c89b]
    swap a
    srl a
    srl a
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rBCPD], a
    ld a, [hl]
    ldh [rBCPD], a
    pop hl
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Jump_017_4341:
    ld hl, $c89f
    ld a, [$c89c]
    cp [hl]
    jp z, Jump_017_440b

    call Call_000_1aa6
    ld a, $80
    ldh [rOCPS], a
    ld hl, $c7d7
    call Call_017_4376
    call Call_017_4376
    call Call_017_4376
    call Call_017_4376
    call Call_017_4376
    call Call_017_4376
    call Call_017_4376
    call Call_017_4376
    ld a, [$c89c]
    ld [$c89f], a
    jp Jump_017_440b


Call_017_4376:
    push hl
    ld a, [$c89c]
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rOCPD], a
    ld a, [hl]
    ldh [rOCPD], a
    pop hl
    push hl
    ld a, [$c89c]
    srl a
    srl a
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rOCPD], a
    ld a, [hl]
    ldh [rOCPD], a
    pop hl
    push hl
    ld a, [$c89c]
    swap a
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rOCPD], a
    ld a, [hl]
    ldh [rOCPD], a
    pop hl
    push hl
    ld a, [$c89c]
    swap a
    srl a
    srl a
    and $03
    ld de, $440c
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rOCPD], a
    ld a, [hl]
    ldh [rOCPD], a
    pop hl
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Jump_017_440b:
    ret


    ld [bc], a
    inc b
    nop
    ld b, $fa
    ld d, b
    ret z

    ld b, a
    bit 7, b
    jr nz, jr_017_442e

    ld a, $00
    ld [$c856], a
    ld a, [$c850]
    srl a
    srl a
    ld [$c857], a
    ld [$c858], a
    call Call_000_1bd5
    ret


jr_017_442e:
    ld a, $20
    ld [$c856], a
    ld a, [$c850]
    cpl
    srl a
    srl a
    ld [$c857], a
    ld [$c858], a
    di
    call Call_000_1aa6
    ld a, $80
    ldh [rBCPS], a
    ei
    ld b, $20

jr_017_444c:
    di
    call Call_000_1aa6
    ld a, $ff
    ldh [rBCPD], a
    ld a, $7f
    ldh [rBCPD], a
    ei
    dec b
    jr nz, jr_017_444c

    di
    call Call_000_1aa6
    ld a, $80
    ldh [rOCPS], a
    ei
    ld b, $20

jr_017_4467:
    di
    call Call_000_1aa6
    ld a, $ff
    ldh [rOCPD], a
    ld a, $7f
    ldh [rOCPD], a
    ei
    dec b
    jr nz, jr_017_4467

    ret


    ld a, [$c850]
    bit 7, a
    jr nz, jr_017_44aa

    ld a, [$c858]
    or a
    jr z, jr_017_448a

    dec a
    ld [$c858], a
    ret


jr_017_448a:
    ld a, [$c856]
    add $05
    cp $1f
    jr c, jr_017_4495

    ld a, $1f

jr_017_4495:
    ld [$c856], a
    call Call_017_44d8
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    cp $1f
    jp z, Jump_017_44d3

    ret


jr_017_44aa:
    ld a, [$c858]
    or a
    jr z, jr_017_44b5

    dec a
    ld [$c858], a
    ret


jr_017_44b5:
    ld a, [$c856]
    sub $05
    bit 7, a
    jr z, jr_017_44bf

    xor a

jr_017_44bf:
    ld [$c856], a
    call Call_017_45bb
    ld a, [$c857]
    ld [$c858], a
    ld a, [$c856]
    or a
    jp z, Jump_017_44d3

    ret


Jump_017_44d3:
    xor a
    ld [$c850], a
    ret


Call_017_44d8:
    di
    call Call_000_1aa6
    ld a, $80
    ldh [rBCPS], a
    ei
    ld hl, $c797
    call Call_017_4552
    call Call_017_4552
    call Call_017_4552
    call Call_017_4552
    call Call_017_4552
    call Call_017_4552
    call Call_017_4552
    call Call_017_4552
    di
    call Call_000_1aa6
    ld a, $80
    ldh [rOCPS], a
    ei
    ld hl, $c7d7
    call Call_017_4521
    call Call_017_4521
    call Call_017_4521
    call Call_017_4521
    call Call_017_4521
    call Call_017_4521
    call Call_017_4521
    call Call_017_4521
    ret


Call_017_4521:
    call Call_017_452a
    call Call_017_452a
    call Call_017_452a

Call_017_452a:
    ld a, [$c856]
    ld d, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld de, $0000
    call Call_017_457f
    call Call_017_457f
    call Call_017_457f
    rr b
    rr c
    rr d
    rr e
    di
    call Call_000_1aa6
    ld a, e
    ldh [rOCPD], a
    ld a, d
    ldh [rOCPD], a
    ei
    ret


Call_017_4552:
    call Call_017_455b
    call Call_017_455b
    call Call_017_455b

Call_017_455b:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld de, $0000
    call Call_017_457f
    call Call_017_457f
    call Call_017_457f
    rr b
    rr c
    rr d
    rr e
    di
    call Call_000_1aa6
    ld a, e
    ldh [rBCPD], a
    ld a, d
    ldh [rBCPD], a
    ei
    ret


Call_017_457f:
    push de
    ld a, c
    and $1f
    ld d, a
    ld a, [$c856]
    cp d
    jr nc, jr_017_458b

    ld a, d

jr_017_458b:
    ld e, a
    ld a, c
    and $e0
    or e
    ld c, a
    pop de
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    ret


Call_017_45bb:
    di
    call Call_000_1aa6
    ld a, $80
    ldh [rBCPS], a
    ei
    ld hl, $c797
    call Call_017_4635
    call Call_017_4635
    call Call_017_4635
    call Call_017_4635
    call Call_017_4635
    call Call_017_4635
    call Call_017_4635
    call Call_017_4635
    di
    call Call_000_1aa6
    ld a, $80
    ldh [rOCPS], a
    ei
    ld hl, $c7d7
    call Call_017_4604
    call Call_017_4604
    call Call_017_4604
    call Call_017_4604
    call Call_017_4604
    call Call_017_4604
    call Call_017_4604
    call Call_017_4604
    ret


Call_017_4604:
    call Call_017_460d
    call Call_017_460d
    call Call_017_460d

Call_017_460d:
    ld a, [$c856]
    ld d, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld de, $0000
    call Call_017_4662
    call Call_017_4662
    call Call_017_4662
    rr b
    rr c
    rr d
    rr e
    di
    call Call_000_1aa6
    ld a, e
    ldh [rOCPD], a
    ld a, d
    ldh [rOCPD], a
    ei
    ret


Call_017_4635:
    call Call_017_463e
    call Call_017_463e
    call Call_017_463e

Call_017_463e:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld de, $0000
    call Call_017_4662
    call Call_017_4662
    call Call_017_4662
    rr b
    rr c
    rr d
    rr e
    di
    call Call_000_1aa6
    ld a, e
    ldh [rBCPD], a
    ld a, d
    ldh [rBCPD], a
    ei
    ret


Call_017_4662:
    push de
    ld a, c
    and $1f
    ld d, a
    ld a, [$c856]
    add d
    cp $1f
    jr c, jr_017_4671

    ld a, $1f

jr_017_4671:
    ld e, a
    ld a, c
    and $e0
    or e
    ld c, a
    pop de
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    rr b
    rr c
    rr d
    rr e
    ret


Call_017_46a1:
    ld a, [$c81d]
    or a
    ret z

    ld a, b
    add a
    add a
    add a
    ld b, a
    ld a, c
    add a
    add a
    add a
    ld de, $c797
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_017_46b8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_017_46b8

    ret


Call_017_46bf:
    ld a, [$c81d]
    or a
    ret z

    ld a, b
    add a
    add a
    add a
    ld b, a
    ld a, c
    add a
    add a
    add a
    ld de, $c7d7
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_017_46d6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_017_46d6

    ret


    ld a, [$c81d]
    or a
    ret z

    di
    call Call_000_1aa6
    ld a, $80
    ldh [rBCPS], a
    ei
    ld hl, $c797
    ld b, $40

jr_017_46f0:
    di
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rBCPD], a
    ei
    dec b
    jr nz, jr_017_46f0

    di
    call Call_000_1aa6
    ld a, $80
    ldh [rOCPS], a
    ei
    ld b, $40

jr_017_4706:
    di
    call Call_000_1aa6
    ld a, [hl+]
    ldh [rOCPD], a
    ei
    dec b
    jr nz, jr_017_4706

    ret


    ld a, [$c81d]
    or a
    ret z

    ld a, [$c81e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $bd
    ld l, a
    ld a, h
    adc $69
    ld h, a
    ld c, $00
    ld b, $08
    call Call_017_46a1
    ret


    ld a, [$c81d]
    or a
    ret z

    ld a, [$c81e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $fd
    ld l, a
    ld a, h
    adc $6a
    ld h, a
    ld c, $00
    ld b, $01
    call Call_017_46bf
    ret


    ld a, [$c81d]
    or a
    ret z

    ld a, [$c81e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    add $0d
    ld l, a
    ld a, h
    adc $6b
    ld h, a
    ld c, $00
    ld b, $01
    call Call_017_46bf
    ret


    ccf
    ld c, b
    sbc l
    ld c, b
    dec h
    ld c, c
    sbc l
    ld c, c
    push af
    ld c, c
    ld l, l
    ld c, d
    sbc c
    ld c, d
    or e
    ld c, d
    rlca
    ld c, e
    cpl
    ld c, e
    ld h, l
    ld c, e
    ccf
    ld c, b
    ld a, c
    ld c, e
    add c
    ld c, e
    ccf
    ld c, b
    adc l
    ld c, e
    sub l
    ld c, e
    ccf
    ld c, b
    and c
    ld c, e
    pop bc
    ld c, e
    ccf
    ld c, b
    ccf
    ld c, b
    call $954b
    ld c, e
    jp hl


    ld c, e
    dec c
    ld c, h
    dec d
    ld c, h
    dec e
    ld c, h
    dec l
    ld c, h
    add hl, sp
    ld c, h
    ld b, c
    ld c, h
    ld c, l
    ld c, h
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    ld c, b
    ld e, l
    ld c, h
    ld l, c
    ld c, h
    ld a, l
    ld c, h
    sub c
    ld c, h
    and l
    ld c, h
    or l
    ld c, h
    ret


    ld c, h
    db $dd
    ld c, h
    pop af
    ld c, h
    db $fd
    ld c, h
    ld de, $254d
    ld c, l
    add hl, sp
    ld c, l
    ld l, l
    ld c, l
    ld a, c
    ld c, l
    add l
    ld c, l
    sub c
    ld c, l
    sbc l
    ld c, l
    xor c
    ld c, l
    or l
    ld c, l
    pop bc
    ld c, l
    call $d94d
    ld c, l
    push hl
    ld c, l
    pop af
    ld c, l
    db $fd
    ld c, l
    dec c
    ld c, [hl]
    add hl, de
    ld c, [hl]
    dec h
    ld c, [hl]
    ld sp, $394e
    ld c, [hl]
    ld c, l
    ld c, [hl]
    add l
    ld c, [hl]
    sub c
    ld c, [hl]
    sbc l
    ld c, [hl]
    xor l
    ld c, [hl]
    cp c
    ld c, [hl]
    ret


    ld c, [hl]
    push de
    ld c, [hl]
    pop hl
    ld c, [hl]
    db $ed
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    dec b
    ld c, a
    ld de, $314f
    ld c, a
    dec a
    ld c, a
    ld b, l
    ld c, a
    ld c, l
    ld c, a
    ld d, l
    ld c, a
    ld a, l
    ld c, a
    db $db
    ld c, a
    add hl, sp
    ld d, b
    sub a
    ld d, b
    push af
    ld d, b
    ld d, e
    ld d, c
    or c
    ld d, c
    cp c
    ld d, c
    pop bc
    ld d, c
    ret


    ld d, c
    pop hl
    ld d, c
    dec a
    ld c, a
    ld c, a
    ld c, [hl]
    ld d, a
    ld c, a
    ld e, c
    ld c, a
    ld e, e
    ld c, a
    ld e, l
    ld c, a
    ld c, a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld c, b
    ld h, c
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    reti


    nop
    inc a
    ld e, l
    ld d, [hl]
    ld bc, $5d3c
    ld d, [hl]
    ld [bc], a
    inc a
    ld e, l
    ld d, [hl]
    inc bc
    inc a
    ld e, l
    ld d, [hl]
    dec hl
    reti


    inc b
    inc a
    ld e, l
    ld d, [hl]
    dec b
    inc a
    ld e, l
    ld d, [hl]
    dec b
    inc a
    ld e, l
    ld d, [hl]
    dec b
    inc a
    ld e, l
    ld d, [hl]
    dec b
    inc a
    ld e, l
    ld d, [hl]
    dec b
    inc a
    ld e, l
    ld d, [hl]
    inc b
    inc a
    ld e, l
    ld d, [hl]
    inc b
    inc a
    ld e, l
    ld d, [hl]
    inc b
    inc a
    ld e, l
    ld d, [hl]
    inc l
    reti


    ld b, $3c
    ld e, l
    ld d, [hl]
    ld b, $3c
    ld e, l
    ld d, [hl]
    ld b, $3c
    ld e, l
    ld d, [hl]
    ld b, $3c
    ld e, l
    ld d, [hl]
    ld b, $3c
    ld e, l
    ld d, [hl]
    cp l
    ld c, b
    db $d3
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    ld c, b
    db $eb
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld c, c
    rla
    ld c, c
    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    reti


    rlca
    inc a
    ld a, l
    ld d, [hl]
    rlca
    inc a
    ld a, l

jr_017_48c6:
    ld d, [hl]
    rlca
    inc a
    ld a, l
    ld d, [hl]
    rlca
    inc a
    ld a, l
    ld d, [hl]
    rlca
    inc a
    ld a, l
    ld d, [hl]
    ld l, $d9
    ld [$7d3c], sp
    ld d, [hl]
    cpl
    reti


    add hl, bc
    inc a
    ld a, l
    ld d, [hl]
    add hl, bc
    inc a
    ld a, l
    ld d, [hl]
    add hl, bc
    inc a
    ld a, l
    ld d, [hl]
    add hl, bc
    inc a
    ld a, l
    ld d, [hl]
    jr nc, jr_017_48c6

    ld a, [bc]
    inc a
    ld a, l
    ld d, [hl]
    ld sp, $0bd9
    inc a
    ld a, l
    ld d, [hl]
    dec bc
    inc a
    ld a, l
    ld d, [hl]
    dec bc
    inc a
    ld a, l
    ld d, [hl]
    ld [hl-], a
    reti


    inc c
    inc a
    ld a, l
    ld d, [hl]
    inc sp
    reti


    dec c
    inc a
    ld a, l
    ld d, [hl]
    dec c
    inc a
    ld a, l
    ld d, [hl]
    ld c, $3c
    ld a, l
    ld d, [hl]
    ld c, $3c
    ld a, l
    ld d, [hl]
    inc [hl]
    reti


    rrca
    inc a
    ld a, l
    ld d, [hl]
    db $10
    inc a
    ld a, l
    ld d, [hl]
    ld de, $7d3c
    ld d, [hl]
    dec [hl]
    ld c, c
    ccf
    ld c, c
    ld c, l
    ld c, c
    rst $38
    rst $38
    ld e, e
    ld c, c
    ld l, c
    ld c, c
    ld [hl], a
    ld c, c
    rst $38
    rst $38
    dec [hl]

jr_017_4936:
    reti


    ld [de], a
    inc a
    sbc l
    ld d, [hl]
    ld [de], a
    inc a
    sbc l
    ld d, [hl]
    ld [hl], $d9
    inc de
    inc a
    sbc l
    ld d, [hl]
    inc de
    inc a
    sbc l
    ld d, [hl]
    inc de
    inc a
    sbc l
    ld d, [hl]
    scf
    reti


    inc d
    inc a
    sbc l
    ld d, [hl]
    dec d
    inc a
    sbc l
    ld d, [hl]
    dec d
    inc a
    sbc l
    ld d, [hl]
    jr c, jr_017_4936

    ld d, $3c
    sbc l
    ld d, [hl]
    rla
    inc a
    sbc l
    ld d, [hl]
    ld d, $3c
    sbc l
    ld d, [hl]
    add hl, sp
    reti


    jr jr_017_49a9

    sbc l
    ld d, [hl]
    add hl, de
    inc a
    sbc l
    ld d, [hl]
    add hl, de
    inc a
    sbc l
    ld d, [hl]
    ld a, [hl-]
    reti


    ld a, [de]
    inc a
    sbc l
    ld d, [hl]
    dec de
    inc a
    sbc l
    ld d, [hl]
    dec de
    inc a
    sbc l
    ld d, [hl]
    inc e
    inc a
    sbc l
    ld d, [hl]
    inc e
    inc a
    sbc l
    ld d, [hl]
    dec e
    inc a
    sbc l
    ld d, [hl]
    dec e
    inc a
    sbc l
    ld d, [hl]
    dec e
    inc a
    sbc l
    ld d, [hl]
    dec e
    inc a
    sbc l
    ld d, [hl]
    xor l
    ld c, c
    cp a
    ld c, c
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    ld c, c
    db $eb
    ld c, c

jr_017_49a9:
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    reti


    ld e, $3c
    cp l
    ld d, [hl]
    rra
    inc a
    cp l
    ld d, [hl]
    jr nz, jr_017_49f5

    cp l
    ld d, [hl]
    ld hl, $bd3c
    ld d, [hl]
    inc a
    reti


    ld [hl+], a
    inc a
    cp l
    ld d, [hl]
    inc hl
    inc a
    cp l
    ld d, [hl]
    inc hl
    inc a
    cp l
    ld d, [hl]
    inc h
    inc a
    cp l
    ld d, [hl]
    dec h
    inc a
    cp l
    ld d, [hl]
    dec a
    reti


    ld h, $3c
    cp l
    ld d, [hl]
    daa
    inc a
    cp l
    ld d, [hl]
    jr z, jr_017_4a1d

    cp l
    ld d, [hl]
    add hl, hl
    inc a
    cp l
    ld d, [hl]
    add hl, hl
    inc a
    cp l
    ld d, [hl]
    ld a, $d9
    ld a, [hl+]
    inc a
    cp l
    ld d, [hl]
    dec hl
    inc a
    cp l
    ld d, [hl]

jr_017_49f5:
    dec b
    ld c, d
    rla
    ld c, d
    dec h
    ld c, d
    rst $38
    rst $38
    dec sp
    ld c, d
    ld c, l
    ld c, d
    ld e, e
    ld c, d
    rst $38
    rst $38
    ccf
    reti


    inc l
    inc a
    db $dd
    ld d, [hl]
    inc l
    inc a
    db $dd
    ld d, [hl]
    inc l
    inc a
    db $dd
    ld d, [hl]
    inc l
    inc a
    db $dd
    ld d, [hl]
    ld b, b
    reti


    dec l
    inc a
    db $dd
    ld d, [hl]

jr_017_4a1d:
    dec l
    inc a
    db $dd
    ld d, [hl]
    dec l
    inc a
    db $dd
    ld d, [hl]
    ld b, c
    reti


    ld l, $3c
    db $dd
    ld d, [hl]
    ld l, $3c
    db $dd
    ld d, [hl]
    cpl
    inc a
    db $dd
    ld d, [hl]
    cpl
    inc a
    db $dd
    ld d, [hl]
    cpl
    inc a
    db $dd
    ld d, [hl]
    ld b, d
    reti


    jr nc, jr_017_4a7b

    db $dd
    ld d, [hl]
    jr nc, jr_017_4a7f

    db $dd
    ld d, [hl]
    jr nc, jr_017_4a83

    db $dd
    ld d, [hl]
    jr nc, jr_017_4a87

    db $dd
    ld d, [hl]
    ld b, e
    reti


    ld sp, $dd3c
    ld d, [hl]
    ld sp, $dd3c
    ld d, [hl]
    ld sp, $dd3c
    ld d, [hl]
    ld b, h
    reti


    ld [hl-], a
    inc a
    db $dd
    ld d, [hl]
    ld [hl-], a
    inc a
    db $dd
    ld d, [hl]
    ld [hl-], a
    inc a
    db $dd
    ld d, [hl]
    ld [hl-], a
    inc a
    db $dd
    ld d, [hl]
    ld [hl], e
    ld c, d
    ld a, l
    ld c, d
    add a
    ld c, d
    ld b, l
    reti


    inc sp
    inc a
    db $fd
    ld d, [hl]
    inc [hl]
    inc a

jr_017_4a7b:
    db $fd
    ld d, [hl]
    ld b, [hl]
    reti


jr_017_4a7f:
    dec [hl]
    inc a
    db $fd
    ld d, [hl]

jr_017_4a83:
    dec [hl]
    inc a
    db $fd
    ld d, [hl]

jr_017_4a87:
    ld b, a
    reti


    ld [hl], $3c
    db $fd
    ld d, [hl]
    ld [hl], $3c
    db $fd
    ld d, [hl]
    ld [hl], $3c
    db $fd
    ld d, [hl]
    ld [hl], $3c
    db $fd
    ld d, [hl]
    and c
    ld c, d
    and a
    ld c, d
    xor l
    ld c, d
    rst $38
    rst $38
    ld c, b
    reti


    scf
    inc a
    dec e
    ld d, a
    ld c, c
    reti


    jr c, jr_017_4ae7

    dec e
    ld d, a
    ld c, d
    reti


    add hl, sp
    inc a
    dec e
    ld d, a
    jp $c94a


    ld c, d
    db $eb
    ld c, d
    rst $38
    rst $38
    pop af
    ld c, d
    ei
    ld c, d
    ld bc, $ff4b
    rst $38
    ld c, e
    reti


    ld a, [hl-]
    inc a
    dec a
    ld d, a
    ld c, h
    reti


    dec sp
    inc a
    dec a
    ld d, a
    inc a
    inc a
    dec a
    ld d, a
    dec a
    inc a
    dec a
    ld d, a
    dec a
    inc a
    dec a
    ld d, a
    ld a, $3c
    dec a
    ld d, a
    ld a, $3c
    dec a
    ld d, a
    ld a, $3c
    dec a
    ld d, a

jr_017_4ae7:
    ld a, $3c
    dec a
    ld d, a
    ld c, l
    reti


    ccf
    inc a
    dec a
    ld d, a
    ld c, [hl]
    reti


    ld b, b
    inc a
    dec a
    ld d, a
    ld b, b
    inc a
    dec a
    ld d, a
    ld c, a
    reti


    ld b, c
    inc a
    dec a
    ld d, a
    ld d, b
    reti


    ld b, d
    inc a
    dec a
    ld d, a
    add hl, bc
    ld c, e
    ld d, c
    reti


    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    ld b, e
    inc a
    ld e, l
    ld d, a
    rst $38
    rst $38
    ccf
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, l
    ld c, e
    ld e, e
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, d
    reti


    ld b, h
    inc a
    ld a, l
    ld d, a
    ld b, h
    inc a
    ld a, l
    ld d, a
    ld b, h
    inc a
    ld a, l
    ld d, a
    ld d, e
    reti


    ld b, l
    inc a
    ld a, l
    ld d, a
    ld b, l
    inc a
    ld a, l
    ld d, a
    ld b, l
    inc a
    ld a, l
    ld d, a
    ld d, h
    reti


    ld b, [hl]
    inc a
    ld a, l
    ld d, a
    ld b, [hl]
    inc a
    ld a, l
    ld d, a
    ld l, l
    ld c, e
    ld [hl], e
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    reti


    ld b, a
    inc a
    sbc l
    ld d, a
    ld d, [hl]
    reti


    ld c, b
    inc a
    sbc l
    ld d, a
    ld a, e
    ld c, e
    ld d, a
    reti


    ld c, c
    inc a
    cp l
    ld d, a
    add e
    ld c, e
    ld e, b
    reti


    ld c, d
    inc a
    db $dd
    ld d, a
    ld c, d
    inc a
    db $dd
    ld d, a
    adc a
    ld c, e
    ld e, c
    reti


    ld c, e
    inc a
    db $fd
    ld d, a
    sub a
    ld c, e
    ld e, d
    reti


    ld c, h
    inc a
    dec e
    ld e, b
    ld c, l
    inc a
    dec e
    ld e, b
    or c
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    reti


    ld c, [hl]
    inc a
    dec a
    ld e, b
    ld e, h
    reti


    ld c, a
    inc a
    dec a
    ld e, b
    ld c, a
    inc a
    dec a
    ld e, b
    jp Jump_017_5d4b


    reti


    ld d, b
    inc a
    dec a
    ld e, b
    ld d, b
    inc a
    dec a
    ld e, b
    rst $08
    ld c, e
    ld e, [hl]
    reti


    ld d, c
    inc a
    ld e, l
    ld e, b
    ld d, d
    inc a
    ld e, l
    ld e, b
    ld d, d
    inc a
    ld e, l
    ld e, b
    ld d, c
    inc a
    ld e, l
    ld e, b
    ld d, d
    inc a
    ld e, l
    ld e, b
    ld d, d
    inc a
    ld e, l
    ld e, b
    ld sp, hl
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    reti


    ld d, e
    inc a
    ld a, l
    ld e, b
    ld h, b
    reti


    ld d, h
    inc a
    ld a, l
    ld e, b
    ld d, l
    inc a
    ld a, l
    ld e, b
    ld d, l
    inc a
    ld a, l
    ld e, b
    rrca
    ld c, h
    ld h, c
    reti


    ld d, [hl]
    inc a
    sbc l
    ld e, b
    rla
    ld c, h
    ld h, d
    reti


    ld d, a
    inc a
    cp l
    ld e, b
    rra
    ld c, h
    ld h, e
    reti


    ld e, b
    inc a
    db $dd
    ld e, b
    ld e, b
    inc a
    db $dd
    ld e, b
    ld e, b
    inc a
    db $dd
    ld e, b
    cpl
    ld c, h
    ld h, h
    reti


    ld e, c
    inc a
    db $fd
    ld e, b
    ld e, c
    inc a
    db $fd
    ld e, b
    dec sp
    ld c, h
    ld h, l
    reti


    ld e, d
    inc a
    dec e
    ld e, c
    ld b, e
    ld c, h
    ld h, [hl]
    reti


    ld e, e
    inc a
    dec e
    ld e, c
    ld e, e
    inc a
    dec e
    ld e, c
    ld c, a
    ld c, h
    ld h, a
    reti


    ld e, h
    inc a
    dec a
    ld e, c
    ld e, h
    inc a
    dec a
    ld e, c
    ld e, h
    inc a
    dec a
    ld e, c
    ld e, a
    ld c, h
    ld l, b
    reti


    ld e, l
    inc a
    ld e, l
    ld e, c
    ld e, l
    inc a
    ld e, l
    ld e, c
    ld l, e
    ld c, h
    ld l, c
    reti


    ld e, [hl]
    inc a
    ld a, l
    ld e, c
    ld e, [hl]
    inc a
    ld a, l
    ld e, c
    ld e, [hl]
    inc a
    ld a, l
    ld e, c
    ld e, [hl]
    inc a
    ld a, l
    ld e, c
    ld a, a
    ld c, h
    ld l, d
    reti


    ld e, a
    inc a
    sbc l
    ld e, c
    ld e, a
    inc a
    sbc l
    ld e, c
    ld e, a
    inc a
    sbc l
    ld e, c
    ld e, a
    inc a
    sbc l
    ld e, c
    sub e
    ld c, h
    ld l, e
    reti


    ld h, b
    inc a
    cp l
    ld e, c
    ld h, b
    inc a
    cp l
    ld e, c
    ld h, b
    inc a
    cp l
    ld e, c
    ld h, b
    inc a
    cp l
    ld e, c
    and a
    ld c, h
    ld l, h
    reti


    ld h, c
    inc a
    db $dd
    ld e, c
    ld h, c
    inc a
    db $dd
    ld e, c
    ld h, c
    inc a
    db $dd
    ld e, c
    or a
    ld c, h
    ld l, l
    reti


    ld h, d
    inc a
    db $fd
    ld e, c
    ld h, d
    inc a
    db $fd
    ld e, c
    ld h, d
    inc a
    db $fd
    ld e, c
    ld h, d
    inc a
    db $fd
    ld e, c
    bit 1, h
    ld l, [hl]
    reti


    ld h, e
    inc a
    dec e
    ld e, d
    ld h, e
    inc a
    dec e
    ld e, d
    ld h, e
    inc a
    dec e
    ld e, d
    ld h, e
    inc a
    dec e
    ld e, d
    rst $18
    ld c, h
    ld l, a
    reti


    ld h, h
    inc a
    dec a
    ld e, d
    ld h, h
    inc a
    dec a
    ld e, d
    ld h, h
    inc a
    dec a
    ld e, d
    ld h, h
    inc a
    dec a
    ld e, d
    di
    ld c, h
    ld [hl], b
    reti


    ld h, l
    inc a
    ld e, l
    ld e, d
    ld h, l
    inc a
    ld e, l
    ld e, d
    rst $38
    ld c, h
    ld [hl], c
    reti


    ld h, [hl]
    inc a
    ld a, l
    ld e, d
    ld h, [hl]
    inc a
    ld a, l
    ld e, d
    ld h, [hl]
    inc a
    ld a, l
    ld e, d
    ld h, [hl]
    inc a
    ld a, l
    ld e, d
    inc de
    ld c, l
    ld [hl], d
    reti


    ld h, a
    inc a
    sbc l
    ld e, d
    ld h, a
    inc a
    sbc l
    ld e, d
    ld h, a
    inc a
    sbc l
    ld e, d
    ld h, a
    inc a
    sbc l
    ld e, d
    daa
    ld c, l
    ld [hl], e
    reti


    ld l, b
    inc a
    cp l
    ld e, d
    ld l, b
    inc a
    cp l
    ld e, d
    ld l, b
    inc a
    cp l
    ld e, d
    ld l, b
    inc a
    cp l
    ld e, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, l
    ld c, l
    ld h, e
    ld c, l
    ld [hl], h
    reti


    ld l, c
    inc a
    db $dd
    ld e, d
    ld l, c
    inc a
    db $dd
    ld e, d
    ld l, c
    inc a
    db $dd
    ld e, d
    ld l, c
    inc a
    db $dd
    ld e, d
    ld l, c
    inc a
    db $dd
    ld e, d
    ld l, c
    inc a
    db $dd
    ld e, d
    ld l, c
    inc a
    db $dd
    ld e, d
    ld [hl], l
    reti


    ld l, d
    inc a
    db $dd
    ld e, d
    ld l, d
    inc a
    db $dd
    ld e, d
    ld l, a
    ld c, l
    db $76
    reti


    ld l, e
    inc a
    db $fd
    ld e, d
    ld l, h
    inc a
    db $fd
    ld e, d
    ld a, e
    ld c, l
    ld [hl], a
    reti


    ld l, l
    inc a
    dec e
    ld e, e
    ld l, [hl]
    inc a
    dec e
    ld e, e
    add a
    ld c, l
    ld a, b
    reti


    ld l, a
    inc a
    dec a
    ld e, e
    ld [hl], b
    inc a
    dec a
    ld e, e
    sub e
    ld c, l
    ld a, c
    reti


    ld [hl], c
    inc a
    ld e, l
    ld e, e
    ld [hl], d
    inc a
    ld e, l
    ld e, e
    sbc a
    ld c, l
    ld a, d
    reti


    ld [hl], e
    inc a
    ld a, l
    ld e, e
    ld [hl], h
    inc a
    ld a, l
    ld e, e
    xor e
    ld c, l
    ld a, e
    reti


    ld [hl], l
    inc a
    sbc l
    ld e, e
    db $76
    inc a
    sbc l
    ld e, e
    or a
    ld c, l
    ld a, h
    reti


    ld [hl], a
    inc a
    cp l
    ld e, e
    ld a, b
    inc a
    cp l
    ld e, e
    jp Jump_017_7d4d


    reti


    ld a, c
    inc a
    db $dd
    ld e, e
    ld a, d
    inc a
    db $dd
    ld e, e
    rst $08
    ld c, l
    ld a, [hl]
    reti


    ld a, e
    inc a
    db $fd
    ld e, e
    ld a, h
    inc a
    db $fd
    ld e, e
    db $db
    ld c, l
    ld a, a
    reti


    ld a, l
    inc a
    dec e
    ld e, h
    ld a, [hl]
    inc a
    dec e
    ld e, h
    rst $20
    ld c, l
    add b
    reti


    ld a, a
    inc a
    dec a
    ld e, h
    add b
    inc a
    dec a
    ld e, h
    di
    ld c, l
    add c
    reti


    add c
    inc a
    ld e, l
    ld e, h
    add d
    inc a
    ld e, l
    ld e, h
    rst $38
    ld c, l
    add d
    reti


    add e
    inc a
    ld a, l
    ld e, h
    add l
    inc a
    ld a, l
    ld e, h
    add h
    inc a
    ld a, l
    ld e, h
    rrca
    ld c, [hl]
    add e
    reti


    add [hl]
    inc a
    sbc l
    ld e, h
    add [hl]
    inc a
    sbc l
    ld e, h
    dec de
    ld c, [hl]
    add h
    reti


    add a
    inc a
    cp l
    ld e, h
    adc b
    inc a
    cp l
    ld e, h
    daa
    ld c, [hl]
    add l
    reti


    adc c
    inc a
    db $dd
    ld e, h
    adc d
    inc a
    db $fd
    ld e, h
    inc sp
    ld c, [hl]
    add [hl]
    reti


    adc e
    inc a
    dec e
    ld e, l
    dec sp
    ld c, [hl]
    add a
    reti


    adc h
    inc a
    dec e
    ld e, l
    adc h
    inc a
    dec e
    ld e, l
    adc h
    inc a
    dec e
    ld e, l
    adc l
    inc a
    dec e
    ld e, l
    ld d, c
    ld c, [hl]
    ld a, e
    ld c, [hl]
    adc b
    reti


    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc [hl]
    inc a
    dec a
    ld e, l
    adc c
    reti


    adc a
    inc a
    ld e, l
    ld e, l
    adc a
    inc a
    ld e, l
    ld e, l
    add a
    ld c, [hl]
    adc d
    reti


    sub b
    inc a
    ld a, l
    ld e, l
    sub c
    inc a
    ld a, l
    ld e, l
    sub e
    ld c, [hl]
    adc e
    reti


    sub d
    inc a
    sbc l
    ld e, l
    sub e
    inc a
    sbc l
    ld e, l
    sbc a
    ld c, [hl]
    adc h
    reti


    sub h
    inc a
    cp l
    ld e, l
    sub l
    inc a
    cp l
    ld e, l
    sub h
    inc a
    cp l
    ld e, l
    xor a
    ld c, [hl]
    adc l
    reti


    sub [hl]
    inc a
    db $dd
    ld e, l
    sub a
    inc a
    db $dd
    ld e, l
    cp e
    ld c, [hl]
    adc [hl]
    reti


    sbc b
    inc a
    db $fd
    ld e, l
    sbc b
    inc a
    db $fd
    ld e, l
    sbc c
    inc a
    db $fd
    ld e, l
    bit 1, [hl]
    adc a
    reti


    sbc d
    inc a
    dec e
    ld e, [hl]
    sbc e
    inc a
    dec e
    ld e, [hl]
    rst $10
    ld c, [hl]
    sub b
    reti


    sbc h
    inc a
    dec a
    ld e, [hl]
    sbc l
    inc a
    dec a
    ld e, [hl]
    db $e3
    ld c, [hl]
    sub c
    reti


    sbc [hl]
    inc a
    ld e, l
    ld e, [hl]
    sbc a
    inc a
    ld e, l
    ld e, [hl]
    rst $28
    ld c, [hl]
    sub d
    reti


    and b
    inc a
    ld a, l
    ld e, [hl]
    and c
    inc a
    ld a, l
    ld e, [hl]
    ei
    ld c, [hl]
    sub e
    reti


    and d
    inc a
    sbc l
    ld e, [hl]
    and e
    inc a
    sbc l
    ld e, [hl]
    rlca
    ld c, a
    sub h
    reti


    and h
    inc a
    cp l
    ld e, [hl]
    and l
    inc a
    cp l
    ld e, [hl]
    ld hl, $ff4f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub l
    reti


    and [hl]
    inc a
    db $dd
    ld e, [hl]
    and a
    inc a
    db $dd
    ld e, [hl]
    sub [hl]
    reti


    xor b
    inc a
    db $dd
    ld e, [hl]
    inc sp
    ld c, a
    sub a
    reti


    xor c
    inc a
    db $fd
    ld e, [hl]
    xor d
    inc a
    db $fd
    ld e, [hl]
    ccf
    ld c, a
    sbc b
    reti


    xor e
    inc a
    dec e
    ld e, a
    ld b, a
    ld c, a
    sbc b
    reti


    xor h
    inc a
    dec a
    ld e, a
    ld c, a
    ld c, a
    sbc b
    reti


    xor l
    inc a
    ld e, l
    ld e, a
    ld e, a
    ld c, a
    ld h, l
    ld c, a
    ld l, e
    ld c, a
    ld [hl], c
    ld c, a
    ld [hl], a
    ld c, a
    sbc b
    reti


    xor [hl]
    inc a
    ld a, l
    ld e, a
    sbc b
    reti


    xor a
    inc a
    ld a, l
    ld e, a
    sbc b
    reti


    or b
    inc a
    ld a, l
    ld e, a
    sbc b
    reti


    or c
    inc a
    ld a, l
    ld e, a
    sbc b
    reti


    or d
    inc a
    ld a, l
    ld e, a
    sub l
    ld c, a
    sbc e
    ld c, a
    and c
    ld c, a
    rst $38
    rst $38
    and a
    ld c, a
    xor l
    ld c, a
    or e
    ld c, a
    rst $38
    rst $38
    cp c
    ld c, a
    cp a
    ld c, a
    push bc
    ld c, a
    rst $38
    rst $38
    sbc b
    reti


    or e
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    or h
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    or l
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    or [hl]
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    or a
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    cp b
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    cp c
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    cp d
    inc a
    sbc l
    ld e, a
    sbc b
    reti


    cp e
    inc a
    sbc l
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0002], sp
    add b
    nop
    nop
    nop
    rst $38
    di
    ld c, a
    ld sp, hl
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $38
    dec b
    ld d, b
    dec bc
    ld d, b
    ld de, $ff50
    rst $38
    rla
    ld d, b
    dec e
    ld d, b
    inc hl
    ld d, b
    rst $38
    rst $38
    sbc b
    reti


    cp h
    inc a
    cp l
    ld e, a
    sbc b
    reti


    cp l
    inc a
    cp l
    ld e, a
    sbc b
    reti


    cp [hl]
    inc a
    cp l
    ld e, a
    sbc b
    reti


    cp a
    inc a
    cp l
    ld e, a
    sbc b
    reti


    ret nz

    inc a
    cp l
    ld e, a
    sbc b
    reti


    pop bc
    inc a
    cp l
    ld e, a
    sbc b
    reti


    jp nz, $bd3c

    ld e, a
    sbc b
    reti


    jp $bd3c


    ld e, a
    sbc b
    reti


    call nz, $bd3c
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $06
    nop
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld d, c
    ld d, b
    ld d, a
    ld d, b
    ld e, l
    ld d, b
    rst $38
    rst $38
    ld h, e
    ld d, b
    ld l, c
    ld d, b
    ld l, a
    ld d, b
    rst $38
    rst $38
    ld [hl], l
    ld d, b
    ld a, e
    ld d, b
    add c
    ld d, b
    rst $38
    rst $38
    sbc b
    reti


    push bc
    inc a
    db $dd
    ld e, a
    sbc b
    reti


    add $3c
    db $dd
    ld e, a
    sbc b
    reti


    rst $00
    inc a
    db $dd
    ld e, a
    sbc b
    reti


    ret z

    inc a
    db $dd
    ld e, a
    sbc b
    reti


    ret


    inc a
    db $dd
    ld e, a
    sbc b
    reti


    jp z, $dd3c

    ld e, a
    sbc b
    reti


    srl h
    db $dd
    ld e, a
    sbc b
    reti


    call z, $dd3c
    ld e, a
    sbc b
    reti


    call $dd3c
    ld e, a
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    add b
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
    xor a
    ld d, b
    or l
    ld d, b
    cp e
    ld d, b
    rst $38
    rst $38
    pop bc
    ld d, b
    rst $00
    ld d, b
    call $ff50
    rst $38
    db $d3
    ld d, b
    reti


    ld d, b
    rst $18
    ld d, b
    rst $38
    rst $38
    sbc b
    reti


    adc $3c
    db $fd
    ld e, a
    sbc b
    reti


    rst $08
    inc a
    db $fd
    ld e, a
    sbc b
    reti


    ret nc

    inc a
    db $fd
    ld e, a
    sbc b
    reti


    pop de
    inc a
    db $fd
    ld e, a
    sbc b
    reti


    jp nc, $fd3c

    ld e, a
    sbc b
    reti


    db $d3
    inc a
    db $fd
    ld e, a
    sbc b
    reti


    call nc, $fd3c
    ld e, a
    sbc b
    reti


    push de
    inc a
    db $fd
    ld e, a
    sbc b
    reti


    sub $3c
    db $fd
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0006
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    dec c
    ld d, c
    inc de
    ld d, c
    add hl, de
    ld d, c
    rst $38
    rst $38
    rra
    ld d, c
    dec h
    ld d, c
    dec hl
    ld d, c
    rst $38
    rst $38
    ld sp, $3751
    ld d, c
    dec a
    ld d, c
    rst $38
    rst $38
    sbc b
    reti


    rst $10
    inc a
    dec e
    ld h, b
    sbc b
    reti


    ret c

    inc a
    dec e
    ld h, b
    sbc b
    reti


    reti


    inc a
    dec e
    ld h, b
    sbc b
    reti


    jp c, Jump_000_1d3c

    ld h, b
    sbc b
    reti


    db $db
    inc a
    dec e
    ld h, b
    sbc b
    reti


    call c, Call_000_1d3c
    ld h, b
    sbc b
    reti


    db $dd
    inc a
    dec e
    ld h, b
    sbc b
    reti


    sbc $3c
    dec e
    ld h, b
    sbc b
    reti


    rst $18
    inc a
    dec e
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    ld b, $00
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, e
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], a
    ld d, c
    rst $38
    rst $38
    ld a, l
    ld d, c
    add e
    ld d, c
    adc c
    ld d, c
    rst $38
    rst $38
    adc a
    ld d, c
    sub l
    ld d, c
    sbc e
    ld d, c
    rst $38
    rst $38
    sbc b
    reti


    ldh [$3c], a
    dec a
    ld h, b
    sbc b
    reti


    pop hl
    inc a
    dec a
    ld h, b
    sbc b
    reti


    ld [c], a
    inc a
    dec a
    ld h, b
    sbc b
    reti


    db $e3
    inc a
    dec a
    ld h, b
    sbc b
    reti


    db $e4
    inc a
    dec a
    ld h, b
    sbc b
    reti


    push hl
    inc a
    dec a
    ld h, b
    sbc b
    reti


    and $3c
    dec a
    ld h, b
    sbc b
    reti


    rst $20
    inc a
    dec a
    ld h, b
    sbc b
    reti


    add sp, $3c
    dec a
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0006], sp
    add b
    nop
    nop
    nop
    rst $38
    or e
    ld d, c
    sbc b
    reti


    jp hl


    inc a
    ld e, l
    ld h, b
    cp e
    ld d, c
    sbc b
    reti


    ld [$7d3c], a
    ld h, b
    jp $9851


    reti


    db $eb
    inc a
    sbc l
    ld h, b
    bit 2, c
    sbc c
    reti


    db $ec
    inc a
    cp l
    ld h, b
    db $ed
    inc a
    cp l
    ld h, b
    db $ed
    inc a
    cp l
    ld h, b
    db $ed
    inc a
    cp l
    ld h, b
    db $ed
    inc a
    cp l
    ld h, b
    db $e3
    ld d, c
    sbc d
    reti


    xor $3c
    db $dd
    ld h, b
    xor $3c
    db $dd
    ld h, b
    xor $3c
    db $dd
    ld h, b
    xor $3c
    db $dd
    ld h, b
    db $fd
    ld h, b
    dec e
    ld h, c
    dec a
    ld h, c
    ld e, l
    ld h, c
    ld a, l
    ld h, c
    sbc l
    ld h, c
    cp l
    ld h, c
    db $dd
    ld h, c
    db $fd
    ld h, c
    dec e
    ld h, d
    dec a
    ld h, d
    ld e, l
    ld h, d
    ld a, l
    ld h, d
    sbc l
    ld h, d
    cp l
    ld h, d
    db $dd
    ld h, d
    nop
    dec a
    ld bc, $023d
    dec a
    inc bc
    dec a
    inc b
    dec a
    dec b
    dec a
    ld b, $3d
    rlca
    dec a
    ld [$093d], sp
    dec a
    ld a, [bc]
    dec a
    dec bc
    dec a
    or l
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    inc c
    dec a
    dec c
    dec a
    ld c, $3d
    rrca
    dec a
    db $10
    dec a
    ld de, $123d
    dec a
    inc de
    dec a
    inc d
    dec a
    dec d
    dec a
    ld d, $3d
    rla
    dec a
    or [hl]
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    jr jr_017_5294

    add hl, de
    dec a
    ld a, [de]
    dec a
    dec de
    dec a
    inc e
    dec a
    dec e
    dec a
    ld e, $3d
    rra
    dec a
    jr nz, jr_017_52a4

    ld hl, $223d
    dec a
    inc hl
    dec a
    or a
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    inc h
    dec a
    dec h
    dec a
    ld h, $3d
    daa
    dec a
    jr z, jr_017_52bc

    add hl, hl
    dec a
    ld a, [hl+]
    dec a
    dec hl
    dec a
    inc l
    dec a
    dec l
    dec a
    ld l, $3d
    cpl
    dec a
    cp b
    dec a
    nop
    dec a
    nop
    dec a
    nop

jr_017_5294:
    dec a
    jr nc, jr_017_52d4

    ld sp, $323d
    dec a
    inc sp
    dec a
    inc [hl]
    dec a
    dec [hl]
    dec a
    ld [hl], $3d
    scf

jr_017_52a4:
    dec a
    jr c, jr_017_52e4

    add hl, sp
    dec a
    ld a, [hl-]
    dec a
    dec sp
    dec a
    cp c
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    inc a
    dec a
    dec a
    dec a
    ld a, $3d
    ccf

jr_017_52bc:
    dec a
    ld b, b
    dec a
    ld b, c
    dec a
    ld b, d
    dec a
    ld b, e
    dec a
    ld b, h
    dec a
    ld b, l
    dec a
    ld b, [hl]
    dec a
    ld b, a
    dec a
    cp d
    dec a
    nop
    dec a
    nop
    dec a
    nop

jr_017_52d4:
    dec a
    ld c, b
    dec a
    ld c, c
    dec a
    ld c, d
    dec a
    ld c, e
    dec a
    ld c, h
    dec a
    ld c, l
    dec a
    ld c, [hl]
    dec a
    ld c, a

jr_017_52e4:
    dec a
    ld d, b
    dec a
    ld d, c
    dec a
    ld d, d
    dec a
    ld d, e
    dec a
    cp e
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    ld d, h
    dec a
    ld d, l
    dec a
    ld d, [hl]
    dec a
    ld d, a
    dec a
    ld e, b
    dec a
    ld e, c
    dec a
    ld e, d
    dec a
    ld e, e
    dec a
    ld e, h
    dec a
    ld e, l
    dec a
    ld e, [hl]
    dec a
    ld e, a
    dec a
    cp h
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    ld h, b
    dec a
    ld h, c
    dec a
    ld h, d
    dec a
    ld h, e
    dec a
    ld h, h
    dec a
    ld h, l
    dec a
    ld h, [hl]
    dec a
    ld h, a
    dec a
    ld l, b
    dec a
    ld l, c
    dec a
    ld l, d
    dec a
    ld l, e
    dec a
    cp l
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    ld l, h
    dec a
    ld l, l
    dec a
    ld l, [hl]
    dec a
    ld l, a
    dec a
    ld [hl], b
    dec a
    ld [hl], c
    dec a
    ld [hl], d
    dec a
    ld [hl], e
    dec a
    ld [hl], h
    dec a
    ld [hl], l
    dec a
    db $76
    dec a
    ld [hl], a
    dec a
    cp [hl]
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    ld a, b
    dec a
    ld a, c
    dec a
    ld a, d
    dec a
    ld a, e
    dec a
    ld a, h
    dec a
    ld a, l
    dec a
    ld a, [hl]
    dec a
    ld a, a
    dec a
    add b
    dec a
    add c
    dec a
    add d
    dec a
    add e
    dec a
    cp a
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    add h
    dec a
    add l
    dec a
    add [hl]
    dec a
    add a
    dec a
    adc b
    dec a
    adc c
    dec a
    adc d
    dec a
    adc e
    dec a
    adc h
    dec a
    adc l
    dec a
    adc [hl]
    dec a
    adc a
    dec a
    ret nz

    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    sub b
    dec a
    sub c
    dec a
    sub d
    dec a
    sub e
    dec a
    sub h
    dec a
    sub l
    dec a
    sub [hl]
    dec a
    sub a
    dec a
    sbc b
    dec a
    sbc c
    dec a
    sbc d
    dec a
    sbc e
    dec a
    pop bc
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    sbc h
    dec a
    sbc l
    dec a
    sbc [hl]
    dec a
    sbc a
    dec a
    and b
    dec a
    and c
    dec a
    and d
    dec a
    and e
    dec a
    and h
    dec a
    and l
    dec a
    and [hl]
    dec a
    and a
    dec a
    jp nz, Jump_000_003d

    dec a
    nop
    dec a
    nop
    dec a
    xor b
    dec a
    xor c
    dec a
    xor d
    dec a
    xor e
    dec a
    xor h
    dec a
    xor l
    dec a
    xor [hl]
    dec a
    xor a
    dec a
    or b
    dec a
    or c
    dec a
    or d
    dec a
    or e
    dec a
    jp Jump_000_003d


    dec a
    nop
    dec a
    nop
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    nop
    ld a, $01
    ld a, $02
    ld a, $03
    ld a, $04
    ld a, $05
    ld a, $06
    ld a, $07
    ld a, $08
    ld a, $09
    ld a, $0a
    ld a, $0b
    ld a, $0c
    ld a, $0d
    ld a, $00
    ld a, $00
    ld a, $0e
    ld a, $0f
    ld a, $10
    ld a, $11
    ld a, $12
    ld a, $13
    ld a, $14
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $15
    ld a, $16
    ld a, $17
    ld a, $18
    ld a, $19
    ld a, $1a
    ld a, $1b
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $1c
    ld a, $1d
    ld a, $1e
    ld a, $1f
    ld a, $20
    ld a, $21
    ld a, $22
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $23
    ld a, $24
    ld a, $25
    ld a, $26
    ld a, $27
    ld a, $28
    ld a, $29
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $2a
    ld a, $2b
    ld a, $2c
    ld a, $2d
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $2e
    ld a, $2f
    ld a, $30
    ld a, $31
    ld a, $32
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $33
    ld a, $34
    ld a, $35
    ld a, $36
    ld a, $37
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $38
    ld a, $39
    ld a, $3a
    ld a, $3b
    ld a, $3c
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $3d
    ld a, $3e
    ld a, $3f
    ld a, $40
    ld a, $41
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $42
    ld a, $43
    ld a, $44
    ld a, $45
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $46
    ld a, $47
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $48
    ld a, $49
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $4a
    ld a, $4b
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $4c
    ld a, $4d
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $b4
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    or h
    dec a
    xor l
    dec [hl]
    ld a, a
    ld c, e
    sbc a
    nop
    ld b, d
    nop
    xor l
    dec [hl]
    ld a, a
    ld c, e
    jr nz, jr_017_563a

    ld b, d
    nop
    nop
    ld a, h
    ld a, a
    ld c, e
    xor e
    ld a, l
    ld b, d
    nop
    nop
    ld a, h
    ld a, a
    ld c, e
    rst $38
    ld [bc], a
    ld b, d
    nop
    cp c
    ld [hl], $7f
    ld c, e
    or [hl]

jr_017_563a:
    ld e, b
    ld b, d
    nop
    nop
    ld a, h
    ld a, a
    ld c, e
    rrca
    ld b, d
    ld b, d
    nop
    nop
    ld a, h
    ld a, a
    ld c, e
    rra
    ld [bc], a
    ld b, d
    nop
    nop
    ld a, h
    ld a, a
    ld c, e
    jr jr_017_5675

    ld b, d
    nop
    add hl, sp
    ld bc, $6bff
    ccf
    inc bc
    nop
    nop
    ld a, h
    ld [$6bff], sp
    ld a, h
    ld [$0000], sp
    dec d
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    nop
    nop

jr_017_5675:
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld [hl], b
    ld bc, $6bff
    scf
    ld a, [de]
    nop
    nop
    jr nz, @+$19

    rst $38
    ld l, e
    ldh a, [$03]
    nop
    nop
    jr nz, @+$19

    rst $38
    ld l, e
    scf
    ld a, [de]
    nop
    nop
    jr nz, jr_017_56ae

    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    jr nz, jr_017_56b6

    rst $38
    ld l, e
    ldh a, [$03]
    nop
    nop
    jr nz, jr_017_56be

    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    dec d

jr_017_56ae:
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop

jr_017_56b6:
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    xor h

jr_017_56be:
    add hl, sp
    rst $38
    ld l, e
    ld [hl], b
    ld [hl+], a
    nop
    nop
    xor h
    add hl, sp
    rst $38
    ld l, e
    ld [hl], b
    ld [hl+], a
    nop
    nop
    add hl, bc
    dec d
    rst $38
    ld l, e
    ld [hl], b
    ld [hl+], a
    nop
    nop
    inc l
    add hl, de
    rst $38
    ld l, e
    or d
    add hl, de
    nop
    nop
    jr nz, jr_017_56f6

    rst $38
    ld l, e
    ldh a, [$03]
    nop
    nop
    jr nc, jr_017_56e8

    rst $38

jr_017_56e8:
    ld l, e
    db $f4
    ld de, $0000
    ld d, c
    nop
    rst $38
    ld l, e
    ld [hl], l
    ld bc, $0000
    nop

jr_017_56f6:
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    rlc c
    ld d, a
    scf
    xor l
    ld e, $80
    nop
    jr nc, jr_017_5708

    ld d, a

jr_017_5708:
    scf
    db $f4
    ld de, $0042
    add l
    ld c, c
    ld d, a
    scf
    xor l
    ld a, $44
    nop
    jr nz, jr_017_5735

    ld [hl], $1f
    db $ec
    ld [bc], a
    add b
    nop
    ret nc

    add hl, de
    rst $38
    ld l, e
    dec a
    ld b, e
    nop
    nop
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop

jr_017_5735:
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    ld l, l
    ld c, l
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    ld a, [de]
    ld a, [de]
    nop
    nop
    dec d
    jr nz, @+$01

    ld l, e
    rra
    jr nz, jr_017_576c

jr_017_576c:
    nop
    ld b, d
    ld a, l
    rst $38
    ld l, e
    ld [hl], l
    ld a, [hl]
    nop
    nop
    ld l, $15
    rst $38
    ld l, e
    ld a, [hl-]
    ld l, $00
    nop
    dec bc
    ld a, h
    rst $38
    ld l, e
    ld [de], a
    ld a, a
    nop
    nop
    adc $39
    rst $38
    ld l, e
    ld d, c
    ld a, [hl-]
    nop
    nop
    jr nz, jr_017_57a6

    rst $38
    ld l, e
    ldh a, [$03]
    nop
    nop
    dec d
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    nop
    nop
    dec d

jr_017_57a6:
    nop
    rst $38
    ld l, e
    ld a, h
    ld [$0000], sp
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    jr nz, jr_017_57cd

    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    nop
    nop

jr_017_57cd:
    jr nz, jr_017_57e6

    rst $38
    ld l, e
    sbc a
    inc bc
    nop
    nop
    jr jr_017_57fb

    rst $38
    ld l, e
    ld e, h
    ld b, c
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    db $ed

jr_017_57e6:
    inc b
    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    rrca
    ld a, h
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a

jr_017_57fb:
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    ld a, [c]
    inc b
    rst $38
    ld l, e
    jp c, Jump_000_003a

    nop
    inc l
    add hl, de
    rst $38
    ld l, e
    rst $08
    ld sp, $0000
    dec d
    nop
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    jr nz, @+$19

    rst $38
    ld l, e
    sbc a
    inc bc
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    jr jr_017_5847

jr_017_5847:
    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    jr nz, jr_017_5855

    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    ld b, d
    nop

jr_017_5855:
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    ld b, d
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    db $ec
    inc b
    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    add [hl]
    ld bc, $42f0
    inc c
    ld [hl+], a
    add b
    nop
    db $ec
    inc b
    db $fd
    ld a, [hl+]
    or $01
    ld b, d
    nop
    ld [$b804], a
    ld a, [hl-]
    adc $39
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    pop af
    inc b
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    rla
    inc d
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    ld [hl-], a
    dec b
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    pop af
    inc b
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    rla
    inc d
    rst $38
    ld l, e
    sbc c
    ld l, $00
    nop
    jr nz, jr_017_58f6

    rst $38
    ld l, e
    ldh a, [$03]
    nop
    nop
    dec d
    nop
    rst $38
    ld l, e
    sbc d
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    dec d

jr_017_58f6:
    nop
    rst $38
    ld l, e
    sbc d
    ld bc, $0000
    jr nz, jr_017_5916

    rst $38
    ld l, e
    ldh a, [$03]
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    ld l, e
    dec l
    rst $38
    ld l, e
    ld a, h
    ld [$0000], sp
    db $ed

jr_017_5916:
    inc b
    rst $38
    ld l, e
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    db $ed
    inc b
    rst $38
    ld l, e
    dec d
    ld a, [de]
    nop
    nop
    jp hl


    ld e, h
    rst $38
    ld l, e
    dec hl
    ld a, [hl]
    nop
    nop
    jr nz, jr_017_5931

    rst $38
    ld l, e

jr_017_5931:
    rst $38
    ld a, a
    ld b, d
    nop
    db $ec
    inc b
    rst $38
    ld l, e
    or $01
    ld b, d
    nop
    inc c
    ld a, h
    rst $38
    ld l, e
    xor e
    ld a, [hl]
    nop
    nop
    ld [de], a
    jr @+$01

    ld l, e
    cp d
    inc [hl]
    nop
    nop
    jr nz, jr_017_5966

    rst $38
    ld l, e
    sbc a
    inc bc
    nop
    nop
    ld [hl], b
    ld bc, $6bff
    scf
    ld a, [de]
    nop
    nop
    xor h
    add hl, sp
    rst $38
    ld l, e
    sub $4a
    nop
    nop
    ld l, d

jr_017_5966:
    dec h
    rst $38
    ld l, e
    ldh a, [rSCY]
    nop
    nop
    sbc a
    ld [bc], a
    rst $38
    ld l, e
    ld a, h
    ld [$0000], sp
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    xor h
    add hl, sp
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    xor [hl]
    add hl, hl
    jr nc, @+$24

    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor h
    add hl, sp
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld l, d
    dec h
    sub b
    ld b, d
    ret


    ld sp, $0042
    ld [$1f04], a
    inc de
    ld a, c
    ld a, [de]
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor h
    add hl, sp
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld a, b
    inc b
    sbc a
    inc bc
    db $76
    ld [hl], $85
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld l, d
    dec h
    sub b
    ld b, d
    ret


    ld sp, $0042
    ld [$3d04], a
    ld b, e
    ld [hl], $1a
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor h
    add hl, sp
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld [$1f04], a
    inc de
    ld a, c
    ld a, [de]
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld a, b
    inc b
    sbc a
    inc bc
    db $76
    ld [hl], $85
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld a, b
    inc b
    sbc a
    inc bc
    db $76
    ld [hl], $85
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld [$1f04], a
    inc de
    ld a, c
    ld a, [de]
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld a, b
    inc b
    sbc a
    inc bc
    db $76
    ld [hl], $85
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld [$9004], a
    ld b, d
    ret


    ld sp, $0042
    ld [$1f04], a
    inc de
    ld a, c
    ld a, [de]
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor [hl]
    add hl, hl
    rst $38
    ld l, e
    sub $4a
    ld b, d
    nop
    ld a, b
    inc b
    sbc a
    inc bc
    db $76
    ld [hl], $85
    nop
    ld [$1f04], a
    inc de
    ld a, c
    ld a, [de]
    ld b, d
    nop
    nop
    ld a, l
    rst $30
    ld a, a
    ld b, d
    ld a, a
    db $e3
    ld c, b
    xor $64
    rst $38
    ld l, e
    inc sp
    ld a, [hl]
    nop
    nop
    ld a, a
    nop
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    jr nz, jr_017_5af6

    rst $38
    ld l, e
    inc sp
    ld a, [hl]
    nop
    nop
    cpl

jr_017_5af6:
    add hl, bc
    rst $38
    ld l, e
    ld d, a
    ld a, [de]
    nop
    nop
    ld l, c
    dec b
    rst $38
    ld l, e
    ld d, c
    ld [bc], a
    nop
    nop
    rlca
    dec d
    rst $38
    ld l, e
    dec l
    ld [hl-], a
    nop
    nop
    ld d, b
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ret nc

    nop
    rst $38
    ld l, e
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld c, d
    dec e
    rst $38
    ld l, e
    sub h
    ld a, $00
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    inc hl
    ld [bc], a
    rst $38
    ld l, e
    xor $03
    nop
    nop
    ld l, c
    ld b, c
    rst $38
    ld l, e
    or e
    ld e, [hl]
    nop
    nop
    inc de
    ld c, l
    rst $38
    ld l, e
    ld e, l
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    add sp, $00
    rst $38
    ld l, e
    cp e
    ld d, $00
    nop
    ld a, [bc]
    add hl, bc
    rst $38
    ld l, e
    ld d, a
    ld c, $00
    nop
    add sp, $00
    rst $38
    ld l, e
    db $10
    ld a, [de]
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, c
    ld [bc], a
    rst $38
    ld l, e
    xor $03
    nop
    nop
    ld l, a
    dec b
    rst $38
    ld l, e
    cp e
    ld [bc], a
    nop
    nop
    call $ff00
    ld l, e
    inc [hl]
    ld [de], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    dec hl
    ld [bc], a
    rst $38
    ld l, e
    xor $03
    nop
    nop
    ld c, $05
    rst $38
    ld l, e
    cp d
    ld d, $00
    nop
    inc de
    ld c, l
    rst $38
    ld l, e
    ld e, l
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld [hl-], a
    inc e
    rst $38
    ld l, e
    cp a
    ld c, l
    nop
    nop
    ld [hl-], a
    inc e
    rst $38
    ld l, e
    jr jr_017_5c11

    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ld a, a
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld a, [bc]
    ld d, c
    rst $38
    ld l, e
    ld de, $007f
    nop
    ld a, [hl+]
    ld hl, $6bff
    ld [hl], h
    ld b, [hl]
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld h, [hl]
    nop
    rst $38
    ld l, e
    ld [hl], l
    ld bc, $0000
    adc h
    add hl, de
    rst $38
    ld l, e
    or l
    ld a, $00
    nop
    nop
    ld a, h
    nop
    ld a, h

jr_017_5c11:
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    push hl
    jr nc, @+$01

    ld l, e
    db $f4
    ld h, d
    nop
    nop
    and l
    jr z, @+$01

    ld l, e
    call Call_000_0041
    nop
    ld d, b
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld a, [hl+]
    dec d
    rst $38
    ld l, e
    or a
    ld a, [hl+]
    nop
    nop
    dec b
    add hl, de
    rst $38
    ld l, e
    xor c
    dec [hl]
    nop
    nop
    ld d, e
    dec c
    rst $38
    ld l, e
    ld a, [de]
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld b, $35
    rst $38
    ld l, e
    sub c
    ld a, [hl]
    nop
    nop
    inc c
    ld hl, $6bff
    sbc c
    ld e, [hl]
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, l
    ld bc, $6bff
    sub a
    ld a, [hl-]
    nop
    nop
    ld l, b
    ld bc, $6bff
    ld l, l
    ld c, $00
    nop
    ccf
    ld bc, $6bff
    reti


    ld a, $00
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, c
    ld [bc], a
    rst $38
    ld l, e
    xor $03
    nop
    nop
    ld [hl], b
    dec e
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    ld b, b
    ld h, $ff
    ld l, e
    ldh [$3b], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, $0d
    rst $38
    ld l, e
    ld a, a
    ld [hl+], a
    nop
    nop
    inc d
    nop
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ld d, b
    dec c
    rst $38
    ld l, e
    db $fd
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    stop
    rst $38
    ld l, e
    rst $18
    dec b
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ld c, c
    ld [bc], a
    nop
    ld a, h
    xor $03
    nop
    nop
    ld c, a
    ld de, $6bff
    sbc b
    ld d, $00
    nop
    call z, $ff21
    ld l, e
    inc [hl]
    ld b, e
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld l, l
    inc d
    rst $38
    ld l, e
    sbc b
    ld b, d
    nop
    nop
    db $ed
    nop
    rst $38
    ld l, e
    cp c
    ld [hl-], a
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    inc de
    ld bc, $6bff
    rst $30
    dec e
    nop
    nop
    dec d
    ld [bc], a
    rst $38
    ld l, e
    ld d, $1b

Jump_017_5d4b:
    nop
    nop
    ld d, b
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    inc de
    ld bc, $6bff
    rst $30
    dec e
    nop
    nop
    dec d
    ld [bc], a
    rst $38
    ld l, e
    ld d, $1b
    nop
    nop
    ld d, b
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld d, l
    ld a, l
    nop
    nop
    rst $00
    jr @+$01

    ld l, e
    ld de, $0042
    nop
    and a
    inc [hl]
    rst $38
    ld l, e
    ld [hl], e
    ld [hl], d
    nop
    nop
    and a
    inc [hl]
    rst $38
    ld l, e
    ld de, $0042
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, e
    dec h
    rst $38
    ld l, e
    db $10
    ld [hl], $00
    nop
    inc de
    ld bc, $6bff
    db $10
    ld [hl], $00
    nop
    rst $18
    ld bc, $6bff
    rst $38
    ld a, [de]
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld h, $19
    rst $38
    ld l, e
    ld [hl], b
    ld b, d
    nop
    nop
    ld h, h
    ld de, $6bff
    ld b, d
    ld l, e
    nop
    nop
    ld h, a
    dec e
    rst $38
    ld l, e
    adc [hl]
    ld a, [hl-]
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    db $ec
    inc d
    rst $38
    ld l, e
    sub $19
    nop
    nop
    db $ec
    inc d
    rst $38
    ld l, e
    db $dd
    add hl, de
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    adc c
    ld [$6bff], sp
    ld [hl], b
    dec e
    nop
    nop
    ld c, h
    ld bc, $6bff
    sub $1a
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    adc a
    inc [hl]
    rst $38
    ld l, e
    jr c, jr_017_5e89

    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld l, e
    inc h
    rst $38
    ld l, e
    add hl, hl
    ld e, l
    nop
    nop
    ld a, [c]
    inc [hl]
    rst $38
    ld l, e
    sbc b
    ld e, [hl]
    nop
    nop
    ld a, [c]
    inc [hl]
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld h, $01
    rst $38
    ld l, e
    sub c
    ld d, $00
    nop
    ld h, $01
    rst $38
    ld l, e
    jr jr_017_5e8e

    nop
    nop
    ld h, $01
    rst $38
    ld l, e
    ld c, $2a
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld a, [hl+]
    ld bc, $6bff
    sub a
    ld d, $00
    nop
    ld l, c
    ld de, $6bff

jr_017_5e89:
    ld d, d
    ld a, [hl+]
    nop
    nop
    nop

jr_017_5e8e:
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld b, b
    rst $38
    ld l, e
    add a
    ld h, c
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, [hl]
    ld bc, $6bff
    dec [hl]
    ld a, [hl+]
    nop
    nop
    ld d, d
    nop
    rst $38
    ld l, e
    ccf
    ld bc, $0000
    or l
    inc b
    rst $38
    ld l, e
    cp $01
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    call $ff25
    ld l, e
    call nc, $0046
    nop
    dec bc
    ld de, $6bff
    rst $08
    ld hl, $0000
    ld c, c
    add hl, bc
    rst $38
    ld l, e
    push de
    ld a, $00
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld c, d
    dec h
    rst $38
    ld l, e
    jr nc, jr_017_5f4d

    nop
    nop
    ld c, d
    dec h
    rst $38
    ld l, e
    jr nc, jr_017_5f55

    nop
    nop
    ld l, e
    ld hl, $6bff
    ld sp, $003e
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, d
    ld a, a
    nop
    nop
    ld d, b
    ld bc, $6bff
    ld e, c
    ld [de], a
    nop
    nop
    db $ec
    nop
    rst $38
    ld l, e
    ld e, c
    ld [de], a
    nop
    nop
    ld c, $14
    rst $38
    ld l, e
    ld a, l
    inc d
    nop
    nop
    ld c, l
    inc l
    rst $38
    ld l, e
    cp b
    inc a
    nop
    nop
    ld d, c
    nop
    rst $38
    ld l, e
    sbc h
    inc e
    nop
    nop
    ld b, $19
    rst $38
    ld l, e
    ld d, b
    ld b, [hl]
    nop
    nop

jr_017_5f4d:
    dec l
    dec b
    rst $38
    ld l, e
    ld e, e
    ld [bc], a
    nop
    nop

jr_017_5f55:
    inc hl
    dec b
    rst $38
    ld l, e
    adc a
    ld [bc], a
    nop
    nop
    ld l, [hl]
    dec b
    rst $38
    ld l, e
    scf
    ld [bc], a
    nop
    nop
    and $18
    rst $38
    ld l, e
    ld d, b
    ld b, [hl]
    nop
    nop
    ld c, h
    jr z, @+$01

    ld l, e
    or [hl]
    inc h
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    and b
    ld bc, $6bff
    and [hl]
    ld [bc], a
    nop
    nop
    adc c
    dec b
    rst $38
    ld l, e
    ld de, $0002
    nop
    and b
    ld bc, $6bff
    and [hl]
    ld [bc], a
    nop
    nop
    add hl, hl
    ld h, l
    rst $38
    ld l, e
    rrca
    ld a, a
    nop
    nop
    ld l, e
    inc b
    rst $38
    ld l, e
    ld [hl], a
    dec c
    nop
    nop
    xor [hl]
    ld [$6bff], sp
    db $76
    dec c
    nop
    nop
    rrca
    add hl, bc
    rst $38
    ld l, e
    jr c, jr_017_5fbd

    nop
    nop

jr_017_5fbd:
    ld [hl], e
    ld bc, $6bff
    db $dd
    ld [bc], a
    nop
    nop
    call nz, $ff18
    ld l, e
    ld c, e
    ld [hl-], a
    nop
    nop
    dec b
    dec e
    rst $38
    ld l, e
    dec bc
    ld [hl-], a
    nop
    nop
    jr z, jr_017_5fe8

    rst $38
    ld l, e
    xor l
    dec d
    nop
    nop
    rlca
    ld [bc], a
    rst $38
    ld l, e
    ld [hl], b
    inc bc
    nop
    nop
    add $0c
    rst $38

jr_017_5fe8:
    ld l, e
    db $10
    ld e, $00
    nop
    jr z, jr_017_5ffc

    rst $38
    ld l, e
    adc $15
    nop
    nop
    ld [bc], a
    ld b, l
    rst $38
    ld l, e
    rst $00
    ld h, c
    nop

jr_017_5ffc:
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    ld [$ff0d], sp
    ld l, e
    ld [hl], b
    ld l, $00
    nop
    jr z, jr_017_601c

    rst $38
    ld l, e
    db $ed
    ld hl, $0000
    db $e3
    inc l
    rst $38
    ld l, e
    xor d
    ld d, l
    nop

jr_017_601c:
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    add $24
    rst $38
    ld l, e
    rrca
    ld d, d
    nop
    nop
    rlca
    ld sp, $6bff
    xor d
    ld b, c
    nop
    nop
    xor e
    inc d
    rst $38
    ld l, e
    ld [hl], h
    dec e
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    adc e
    inc d
    rst $38
    ld l, e
    sub [hl]
    add hl, hl
    nop
    nop
    xor l
    inc d
    rst $38
    ld l, e
    inc sp
    ld hl, $0000
    ld h, $15
    rst $38
    ld l, e
    ld a, [hl+]
    ld [hl-], a
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    dec l
    inc e
    rst $38
    ld l, e
    ld hl, sp+$44
    nop
    nop
    ld c, $14
    rst $38
    ld l, e
    ld a, l
    inc d
    nop
    nop
    ld d, h
    ld bc, $6bff
    ld a, [de]
    ld [bc], a
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    dec l
    inc e
    rst $38
    ld l, e
    ld hl, sp+$44
    nop
    nop
    ld c, $14
    rst $38
    ld l, e
    ld a, l
    inc d
    nop
    nop
    ld d, h
    ld bc, $6bff
    ld a, [de]
    ld [bc], a
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    dec l
    inc e
    rst $38
    ld l, e
    ld hl, sp+$44
    nop
    nop
    ld c, $14
    rst $38
    ld l, e
    ld a, l
    inc d
    nop
    nop
    ld d, h
    ld bc, $6bff
    ld a, [de]
    ld [bc], a
    nop
    nop
    ld b, e
    dec h
    rst $38
    ld l, e
    ld d, $0c
    nop
    nop
    ld_long $ff04, a
    ld l, e
    rst $38
    ld d, $00
    nop
    ld b, e
    dec h
    rst $38
    ld l, e
    push hl
    ld h, d
    nop
    nop
    xor $00
    rst $38
    ld l, e
    jr jr_017_60dd

    nop
    nop

jr_017_60dd:
    nop
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
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $eb
    ld [$6bff], sp
    or h
    ld de, $0000
    ret z

    ld hl, $6bff
    ldh a, [$2e]
    nop
    nop
    ret z

    ld hl, $6bff
    ldh a, [$2e]
    nop
    nop
    db $eb
    ld [$6bff], sp
    or h
    ld de, $0000
    xor e
    inc d
    rst $38
    ld l, e
    dec [hl]
    add hl, hl
    nop
    nop
    rlca
    dec l
    rst $38
    ld l, e
    rrca
    ld c, d
    nop
    nop
    rlca
    dec l
    rst $38
    ld l, e
    rrca
    ld c, d
    nop
    nop
    xor e
    inc d
    rst $38
    ld l, e
    dec [hl]
    add hl, hl
    nop
    nop
    adc $08
    rst $38
    ld l, e
    inc de
    dec b
    nop
    nop
    ld d, c
    dec b
    rst $38
    ld l, e
    cp d
    ld a, [de]
    nop
    nop
    ld d, c
    dec b
    rst $38
    ld l, e
    cp d
    ld a, [de]
    nop
    nop
    adc $08
    rst $38
    ld l, e
    inc de
    dec b
    nop
    nop
    inc d
    nop
    rst $38
    ld l, e
    rra
    dec d
    nop
    nop
    adc a
    ld [$6bff], sp
    ld a, b
    dec c
    nop
    nop
    adc a
    ld [$6bff], sp
    ld a, b
    dec c
    nop
    nop
    sub b
    inc d
    rst $38
    ld l, e
    call nc, $001c
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    jr nz, jr_017_6202

    nop
    nop
    and h
    ld c, h
    rst $38
    ld l, e
    ld [$007d], a
    nop
    and h
    ld c, h
    rst $38
    ld l, e
    ld [$007d], a
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    jr nz, jr_017_621a

    nop
    nop
    ld b, l
    ld de, $6bff
    ld c, d
    ld a, [hl+]
    nop
    nop
    adc e
    jr z, @+$01

    ld l, e
    ld d, h
    ld e, l
    nop
    nop
    adc e
    jr z, @+$01

    ld l, e
    ld d, h
    ld e, l
    nop
    nop
    ld b, l
    ld de, $6bff
    ld c, d
    ld a, [hl+]
    nop
    nop
    dec b
    ld a, h
    rst $38
    ld l, e
    rra
    ld a, h
    nop
    nop
    adc e
    jr z, @+$01

    ld l, e
    ld d, h
    ld e, l
    nop
    nop
    adc e
    jr z, @+$01

    ld l, e
    ld d, h
    ld e, l
    nop
    nop
    ld b, l
    ld de, $6bff
    ld c, d
    ld a, [hl+]
    nop
    nop
    add sp, $1d
    rst $38
    ld l, e
    ld l, h
    ld e, $00
    nop
    inc l
    ld bc, $6bff
    ld [hl], $02
    nop
    nop
    inc l
    ld bc, $6bff
    ld [hl], $02
    nop
    nop
    add sp, $1d
    rst $38
    ld l, e
    ld l, h
    ld e, $00
    nop
    call z, $ff10
    ld l, e
    ld [hl-], a

jr_017_6202:
    dec e
    nop
    nop
    ld c, d
    add hl, de
    rst $38
    ld l, e
    sub h
    ld b, d
    nop
    nop
    ld c, d
    add hl, de
    rst $38
    ld l, e
    sub h
    ld b, d
    nop
    nop
    call z, $ff10
    ld l, e
    ld [hl-], a

jr_017_621a:
    dec e
    nop
    nop
    and b
    ld bc, $6bff
    and [hl]
    ld [bc], a
    nop
    nop
    and b
    ld bc, $6bff
    ret


    ld [bc], a
    nop
    nop
    and b
    ld bc, $6bff
    ret


    ld [bc], a
    nop
    nop
    and b
    ld bc, $6bff
    and [hl]
    ld [bc], a
    nop
    nop
    ret


    ld hl, $6bff
    add sp, $56
    nop
    nop
    inc l
    ld bc, $6bff
    ld [hl], $02
    nop
    nop
    inc l
    ld bc, $6bff
    ld [hl], $02
    nop
    nop
    ret


    ld hl, $6bff
    add sp, $56
    nop
    nop
    xor $04
    rst $38
    ld l, e
    ld a, d
    ld [bc], a
    nop
    nop
    jp z, $ff4d

    ld l, e
    or d
    halt
    nop
    jp z, $ff4d

    ld l, e
    or d
    halt
    nop
    pop bc
    ld bc, $6bff
    call Call_000_0003
    nop
    dec c
    inc l
    rst $38
    ld l, e
    dec d
    inc a
    nop
    nop
    jp z, $ff4d

    ld l, e
    or d
    halt
    nop
    jp z, $ff4d

    ld l, e
    or d
    halt
    nop
    pop bc
    ld bc, $6bff
    call Call_000_0003
    nop
    xor $04
    rst $38
    ld l, e
    ld a, d
    ld [bc], a
    nop
    nop
    ld b, b
    ld a, l
    rst $38
    ld l, e
    add c
    ld a, a
    nop
    nop
    ldh a, [rP1]
    rst $38
    ld l, e
    ld a, [de]
    ld [bc], a
    nop
    nop
    and c
    ld bc, $6bff
    xor d
    inc bc
    nop
    nop
    dec c
    inc l
    rst $38
    ld l, e
    dec d
    inc a
    nop
    nop
    ld b, b
    ld a, l
    rst $38
    ld l, e
    add c
    ld a, a
    nop
    nop
    ldh a, [rP1]
    rst $38
    ld l, e
    ld a, [de]
    ld [bc], a
    nop
    nop
    and c
    ld bc, $6bff
    xor d
    inc bc
    nop
    nop
    xor $04
    rst $38
    ld l, e
    ld a, d
    ld [bc], a
    nop
    nop
    jp z, $ff4d

    ld l, e
    or d
    halt
    nop
    jp z, $ff4d

    ld l, e
    or d
    halt
    nop
    xor $04
    rst $38
    ld l, e
    ld a, d
    ld [bc], a
    nop
    nop
    cp l
    ld bc, $6bff
    ld e, a
    inc bc
    nop
    nop
    cp l
    ld bc, $6bff
    ld e, a
    inc bc
    nop
    nop
    nop
    ld h, $ff
    ld l, e
    add b
    ld b, a
    nop
    nop
    inc [hl]
    nop
    rst $38
    ld l, e
    or h
    ld a, b
    nop
    nop
    ld [bc], a
    ld b, $ff
    ld l, e
    sub b
    inc bc
    nop
    nop
    nop
    ld a, l
    rst $38
    ld l, e
    ld b, b
    dec de
    nop
    nop
    pop bc
    ld bc, $6bff
    ld l, h
    inc bc
    nop
    nop
    ld d, $0c
    rst $38
    ld l, e
    ld a, [hl]
    dec d
    nop
    nop
    rrca
    ld e, h
    rst $38
    ld l, e
    and b
    ld a, [hl]
    nop
    nop
    pop hl
    ld a, h
    rst $38
    ld l, e
    cp a
    ld [bc], a
    nop
    nop
    jr nz, jr_017_6395

    rst $38
    ld l, e
    adc l
    inc bc
    nop
    nop
    ldh a, [rP1]
    rst $38
    ld l, e
    ld a, [$0005]
    nop
    db $e4
    inc [hl]
    rst $38
    ld l, e
    xor $39
    nop
    nop
    dec d
    inc h
    rst $38
    ld l, e
    rra
    ld h, c
    nop
    nop
    cp l
    ld bc, $6bff
    ld e, a
    inc bc
    nop
    nop
    db $e4
    ld [hl], h
    rst $38
    ld l, e
    ld b, b
    ld a, [hl]
    nop
    nop
    ld l, d
    add hl, hl
    rst $38
    ld l, e
    ld d, c
    ld c, d
    nop
    nop
    ld l, d
    add hl, hl
    rst $38
    ld l, e
    ld d, c
    ld c, d
    nop
    nop
    ld l, d
    add hl, hl
    rst $38
    ld l, e
    ld d, c
    ld c, d
    nop
    nop

jr_017_6395:
    rst $18
    ld bc, $6bff
    rra
    inc bc
    nop
    nop
    sbc $01
    rst $38
    ld l, e
    ld a, a
    inc bc
    nop
    nop
    ld d, l
    ld bc, $6bff
    add b
    ld a, [hl]
    nop
    nop
    jp z, $ff55

    ld l, e
    ld [hl], c
    ld [hl], e
    nop
    nop
    scf
    inc e
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    ld de, $ff2c
    ld l, e
    sbc l
    jr nz, jr_017_63c4

jr_017_63c4:
    nop
    add sp, $0d
    rst $38
    ld l, e
    daa
    ld e, e
    nop
    nop
    ld l, c
    dec c
    rst $38
    ld l, e
    rst $10
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld l, b
    rst $38
    ld l, e
    nop
    ld a, [hl]
    nop
    nop
    jp $ff01


    ld l, e
    and b
    ld [hl-], a
    nop
    nop
    add hl, de
    ld bc, $6bff
    cp a
    ld [bc], a
    nop
    nop
    jr nz, jr_017_643c

    rst $38
    ld l, e
    add b
    ld a, [hl]
    nop
    nop
    ld d, d
    ld [bc], a
    rst $38
    ld l, e
    sbc a
    inc bc
    nop
    nop
    and b
    ld bc, $6bff
    and b
    ld b, $00
    nop
    add [hl]
    ld [bc], a
    rst $38
    ld l, e
    or [hl]
    inc bc
    nop
    nop
    adc h
    ld sp, $6bff
    or d
    ld c, [hl]
    nop
    nop
    ld b, [hl]
    dec d
    rst $38
    ld l, e
    db $dd
    ld [$0000], sp
    pop af
    nop
    rst $38
    ld l, e
    ld d, c
    ld a, $00
    nop
    xor $10
    rst $38
    ld l, e
    ld e, h
    rlca
    nop
    nop
    sbc h
    inc e
    rst $38
    ld l, e
    push bc
    ld b, $00
    nop
    and c
    ld bc, $6bff
    ld h, b
    ld a, [hl]
    nop

jr_017_643c:
    nop
    db $e3
    dec b
    rst $38
    ld l, e
    ld hl, sp+$00
    nop
    nop
    ld sp, $ff01
    ld l, e
    add [hl]
    ld [bc], a
    nop
    nop
    nop
    ld e, $ff
    ld l, e
    ld l, a
    rlca
    nop
    nop
    ld [$ff02], sp
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    ld h, $12
    rst $38
    ld l, e
    inc c
    dec de
    nop
    nop
    inc de
    ld bc, $6bff
    ld a, [de]
    ld [bc], a
    nop
    nop
    ld sp, hl
    ld bc, $6bff
    rst $30
    ld a, h
    nop
    nop
    reti


    nop
    rst $38
    ld l, e
    ccf
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    rst $38
    ld l, e
    inc sp
    inc bc
    nop
    nop
    ld h, b
    ld e, c
    rst $38
    ld l, e
    or a
    ld bc, $0000
    ld a, [c]
    nop
    rst $38
    ld l, e
    sub b
    ld [bc], a
    nop
    nop
    ld a, c
    ld bc, $6bff
    ld e, a
    inc bc
    nop
    nop
    and b
    ld l, c
    rst $38
    ld l, e
    nop
    ld a, a
    nop
    nop
    db $e3
    ld h, h
    rst $38
    ld l, e
    inc hl
    ld a, [hl]
    nop
    nop
    ld [hl], c
    ld l, h
    rst $38
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    scf
    ld bc, $6bff
    inc [hl]
    inc bc
    nop
    nop
    ld c, $3e
    rst $38
    ld l, e
    rst $38
    ld l, e
    nop
    nop
    ld [hl], $24
    rst $38
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    ld h, $35
    rst $38
    ld l, e
    inc c
    ld c, d
    nop
    nop
    ld [de], a
    ld bc, $6bff
    rra
    ld e, [hl]
    nop
    nop
    ld l, h
    ld l, h
    rst $38
    ld l, e
    add a
    ld a, d
    nop
    nop
    pop de
    ld [hl], h
    rst $38
    ld l, e
    rst $18
    ld a, c
    nop
    nop
    dec de
    ld bc, $6bff
    reti


    ld [hl], c
    nop
    nop
    ldh [$79], a
    rst $38
    ld l, e
    ld a, $02
    nop
    nop
    ld l, h
    ld c, b
    rst $38
    ld l, e
    sub $6c
    nop
    nop
    ld b, h
    ld h, c
    rst $38
    ld l, e
    ldh a, [rPCM12]
    nop
    nop
    dec l
    ld b, $ff
    ld l, e
    call nz, $007a
    nop
    ld c, h
    ld [bc], a
    rst $38
    ld l, e
    cp a
    ld [bc], a
    nop
    nop
    cp h
    nop
    rst $38
    ld l, e
    ld e, a
    ld [bc], a
    nop
    nop
    rst $28
    nop
    rst $38
    ld l, e
    ret c

    ld bc, $0000
    cp b
    ld e, b
    rst $38
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    cp h
    ld bc, $6bff
    ld e, a
    inc bc
    nop
    nop
    ld c, [hl]
    inc e
    rst $38
    ld l, e
    ld d, e
    ld bc, $0000
    ld d, a
    jr @+$01

    ld l, e
    ld a, [hl+]
    ld a, [hl]
    nop
    nop
    sub l
    ld e, b
    rst $38
    ld l, e
    ld d, b
    inc bc
    nop
    nop
    ld e, e
    ld [bc], a
    rst $38
    ld l, e
    db $76
    ld l, l
    nop
    nop
    jp hl


    ld bc, $6bff
    cp e
    ld [bc], a
    nop
    nop
    db $dd
    nop
    rst $38
    ld l, e
    cp a
    ld [bc], a
    nop
    nop
    ld a, e
    nop
    rst $38
    ld l, e
    sub a
    ld a, [hl+]
    nop
    nop
    scf
    ld e, b
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    nop
    nop
    ldh [$7d], a
    rst $38
    ld l, e
    ld e, a
    ld [bc], a
    nop
    nop
    rrca
    inc a
    rst $38
    ld l, e
    scf
    ld e, b
    nop
    nop
    inc bc
    ld [bc], a
    rst $38
    ld l, e
    ld [hl], $7d
    nop
    nop
    ld c, l
    ld e, h
    rst $38
    ld l, e
    db $76
    ld l, l
    nop
    nop
    ld h, c
    ld l, c
    rst $38
    ld l, e
    ld a, [hl+]
    ld a, a
    nop
    nop
    db $fd
    nop
    rst $38
    ld l, e
    rst $18
    ld [bc], a
    nop
    nop
    db $ed
    ld a, h
    rst $38
    ld l, e
    ld l, c
    ld a, [hl]
    nop
    nop
    db $db
    nop
    rst $38
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    ld d, d
    ld a, l
    rst $38
    ld l, e
    adc d
    ld a, a
    nop
    nop
    ld c, a
    ld a, h
    rst $38
    ld l, e
    ld e, a
    ld h, l
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld l, e
    adc l
    inc bc
    nop
    nop
    ld [hl], b
    ld h, h
    rst $38
    ld l, e
    add sp, $7e
    nop
    nop
    or d
    ld h, b
    rst $38
    ld l, e
    ld l, [hl]
    ld a, [hl]
    nop
    nop
    call nz, $ff01
    ld l, e
    pop af
    ld [bc], a
    nop
    nop
    pop hl
    ld bc, $6bff
    ld a, [hl+]
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    rst $38
    ld l, e
    adc l
    inc bc
    nop
    nop
    ld [hl], b
    ld h, h
    rst $38
    ld l, e
    ld [hl], $03
    nop
    nop
    pop bc
    ld l, l
    rst $38
    ld l, e
    rst $38
    ld bc, $0000
    db $10
    ld bc, $6bff
    dec de
    ld [bc], a
    nop
    nop
    or l
    ld bc, $6bff
    ret nc

    ld [bc], a
    nop
    nop
    jp c, $ff00

    ld l, e
    ld e, a
    ld [bc], a
    nop
    nop
    db $10
    ld bc, $6bff
    ld a, a
    ld [bc], a
    nop
    nop
    push bc
    ld bc, $6bff
    inc d
    ld [bc], a
    nop
    nop
    pop bc
    ld bc, $6bff
    rla
    ld [bc], a
    nop
    nop
    pop hl
    ld de, $6bff
    inc l
    inc bc
    nop
    nop
    ld d, [hl]
    jr nc, @+$01

    ld l, e
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ld e, e
    nop
    rst $38
    ld l, e
    db $d3
    ld a, b
    nop
    nop
    ld b, b
    ld [bc], a
    rst $38
    ld l, e
    sub e
    inc bc
    nop
    nop
    ld d, h
    nop
    rst $38
    ld l, e
    rra
    ld bc, $0000
    ldh [$58], a
    rst $38
    ld l, e
    and [hl]
    ld a, [hl]
    nop
    nop
    jr jr_017_666f

jr_017_666f:
    rst $38
    ld l, e
    ld [hl], c
    inc bc
    nop
    nop
    ld [de], a
    ld c, b
    rst $38
    ld l, e
    ret


    ld [bc], a
    nop
    nop
    db $10
    jr c, @+$01

    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    ld a, e
    nop
    rst $38
    ld l, e
    adc $7d
    nop
    nop
    ld h, b
    ld l, l
    rst $38
    ld l, e
    ld b, b
    ld b, a
    nop
    nop
    ld d, b
    ld b, h
    rst $38
    ld l, e
    jr jr_017_66f8

    nop
    nop
    sbc h
    ld bc, $6bff
    ld c, [hl]
    inc bc
    nop
    nop
    ld a, b
    ld bc, $6bff
    ccf
    ld [bc], a
    nop
    nop
    ld h, c
    add hl, bc
    rst $38
    ld l, e
    and c
    ld e, $00
    nop
    cp l
    ld bc, $6bff
    ld c, a
    inc bc
    nop
    nop
    ld d, l
    ld b, h
    rst $38
    ld l, e
    db $76
    ld a, $00
    nop
    ld d, $04
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ld l, a
    ld e, h
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    nop
    nop
    ld d, d
    ld bc, $6bff
    ld a, [hl]
    ld [bc], a
    nop
    nop
    db $10
    jr nc, @+$01

    ld l, e
    sbc l
    ld d, c
    nop
    nop
    jr jr_017_66e7

jr_017_66e7:
    rst $38
    ld l, e
    sbc $01
    nop
    nop
    ld de, $ff04
    ld l, e
    cp a
    ld [bc], a
    nop
    nop
    xor a
    nop
    rst $38

jr_017_66f8:
    ld l, e
    sbc e
    ld bc, $0000
    ld e, e
    ld bc, $6bff
    cp a
    ld [bc], a
    nop
    nop
    ld l, l
    ld b, b
    rst $38
    ld l, e
    cp l
    inc b
    nop
    nop
    ld h, b
    ld a, c
    rst $38
    ld l, e
    ccf
    ld [bc], a
    nop
    nop
    jp $ff01


    ld l, e
    cp c
    ld h, h
    nop
    nop
    db $e3
    ld e, b
    rst $38
    ld l, e
    rst $20
    ld a, [hl]
    nop
    nop
    ldh a, [rDIV]
    rst $38
    ld l, e
    ld a, b
    inc [hl]
    nop
    nop
    ld h, b
    ld l, l
    rst $38
    ld l, e
    ld d, a
    ld a, l
    nop
    nop
    ld b, b
    ld l, c
    rst $38
    ld l, e
    and h
    ld a, [hl]
    nop
    nop
    ld h, b
    ld l, l
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    ld [hl], c
    ld b, l
    rst $38
    ld l, e
    jr jr_017_67b5

    nop
    nop
    sbc e
    nop
    rst $38
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    ld [hl], $01
    rst $38
    ld l, e
    cp h
    ld [hl], c
    nop
    nop
    ld e, a
    ld [bc], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    ld [hl], a
    ld b, b
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    ld b, e
    ld h, l
    rst $38
    ld l, e
    jp c, RST_00

    nop
    ld [hl-], a
    ld bc, $6bff
    ld e, l
    ld [bc], a
    nop
    nop
    ld h, $65
    rst $38
    ld l, e
    ld l, b
    rrca
    nop
    nop
    ld l, l
    ld b, b
    rst $38
    ld l, e
    rla
    ld e, c
    nop
    nop
    add [hl]
    ld a, l
    rst $38
    ld l, e
    cp c
    ld e, b
    nop
    nop
    and [hl]
    ld bc, $6bff
    and b
    ld a, [hl]
    nop
    nop
    cp e
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    jp $ff1d


    ld l, e
    ld c, a
    ld a, [hl]
    nop
    nop
    add b
    ld h, l
    rst $38
    ld l, e
    jr nz, jr_017_682a

    nop
    nop

jr_017_67b5:
    and b
    ld [hl], c
    rst $38
    ld l, e
    jr nz, jr_017_6832

    nop
    nop
    rst $20
    ld b, c
    rst $38
    ld l, e
    ld a, [de]
    nop
    nop
    nop
    inc d
    ld b, h
    rst $38
    ld l, e
    ld a, a
    ld [bc], a
    nop
    nop
    ld de, $ff58
    ld l, e
    rst $18
    ld bc, $0000
    dec d
    ld e, b
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    nop
    nop
    di
    dec h
    rst $38
    ld l, e
    ld sp, hl
    ld a, $00
    nop
    inc c
    ld h, b
    rst $38
    ld l, e
    jr nz, jr_017_6865

    nop
    nop
    and b
    add hl, de
    rst $38
    ld l, e
    db $76
    ld [hl], h
    nop
    nop
    call z, $ff78
    ld l, e
    rst $30
    ld [hl], b
    call nz, $e800
    ld l, h
    rst $38
    ld l, e
    or c
    ld a, [hl]
    ldh [rNR10], a
    db $10
    inc [hl]
    rst $38
    ld l, e
    sub [hl]
    ld bc, $0000
    dec bc
    ld b, d
    rst $38
    ld l, e
    ccf
    inc bc
    nop
    nop
    ret nz

    ld [hl], l
    rst $38
    ld l, e
    ld a, b

jr_017_681a:
    ld bc, $0085
    inc d
    ld b, h
    rst $38
    ld l, e
    ccf
    inc bc
    nop
    jr jr_017_68a5

    ld [bc], a
    rst $38
    ld l, e
    add b

jr_017_682a:
    ld a, [hl]
    nop
    jr @+$11

    jr c, @+$01

    ld l, e
    add hl, sp

jr_017_6832:
    ld l, c
    nop
    jr @+$42

    ld h, c
    rst $38
    ld l, e
    db $e3

jr_017_683a:
    ld a, [hl]
    nop
    jr jr_017_681a

    nop
    rst $38
    ld l, e
    cp a
    ld [bc], a
    and [hl]
    nop
    ld e, b
    jr nz, @+$01

    ld l, e
    add sp, $7d
    and [hl]
    nop
    ld de, $ff30
    ld l, e
    db $ed
    ld [bc], a
    ld h, b
    jr jr_017_683a

    dec b
    rst $38
    ld l, e
    db $fd
    ld bc, $0000
    ld sp, $ff20
    ld l, e
    ld a, [de]
    ld e, l
    nop
    nop

jr_017_6865:
    add hl, hl
    dec e
    rst $38
    ld l, e
    sub b
    ld b, c
    nop
    nop
    and b
    ld [hl], l
    rst $38
    ld l, e
    ld e, a
    inc bc
    ld h, b
    db $10
    ld d, $0c
    rst $38
    ld l, e
    rra
    inc bc
    nop
    nop
    rst $28
    nop
    rst $38
    ld l, e
    ld a, [de]
    ld [bc], a
    nop
    nop
    rra
    ld [bc], a
    rst $38
    ld l, e
    ld a, [bc]
    ld a, a
    nop
    nop
    jp hl


    ld a, l
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    nop
    nop
    ld c, c
    ld [bc], a
    rst $38
    ld l, e
    rra
    inc bc
    nop
    nop
    ld b, h
    ld [bc], a
    rst $38
    ld l, e
    ld l, l
    inc bc
    nop
    nop

jr_017_68a5:
    rla
    inc d
    rst $38
    ld l, e
    ld e, a
    inc bc
    nop
    nop
    inc sp
    ld d, b
    rst $38
    ld l, e
    inc h
    ld a, [hl]
    nop
    nop
    ld d, e
    ld bc, $6bff
    ld e, h
    ld [bc], a
    nop
    nop
    inc c
    ld b, h
    rst $38
    ld l, e
    dec d
    ld e, b
    nop
    nop
    ret


    ld [hl], c
    rst $38
    ld l, e
    ld d, h
    ld a, a
    nop
    nop
    add hl, hl
    ld [hl], c
    rst $38
    ld l, e
    call nz, Call_000_007e
    nop
    rst $18
    ld [bc], a
    rst $38
    ld l, e
    dec bc
    ld a, a
    nop
    nop
    ld_long a, $ff00
    ld l, e
    cp a
    ld [bc], a
    nop
    nop
    ld e, b
    ld bc, $6bff
    push bc
    ld a, [hl]
    nop
    nop
    jr c, jr_017_68f0

    rst $38

jr_017_68f0:
    ld l, e
    rra
    inc bc
    nop
    nop
    call $ff4d
    ld l, e
    call nc, Call_000_0062
    nop
    jr jr_017_68ff

jr_017_68ff:
    rst $38
    ld l, e
    ld e, a
    ld [bc], a
    nop
    nop
    sbc [hl]
    ld [bc], a
    rst $38
    ld l, e
    add hl, bc
    ld a, [hl]
    nop
    nop
    ld d, e
    ld e, h
    rst $38
    ld l, e
    ld b, c
    ld a, [bc]
    nop
    nop
    jp nz, $ff01

    ld l, e
    db $fc
    ld bc, $0000
    db $d3
    nop
    rst $38
    ld l, e
    ld e, e
    ld [bc], a
    nop
    nop
    adc $25
    rst $38
    ld l, e
    or l
    ld c, d
    nop
    nop
    add [hl]
    ld h, c
    rst $38
    ld l, e
    ld l, h
    ld [hl], d
    nop
    nop
    ld [hl], c
    ld h, b
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    nop
    nop
    adc c
    ld [hl], l
    rst $38
    ld l, e
    cp c
    ld l, b
    ld h, b
    db $10
    xor d
    ld bc, $6bff
    ld a, b
    ld l, h
    nop
    nop
    cp c
    nop
    rst $38
    ld l, e
    inc c
    ld a, [hl]
    nop
    nop
    and a
    ld bc, $6bff
    jr nz, jr_017_69d9

    nop
    nop
    ld l, c
    ld [bc], a
    rst $38
    ld l, e
    ld e, d
    ld l, l
    nop
    nop
    ld e, b
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    add c
    ld bc, $6bff
    db $eb
    ld c, $00
    nop
    di
    nop
    rst $38
    ld l, e
    rst $18
    ld [bc], a
    nop
    nop
    ld d, e
    ld c, h
    rst $38
    ld l, e
    db $10
    inc bc
    nop
    nop
    rla
    db $10
    rst $38
    ld l, e
    ccf
    ld c, c
    nop
    nop
    ld [hl], $01
    rst $38
    ld l, e
    ld d, c
    inc bc
    and e
    nop
    ld d, e
    ld c, h
    rst $38
    ld l, e
    ld sp, hl
    inc bc
    ld [bc], a
    nop
    rla
    db $10
    rst $38
    ld l, e
    ld e, a
    ld e, c
    nop
    ld [$1017], sp
    rst $38
    ld l, e
    add hl, sp
    ld [hl], l
    nop
    ld [$5583], sp
    rst $38
    ld l, e
    db $dd
    ld bc, $0000
    xor d
    dec c
    rst $38
    ld l, e
    ldh [$7e], a
    nop
    nop
    inc sp
    ld b, [hl]
    cp [hl]
    ld [hl], a
    ld hl, sp+$5e
    ld b, h
    ld [$7c00], sp
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h

jr_017_69d9:
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    and b
    ld sp, $6bff
    ld c, [hl]
    ld e, [hl]
    nop
    nop
    and b
    ld sp, $6bff
    adc a
    ld h, [hl]
    nop
    nop
    and b
    ld sp, $6bff
    ret nc

    ld l, [hl]
    nop
    nop
    ld c, b
    ld e, [hl]
    rst $38
    ld l, e
    ld de, $007b
    nop
    ld [de], a
    nop
    rst $38
    ld l, e
    sbc $01
    nop
    nop
    dec d
    nop
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rla
    nop
    rst $38
    ld l, e
    sbc a
    ld [bc], a
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    ld b, a
    dec e
    rst $38
    ld l, e
    db $ec
    add hl, hl
    nop
    nop
    ld b, a
    dec e
    rst $38
    ld l, e
    db $ec
    add hl, hl
    nop
    nop
    ld h, d
    add hl, de
    rst $38
    ld l, e
    inc h
    ld [hl], $00
    nop
    push hl
    ld l, [hl]
    rst $38
    ld l, e
    di
    ld a, a
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    and b
    ld sp, $6bff
    add sp, $66
    nop
    nop
    and b
    ld sp, $6bff
    add hl, bc
    ld l, e
    nop
    nop
    dec c
    ld bc, $6bff
    sbc a
    ld [bc], a
    nop
    nop
    ld l, d
    ld c, c
    rst $38
    ld l, e
    rra
    ld a, h
    nop
    nop
    ld l, d
    ld c, c
    rst $38
    ld l, e
    rra
    ld a, h
    nop
    nop
    and $6e
    rst $38
    ld l, e
    di
    ld a, a
    nop
    nop
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    inc bc
    ld bc, $6bff
    and d
    ld [bc], a
    nop
    nop
    inc c
    dec b
    rst $38
    ld l, e
    ld b, d
    ld [bc], a
    nop
    nop
    ld de, $ff01
    ld l, e
    ld sp, hl
    ld a, a
    nop
    nop
    ld de, $ff01
    ld l, e
    ld sp, hl
    ld a, a
    nop
    nop
    ld de, $ff01
    ld l, e
    ld sp, hl
    ld a, a
    nop
    nop
    ld de, $ff01
    ld l, e
    ld sp, hl
    ld a, a
    nop
    nop
    jr z, jr_017_6b76

    rst $38
    ld l, e
    ld sp, hl
    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    ld l, e
    adc a
    ld a, a
    rra
    ld a, h
    db $10
    ld b, d
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    nop
    nop
    rst $38
    ld [bc], a
    rla
    nop
    rst $18
    ld bc, $0000
    rst $38
    ld [bc], a
    rla
    nop
    rst $18
    ld bc, $0000
    rst $38
    ld [bc], a
    rla
    nop
    rst $18
    ld bc, $0000
    ld e, a
    inc bc
    rra
    nop
    rst $38
    ld bc, $0000
    ld e, a
    inc bc
    rra
    nop
    rst $38
    ld bc, $0000
    ld e, a
    inc bc
    rra
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld a, a
    rst $38
    ld c, e
    rst $38
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    ld a, a
    inc bc
    cp b
    ld c, d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    dec d
    ld a, [hl]
    nop
    nop
    rst $38
    ld c, e
    ld [hl], d
    ld d, e
    push bc
    ld a, [hl+]
    nop
    nop
    rst $38
    ld c, e
    ld [hl], d
    ld d, e
    push bc
    ld a, [hl+]
    nop
    nop
    rst $38
    ld c, e
    ld [hl], d
    ld d, e
    push bc
    ld a, [hl+]
    nop
    nop
    inc [hl]
    ld a, a
    inc c
    ld e, d
    ret nz

    ld a, l
    nop

jr_017_6b76:
    nop
    inc [hl]
    ld a, a
    inc c
    ld e, d
    ret nz

    ld a, l
    nop
    nop
    inc [hl]
    ld a, a
    inc c
    ld e, d
    ret nz

    ld a, l
    nop
    nop
    rst $38
    inc bc
    ld [hl], d
    ld d, e
    scf
    ld a, l
    nop
    nop
    rst $38
    inc bc
    ld [hl], d
    ld d, e
    scf
    ld a, l
    nop
    nop
    rst $38
    inc bc
    ld [hl], d
    ld d, e
    scf
    ld a, l
    nop
    nop
    rst $18
    dec l
    cp b
    ld c, d
    ld a, [c]
    ld a, l
    nop
    nop
    ldh [rWX], a
    rst $38
    ld [bc], a
    ret z

    ld a, l
    nop
    nop
    rst $38
    ld [bc], a
    cp c
    ld h, b
    nop
    nop
    nop
    nop
    inc e
    ld c, e
    ld a, e
    dec a
    nop
    nop
    nop
    nop
    ldh [rWX], a
    ccf
    ld a, [hl]
    di
    ld h, h
    nop
    nop
    or d
    ld d, [hl]
    scf
    ld e, $f3
    ld h, h
    nop
    nop
    inc e
    ld c, e
    sbc a
    ld de, $20b1
    nop
    nop
    ld [hl], d
    ld e, a
    scf
    ld a, l
    or c
    jr nz, jr_017_6bde

jr_017_6bde:
    nop
    push af
    ld l, e
    inc c
    ld e, d
    ret z

    ld a, l
    nop
    nop
    inc e
    ld c, e
    db $f4
    dec e
    jp hl


    nop
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    or c
    nop
    nop
    nop
    rst $38
    ld c, e
    ld a, a
    ld bc, $0000
    nop
    nop
    rst $38
    ld c, e
    ld a, a
    ld bc, $0000
    nop
    nop
    rst $38
    ld c, e
    or l
    ld a, l
    nop
    nop
    nop
    nop
    rst $38
    ld c, e
    ld [hl], d
    ld d, e
    push bc
    ld a, [hl+]
    nop
    nop
    inc [hl]
    ld a, a
    inc c
    ld e, d
    ret nz

    ld a, l
    nop
    nop
    inc e
    ld c, e
    db $f4
    dec e
    jp hl


    nop
    nop
    nop
    rst $38
    ld e, a
    rst $38
    ld d, $e9
    nop
    nop
    nop
    rst $38
    ld e, a
    db $eb
    ld l, e
    jp hl


    nop
    nop
    nop
    rst $38
    ld e, a
    rst $18
    ld bc, $00e9
    nop
    nop
    ld e, c
    ld a, a
    scf
    ld a, l
    jp hl


    nop
    nop
    nop
    rst $38
    ld e, a
    cp a
    inc bc
    rst $18
    ld bc, $0000
    sbc a
    inc sp
    sub c
    ld l, c
    cp a
    ld h, b
    nop
    nop
    reti


    ld a, a
    rst $38
    ld b, a
    scf
    ld a, l
    nop
    nop
    ld sp, hl
    ld h, e
    rst $18
    ld bc, $0015
    nop
    nop
    db $fd
    ld a, a
    and l
    ld a, [hl]
    ld c, $7f
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_017_7d4d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
