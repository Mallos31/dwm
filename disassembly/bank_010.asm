; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    db $10 ;ROM Bank

    dw label10_4005
    dw label10_400f

label10_4005:
    call Call_010_406e
    ld de, $407f
    call $0d91
    ret

label10_400f:
    call Call_010_406e
    ld de, $407f
    push af
    push bc
    push de
    push hl
    ldh a, [$cb]
    cp $28
    jr nc, jr_010_4069

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

jr_010_403c:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_010_4069

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
    jr c, jr_010_403c

jr_010_4069:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_010_406e:
    ldh a, [$c7]
    ld hl, $417f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$ca]
    or [hl]
    ldh [$ca], a
    ret


    rst $38
    ld b, c
    ld [hl], c
    ld b, d
    db $e3
    ld b, d
    ld d, l
    ld b, e
    rst $00
    ld b, e
    add hl, sp
    ld b, h
    xor e
    ld b, h
    dec e
    ld b, l
    adc a
    ld b, l
    jp hl


    ld b, l
    ld e, e
    ld b, [hl]
    call $2b46
    ld b, a
    sbc l
    ld b, a
    rrca
    ld c, b
    add c
    ld c, b
    di
    ld c, b
    ld c, l
    ld c, c
    cp a
    ld c, c
    ld sp, $a34a
    ld c, d
    dec d
    ld c, e
    add a
    ld c, e
    ld sp, hl
    ld c, e
    ld l, e
    ld c, h
    db $dd
    ld c, h
    ld c, a
    ld c, l
    pop bc
    ld c, l
    inc sp
    ld c, [hl]
    and l
    ld c, [hl]
    rla
    ld c, a
    adc c
    ld c, a
    ei
    ld c, a
    ld l, l
    ld d, b
    rst $18
    ld d, b
    ld d, c
    ld d, c
    jp Jump_000_3551


    ld d, d
    and a
    ld d, d
    add hl, de
    ld d, e
    adc e
    ld d, e
    db $fd
    ld d, e
    ld l, a
    ld d, h
    pop hl
    ld d, h
    ld d, e
    ld d, l
    push bc
    ld d, l
    scf
    ld d, [hl]
    xor c
    ld d, [hl]
    dec de
    ld d, a
    adc l
    ld d, a
    rst $38
    ld d, a
    ld [hl], c
    ld e, b
    db $e3
    ld e, b
    ld d, l
    ld e, c
    rst $00
    ld e, c
    add hl, sp
    ld e, d
    xor e
    ld e, d
    dec e
    ld e, e
    adc a
    ld e, e
    ld bc, $735c
    ld e, h
    push hl
    ld e, h
    ld d, a
    ld e, l
    ret


    ld e, l
    dec sp
    ld e, [hl]
    xor l
    ld e, [hl]
    rra
    ld e, a
    sub c
    ld e, a
    inc bc
    ld h, b
    ld [hl], l
    ld h, b
    rst $20
    ld h, b
    ld e, c
    ld h, c
    cp e
    ld h, c
    dec l
    ld h, d
    sbc a
    ld h, d
    ld de, $8363
    ld h, e
    push af
    ld h, e
    ld h, a
    ld h, h
    reti


    ld h, h
    ld c, e
    ld h, l
    cp l
    ld h, l
    cpl
    ld h, [hl]
    and c
    ld h, [hl]
    inc de
    ld h, a
    add l
    ld h, a
    rst $30
    ld h, a
    ld l, c
    ld l, b
    db $db
    ld l, b
    ld c, l
    ld l, c
    cp a
    ld l, c
    ld sp, $a36a
    ld l, d
    dec d
    ld l, e
    add a
    ld l, e
    ld sp, hl
    ld l, e
    ld l, e
    ld l, h
    db $dd
    ld l, h
    ld c, a
    ld l, l
    pop bc
    ld l, l
    inc sp
    ld l, [hl]
    and l
    ld l, [hl]
    rla
    ld l, a
    adc c
    ld l, a
    ei
    ld l, a
    ld l, l
    ld [hl], b
    rst $18
    ld [hl], b
    ld d, c
    ld [hl], c
    jp $3571


    ld [hl], d
    and a
    ld [hl], d
    add hl, de
    ld [hl], e
    adc e
    ld [hl], e
    db $fd
    ld [hl], e
    ld l, a
    ld [hl], h
    ret


    ld [hl], h
    inc sp
    ld [hl], l
    and l
    ld [hl], l
    rla
    db $76
    adc c
    db $76
    di
    db $76
    ld h, l
    ld [hl], a
    rst $10
    ld [hl], a
    ld c, c
    ld a, b
    cp e
    ld a, b
    dec l
    ld a, c
    sbc a
    ld a, c
    ld de, $037a
    inc bc
    ld bc, $0704
    ld bc, $0601
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    nop
    inc bc
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld b, $00
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0206
    inc bc
    ld bc, $0501
    nop
    rlca
    inc bc
    ld bc, $0705
    ld bc, $0301
    ld bc, $0407
    nop
    ld bc, $0707
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $07
    dec b
    ld b, $05
    rlca
    ld [bc], a
    inc b
    ld b, $02
    inc b
    dec b
    ld [bc], a
    inc bc
    ld b, $07
    inc bc
    inc bc
    rlca
    nop
    inc b
    inc b
    ld bc, $0006
    inc b
    ld [bc], a
    inc b
    ld bc, $0204
    ld b, $04
    ld b, $02
    inc b
    ld bc, $0402
    inc bc
    ld bc, $0001
    ld b, $07
    inc bc
    nop
    ld b, $07
    rlca
    ld bc, $0004
    ld bc, $0200
    ld bc, $0601
    inc b

jr_010_41f1:
    ld [bc], a
    inc b
    ld bc, $0207
    ld bc, $0007
    inc bc
    inc bc
    inc b
    nop
    ld b, $07
    dec bc
    ld b, d
    inc e
    ld b, d
    dec l
    ld b, d
    ld a, $42
    ld c, a
    ld b, d
    ld h, b
    ld b, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01

jr_010_4216:
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ld sp, hl
    nop
    ld bc, $f920
    ld hl, sp+$02
    jr nz, jr_010_4216

    ld hl, sp+$03
    nop
    pop af
    nop
    inc bc
    jr nz, @-$7e

    ldh a, [$f8]
    inc b

jr_010_4230:
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
    pop af
    nop
    dec b

jr_010_4241:
    nop
    ld sp, hl
    nop
    rlca
    nop
    pop af
    ld hl, sp+$08
    nop
    ld sp, hl
    ld hl, sp+$09
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_010_4252:
    nop
    ldh a, [rP1]
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0b

jr_010_425a:
    nop
    ld hl, sp+$00
    inc c

jr_010_425e:
    nop
    add b
    ld sp, hl
    nop
    dec bc

jr_010_4263:
    jr nz, jr_010_425e

    ld hl, sp+$0c
    jr nz, jr_010_425a

    ld hl, sp+$0d
    nop
    pop af
    nop
    dec c
    jr nz, jr_010_41f1

    ld a, l
    ld b, d
    adc [hl]
    ld b, d
    sbc a
    ld b, d
    or b
    ld b, d
    pop bc
    ld b, d
    jp nc, $f042

jr_010_427e:
    ld hl, sp+$00

jr_010_4280:
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_010_427e

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    ld b, $00
    add b
    ld hl, sp-$08
    rlca

jr_010_42a2:
    nop
    ld hl, sp+$00
    ld [$f000], sp
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_010_4230

    ld hl, sp-$08
    ld a, [bc]

jr_010_42b3:
    nop
    ld hl, sp+$00
    dec bc
    nop
    ldh a, [$fa]
    add hl, bc
    nop
    ldh a, [rSC]
    inc bc
    jr nz, jr_010_4241

    ld hl, sp-$08
    inc c

jr_010_42c4:
    nop
    ld hl, sp+$00
    dec c
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_010_4252

    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    add hl, bc
    jr nz, jr_010_4263

    rst $28
    ld b, d
    nop
    ld b, e
    ld de, $2243
    ld b, e
    inc sp
    ld b, e
    ld b, h
    ld b, e
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [rIE]
    nop
    jr nz, jr_010_4280

    pop af
    ld hl, sp+$01
    nop
    pop af
    rst $38
    ld bc, $f920
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0b
    jr nz, jr_010_42a2

    pop af
    ld hl, sp+$08
    nop
    pop af
    nop

jr_010_4328:
    add hl, bc
    nop
    ld sp, hl
    nop
    inc c
    jr nz, jr_010_4328

    ld hl, sp+$0d
    jr nz, jr_010_42b3

    ldh a, [$f9]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp+$00
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    jr nz, jr_010_42c4

    pop af
    ld sp, hl

jr_010_4346:
    rrca

jr_010_4347:
    nop
    pop af
    nop
    rrca
    jr nz, jr_010_4346

    ld bc, $2004
    ld sp, hl
    ld sp, hl
    dec b
    jr nz, @-$7e

    ld h, c
    ld b, e
    ld [hl], d
    ld b, e
    add e
    ld b, e
    sub h
    ld b, e
    and l
    ld b, e
    or [hl]
    ld b, e
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
    ld sp, hl
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$03
    jr nz, @-$7e

    ld sp, hl
    nop
    ld [$f900], sp
    ld hl, sp+$03
    jr nz, @-$0d

    ld hl, sp+$09
    nop
    pop af
    nop

jr_010_43a2:
    ld a, [bc]
    nop
    add b
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp-$08
    inc bc
    jr nz, @-$0e

    nop
    nop

jr_010_43b0:
    jr nz, jr_010_43a2

    ld hl, sp+$01

jr_010_43b4:
    jr nz, @-$7e

    ld sp, hl
    nop
    dec bc
    nop
    ld sp, hl
    ld hl, sp+$03
    jr nz, jr_010_43b0

    nop
    inc b
    jr nz, jr_010_43b4

    ld hl, sp+$05
    jr nz, jr_010_4347

    db $d3
    ld b, e
    db $e4
    ld b, e
    push af
    ld b, e
    ld b, $44
    rla
    ld b, h
    jr z, jr_010_4417

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
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$f000], sp
    ld hl, sp+$01
    jr nz, @-$7e

    pop af
    nop
    ld b, $00
    ld sp, hl
    ld hl, sp+$07
    nop
    pop af
    ld hl, sp+$01
    jr nz, @-$05

    nop
    add hl, bc
    nop
    add b

jr_010_4417:
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    ld hl, sp+$0a
    nop
    pop af
    nop
    dec bc
    nop
    ld sp, hl
    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    add b
    ld b, l
    ld b, h
    ld d, [hl]
    ld b, h
    ld h, a
    ld b, h
    ld a, b
    ld b, h
    adc c
    ld b, h
    sbc d
    ld b, h
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
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    inc b
    nop
    ld sp, hl
    ld hl, sp+$05
    nop
    ld sp, hl
    nop
    ld b, $00
    add b
    ldh a, [$f8]
    ld bc, $f820
    nop
    ld [bc], a
    jr nz, @-$0e

    nop
    rlca

jr_010_4472:
    nop
    ld hl, sp-$08
    ld [$8000], sp
    pop af
    ld hl, sp+$04
    jr nz, @-$05

    nop
    dec b
    jr nz, jr_010_4472

    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    add b
    ldh a, [$f8]
    dec bc

jr_010_448c:
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    ld [$8000], sp
    pop af
    nop
    inc c
    nop
    ld sp, hl
    nop
    rrca
    nop
    pop af
    ld hl, sp+$0e
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    add b
    or a
    ld b, h
    ret z

    ld b, h
    reti


    ld b, h

jr_010_44b1:
    ld [$fb44], a
    ld b, h
    inc c
    ld b, l
    ld sp, hl
    ld hl, sp+$00
    nop
    ld sp, hl
    nop
    nop
    jr nz, jr_010_44b1

    ld hl, sp+$02
    nop
    pop af
    nop
    inc bc
    nop
    add b
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld bc, $f020
    ld hl, sp+$04
    nop
    ldh a, [rP1]
    dec b
    nop
    add b
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    nop
    ld b, $20
    pop af
    ld hl, sp+$07
    jr nz, @-$7e

    ldh a, [rP1]
    ld [$f020], sp
    ld hl, sp+$09
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c

jr_010_44f9:
    nop
    add b
    ld sp, hl
    ld hl, sp+$0e

jr_010_44fe:
    nop
    ld sp, hl
    nop
    ld c, $20
    pop af
    nop

jr_010_4505:
    ld [bc], a
    jr nz, jr_010_44f9

    ld hl, sp+$03
    jr nz, jr_010_448c

    ld hl, sp-$08
    rrca

jr_010_450f:
    nop
    ld hl, sp+$00
    rrca
    jr nz, jr_010_4505

    ld hl, sp+$08
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    add b
    add hl, hl
    ld b, l
    ld a, [hl-]
    ld b, l
    ld c, e
    ld b, l
    ld e, h
    ld b, l
    ld l, l
    ld b, l
    ld a, [hl]
    ld b, l
    di
    ld hl, sp+$00
    nop

jr_010_452d:
    di
    nop
    nop
    jr nz, jr_010_452d

    ld hl, sp+$01
    nop

jr_010_4535:
    ei
    nop
    ld bc, $8020
    db $f4
    ld hl, sp+$02
    nop
    db $f4

jr_010_453f:
    nop
    ld [bc], a
    jr nz, jr_010_453f

    ld hl, sp+$03
    nop
    db $fc
    nop
    inc bc
    jr nz, @-$7e

    di
    ld hl, sp+$04
    nop
    di
    nop
    dec b
    nop
    ei
    ld hl, sp+$06
    nop
    ei
    nop
    rlca
    nop
    add b

jr_010_455c:
    db $fc
    ld hl, sp+$0a
    nop
    db $fc
    nop
    dec bc
    nop
    db $f4
    ld hl, sp+$08
    nop
    db $f4

jr_010_4569:
    nop
    add hl, bc
    nop
    add b
    ei
    ld hl, sp+$0d
    nop
    di
    ld hl, sp+$0c
    nop

jr_010_4575:
    di
    nop
    inc c
    jr nz, jr_010_4575

    nop
    dec c
    jr nz, jr_010_44fe

    db $f4
    ld hl, sp+$0e
    nop
    db $f4
    nop
    ld c, $20
    db $fc
    ld hl, sp+$0f
    nop
    db $fc
    nop
    rrca
    jr nz, jr_010_450f

    sbc e
    ld b, l
    xor b
    ld b, l
    or l
    ld b, l
    jp nz, $cf45

    ld b, l
    call c, $f145
    db $fd
    nop
    nop
    ld sp, hl
    ld hl, sp+$01
    nop
    ld sp, hl
    rst $38
    ld bc, $8020

jr_010_45a8:
    rst $28
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$02
    nop
    rst $30
    rst $38
    ld [bc], a
    jr nz, jr_010_4535

    pop af
    db $fd
    nop
    nop

jr_010_45b9:
    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    rst $28
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$04
    nop
    rst $30
    nop
    ld b, $00
    add b
    pop af
    db $fd
    nop
    nop
    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    rst $38
    inc bc
    jr nz, jr_010_455c

    rst $28
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$04
    nop
    rst $30
    rst $38
    inc b
    jr nz, jr_010_4569

    push af
    ld b, l
    ld b, $46
    rla
    ld b, [hl]
    jr z, jr_010_4637

    add hl, sp
    ld b, [hl]
    ld c, d
    ld b, [hl]
    ldh a, [$f8]
    nop

jr_010_45f8:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b

jr_010_4606:
    rst $28
    ld hl, sp+$00

jr_010_4609:
    nop
    rst $28
    rst $38
    nop
    jr nz, jr_010_4606

    ld hl, sp+$03
    nop
    rst $30
    nop
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$01
    rlca
    nop
    ld hl, sp-$09
    ld a, [bc]
    jr nz, jr_010_45a8

    rst $28
    ld hl, sp+$05
    nop
    rst $28
    nop
    ld b, $00
    rst $30
    rst $38
    ld [$f700], sp
    rst $30
    inc c

jr_010_4637:
    jr nz, jr_010_45b9

    ldh a, [$f8]
    dec b

jr_010_463c:
    nop
    ldh a, [rIE]
    dec b
    jr nz, @-$06

    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b

jr_010_464a:
    rst $28
    ld hl, sp+$05
    nop
    rst $28
    rst $38
    dec b
    jr nz, jr_010_464a

    ld hl, sp+$0b
    nop
    rst $30
    nop
    inc c
    nop
    add b
    ld h, a
    ld b, [hl]
    ld a, b
    ld b, [hl]
    adc c
    ld b, [hl]
    sbc d
    ld b, [hl]
    xor e
    ld b, [hl]
    cp h
    ld b, [hl]
    xor $f8
    nop
    nop
    xor $00
    ld bc, $f600
    ld hl, sp+$02
    nop
    or $ff
    ld [bc], a
    jr nz, jr_010_45f8

    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$03
    nop
    ld hl, sp-$01
    inc bc
    jr nz, jr_010_4609

    xor $f8
    inc b
    nop
    xor $00
    dec b
    nop
    or $f8
    ld b, $00
    or $00
    rlca
    nop
    add b
    ldh a, [$fb]
    inc b
    nop
    ld hl, sp-$09
    add hl, bc
    nop
    ld hl, sp-$01
    ld a, [bc]
    nop
    ldh a, [$03]
    ld [$8000], sp
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_010_463c

    xor $f8
    dec bc
    nop
    xor $00
    inc c
    nop
    or $f8
    ld c, $00
    or $ff
    ld c, $20
    add b
    reti


    ld b, [hl]
    and $46
    di
    ld b, [hl]
    nop
    ld b, a
    ld de, $1e47
    ld b, a
    rst $28
    ei
    nop
    db $10
    rst $30
    ld hl, sp+$01
    db $10
    rst $30
    nop
    ld [bc], a
    db $10
    add b
    ldh a, [$fc]
    inc bc
    db $10

jr_010_46ea:
    ld hl, sp-$08
    inc b
    db $10
    ld hl, sp+$00
    dec b
    db $10
    add b
    ldh a, [$fb]
    nop
    db $10
    ld hl, sp-$08
    ld b, $10

jr_010_46fb:
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10

jr_010_470c:
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$fb]
    nop
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10

jr_010_471d:
    add b
    ld sp, hl
    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    pop af
    db $fc
    inc bc
    db $10
    add b
    scf
    ld b, a
    ld c, b
    ld b, a
    ld e, c
    ld b, a
    ld l, d
    ld b, a
    ld a, e
    ld b, a
    adc h
    ld b, a
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
    xor $f8
    inc b

jr_010_474b:
    nop
    xor $00
    dec b
    nop
    or $f8
    ld b, $00
    or $00
    rlca

jr_010_4757:
    nop
    add b
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    pop af
    nop
    nop
    jr nz, jr_010_4757

jr_010_4766:
    ld hl, sp+$01
    jr nz, jr_010_46ea

    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    rst $28
    nop
    inc b
    jr nz, jr_010_4766

    ld hl, sp+$05

jr_010_4779:
    jr nz, jr_010_46fb

    ld sp, hl
    ld hl, sp+$0c

jr_010_477e:
    nop
    ld sp, hl
    nop
    dec c
    nop
    pop af
    nop
    nop
    jr nz, jr_010_4779

    ld hl, sp+$01
    jr nz, jr_010_470c

    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    ldh a, [rP1]
    inc b
    jr nz, @-$0e

    ld hl, sp+$05
    jr nz, jr_010_471d

    xor c
    ld b, a
    cp d
    ld b, a
    bit 0, a
    call c, $ed47
    ld b, a
    cp $47
    rst $28
    nop
    nop
    jr nz, @-$07

    nop
    ld bc, $ef20
    ld hl, sp+$00
    nop
    rst $30
    ld hl, sp+$01
    nop
    add b
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_474b

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    di
    ld hl, sp+$0c
    nop

jr_010_47f1:
    di
    nop
    inc c
    jr nz, jr_010_47f1

    ld hl, sp+$0d
    nop
    ei
    nop
    dec c
    jr nz, jr_010_477e

    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    ld c, $20
    add b
    dec de
    ld c, b
    inc l
    ld c, b
    dec a
    ld c, b
    ld c, [hl]
    ld c, b
    ld e, a
    ld c, b
    ld [hl], b
    ld c, b

jr_010_481b:
    rst $28
    ld hl, sp+$00

jr_010_481e:
    nop
    rst $28
    nop
    nop
    jr nz, jr_010_481b

    ld hl, sp+$01
    nop
    rst $30
    nop
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    inc bc

jr_010_482f:
    nop
    ldh a, [rP1]
    inc bc
    jr nz, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    rst $28
    ld hl, sp+$06
    nop
    rst $28
    nop
    rlca
    nop
    rst $30
    ld hl, sp+$08
    nop
    rst $30
    nop
    add hl, bc
    nop
    add b
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    add b

jr_010_485f:
    rst $28
    ld hl, sp+$00
    nop
    rst $28
    nop
    nop
    jr nz, jr_010_485f

    ld hl, sp+$0c
    nop
    rst $30
    nop
    dec c
    nop
    add b
    ldh a, [$f8]
    inc bc

jr_010_4873:
    nop
    ldh a, [rP1]
    inc bc
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    adc l
    ld c, b
    sbc [hl]
    ld c, b
    xor a
    ld c, b
    ret nz

    ld c, b
    pop de
    ld c, b
    ld [c], a
    ld c, b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$02
    nop

jr_010_4899:
    ld hl, sp+$00
    ld [bc], a
    jr nz, jr_010_481e

    pop af
    ld hl, sp+$01
    nop
    pop af
    nop
    ld bc, $f920
    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, jr_010_482f

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

jr_010_48c0:
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    ld hl, sp+$08
    nop
    pop af

jr_010_48cd:
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ld hl, sp-$08
    ld c, $00
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    nop
    ld c, $20
    add b
    pop af
    ld hl, sp+$0d
    nop
    ld sp, hl
    ld hl, sp+$0f
    nop
    pop af
    nop
    dec c
    jr nz, @-$05

    nop
    rrca
    jr nz, jr_010_4873

    rst $38
    ld c, b
    inc c
    ld c, c
    add hl, de
    ld c, c
    ld h, $49
    inc sp
    ld c, c
    ld b, b
    ld c, c
    pop af
    db $fd
    nop
    db $10
    ld sp, hl
    ld hl, sp+$01
    db $10
    ld sp, hl
    rst $38
    ld bc, $8030

jr_010_490c:
    rst $28
    db $fd
    nop
    db $10
    rst $30
    ld hl, sp+$02
    db $10
    rst $30
    rst $38
    ld [bc], a
    jr nc, jr_010_4899

    pop af
    db $fd
    nop
    db $10
    ld sp, hl
    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    dec b
    db $10
    add b
    rst $28
    db $fd
    nop
    db $10
    rst $30
    ld hl, sp+$04
    db $10

jr_010_492e:
    rst $30
    nop
    ld b, $10
    add b
    pop af
    db $fd
    nop
    db $10
    ld sp, hl
    ld hl, sp+$03
    db $10
    ld sp, hl
    rst $38
    inc bc
    jr nc, jr_010_48c0

    rst $28
    db $fd
    nop
    db $10
    rst $30
    ld hl, sp+$04
    db $10
    rst $30
    rst $38
    inc b
    jr nc, jr_010_48cd

    ld e, c
    ld c, c
    ld l, d
    ld c, c
    ld a, e
    ld c, c

jr_010_4953:
    adc h
    ld c, c
    sbc l
    ld c, c
    xor [hl]
    ld c, c
    ld sp, hl
    ld hl, sp+$00

jr_010_495c:
    db $10
    ld sp, hl
    nop
    nop
    jr nc, jr_010_4953

    ld hl, sp+$02
    db $10
    pop af
    nop
    inc bc
    db $10
    add b
    ld hl, sp-$08
    ld bc, $f810
    nop
    ld bc, $f030
    ld hl, sp+$04
    db $10
    ldh a, [rP1]
    dec b
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    nop
    ld b, $30
    pop af
    ld hl, sp+$07
    jr nc, jr_010_490c

    ldh a, [rP1]
    ld [$f030], sp
    ld hl, sp+$09
    jr nc, @-$06

    ld hl, sp+$0c
    db $10
    ld hl, sp+$00
    dec c

jr_010_499b:
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    ld c, $30
    pop af
    nop

jr_010_49a7:
    ld [bc], a
    jr nc, jr_010_499b

    ld hl, sp+$03
    jr nc, jr_010_492e

    ld hl, sp-$08
    rrca

jr_010_49b1:
    db $10
    ld hl, sp+$00
    rrca
    jr nc, jr_010_49a7

    ld hl, sp+$08
    db $10
    ldh a, [rP1]
    add hl, bc
    db $10
    add b
    bit 1, c
    call c, $ed49
    ld c, c
    cp $49
    rrca
    ld c, d
    jr nz, jr_010_4a15

    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    ld [bc], a
    jr nc, jr_010_495c

    pop af
    ld hl, sp+$01
    db $10
    pop af
    nop
    ld bc, $f930
    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc bc
    jr nc, @-$7e

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_010_4a12:
    db $10
    ld hl, sp-$08

jr_010_4a15:
    ld c, $10
    ldh a, [rP1]
    inc c
    jr nc, @-$06

    nop
    ld c, $30
    add b
    pop af
    ld hl, sp+$0d

jr_010_4a23:
    db $10
    ld sp, hl
    ld hl, sp+$0f
    db $10
    pop af
    nop
    dec c
    jr nc, @-$05

    nop
    rrca
    jr nc, jr_010_49b1

    dec a
    ld c, d
    ld c, [hl]
    ld c, d
    ld e, a
    ld c, d
    ld [hl], b
    ld c, d
    add c
    ld c, d
    sub d
    ld c, d
    ldh a, [$f8]
    nop

jr_010_4a40:
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    pop af
    ld hl, sp+$00

jr_010_4a51:
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rP1]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ld sp, hl
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    ld [$f820], sp
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    add hl, bc
    jr nz, jr_010_4a12

    pop af
    ld hl, sp+$08

jr_010_4a95:
    nop
    pop af
    nop
    ld [$f920], sp
    ld hl, sp+$09
    nop
    ld sp, hl
    nop
    add hl, bc
    jr nz, jr_010_4a23

    xor a
    ld c, d
    ret nz

    ld c, d
    pop de
    ld c, d
    ld [c], a
    ld c, d
    di
    ld c, d
    inc b
    ld c, e
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$02
    nop
    ld sp, hl
    rst $38
    ld [bc], a
    jr nz, jr_010_4a40

    ld a, [c]
    ld hl, sp+$03

jr_010_4ac3:
    nop
    ld a, [c]
    nop
    inc b
    nop
    ld a, [$02f8]
    nop
    ld a, [$02ff]
    jr nz, jr_010_4a51

    di
    ld hl, sp+$09
    nop
    di
    nop
    ld a, [bc]
    nop
    ei
    ld hl, sp+$0b
    nop
    ei
    nop
    inc c
    nop
    add b
    db $f4
    nop
    ld a, [bc]
    nop
    db $f4
    ld hl, sp+$0d
    nop
    db $fc
    ld hl, sp+$0b
    nop
    db $fc
    nop
    inc c
    nop
    add b
    ld a, [c]
    ld hl, sp+$05

jr_010_4af6:
    nop
    ld a, [c]
    rst $38
    dec b
    jr nz, jr_010_4af6

    ld hl, sp+$06
    nop
    ld a, [$0700]
    nop
    add b
    di
    ld hl, sp+$08

jr_010_4b07:
    nop
    di
    rst $38
    ld [$fb20], sp
    rst $38
    ld b, $20
    ei
    rst $30
    rlca
    jr nz, jr_010_4a95

    ld hl, $324b
    ld c, e
    ld b, e
    ld c, e
    ld d, h
    ld c, e
    ld h, l
    ld c, e
    db $76
    ld c, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_4b27:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_010_4b35:
    jr nz, jr_010_4b27

jr_010_4b37:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_4b37

    ld hl, sp+$03
    jr nz, jr_010_4ac3

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_4b68:
    nop
    ldh a, [rP1]

jr_010_4b6b:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_4b79:
    jr nz, jr_010_4b6b

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_4b07

    sub e
    ld c, e
    and h
    ld c, e
    or l
    ld c, e
    add $4b
    rst $10
    ld c, e
    add sp, $4b
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f000
    nop
    nop
    jr nz, @-$06

    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_4ba7:
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    nop
    inc bc
    jr nz, jr_010_4b35

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_4bda:
    nop
    ld hl, sp-$08
    dec c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    nop
    dec c
    jr nz, jr_010_4b68

    ldh a, [$f8]
    ld c, $00
    ld hl, sp-$08
    rrca
    nop
    ldh a, [rP1]
    ld c, $20
    ld hl, sp+$00
    rrca
    jr nz, jr_010_4b79

    dec b
    ld c, h
    ld d, $4c
    daa
    ld c, h
    jr c, jr_010_4c4d

    ld c, c
    ld c, h
    ld e, d
    ld c, h
    ldh a, [$f9]
    nop
    nop
    ld hl, sp-$07
    ld bc, $f000
    nop
    nop
    jr nz, @-$06

    nop
    ld bc, $8020
    ldh a, [$f9]
    ld [bc], a

jr_010_4c19:
    nop
    ld hl, sp-$07
    inc bc
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    nop
    inc bc
    jr nz, jr_010_4ba7

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f9]
    inc c

jr_010_4c4c:
    nop

jr_010_4c4d:
    ld hl, sp-$07
    dec c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    nop
    dec c
    jr nz, jr_010_4bda

    ldh a, [$f9]
    ld c, $00
    ld hl, sp-$07
    rrca
    nop
    ldh a, [rP1]
    ld c, $20
    ld hl, sp+$00
    rrca
    jr nz, @-$7e

    ld [hl], a
    ld c, h
    adc b
    ld c, h
    sbc c
    ld c, h
    xor d
    ld c, h
    cp e
    ld c, h
    call z, $f14c
    ld hl, sp+$00
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$01
    db $10
    ld sp, hl
    nop
    ld bc, $8030
    ldh a, [$f8]
    ld [bc], a
    db $10
    ldh a, [rP1]
    ld [bc], a
    jr nc, @-$06

    ld hl, sp+$03
    db $10
    ld hl, sp+$00
    inc bc
    jr nc, jr_010_4c19

    pop af
    ld hl, sp+$04

jr_010_4c9c:
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$06
    db $10
    ld sp, hl
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    pop af
    ld hl, sp+$0c
    db $10
    pop af
    nop
    inc c
    jr nc, @-$05

    ld hl, sp+$0d
    db $10
    ld sp, hl
    nop
    dec c
    jr nc, jr_010_4c4c

    ldh a, [$f8]
    ld c, $10
    ldh a, [rP1]
    ld c, $30
    ld hl, sp-$08
    rrca
    db $10
    ld hl, sp+$00
    rrca
    jr nc, @-$7e

    jp hl


    ld c, h
    ld a, [$0b4c]
    ld c, l
    inc e
    ld c, l
    dec l
    ld c, l
    ld a, $4d
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
    ldh a, [rP1]
    ld bc, $f800
    nop
    inc bc
    nop
    ldh a, [$f8]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00

jr_010_4d15:
    ld [$f800], sp
    ld hl, sp+$03
    jr nz, jr_010_4c9c

    ldh a, [$f8]
    ld b, $00
    ld hl, sp-$08
    inc bc
    jr nz, jr_010_4d15

    nop
    add hl, bc
    nop
    ld hl, sp+$00

jr_010_4d2a:
    ld a, [bc]
    nop
    add b
    ldh a, [rIE]
    dec bc
    jr nz, jr_010_4d2a

    rst $30

jr_010_4d33:
    inc c
    nop
    ld hl, sp-$01
    dec c
    nop
    ldh a, [$f8]
    dec bc
    nop
    add b
    ldh a, [rIE]
    dec bc

jr_010_4d41:
    jr nz, jr_010_4d33

    ld hl, sp+$0b
    nop
    ld hl, sp-$09
    ld c, $00
    ld hl, sp-$01
    rrca
    nop
    add b
    ld e, e
    ld c, l
    ld l, h
    ld c, l
    ld a, l
    ld c, l
    adc [hl]
    ld c, l
    sbc a
    ld c, l
    or b
    ld c, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_4d61:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_010_4d6f:
    jr nz, jr_010_4d61

jr_010_4d71:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_4d71

    ld hl, sp+$03
    jr nz, @-$7e

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_010_4da5:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_4db3:
    jr nz, jr_010_4da5

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_4d41

    call $de4d
    ld c, l
    rst $28
    ld c, l
    nop
    ld c, [hl]
    ld de, $224e
    ld c, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_4dd3:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_010_4de1:
    jr nz, jr_010_4dd3

jr_010_4de3:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_4de3

    ld hl, sp+$03
    jr nz, jr_010_4d6f

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_010_4e17:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_4e25:
    jr nz, jr_010_4e17

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_4db3

    ccf
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    add e
    ld c, [hl]
    sub h
    ld c, [hl]
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [$f8]

jr_010_4e49:
    nop
    nop
    ldh a, [rP1]

jr_010_4e4d:
    ld bc, $8000
    ld hl, sp+$00
    ld [bc], a

jr_010_4e53:
    jr nz, jr_010_4e4d

    ld hl, sp+$03
    jr nz, jr_010_4e49

    nop
    nop
    jr nz, jr_010_4e4d

    ld hl, sp+$01
    jr nz, jr_010_4de1

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_010_4e89:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_4e97:
    jr nz, jr_010_4e89

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_4e25

    or c
    ld c, [hl]
    jp nz, $d34e

    ld c, [hl]
    db $e4
    ld c, [hl]
    push af
    ld c, [hl]
    ld b, $4f
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_010_4ec4:
    nop

jr_010_4ec5:
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_010_4ec4

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_010_4e53

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    nop
    dec b
    db $10
    pop af
    ld hl, sp+$08
    db $10
    ld sp, hl
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    ld a, [bc]
    db $10
    add b
    ldh a, [$f8]
    dec bc
    db $10
    ldh a, [rP1]
    inc c

jr_010_4efc:
    db $10
    ld hl, sp-$08
    dec c
    db $10
    ld hl, sp+$00
    ld c, $10
    add b
    pop af
    nop

jr_010_4f08:
    dec bc

jr_010_4f09:
    jr nc, jr_010_4efc

    ld hl, sp+$0c
    jr nc, jr_010_4f08

    nop
    dec c
    jr nc, @-$05

    ld hl, sp+$0e
    jr nc, jr_010_4e97

    inc hl
    ld c, a
    inc [hl]
    ld c, a
    ld b, l
    ld c, a
    ld d, [hl]
    ld c, a
    ld h, a
    ld c, a
    ld a, b
    ld c, a
    ldh a, [$f8]
    nop

jr_010_4f26:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_010_4f36:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_4f36

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_4ec5

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
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_4f6a:
    nop
    ldh a, [rP1]
    dec c

jr_010_4f6e:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_010_4f7a:
    inc c
    jr nz, jr_010_4f6e

    ld hl, sp+$0d
    jr nz, jr_010_4f7a

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_010_4f09

    sub l
    ld c, a
    and [hl]
    ld c, a
    or a
    ld c, a
    ret z

    ld c, a
    reti


    ld c, a
    ld [$f04f], a
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00

jr_010_4f9f:
    inc bc
    nop
    ldh a, [rIE]

jr_010_4fa3:
    nop
    jr nz, jr_010_4f26

    ld hl, sp+$00
    ld [bc], a

jr_010_4fa9:
    jr nz, jr_010_4fa3

    ld hl, sp+$03
    jr nz, jr_010_4f9f

    nop
    ld bc, $f020
    ld sp, hl
    ld bc, $8000
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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    ldh a, [$f8]

jr_010_4fe3:
    inc c
    nop
    ldh a, [rIE]

jr_010_4fe7:
    inc c
    jr nz, jr_010_4f6a

    ld hl, sp+$00
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_4fe3

    nop
    dec c
    jr nz, jr_010_4fe7

    ld sp, hl
    dec c
    nop
    add b
    rlca
    ld d, b
    jr jr_010_504f

    add hl, hl
    ld d, b
    ld a, [hl-]
    ld d, b
    ld c, e
    ld d, b
    ld e, h
    ld d, b
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
    pop af
    nop

jr_010_501a:
    nop

jr_010_501b:
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_501a

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_4fa9

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]

jr_010_5045:
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ld sp, hl
    ld hl, sp+$0b

jr_010_504e:
    nop

jr_010_504f:
    ld sp, hl
    nop

jr_010_5051:
    dec bc
    jr nz, jr_010_5045

    ld hl, sp+$0c
    nop
    pop af
    nop
    dec c
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_505f:
    jr nz, jr_010_5051

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, @-$7e

    ld a, c
    ld d, b
    adc d
    ld d, b
    sbc e
    ld d, b
    xor h
    ld d, b
    cp l
    ld d, b
    adc $50
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_508d:
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_501b

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
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
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    dec c
    jr nz, jr_010_504e

    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp+$00
    rrca
    jr nz, jr_010_505f

    db $eb
    ld d, b
    db $fc
    ld d, b
    dec c
    ld d, c
    ld e, $51
    cpl
    ld d, c
    ld b, b
    ld d, c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01

jr_010_50f6:
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    ld sp, hl
    nop
    ld bc, $f930
    ld hl, sp+$02
    jr nc, jr_010_50f6

    ld hl, sp+$03
    db $10
    pop af
    nop
    inc bc
    jr nc, jr_010_508d

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    inc c
    jr nc, @-$06

    ld hl, sp+$0d
    db $10
    ld hl, sp+$00
    ld c, $10
    add b
    pop af
    ld hl, sp+$0c

jr_010_5143:
    db $10
    pop af
    nop

jr_010_5146:
    inc c
    jr nc, @-$05

    nop
    dec c
    jr nc, jr_010_5146

    ld hl, sp+$0e
    jr nc, @-$7e

    ld e, l
    ld d, c
    ld l, [hl]
    ld d, c
    ld a, a
    ld d, c
    sub b
    ld d, c
    and c
    ld d, c
    or d
    ld d, c
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
    pop af
    nop

jr_010_5170:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_5170

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, @-$7e

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_010_51a8:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_010_51b4:
    inc c

jr_010_51b5:
    jr nz, jr_010_51a8

    ld hl, sp+$0d
    jr nz, jr_010_51b4

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_010_5143

    rst $08
    ld d, c
    ldh [rHDMA1], a
    pop af
    ld d, c
    ld [bc], a
    ld d, d
    inc de
    ld d, d
    inc h
    ld d, d
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [$f8]

jr_010_51d9:
    nop
    nop
    ldh a, [rP1]

jr_010_51dd:
    ld bc, $8000
    ld hl, sp-$01
    ld [bc], a

jr_010_51e3:
    jr nz, jr_010_51dd

    rst $30
    inc bc
    jr nz, jr_010_51d9

    rst $38
    nop
    jr nz, jr_010_51dd

    rst $30
    ld bc, $8020
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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_010_5219:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rIE]
    inc c

jr_010_5227:
    jr nz, jr_010_5219

    rst $30
    dec c
    jr nz, @-$06

    rst $38
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_010_51b5

    ld b, c
    ld d, d
    ld d, d
    ld d, d
    ld h, e
    ld d, d
    ld [hl], h
    ld d, d
    add l
    ld d, d
    sub [hl]
    ld d, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01

jr_010_524c:
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ld sp, hl
    nop
    ld bc, $f920
    ld hl, sp+$02
    jr nz, jr_010_524c

    ld hl, sp+$03
    nop
    pop af
    nop
    inc bc
    jr nz, jr_010_51e3

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    pop af
    ld hl, sp+$0c

jr_010_5299:
    nop
    pop af
    nop

jr_010_529c:
    inc c
    jr nz, @-$05

    nop
    dec c
    jr nz, jr_010_529c

    ld hl, sp+$0e
    jr nz, jr_010_5227

    or e
    ld d, d
    call nz, $d552
    ld d, d
    and $52
    rst $30
    ld d, d
    ld [$f053], sp
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b

jr_010_52c4:
    rst $28
    nop
    nop

jr_010_52c7:
    jr nz, @-$0f

    ld hl, sp+$01
    jr nz, jr_010_52c4

    nop
    ld [bc], a
    jr nz, @-$07

    ld hl, sp+$03
    jr nz, @-$7e

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
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b

jr_010_5308:
    rst $28
    nop
    inc c

jr_010_530b:
    jr nz, @-$0f

    ld hl, sp+$0d
    jr nz, jr_010_5308

    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    jr nz, jr_010_5299

    dec h
    ld d, e
    ld [hl], $53
    ld b, a
    ld d, e
    ld e, b
    ld d, e
    ld l, c
    ld d, e
    ld a, d
    ld d, e
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_52c7

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
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
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop

jr_010_536f:
    dec c
    nop
    ld sp, hl
    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_537d:
    jr nz, jr_010_536f

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_530b

    sub a
    ld d, e
    xor b
    ld d, e
    cp c
    ld d, e
    jp z, $db53

    ld d, e
    db $ec
    ld d, e
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$01
    db $10
    ld sp, hl
    nop
    ld [bc], a
    db $10
    add b
    ldh a, [$f8]
    inc bc

jr_010_53ab:
    db $10
    ldh a, [rP1]
    inc bc
    jr nc, @-$06

    ld hl, sp+$04
    db $10
    ld hl, sp+$00
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f9]
    ld b, $10
    ldh a, [rSB]
    rlca
    db $10
    ld hl, sp-$07
    ld a, [bc]
    db $10
    ld hl, sp+$01
    dec bc
    db $10
    add b
    pop af
    ld hl, sp+$0c
    db $10
    pop af
    nop
    dec c
    db $10
    ld sp, hl
    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_010_53ef:
    db $10
    ldh a, [rP1]
    dec c
    db $10
    ld hl, sp+$00
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, jr_010_537d

    add hl, bc
    ld d, h
    ld a, [de]
    ld d, h
    dec hl
    ld d, h
    inc a
    ld d, h
    ld c, l
    ld d, h
    ld e, [hl]
    ld d, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_540f:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop
    jr nz, jr_010_540f

jr_010_541f:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_541f

    ld hl, sp+$03
    jr nz, jr_010_53ab

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_5450:
    nop
    ldh a, [rP1]

jr_010_5453:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c
    jr nz, jr_010_5453

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_53ef

    ld a, e
    ld d, h
    adc h
    ld d, h
    sbc l
    ld d, h
    xor [hl]
    ld d, h
    cp a
    ld d, h
    ret nc

    ld d, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f9]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld sp, hl
    inc bc
    nop
    ld hl, sp+$01
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b

jr_010_54a0:
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    dec b

jr_010_54b1:
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ldh a, [$f9]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, jr_010_5450

    ldh a, [$fa]
    dec bc
    nop
    ldh a, [rSB]
    dec bc
    jr nz, @-$06

    ld sp, hl
    ld c, $00
    ld hl, sp+$01
    rrca
    nop
    add b
    db $ed
    ld d, h
    cp $54
    rrca
    ld d, l
    jr nz, @+$57

    ld sp, $4255
    ld d, l
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
    rst $28
    ld hl, sp+$00
    nop
    rst $28
    nop
    inc b
    nop
    rst $30
    ld hl, sp+$02
    nop
    rst $30
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$03
    jr nz, jr_010_54a0

    rst $30
    nop
    ld [$ef00], sp
    ld hl, sp+$09
    nop
    rst $28
    nop
    rlca
    nop
    rst $30
    ld hl, sp+$05
    jr nz, jr_010_54b1

    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    rst $28
    nop
    dec bc
    nop
    rst $30
    nop
    dec c
    nop
    rst $28
    ld hl, sp+$0e
    nop
    rst $30
    ld hl, sp+$0f
    nop
    add b
    ld e, a
    ld d, l
    ld [hl], b
    ld d, l
    add c
    ld d, l
    sub d
    ld d, l
    and e
    ld d, l
    or h
    ld d, l
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [rP1]
    ld bc, $f800
    nop
    inc bc
    nop
    add b
    rst $28
    ld hl, sp+$00

jr_010_5573:
    nop
    rst $28
    nop
    inc b
    nop
    rst $30
    ld hl, sp+$02
    nop
    rst $30
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp+$00
    ld [$f800], sp
    ld hl, sp+$03
    jr nz, @-$7e

    rst $30
    nop
    ld [$ef00], sp
    ld hl, sp+$09
    nop
    rst $28
    nop
    rlca
    nop
    rst $30
    ld hl, sp+$05
    jr nz, @-$7e

    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    rst $28
    nop
    dec bc

jr_010_55b7:
    nop
    rst $30
    nop
    dec c
    nop
    rst $28
    ld hl, sp+$0e
    nop
    rst $30
    ld hl, sp+$0f
    nop
    add b
    pop de
    ld d, l
    ld [c], a
    ld d, l
    di
    ld d, l
    inc b
    ld d, [hl]
    dec d
    ld d, [hl]
    ld h, $56
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_010_55e4:
    nop

jr_010_55e5:
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_010_55e4

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_010_5573

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    nop
    dec b
    db $10
    pop af
    ld hl, sp+$08
    db $10
    ld sp, hl
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    ld a, [bc]
    db $10
    add b
    ldh a, [$f8]
    dec bc

jr_010_5618:
    db $10
    ldh a, [rP1]
    inc c

jr_010_561c:
    db $10
    ld hl, sp-$08
    dec c
    db $10
    ld hl, sp+$00
    ld c, $10
    add b
    pop af
    nop

jr_010_5628:
    dec bc

jr_010_5629:
    jr nc, jr_010_561c

    ld hl, sp+$0c
    jr nc, jr_010_5628

    nop
    dec c
    jr nc, @-$05

    ld hl, sp+$0e
    jr nc, jr_010_55b7

    ld b, e
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld h, l
    ld d, [hl]
    db $76
    ld d, [hl]
    add a
    ld d, [hl]
    sbc b
    ld d, [hl]
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld bc, $8020

jr_010_5654:
    rst $28
    ld hl, sp+$02
    nop
    rst $28
    nop
    ld [bc], a
    jr nz, jr_010_5654

    ld hl, sp+$03
    nop
    rst $30
    nop
    inc bc
    jr nz, jr_010_55e5

    rst $28
    rst $30
    inc b
    nop
    rst $28
    rst $38
    dec b
    nop
    rst $30
    rst $30
    ld b, $00
    rst $30
    rst $38
    rlca
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
    ld a, [c]
    ld hl, sp+$0c

jr_010_568a:
    nop
    ld a, [c]
    nop
    inc c
    jr nz, jr_010_568a

    ld hl, sp+$0d
    nop
    ld a, [$0d00]
    jr nz, jr_010_5618

    rst $28
    ld hl, sp+$0e
    nop
    rst $28
    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    nop
    rst $30
    nop
    rrca
    jr nz, jr_010_5629

    or l
    ld d, [hl]
    add $56
    rst $10
    ld d, [hl]
    add sp, $56
    ld sp, hl
    ld d, [hl]
    ld a, [bc]
    ld d, a
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    inc bc

jr_010_56c9:
    nop
    ldh a, [rP1]
    inc bc
    jr nz, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
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
    add hl, bc
    nop
    ldh a, [$f8]
    ld b, $00
    add b
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    ld c, $00
    add b
    ldh a, [$f8]
    inc c

jr_010_570d:
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    daa
    ld d, a
    jr c, jr_010_5776

    ld c, c
    ld d, a
    ld e, d
    ld d, a
    ld l, e
    ld d, a
    ld a, h
    ld d, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    rst $28
    rst $38
    nop
    jr nc, @-$0f

    rst $30
    ld bc, $f730
    rst $38
    ld [bc], a
    jr nc, @-$07

    rst $30
    inc bc
    jr nc, jr_010_56c9

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    rst $28
    ld hl, sp+$04
    db $10
    rst $28
    nop
    dec b
    db $10
    rst $30
    ld hl, sp+$08
    db $10
    rst $30
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc
    db $10
    ld hl, sp-$08
    inc c

jr_010_5776:
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b

jr_010_577c:
    rst $28
    rst $38
    ld a, [bc]
    jr nc, @-$0f

    rst $30
    dec bc
    jr nc, jr_010_577c

    rst $38
    inc c
    jr nc, @-$07

    rst $30
    dec c
    jr nc, jr_010_570d

    sbc c
    ld d, a
    xor d
    ld d, a
    cp e
    ld d, a
    call z, $dd57
    ld d, a
    xor $57
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
    pop af
    ld hl, sp+$00

jr_010_57ad:
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
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
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
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
    pop af
    ld hl, sp+$08

jr_010_57f1:
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    dec bc
    ld e, b
    inc e
    ld e, b
    dec l
    ld e, b
    ld a, $58
    ld c, a
    ld e, b
    ld h, b
    ld e, b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_5811:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_010_581f:
    jr nz, jr_010_5811

jr_010_5821:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_5821

    ld hl, sp+$03
    jr nz, jr_010_57ad

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_5852:
    nop
    ldh a, [rP1]

jr_010_5855:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_5863:
    jr nz, jr_010_5855

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_57f1

    ld a, l
    ld e, b
    adc [hl]
    ld e, b
    sbc a
    ld e, b
    or b
    ld e, b
    pop bc
    ld e, b
    jp nc, $f158

    ld hl, sp+$00
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$01
    db $10
    ld sp, hl
    nop
    ld bc, $8030

jr_010_588e:
    rst $28
    ld hl, sp+$02
    db $10
    rst $28
    nop
    ld [bc], a
    jr nc, jr_010_588e

    ld hl, sp+$03
    db $10
    rst $30
    nop
    inc bc
    jr nc, jr_010_581f

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    xor $f7
    ld [$ee10], sp
    rst $38
    add hl, bc
    db $10
    or $f7
    ld a, [bc]
    db $10
    or $ff
    dec bc
    db $10
    add b
    ld a, [c]
    ld hl, sp+$0c

jr_010_58c4:
    db $10
    ld a, [c]
    nop
    inc c
    jr nc, jr_010_58c4

    ld hl, sp+$0d
    db $10
    ld a, [$0d00]
    jr nc, jr_010_5852

    rst $28
    ld hl, sp+$0e

jr_010_58d5:
    db $10
    rst $28
    nop
    ld c, $30
    rst $30
    ld hl, sp+$0f
    db $10
    rst $30
    nop
    rrca
    jr nc, jr_010_5863

    rst $28
    ld e, b
    nop
    ld e, c
    ld de, $2259
    ld e, c
    inc sp
    ld e, c
    ld b, h
    ld e, c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02

jr_010_58fa:
    db $10
    ld hl, sp+$00
    inc bc

jr_010_58fe:
    db $10
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_010_5903:
    jr nc, jr_010_58fe

    ld hl, sp+$03
    jr nc, jr_010_58fa

    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $8010
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_010_593a:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_5946:
    inc c
    jr nc, jr_010_593a

    ld hl, sp+$0d
    jr nc, jr_010_5946

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_58d5

    ld h, c
    ld e, c
    ld [hl], d
    ld e, c
    add e
    ld e, c
    sub h
    ld e, c
    and l
    ld e, c
    or [hl]
    ld e, c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$00

jr_010_5975:
    db $10
    pop af
    nop

jr_010_5978:
    ld bc, $f910
    nop
    ld [bc], a
    jr nc, jr_010_5978

    ld hl, sp+$03
    jr nc, jr_010_5903

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    pop af
    ld hl, sp+$0a

jr_010_59b9:
    db $10
    pop af
    nop
    dec bc
    db $10
    ld sp, hl
    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    add b
    db $d3
    ld e, c
    db $e4
    ld e, c
    push af
    ld e, c
    ld b, $5a
    rla
    ld e, d
    jr z, jr_010_5a2d

    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02

jr_010_59de:
    nop
    ld hl, sp+$00
    inc bc

jr_010_59e2:
    nop
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_010_59e7:
    jr nz, jr_010_59e2

    ld hl, sp+$03
    jr nz, jr_010_59de

    nop
    nop
    jr nz, jr_010_59e2

    ld hl, sp+$01
    jr nz, jr_010_5975

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_010_5a1e:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_010_5a2a:
    inc c

jr_010_5a2b:
    jr nz, jr_010_5a1e

jr_010_5a2d:
    ld hl, sp+$0d
    jr nz, jr_010_5a2a

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_010_59b9

    ld b, l
    ld e, d
    ld d, [hl]
    ld e, d
    ld h, a
    ld e, d
    ld a, b
    ld e, d
    adc c
    ld e, d
    sbc d
    ld e, d
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]

jr_010_5a4b:
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [rP1]
    nop
    jr nc, jr_010_5a4b

jr_010_5a5b:
    ld hl, sp+$01
    jr nc, @-$06

    nop
    ld [bc], a
    jr nc, jr_010_5a5b

    ld hl, sp+$03
    jr nc, jr_010_59e7

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    ldh a, [rP1]

jr_010_5a97:
    dec c
    db $10
    add b
    ldh a, [rP1]
    inc c

jr_010_5a9d:
    jr nc, jr_010_5a97

    nop
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, jr_010_5a97

    ld hl, sp+$0d
    jr nc, jr_010_5a2b

    or a
    ld e, d
    ret z

    ld e, d
    reti


    ld e, d
    ld [$fb5a], a
    ld e, d
    inc c
    ld e, e
    ld hl, sp-$08
    ld [bc], a
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    ldh a, [$f8]
    inc b

jr_010_5ac2:
    db $10
    ldh a, [rP1]
    dec b

jr_010_5ac6:
    db $10
    add b
    ld sp, hl
    nop
    ld [bc], a
    jr nc, jr_010_5ac6

    ld hl, sp+$03
    jr nc, jr_010_5ac2

    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $8010
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_010_5b02:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_5b0e:
    inc c
    jr nc, jr_010_5b02

    ld hl, sp+$0d
    jr nc, jr_010_5b0e

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_5a9d

    add hl, hl
    ld e, e
    ld a, [hl-]
    ld e, e
    ld c, e
    ld e, e
    ld e, h
    ld e, e
    ld l, l
    ld e, e
    ld a, [hl]
    ld e, e
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
    pop af
    ld hl, sp+$00

jr_010_5b3d:
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
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
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    ld a, [bc]
    nop
    add b
    pop af
    ld hl, sp+$0c

jr_010_5b81:
    nop
    pop af
    nop
    dec c
    nop
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    add b
    sbc e
    ld e, e
    xor h
    ld e, e
    cp l
    ld e, e
    adc $5b
    rst $18
    ld e, e
    ldh a, [$5b]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f9]
    inc bc

jr_010_5baf:
    nop
    ld hl, sp-$08
    ld [bc], a
    jr nz, @-$06

    nop
    inc b
    nop
    ldh a, [rP1]
    inc bc
    jr nz, jr_010_5b3d

    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp-$07
    dec c
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00

jr_010_5bed:
    ld c, $00
    add b
    ld hl, sp+$00
    dec c
    jr nz, jr_010_5bed

    ld hl, sp+$0e
    jr nz, @-$0e

    ld sp, hl
    rrca
    nop
    ldh a, [rP1]
    rrca
    jr nz, jr_010_5b81

    dec c
    ld e, h
    ld e, $5c
    cpl
    ld e, h
    ld b, b
    ld e, h
    ld d, c
    ld e, h
    ld h, d
    ld e, h
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    rst $28
    ld bc, $3000
    rst $28
    ld sp, hl
    ld bc, $f730
    ld bc, $3002
    rst $30
    ld sp, hl
    inc bc
    jr nc, jr_010_5baf

    rst $28
    ld hl, sp+$04
    db $10
    rst $28
    nop
    dec b
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    rst $30
    nop
    rlca
    db $10
    add b
    ld hl, sp-$08
    add hl, bc
    db $10
    ld hl, sp+$00
    ld a, [bc]
    db $10
    ldh a, [$f8]
    ld [$f010], sp
    nop
    dec b
    db $10
    add b
    ldh a, [$f8]
    dec bc

jr_010_5c54:
    db $10
    ldh a, [rP1]
    inc c
    db $10
    ld hl, sp-$08
    dec c
    db $10
    ld hl, sp+$00
    ld c, $10
    add b

jr_010_5c62:
    rst $28
    ld bc, $300b
    rst $28
    ld sp, hl
    inc c
    jr nc, jr_010_5c62

    ld bc, $300d
    rst $30
    ld sp, hl
    ld c, $30
    add b
    ld a, a
    ld e, h
    sub b
    ld e, h
    and c
    ld e, h
    or d
    ld e, h
    jp $d45c


    ld e, h
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$00

jr_010_5c93:
    db $10
    pop af
    nop
    ld bc, $f910
    ld hl, sp+$04
    db $10
    ld sp, hl
    nop
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c
    db $10
    ld hl, sp+$00
    ld c, $10
    ld hl, sp-$08
    inc bc
    jr nc, jr_010_5c54

    pop af
    ld hl, sp+$0c
    db $10
    pop af
    nop
    dec c
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    ld sp, hl
    ld hl, sp+$05
    jr nc, @-$7e

    pop af
    ld e, h
    ld [bc], a
    ld e, l
    inc de
    ld e, l
    inc h
    ld e, l
    dec [hl]
    ld e, l
    ld b, [hl]
    ld e, l
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

jr_010_5d02:
    rst $28
    ld hl, sp+$03

jr_010_5d05:
    nop
    rst $28
    nop
    inc bc
    jr nz, jr_010_5d02

    nop
    ld bc, $f720
    ld hl, sp+$02
    jr nz, jr_010_5c93

    rst $28
    ld hl, sp+$04
    nop
    rst $28
    nop
    dec b
    nop
    rst $30
    ld hl, sp+$06
    nop
    rst $30
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0b
    nop
    ld hl, sp+$00
    inc c
    nop
    add b

jr_010_5d46:
    rst $28
    ld hl, sp+$0d

jr_010_5d49:
    nop
    rst $28
    nop
    dec c
    jr nz, jr_010_5d46

    ld hl, sp+$0e
    nop
    rst $30
    nop
    rrca
    nop
    add b
    ld h, e
    ld e, l
    ld [hl], h
    ld e, l
    add l
    ld e, l
    sub [hl]
    ld e, l
    and a
    ld e, l
    cp b
    ld e, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_5d69:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_010_5d77:
    jr nz, jr_010_5d69

jr_010_5d79:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_5d79

    ld hl, sp+$03
    jr nz, jr_010_5d05

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
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$f8]
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]

jr_010_5dad:
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    ldh a, [rP1]
    dec bc

jr_010_5dbb:
    jr nz, jr_010_5dad

jr_010_5dbd:
    ld hl, sp+$0c
    jr nz, @-$06

    nop
    dec c
    jr nz, jr_010_5dbd

    ld hl, sp+$0e
    jr nz, jr_010_5d49

    push de
    ld e, l
    and $5d
    rst $30
    ld e, l
    ld [$195e], sp
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop

jr_010_5ddc:
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    pop af
    nop
    nop

jr_010_5de9:
    jr nc, jr_010_5ddc

    ld hl, sp+$00
    db $10
    ld sp, hl
    nop
    ld bc, $f930
    ld hl, sp+$02
    jr nc, jr_010_5d77

    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rP1]
    inc b
    db $10
    ld hl, sp-$08
    dec b
    db $10
    ld hl, sp+$00
    ld b, $10
    add b
    pop af
    ld hl, sp+$03
    db $10
    pop af
    nop
    inc b
    db $10
    ld sp, hl
    ld hl, sp+$07
    db $10
    ld sp, hl
    nop
    ld [$8010], sp
    ldh a, [$f8]
    add hl, bc
    db $10
    ldh a, [rP1]
    add hl, bc
    jr nc, @-$06

    ld hl, sp+$0a
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    pop af
    ld hl, sp+$09

jr_010_5e2d:
    db $10
    pop af
    nop

jr_010_5e30:
    add hl, bc
    jr nc, @-$05

    nop
    ld a, [bc]
    jr nc, jr_010_5e30

    ld hl, sp+$0b
    jr nc, jr_010_5dbb

    ld b, a
    ld e, [hl]
    ld e, b
    ld e, [hl]
    ld l, c
    ld e, [hl]
    ld a, d
    ld e, [hl]
    adc e
    ld e, [hl]
    sbc h
    ld e, [hl]
    ldh a, [$f8]
    nop

jr_010_5e4a:
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b

jr_010_5e58:
    rst $28
    nop
    nop

jr_010_5e5b:
    jr nc, @-$0f

    ld hl, sp+$01
    jr nc, jr_010_5e58

    nop
    ld [bc], a
    jr nc, @-$07

    ld hl, sp+$03
    jr nc, jr_010_5de9

    rst $28
    ld hl, sp+$04
    db $10
    rst $28
    nop
    dec b
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    rst $30
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c
    db $10
    add b
    rst $30
    nop
    ld c, $30
    rst $30
    ld hl, sp+$0f
    jr nc, @-$0f

    nop
    inc c
    jr nc, @-$0f

    ld hl, sp+$0d
    jr nc, jr_010_5e2d

    cp c
    ld e, [hl]
    jp z, $db5e

    ld e, [hl]
    db $ec
    ld e, [hl]
    db $fd
    ld e, [hl]
    ld c, $5f
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_010_5e4a

    pop af
    ld hl, sp+$01
    nop
    pop af
    nop

jr_010_5ed0:
    ld bc, $f920
    nop
    ld [bc], a
    jr nz, jr_010_5ed0

    ld hl, sp+$03
    jr nz, jr_010_5e5b

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
    pop af
    ld sp, hl
    ld a, [bc]
    nop
    pop af
    ld bc, $000b
    ld sp, hl
    ld sp, hl
    inc c
    nop
    ld sp, hl
    ld bc, $000d
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    inc b
    jr nz, @-$06

    ld hl, sp+$0e

jr_010_5f08:
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ld sp, hl
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_010_5f08

    ld hl, sp+$05
    nop
    pop af
    nop
    dec b
    jr nz, @-$7e

    dec hl
    ld e, a
    inc a
    ld e, a
    ld c, l
    ld e, a
    ld e, [hl]
    ld e, a
    ld l, a
    ld e, a
    add b
    ld e, a
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
    pop af
    ld hl, sp+$03

jr_010_5f3f:
    nop
    pop af
    nop
    inc bc
    jr nz, @-$05

    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    rst $28
    ld hl, sp+$06
    nop
    rst $28
    nop
    rlca
    nop
    rst $30
    ld hl, sp+$08
    nop
    rst $30
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_010_5f76:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_010_5f82:
    inc c

jr_010_5f83:
    jr nz, jr_010_5f76

    ld hl, sp+$0d
    jr nz, jr_010_5f82

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, @-$7e

    sbc l
    ld e, a
    xor [hl]
    ld e, a
    cp a
    ld e, a
    ret nc

    ld e, a
    pop hl
    ld e, a
    ld a, [c]
    ld e, a
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
    pop af
    nop

jr_010_5fb0:
    nop

jr_010_5fb1:
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_5fb0

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_5f3f

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_010_5fe8:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_010_5ff4:
    inc c

jr_010_5ff5:
    jr nz, jr_010_5fe8

    ld hl, sp+$0d
    jr nz, jr_010_5ff4

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_010_5f83

    rrca
    ld h, b
    jr nz, jr_010_6067

    ld sp, $4260
    ld h, b
    ld d, e
    ld h, b
    ld h, h
    ld h, b
    pop af
    ld hl, sp+$00
    nop
    pop af
    rst $38
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld [bc], a
    nop
    add b
    pop af
    ld sp, hl

jr_010_6022:
    nop

jr_010_6023:
    nop
    pop af
    nop
    nop
    jr nz, jr_010_6022

    nop
    ld bc, $f920
    ld hl, sp+$02
    jr nz, jr_010_5fb1

    ld a, [c]
    ld hl, sp+$07
    nop
    ld a, [c]
    nop
    ld [$fa00], sp
    ld hl, sp+$09
    nop
    ld a, [$0a00]
    nop
    add b
    pop af
    ld hl, sp+$0b
    nop
    pop af
    nop
    ld [$f900], sp
    ld hl, sp+$0c
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    pop af
    ld hl, sp+$03
    nop
    pop af
    nop
    inc b
    nop
    ld sp, hl
    ld hl, sp+$05

jr_010_605e:
    nop
    ld sp, hl
    nop
    ld b, $00
    add b
    ld sp, hl
    nop
    dec b

jr_010_6067:
    jr nz, @-$05

    ld hl, sp+$06
    jr nz, jr_010_605e

    nop
    inc bc
    jr nz, @-$0d

    ld hl, sp+$04
    jr nz, jr_010_5ff5

    add c
    ld h, b
    sub d
    ld h, b
    and e
    ld h, b
    or h
    ld h, b
    push bc
    ld h, b
    sub $60
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $f910
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    ldh a, [$f8]
    inc b

jr_010_6095:
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp+$00
    ld [bc], a
    jr nc, @-$06

    ld hl, sp+$03
    jr nc, jr_010_6023

    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    ldh a, [$f8]
    ld c, $10
    ldh a, [rP1]
    rrca
    db $10
    ld hl, sp-$08
    ld [bc], a
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_010_60d8:
    ld c, $30
    pop af
    ld hl, sp+$0f
    jr nc, jr_010_60d8

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_010_6067

    di
    ld h, b
    inc b
    ld h, c
    dec d
    ld h, c
    ld h, $61
    scf
    ld h, c
    ld c, b
    ld h, c
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
    pop af
    nop

jr_010_6106:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_6106

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_6095

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
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc

jr_010_613e:
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    nop

jr_010_614a:
    ld a, [bc]
    jr nz, jr_010_613e

    ld hl, sp+$0b
    jr nz, jr_010_614a

    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    jr nz, @-$7e

    ld h, l
    ld h, c
    ld [hl], d
    ld h, c
    ld a, a
    ld h, c
    sub b
    ld h, c
    and c
    ld h, c
    xor [hl]
    ld h, c
    ldh a, [$f8]
    nop
    nop

jr_010_6169:
    ldh a, [rIE]
    nop
    jr nz, @-$06

    db $fc
    ld bc, $8000
    pop af
    ld hl, sp+$02
    nop
    pop af
    rst $38
    ld [bc], a
    jr nz, @-$05

    db $fc
    ld bc, $8000
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [rP1]
    rlca
    nop
    add b
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rIE]
    inc bc
    jr nz, @-$06

    db $fc
    inc b
    nop

jr_010_61ad:
    add b
    pop af
    ld hl, sp+$05
    nop
    pop af
    rst $38
    dec b
    jr nz, @-$05

    db $fc
    inc b
    nop
    add b
    rst $00
    ld h, c
    ret c

    ld h, c
    jp hl


    ld h, c
    ld a, [$0b61]
    ld h, d
    inc e
    ld h, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_61cd:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop
    jr nz, jr_010_61cd

jr_010_61dd:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_61dd

    ld hl, sp+$03
    jr nz, jr_010_6169

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_010_6211:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_621f:
    jr nz, jr_010_6211

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_61ad

    add hl, sp
    ld h, d
    ld c, d
    ld h, d
    ld e, e
    ld h, d
    ld l, h
    ld h, d
    ld a, l
    ld h, d
    adc [hl]
    ld h, d
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    pop af
    ld hl, sp+$0a
    db $10
    pop af
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_010_6280:
    db $10
    ldh a, [rP1]
    inc c
    jr nc, @-$06

    ld hl, sp+$0e
    db $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0e

jr_010_6291:
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    pop af
    ld hl, sp+$0d
    db $10
    pop af
    nop
    dec c
    jr nc, jr_010_621f

    xor e
    ld h, d
    cp h
    ld h, d
    call $de62
    ld h, d
    rst $28
    ld h, d
    nop
    ld h, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld bc, $8030

jr_010_62bc:
    rst $28
    ld hl, sp+$00

jr_010_62bf:
    db $10
    rst $28
    nop
    nop
    jr nc, jr_010_62bc

    ld hl, sp+$01
    db $10
    rst $30
    nop
    ld bc, $8030
    ldh a, [$f8]
    ld [bc], a
    db $10
    ldh a, [rP1]
    inc bc
    db $10
    ld hl, sp-$08
    inc b
    db $10
    ld hl, sp+$00
    dec b
    db $10
    add b
    rst $28
    ld hl, sp+$02
    db $10
    rst $28
    nop
    inc bc
    db $10
    rst $30
    ld hl, sp+$04
    db $10
    rst $30
    nop
    dec b
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    ld b, $30
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    rlca
    jr nc, jr_010_6280

    rst $28
    ld hl, sp+$06

jr_010_6303:
    db $10
    rst $28
    nop
    ld b, $30
    rst $30
    ld hl, sp+$07
    db $10
    rst $30
    nop
    rlca
    jr nc, jr_010_6291

    dec e
    ld h, e
    ld l, $63
    ccf
    ld h, e
    ld d, b
    ld h, e
    ld h, c
    ld h, e
    ld [hl], d
    ld h, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_6323:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop

jr_010_6331:
    jr nz, jr_010_6323

jr_010_6333:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_6333

    ld hl, sp+$03
    jr nz, jr_010_62bf

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_6364:
    nop
    ldh a, [rP1]

jr_010_6367:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_6375:
    jr nz, jr_010_6367

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_6303

    adc a
    ld h, e
    and b
    ld h, e
    or c
    ld h, e
    jp nz, $d363

    ld h, e
    db $e4
    ld h, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020

jr_010_63a0:
    rst $28
    ld hl, sp+$02

jr_010_63a3:
    nop
    rst $28
    nop
    ld [bc], a
    jr nz, jr_010_63a0

    ld hl, sp+$03
    nop
    rst $30
    nop
    inc bc
    jr nz, jr_010_6331

    rst $28
    ld hl, sp+$04
    nop
    rst $28
    nop
    dec b
    nop
    rst $30
    ld hl, sp+$06
    nop
    rst $30
    nop
    rlca
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
    ldh a, [$f8]
    inc c

jr_010_63d6:
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_6364

    rst $28
    ld hl, sp+$0e

jr_010_63e7:
    nop
    rst $28
    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    nop
    rst $30
    nop
    rrca
    jr nz, jr_010_6375

    ld bc, $1264
    ld h, h
    inc hl
    ld h, h
    inc [hl]
    ld h, h
    ld b, l
    ld h, h
    ld d, [hl]
    ld h, h
    ldh a, [$f8]
    nop

jr_010_6404:
    nop
    ld hl, sp-$08
    ld bc, $f000
    nop
    nop
    jr nz, @-$06

    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    nop
    inc bc
    jr nz, jr_010_63a3

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_63d6

    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp+$00
    rrca
    jr nz, jr_010_63e7

    ld [hl], e
    ld h, h
    add h
    ld h, h
    sub l
    ld h, h
    and [hl]
    ld h, h
    or a
    ld h, h
    ret z

    ld h, h
    ldh a, [$f8]
    nop

jr_010_6476:
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_010_6404

    pop af
    ld hl, sp+$03

jr_010_6487:
    nop
    pop af
    nop
    inc bc
    jr nz, @-$05

    ld hl, sp+$04
    nop
    ld sp, hl
    nop

jr_010_6492:
    dec b
    nop
    add b
    ldh a, [rP1]
    ld b, $20
    ld hl, sp+$00
    rlca
    jr nz, @-$06

    ld hl, sp+$08
    jr nz, jr_010_6492

    ld sp, hl
    dec bc

jr_010_64a4:
    nop
    add b
    pop af
    nop

jr_010_64a8:
    ld b, $20
    ld sp, hl
    nop
    add hl, bc
    jr nz, jr_010_64a8

    ld hl, sp+$0a
    jr nz, jr_010_64a4

    ld sp, hl
    ld c, $00
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    ld hl, sp+$0e
    nop
    pop af
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    push hl
    ld h, h
    or $64
    rlca
    ld h, l
    jr jr_010_6546

    add hl, hl
    ld h, l
    ld a, [hl-]
    ld h, l
    ldh a, [$f8]
    ld bc, $f000
    nop
    ld [bc], a
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_010_6476

    rst $28
    ld hl, sp+$03

jr_010_64f9:
    nop
    rst $28
    nop
    inc b
    nop
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    nop
    jr nz, jr_010_6487

    rst $28
    ld hl, sp+$05
    nop
    rst $28
    nop
    ld b, $00
    rst $30
    ld hl, sp+$07
    nop
    rst $30
    nop
    ld [$8000], sp
    ldh a, [$f8]
    ld a, [bc]
    nop
    ld hl, sp+$00
    add hl, bc
    nop
    ldh a, [rP1]

jr_010_6522:
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    add b
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    dec bc
    jr nz, jr_010_6522

jr_010_6532:
    ld hl, sp+$0c
    nop
    ldh a, [rP1]
    dec c
    nop
    add b
    rst $30
    ld hl, sp+$0b

jr_010_653d:
    nop
    rst $30
    nop
    dec bc
    jr nz, jr_010_6532

    ld hl, sp+$0e
    nop

jr_010_6546:
    rst $28
    nop
    rrca
    nop
    add b
    ld d, a
    ld h, l
    ld l, b
    ld h, l
    ld a, c
    ld h, l
    adc d
    ld h, l
    sbc e
    ld h, l
    xor h
    ld h, l
    ldh a, [$f8]
    nop

jr_010_655a:
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_010_656a:
    nop
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_010_656a

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_010_64f9

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b

jr_010_6580:
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    nop

jr_010_658c:
    inc b
    jr nc, jr_010_6580

    ld hl, sp+$05
    jr nc, jr_010_658c

    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_010_659e:
    db $10
    ldh a, [rP1]
    dec bc

jr_010_65a2:
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    pop af
    nop

jr_010_65ae:
    ld a, [bc]
    jr nc, jr_010_65a2

    ld hl, sp+$0b
    jr nc, jr_010_65ae

    nop
    inc c
    jr nc, @-$05

    ld hl, sp+$0d
    jr nc, jr_010_653d

    ret


jr_010_65be:
    ld h, l
    jp c, $eb65

    ld h, l
    db $fc
    ld h, l
    dec c
    ld h, [hl]
    ld e, $66
    ldh a, [rP1]
    nop

jr_010_65cc:
    jr nz, jr_010_65be

jr_010_65ce:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_65ce

    ld hl, sp+$03
    jr nz, jr_010_655a

    ldh a, [$f8]
    nop

jr_010_65dd:
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
    ld [$f000], sp
    nop

jr_010_6602:
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [rP1]
    inc c

jr_010_6610:
    jr nz, jr_010_6602

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_010_659e

    ldh a, [$f8]
    inc c

jr_010_6621:
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    dec sp
    ld h, [hl]
    ld c, h
    ld h, [hl]
    ld e, l
    ld h, [hl]
    ld l, [hl]
    ld h, [hl]
    ld a, a
    ld h, [hl]
    sub b
    ld h, [hl]
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    ld [bc], a
    jr nc, jr_010_65cc

    pop af
    ld hl, sp+$00

jr_010_664f:
    db $10
    pop af
    nop
    ld bc, $f910
    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc bc
    jr nc, jr_010_65dd

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    nop
    rlca
    db $10
    pop af
    ld hl, sp+$08
    db $10
    ld sp, hl
    ld hl, sp+$09
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    inc c
    jr nc, jr_010_6610

    pop af
    ld hl, sp+$0a

jr_010_6693:
    db $10
    pop af
    nop
    dec bc
    db $10
    ld sp, hl
    ld hl, sp+$0d
    db $10
    ld sp, hl
    nop
    dec c
    jr nc, jr_010_6621

    xor l
    ld h, [hl]
    cp [hl]
    ld h, [hl]
    rst $08
    ld h, [hl]
    ldh [$66], a
    pop af
    ld h, [hl]
    ld [bc], a
    ld h, a
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
    pop af
    nop

jr_010_66c0:
    nop

jr_010_66c1:
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_66c0

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_664f

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
    pop af
    nop
    dec b
    nop
    ld sp, hl
    nop
    rlca
    nop
    pop af
    ld hl, sp+$08
    nop
    ld sp, hl
    ld hl, sp+$09
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_010_66f4:
    nop
    ldh a, [rP1]
    dec bc

jr_010_66f8:
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    nop

jr_010_6704:
    ld a, [bc]

jr_010_6705:
    jr nz, jr_010_66f8

    ld hl, sp+$0b
    jr nz, jr_010_6704

    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    jr nz, jr_010_6693

    rra
    ld h, a
    jr nc, jr_010_677e

    ld b, c
    ld h, a
    ld d, d
    ld h, a
    ld h, e
    ld h, a
    ld [hl], h
    ld h, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_6733:
    nop
    ldh a, [rIE]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp-$01
    inc bc
    jr nz, jr_010_66c1

    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
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
    ldh a, [$f8]
    inc c

jr_010_6766:
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_010_66f4

    ldh a, [$f8]
    ld c, $00
    ldh a, [rIE]
    ld c, $20
    ld hl, sp-$08

jr_010_677e:
    rrca
    nop
    ld hl, sp-$01
    rrca
    jr nz, jr_010_6705

    sub c
    ld h, a
    and d
    ld h, a
    or e
    ld h, a
    call nz, $d567
    ld h, a
    and $67
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_67a5:
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rIE]
    ld [bc], a
    jr nz, @-$06

    rst $38
    inc bc
    jr nz, jr_010_6733

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_010_6766

    ldh a, [$f8]
    ld c, $00
    ldh a, [rIE]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp-$01
    rrca
    jr nz, @-$7e

    inc bc
    ld l, b
    inc d
    ld l, b
    dec h
    ld l, b
    ld [hl], $68
    ld b, a
    ld l, b
    ld e, b
    ld l, b

jr_010_6803:
    rst $28
    ld hl, sp+$00
    nop
    rst $28
    rst $38
    nop
    jr nz, jr_010_6803

    ld hl, sp+$01
    nop
    rst $30
    nop
    ld [bc], a
    nop
    add b
    ld hl, sp-$01
    ld bc, $f820
    rst $30
    ld [bc], a
    jr nz, @-$0e

    ld hl, sp+$03
    nop
    ldh a, [rIE]
    inc bc
    jr nz, jr_010_67a5

    rst $28
    ld hl, sp+$04
    nop
    rst $28
    nop
    dec b
    nop
    rst $30
    ld hl, sp+$06
    nop
    rst $30
    nop
    rlca
    nop
    add b
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$f8]
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b

jr_010_6847:
    rst $28
    ld hl, sp+$0b

jr_010_684a:
    nop
    rst $28
    rst $38
    dec bc
    jr nz, jr_010_6847

    ld hl, sp+$0c
    nop
    rst $30
    nop

jr_010_6855:
    dec c
    nop
    add b
    ld hl, sp-$01
    inc c

jr_010_685b:
    jr nz, jr_010_6855

    rst $30
    dec c
    jr nz, @-$0e

    ld hl, sp+$0e
    nop
    ldh a, [rIE]
    ld c, $20
    add b
    ld [hl], l
    ld l, b
    add [hl]
    ld l, b
    sub a
    ld l, b
    xor b
    ld l, b
    cp c
    ld l, b
    jp z, $f068

jr_010_6876:
    ld hl, sp+$00
    nop
    ldh a, [rIE]
    nop
    jr nz, jr_010_6876

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    rst $28
    ld hl, sp+$02

jr_010_6889:
    nop

jr_010_688a:
    rst $30
    ld hl, sp+$03
    nop
    rst $28
    rst $38
    ld [bc], a
    jr nz, jr_010_688a

    rst $38
    inc bc
    jr nz, @-$7e

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
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a
    nop
    rst $30
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    rst $38
    dec c
    jr nz, jr_010_684a

    rst $28
    ld hl, sp+$0e
    nop
    rst $30
    ld hl, sp+$0f
    nop
    rst $28
    rst $38
    ld c, $20
    rst $30
    rst $38
    rrca
    jr nz, jr_010_685b

    rst $20
    ld l, b
    ld hl, sp+$68
    add hl, bc
    ld l, c
    ld a, [de]
    ld l, c
    dec hl
    ld l, c
    inc a
    ld l, c
    xor $f8
    nop
    nop
    xor $00

jr_010_68ed:
    ld bc, $f600
    ld hl, sp+$02
    nop
    or $00
    inc bc
    nop
    add b
    ldh a, [rIE]
    nop

jr_010_68fb:
    jr nz, jr_010_68ed

jr_010_68fd:
    rst $30
    ld bc, $f820
    rst $38
    ld [bc], a
    jr nz, jr_010_68fd

    rst $30
    inc bc
    jr nz, jr_010_6889

    xor $f8
    inc b
    nop
    xor $00
    dec b
    nop
    or $f8
    ld b, $00
    or $00
    rlca
    nop
    add b
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    dec b
    nop
    add b
    xor $f8
    dec bc

jr_010_692e:
    nop
    xor $00

jr_010_6931:
    inc c
    nop
    or $f8
    dec c
    nop
    or $00
    ld c, $00
    add b
    ldh a, [rIE]
    dec bc

jr_010_693f:
    jr nz, jr_010_6931

jr_010_6941:
    rst $30
    inc c
    jr nz, @-$06

    rst $38
    dec c
    jr nz, jr_010_6941

    rst $30
    ld c, $20
    add b
    ld e, c
    ld l, c
    ld l, d
    ld l, c
    ld a, e
    ld l, c
    adc h
    ld l, c
    sbc l
    ld l, c
    xor [hl]
    ld l, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    xor $f8
    ld [bc], a

jr_010_696d:
    nop
    xor $00
    ld [bc], a
    jr nz, @-$08

    ld hl, sp+$03
    nop
    or $00
    inc bc
    jr nz, jr_010_68fb

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$0a
    nop
    pop af
    nop
    ld a, [bc]
    jr nz, @-$05

    ld hl, sp+$0b
    nop
    ld sp, hl
    nop
    dec bc
    jr nz, jr_010_692e

    ldh a, [$f8]
    inc c

jr_010_69b1:
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_693f

    bit 5, c
    call c, $ed69
    ld l, c
    cp $69
    rrca
    ld l, d
    jr nz, jr_010_6a35

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
    pop af
    nop

jr_010_69de:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_69de

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_696d

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
    pop af
    nop
    dec b
    nop
    pop af
    ld hl, sp+$08
    nop
    ld sp, hl
    ld hl, sp+$09
    nop
    ld sp, hl
    nop
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c

jr_010_6a16:
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    pop af
    nop

jr_010_6a22:
    dec bc
    jr nz, jr_010_6a16

    ld hl, sp+$0c
    jr nz, jr_010_6a22

    nop
    dec c
    jr nz, @-$05

    ld hl, sp+$0e
    jr nz, jr_010_69b1

    dec a
    ld l, d
    ld c, [hl]
    ld l, d

jr_010_6a35:
    ld e, a
    ld l, d
    ld [hl], b
    ld l, d
    add c
    ld l, d
    sub d
    ld l, d
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    pop af
    ld hl, sp+$03

jr_010_6a51:
    db $10
    pop af
    nop
    inc b
    db $10
    ld sp, hl
    ld hl, sp+$01
    db $10
    ld sp, hl
    nop
    ld [bc], a
    db $10
    add b
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    ld [$f010], sp
    ld hl, sp+$09
    db $10
    ldh a, [rP1]
    ld a, [bc]
    db $10
    add b
    ld sp, hl
    ld hl, sp+$07
    db $10
    ld sp, hl
    nop
    ld [$f110], sp
    ld hl, sp+$05
    db $10
    pop af
    nop
    ld b, $10
    add b
    ldh a, [$f8]
    dec bc
    db $10
    ldh a, [rP1]
    dec bc
    jr nc, @-$06

    ld hl, sp+$0e
    db $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    ld hl, sp+$0c

jr_010_6a95:
    db $10
    pop af
    nop
    dec c
    db $10
    ld sp, hl
    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    add b
    xor a

jr_010_6aa4:
    ld l, d
    ret nz

    ld l, d
    pop de
    ld l, d
    ld [c], a
    ld l, d
    di
    ld l, d
    inc b
    ld l, e
    ldh a, [rP1]
    nop
    jr nc, jr_010_6aa4

    ld hl, sp+$00
    db $10
    ld hl, sp-$08
    ld bc, $f810
    nop
    ld [bc], a
    db $10
    add b

jr_010_6ac0:
    rst $28
    ld hl, sp+$00
    db $10
    rst $28
    nop
    nop
    jr nc, jr_010_6ac0

    nop
    ld bc, $f730
    ld hl, sp+$02
    jr nc, jr_010_6a51

    rst $28
    ld hl, sp+$03
    db $10
    rst $28
    nop
    inc b
    db $10
    rst $30
    ld hl, sp+$05
    db $10
    rst $30
    nop
    ld b, $10
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rP1]
    inc b
    db $10
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    ld [$8010], sp
    ldh a, [$f8]
    add hl, bc

jr_010_6af6:
    db $10
    ldh a, [rP1]
    add hl, bc
    jr nc, @-$06

    ld hl, sp+$0a
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b

jr_010_6b04:
    rst $28
    ld hl, sp+$09
    db $10

jr_010_6b08:
    rst $28
    nop
    add hl, bc
    jr nc, jr_010_6b04

    nop
    ld a, [bc]
    jr nc, jr_010_6b08

    ld hl, sp+$0b
    jr nc, jr_010_6a95

    ld hl, $326b
    ld l, e
    ld b, e
    ld l, e
    ld d, h
    ld l, e
    ld h, l
    ld l, e
    db $76
    ld l, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$04

jr_010_6b35:
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    add hl, bc
    db $10
    ld hl, sp+$00
    ld a, [bc]
    db $10
    add b
    ld sp, hl
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    ld a, [bc]
    db $10
    pop af
    nop
    rlca
    db $10
    pop af
    ld hl, sp+$08
    db $10
    add b
    ldh a, [$f8]
    dec bc
    db $10
    ldh a, [rP1]
    inc c
    db $10
    ld hl, sp+$00
    ld [bc], a

jr_010_6b70:
    jr nc, @-$06

    ld hl, sp+$03

jr_010_6b74:
    jr nc, jr_010_6af6

    ld sp, hl
    nop
    ld [bc], a

jr_010_6b79:
    jr nc, jr_010_6b74

    ld hl, sp+$03
    jr nc, jr_010_6b70

    ld hl, sp+$0d
    db $10
    pop af
    nop
    ld c, $10
    add b
    sub e
    ld l, e
    and h
    ld l, e
    or l
    ld l, e
    add $6b
    rst $10
    ld l, e
    add sp, $6b
    ldh a, [$f8]
    nop

jr_010_6b96:
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_010_6ba6:
    nop

jr_010_6ba7:
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_010_6ba6

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_010_6b35

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_010_6bde:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_6bea:
    inc c
    jr nc, jr_010_6bde

    ld hl, sp+$0d
    jr nc, jr_010_6bea

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_6b79

    dec b
    ld l, h
    ld d, $6c
    daa
    ld l, h
    jr c, jr_010_6c6d

    ld c, c
    ld l, h
    ld e, d
    ld l, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    inc b
    jr nz, jr_010_6b96

    pop af
    ld hl, sp+$02

jr_010_6c19:
    nop
    pop af
    nop
    inc bc
    nop
    ld sp, hl
    ld hl, sp+$05
    nop
    ld sp, hl
    nop
    dec b
    jr nz, jr_010_6ba7

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
    pop af
    ld hl, sp+$0a
    nop
    pop af
    nop

jr_010_6c3e:
    inc bc
    nop
    ld sp, hl
    ld hl, sp+$0b
    nop
    ld sp, hl
    nop
    inc c
    nop
    add b
    ldh a, [rP1]
    dec c
    jr nz, jr_010_6c3e

jr_010_6c4e:
    ld hl, sp+$0e

jr_010_6c50:
    jr nz, @-$06

    nop
    rrca
    jr nz, jr_010_6c4e

    ld hl, sp+$0f
    nop
    add b
    pop af
    nop

jr_010_6c5c:
    dec c

jr_010_6c5d:
    jr nz, jr_010_6c50

    ld hl, sp+$0e
    jr nz, jr_010_6c5c

    nop
    rrca
    jr nz, @-$05

    ld hl, sp+$0f
    nop
    add b
    ld [hl], a
    ld l, h

jr_010_6c6d:
    adc b
    ld l, h
    sbc c
    ld l, h
    xor d
    ld l, h
    cp e
    ld l, h
    call z, $f06c

jr_010_6c78:
    ld hl, sp+$00
    db $10
    ldh a, [rIE]

jr_010_6c7d:
    nop
    jr nc, jr_010_6c78

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [rIE]
    nop

jr_010_6c8b:
    jr nc, jr_010_6c7d

    ld hl, sp+$00
    db $10
    ld hl, sp-$01
    ld bc, $f820
    rst $30
    ld [bc], a
    jr nz, jr_010_6c19

    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rIE]
    inc bc
    jr nc, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f8]
    inc bc

jr_010_6ccf:
    db $10
    ldh a, [rIE]
    inc bc
    jr nc, @-$06

    rst $38
    inc b
    jr nz, @-$06

    rst $30
    dec b
    jr nz, jr_010_6c5d

    jp hl


    ld l, h
    ld a, [$0b6c]
    ld l, l
    inc e
    ld l, l
    dec l
    ld l, l
    ld a, $6d
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02

jr_010_6cf4:
    db $10
    ld hl, sp+$00
    inc bc

jr_010_6cf8:
    db $10
    add b
    ld sp, hl
    nop
    ld [bc], a
    jr nc, jr_010_6cf8

    ld hl, sp+$03
    jr nc, jr_010_6cf4

    nop
    nop
    jr nc, jr_010_6cf8

    ld hl, sp+$01
    jr nc, jr_010_6c8b

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_010_6d34:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_6d40:
    inc c
    jr nc, jr_010_6d34

    ld hl, sp+$0d
    jr nc, jr_010_6d40

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_6ccf

    ld e, e
    ld l, l
    ld l, h
    ld l, l
    ld a, l
    ld l, l
    adc [hl]
    ld l, l
    sbc a
    ld l, l
    or b
    ld l, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    pop af
    ld hl, sp+$00

jr_010_6d6f:
    db $10
    pop af
    nop
    nop
    jr nc, @-$05

    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc b
    db $10
    add b
    ldh a, [$f8]
    dec b
    db $10
    ldh a, [rP1]
    ld b, $10
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    ld [$8010], sp
    pop af
    ld hl, sp+$05
    db $10
    pop af
    nop
    ld b, $10
    ld sp, hl
    ld hl, sp+$09
    db $10
    ld sp, hl
    nop
    ld a, [bc]
    db $10
    add b
    ldh a, [$f8]
    dec bc
    db $10
    ldh a, [rP1]
    dec bc
    jr nc, @-$06

    ld hl, sp+$0c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    add b
    pop af
    ld hl, sp+$0b

jr_010_6db3:
    db $10
    pop af
    nop
    dec bc
    jr nc, @-$05

    ld hl, sp+$0e
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    add b
    call $de6d
    ld l, l
    rst $28
    ld l, l
    nop
    ld l, [hl]
    ld de, $226e
    ld l, [hl]
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02

jr_010_6dd8:
    db $10
    ld hl, sp+$00
    inc bc

jr_010_6ddc:
    db $10
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_010_6de1:
    jr nc, jr_010_6ddc

    ld hl, sp+$03
    jr nc, jr_010_6dd8

    nop
    nop
    jr nc, jr_010_6ddc

    ld hl, sp+$01
    jr nc, jr_010_6d6f

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_010_6e18:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_6e24:
    inc c

jr_010_6e25:
    jr nc, jr_010_6e18

    ld hl, sp+$0d
    jr nc, jr_010_6e24

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_6db3

    ccf
    ld l, [hl]
    ld d, b
    ld l, [hl]
    ld h, c
    ld l, [hl]
    ld [hl], d
    ld l, [hl]
    add e
    ld l, [hl]
    sub h
    ld l, [hl]
    ldh a, [$f8]
    nop

jr_010_6e42:
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_010_6e52:
    nop
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_010_6e52

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_010_6de1

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    nop
    dec b
    db $10
    pop af
    ld hl, sp+$08
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_010_6e8a:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_6e96:
    inc c

jr_010_6e97:
    jr nc, jr_010_6e8a

    ld hl, sp+$0d
    jr nc, jr_010_6e96

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_6e25

    or c
    ld l, [hl]
    jp nz, $d36e

    ld l, [hl]
    db $e4
    ld l, [hl]
    push af
    ld l, [hl]
    ld b, $6f
    ldh a, [$f8]
    nop
    db $10
    ld hl, sp-$08
    ld bc, $f810
    nop
    ld [bc], a
    db $10
    ldh a, [rP1]
    nop

jr_010_6ec0:
    jr nc, jr_010_6e42

    pop af
    nop
    nop
    jr nc, jr_010_6ec0

    nop
    ld bc, $f930
    ld hl, sp+$02
    jr nc, jr_010_6ec0

    ld hl, sp+$00
    db $10
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rP1]
    inc b
    db $10
    ld hl, sp-$08
    dec b
    db $10
    ld hl, sp+$00
    ld b, $10
    add b
    pop af
    ld hl, sp+$03
    db $10
    pop af
    nop
    inc b
    db $10
    ld sp, hl
    ld hl, sp+$07
    db $10
    ld sp, hl
    nop
    ld [$8010], sp
    pop af
    ld hl, sp+$09
    db $10
    pop af
    nop
    add hl, bc
    jr nc, @-$05

    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    add hl, bc
    db $10
    ldh a, [rP1]
    add hl, bc
    jr nc, @-$06

    nop
    ld a, [bc]
    jr nc, @-$06

    ld hl, sp+$0b
    jr nc, jr_010_6e97

    inc hl
    ld l, a
    inc [hl]
    ld l, a
    ld b, l
    ld l, a
    ld d, [hl]
    ld l, a
    ld h, a
    ld l, a
    ld a, b
    ld l, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    rst $28
    ld hl, sp+$00

jr_010_6f37:
    db $10
    rst $28
    nop
    ld bc, $f710
    ld hl, sp+$02
    db $10
    rst $30
    nop
    inc bc
    db $10
    add b
    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    rst $28
    ld hl, sp+$04
    db $10
    rst $28
    nop
    dec b
    db $10
    rst $30
    ld hl, sp+$06
    db $10
    rst $30
    nop
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    rst $28
    ld hl, sp+$08

jr_010_6f7b:
    db $10
    rst $28
    nop
    add hl, bc
    db $10
    rst $30
    ld hl, sp+$0a
    db $10
    rst $30
    nop
    dec bc
    db $10
    add b
    sub l
    ld l, a
    and [hl]
    ld l, a
    or a
    ld l, a
    ret z

    ld l, a
    reti


    ld l, a
    ld [$f06f], a
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    nop

jr_010_6fa8:
    nop
    jr nz, @-$0d

    ld hl, sp+$01
    jr nz, jr_010_6fa8

    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    jr nz, jr_010_6f37

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
    pop af
    ld hl, sp+$04
    nop
    ld sp, hl
    ld hl, sp+$09
    nop
    ld sp, hl
    nop
    ld a, [bc]
    nop
    pop af
    nop
    dec b
    nop
    add b
    pop af
    ld hl, sp+$0b
    nop
    pop af
    nop

jr_010_6fdf:
    inc c
    nop
    ld sp, hl
    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    ld c, $00
    add b
    ldh a, [rP1]
    dec bc
    jr nz, jr_010_6fdf

jr_010_6fef:
    ld hl, sp+$0c
    jr nz, @-$06

    nop
    dec c
    jr nz, jr_010_6fef

    ld hl, sp+$0e
    jr nz, jr_010_6f7b

    rlca
    ld [hl], b
    jr jr_010_706f

    add hl, hl
    ld [hl], b
    ld a, [hl-]
    ld [hl], b
    ld c, e
    ld [hl], b
    ld e, h
    ld [hl], b
    ldh a, [$f7]
    nop

jr_010_700a:
    nop
    ldh a, [rIE]
    ld bc, $f800
    rst $30
    ld [bc], a
    nop
    ld hl, sp-$01
    inc bc
    nop
    add b
    ldh a, [$f7]
    nop
    nop
    ld hl, sp-$09
    dec b
    nop
    ld hl, sp-$01
    ld b, $00
    ldh a, [rIE]
    inc b
    nop
    add b
    ldh a, [$f8]
    rlca
    nop
    ldh a, [rP1]
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [rP1]
    ld [$f000], sp
    ld hl, sp+$0b
    nop
    ld hl, sp-$08

jr_010_7044:
    inc c
    nop
    ld hl, sp+$00

jr_010_7048:
    dec c
    nop
    add b
    ld hl, sp+$00
    ld [bc], a

jr_010_704e:
    jr nz, jr_010_7048

    ld hl, sp+$03
    jr nz, jr_010_7044

    nop

jr_010_7055:
    nop
    jr nz, jr_010_7048

    ld hl, sp+$0e
    nop
    add b
    ld hl, sp+$00
    dec b

jr_010_705f:
    jr nz, @-$06

    ld hl, sp+$06
    jr nz, jr_010_7055

    nop
    nop
    jr nz, @-$0e

    ld hl, sp+$0f
    nop
    add b
    ld a, c
    ld [hl], b

jr_010_706f:
    adc d
    ld [hl], b
    sbc e
    ld [hl], b
    xor h
    ld [hl], b
    cp l
    ld [hl], b
    adc $70
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop

jr_010_707f:
    ld bc, $f910
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    ld [bc], a
    jr nc, jr_010_700a

    ld hl, sp+$00
    ld [bc], a

jr_010_708d:
    jr nc, jr_010_707f

jr_010_708f:
    nop
    nop
    jr nc, @-$0e

    ld hl, sp+$01
    jr nc, jr_010_708f

    ld hl, sp+$02
    db $10
    add b
    pop af
    ld hl, sp+$03
    db $10
    pop af
    nop
    inc b
    db $10
    ld sp, hl
    ld hl, sp+$05
    db $10
    ld sp, hl
    nop
    ld b, $10
    add b
    ldh a, [$f8]
    rlca
    db $10
    ldh a, [rP1]
    ld [$f810], sp
    ld hl, sp+$09
    db $10
    ld hl, sp+$00
    ld b, $10
    add b
    ldh a, [$f8]
    ld a, [bc]
    db $10
    ldh a, [rP1]
    dec bc
    db $10
    ld hl, sp-$08
    inc c
    db $10
    ld hl, sp+$00
    inc c
    jr nc, jr_010_704e

    rst $30
    nop
    inc c

jr_010_70d1:
    jr nc, @-$07

    ld hl, sp+$0c
    db $10
    rst $28
    nop
    ld a, [bc]
    jr nc, @-$0f

    ld hl, sp+$0b
    jr nc, jr_010_705f

    db $eb
    ld [hl], b
    db $fc
    ld [hl], b
    dec c
    ld [hl], c
    ld e, $71
    cpl
    ld [hl], c
    ld b, b
    ld [hl], c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02

jr_010_70f6:
    db $10
    ld hl, sp+$00
    inc bc

jr_010_70fa:
    db $10
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_010_70ff:
    jr nc, jr_010_70fa

    ld hl, sp+$03
    jr nc, jr_010_70f6

    nop
    nop
    jr nc, jr_010_70fa

    ld hl, sp+$01
    jr nc, jr_010_708d

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_010_7132:
    db $10
    ldh a, [rP1]
    dec c

jr_010_7136:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_010_7142:
    inc c

jr_010_7143:
    jr nc, jr_010_7136

    ld hl, sp+$0d
    jr nc, jr_010_7142

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_010_70d1

    ld e, l
    ld [hl], c
    ld l, [hl]
    ld [hl], c
    ld a, a
    ld [hl], c
    sub b
    ld [hl], c
    and c
    ld [hl], c
    or d
    ld [hl], c
    ldh a, [$f8]
    nop
    db $10
    ld hl, sp-$08
    ld bc, $f010
    nop
    nop
    jr nc, @-$06

    nop
    ld bc, $8030
    pop af
    ld hl, sp+$02

jr_010_7171:
    db $10
    pop af
    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    inc bc
    jr nc, jr_010_70ff

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ld sp, hl
    ld hl, sp+$06
    db $10
    ld sp, hl
    nop
    rlca
    db $10
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_010_71a4:
    db $10
    ldh a, [rP1]
    ld a, [bc]
    jr nc, @-$06

    ld hl, sp+$0b
    db $10
    ld hl, sp+$00
    dec bc
    jr nc, jr_010_7132

    pop af
    ld hl, sp+$0c

jr_010_71b5:
    db $10
    pop af
    nop
    inc c
    jr nc, @-$05

    ld hl, sp+$0d
    db $10
    ld sp, hl
    nop
    dec c
    jr nc, jr_010_7143

    rst $08
    ld [hl], c
    ldh [$71], a
    pop af
    ld [hl], c
    ld [bc], a
    ld [hl], d
    inc de
    ld [hl], d
    inc h
    ld [hl], d
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f000
    nop
    nop
    jr nz, @-$06

    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_71e3:
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    nop
    inc bc
    jr nz, jr_010_7171

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    nop
    dec c
    jr nz, jr_010_71a4

    ldh a, [$f8]
    ld c, $00
    ld hl, sp-$08
    rrca
    nop
    ldh a, [rP1]
    ld c, $20
    ld hl, sp+$00
    rrca
    jr nz, jr_010_71b5

    ld b, c
    ld [hl], d
    ld d, d
    ld [hl], d
    ld h, e
    ld [hl], d
    ld [hl], h
    ld [hl], d
    add l
    ld [hl], d
    sub [hl]
    ld [hl], d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_7247:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop
    jr nz, jr_010_7247

jr_010_7257:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_010_7257

    ld hl, sp+$03
    jr nz, jr_010_71e3

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_010_728b:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c
    jr nz, jr_010_728b

    ld hl, sp+$0d
    jr nz, @-$06

    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, @-$7e

    or e
    ld [hl], d
    call nz, $d572
    ld [hl], d
    and $72
    rst $30
    ld [hl], d
    ld [$f073], sp

jr_010_72b4:
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_010_72b4

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ld a, [c]
    ld hl, sp+$00

jr_010_72c7:
    nop
    ld a, [c]
    nop
    nop
    jr nz, jr_010_72c7

    ld hl, sp+$03
    nop
    ld a, [$0400]
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    pop af
    or $05
    nop
    pop af
    cp $06
    nop
    ld sp, hl
    rst $30
    add hl, bc
    nop
    ld sp, hl
    rst $38
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc

jr_010_72fa:
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ld a, [c]
    ld hl, sp+$0b

jr_010_730b:
    nop
    ld a, [c]
    nop
    dec bc
    jr nz, jr_010_730b

    ld hl, sp+$0e
    nop
    ld a, [$0f00]
    nop
    add b
    dec h
    ld [hl], e
    ld [hl], $73
    ld b, a
    ld [hl], e
    ld e, b
    ld [hl], e
    ld l, c
    ld [hl], e
    ld a, d
    ld [hl], e
    ldh a, [$f8]
    nop

jr_010_7328:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f7]
    inc bc

jr_010_7339:
    nop
    ldh a, [rIE]
    inc b
    nop
    ld hl, sp-$09
    dec b
    nop
    ld hl, sp-$01
    ld b, $00
    add b
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ldh a, [rP1]
    rlca
    nop
    ldh a, [$f8]
    inc c
    nop
    add b
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rP1]
    inc b
    nop
    add b
    ld hl, sp-$08
    dec c

jr_010_736c:
    nop
    ld hl, sp+$00
    ld c, $20
    ldh a, [$f9]
    inc c
    nop
    ldh a, [rP1]

jr_010_7377:
    inc c
    jr nz, jr_010_72fa

    ld hl, sp-$07
    ld c, $00
    ld hl, sp+$01
    rrca
    nop
    ldh a, [rSB]
    inc bc
    jr nz, jr_010_7377

    ld sp, hl
    inc b
    jr nz, jr_010_730b

    sub a
    ld [hl], e
    xor b
    ld [hl], e
    cp c
    ld [hl], e
    jp z, $db73

    ld [hl], e
    db $ec
    ld [hl], e
    pop af
    ld hl, sp+$00
    nop
    ld sp, hl
    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld bc, $f120
    nop
    nop
    jr nz, jr_010_7328

    ldh a, [$f8]
    ld [bc], a

jr_010_73ab:
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_7339

    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
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
    pop af
    ld hl, sp+$0c

jr_010_73de:
    nop
    pop af
    nop
    inc c
    jr nz, @-$05

    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    dec c
    jr nz, jr_010_736c

    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp+$00
    rrca
    jr nz, @-$7e

    add hl, bc
    ld [hl], h
    ld a, [de]
    ld [hl], h
    dec hl
    ld [hl], h
    inc a
    ld [hl], h
    ld c, l
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop

jr_010_7415:
    ld hl, sp+$00
    ld bc, $8020

jr_010_741a:
    rst $28
    ld hl, sp+$02
    nop
    rst $28
    nop
    ld [bc], a
    jr nz, jr_010_741a

    ld hl, sp+$03
    nop
    rst $30
    nop
    inc bc
    jr nz, jr_010_73ab

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_73de

    rst $28
    ld hl, sp+$0e
    nop
    rst $28
    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    nop
    rst $30
    nop
    rrca
    jr nz, @-$7e

    ld a, e
    ld [hl], h
    adc b
    ld [hl], h
    sub l
    ld [hl], h
    and d
    ld [hl], h
    xor a
    ld [hl], h
    cp h
    ld [hl], h
    ld hl, sp-$08
    ld bc, $f800
    nop

jr_010_7481:
    ld [bc], a
    nop
    ldh a, [$fd]
    nop
    nop
    add b
    ld hl, sp+$00
    ld bc, $f820
    ld hl, sp+$02
    jr nz, jr_010_7481

    ei
    nop
    jr nz, jr_010_7415

    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    ldh a, [$fa]
    ld b, $00
    add b
    ldh a, [$fb]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$fd]
    nop
    nop
    ld hl, sp-$08

jr_010_74b5:
    add hl, bc
    nop
    ld hl, sp+$00

jr_010_74b9:
    ld a, [bc]
    nop
    add b
    ld hl, sp+$00
    add hl, bc
    jr nz, jr_010_74b9

    ld hl, sp+$0a
    jr nz, jr_010_74b5

    ei
    nop
    jr nz, @-$7e

    push de
    ld [hl], h
    and $74
    rst $30
    ld [hl], h
    ld [$1975], sp
    ld [hl], l
    ld h, $75
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
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
    inc bc
    nop
    add b
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
    pop af
    rst $30
    ld a, [bc]
    nop
    pop af
    rst $38
    dec bc
    nop
    ld sp, hl
    rst $30
    ld [$f900], sp
    rst $38
    add hl, bc
    nop
    add b
    ldh a, [$fb]
    inc c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop

jr_010_7525:
    add b
    ld sp, hl
    ld hl, sp+$0e
    nop
    ld sp, hl
    nop
    rrca
    nop
    pop af
    ei
    dec c
    nop
    add b
    ccf
    ld [hl], l
    ld d, b
    ld [hl], l
    ld h, c
    ld [hl], l
    ld [hl], d
    ld [hl], l
    add e
    ld [hl], l
    sub h
    ld [hl], l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
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
    ldh a, [rIE]
    inc bc
    jr nz, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f7]
    ld b, $00
    ldh a, [rIE]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ldh a, [$f8]
    ld b, $00
    add b
    ldh a, [$f8]
    dec c

jr_010_7586:
    nop
    ldh a, [rIE]
    dec c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    dec c

jr_010_7597:
    nop
    ldh a, [rIE]
    dec c
    jr nz, @-$06

    rst $38
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_010_7525

    or c
    ld [hl], l
    jp nz, $d375

    ld [hl], l
    db $e4
    ld [hl], l
    push af
    ld [hl], l
    ld b, $76
    ld a, [c]
    ld hl, sp+$00
    nop
    ld a, [c]
    nop
    ld bc, $fa00
    ld hl, sp+$02
    nop
    ld a, [$0300]
    nop
    add b

jr_010_75c2:
    ei
    nop
    ld [bc], a

jr_010_75c5:
    jr nz, jr_010_75c2

    ld hl, sp+$03
    jr nz, @-$0b

    ld hl, sp+$04
    nop
    di
    nop
    dec b
    nop
    add b
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
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ld a, [$0ef8]
    nop
    ld a, [$0f00]
    nop
    ld a, [c]
    ld hl, sp+$0d
    nop
    ld a, [c]

jr_010_7602:
    nop
    dec c
    jr nz, jr_010_7586

    ei
    nop
    ld c, $20
    ei
    ld hl, sp+$0f
    jr nz, jr_010_7602

    ld hl, sp+$0c
    nop
    di
    nop
    inc c
    jr nz, jr_010_7597

    inc hl
    db $76
    inc [hl]
    db $76
    ld b, l
    db $76
    ld d, [hl]
    db $76
    ld h, a
    db $76
    ld a, b
    db $76
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $f910
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    pop af
    rst $38
    nop

jr_010_7637:
    jr nc, @-$0d

    rst $30

jr_010_763a:
    ld bc, $f930
    rst $38
    ld [bc], a
    jr nc, jr_010_763a

    rst $30
    inc bc
    jr nc, jr_010_75c5

    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    add b
    pop af
    ld sp, hl
    ld [$f110], sp
    ld bc, $100c
    ld sp, hl
    ld sp, hl
    dec c
    db $10

jr_010_7662:
    ld sp, hl
    ld bc, $100e
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$06

jr_010_7672:
    db $10

jr_010_7673:
    ld sp, hl
    nop
    rlca

jr_010_7676:
    db $10
    add b
    ld sp, hl
    rst $38
    ld b, $30
    ld sp, hl
    rst $30
    rlca
    jr nc, jr_010_7672

    rst $38
    inc b
    jr nc, jr_010_7676

    rst $30
    dec b
    jr nc, @-$7e

    sub l
    db $76
    and [hl]
    db $76
    or a
    db $76
    call nz, $d176
    db $76
    ld [c], a
    db $76
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop

jr_010_76a1:
    ld sp, hl
    nop
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_7637

    pop af
    rst $38
    inc b
    nop
    ld sp, hl
    rst $30
    dec b
    nop
    ld sp, hl
    rst $38
    ld b, $00
    add b
    ldh a, [rIE]
    rlca
    nop
    ld hl, sp-$09
    ld [$f800], sp
    rst $38
    add hl, bc
    nop
    add b
    pop af
    ld hl, sp+$0a

jr_010_76d4:
    nop
    pop af
    nop
    ld a, [bc]
    jr nz, @-$05

    ld hl, sp+$0b
    nop
    ld sp, hl
    nop
    dec bc
    jr nz, jr_010_7662

    ldh a, [$f8]
    inc c

jr_010_76e5:
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_7673

    rst $38
    db $76
    db $10
    ld [hl], a
    ld hl, $3277
    ld [hl], a
    ld b, e
    ld [hl], a
    ld d, h
    ld [hl], a
    ldh a, [$f8]
    nop

jr_010_7702:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp-$01
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_7713:
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rIE]
    ld [bc], a
    jr nz, @-$06

    rst $38
    inc bc
    jr nz, jr_010_76a1

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rIE]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_010_76d4

    ldh a, [$f8]
    ld c, $00
    ld hl, sp-$08
    rrca
    nop
    ldh a, [rIE]
    ld c, $20
    ld hl, sp-$01
    rrca
    jr nz, jr_010_76e5

    ld [hl], c
    ld [hl], a
    add d
    ld [hl], a
    sub e
    ld [hl], a
    and h
    ld [hl], a
    or l
    ld [hl], a
    add $77
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [$f8]

jr_010_7777:
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    rst $38
    ld [bc], a
    jr nz, jr_010_7702

    ldh a, [rP1]
    nop

jr_010_7785:
    jr nz, jr_010_7777

    ld hl, sp+$01
    jr nz, @-$06

    ld sp, hl
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_7713

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_77b8:
    nop
    ldh a, [rP1]

jr_010_77bb:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp-$01
    ld c, $20
    add b
    ldh a, [rIE]
    inc c

jr_010_77c9:
    jr nz, jr_010_77bb

    rst $30
    dec c
    jr nz, @-$06

    ld hl, sp+$0f
    nop
    ld hl, sp-$01
    rrca
    jr nz, @-$7e

    db $e3
    ld [hl], a
    db $f4
    ld [hl], a
    dec b
    ld a, b
    ld d, $78
    daa
    ld a, b
    jr c, jr_010_785b

    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    ldh a, [$f8]
    ld [bc], a

jr_010_77f7:
    nop
    ldh a, [rP1]
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_010_7785

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
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_782a:
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_77b8

    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    ld c, $20
    ld hl, sp-$08
    rrca
    nop
    ld hl, sp+$00
    rrca
    jr nz, jr_010_77c9

    ld d, l
    ld a, b
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sbc c
    ld a, b
    xor d
    ld a, b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_010_785b:
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020
    pop af
    ld hl, sp+$02

jr_010_7869:
    nop
    pop af
    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, jr_010_77f7

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_782a

    pop af
    ld hl, sp+$0e

jr_010_78ad:
    nop
    pop af
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    nop
    ld sp, hl
    nop
    rrca
    jr nz, @-$7e

    rst $00
    ld a, b
    ret c

    ld a, b
    jp hl


    ld a, b
    ld a, [$0b78]
    ld a, c
    inc e
    ld a, c
    ldh a, [$f8]
    nop

jr_010_78ca:
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02

jr_010_78d2:
    nop
    ld hl, sp+$00
    inc bc

jr_010_78d6:
    nop
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_010_78db:
    jr nz, jr_010_78d6

    ld hl, sp+$03
    jr nz, jr_010_78d2

    nop
    nop
    jr nz, jr_010_78d6

    ld hl, sp+$01
    jr nz, jr_010_7869

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_010_790e:
    nop
    ldh a, [rP1]
    dec c

jr_010_7912:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_010_791e:
    inc c

jr_010_791f:
    jr nz, jr_010_7912

    ld hl, sp+$0d
    jr nz, jr_010_791e

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_010_78ad

    add hl, sp
    ld a, c
    ld c, d
    ld a, c
    ld e, e
    ld a, c
    ld l, h
    ld a, c
    ld a, l
    ld a, c
    adc [hl]
    ld a, c
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld bc, $f020
    nop
    nop
    jr nz, jr_010_78ca

    pop af
    ld hl, sp+$02

jr_010_794d:
    nop
    pop af
    nop
    ld [bc], a
    jr nz, @-$05

    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, jr_010_78db

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
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_010_790e

    pop af
    ld hl, sp+$0e

jr_010_7991:
    nop
    pop af
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    nop
    ld sp, hl
    nop
    rrca
    jr nz, jr_010_791f

    xor e
    ld a, c
    cp h
    ld a, c
    call $de79
    ld a, c
    rst $28
    ld a, c
    nop
    ld a, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld bc, $8020

jr_010_79bc:
    rst $28
    ld hl, sp+$02

jr_010_79bf:
    nop
    rst $28
    nop
    ld [bc], a
    jr nz, jr_010_79bc

    ld hl, sp+$03
    nop
    rst $30
    nop
    inc bc
    jr nz, jr_010_794d

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
    rst $28
    ld hl, sp+$08
    nop
    rst $28
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$0a

jr_010_79e9:
    nop
    rst $30
    nop
    dec bc

jr_010_79ed:
    nop
    add b
    pop af
    nop
    inc c
    jr nz, jr_010_79ed

    nop
    dec c
    jr nz, jr_010_79e9

    ld hl, sp+$0c
    nop
    ld sp, hl
    ld hl, sp+$0d
    nop
    add b
    rst $28
    ld hl, sp+$0e

jr_010_7a03:
    nop
    rst $28
    nop
    ld c, $20
    rst $30
    ld hl, sp+$0f
    nop
    rst $30
    nop
    rrca
    jr nz, jr_010_7991

    dec e
    ld a, d
    ld l, $7a
    ccf
    ld a, d
    ld d, b
    ld a, d
    ld h, c
    ld a, d
    ld [hl], d
    ld a, d
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rIE]

jr_010_7a23:
    nop
    jr nc, @-$06

    ld hl, sp+$01
    db $10
    ld hl, sp+$00
    ld [bc], a
    db $10
    add b
    ldh a, [rIE]
    nop
    jr nc, jr_010_7a23

    ld hl, sp+$00
    db $10
    ld hl, sp-$01
    ld bc, $f830
    rst $30
    ld [bc], a
    jr nc, jr_010_79bf

    ldh a, [$f9]
    inc bc
    db $10
    ldh a, [rSB]
    inc b
    db $10
    ld hl, sp-$07
    dec b
    db $10
    ld hl, sp+$01
    ld b, $10
    add b
    ldh a, [$f9]
    inc bc
    db $10
    ldh a, [rSB]
    inc b
    db $10
    ld hl, sp-$07
    rlca
    db $10
    ld hl, sp+$01
    ld [$8010], sp
    ldh a, [$f8]
    add hl, bc
    db $10
    ldh a, [rIE]

jr_010_7a67:
    add hl, bc
    jr nc, @-$06

    ld hl, sp+$0a
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [rIE]
    add hl, bc
    jr nc, jr_010_7a67

jr_010_7a77:
    ld hl, sp+$09
    db $10
    ld hl, sp-$01
    ld a, [bc]
    jr nc, jr_010_7a77

    rst $30
    dec bc
    jr nc, jr_010_7a03

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
