; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

  db $04 ;ROM Bank

jr_004_4001:
    rrca
    ld b, b
    ld d, $40
    add c
    ld b, b
    and a
    ld b, b
    ld h, a
    ld b, c
    db $ec
    ld d, l
    ld a, [$1156]
    dec e
    ld b, b
    call $0d91
    ret


    ld de, $401d        ; start of code
    call Call_004_40cd
    ret


    inc hl
    ld b, b
    ld a, [hl+]
    ld b, b
    dec a
    ld b, b
    dec h
    ld b, b
    nop
    nop
    nop
    nop
    add b
    inc l
    ld b, b
    nop
    nop
    nop
    stop
    ld [$1001], sp
    ld [$0200], sp
    db $10
    ld [$0308], sp
    db $10
    add b
    ld b, l
    ld b, b
    ld c, [hl]
    ld b, b
    ld h, e
    ld b, b
    ld [hl], b
    ld b, b
    nop
    nop
    sub b
    nop
    ld [$9100], sp
    nop
    add b
    nop
    nop
    and [hl]
    nop
    nop
    ld [$00a7], sp
    nop
    db $10
    xor b
    nop
    nop
    jr nc, jr_004_4001

    nop
    ld [$a530], sp
    nop
    add b
    ld hl, sp+$08
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld [$0002], sp
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    ld [$1000], sp
    nop
    ld [$1108], sp
    nop
    add b

                        ;4081
    ldh a, [$c7]        ; load(h) the contents of ffc7 into a
    cp $90              ; compare $90 to a (ffc7)
    jr nc, jr_004_409e  ; jump if a(ffc7) >= $90

    cp $10              ; compare $10 to a(ffc7)
    jr nc, jr_004_4095  ; jump if a(ffc7) >= $10

    call Call_004_4126
    ld de, $4137        ; load 4137 into de
    call $0d91
    ret


jr_004_4095:
    sub $10            ; subreact $10 from a(ffc7)
    ldh [$c7], a       ; load(h) a(ffc7 -$10) into the contents of ffc7
    ld hl, $1000       ; load 1000 into hl
    rst $10            ; call bank $10 func 4005
    ret


jr_004_409e:
    sub $90            ; subtract $90 from a(ffc7)
    ldh [$c7], a       ; load(h) a(ffc7 -$90) into the contents of ffc7 
    ld hl, $1100       ; load 1100 into hl
    rst $10            ; call bank ff10 func 4005
    ret


    ldh a, [$c7]       ; load(h) the contents of ffc7 into a
    cp $90             ; compare $90 to a (ffc7)
    jr nc, jr_004_40c4 ; jump if a(ffc7) >= $90

    cp $10             ; compare $10 to a(ffc7)
    jr nc, jr_004_40bb ; jump if a(ffc7) >= $10

    call Call_004_4126
    ld de, $4137       ;  load 4137 into de
    call Call_004_40cd
    ret


jr_004_40bb:
    sub $10            ; subreact $10 from a(ffc7)
    ldh [$c7], a       ; load(h) a(ffc7 -$10) into the contents of ffc7
    ld hl, $1001       ; load 1000 into hl
    rst $10            ; call bank $10 func 4005
    ret


jr_004_40c4:
    sub $90            ; subtract $90 from a(ffc7)
    ldh [$c7], a       ; load(h) a(ffc7 -$90) into the contents of ffc7 
    ld hl, $1101       ; load 1100 into hl
    rst $10            ; call bank $10 func 4005
    ret


Call_004_40cd:
    push af
    push bc
    push de
    push hl
    ldh a, [$cb]       ; load(h) the contents of ffcb into a
    cp $28             ; compare $28 to a
    jr nc, jr_004_4121 ; jump if a(ffcb) >= $28

    ldh a, [$c7]       ; load(h)ffc7 into a
    ld l, a            ; load a into l
    ld h, $00          ; load $00 into h
    add hl, hl         ; x2 hl
    add hl, de         ; de + hl (hl x2)
    ld e, [hl]         ; load the contents of hl(hlx2+de) into e
    inc hl             ; +1 to hl(hlx2+de)
    ld d, [hl]         ; load the contents of hl(hlx2+de+1) into d
    ldh a, [$c8]       ; load(h) the contents of ffc8 into a
    ld l, a            ; load a(ffc8) into l
    ld h, $00          ; load $00 into h
    add hl, hl         ; x2 hl
    add hl, de         ; add de to hl([hlx2+de+1] x2)
    ld e, [hl]         ; load the contents of hl ([hlx2+de+1]x2 +de) into e
    inc hl             ; +1 to hl([hlx2+de+1] x2 +de)
    ld d, [hl]         ; load the contents of hl([hlx2+de+1] x2 +de +1) into d
    ldh a, [$cb]       ; load(h) ffcb into a
    sla a              ; x2 a(ffcb)
    sla a              ; x2 a(ffcbx2)
    ld l, a            ; load a((ffcbx2) x2) into a 
    ld h, $c0          ; load $c0 into h

jr_004_40f4:
    ld a, [de]         ; load the contents of de(hlx2+1) into a
    inc de             ; +1 to de
    cp $80             ; compare $80 to a
    jr z, jr_004_4121  ; jump to 4121 if not 0

    ld b, a            ; load a(hlx2+1) into b
    ldh a, [$c5]       ; load(h) the contents of ffc5 into a
    add b              ; add b(hlx2+1) to a(ffc5)
    add $10            ; +$10 to a
    ld [hl+], a        ; load a(ffc5 + $10) into hl and +1
    ld a, [de]         ; load the contents of de(hlx2+2) into a
    inc de             ; +1 to de
    ld b, a            ; load a(hlx2+2) into b
    ldh a, [$c3]       ; 
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
    jr c, jr_004_40f4

jr_004_4121:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_004_4126:
    ldh a, [$c7]
    ld hl, $4157
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$ca]
    or [hl]
    ldh [$ca], a
    ret


    scf
    ld [hl], d
    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, jr_004_41bc

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    jr c, jr_004_41c4

    jr c, @+$79

    jr c, jr_004_41c8

    jr c, @+$79

    jr c, @+$79

    jr c, @+$79

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [wGameState]
    res 0, a
    res 2, a
    or a
    ret nz

    ld a, [wGameState]
    bit 0, a
    jr z, jr_004_417f

    ld a, [$c915]
    cp $0b
    ret nz

    jr jr_004_4189

jr_004_417f:
    bit 2, a
    jr z, jr_004_4189

    ld a, [$c91e]
    cp $02
    ret nz

jr_004_4189:
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c825]
    or a
    ret nz

    ld a, [$d8d7]
    bit 0, a
    jp z, Jump_004_41c7

    bit 1, a
    jp nz, Jump_004_41c7

    ld a, [$d8d7]
    bit 4, a
    call nz, Call_004_43ec
    ld a, [$d8d7]
    bit 6, a
    call nz, Call_004_43ec
    ld a, [$d8d7]
    bit 2, a
    jr nz, jr_004_41c8

    bit 3, a
    jp nz, Jump_004_41e0

jr_004_41bc:
    ld a, [$d8d8]
    bit 2, a
    jp nz, Jump_004_43db

jr_004_41c4:
    call Call_004_55f5

Jump_004_41c7:
    ret


jr_004_41c8:
    ld a, [$c8a4]
    and $07
    jr nz, jr_004_41dd

    ld a, [$d8db]
    dec a
    ld [$d8db], a
    jr nz, jr_004_41dd

    ld hl, $d8d7
    res 2, [hl]

jr_004_41dd:
    jp Jump_004_41c7


Jump_004_41e0:
    ld a, [$d8dc]
    or a
    jp nz, Jump_004_42cd

    ld hl, $ff90
    set 0, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    jp z, Jump_004_43d8

    ld a, [$d8dd]
    ld l, a
    ld a, [$d8de]
    ld h, a
    ld a, h
    or l
    jr z, jr_004_425a

    bit 7, h
    jr nz, jr_004_4231

    ld a, [$d8dd]
    sub $01
    ld [$d8dd], a
    ld a, [$d8de]
    sbc $00
    ld [$d8de], a
    ldh a, [$92]
    add $01
    ldh [$92], a
    ldh a, [$93]
    adc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jp nz, Jump_004_42ba

    ld a, $03
    ldh [$8e], a
    jp Jump_004_42ba


jr_004_4231:
    ld a, [$d8dd]
    add $01
    ld [$d8dd], a
    ld a, [$d8de]
    adc $00
    ld [$d8de], a
    ldh a, [$92]
    sub $01
    ldh [$92], a
    ldh a, [$93]
    sbc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_42ba

    ld a, $01
    ldh [$8e], a
    jr jr_004_42ba

jr_004_425a:
    ld a, [$d8df]
    ld l, a
    ld a, [$d8e0]
    ld h, a
    ld a, h
    or l
    jr z, jr_004_42c0

    bit 7, h
    jr nz, jr_004_4293

    ld a, [$d8df]
    sub $01
    ld [$d8df], a
    ld a, [$d8e0]
    sbc $00
    ld [$d8e0], a
    ldh a, [$95]
    add $01
    ldh [$95], a
    ldh a, [$96]
    adc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_42ba

    ld a, $00
    ldh [$8e], a
    jr jr_004_42ba

jr_004_4293:
    ld a, [$d8df]
    add $01
    ld [$d8df], a
    ld a, [$d8e0]
    adc $00
    ld [$d8e0], a
    ldh a, [$95]
    sub $01
    ldh [$95], a
    ldh a, [$96]
    sbc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_42ba

    ld a, $02
    ldh [$8e], a

Jump_004_42ba:
jr_004_42ba:
    call Call_004_454b
    jp Jump_004_43d8


jr_004_42c0:
    ld hl, $ff90
    res 0, [hl]
    ld hl, $d8d7
    res 3, [hl]
    jp Jump_004_43d8


Jump_004_42cd:
    dec a
    swap a
    add a
    ld hl, $d7d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    set 0, [hl]
    res 6, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    jp z, Jump_004_43d8

    ld a, [$d8dd]
    ld e, a
    ld a, [$d8de]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_435f

    bit 7, d
    jr nz, jr_004_4333

    ld a, [$d8dd]
    sub $01
    ld [$d8dd], a
    ld a, [$d8de]
    sbc $00
    ld [$d8de], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_4320

    ld [hl], $03

jr_004_4320:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_004_43d8


jr_004_4333:
    ld a, [$d8dd]
    add $01
    ld [$d8dd], a
    ld a, [$d8de]
    adc $00
    ld [$d8de], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_434d

    ld [hl], $01

jr_004_434d:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_004_43d8

jr_004_435f:
    ld a, [$d8df]
    ld e, a
    ld a, [$d8e0]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_43c7

    bit 7, d
    jr nz, jr_004_439b

    ld a, [$d8df]
    sub $01
    ld [$d8df], a
    ld a, [$d8e0]
    sbc $00
    ld [$d8e0], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_4389

    ld [hl], $00

jr_004_4389:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_004_43d8

jr_004_439b:
    ld a, [$d8df]
    add $01
    ld [$d8df], a
    ld a, [$d8e0]
    adc $00
    ld [$d8e0], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_43b5

    ld [hl], $02

jr_004_43b5:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_004_43d8

jr_004_43c7:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 0, [hl]
    ld hl, $d8d7
    res 3, [hl]

Jump_004_43d8:
jr_004_43d8:
    jp Jump_004_41c7


Jump_004_43db:
    ld a, [$d8db]
    dec a
    ld [$d8db], a
    jr nz, jr_004_43e9

    ld hl, $d8d8
    res 2, [hl]

jr_004_43e9:
    jp Jump_004_41c7


Call_004_43ec:
    ld a, [$d8e9]
    push af
    call Call_004_443d
    pop af
    ld hl, $d8f1
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d8f9
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d901
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d909
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d911
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d919
    or [hl]
    push af
    call Call_004_4584
    pop af
    ld hl, $d921
    or [hl]
    push af
    call Call_004_4584
    pop af
    or a
    ret nz

    ld hl, $d8d7
    res 4, [hl]
    res 6, [hl]
    ret


Call_004_443d:
    ld a, [$d8e9]
    or a
    ret z

    ld a, [$d8d7]
    set 4, a
    ld [$d8d7], a
    ld hl, $d8e9
    ld a, l
    ldh [$d7], a
    ld a, h
    ldh [$d8], a
    ld a, [$d8eb]
    ld hl, $ff95
    cp $01
    jp z, Jump_004_4742

    cp $03
    jp z, Jump_004_47be

    cp $04
    jp z, Jump_004_4857

    cp $06
    jp z, Jump_004_48e2

    cp $07
    jp z, Jump_004_4931

    cp $1a
    jp z, Jump_004_55a9

    ld hl, $ff90
    set 0, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    ret z

    ld a, [$d8ed]
    ld l, a
    ld a, [$d8ee]
    ld h, a
    ld a, h
    or l
    jr z, jr_004_44ea

    bit 7, h
    jr nz, jr_004_44bf

    ld a, [$d8ed]
    sub $01
    ld [$d8ed], a
    ld a, [$d8ee]
    sbc $00
    ld [$d8ee], a
    ldh a, [$92]
    add $01
    ldh [$92], a
    ldh a, [$93]
    adc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jp nz, Jump_004_454b

    ld a, $03
    ldh [$8e], a
    jp Jump_004_454b


jr_004_44bf:
    ld a, [$d8ed]
    add $01
    ld [$d8ed], a
    ld a, [$d8ee]
    adc $00
    ld [$d8ee], a
    ldh a, [$92]
    sub $01
    ldh [$92], a
    ldh a, [$93]
    sbc $00
    ldh [$93], a
    ld a, [$d8d7]
    bit 5, a
    jp nz, Jump_004_454b

    ld a, $01
    ldh [$8e], a
    jp Jump_004_454b


jr_004_44ea:
    ld a, [$d8ef]
    ld l, a
    ld a, [$d8f0]
    ld h, a
    ld a, h
    or l
    jp z, Jump_004_457a

    bit 7, h
    jr nz, jr_004_4524

    ld a, [$d8ef]
    sub $01
    ld [$d8ef], a
    ld a, [$d8f0]
    sbc $00
    ld [$d8f0], a
    ldh a, [$95]
    add $01
    ldh [$95], a
    ldh a, [$96]
    adc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_454b

    ld a, $00
    ldh [$8e], a
    jr jr_004_454b

jr_004_4524:
    ld a, [$d8ef]
    add $01
    ld [$d8ef], a
    ld a, [$d8f0]
    adc $00
    ld [$d8f0], a
    ldh a, [$95]
    sub $01
    ldh [$95], a
    ldh a, [$96]
    sbc $00
    ldh [$96], a
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_454b

    ld a, $02
    ldh [$8e], a

Call_004_454b:
Jump_004_454b:
jr_004_454b:
    ld a, $00
    ldh [$8d], a
    ld a, $00
    ldh [$8f], a
    ldh a, [$8e]
    or a
    ret z

    ld a, $20
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ldh a, [$8e]
    cp $01
    ret z

    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ldh a, [$8e]
    cp $02
    ret z

    ld a, $00
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ret


Jump_004_457a:
    ld hl, $ff90
    res 0, [hl]
    xor a
    ld [$d8e9], a
    ret


Call_004_4584:
    ld a, [hl]
    or a
    ret z

    ld a, [$d8d7]
    set 4, a
    ld [$d8d7], a
    ld a, l
    ldh [$d7], a
    ld a, h
    ldh [$d8], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    dec a
    swap a
    add a
    ld hl, $d7d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ldh a, [$d7]
    add $02
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    push af
    ldh a, [$d5]
    add $1a
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    pop af
    cp $01
    jp z, Jump_004_4742

    cp $02
    jp z, Jump_004_478a

    cp $04
    jp z, Jump_004_4857

    cp $05
    jp z, Jump_004_487f

    cp $08
    jp z, Jump_004_498c

    cp $09
    jp z, Jump_004_49d2

    cp $0a
    jp z, Jump_004_4a2c

    cp $0b
    jp z, Jump_004_4a52

    cp $0c
    jp z, Jump_004_4aa2

    cp $0d
    jp z, Jump_004_4b27

    cp $0e
    jp z, Jump_004_4b6d

    cp $0f
    jp z, Jump_004_4b9b

    cp $10
    jp z, Jump_004_4be7

    cp $11
    jp z, Jump_004_4c33

    cp $12
    jp z, Jump_004_4c65

    cp $13
    jp z, Jump_004_4c9f

    cp $14
    jp z, Jump_004_4d27

    cp $15
    jp z, Jump_004_4da8

    cp $16
    jp z, Jump_004_507b

    cp $17
    jp z, Jump_004_50c6

    cp $18
    jp z, Jump_004_54c8

    cp $19
    jp z, Jump_004_5546

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    set 0, [hl]
    res 6, [hl]
    ld a, [$c8a4]
    and $03
    cp $01
    ret z

    ldh a, [$d7]
    add $04
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_46ba

    bit 7, d
    jr nz, jr_004_468c

    ldh a, [$d7]
    add $04
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    sub $01
    ld [bc], a
    inc bc
    ld a, [bc]
    sbc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_467b

    ld [hl], $03

jr_004_467b:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_468c:
    ldh a, [$d7]
    add $04
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    add $01
    ld [bc], a
    inc bc
    ld a, [bc]
    adc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_46a9

    ld [hl], $01

jr_004_46a9:
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_46ba:
    ldh a, [$d7]
    add $06
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, d
    or e
    jr z, jr_004_472d

    bit 7, d
    jr nz, jr_004_46ff

    ldh a, [$d7]
    add $06
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    sub $01
    ld [bc], a
    inc bc
    ld a, [bc]
    sbc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_46ee

    ld [hl], $00

jr_004_46ee:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_46ff:
    ldh a, [$d7]
    add $06
    ld c, a
    ldh a, [$d8]
    adc $00
    ld b, a
    ld a, [bc]
    add $01
    ld [bc], a
    inc bc
    ld a, [bc]
    adc $00
    ld [bc], a
    inc hl
    ld a, [$d8d7]
    bit 5, a
    jr nz, jr_004_471c

    ld [hl], $02

jr_004_471c:
    ld a, l
    add $14
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    dec hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_004_472d:
    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    res 0, [hl]
    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ret


Jump_004_4742:
    ld bc, $4770

Call_004_4745:
Jump_004_4745:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    push af
    inc a
    ld [de], a
    pop af
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $80
    jr z, jr_004_4767

    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl], a
    ret


Jump_004_4767:
jr_004_4767:
    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ret


    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    add b
    add b

Jump_004_478a:
    ld bc, $4790
    jp Jump_004_4745


    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add b
    add b

Jump_004_47be:
    ld bc, $47d9
    call Call_004_4745
    ld a, [$c850]
    or a
    ret nz

    ld a, [$c8a6]
    and $03
    ret z

    ldh a, [$8e]
    inc a
    and $03
    ldh [$8e], a
    jp Jump_004_454b


    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
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
    db $fc
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_4857:
    ld bc, $485d
    jp Jump_004_4745


    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b

Jump_004_487f:
    ld bc, $4892
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    inc [hl]
    inc [hl]
    ret


    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld a, [$fcff]
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    add b
    add b

Jump_004_48e2:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $40
    jr nz, jr_004_48fc

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ret


jr_004_48fc:
    ld a, [$ca37]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add $73
    ld l, a
    ld a, h
    adc $c9
    ld h, a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$93]
    swap a
    ld c, a
    ldh a, [$96]
    or c
    ld [hl+], a
    ldh a, [$8b]
    ld c, a
    ldh a, [$8d]
    or c
    ld [hl+], a
    ld a, [$ca37]
    inc a
    ld [$ca37], a
    cp $31
    ret c

    xor a
    ld [$ca37], a
    ret


Jump_004_4931:
    ld bc, $494c
    call Call_004_4745
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, l
    sub $02
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a
    ret


    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_498c:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $ff
    jr nz, jr_004_49ae

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld [hl], $00
    ret


jr_004_49ae:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    pop af
    ld b, $0f
    cp $20
    jr c, jr_004_49ca

    ld b, $07
    cp $50
    jr c, jr_004_49ca

    ld b, $03
    cp $90
    jr c, jr_004_49ca

    ld b, $01

jr_004_49ca:
    and b
    or a
    ld [hl], $00
    ret z

    ld [hl], $40
    ret


Jump_004_49d2:
    ld bc, $4a0a
    call Call_004_4745
    ld a, [$c850]
    or a
    ret nz

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $00
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    srl a
    srl a
    and $03
    push af
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    pop af
    ld [hl], a
    jp Jump_004_454b


    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b

Jump_004_4a2c:
    ld bc, $4a32
    jp Jump_004_4745


    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    add b
    add b

Jump_004_4a52:
    ld bc, $4a58
    jp Jump_004_4745


    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    add b
    add b

Jump_004_4aa2:
    ld bc, $4ab5
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    dec [hl]
    dec [hl]
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add b
    add b

Jump_004_4b27:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $ff
    jr nz, jr_004_4b49

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld [hl], $40
    ret


jr_004_4b49:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    pop af
    ld b, $0f
    cp $20
    jr c, jr_004_4b65

    ld b, $07
    cp $50
    jr c, jr_004_4b65

    ld b, $03
    cp $90
    jr c, jr_004_4b65

    ld b, $01

jr_004_4b65:
    and b
    or a
    ld [hl], $40
    ret z

    ld [hl], $00
    ret


Jump_004_4b6d:
    ld a, [$c8a6]
    and $03
    ret nz

    ld bc, $4b79
    jp Jump_004_4745


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
    add b
    add b

Jump_004_4b9b:
    ld bc, $4ba1
    jp Jump_004_4745


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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add b
    add b

Jump_004_4be7:
    ld bc, $4bed
    jp Jump_004_4745


    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_4c33:
    ld bc, $4c39
    jp Jump_004_4745


    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b

Jump_004_4c65:
    ld bc, $4c6b
    jp Jump_004_4745


    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    add b
    add b

Jump_004_4c9f:
    ld bc, $4ca5
    jp Jump_004_4745


    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
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
    db $fc
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_4d27:
    call Call_004_4d5c
    ld a, [$c850]
    or a
    ret nz

    ldh a, [$d5]
    add $05
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld [hl], $00
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    srl a
    srl a
    and $03
    push af
    ldh a, [$d5]
    add $06
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    pop af
    ld [hl], a
    jp Jump_004_454b


Call_004_4d5c:
    ld a, [$c8a6]
    and $01
    ret nz

    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    inc a
    ld [de], a
    cp $ff
    jr nz, jr_004_4d84

    ldh a, [$d7]
    ld l, a
    ldh a, [$d8]
    ld h, a
    ld [hl], $00
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld [hl], $00
    ret


jr_004_4d84:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    pop af
    ld b, $0f
    cp $20
    jr c, jr_004_4da0

    ld b, $07
    cp $50
    jr c, jr_004_4da0

    ld b, $03
    cp $90
    jr c, jr_004_4da0

    ld b, $01

jr_004_4da0:
    and b
    or a
    ld [hl], $00
    ret z

    ld [hl], $40
    ret


Jump_004_4da8:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_004_4dc2

    ld a, [$d8e3]
    ld c, a
    ld a, $0a
    sub c
    add a
    add a
    add a
    inc a
    ld [de], a

jr_004_4dc2:
    ld a, [$d8e4]
    ld bc, $4df3
    cp $01
    jr z, jr_004_4ddd

    ld bc, $4e95
    cp $02
    jr z, jr_004_4ddd

    ld bc, $4f37
    cp $03
    jr z, jr_004_4ddd

    ld bc, $4fd9

jr_004_4ddd:
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    dec bc
    ld a, b
    ld [hl-], a
    ld [hl], c
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    add b
    add b

Jump_004_507b:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_004_5095

    ld a, [$d8e3]
    ld c, a
    ld a, $0a
    sub c
    add a
    add a
    add a
    inc a
    ld [de], a

jr_004_5095:
    ld a, [$d8e4]
    ld bc, $4df3
    cp $01
    jr z, jr_004_50b0

    ld bc, $4e95
    cp $02
    jr z, jr_004_50b0

    ld bc, $4f37
    cp $03
    jr z, jr_004_50b0

    ld bc, $4fd9

jr_004_50b0:
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


Jump_004_50c6:
    ld a, [$d8e3]
    ld bc, $5144
    cp $01
    jr z, jr_004_510b

    ld bc, $5156
    cp $02
    jr z, jr_004_510b

    ld bc, $5178
    cp $03
    jr z, jr_004_510b

    ld bc, $51aa
    cp $04
    jr z, jr_004_510b

    ld bc, $51ec
    cp $05
    jr z, jr_004_510b

    ld bc, $523e
    cp $06
    jr z, jr_004_510b

    ld bc, $52a0
    cp $07
    jr z, jr_004_510b

    ld bc, $5312
    cp $08
    jr z, jr_004_510b

    ld bc, $5394
    cp $09
    jr z, jr_004_510b

    ld bc, $5426

jr_004_510b:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    push af
    inc a
    ld [de], a
    pop af
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $80
    jp z, Jump_004_4767

    ld d, a
    ld a, [hl]
    sub d
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, [hl]
    sbc d
    ld [hl], a
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    dec bc
    dec bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $8000
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    add b
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
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
    add b
    add b

Jump_004_54c8:
    ld a, [$d8e3]
    ld bc, $5144
    cp $01
    jr z, jr_004_550d

    ld bc, $5156
    cp $02
    jr z, jr_004_550d

    ld bc, $5178
    cp $03
    jr z, jr_004_550d

    ld bc, $51aa
    cp $04
    jr z, jr_004_550d

    ld bc, $51ec
    cp $05
    jr z, jr_004_550d

    ld bc, $523e
    cp $06
    jr z, jr_004_550d

    ld bc, $52a0
    cp $07
    jr z, jr_004_550d

    ld bc, $5312
    cp $08
    jr z, jr_004_550d

    ld bc, $5394
    cp $09
    jr z, jr_004_550d

    ld bc, $5426

jr_004_550d:
    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    push af
    inc a
    ld [de], a
    pop af
    add a
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $80
    jp z, Jump_004_4767

    ld d, a
    ld a, [hl]
    sub d
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld d, a
    ld a, [hl]
    sbc d
    ld [hl], a
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    ret


Jump_004_5546:
    ld bc, $5559
    call Call_004_4745
    ldh a, [$d5]
    add $18
    ld l, a
    ldh a, [$d6]
    adc $00
    ld h, a
    dec [hl]
    dec [hl]
    ret


    ld a, [$fcff]
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    add b
    add b

Jump_004_55a9:
    ld bc, $55ca
    call Call_004_4745
    ld a, [$c850]
    or a
    ret nz

    ldh a, [$d7]
    add $01
    ld e, a
    ldh a, [$d8]
    adc $00
    ld d, a
    ld a, [de]
    srl a
    srl a
    and $03
    ldh [$8e], a
    jp Jump_004_454b


    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    add b
    add b
    xor a
    ld [$d8d5], a
    ld [$d8d6], a
    jr jr_004_5605

Call_004_55f5:
Jump_004_55f5:
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

Jump_004_5605:
jr_004_5605:
    call Call_004_71ef
    ld a, b
    and c
    cp $ff
    jr nz, jr_004_5613

    xor a
    ld [$d8d7], a
    ret


jr_004_5613:
    ld hl, $d8d7
    set 0, [hl]
    ld a, b
    cp $ff
    jp nz, $56ec

    ld a, c
    rst $00
    ld de, $4057
    ld d, a
    ld l, a
    ld d, a
    adc b
    ld d, a
    and c
    ld d, a
    db $eb
    ld d, a
    add hl, de
    ld e, b
    inc h
    ld e, b
    ld b, d
    ld e, b
    ld b, e
    ld e, b
    ld h, b
    ld e, b
    sbc b
    ld e, b
    ret nc

    ld e, b
    ld l, b
    ld e, c
    jp nc, $0259

    ld e, d
    ld l, a
    ld e, d
    push bc
    ld e, d
    dec de
    ld e, e
    ld c, c
    ld e, e
    ld a, c
    ld e, e
    adc a
    ld e, e
    call nc, $db5b
    ld e, e
    inc d
    ld e, h
    ld l, l
    ld e, h
    add [hl]
    ld e, h
    rst $08
    ld e, h
    ld a, [de]
    ld e, l
    ld c, e
    ld e, l
    ld d, e
    ld e, l
    ld e, e
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld l, l
    ld e, [hl]
    add a
    ld e, [hl]
    adc a
    ld e, [hl]
    inc de
    ld e, a
    ld [hl], $5f
    ld d, d
    ld e, a
    ld e, h
    ld e, a
    ld h, a
    ld e, a
    sbc d
    ld e, a
    db $db
    ld e, a
    ld [bc], a
    ld h, b
    ld h, h
    ld h, b
    sub e
    ld h, b
    ldh [$61], a
    ld a, [hl-]
    ld h, d
    ld d, e
    ld h, d
    xor e
    ld h, d
    db $dd
    ld h, d
    ld [hl-], a
    ld h, e
    ld c, a
    ld h, e
    cp e
    ld h, e
    add $63
    ld bc, $3f64
    ld h, h
    and a
    ld h, h
    jp nz, $ab64

    ld h, l
    jr jr_004_5700

    jr nz, @+$68

    jr z, @+$68

    ld [hl-], a
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    sbc l
    ld h, [hl]
    cp l
    ld h, [hl]
    inc hl
    ld h, a
    ld l, a
    ld h, a
    or c
    ld h, a
    db $fd
    ld h, a
    ld [hl+], a
    ld l, b
    ld c, l
    ld l, b
    ld h, [hl]
    ld l, b
    ld a, a
    ld l, b
    sbc b
    ld l, b
    and c
    ld l, b
    cp d
    ld l, b
    rst $10
    ld l, b
    dec bc
    ld l, c
    ld d, a
    ld l, c
    ld l, h
    ld l, c
    xor c
    ld l, c
    ld h, c
    ld l, d
    adc $6a
    ld a, [$3a6a]
    ld l, e
    ld [hl], e
    ld l, e
    and b
    ld l, e
    rst $18
    ld l, e
    ld d, [hl]
    ld l, l
    add h
    ld l, l
    sub e
    ld l, l
    ld h, h
    ld l, a
    adc c
    ld l, a
    sbc e
    ld l, a
    ei
    ld l, a
    jr c, @+$72

    ld e, e
    ld [hl], b
    ld a, a
    ld [hl], b
    push de
    ld [hl], b
    jp nc, $2171

    rst $10
    ret c

    set 1, [hl]
    ld a, c
    ld [$d8d9], a
    ld a, b
    ld [$d8da], a
    ret


    ld a, [$d8d7]
    bit 1, a
    ret z

jr_004_5700:
    ld hl, $d8d7
    res 1, [hl]
    ld a, [$d8d9]
    ld l, a
    ld a, [$d8da]
    ld h, a
    call Call_000_0ad9
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_000_26ae
    jp nz, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_000_26ae
    jp z, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    call Call_000_26a6
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    call Call_000_26a0
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c8ef], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c8f0], a
    ld a, b
    ld [$c8f1], a
    ld hl, wGameState
    set 4, [hl]
    xor a
    ld [$c905], a
    ld a, [$c8ef]
    cp $09
    ret z

    cp $0a
    ret z

    ld a, $59
    call PlaySoundEffect
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da03], a
    ld a, b
    ld [$da04], a
    xor a
    ld [$da02], a
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $01
    ld [$da09], a
    ret


    ld a, [wGameState]
    bit 0, a
    ret z

    ld hl, $c915
    inc [hl]
    ret


    ld a, [wGameState]
    bit 0, a
    ret nz

    ld hl, $ffff
    ld a, l
    ld [$c917], a
    ld a, h
    ld [$c918], a
    ld hl, wGameState
    set 0, [hl]
    xor a
    ld [$c915], a
    ld [$c916], a
    ret


    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8db], a
    ld hl, $d8d7
    set 2, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dd], a
    ld a, b
    ld [$d8de], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8df], a
    ld a, b
    ld [$d8e0], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    or a
    jr nz, jr_004_5942

    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef

Jump_004_58fa:
    ld a, c
    or a
    jr nz, jr_004_590d

    ld a, $00
    ldh [$8d], a
    ld a, $00
    ldh [$8f], a
    ld a, $00
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_590d:
    cp $01
    jr nz, jr_004_5920

    ld a, $20
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ld a, $01
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_5920:
    cp $02
    jr nz, jr_004_5933

    ld a, $00
    ldh [$8d], a
    ld a, $02
    ldh [$8f], a
    ld a, $02
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_5933:
    ld a, $00
    ldh [$8d], a
    ld a, $01
    ldh [$8f], a
    ld a, $03
    ldh [$8e], a
    jp Jump_004_55f5


jr_004_5942:
    dec a
    swap a
    add a
    ld hl, $d7d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    or a
    jr nz, jr_004_5996

    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    jr jr_004_59b9

jr_004_5996:
    dec a
    swap a
    add a
    ld hl, $d7d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    add hl, bc

jr_004_59b9:
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [$c925]
    cp c
    jp nz, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d8d7], a
    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld hl, $ff92
    or a
    jr z, jr_004_5a99

    dec a
    swap a
    add a
    ld hl, $d7ea
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_004_5a99:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    ld [$d8dd], a
    ld a, b
    ld [$d8de], a
    ld hl, $d8d7
    set 3, [hl]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8dc], a
    ld hl, $ff95
    or a
    jr z, jr_004_5aef

    dec a
    swap a
    add a
    ld hl, $d7ec
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_004_5aef:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, c
    ld [$d8df], a
    ld a, b
    ld [$d8e0], a
    ld hl, $d8d7
    set 3, [hl]
    ret

                        ; begining of function relating to tresure chests
                        ; inc unknown counter
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    ld l, c             ; load c into l
    ld h, b             ; load b into h
    push hl             ; push hl (location in ram of opened tresure chest flags)
    ld a, [$d8d5]       ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    pop hl              ; pop hl (location in ram of opened tresure chest flags)
    ld [hl], c          ; load c (chests id bit) into the contents of hl (opened chest bit plane)
    jp Jump_004_55f5


    ld a, [$d8d5]       ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    ld l, c             ; load c into l 
    ld h, b             ; load b into h
    push hl             ; push hl (unknown)
    ld a, [$d8d5]       ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    pop hl              ; pop hl (unknown)
    ld [hl], c          ; load c into the contents of hl (unknown)
    inc hl              ; add 1 to the pointer in hl (unknown pointer)
    ld [hl], b          ; loads b into the contents of hl (unknown)
    jp Jump_004_55f5


    ld a, [$d8d5]       ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]       ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    ld l, c             ; load c into l
    ld h, b             ; load b into h
    push hl             ; push hl (unknown)
    ld a, [$d8d5]       ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a

    call Call_004_71ef
    pop hl               ; pop hl (unknown)
    ld a, [$d8d5]        ; inc unknown counter
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [hl]           ; load the contents of hl (unknown) into a
    cp c                 ; compare c to a
    jp nz, Jump_004_55f5 ; jump if a >= c

    call Call_004_71ef
    jp Jump_004_7212


    call Call_000_2518
    call Call_000_25f1
    ret


    ld a, [wMapID]
    cp $2f
    jr nz, jr_004_5c04

    ld a, [$c925]
    cp $04
    jr z, jr_004_5bed

    cp $05
    jr nz, jr_004_5c04

jr_004_5bed:
    ld hl, $9380
    ld de, $9360
    ld b, $20
    call Call_004_5c05
    ld hl, $9600
    ld de, $9620
    ld b, $20
    call Call_004_5c05
    ret


jr_004_5c04:
    ret


Call_004_5c05:
jr_004_5c05:
    di
    call Call_000_1aa6
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    ei
    inc de
    dec b
    jr nz, jr_004_5c05

    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_004_5c36:
    ld a, [de]
    or a
    jr z, jr_004_5c48

    inc c
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_004_5c36

    ld c, $13

jr_004_5c48:
    ld a, c
    ld [$da14], a
    ld hl, $1402
    rst $10
    ld a, [$ca8d]
    cp $03
    jr z, jr_004_5c68

    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$da14]
    ld [hl], a
    ld hl, $ca8d
    inc [hl]

jr_004_5c68:
    ld hl, $0103
    rst $10
    ret


    ld a, [$d8d7]
    bit 4, a
    jp z, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $d8e9
    ld a, c
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], c
    inc hl
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $d8d7
    set 4, [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $d8e9
    ld a, c
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], c
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $d8d7
    set 4, [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, $d8e9
    ld a, c
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $d8d7
    set 4, [hl]
    jp Jump_004_55f5


    ld hl, $d8d7
    set 5, [hl]
    jp Jump_004_55f5


    ld hl, $d8d7
    res 5, [hl]
    jp Jump_004_55f5


    ld a, [$d9ce]
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$d9cd]
    add b
    ld b, a
    add a
    add b
    ld hl, $00e0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    inc hl
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    inc hl
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a
    ld a, $02
    ld [$da02], a
    ld a, [$d9ce]
    cp $09
    jr nz, jr_004_5db9

    ld hl, $01e1
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    ld hl, $01e2
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    ld hl, $01e3
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a

jr_004_5db9:
    ld a, [$d9ce]  ;
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$d9cd]
    add b
    add a
    ld hl, $5e22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$d7ca], a
    ld a, [hl]
    ld [$d7cb], a
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    call Call_004_5e10
    ld [$d7ce], a
    ld a, $01
    ld [$d7cf], a
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    call Call_004_5e10
    ld [$d7cc], a
    ld a, $01
    ld [$d7cd], a
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    call Call_004_5e10
    ld [$d7d0], a
    ld a, $01
    ld [$d7d1], a
    ret


Call_004_5e10:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da18]
    add $10
    ret


    dec bc
    nop
    ld a, [bc]
    nop
    ld de, $0b00
    nop
    ld a, [bc]
    nop
    jp c, Jump_000_0b01

    nop
    ld a, [bc]
    nop
    dec bc
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    rrca
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    inc c
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    inc de
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    inc d
    nop
    ld [$0800], sp
    nop
    ld [$2100], sp
    db $eb
    ret z

    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $01
    ld [$da09], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    call PlaySoundEffect
    jp Jump_004_55f5


    ld hl, $d8d7
    set 6, [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caea
    push bc
    call Call_000_2229
    pop bc
    ld b, $08

jr_004_5ec8:
    ld a, [hl+]
    cp $00
    jr z, jr_004_5efb

    cp $01
    jr z, jr_004_5efb

    cp $02
    jr z, jr_004_5efb

    cp $03
    jr z, jr_004_5efb

    cp $04
    jr z, jr_004_5efb

    cp $05
    jr z, jr_004_5efb

    cp $44
    jr z, jr_004_5efb

    cp $5c
    jr z, jr_004_5efb

    cp $5d
    jr z, jr_004_5efb

    cp $5e
    jr z, jr_004_5efb

    cp $5f
    jr z, jr_004_5efb

    dec b
    jr nz, jr_004_5ec8

    jp Jump_004_55f5


jr_004_5efb:
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d3]
    cp $06
    jr nc, jr_004_5f1f

    ld hl, $0c01
    rst $10
    ret


jr_004_5f1f:
    cp $20
    jr nc, jr_004_5f28

    ld hl, $0d01
    rst $10
    ret


jr_004_5f28:
    cp $40
    jr nc, jr_004_5f31

    ld hl, $0e01
    rst $10
    ret


jr_004_5f31:
    ld hl, $0f01
    rst $10
    ret


    ld a, [$d8e1]
    ld hl, $cac1
    call Call_000_2229
    ld [hl], $00
    ld hl, $0105
    rst $10
    ld hl, $0103
    rst $10
    call Call_000_2518
    call Call_000_25f1
    jp Jump_004_55f5


    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


    ld hl, $0109
    rst $10
    ld hl, $0103
    rst $10
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $cac1
    ld b, $14
    ld c, $00

jr_004_5f7e:
    ld a, [hl]
    or a
    jr z, jr_004_5f8e

    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    dec b
    jr nz, jr_004_5f7e

jr_004_5f8e:
    ld a, c
    cp $14
    jp c, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da12], a
    ld a, b
    ld [$da13], a
    ld de, $cac1
    ld b, $14
    ld c, $00

jr_004_5fbc:
    ld a, [de]
    or a
    jr z, jr_004_5fce

    inc c
    ld a, e
    add $95
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_004_5fbc

    jr jr_004_5fda

jr_004_5fce:
    ld a, c
    ld [$da14], a
    ld hl, $1402
    rst $10
    ld hl, $0103
    rst $10

jr_004_5fda:
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld hl, wInventory
    ld b, $14

jr_004_5ff3:
    ld a, [hl]
    or a
    jr z, jr_004_6000

    cp $ff
    jr z, jr_004_6000

    inc hl
    dec b
    jr nz, jr_004_5ff3

    ret


jr_004_6000:
    ld [hl], c  ;loads item into empty inventory slot from treasure chest [MAY BE MORE]
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $cac1
    ld b, $14
    ld c, $00

jr_004_6019:
    push hl
    ld a, [hl]
    or a
    jr z, jr_004_604c

    cp $01
    jr z, jr_004_604c

    ld a, l
    add $4b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $0a
    jr c, jr_004_604c

    ld a, l
    add $b6
    ld l, a
    ld a, h
    adc $ff
    ld h, a
    ld de, $605c
    ld b, $08

jr_004_603c:
    ld a, [de]
    cp [hl]
    jr nz, jr_004_604c

    inc de
    inc hl
    dec b
    jr nz, jr_004_603c

    pop hl
    call Call_004_71ef
    jp Jump_004_7212


jr_004_604c:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    dec b
    jr nz, jr_004_6019

    jp Jump_004_55f5


    ld h, a
    add l
    ld b, d
    adc l
    ld h, $f0
    ldh a, [$f0]
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, wInventory
    ld b, $14
    ld c, $00

jr_004_607b:
    ld a, [hl+]
    or a
    jr z, jr_004_6087

    cp $ff
    jr z, jr_004_6087

    inc c
    dec b
    jr nz, jr_004_607b

jr_004_6087:
    ld a, c
    cp $14
    jp c, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    add a
    ld hl, $60f4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push hl
    ld d, a
    ld hl, $0107
    rst $10
    ld a, d
    add a
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d8d7
    set 1, [hl]
    ld a, c
    ld [$d8d9], a
    ld a, b
    ld [$d8da], a
    ret


    ld [$3e61], sp
    ld h, c
    ld [hl], h
    ld h, c
    ld a, $61
    ld [$7461], sp
    ld h, c
    ld [hl], h
    ld h, c
    ld [$3e61], sp
    ld h, c
    xor d
    ld h, c
    ld [hl], l
    nop
    ld a, c
    nop
    ld a, l
    nop
    add c
    nop
    add l
    nop
    adc c
    nop
    adc l
    nop
    sub c
    nop
    sub l
    nop
    sbc c
    nop
    sbc l
    nop
    and c
    nop
    and l
    nop
    xor c
    nop
    xor l
    nop
    or c
    nop
    or l
    nop
    cp c
    nop
    cp l
    nop
    pop bc
    nop
    push bc
    nop
    ret


    nop
    call $d100
    nop
    push de
    nop
    reti


    nop
    sbc $00
    halt
    ld a, d
    nop
    ld a, [hl]
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    nop
    adc [hl]
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc d
    nop
    sbc [hl]
    nop
    and d
    nop
    and [hl]
    nop
    xor d
    nop
    xor [hl]
    nop
    or d
    nop
    or [hl]
    nop
    cp d
    nop
    cp [hl]
    nop
    jp nz, $c600

    nop
    jp z, $ce00

    nop
    jp nc, $d600

    nop
    jp c, $df00

    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, a
    nop
    add e
    nop
    add a
    nop
    adc e
    nop
    adc a
    nop
    sub e
    nop
    sub a
    nop
    sbc e
    nop
    sbc a
    nop
    and e
    nop
    and a
    nop
    xor e
    nop
    xor a
    nop
    or e
    nop
    or a
    nop
    cp e
    nop
    cp a
    nop
    jp $c700


    nop
    rlc b
    rst $08
    nop
    db $d3
    nop
    rst $10
    nop
    db $db
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld a, h
    nop
    add b
    nop
    add h
    nop
    adc b
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sbc b
    nop
    sbc h
    nop
    and b
    nop
    and h
    nop
    xor b
    nop
    xor h
    nop
    or b
    nop
    or h
    nop
    cp b
    nop
    cp h
    nop
    ret nz

    nop
    call nz, $c800
    nop
    call z, $d000
    nop
    call nc, $d800
    nop
    call c, $e100
    nop
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    add a
    add a
    add c
    ld c, a
    ld a, [$d9df]
    dec a
    add c
    ld hl, $620d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d9e0], a
    jp Jump_004_55f5


    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0201
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0002
    nop
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    ld bc, $0102
    nop
    ld bc, $0001
    ld bc, $fa00
    push de
    ret c

    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    inc [hl]
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $cb19
    push bc
    call Call_000_2229
    pop bc
    ld a, [hl+]
    sub $64
    ld a, [hl]
    sbc $00
    jp c, Jump_004_55f5

    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld b, $00
    ld c, $00

jr_004_62bf:
    push bc
    ld hl, $ca94
    ld a, b
    call Call_000_267e
    pop bc
    jr z, jr_004_62cb

    inc c

jr_004_62cb:
    inc b
    ld a, b
    cp $f0
    jr nz, jr_004_62bf

    ld a, c
    cp $64
    jp c, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caca
    push bc
    call Call_000_2229
    pop bc
    ld a, [hl]
    cp $af
    jp nz, Jump_004_55f5

    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    ld e, $00
    call Call_000_241a
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caea
    push bc
    call Call_000_2229
    pop bc
    ld b, $08

jr_004_6388:
    ld a, [hl+]
    cp $0f
    jr z, jr_004_63a3

    cp $10
    jr z, jr_004_63a3

    cp $45
    jr z, jr_004_63a3

    cp $11
    jr z, jr_004_63a3

    cp $5a
    jr z, jr_004_63a3

    dec b
    jr nz, jr_004_6388

    jp Jump_004_55f5


jr_004_63a3:
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld hl, $0109
    rst $10
    ld hl, $0103
    rst $10
    jp Jump_004_55f5


    ld a, [$cab4]
    add a
    ld hl, $63ef
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$da03], a
    ld a, [hl]
    ld [$da04], a
    ld a, $00
    ld [$da02], a
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $01
    ld [$da09], a
    ret


    dec a
    ld bc, $013e
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0142
    ld b, e
    ld bc, $0144
    ld b, h
    ld bc, $d5fa
    ret c

    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld hl, $d9cf
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld hl, wInventory
    ld b, $14

jr_004_6424:
    ld a, [hl]
    or a
    jr z, jr_004_6432

    cp $ff
    jr z, jr_004_6432

    inc hl
    dec b
    jr nz, jr_004_6424

    jr jr_004_6433

jr_004_6432:
    ld [hl], c

jr_004_6433:
    ld l, c
    ld h, $08
    ld de, $c180
    call Call_000_097a
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $caea
    push bc
    call Call_000_2229
    pop bc
    ld b, $08

jr_004_6478:
    ld a, [hl+]
    cp $84
    jr z, jr_004_648f

    cp $85
    jr z, jr_004_648f

    cp $86
    jr z, jr_004_648f

    cp $87
    jr z, jr_004_648f

    dec b
    jr nz, jr_004_6478

    jp Jump_004_55f5


jr_004_648f:
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld l, c
    ld h, b
    call Call_000_0ad9
    jp Jump_004_55f5


    ld a, [$ca40]
    ld [$cac0], a
    ld hl, $1604
    rst $10
    ld hl, wGameState
    res 4, [hl]
    res 0, [hl]
    xor a
    ld [$c905], a
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld l, [hl]
    ld h, $05
    ld de, $c190
    call Call_000_097a
    ld a, [$cac0]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    ld de, $c190
    call Call_004_6583
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld de, $c190
    call Call_004_6598
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    add $10
    ld [$c8f4], a
    ld [$d7ca], a
    ld a, $01
    ld [$d7cb], a
    ld a, [$cac0]
    ld hl, $cac2
    call Call_000_223b
    ld a, l
    ld [$c8f2], a
    ld a, h
    ld [$c8f3], a
    ld a, [$cac0]
    ld hl, $cacc
    call Call_000_223b
    ld a, [hl]
    ld [$c8f6], a
    ld a, [$cac0]
    ld hl, $caca
    call Call_000_223b
    ld a, [hl]
    ld [$c8f5], a
    ld a, $08
    ld [$c96d], a
    ld a, $00
    ld [$c96e], a
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
    ld a, $01
    ld [$c96c], a
    ld a, $02
    ld [$d951], a
    xor a
    ld [$d8d7], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    ret


Call_004_6583:
    or a
    ret z

    push af

jr_004_6586:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_004_6586

    dec de
    ld a, $a2
    ld [de], a
    inc de
    pop af
    ld l, e
    ld h, d
    call Call_000_09a4
    ret


Call_004_6598:
    push af

jr_004_6599:
    ld a, [de]
    inc de
    cp $f0
    jr nz, jr_004_6599

    dec de
    pop af
    and $01
    add $a7
    ld [de], a
    inc de
    ld a, $f0
    ld [de], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld hl, wGameState
    set 5, [hl]
    xor a
    ld [$c905], a
    xor a
    ld [$d8d7], a
    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld hl, $d8d8
    set 0, [hl]
    jp Jump_004_55f5


    ld hl, $d8d8
    set 1, [hl]
    jp Jump_004_55f5


    ld a, $04
    call Call_000_1688
    ld hl, $c88e
    inc [hl]
    ret


    ld a, $00
    ld hl, $caca
    call Call_000_2229
    ld l, [hl]
    ld h, $05
    ld de, $c180
    call Call_000_097a
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld d, c
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld hl, $cac1
    ld b, $14
    ld c, $00

jr_004_6671:
    push hl
    ld a, [hl]
    or a
    jr z, jr_004_668d

    cp $01
    jr z, jr_004_668d

    ld a, l
    add $09
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp d
    jr nz, jr_004_668d

    pop hl
    call Call_004_71ef
    jp Jump_004_7212


jr_004_668d:
    pop hl
    ld a, l
    add $95
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc c
    dec b
    jr nz, jr_004_6671

    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [wCurrPlayingBGM]
    ld [$c8b6], a
    ld a, c
    call Call_000_1ae1
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c8f7], a
    ld a, b
    ld [$c8f8], a
    ld a, [wMapID]
    ld c, a
    ld a, [wInGateworld]
    ld b, a
    ld a, c
    ld [$c8fb], a
    ld a, b
    ld [$c8fc], a
    ldh a, [$92]
    ld c, a
    ldh a, [$93]
    ld b, a
    ld a, c
    ld [$c8fd], a
    ld a, b
    ld [$c8fe], a
    ldh a, [$95]
    ld c, a
    ldh a, [$96]
    ld b, a
    ld a, c
    ld [$c8ff], a
    ld a, b
    ld [$c900], a
    ldh a, [$8e]
    ld [$c901], a
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$c902], a
    jp Jump_004_55f5


    ld a, [$c8fb]
    ld c, a
    ld a, [$c8fc]
    ld b, a
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$c8fd]
    ld c, a
    ld a, [$c8fe]
    ld b, a
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$c8ff]
    ld c, a
    ld a, [$c900]
    ld b, a
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d8d7], a
    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$c901]
    ldh [$8e], a
    call Call_004_454b
    ld a, [$c902]
    dec a
    swap a
    add a
    ld hl, $d7d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$8e]
    add $02
    and $03
    ld [hl], a
    ld a, [$c8f0]
    ld c, a
    ld a, [$c8f1]
    ld b, a
    ld a, c
    add $09
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $d8d7
    set 1, [hl]
    ld a, c
    ld [$d8d9], a
    ld a, b
    ld [$d8da], a
    ld hl, wGameState
    set 0, [hl]
    ret


    ld hl, $cab9
    ld a, [hl+]
    ld [$ca8d], a
    ld a, [hl+]
    ld [$ca8e], a
    ld a, [hl+]
    ld [$ca8f], a
    ld a, [hl+]
    ld [$ca90], a
    ld a, [hl+]
    ld [$ca91], a
    ld a, [hl+]
    ld [$ca92], a
    ld a, [hl+]
    ld [$ca93], a
    ld a, [$ca8e]
    call Call_004_67f1
    ld a, [$ca8f]
    call Call_004_67f1
    ld a, [$ca90]
    call Call_004_67f1
    ld hl, $0105
    rst $10
    ld hl, $0109
    rst $10
    ld hl, $0103
    rst $10
    jp Jump_004_55f5


Call_004_67f1:
    cp $ff
    ret z

    ld hl, $cac1
    call Call_000_223b
    ld [hl], $02
    ret


    ld a, [$ddb4]
    ld hl, $ddce
    and [hl]
    ld hl, $dde8
    and [hl]
    ld hl, $de02
    and [hl]
    cp $ff
    jp z, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $02

Jump_004_6838:
    or a
    jp z, Jump_004_58fa

    dec a
    swap a
    add a
    ld hl, $d7d8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $00
    jp Jump_004_6838


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $01
    jp Jump_004_6838


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld c, $03
    jp Jump_004_6838


    ld a, [$c8b6]
    call Call_000_1ae1
    jp Jump_004_55f5


    ld a, [wJoypad_current_frame]
    and $f0
    jp nz, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$d8db], a
    ld hl, $d8d8
    set 2, [hl]
    ret


    ld a, [wMapID]
    ld c, a
    ld a, [wInGateworld]
    ld b, a
    ld a, c
    ld [$c8fb], a
    ld a, b
    ld [$c8fc], a
    ldh a, [$92]
    ld c, a
    ldh a, [$93]
    ld b, a
    ld a, c
    ld [$c8fd], a
    ld a, b
    ld [$c8fe], a
    ldh a, [$95]
    ld c, a
    ldh a, [$96]
    ld b, a
    ld a, c
    ld [$c8ff], a
    ld a, b
    ld [$c900], a
    ldh a, [$8e]
    ld [$c901], a
    jp Jump_004_55f5


    ld a, [$c8fb]
    ld c, a
    ld a, [$c8fc]
    ld b, a
    ld a, c
    ld [$c96d], a
    ld a, b
    ld [$c96e], a
    ld a, [$c8fd]
    ld c, a
    ld a, [$c8fe]
    ld b, a
    ld a, c
    ld [$c96f], a
    ld a, b
    ld [$c970], a
    ld a, [$c8ff]
    ld c, a
    ld a, [$c900]
    ld b, a
    ld a, c
    ld [$c971], a
    ld a, b
    ld [$c972], a
    ld a, $01
    ld [$c96c], a
    ld a, $03
    call Call_000_1688
    ld hl, $c88f
    inc [hl]
    xor a
    ld [$d8d7], a
    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$c901]
    ldh [$8e], a
    call Call_004_454b
    ld hl, $d7f8
    ldh a, [$8e]
    add $02
    and $03
    ld [hl], a
    jp Jump_004_55f5


    ld b, $00
    ld c, $00

jr_004_6970:
    push bc
    ld hl, $ca94
    ld a, b
    call Call_000_267e
    pop bc
    jr z, jr_004_697c

    inc c

jr_004_697c:
    inc b
    ld a, b
    cp $f0
    jr nz, jr_004_6970

    push bc
    ld a, c
    ld hl, $c180
    call Call_000_09a4
    pop bc
    ld hl, $699d
    ld a, c
    ld e, $ff

jr_004_6991:
    cp [hl]
    inc hl
    inc e
    jr nc, jr_004_6991

    ld a, e
    ld [$d8e1], a
    jp Jump_004_55f5


    rlca
    db $10
    ld a, [de]
    ld h, $32
    ld b, a
    ld h, h
    add e
    and c
    ret z

    rst $10
    rst $38
    ld bc, $0000
    ld a, [$ca8e]
    call $6a4e
    ld a, [$ca8f]
    call $6a4e
    ld a, [$ca90]
    call $6a4e
    ld l, c
    ld h, b
    inc hl
    ld a, $14
    call Call_000_1e0d
    ld a, l
    cp $07
    jr c, jr_004_69cd

    ld a, $07

jr_004_69cd:
    ld hl, $6a3c
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call GenerateRNG
    pop hl
    push hl
    ld a, [wRNG1]
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da03], a
    ld a, h
    ld [$da04], a
    pop hl
    push hl
    call GenerateRNG
    pop hl
    push hl
    ld a, [wRNG1]
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da05], a
    ld a, h
    ld [$da06], a
    pop hl
    push hl
    call GenerateRNG
    pop hl
    push hl
    ld a, [wRNG1]
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$da07], a
    ld a, h
    ld [$da08], a
    pop hl
    ld a, $02
    ld [$da02], a
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $02
    ld [$da09], a
    ret


    ld h, b
    ld bc, $0170
    add b
    ld bc, $0190
    and b
    ld bc, $01b0
    ret nz

    ld bc, $01d0
    ret nc

    ld bc, $fffe
    ret z

    push bc
    ld hl, $cb0c
    call Call_000_223b
    pop bc
    ld a, [hl]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ret


    ldh a, [$95]
    and $f0
    ld l, a
    ldh a, [$96]
    ld h, a
    ld a, [$d7ec]
    and $f0
    ld e, a
    ld a, [$d7ed]
    ld d, a
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    pop hl
    jr z, jr_004_6a8d

    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $00
    jr c, jr_004_6abc

    ld a, $02
    jr jr_004_6abc

jr_004_6a8d:
    ldh a, [$92]
    and $f0
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, [$d7ea]
    and $f0
    ld e, a
    ld a, [$d7eb]
    ld d, a
    push hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    pop hl
    jr z, jr_004_6ab9

    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, $03
    jr c, jr_004_6abc

    ld a, $01
    jr jr_004_6abc

jr_004_6ab9:
    jp Jump_004_55f5


jr_004_6abc:
    ldh [$8e], a
    call Call_004_454b
    ld hl, $d7d8
    ldh a, [$8e]
    add $02
    and $03
    ld [hl], a
    jp Jump_004_55f5


    ld a, [wRNG1]
    ld b, a
    ld a, $25
    call Call_000_1dfb
    inc a
    ld c, a
    ld hl, wInventory
    ld b, $14

jr_004_6ade:
    ld a, [hl]
    or a
    jr z, jr_004_6aed

    cp $ff
    jr z, jr_004_6aed

    inc hl
    dec b
    jr nz, jr_004_6ade

    jp Jump_004_55f5


jr_004_6aed:
    ld [hl], c
    ld l, c
    ld h, $08
    ld de, $c180
    call Call_000_097a
    jp Jump_004_55f5


    ld hl, wInventory
    ld b, $14
    ld c, $00

jr_004_6b01:
    ld a, [hl]
    or a
    jr z, jr_004_6b0e

    cp $ff
    jr z, jr_004_6b0e

    inc hl
    inc c
    dec b
    jr nz, jr_004_6b01

jr_004_6b0e:
    ld a, c
    ld [$d8e1], a
    or a
    jp z, Jump_004_55f5

    ld a, [wRNG1]
    ld b, a
    ld a, c
    call Call_000_1dfb
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld [hl], $ff
    ld l, c
    ld h, $08
    ld de, $c180
    call Call_000_097a
    ld hl, $0305
    rst $10
    jp Jump_004_55f5


    ld a, [wCurrGoldLo]
    ld l, a
    ld a, [wCurrGoldMid]
    ld h, a
    ld a, [wCurrGoldHi]
    ld e, a
    ld a, $0a
    call Call_000_1e1e
    ld a, h
    or l
    or e
    ld [$d8e1], a
    or a
    jp z, Jump_004_55f5

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld hl, $c180
    call Call_000_09c7
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ldh a, [$d7]
    ld e, a
    call Call_000_2424
    jp Jump_004_55f5


    ld a, [wRNG1]
    ld b, a
    ld a, $05
    call Call_000_1dfb
    add $13
    ld c, a
    ld hl, wInventory
    ld b, $14

jr_004_6b84:
    ld a, [hl]
    or a
    jr z, jr_004_6b93

    cp $ff
    jr z, jr_004_6b93

    inc hl
    dec b
    jr nz, jr_004_6b84

    jp Jump_004_55f5


jr_004_6b93:
    ld [hl], c
    ld l, c
    ld h, $08
    ld de, $c180
    call Call_000_097a
    jp Jump_004_55f5


    ld a, [$c93a]
    dec a
    dec a
    ld b, a
    ld a, [$c939]
    cp b
    jr z, jr_004_6bb9

    add $13
    ld [$c939], a
    cp b
    jr c, jr_004_6bb9

    ld a, b
    dec a
    ld [$c939], a

jr_004_6bb9:
    ld a, $01
    ld [$c96c], a
    ld a, $00
    ld [$c96d], a
    ld a, $80
    ld [$c96e], a
    ld hl, wGameState
    set 5, [hl]
    xor a
    ld [$c905], a
    xor a
    ld [$d8d7], a
    ld hl, wGameState
    res 0, [hl]
    xor a
    ld [$c825], a
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld hl, $ca8e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d8e1], a
    cp $ff
    jp z, Jump_004_55f5

    ld [$cac0], a
    ld hl, $cb13
    call Call_000_223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb17
    call Call_004_6d40
    jr c, jr_004_6c47

    ld hl, $cb19
    call Call_004_6d40
    jr c, jr_004_6c47

    ld hl, $cb1b
    call Call_004_6d40
    jr c, jr_004_6c47

    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6c47

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6c47

    ld hl, $0014
    ld a, [$cac0]
    call Call_000_23e9
    ld a, $00
    jp Jump_004_6d0a


jr_004_6c47:
    ld a, [$cac0]
    ld hl, $cb17
    call Call_000_223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb19
    call Call_004_6d40
    jr c, jr_004_6c81

    ld hl, $cb1b
    call Call_004_6d40
    jr c, jr_004_6c81

    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6c81

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6c81

    ld hl, $0014
    ld a, [$cac0]
    call Call_000_2403
    ld a, $01
    jp Jump_004_6d0a


jr_004_6c81:
    ld a, [$cac0]
    ld hl, $cb19
    call Call_000_223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb1b
    call Call_004_6d40
    jr c, jr_004_6cb2

    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6cb2

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6cb2

    ld hl, $0014
    ld a, [$cac0]
    call Call_000_2307
    ld a, $02
    jr jr_004_6d0a

jr_004_6cb2:
    ld a, [$cac0]
    ld hl, $cb1b
    call Call_000_223b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb1d
    call Call_004_6d35
    jr c, jr_004_6cdb

    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6cdb

    ld hl, $0014
    ld a, [$cac0]
    call Call_000_2321
    ld a, $03
    jr jr_004_6d0a

jr_004_6cdb:
    ld a, [$cac0]
    ld hl, $cb1d
    call Call_000_223b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld e, l
    ld d, h
    ld hl, $cb1f
    call Call_004_6d29
    jr c, jr_004_6cff

    ld hl, $0014
    ld a, [$cac0]
    call Call_000_233b
    ld a, $04
    jr jr_004_6d0a

jr_004_6cff:
    ld hl, $0014
    ld a, [$cac0]
    call Call_000_2355
    ld a, $05

Jump_004_6d0a:
jr_004_6d0a:
    add $35
    ld l, a
    ld h, $02
    ld de, $c190
    call Call_000_097a
    ld a, [$cac0]
    ld hl, $cac2
    call Call_000_223b
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    jp Jump_004_55f5


Call_004_6d29:
    call Call_004_6d4a
    add hl, hl
    add hl, hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_004_6d35:
    call Call_004_6d4a
    add hl, hl
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_004_6d40:
    call Call_004_6d4a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ret


Call_004_6d4a:
    push de
    ld a, [$cac0]
    call Call_000_223b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, c
    ld [$da03], a
    ld a, b
    ld [$da04], a
    xor a
    ld [$da02], a
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $03
    ld [$da09], a
    ret


    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $03
    ld [$da09], a
    ret


    ld a, [$d9cf]
    bit 7, a
    jr nz, jr_004_6d9e

    ld hl, $d9cf
    inc [hl]

jr_004_6d9e:
    call Call_004_6eb3
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
    call Call_004_6eb3
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
    call Call_004_6eb3
    ld hl, $d7ca
    call Call_004_6e41
    ld hl, $6f44
    ld a, [$d9cf]
    cp $09
    jr c, jr_004_6e1a

    ld hl, $6f54

jr_004_6e1a:
    push hl
    call GenerateRNG
    ld a, [wRNG1]
    and $0f
    pop hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d9d0], a
    xor a
    ld [$d9cd], a
    ld a, [$d9d0]
    ld l, a
    ld h, $08
    ld de, $c180
    call Call_000_097a
    jp Jump_004_55f5


Call_004_6e41:
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
    call Call_004_6ea9
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
    call Call_004_6ea9
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
    call Call_004_6ea9
    pop hl
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ret


Call_004_6ea9:
    ld hl, $1401
    rst $10
    ld a, [$da18]
    add $10
    ret


Call_004_6eb3:
    ld b, $00
    ld a, [$ca8e]
    call Call_004_6f05
    ld a, [$ca8f]
    call Call_004_6f05
    ld a, [$ca90]
    call Call_004_6f05
    ld a, b
    ld hl, $0209
    cp $04
    jr c, jr_004_6f13

    ld hl, $0d12
    cp $0a
    jr c, jr_004_6f13

    ld hl, $2112
    cp $10
    jr c, jr_004_6f13

    ld hl, $3912
    cp $16
    jr c, jr_004_6f13

    ld hl, $5112
    cp $1c
    jr c, jr_004_6f13

    ld hl, $6912
    cp $22
    jr c, jr_004_6f13

    ld hl, $8112
    cp $28
    jr c, jr_004_6f13

    ld hl, $9d12
    cp $2e
    jr c, jr_004_6f13

    ld hl, $b512
    jr jr_004_6f13

Call_004_6f05:
    cp $ff
    ret z

    ld hl, $cb0c
    call Call_000_223b
    ld a, [hl]
    cp b
    ret c

    ld b, a
    ret


jr_004_6f13:
    ld a, $02
    ld [$da02], a
    call Call_004_6f35
    ld [$da03], a
    call Call_004_6f35
    ld [$da05], a
    call Call_004_6f35
    ld [$da07], a
    xor a
    ld [$da04], a
    ld [$da06], a
    ld [$da08], a
    ret


Call_004_6f35:
    push hl
    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, l
    call Call_000_1dfb
    pop hl
    add h
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
    dec c
    ld c, $0f
    db $10
    ld de, $1e12
    rra
    jr nz, jr_004_6f7f

    ld [hl+], a
    inc hl
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld a, [$d9d0]
    ld l, a
    ld h, $08
    ld de, $c180
    call Call_000_097a
    ld hl, wInventory
    ld b, $14

jr_004_6f75:
    ld a, [hl]
    or a
    jr z, jr_004_6f82

    cp $ff
    jr z, jr_004_6f82

    inc hl
    dec b

jr_004_6f7f:
    jr nz, jr_004_6f75

    ret


jr_004_6f82:
    ld a, [$d9d0]
    ld [hl], a
    jp Jump_004_55f5


    ld a, $07
    ld [$d951], a
    xor a
    ld hl, $c0d8
    ld bc, $0028
    call FillNBytesWithRegA
    jp Jump_004_55f5


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    call Call_004_71ef
    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, c
    ld a, [$ca8d]
    cp c
    jp z, Jump_004_55f5

    jp c, Jump_004_55f5

    ld a, c
    ld hl, $cb0d
    push bc
    call Call_000_2229
    ld a, [hl]
    push hl
    ld hl, $c190
    call Call_000_09a4
    pop hl
    pop bc
    push hl
    ld a, c
    ld [$d8e1], a
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    ld hl, $c180
    call Call_000_0c80
    pop hl
    ld a, [hl-]
    dec a
    cp [hl]
    jp nc, Jump_004_55f5

    call Call_004_71ef
    jp Jump_004_7212


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [$ca40]
    ld hl, $cb23
    call Call_000_223b
    ld a, [hl]
    inc a
    ld c, $0a
    call Call_000_1dbe
    ld a, [wCurrGoldLo]
    sub l
    ld a, [wCurrGoldMid]
    sbc h
    ld a, [wCurrGoldHi]
    sbc $00
    jr nc, jr_004_7030

    call Call_004_71ef
    jp Jump_004_7212


jr_004_7030:
    ld e, $00
    call Call_000_2424
    jp Jump_004_55f5


    ld a, [$d8d3]
    cp $06
    jr nc, jr_004_7044

    ld hl, $0c02
    rst $10
    ret


jr_004_7044:
    cp $20
    jr nc, jr_004_704d

    ld hl, $0d02
    rst $10
    ret


jr_004_704d:
    cp $40
    jr nc, jr_004_7056

    ld hl, $0e02
    rst $10
    ret


jr_004_7056:
    ld hl, $0f02
    rst $10
    ret


    ld hl, $8da0
    ld b, $10
    ld a, $ff

jr_004_7062:
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_004_7062

    ld hl, $9800
    ld b, $00
    ld a, $da

jr_004_706f:
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    dec b
    jr nz, jr_004_706f

    ret


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
    ld de, $c300
    ld c, $10

jr_004_70a1:
    ld b, $14
    push hl

jr_004_70a4:
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
    jr nz, jr_004_70a4

    pop hl
    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_004_70a1

    ld hl, $0103
    rst $10
    ret


    ld a, [$d8d5]
    add $01
    ld [$d8d5], a
    ld a, [$d8d6]
    adc $00
    ld [$d8d6], a
    ld a, [$ca8d]
    or a
    jp z, Jump_004_71c9

    ld a, $00
    ld hl, $cb0b
    call Call_000_224a
    or a
    jp nz, Jump_004_71cf

    ld a, $00
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $00
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jp nz, Jump_004_71cf

    ld a, $00
    ld hl, $cb17
    call Call_000_224f
    push bc
    ld a, $00
    ld hl, $cb15
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jp nz, Jump_004_71cf

    ld a, [$ca8d]
    cp $01
    jp z, Jump_004_71c9

    ld a, $01
    ld hl, $cb0b
    call Call_000_224a
    or a
    jp nz, Jump_004_71cf

    ld a, $01
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $01
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_004_71cf

    ld a, $01
    ld hl, $cb17
    call Call_000_224f
    push bc
    ld a, $01
    ld hl, $cb15
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_004_71cf

    ld a, [$ca8d]
    cp $02
    jr z, jr_004_71c9

    ld a, $02
    ld hl, $cb0b
    call Call_000_224a
    or a
    jp nz, Jump_004_71cf

    ld a, $02
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $02
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_004_71cf

    ld a, $02
    ld hl, $cb17
    call Call_000_224f
    push bc
    ld a, $02
    ld hl, $cb15
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    jr nz, jr_004_71cf

Jump_004_71c9:
jr_004_71c9:
    call Call_004_71ef
    jp Jump_004_7212


Jump_004_71cf:
jr_004_71cf:
    jp Jump_004_55f5


    ld a, [$dd80]
    ld hl, $dd9a
    and [hl]
    cp $ff
    jp z, Jump_004_55f5

    ld a, [$d8d5]
    sub $01
    ld [$d8d5], a
    ld a, [$d8d6]
    sbc $00
    ld [$d8d6], a
    ret


Call_004_71ef:
    ld a, [$d8d3]       ; load the contents of d8d3 into a
    cp $06              ; compare $06 to a
    jr nc, jr_004_71fb

    ld hl, $0c00        ; load 0c00 (rom bank c ram bank 0) into hl
    rst $10             ; push current address then go to address 10 bank 0
    ret


jr_004_71fb:
    cp $20
    jr nc, jr_004_7204

    ld hl, $0d00
    rst $10

jr_004_7203:
    ret


jr_004_7204:
    cp $40
    jr nc, jr_004_720d

    ld hl, $0e00
    rst $10
    ret


jr_004_720d:
    ld hl, $0f00
    rst $10
    ret


Jump_004_7212:
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    ld a, b
    push af
    srl b
    rr c
    pop af
    and $80
    or b
    ld b, a
    ld a, [$d8d5]
    ld l, a
    ld a, [$d8d6]
    ld h, a
    add hl, bc
    ld a, l
    ld [$d8d5], a
    ld a, h
    ld [$d8d6], a
    jp Jump_004_5605


    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    add e
    ld [hl], d
    sub h
    ld [hl], d
    and l
    ld [hl], d
    or [hl]
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    rst $00
    ld [hl], d
    or h
    ld [hl], e
    sbc c
    ld [hl], h
    add d
    ld [hl], l
    ld l, e
    db $76
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    ldh a, [rP1]
    inc bc
    jr nz, jr_004_7203

    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [$f8]
    inc de
    nop
    add b
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rP1]
    dec c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    db $10
    jr nz, @-$06

    ld hl, sp+$11
    nop
    ld hl, sp+$00
    ld [de], a
    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    add sp, $01
    db $10
    ret z

    ldh a, [rSC]
    db $10
    ret z

    ld hl, sp+$03
    db $10
    ret z

    nop
    inc b
    db $10
    ret z

    ld [$1005], sp
    ret z

    db $10
    ld b, $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    add sp, $11
    db $10
    ret nc

    ldh a, [rNR12]
    db $10
    ret nc

    ld hl, sp+$13
    db $10
    ret nc

    nop
    inc d
    db $10
    ret nc

    ld [$1015], sp
    ret nc

    db $10
    ld d, $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ret c

    add sp, $21
    nop
    ret c

    ldh a, [rNR43]
    nop
    ret c

    ld hl, sp+$23
    nop
    ret c

    nop
    inc h
    nop
    ret c

    ld [$0025], sp
    ret c

    db $10
    ld h, $00
    ldh [$e0], a
    jr nc, jr_004_7337

    ldh [$e8], a
    ld sp, $e010
    ldh a, [$32]
    db $10
    ldh [$f8], a
    inc sp
    db $10
    ldh [rP1], a
    inc [hl]
    db $10

jr_004_7337:
    ldh [$08], a
    dec [hl]
    db $10
    ldh [rNR10], a
    ld [hl], $10
    add sp, -$20
    ld b, b
    db $10
    add sp, -$18
    ld b, c
    db $10
    add sp, -$10
    ld b, d
    db $10
    add sp, -$08
    ld b, e
    db $10
    add sp, $00
    ld b, h
    db $10
    add sp, $08
    ld b, l
    db $10
    add sp, $10
    ld b, [hl]
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ldh a, [$e8]
    ld d, c
    db $10
    ldh a, [$f0]
    ld d, d
    db $10
    ldh a, [$f8]
    ld d, e
    db $10
    ldh a, [rP1]
    ld d, h
    db $10
    ldh a, [$08]
    ld d, l
    db $10
    ldh a, [rNR10]
    ld d, [hl]
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ld hl, sp-$18
    ld h, c
    nop
    ld hl, sp-$10
    ld h, d
    nop
    ld hl, sp-$08
    ld h, e
    nop
    ld hl, sp+$00
    ld h, h
    nop
    ld hl, sp+$08
    ld h, l
    nop
    ld hl, sp+$10
    ld h, [hl]
    nop
    nop
    ldh [rSVBK], a
    stop
    add sp, $71
    nop
    nop
    ldh a, [$72]
    nop
    nop
    ld hl, sp+$73
    nop
    nop
    nop
    ld [hl], h
    nop
    nop
    ld [$0075], sp
    nop
    db $10
    halt
    nop
    jr @+$79

    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_004_73dc

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret z

    add sp, $07
    db $10

jr_004_73dc:
    ret z

    ldh a, [$08]
    db $10
    ret z

    ld hl, sp+$09
    db $10
    ret z

    nop
    ld a, [bc]
    db $10
    ret z

    ld [$100b], sp
    ret z

    db $10
    inc c
    db $10
    ret nc

    add sp, $17
    db $10
    ret nc

    ldh a, [rNR23]
    db $10
    ret nc

    ld hl, sp+$19
    db $10
    ret nc

    nop
    ld a, [de]
    db $10
    ret nc

    ld [$101b], sp
    ret nc

    db $10
    inc e
    db $10
    ret c

    add sp, $27
    nop
    ret c

    ldh a, [$28]
    nop
    ret c

    ld hl, sp+$29
    nop
    ret c

    nop
    ld a, [hl+]
    nop
    ret c

    ld [$002b], sp
    ret c

    db $10
    inc l
    nop
    ldh [$e8], a
    scf
    db $10
    ldh [$f0], a
    jr c, jr_004_7438

    ldh [$f8], a
    add hl, sp
    db $10
    ldh [rP1], a
    ld a, [hl-]
    db $10
    ldh [$08], a
    dec sp
    db $10
    ldh [rNR10], a
    inc a
    db $10

jr_004_7438:
    add sp, -$18
    ld b, a
    db $10
    add sp, -$10
    ld c, b
    db $10
    add sp, -$08
    ld c, c
    db $10
    add sp, $00
    ld c, d
    db $10
    add sp, $08
    ld c, e
    db $10
    add sp, $10
    ld c, h
    db $10
    ldh a, [$e8]
    ld d, a
    db $10
    ldh a, [$f0]
    ld e, b
    db $10
    ldh a, [$f8]
    ld e, c
    db $10
    ldh a, [rP1]
    ld e, d
    db $10
    ldh a, [$08]
    ld e, e
    db $10
    ldh a, [rNR10]
    ld e, h
    db $10
    ld hl, sp-$18
    ld h, a
    nop
    ld hl, sp-$10
    ld l, b
    nop
    ld hl, sp-$08
    ld l, c
    nop
    ld hl, sp+$00
    ld l, d
    nop
    ld hl, sp+$08
    ld l, e
    nop
    ld hl, sp+$10
    ld l, h
    nop
    nop
    add sp, $77
    nop
    nop
    ldh a, [$78]
    nop
    nop
    ld hl, sp+$79
    nop
    nop
    nop
    ld a, d
    nop
    nop
    ld [$007b], sp
    nop
    db $10
    ld a, h
    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_004_74c1

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret nc

    add sp, -$6f
    db $10

jr_004_74c1:
    ret nc

    ldh a, [$92]
    db $10
    ret nc

    ld hl, sp-$6d
    db $10
    ret nc

    nop
    sub h
    db $10
    ret nc

    ld [$1095], sp
    ret nc

    db $10
    sub [hl]
    db $10
    ret c

    add sp, -$5f
    nop
    ret c

    ldh a, [$a2]
    nop
    ret c

    ld hl, sp-$5d
    nop
    ret c

    nop
    and h
    nop
    ret c

    ld [$00a5], sp
    ret c

    db $10
    and [hl]
    nop
    ldh [$e8], a
    or c
    db $10
    ldh [$f0], a
    or d
    db $10
    ldh [$f8], a
    or e
    db $10
    ldh [rP1], a
    or h
    db $10
    ldh [$08], a
    or l
    db $10
    ldh [rNR10], a
    or [hl]
    db $10
    add sp, -$18
    pop bc
    db $10
    add sp, -$10
    jp nz, $e810

    ld hl, sp-$3d
    db $10
    add sp, $00
    call nz, $e810
    ld [$10c5], sp
    add sp, $10
    add $10
    ldh a, [$e8]
    pop de
    db $10
    ldh a, [$f0]
    jp nc, $f010

    ld hl, sp-$2d
    db $10
    ldh a, [rP1]
    call nc, $f010
    ld [$10d5], sp
    ldh a, [rNR10]
    sub $10
    ld hl, sp-$18
    pop hl
    nop
    ld hl, sp-$10
    ld [c], a
    nop
    ld hl, sp-$08
    db $e3
    nop
    ld hl, sp+$00
    db $e4
    nop
    ld hl, sp+$08
    push hl
    nop
    ld hl, sp+$10
    and $00
    ret z

    add sp, -$7f
    db $10
    ret z

    ldh a, [$82]
    db $10
    ret z

    ld hl, sp-$7d
    db $10
    ret z

    nop
    add h
    db $10
    ret z

    ld [$1085], sp
    ret z

    db $10
    add [hl]
    stop
    ldh [$f0], a
    stop
    add sp, -$0f
    stop
    ldh a, [$f2]
    stop
    ld hl, sp-$0d
    stop
    nop
    db $f4
    stop
    ld [$10f5], sp
    nop
    db $10
    or $10
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_004_75aa

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret z

    add sp, -$79
    db $10

jr_004_75aa:
    ret z

    ldh a, [$88]
    db $10
    ret z

    ld hl, sp-$77
    db $10
    ret z

    nop
    adc d
    db $10
    ret z

    ld [$108b], sp
    ret z

    db $10
    adc h
    db $10
    ret nc

    add sp, -$69
    db $10
    ret nc

    ldh a, [$98]
    db $10
    ret nc

    ld hl, sp-$67
    db $10
    ret nc

    nop
    sbc d
    db $10
    ret nc

    ld [$109b], sp
    ret nc

    db $10
    sbc h
    db $10
    ret c

    add sp, -$59
    nop
    ret c

    ldh a, [$a8]
    nop
    ret c

    ld hl, sp-$57
    nop
    ret c

    nop
    xor d
    nop
    ret c

    ld [$00ab], sp
    ret c

    db $10
    xor h
    nop
    ldh [$e8], a
    or a
    db $10
    ldh [$f0], a
    cp b
    db $10
    ldh [$f8], a
    cp c
    db $10
    ldh [rP1], a
    cp d
    db $10
    ldh [$08], a
    cp e
    db $10
    ldh [rNR10], a
    cp h
    db $10
    add sp, -$18
    rst $00
    db $10
    add sp, -$10
    ret z

    db $10
    add sp, -$08
    ret


    db $10
    add sp, $00
    jp z, $e810

    ld [$10cb], sp
    add sp, $10
    call z, $f010
    add sp, -$29
    db $10
    ldh a, [$f0]
    ret c

    db $10
    ldh a, [$f8]
    reti


    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10db], sp
    ldh a, [rNR10]
    call c, $f810
    add sp, -$19
    nop
    ld hl, sp-$10
    add sp, $00
    ld hl, sp-$08
    jp hl


    nop
    ld hl, sp+$00
    ld [$f800], a
    ld [$00eb], sp
    ld hl, sp+$10
    db $ec
    nop
    nop
    add sp, -$09
    stop
    ldh a, [$f8]
    stop
    ld hl, sp-$07
    stop
    nop
    ld a, [$0010]
    ld [$10fb], sp
    nop
    db $10
    db $fc
    stop
    jr @-$01

    db $10
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    db $10
    ldh [$e0], a
    jr nc, jr_004_7693

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    db $10
    ret z

    add sp, -$79
    db $10

jr_004_7693:
    ret z

    ldh a, [$88]
    db $10
    ret z

    ld hl, sp-$77
    db $10
    ret z

    nop
    adc d
    db $10
    ret z

    ld [$108b], sp
    ret z

    db $10
    adc h
    db $10
    ret nc

    add sp, -$69
    db $10
    ret nc

    ldh a, [$98]
    db $10
    ret nc

    ld hl, sp-$67
    db $10
    ret nc

    nop
    sbc d
    db $10
    ret nc

    ld [$109b], sp
    ret nc

    db $10
    sbc h
    db $10
    ret c

    add sp, -$59
    db $10
    ret c

    ldh a, [$a8]
    db $10
    ret c

    ld hl, sp-$57
    db $10
    ret c

    nop
    xor d
    db $10
    ret c

    ld [$10ab], sp
    ret c

    db $10
    xor h
    db $10
    ldh [$e8], a
    or a
    db $10
    ldh [$f0], a
    cp b
    db $10
    ldh [$f8], a
    cp c
    db $10
    ldh [rP1], a
    cp d
    db $10
    ldh [$08], a
    cp e
    db $10
    ldh [rNR10], a
    cp h
    db $10
    add sp, -$18
    rst $00
    db $10
    add sp, -$10
    ret z

    db $10
    add sp, -$08
    ret


    db $10
    add sp, $00
    jp z, $e810

    ld [$10cb], sp
    add sp, $10
    call z, $f010
    add sp, -$29
    db $10
    ldh a, [$f0]
    ret c

    db $10
    ldh a, [$f8]
    reti


    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10db], sp
    ldh a, [rNR10]
    call c, $f810
    add sp, -$19
    db $10
    ld hl, sp-$10
    add sp, $10
    ld hl, sp-$08
    jp hl


    db $10
    ld hl, sp+$00
    ld [$f810], a
    ld [$10eb], sp
    ld hl, sp+$10
    db $ec
    db $10
    add b
    ld b, h
    ld [hl], a
    ld d, l
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    sbc c
    ld [hl], a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop

jr_004_7790:
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ld e, e
    ld a, a
    adc [hl]
    inc h
    nop
    ret nc

    ret


    inc bc
    inc de
    rra
    inc [hl]
    dec h
    ld [hl+], a
    dec h
    ccf
    rst $38
    ld e, e
    ld a, a
    adc [hl]
    ld d, h
    jr nz, jr_004_7790

    ret


    nop
    ld [de], a
    db $10
    jr nc, jr_004_77e6

    jr nz, jr_004_77ed

    ccf
    adc a
    inc hl
    rlca
    ld b, $04
    nop
    ret nc

    ret


    dec [hl]
    dec de
    ld b, c
    ld e, $ae
    inc d
    dec de
    nop
    db $fc
    and a
    dec de
    scf
    ld [hl], c
    pop af
    or e
    rst $18
    ld b, $0a
    and $f4
    or [hl]

jr_004_77e6:
    sbc a
    db $fd
    ld c, a
    ld a, [hl]
    nop
    ld [hl], l
    push af

jr_004_77ed:
    db $eb
    ei
    push af
    push af
    adc e
    ld [hl], a
    ld b, b
    ccf
    cpl
    jr nz, jr_004_7827

    ccf
    jr nz, jr_004_787a

    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld b, [hl]
    ld d, c
    add d
    nop
    ld bc, $5546
    sbc c
    ld bc, $f65f
    sbc $56
    ld a, a
    sub $5f
    rst $30
    rst $38
    push af
    rst $30
    db $fd
    rst $30
    db $fd
    rst $38
    rst $30
    db $e3

jr_004_781e:
    cp c
    db $eb
    xor c
    ei
    jp hl


    and c
    db $eb
    ld a, a
    add e

jr_004_7827:
    ld a, a
    add b
    add b
    ld b, l
    sbc a

jr_004_782c:
    add e
    rst $38

jr_004_782e:
    nop
    nop
    ld b, l
    rst $38

jr_004_7832:
    add e
    cp $01
    ld bc, $f945
    ld b, l
    sbc a
    ld b, d
    add b
    add c
    ld a, a
    ld b, l
    rst $38
    ld [bc], a
    add c
    rst $38
    ld b, l
    ld sp, hl
    ld b, d
    ld bc, $fe81
    ld c, b
    sbc a
    ld c, b
    rst $38
    ld c, b
    ld sp, hl
    add e
    rra
    ccf
    ld a, a
    ld b, l
    rst $38
    add e
    ld hl, sp-$04
    cp $45
    rst $38
    ld c, b
    ld b, b
    ld c, b
    ld a, [bc]
    add h
    ld b, e
    ld c, h
    ld [hl], b
    ret nz

    inc b
    ld b, h
    ld a, [bc]
    add h
    dec bc
    inc c
    jr nc, jr_004_782c

    inc b
    adc b
    inc bc
    inc c
    jr nc, jr_004_7832

    inc bc
    inc c
    jr nc, @-$3e

    inc b
    add c
    ccf
    ld b, a

jr_004_787a:
    ld b, b
    add c
    rst $38
    rlca
    add c
    db $fc
    ld b, a
    ld [bc], a
    sbc b
    nop
    ld [$0c08], sp
    inc b
    ld b, $02
    inc bc
    ld b, $0e
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld [bc], a
    inc bc
    rrca
    ld [bc], a
    ld b, $04
    inc c
    ld [$0818], sp
    jr jr_004_781e

    ccf
    ld b, a
    ld b, b
    add c
    rst $38
    add hl, bc
    add e
    ld b, $08
    db $10
    ld b, e
    jr nz, jr_004_782e

    nop
    ld [$82e4], sp
    ld b, h
    add c
    ld c, b
    jr nz, jr_004_78fb

    add c
    dec b
    or l
    jr c, jr_004_78dc

    ld [de], a
    nop
    nop
    inc bc
    rrca

jr_004_78bd:
    inc a
    ld c, b
    sub b
    sub c
    nop
    ld a, a
    call nz, $2018
    ld a, h
    db $c4, $89, $00
    ret nz

    jr nc, jr_004_78d9

    ld a, $c7
    add c
    nop
    ld de, $0c0a
    inc d
    inc h
    inc h
    ld [hl+], a
    cpl

jr_004_78d9:
    cp $e4
    add e

jr_004_78dc:
    inc b
    inc e
    add hl, hl
    add sp, $70
    add hl, bc
    db $10
    db $e3
    ld [de], a
    inc c
    call nz, $82a6
    nop
    add b
    inc bc
    ld b, d
    ld b, b
    cp [hl]
    ld h, b
    inc de
    ld d, $1c
    inc d
    rrca
    ld [bc], a
    ld a, $57
    add hl, de
    ld l, $28

jr_004_78fb:
    ld h, e
    xor h
    sub b
    ld h, $cc
    add e
    add c
    add c
    ld bc, $433d
    rra
    jr nz, jr_004_7941

    jr c, @+$3e

    rra
    ld e, $1c
    cp b
    ldh a, [rHDMA4]
    ld [hl], $4c
    ld b, [hl]
    ld a, [hl-]
    daa
    inc e
    nop
    ld [de], a
    ld [hl+], a
    ld b, c
    add c
    add b
    nop
    ld bc, $2002
    jr jr_004_7943

    jr nz, jr_004_78bd

    sub b
    adc a
    ld b, h
    ld b, b
    nop
    inc bc
    ld b, a
    ld a, h
    ld b, c
    ldh [$82], a
    ret nz

    ldh [rTMA], a
    sbc c
    inc bc
    inc b
    inc b
    ld [$0909], sp
    dec b
    ld [hl], d
    adc [hl]
    add b
    ld [hl+], a
    rst $38
    pop bc

jr_004_7941:
    pop bc
    add b

jr_004_7943:
    add b
    pop bc
    pop bc
    jr nc, jr_004_7960

    sbc b
    sbc b
    or b
    and a
    ld a, b
    inc b
    add l
    rrca
    jr c, jr_004_799a

    sub b
    sub e
    inc bc
    add l
    cp $01
    ld a, $e4
    adc b
    inc b
    adc a
    ret nz

    jr nc, jr_004_7968

jr_004_7960:
    ld b, $08
    db $10
    pop hl
    ld [de], a
    ld c, $c4
    and [hl]

jr_004_7968:
    add d
    inc sp
    ld c, l
    pop bc
    dec b
    cp d
    inc de
    ld d, $1c
    inc d
    rrca
    ld [bc], a
    ld e, $2b
    add e
    add e
    add a
    inc c
    inc a
    ld e, b
    jr c, @+$72

    nop
    add b
    nop
    ld bc, $1f07
    rrca
    inc c
    ld a, [hl]
    add c
    add b
    ld h, b
    add b
    pop hl
    ld b, e
    ld a, $3f
    ldh a, [$80]
    nop
    nop
    add b
    ldh [$3f], a
    ld hl, sp+$7c
    inc c
    inc b

jr_004_799a:
    nop
    ld bc, $fe3f
    jr jr_004_79b8

    jr nc, jr_004_7a02

    ldh [$c0], a
    ret nz

    ldh [rSB], a
    ld [bc], a
    ld b, e
    inc b
    adc e
    inc a
    ld h, $12
    ldh a, [rNR32]
    cpl
    ld b, a
    jr nz, jr_004_79d4

    ld b, b
    ld b, c
    inc bc
    sub d

jr_004_79b8:
    rlca
    add hl, de
    dec hl
    ld l, d
    xor d
    ld de, $0c0a
    inc [hl]
    db $e4
    inc h
    ld [hl+], a
    ld l, a
    xor l

jr_004_79c6:
    or a
    cp a
    ld a, [hl]
    jr c, @+$05

    adc [hl]
    di
    or $fc
    inc d
    rrca
    ld [bc], a
    ld [bc], a
    inc bc

jr_004_79d4:
    inc b
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld bc, $b006
    jr jr_004_79f2

    ld [de], a
    ld [de], a
    nop
    ld a, a
    call nz, Call_000_3818
    ld c, b
    adc b
    add hl, bc
    ld de, $0c0a
    rla
    ld a, [hl+]
    jr z, jr_004_7a17

    cpl
    cp $e4

jr_004_79f2:
    add e
    ld [hl], h
    xor b
    adc c
    adc b
    ld [hl], b
    ld de, $0c0a
    rla
    jr z, @+$2c

    jr z, jr_004_7a2f

    cp $e4

jr_004_7a02:
    add e
    ld [hl], h
    adc b
    xor c
    adc b
    ld [hl], b
    rla
    ld a, [bc]
    ld [$4318], sp
    jr z, jr_004_79c6

    cpl
    db $76
    xor h
    adc e
    adc h
    adc b
    adc c
    adc b

jr_004_7a17:
    ld [hl], b
    inc de
    ld d, $1c
    inc d
    rrca
    nop
    ld a, c
    xor [hl]
    add hl, de
    ld l, $2a
    ld c, e
    call $fa61
    ld b, $a4
    ld h, h
    sub h
    adc a
    ld a, d
    ld b, a
    inc a

jr_004_7a2f:
    nop
    dec b
    ld a, l
    db $db
    ld c, e
    sub h
    db $f4
    adc c
    ld [hl], d
    ccf
    ld b, b
    ld e, a
    ld e, a
    ld d, b
    ld b, b
    ld e, a
    ccf
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, e
    rst $38
    ld b, [hl]
    add b
    ld b, d
    rst $38
    ld b, [hl]
    dec bc
    sbc c
    rst $38
    xor b
    adc c
    and c
    xor c
    and b
    xor c
    xor b
    adc b
    ld [bc], a
    ld a, [bc]
    ld [$0a02], sp
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld e, a
    ld c, a
    rra
    ld e, a
    ld c, a
    ld e, a
    ld e, a
    rra
    rst $38
    add l
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld b, l
    rst $38
    xor e
    cp $ff
    ld a, [$e8fc]
    ldh a, [$c2]
    pop hl
    pop hl
    ret nz

    add b
    ret nz

    ret nz

    add b
    adc d
    add h
    ld d, $8f
    and [hl]
    rla
    nop
    ld hl, $ffff
    rst $08
    sbc a
    add a
    rrca
    rrca
    rlca
    rrca
    rlca
    ld b, e
    add a
    ld de, $8862
    ld de, $f0e8
    ld a, [$fefc]
    ld b, e
    rst $38
    sub c
    di
    rst $38
    ld a, [$58f9]
    inc a
    add [hl]
    inc c
    ret nz

    ldh [$80], a
    ret nz

    nop
    add b
    add b
    nop
    inc bc
    rlca
    cp [hl]
    ld b, b
    jr nz, jr_004_7ab6

jr_004_7ab6:
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    nop
    ld hl, sp+$08
    ld b, $02
    ld bc, $0001
    inc b
    adc b
    ld b, b
    add h
    dec [hl]
    ld [hl], d
    jr nz, @+$7e

    nop
    ld h, d
    nop
    ld b, d
    ld d, h
    add d
    ld h, b
    sbc h
    ld b, b
    add d
    db $10
    ld h, b
    inc b
    jr @+$04

    inc b
    ld de, $4262
    add c
    nop
    pop bc
    nop
    ld hl, $0000
    ld [bc], a
    ld bc, $0708

jr_004_7ae9:
    dec b
    add hl, de
    inc hl
    ld bc, $0303
    rlca
    inc bc
    ld b, c
    inc bc
    cp [hl]
    rlca
    ld b, d
    inc a
    jr z, jr_004_7ae9

    db $f4
    ld hl, sp-$18
    db $f4
    jp nz, $85e4

    jp nz, $e7c8

    db $e3
    rst $38
    sub b
    ld h, b
    ld h, c
    nop
    inc b
    inc bc
    ld [$1204], sp
    inc c
    ret


    ld a, $34
    ei
    ld hl, sp-$10
    ld b, b
    ld hl, $c120
    add d
    ld bc, $8241
    inc b
    ld b, d
    ld c, d
    add h
    sub h
    ld [$3048], sp
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    rra
    rrca
    jr jr_004_7b3e

    db $10
    add hl, bc
    ld [bc], a
    ld b, c
    db $10
    add d
    jr nz, @+$12

    ld c, b
    rst $38
    sbc e
    cp a
    rst $08
    adc a
    rlca

jr_004_7b3e:
    inc bc
    rlca
    rlca
    inc bc
    pop af
    ldh [$e4], a
    db $e3
    jp z, $e4e4

    ret z

    adc b
    ret nc

    add b
    ret nc

    adc b
    ret nc

    call nz, Call_000_20e8
    ret nz

    add b
    dec c
    rst $38
    ld h, b
    ld bc, $00fd
    xor $30
    inc bc
    rlca
    rrca

jr_004_7b60:
    inc c
    dec de
    ld d, $ff
    ld [hl], $2d
    ld e, l
    ld h, e
    ld a, a
    ret nz

    rst $38
    add c
    rst $38
    rst $38
    add b
    db $fd
    add e
    rst $28
    sbc a
    pop af
    ei
    db $fd
    ld bc, $0008
    nop
    ld bc, $1f1f
    rra
    ld de, $cdff
    db $eb
    xor l
    ld a, a
    db $d3

jr_004_7b85:
    dec sp
    add sp, -$68
    rst $38
    add sp, $18
    add sp, $18
    ret z

    jr c, jr_004_7b60

    cp b
    rst $38
    jr nz, jr_004_7b85

    pop bc
    pop hl
    ld sp, hl
    ld a, a

jr_004_7b98:
    rst $20
    cp a
    db $fd
    and c
    db $fc
    jr nc, jr_004_7b98

    daa
    ld a, [$a417]
    ld a, [hl]
    rst $38
    ld hl, sp-$04
    ccf
    ld l, a
    inc a
    scf
    inc [hl]
    cpl
    rst $38
    jr @+$41

    db $10
    rra
    db $10
    rra
    dec d
    rra
    rst $38
    dec c
    rrca
    ld a, l
    rst $38
    and a
    ei
    add d
    rst $38
    ei
    cp $fe
    xor $31
    jr jr_004_7c02

    jr c, @+$3e

    jr nz, @+$01

    ldh a, [$fe]
    rst $38
    ld [hl], $ff
    db $10
    ldh a, [rNR10]

jr_004_7bd2:
    rst $38
    ldh a, [$5e]
    rst $38
    ld [hl], l
    rst $38
    ld h, c
    rst $38
    jp $bf9f


    adc h
    cp $70
    ld hl, sp-$12
    ld sp, $33f0
    rra
    rst $30
    db $10
    scf
    ld l, $fa
    ccf
    nop
    ld bc, $0000
    rst $38
    ld a, $3e
    cp $e2
    cp d
    db $76
    jp c, $fb3e

    xor $1e
    jr jr_004_7bff

    ret z

jr_004_7bff:
    jr c, jr_004_7bd2

    cp c

jr_004_7c02:
    ld hl, $f3cf
    jp $fae3


    daa
    rrca
    add hl, sp
    ld b, $75
    rst $38
    rst $38
    xor l
    rst $38
    add l
    rst $38
    ld h, e
    rst $38
    inc e
    dec a
    cp $ee
    ld sp, $3030
    jr nc, jr_004_7c8e

    ld h, b
    ld h, b
    ld c, h
    rst $18
    xor $fc
    cp $30
    ld hl, sp+$5c
    ld bc, $f050
    rst $38
    ld [hl], b
    ldh a, [$60]
    ldh [$fe], a
    rst $38
    push bc
    cp a
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    db $10
    ld a, b
    rst $38
    ld l, b

jr_004_7c3f:
    sbc b
    ld hl, sp+$0c
    rst $30
    rrca
    ldh a, [rIF]
    rst $38
    ld h, b
    sbc a
    ld h, d
    sbc l
    ld h, $d9
    ld d, [hl]
    ld a, e
    rst $38
    ld [hl], $7b
    ld a, [bc]
    dec e
    dec e
    inc de
    dec de
    inc d
    cp a
    dec c
    ld e, $0b
    rrca
    rrca
    rra
    ccf
    nop
    inc de
    rst $38
    rla
    ld a, [de]
    dec de
    ld e, $17
    rra
    inc d
    inc e
    or e
    jr jr_004_7c8a

    ld l, h
    inc bc
    ld e, $17
    ldh [$f0], a
    ld e, l
    nop
    sub b
    ccf
    call c, $a4bc
    db $fc
    ld hl, sp-$04
    ld e, $1d
    xor $31
    nop
    ld [bc], a
    cp l
    nop

jr_004_7c86:
    xor $38
    inc b
    inc bc

jr_004_7c8a:
    inc bc
    inc b
    xor $33

jr_004_7c8e:
    add b
    rst $30
    ld h, b
    ld b, b
    and b
    ld b, $01
    ld b, d
    cp h
    ld [bc], a
    dec b
    rst $28
    inc bc
    inc b
    inc b
    inc bc
    xor $37
    ld a, l
    add d
    ld b, [hl]
    rst $38
    cp c
    dec hl
    db $c4, $05, $02
    nop
    ld bc, $ff20
    jr jr_004_7cc0

    jr z, jr_004_7d07

    add hl, hl
    ld e, h
    inc h
    adc h
    rst $38

jr_004_7cb6:
    ld [hl], h
    nop
    adc b
    jr nz, jr_004_7c3f

    nop
    and d
    ld b, b
    rst $38
    sbc c

jr_004_7cc0:
    jr z, jr_004_7c86

    add b
    inc a
    jr nc, jr_004_7d18

    jr nc, @+$01

    ld [de], a
    jr z, jr_004_7cd2

    inc b
    jr c, @-$53

    ld b, h
    ld b, b
    rst $38
    add e

jr_004_7cd2:
    inc b
    nop
    ld [bc], a
    ld bc, $204e
    inc b
    rst $38
    ld b, b
    inc b
    ld b, b
    adc [hl]
    ld c, d
    ld c, $ca
    and h
    sbc a
    ld b, b
    ld b, h
    dec sp
    ld a, [bc]
    inc h
    xor $39
    ld l, c
    rrca
    nop
    rst $38
    nop
    ld d, b
    jr nz, @+$22

    db $10
    jr nz, @+$12

    jr z, @+$01

    db $10
    ld hl, $101e
    ld h, c

jr_004_7cfc:
    ld b, b
    add b
    ld [$00df], sp
    ld bc, $0288
    ld [$0590], sp

jr_004_7d07:
    ld bc, $5f08
    add hl, bc
    inc b
    add e
    nop
    ld b, h
    sbc a
    nop
    jr z, jr_004_7cb6

    ld bc, $6cff
    jr z, jr_004_7d84

jr_004_7d18:
    add hl, sp
    nop
    adc b
    inc b
    ld c, b
    cp $af
    inc b
    ld d, b
    inc c
    sub h
    ld [$1820], sp
    nop
    cp a
    nop
    add c
    nop
    nop
    rst $38
    add b
    xor $30
    inc bc
    db $fd
    nop
    db $fd
    ld sp, $6488
    ld b, b
    sub h
    add b
    inc [hl]
    rst $38
    db $10
    ld h, h
    ld c, b
    inc h
    add h
    ld [$0458], sp
    rst $38
    ld [$8604], sp
    ld [hl], b
    nop
    ld [hl], b
    inc b
    ld [hl+], a
    rst $38
    nop
    inc e
    nop
    nop
    ld b, d
    add c
    nop
    cp $ff
    nop
    rst $38
    inc b
    inc bc
    dec bc
    inc b
    rlca
    ld [$17ff], sp
    ld [$130c], sp
    cpl
    db $10
    rra
    jr nz, @+$01

    rra
    jr nz, jr_004_7cfc

    ld h, b
    ldh [rNR10], a
    sub b
    ld h, b
    rst $38
    add sp, $10

jr_004_7d74:
    db $f4
    ld [$8478], sp
    ld a, d
    add h
    ld l, a
    ld a, h
    add d
    ld e, a
    jr nz, jr_004_7db0

    dec bc
    cp h
    ld b, d
    ld b, b

jr_004_7d84:
    dec bc
    rst $38
    ld e, a
    jr nz, @+$41

    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    cp $56
    dec b
    ret nc

    jr nz, jr_004_7d74

    db $10
    ldh [rNR10], a
    add sp, $56
    add l
    rrca
    ld [$9903], sp
    inc c
    xor e
    xor c
    inc c
    ret nc

    cp c
    ld [bc], a
    cp $0e
    dec de
    sub b
    inc h
    ld [bc], a
    inc [hl]
    ld h, c
    ld a, [de]
    ld h, d
    rst $38

jr_004_7db0:
    add hl, de
    jr jr_004_7dd8

    ld b, c
    inc h
    and h
    ld b, d
    inc h
    rst $38
    jp nz, Jump_000_2790

    add hl, bc
    ld b, $04
    jr @+$12

    ei
    ld hl, sp-$10
    and e
    db $10
    ld [hl], h
    ld hl, sp-$08
    ld a, h
    ld a, b
    rst $38
    inc a
    add h
    ld e, c
    ld bc, $0323
    rra
    rla
    rst $38
    rst $00
    ld c, a
    cpl

jr_004_7dd8:
    ld b, $2f
    ld h, $16
    jr nz, @+$01

    ld d, $31
    ret nz

    jp nz, $8881

    add [hl]
    add b
    rst $38
    jr c, jr_004_7e09

    ld b, b

jr_004_7dea:
    db $10
    ld h, b
    ld l, b

jr_004_7ded:
    sub b
    ld [hl], h
    rst $38
    adc b
    add b
    ld a, c
    ld [hl], c
    adc [hl]
    cp $01
    ld a, h
    rst $38
    add e
    sbc h
    ld h, e
    inc h
    dec de
    db $10
    rrca
    ld e, d
    db $fd
    and h
    sbc $01
    nop
    jr nz, jr_004_7e10

    db $10

jr_004_7e09:
    db $10
    jr jr_004_7e4b

    ld e, d
    sbc c
    jr jr_004_7dea

jr_004_7e10:
    jr jr_004_7ded

    add b
    nop
    rst $38
    ccf
    ld a, a
    ld e, a
    ldh [$bf], a
    ret nz

    and $99
    ld a, a
    cp e
    rst $38
    xor $ff
    ld b, h
    xor $00
    db $fc
    ld sp, $01ff
    nop
    ld bc, $0301
    inc bc
    ld b, $07
    rst $38
    dec b
    ld b, $07
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    nop
    rst $38
    nop
    ld h, [hl]
    push af
    ld [hl-], a
    call nz, $9cff
    rst $38
    db $e3
    sbc [hl]
    ld sp, hl
    or [hl]
    call $e79e

jr_004_7e4b:
    ld e, [hl]
    rst $38
    rst $20
    xor $f1
    or [hl]
    ld sp, hl
    inc e
    ccf
    rlca
    rst $38
    rrca
    jr c, jr_004_7ed5

    ld d, h
    xor $ba
    add $ba
    rst $38
    add $92
    xor $c6
    cp $7c
    cp $38
    ld sp, hl
    ld a, h
    db $fc
    ld [hl-], a
    ld a, $08
    ld b, d
    inc a
    cp l
    ld b, d
    ld e, e
    rst $38
    cp l
    ld [hl], a
    xor l
    ld l, l
    or a
    scf
    rst $08
    rst $18
    rlca
    ld a, [hl]
    ld a, [hl]
    inc a
    ld a, $0d
    nop
    sbc d
    dec b
    add e
    inc l
    dec l
    ld l, $11
    adc e
    ld [hl-], a
    inc sp
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    jr nz, @+$23

    ld hl, $0522
    adc b
    inc l
    dec l
    ld l, $00
    nop
    jr z, @+$2b

    ld a, [hl+]
    dec b
    adc [hl]
    inc l
    dec l
    ld l, $30
    ld sp, $3000
    ld sp, $0000
    dec h
    ld h, $00
    daa
    ld [$208a], sp
    ld hl, $2625
    daa
    nop
    nop
    jr nz, jr_004_7edb

    ld [hl+], a
    inc bc
    cp [hl]
    ld [hl-], a
    inc sp
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    dec h
    nop
    jr z, jr_004_7ef1

    ld a, [hl+]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, l
    ld l, [hl]
    ld l, a
    dec h
    ld h, $25
    jr z, jr_004_7efe

jr_004_7ed5:
    ld a, [hl+]
    ld l, [hl]
    dec h
    ld h, $27
    ld l, l

jr_004_7edb:
    ld l, [hl]
    ld l, a
    jr nc, jr_004_7f10

    ld l, [hl]
    jr nc, jr_004_7f13

    ld l, a
    ld [hl], b
    inc hl
    nop
    dec h
    ld h, $27
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec h

jr_004_7ef1:
    ld h, $23
    inc hl
    ld h, $27
    ld [hl], d
    inc hl
    ld h, $27
    ld [hl], c
    ld b, c
    ld [hl], d
    adc l

jr_004_7efe:
    ld [hl], e
    ld [hl-], a
    inc sp
    ld [hl], d
    ld [hl-], a
    inc sp
    ld [hl], e
    ld [hl], h
    dec h
    nop
    dec h
    nop
    daa
    rlca
    adc d
    inc hl
    jr z, jr_004_7f39

jr_004_7f10:
    ld a, [hl+]
    nop
    daa

jr_004_7f13:
    nop
    dec h
    nop
    inc h
    inc bc
    adc h
    jr nc, jr_004_7f4c

    nop
    jr nc, jr_004_7f4f

    nop
    nop
    inc hl
    nop
    inc hl
    nop
    inc h
    rlca
    adc d
    inc hl
    dec h
    ld h, $00
    nop
    inc h
    nop
    inc hl
    nop
    daa
    inc bc
    add l
    ld [hl-], a
    inc sp
    nop
    ld [hl-], a
    inc sp
    inc b

jr_004_7f39:
    add c
    inc hl
    ld a, [bc]
    add c
    inc hl
    dec b
    add c
    inc hl
    dec b
    add l
    inc [hl]
    cpl
    nop
    inc [hl]
    cpl
    ld [bc], a
    rst $38
    nop
    sbc d

jr_004_7f4c:
    inc hl
    add e
    ld h, h

jr_004_7f4f:
    ld h, l
    ld h, [hl]
    inc bc
    adc d
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    nop
    ld h, d
    ld b, $8a
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    ld h, h
    ld h, l
    ld b, e
    dec a
    add e
    ld h, [hl]
    ld h, h
    ld h, l
    ld b, e
    dec a
    add c
    ld h, l
    ld b, e
    dec a
    or b
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, l
    dec a
    dec a
    ld l, b
    nop
    ld h, b
    ld h, c
    nop
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld a, a
    ldh [$9b], a
    ld h, b
    dec a
    rst $38
    ld a, $c7
    ld [$c990], a
    call $1392
    ld a, $03
    ld [$c9a6], a
    xor a
    ld [$c98b], a
    ld [$c98c], a
    ld [$c988], a
    ld [$c9a1], a
    ld [$ddc7], a
    ld [$ddc8], a
    ld [$c99a], a
    ld [$c9a4], a
    ld [$c9a7], a
    jp Jump_000_15e6


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
    inc b
