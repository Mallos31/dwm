; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    db $38, $91
    ld b, b
    rst $30
    ld b, b
    or e
    ld b, c
    ld l, e
    ld b, d
    db $fd
    ld b, d
    push bc
    ld b, e
    xor c
    ld b, h
    add [hl]
    ld b, l
    ld a, h
    ld b, [hl]
    ld e, d
    ld b, a
    ld b, a
    ld c, b
    inc a
    ld c, c
    ld l, $4a
    inc bc
    ld c, e
    jp hl


    ld c, e
    push hl
    ld c, h
    call z, $9c4d
    ld c, [hl]
    ld e, [hl]
    ld c, a
    ld b, l
    ld d, b
    inc l
    ld d, c
    db $10
    ld d, d
    rst $38
    ld d, d
    db $eb
    ld d, e
    jp $b154


    ld d, l
    and [hl]
    ld d, [hl]
    adc [hl]
    ld d, a
    adc l
    ld e, b
    adc e
    ld e, c
    ld [hl], e
    ld e, d
    ld e, h
    ld e, e
    jr c, jr_038_409f

    inc bc
    ld e, l
    xor e
    ld e, l
    sbc [hl]
    ld e, [hl]
    ld a, a
    ld e, a
    ld a, h
    ld h, b
    ld e, d
    ld h, c
    ld d, [hl]
    ld h, d
    ld c, l
    ld h, e
    inc sp
    ld h, h
    db $ec
    ld h, h
    jp nz, $9665

    ld h, [hl]
    adc c
    ld h, a
    ld c, b
    ld l, b
    cpl
    ld l, c
    rst $20
    ld l, c
    cp h
    ld l, d
    cp c
    ld l, e
    and d
    ld l, h
    ld a, c
    ld l, l
    ld c, l
    ld l, [hl]
    cpl
    ld l, a
    nop
    ld [hl], b
    cp h
    ld [hl], b
    or h
    ld [hl], c
    and [hl]
    ld [hl], d
    jr z, jr_038_40ec

    dec d
    ld [hl], h
    rst $08
    ld [hl], h
    ld b, d
    ld [hl], l
    inc bc
    db $76
    sbc $76
    xor e
    ld [hl], a
    sbc h
    ld a, b
    ld a, b
    ld a, c
    ld d, h
    ld a, d
    jr c, jr_038_4108

    dec e
    ld a, h
    ld bc, $007d
    ld bc, $0101
    rst $38
    or $20
    jr nz, jr_038_40ba

    jr nz, jr_038_40ec

    ld [hl], b
    inc b
    rlca

jr_038_409f:
    ld a, [bc]
    dec c
    rla
    ld a, [de]
    ld [hl+], a
    dec a
    inc h
    ccf
    inc de
    rra
    rrca
    rrca
    nop
    nop
    ld bc, $0210
    rla
    ld a, [de]
    ld [de], a
    dec e
    inc d
    rra
    dec bc
    rrca
    rlca
    rlca

jr_038_40ba:
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_038_4101

    jr nz, jr_038_4103

    db $10
    ld bc, $031b
    ld bc, $0032
    ld bc, $0244
    ld [$070f], sp
    rlca
    ld b, b
    ret nz

    ld h, b
    and b
    ldh a, [$50]
    ld c, b
    cp b
    adc b
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld bc, $0250
    ldh a, [$50]
    ld d, b
    or b
    sub b
    ldh a, [$60]

jr_038_40ec:
    ldh [$c0], a
    ret nz

    ld bc, $ffa0
    ld c, l
    ld bc, $0fcf
    dec e
    nop
    ld bc, $0401
    rlca
    ld a, [bc]
    dec c
    rla
    ld a, [de]
    ld h, d

jr_038_4101:
    ld a, l
    add h

jr_038_4103:
    rst $38
    add e
    rst $38
    ld [hl], b
    ld a, a

jr_038_4108:
    rrca
    rrca
    ld bc, $0002
    ld [de], a
    dec e
    inc h
    ccf
    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_038_4156

    rrca
    rrca
    ld bc, $f0fc
    ld b, c
    ld b, c
    db $e3
    and d
    ld b, c
    ld b, c
    ld [$1c08], sp
    inc d
    dec bc
    dec bc
    inc b
    inc b
    ld c, $0a
    inc b
    inc b
    add b
    add b
    nop
    nop
    ld bc, $0030
    call nz, Call_000_20c4
    jr nz, jr_038_41aa

    ld d, b
    ld hl, $0321
    ld [bc], a
    ld b, c
    ld b, c
    db $e3
    and e
    ld b, h
    ld b, a
    ld [$100f], sp
    db $10
    jr c, jr_038_4173

    db $10
    db $10

jr_038_414d:
    add b
    add b
    ld [bc], a
    ld [bc], a
    rst $00
    push bc
    ld [hl+], a
    ld [c], a
    db $10

jr_038_4156:
    ldh a, [rSB]
    jr nz, jr_038_4169

    dec l
    inc b
    rlca
    ld [$080f], sp
    rrca
    jr nc, jr_038_41a2

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr c, @+$41

jr_038_4169:
    rlca
    rlca
    jr nz, jr_038_414d

    ld d, b
    or b
    add sp, $58
    ld b, h
    cp h

jr_038_4173:
    add h
    db $fc
    ld a, h
    db $fc
    inc c
    db $fc
    ldh a, [$f0]
    ld bc, $00a2
    ld [$110f], sp
    rra
    jr nz, jr_038_41c3

    jr nz, jr_038_41c5

    jr jr_038_41a7

    rlca
    rlca
    ld d, b
    or b
    ldh a, [$50]
    ld d, b
    or b

jr_038_4190:
    ld [$fcf8], sp
    db $fc
    inc b
    db $fc
    jr jr_038_4190

    ldh [$e0], a
    ld bc, $00a0
    db $10
    rra
    ld h, b
    ld a, a
    add b

jr_038_41a2:
    rst $38
    add b
    ld bc, $010b

jr_038_41a7:
    ld bc, $00e2

jr_038_41aa:
    db $10
    rra
    jr nz, jr_038_41af

    and a

jr_038_41af:
    ld bc, $1c01
    nop
    nop
    ld bc, $0102
    ld bc, $1717
    dec e
    rra
    dec de
    ld d, $1e
    ld de, $171f
    ld a, [de]

jr_038_41c3:
    dec e
    daa

jr_038_41c5:
    ld a, [hl-]
    ld [bc], a
    cp $fa
    ld a, [hl-]
    dec a
    ld a, [hl+]
    dec a

jr_038_41cd:
    ld c, h
    ld a, a
    ld e, a
    ld a, e
    ld b, a
    ld a, h
    ld b, e
    ld a, a
    jr nz, jr_038_4216

    jr jr_038_41f8

    rlca
    rlca
    ld b, a
    ld a, d
    adc d
    db $fd
    adc h
    rst $38
    sbc a
    ei
    add a
    db $fc
    ld b, e
    ld a, a
    jr nc, jr_038_4228

    rrca
    rrca
    nop
    nop
    dec bc
    dec bc
    ld c, $0f
    dec c
    dec bc
    rrca
    ld [$0f0f], sp
    db $10

jr_038_41f8:
    rra
    db $10
    rra
    add b
    add b
    add sp, -$18
    cp b
    ld hl, sp-$28
    ld l, b
    jr c, jr_038_41cd

    ld hl, sp-$08
    inc d
    db $ec
    inc a
    call nc, Call_000_3f20
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [bc], a
    ld c, h
    nop
    inc c
    rrca
    inc bc

jr_038_4216:
    inc bc
    ld d, d
    xor $62
    cp $7e
    sbc $fe
    ld [c], a
    ld e, $fe
    inc b
    db $fc
    jr @-$06

    ldh [$e0], a
    ld [bc], a

jr_038_4228:
    db $fc
    ldh a, [rSC]
    ld b, d
    inc b
    rra
    rra
    jr nz, jr_038_4270

    nop
    nop
    ld [bc], a
    ld d, b
    ld a, [bc]
    ld b, b
    ld a, a
    ld [bc], a
    and b
    ld [bc], a
    ld [bc], a
    ld h, b
    nop
    ld [bc], a
    inc l
    nop
    inc a
    call nc, $7002
    ld b, $0c
    db $fc
    ldh a, [$f0]
    ld [bc], a
    nop
    ld b, $1e
    dec e
    inc de
    ld [bc], a
    adc l
    ld bc, $c002
    ld [$3f33], sp
    jr nz, jr_038_4299

    ld [bc], a
    and b
    ld b, $02
    inc l
    nop
    ld b, b
    ld a, a
    add b
    rst $38
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld b, b
    ld [bc], a
    dec sp
    ld bc, $0100
    ld bc, $7070

jr_038_4270:
    ld sp, hl
    ret


    rst $38
    or [hl]
    rst $38
    cp d
    cp $b5
    ld a, e
    ld l, a
    ld [hl], d
    ld e, l
    rst $30
    sbc d
    ld [$ecbd], a
    cp a
    rst $38
    cp e
    ld [hl], a
    ld e, h
    inc a
    cpl
    rra
    inc de
    rrca
    inc c
    inc bc
    inc bc
    inc a
    inc a
    ld a, [hl]
    ld h, d
    ld a, a
    ld c, l
    rst $38
    sbc [hl]
    rst $38
    sbc l
    rst $38

jr_038_4299:
    cp b
    rst $38
    or c
    ld a, a
    ld h, c
    nop
    nop
    db $10
    db $10
    jr c, jr_038_42cc

    ld hl, sp-$18
    ld hl, sp+$48
    ret z

    cp b
    ld a, b
    ld hl, sp+$14
    db $ec
    ld a, a
    ld d, c
    ld d, c
    ld a, a
    ld l, a
    ld [hl], c
    ld [hl], a
    ld c, c
    dec sp
    dec h
    dec e
    inc de
    ld c, $09
    rlca
    rlca
    inc a
    call nc, $ee52
    ld h, d
    cp $7e
    sbc $7e
    ld [c], a
    ld e, [hl]
    cp $8c
    db $fc

jr_038_42cc:
    ldh a, [$f0]
    ld bc, $0b20
    ld [hl], c
    ld bc, $0630
    ld hl, sp-$58
    ld bc, $003c
    ld [hl], c
    ld [hl], c
    ei
    jp z, $b6fd

    rst $38
    sbc a
    rst $38
    call nz, Call_038_727f
    ld a, a
    ld e, c
    rst $38
    adc [hl]
    add [hl]
    rst $38
    rst $38
    add e
    ei
    add l
    ld [hl], a
    ld c, b
    cpl
    jr nc, jr_038_4314

    db $10
    ld bc, $001c
    ld bc, $ffa0
    ld c, l
    nop

Jump_038_42fe:
    ld bc, $0003
    nop
    ld e, $1e
    add hl, bc
    rrca
    rlca
    rlca
    dec e
    rra
    add hl, hl
    ccf
    ld e, l
    ld [hl], a
    rst $38
    ei
    inc bc
    db $fc
    ld a, [c]
    ret nz

jr_038_4314:
    ret nz

    ld [hl], b
    ldh a, [$28]
    ld hl, sp+$74
    call c, $befe
    inc l

jr_038_431e:
    ccf
    ld d, $1b
    rla
    ld e, $18
    rra
    inc a
    daa
    dec sp
    dec sp
    inc bc
    ld a, [$01f4]
    ld bc, $f3f3
    ld c, l
    ld a, a
    add hl, hl
    ccf
    dec e
    rla
    rra
    dec de
    nop
    nop
    ldh a, [$f0]

jr_038_433c:
    jr nz, jr_038_431e

    sbc $de
    ld h, h
    db $fc
    jr z, jr_038_433c

    ld [hl], b
    ret nc

    ldh a, [$b0]
    nop
    nop
    ld [$1c08], sp
    inc d
    rrca
    dec bc
    dec e
    rra
    dec h
    ccf
    ld c, c
    ld a, a
    pop af
    rst $38
    inc h
    ccf
    inc h
    ccf
    ld [de], a
    rra
    dec a
    dec h
    jr c, jr_038_439a

    inc bc
    db $fc
    ld a, [c]
    cp b
    ld hl, sp+$7e
    cp $18
    ld hl, sp-$08
    add sp, $03
    ld l, b
    inc b
    inc bc
    ld d, b
    ld [bc], a
    rst $38
    ei
    ld c, l
    ld a, a
    dec [hl]
    ccf
    add hl, de
    rra
    ld de, $081f
    ld [$1818], sp
    jr z, jr_038_43bb

    ld d, e
    ld [hl], e
    ld e, l
    ld a, a
    ld d, d
    ld a, a
    inc [hl]
    ccf
    jr c, jr_038_43cc

    nop
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    cp b
    xor b
    ld [hl], h
    db $fc
    ld b, d
    cp $02

jr_038_439a:
    cp $59
    rst $28
    dec h
    ccf
    ld c, a
    ld a, a
    ld a, b
    ld c, b
    inc bc
    ld a, b
    ld b, $4e
    cp $21
    rst $38
    cp $9e
    ld [hl], b
    ld [hl], b
    inc bc
    ld a, [$3cf4]
    inc a
    sub d
    sbc [hl]
    ret


    rst $08
    and [hl]
    rst $20
    sbc b
    rst $38

jr_038_43bb:
    ld b, b
    ld a, a
    jr nz, @+$41

    inc h
    ccf
    inc bc
    and b
    rst $38
    dec c
    nop
    ld bc, $0001
    nop
    inc b
    inc b

jr_038_43cc:
    ld b, $06
    dec d
    rla
    dec e
    rra
    rra
    rra
    add hl, de
    rra
    dec l
    ccf
    nop
    nop
    ld a, b
    ld a, b
    ldh [$e0], a
    ld d, b
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [rBCPS]
    ld hl, sp+$4a
    ld a, a
    call nz, $fcff
    rst $38
    ld b, a
    ld a, [hl]
    ld a, a
    ld a, c
    ld c, a
    ld a, a
    ld e, b
    ld l, b
    jr c, @+$3a

    and h
    db $fc
    ld e, h
    db $fc
    ld h, [hl]
    cp $fe
    sbc [hl]
    ld [c], a
    ld a, $fa
    or $1e
    ld e, $01
    ld a, [$0ef4]
    ld c, $18
    jr jr_038_447e

    ld [hl], b
    ld d, b
    ld [hl], b
    or a
    rst $30
    ld bc, $f0fe
    jr nz, jr_038_4438

    jr nc, jr_038_444a

    xor b
    cp b
    add sp, -$08
    db $fc
    db $fc
    ld a, [c]
    cp $b8
    rst $38
    rst $28
    rst $38
    ld a, [c]
    rst $38
    ld c, a
    ld a, a
    ld [hl], b
    ld a, a
    sbc a
    rst $28
    cp [hl]
    sbc $60
    ld h, b
    ld a, d
    cp $ff
    rst $28
    ld [hl], c
    rst $38

jr_038_4438:
    pop de
    rst $38
    dec sp
    db $fd
    adc $fe
    db $e4
    call c, Call_000_3c3c
    ld bc, $f0fe
    jr @+$1a

    jr nc, jr_038_4479

    ld h, b

jr_038_444a:
    ld h, b
    ld h, b
    ld h, b
    and b
    ldh [$97], a
    rst $30
    ld bc, $0852
    ld [hl], d
    ld a, [hl]
    ld a, [$b8fe]
    rst $38
    and a
    rst $38
    db $f4
    ld bc, $0165
    rst $08
    rst $38
    rst $08
    rst $30
    ld a, l
    ld a, l
    ld a, a
    rst $28
    and c
    rst $38
    or c
    rst $38
    db $db
    db $fd
    ld a, $fe
    call c, $9cfc
    ld a, h
    ldh a, [$f0]
    ld bc, $0800

jr_038_4479:
    jr jr_038_449a

    add hl, hl
    ccf
    nop

jr_038_447e:
    nop
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld d, b
    ret nc

    ld a, h
    db $fc
    ret z

    ld hl, sp-$70
    ldh a, [$38]
    ld bc, $031f
    ld b, h
    ld a, a
    ld [hl], l
    ld a, [hl]
    ld c, a
    ld a, [hl]
    ld e, e
    ld l, e
    jr c, @+$3a

    ld h, h

jr_038_449a:
    cp h
    call c, $e67c
    ld a, [hl]
    sbc $7e
    ld [c], a
    ld a, [hl]
    ld a, [$9ef6]
    sbc [hl]
    nop
    nop
    nop
    ld bc, $000a
    nop
    inc b
    inc b
    ld e, $1e
    inc a
    inc h
    ld l, h
    ld d, h
    rst $00
    cp e
    jp $e7bc


    db $fd
    sbc e
    sbc [hl]
    rrca
    inc c
    rla
    ld e, $1f
    dec e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $fe0a
    ldh a, [rSB]
    ld bc, $0e0f
    ccf
    jr nc, @+$01

    ret nz

    rst $38
    add c
    ei
    adc [hl]
    ld a, a
    ld c, h
    ld [hl], a
    ld e, [hl]
    ccf
    dec a
    ld [hl+], a
    inc hl
    ld a, [bc]
    ld a, [de]
    ld b, $07
    rlca
    rra
    jr jr_038_451b

    cpl
    ld h, b
    ld e, a
    ldh a, [rIE]
    adc b
    adc a
    inc b
    rlca
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld h, b
    and b
    ld a, h
    cp h
    cp $02
    dec c
    ld c, $10
    rra
    dec d
    rra
    ld d, $1f
    add hl, de
    add hl, de
    jr nc, jr_038_4540

    ldh [$e0], a
    nop
    nop
    rst $38
    ld bc, $63ff
    sbc a
    sub l
    ld c, a

jr_038_451b:
    rst $08
    ret


    rst $08
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    db $fc
    ld a, [c]
    ld bc, $0701
    ld b, $0f
    ld [$1e11], sp
    ld de, $001f
    nop
    ld [bc], a
    ld [bc], a
    ccf
    ccf
    cp $c2
    cp $02
    db $fc
    inc b
    cp $06
    rst $38

jr_038_4540:
    adc c
    ld d, $1f
    ld a, [hl+]
    dec sp
    ld sp, $3031
    jr nc, jr_038_456a

    jr nz, jr_038_456c

    jr nz, jr_038_455e

    stop
    nop
    rst $38
    sub e
    rst $38
    ld [hl], l
    rst $08
    rst $08
    add hl, bc
    rrca
    ld a, [bc]
    ld a, d
    ld b, $0a
    ld [bc], a

jr_038_455e:
    ld [bc], a
    ld a, h
    ld b, h
    rst $38
    add e
    rst $38
    add d
    rst $38
    ldh [$9f], a
    sbc b
    dec bc

jr_038_456a:
    ld c, $17

jr_038_456c:
    ld e, $1b
    ld a, [de]
    ld a, [bc]
    inc e
    nop
    ld a, [bc]
    inc e
    ld a, [bc]
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld a, e
    ld c, [hl]
    ld [hl], a
    ld e, [hl]
    dec sp
    ld a, [hl-]
    ld hl, $0a21
    db $da, $04, $00

    ld bc, $0102
    ld bc, $0303
    dec c
    ld c, $2b
    dec l
    ld e, e
    ld a, a
    cpl
    ccf
    ld d, l
    ld a, a
    ld e, [hl]
    ld [hl], l
    or e
    rst $28
    xor [hl]
    pop af
    or b
    rst $28
    xor [hl]
    pop af
    ld e, b
    ld [hl], a
    ld d, [hl]
    ld a, c
    cp b
    rst $38
    ld c, a
    ld c, a
    ld bc, $1b01
    dec de
    dec d
    rra
    add hl, sp
    ccf
    ld l, d
    ld a, a
    ld c, l
    ld a, [hl]
    and a
    db $fd
    call $94fe
    rst $38
    sbc h
    rst $30
    or a
    db $eb
    xor b
    rst $30
    db $76
    ld l, c
    ld e, b
    ld [hl], a
    ld a, [hl]
    ld a, c
    rrca
    rrca
    ld bc, $0f01
    rrca
    ld a, [bc]
    rrca
    ccf
    ccf
    ld c, c
    ld a, a
    ld [hl], h
    ld a, a
    and h
    rst $38
    xor c
    rst $38
    ret nz

    ret nz

    and b
    ldh [$38], a
    ret c

    ld h, [hl]
    cp [hl]
    ld [hl+], a
    sbc $9c
    db $fc
    ld h, h
    db $fc
    ld [hl-], a
    cp $ca
    rst $38
    ld c, h
    ld a, a
    ret nz

    rst $38
    call z, Call_038_52ff
    ld a, a
    inc h
    ccf
    dec l
    ccf
    rra
    rra
    ld l, $fe
    ld [de], a
    cp $1e
    ld a, [c]
    inc d
    db $fc
    inc a
    db $e4
    ret z

    ld hl, sp-$10
    or b
    ret nz

    ret nz

    nop
    nop
    dec c
    dec c
    ld [de], a
    rra
    ld a, a
    ld a, a
    ld d, d
    ld a, a
    and h
    rst $38
    xor b
    rst $38
    ld b, a
    ld a, a
    jr nc, jr_038_464b

    add sp, -$08

jr_038_461d:
    ld e, h
    db $fc
    jp z, Jump_038_66fe

    ld a, [$f62e]
    ld h, $fa
    add hl, hl
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld c, b
    ld a, a
    sbc b
    rst $38
    and b
    rst $38
    ld d, a
    ld a, a
    ld a, d
    ld a, l
    rlca
    rlca
    dec l
    rst $38
    dec l

Call_038_463c:
    rst $38
    ld d, [hl]
    cp $6a
    sub $d4
    xor h
    jr z, jr_038_461d

    ldh a, [$30]
    ret nz

    ret nz

    inc bc
    inc bc

jr_038_464b:
    inc b
    rlca
    ld [bc], a
    inc b
    ld [bc], a
    dec [hl]
    ccf
    ld c, [hl]
    ld a, a
    ld b, c
    ld a, a
    add d
    rst $38
    add c
    rst $38
    ld [bc], a
    ret nc

    nop
    ld b, d
    ld a, a
    ld b, l
    ld a, a
    inc [hl]
    ccf
    ld [bc], a
    ld a, $00
    ld a, [de]
    dec de
    rla
    rra
    ld a, [de]
    rra
    ld hl, $423f
    ld [bc], a
    call $a207
    rst $38
    ld b, l
    ld a, a
    xor b
    rst $38
    ld e, l
    ld e, a
    rrca
    rrca
    nop
    ld bc, $6902
    ld l, c
    cp $9f
    sub $af
    jp c, Jump_038_7fad

    ld c, d
    ld [hl], $2d
    inc a
    daa
    ld d, $1f
    ld a, [hl+]
    ccf
    ld [hl], c
    ld e, a
    ld [$d59f], a
    xor a
    ld a, d
    ld e, e
    ld [c], a
    and e
    ld [c], a
    and e
    pop bc
    pop bc
    ld bc, $1a01
    dec de
    ld b, $07
    ld_long $ffed, a
    sbc d
    sbc $ad
    call c, $fea7
    rst $00
    ld l, d
    ld a, a
    pop de
    cp a
    ld [$9d9f], a
    rst $38
    ld [c], a
    and e
    jp nz, $01c3

    ld bc, $0000
    ld [hl], c
    ld [hl], c
    db $fd
    adc l
    sbc $a2
    ld h, l
    ld e, e
    ld [hl-], a
    dec l
    ld a, $21
    ld e, a
    ld a, c
    cp d
    rst $00
    call nz, Call_000_38c4
    ld hl, sp-$78
    ld hl, sp-$2c
    db $ec
    cp [hl]
    sub $91
    rst $28
    cp a
    rst $38
    ld d, b
    ldh a, [$a8]
    rst $18
    pop af
    cp a
    ld h, h
    ld a, a
    ld h, $3f
    dec h
    dec a
    inc de
    rra
    ld [$070f], sp
    rlca
    ld c, b
    ld hl, sp+$08
    ld hl, sp-$50
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    ld bc, $0101
    ld bc, $7070
    db $fc
    adc h
    adc $b2
    ld [hl], l
    ld l, e
    ld e, e
    ld a, l
    cp d
    rst $00
    ret nz

    ret nz

    ld h, $e6
    sbc b
    ld hl, sp-$28
    add sp, $02
    ld e, b
    inc b
    ldh a, [$bf]
    ld h, c
    ld a, a
    inc h
    ccf
    ld h, $3f
    dec d
    dec e
    ld [de], a
    ld e, $09
    rrca
    ld b, $06
    ld [bc], a
    ld [hl], b
    ld [$fc02], sp
    db $f4
    sbc $a3
    or l
    bit 5, e
    ld d, l
    scf
    jr z, @+$40

    ld hl, $1916
    ld l, $3f
    ld a, l
    ld b, e
    ld [$d697], a
    ld [bc], a
    rla
    dec bc
    ld [c], a
    db $e3
    db $fc
    sbc a
    db $ec
    sub a
    sub $ab
    ld l, l
    ld d, e
    ld a, h
    ld a, a
    rst $38
    add c
    jp c, $9ea7

    ld [bc], a
    scf
    dec b
    nop
    ld bc, $0c01
    inc c
    ld a, d
    ld a, [hl]
    ld a, e
    ld e, a
    rst $38
    sbc [hl]
    rst $38
    sbc b
    rst $38
    sbc h
    ei
    rst $18
    db $fc
    rst $18
    ld h, b
    ld h, b
    xor h
    db $ec
    or h
    db $fc
    db $e4
    db $fc
    ld a, [$ea3e]
    ld a, [hl]
    xor d
    cp $6a
    cp $f5
    rst $38
    cp $9b
    rst $38
    sub c
    rst $38
    ld a, [$7e7f]
    cpl
    dec sp
    dec a
    inc sp
    rra
    rra
    ld a, [hl]
    cp $e6
    jp c, $a5db

    and l
    db $db
    and l
    db $db
    db $db
    and l
    and $da
    db $fc
    db $fc
    inc c
    inc c
    ld l, d
    ld l, [hl]
    ld a, e
    ld a, a
    ld a, a
    ld e, [hl]
    ld bc, $0108
    sbc a
    db $fc
    rst $18
    push af
    rst $18
    cp $fb
    rst $38
    sub c
    rst $38
    sbc d
    ld a, a
    ld a, [hl]
    inc hl
    ccf
    ccf
    ccf
    rra
    rra
    nop
    nop
    ld c, $0e
    inc de
    rra
    dec hl
    ccf
    dec hl
    ccf
    ld e, l
    ld a, a
    ld d, l
    ld a, a
    ld d, d
    ld a, a
    ret nz

    ret nz

    xor h
    db $ec
    xor [hl]
    ld [$d9ff], a
    ld a, a
    adc c
    rst $38
    ld c, c
    cp [hl]
    ld a, [$fec6]
    ld b, [hl]
    cp $a7
    db $fd
    rst $38
    add hl, de
    rst $38
    xor a
    xor $fe
    ld hl, sp-$68
    ld a, b
    adc b
    ld hl, sp-$08
    ret nz

    ret nz

    and b
    ldh [$ac], a
    db $ec
    cp $da
    ld bc, $0078
    cp a
    ld sp, hl
    ld bc, $017e
    rst $38
    rst $38
    add hl, de
    rst $38
    xor c
    xor $7e
    ld hl, sp-$08
    adc b
    ld hl, sp-$10
    ldh a, [rSB]
    ld b, b
    nop
    ld e, e
    ld a, a
    ld c, [hl]
    ld a, a
    and h
    rst $38
    xor e
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    ld d, h
    ld a, a
    ld d, l
    ld a, a
    rst $10
    rst $38
    jp c, $feff

    rst $38
    sub c
    rst $38
    ld e, l
    ld [hl], e
    ccf
    ccf
    sub l
    rst $38
    push de
    rst $38
    ld [hl], l
    rst $38
    dec l
    rst $38
    ld a, $fe
    inc d
    db $fc
    call c, $f8fc
    ld hl, sp+$01
    ret nz

    ld b, $94
    rst $38
    ld e, l
    ld a, a
    ld bc, $08ce
    ld b, h
    db $fc
    call c, $f8e4
    ld hl, sp+$00
    ld bc, $0404
    rst $38
    ldh a, [rSB]
    ld bc, $3233
    cpl
    dec a
    daa
    dec a
    scf
    dec l
    dec sp
    ld a, $00
    nop
    ldh [$e0], a
    ldh [$60], a
    ldh [$a0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$60], a
    ret c

    ld a, b
    ld c, h
    ld a, a
    ld d, d
    ld a, a
    ld a, d
    ld a, l
    daa
    ld a, [hl-]
    ld a, [hl-]
    dec a
    ld e, a
    ld [hl], a
    ld l, a
    ld e, b
    ld a, a
    ld a, a
    call c, Call_000_267c
    cp $2e
    sbc $73
    xor a
    cpl
    db $dd
    rst $38
    rst $30
    ld hl, sp+$08
    ldh a, [$f0]
    inc b
    nop
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    ccf
    ld a, [hl-]
    ld a, a
    ld d, [hl]
    rst $18
    or a
    nop
    nop
    ld [hl], b
    ld [hl], b
    cp $be
    db $fc
    ld [hl], h
    ld hl, sp+$68
    ld hl, sp-$18
    ldh a, [$d0]
    db $fc
    call c, $f79e
    sbc b
    rst $38
    or b
    rst $38
    and b
    rst $38
    db $e4
    cp a
    call nz, $fdff
    xor [hl]
    rst $38
    rst $38
    inc [hl]
    db $fc
    inc l
    db $fc
    db $76
    ld a, [$fd0f]
    push bc
    rst $38
    daa
    rst $38
    cp a
    ld l, e
    cp $fe
    inc b
    cp $f4
    inc bc
    ld [bc], a
    rrca
    dec c
    rra
    dec e
    inc sp
    cpl
    nop
    nop
    inc e
    inc e
    cp $f6
    rst $38
    ld l, a
    rst $38
    reti


    cp $b6
    ld hl, sp-$58
    ld hl, sp-$08
    ld l, h
    ld e, a
    ret c

    cp a
    sub d
    rst $38
    and c
    rst $38
    and c
    rst $38
    db $d3
    cp a
    ld e, a
    ld [hl], l
    ccf
    ccf
    ld l, b
    ld hl, sp+$2c
    db $fc
    ld a, [hl-]
    or $1f
    ei
    sbc c
    rst $30
    ccf
    rst $38
    rst $30
    ld e, c
    inc b
    ld a, [hl]
    nop
    inc c
    inc c
    rrca
    dec bc
    rrca
    dec c
    rlca
    dec b
    ld [hl], a
    ld [hl], l
    ld c, a
    ld a, l
    ld [hl], c
    ld a, a
    inc b
    cp $f2
    add b
    add b
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ret nc

    ld [hl], b
    ld hl, sp+$78
    adc h
    rst $38
    ld d, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_038_4964

    jr nc, jr_038_4966

    ld d, b
    ld a, a
    ld l, c
    ld e, [hl]
    inc b
    ld l, $00
    ld d, [hl]
    cp $2e
    or $cf
    rst $30
    dec e
    rst $20
    ccf
    rst $08
    ld hl, sp+$38
    ldh a, [$f0]
    nop
    ld bc, $0003
    nop
    ld [bc], a
    ld [bc], a
    rrca
    dec c
    rra
    dec d
    ld a, l
    ld [hl], a
    ld a, a
    ld e, d
    db $eb
    cp $fd
    cp [hl]
    ld bc, $8601
    add [hl]
    xor $6a
    db $f4
    ld e, h
    ld a, h
    call c, $b4fc
    xor [hl]
    cp $7e
    ld a, [$5b6e]
    dec a
    dec sp
    ld l, a

jr_038_4964:
    ld e, [hl]
    xor d

jr_038_4966:
    db $fd
    rst $38
    rst $18
    ld h, $3e
    ld a, h
    ld d, h
    ld a, h
    ld a, h
    db $ec
    or h
    ld a, b
    cp b
    db $ec
    db $f4
    xor d
    ld a, [hl]
    cp $f6
    db $fc
    db $fc
    ldh a, [$f0]
    ld a, b
    ld a, b
    nop
    nop
    rrca
    rrca
    add hl, de
    add hl, de
    inc sp
    ld [hl-], a
    ld a, a
    ld e, a
    ld [hl], e
    ld e, a
    rst $28
    cp h
    rst $30
    cp a
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    pop af
    pop de
    ei
    ld l, e
    rst $28
    cp l
    rst $18
    push af
    cp a
    ld [hl], e
    rst $00
    db $fd
    jp Jump_038_61fe


    ld a, a
    ld b, l
    ld a, a
    sbc [hl]
    rst $38
    ld c, a
    ld a, a
    ld d, a
    ld l, e
    ccf
    ccf
    rst $38
    pop de
    ld l, a
    reti


    or $fe
    pop bc
    ld a, a
    cp [hl]
    cp [hl]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld c, $0e
    ccf
    ccf
    ld [hl], e
    ld d, d
    ld h, c
    ld h, c
    rst $28
    xor a
    rst $30
    cp h
    sbc a
    rst $38
    rst $10
    cp l
    inc bc
    ld d, d
    ld a, [bc]
    rst $38
    pop de
    and e
    cp $61
    ld a, a
    ld [hl+], a
    ccf
    dec de
    rra
    ld de, $181f
    rra
    ccf
    ccf
    rra
    rra
    inc bc
    ld [hl], d
    nop
    pop hl
    cp a
    ld a, [hl]
    cp $e0
    and b
    ld [hl], b
    ldh a, [$58]
    xor b
    ld hl, sp-$08
    inc bc
    nop
    nop
    dec c
    rrca
    dec d
    rra
    ld [hl], a
    ld a, a
    ld e, h
    ld a, a
    ld a, [c]
    rst $38
    and l
    cp $03
    stop
    ld l, [hl]
    ld [$f45c], a
    db $f4
    db $ec
    db $fc
    call z, $deae
    ld a, [$4b9e]
    ld a, l
    ld c, e
    ld a, [hl]
    ld c, b
    ld a, a
    call nz, $e7ff
    rst $38
    inc bc
    ld a, [hl+]
    ld [bc], a
    db $f4
    ld e, h
    ld [hl], h
    call c, $fc24
    ld e, [hl]
    cp $8e
    cp $8c
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld bc, $0101
    rst $38
    ldh a, [rTIMA]
    dec b
    rlca
    rlca
    dec c
    rrca
    dec d
    rra
    dec l
    ccf
    ld a, $3f
    ld bc, $f0ff
    ld b, b
    ld b, b
    sbc $de
    ld h, a
    rst $38
    ld e, c
    ld sp, hl
    ld l, b
    ld hl, sp-$08
    ld hl, sp+$59
    ld a, a
    ld a, l
    ld e, a
    ld l, [hl]
    ld a, e
    ld a, h
    ld l, a
    inc l
    scf
    ccf
    ld l, $7f
    ld b, a
    ld a, h
    ld a, h
    inc a
    db $fc
    ld [hl], d
    cp $ee
    cp d
    ld a, d
    xor $5e
    or $fe
    ld a, [c]
    sbc [hl]
    sbc [hl]
    ld bc, $f4fc
    jr nz, jr_038_4a92

    ld b, c
    ld b, c
    ld l, e
    ld l, e
    xor l
    rst $28
    or h
    rst $38
    ld bc, $0210
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    ret nc

    ldh a, [rBCPS]
    ld hl, sp+$7c
    db $fc
    or b
    rst $38
    add b
    rst $38
    db $f4
    xor a
    ld a, d
    ld h, a
    ccf
    ld [hl+], a
    ld l, l

jr_038_4a92:
    ld e, [hl]
    rst $18
    xor a
    cp $fe
    ld [hl], d
    cp $7a
    cp $3f
    rst $30
    add hl, hl
    rst $38
    pop af
    rst $18
    cp a
    ld l, l
    ld [$fef6], a
    cp $01
    db $fc
    db $f4
    ld a, [bc]
    ld a, [bc]
    dec sp
    dec sp
    ld c, [hl]
    ld a, a
    sbc b
    rst $38
    ld bc, $0652
    add sp, -$08
    db $fc
    db $fc
    ld [hl], d
    cp $90
    rst $38
    ret nz

    cp a
    ld [hl], h
    ld c, a
    ld a, [hl-]
    daa
    ccf
    daa
    ld [hl], a
    ld a, e
    ld a, e
    ld [hl], l
    ccf
    ccf
    ld bc, $0272
    sub c
    rst $38
    ld e, a
    cp c
    cp [hl]
    ld a, [hl]
    ld e, h
    cp h
    db $fc
    db $fc
    ld bc, $0600
    add hl, de
    rra
    ld [hl-], a
    ccf
    inc h
    ld bc, $070f
    sbc c
    jp hl


    ld a, b
    sbc b
    add sp, $38
    ld c, l
    ld a, [hl]
    ld l, e
    ld e, h
    db $eb
    call c, Call_038_4e7d
    dec l
    ld [hl], $3f
    cpl
    ld bc, $002c
    db $e4
    inc a
    db $ec
    inc [hl]
    xor $32
    xor $7a
    ld bc, $0438
    nop
    ld bc, $0b05
    dec bc
    rrca
    rrca
    inc c
    rrca
    rra
    inc de
    inc e
    rla
    jr jr_038_4b31

    inc e
    rra
    rrca
    dec bc
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [rNR41], a
    ldh [$a0], a
    ld h, c
    pop hl
    db $e3
    db $e3
    db $cd, $4f, $0f
    inc c
    inc de
    rra
    inc h
    ccf
    inc hl
    ld a, $2f
    inc a
    daa

jr_038_4b31:
    ccf
    inc d
    inc e
    inc a
    inc a
    cp l
    rst $38
    ld d, c
    rst $38
    ld c, d
    cp $84
    db $fc
    db $ec
    ld a, h
    ret nc

    ldh a, [$78]
    ld a, b
    nop
    nop
    ld bc, $0101
    ld bc, $0d0d
    rlca
    rlca
    ld b, e
    ld b, e
    ld b, [hl]
    ld b, a
    and [hl]
    rst $20
    or d
    di
    jr nz, jr_038_4b78

    or b
    or b
    ldh a, [$f0]
    ld a, [$7eca]
    sbc $3e
    cp $02
    cp $fe
    ld a, [hl]
    or [hl]
    rst $30
    adc [hl]
    rst $38
    ld c, h
    ld a, a
    ld b, b
    ld a, a
    ld hl, $113f
    ld e, $0f
    rrca
    nop
    nop
    ld a, h
    add h

jr_038_4b78:
    jr c, @-$06

    ldh [$a0], a
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh a, [$f0]
    db $10
    ldh a, [$f8]
    ld hl, sp+$05
    ld b, b
    inc b
    inc bc
    inc bc
    ld b, $07
    ld c, $0f
    ld a, [de]
    rra
    ld h, $3f
    ld c, [hl]
    ld a, a
    dec b
    ld h, h
    ld [bc], a
    rra
    ld e, $11
    rra
    ld e, $1e
    dec b
    ld [hl], b
    rlca
    ret nc

    ldh [$e0], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    add h
    add a
    add $c7
    ld [c], a
    db $e3
    ret nc

    ret nc

    ldh a, [$f0]
    ret nc

    ldh a, [$c8]
    ld hl, sp-$38
    ld hl, sp+$08
    ld hl, sp-$28
    ld hl, sp-$30
    ldh a, [$bf]
    rst $38
    adc l
    rst $38
    ld b, c
    ld a, a
    jr nz, jr_038_4c0d

    ld a, $3f
    dec bc
    rrca
    ld e, $1e
    nop
    nop
    db $10
    ldh a, [$c8]
    ld hl, sp-$3c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $e4
    db $fc
    jr z, jr_038_4c1c

    inc a
    inc a
    dec b
    and b
    db $fc
    nop
    ld bc, $0d01
    dec c
    ld a, [bc]
    rrca
    ld l, [hl]
    ld l, l
    rla
    ld a, [de]
    db $76
    ld a, l
    adc e
    adc a
    daa
    dec h
    ld a, e
    ld a, [hl]
    inc l
    inc l
    call nc, $1dfc
    db $ed
    ld a, [hl-]
    sub $1a
    xor $f5
    db $fd
    ld hl, sp-$18
    or $16
    ld sp, hl

jr_038_4c0d:
    rst $38
    sbc l
    sbc a
    dec hl
    ccf
    ld b, c
    ld a, [hl]
    ld c, e
    ld a, h
    ld h, a
    ld a, a
    adc b
    ld hl, sp+$70
    ld [hl], b

jr_038_4c1c:
    rst $38
    rst $38
    ld e, c
    ld sp, hl
    db $ec
    ld a, h
    jp z, $d23e

    ld a, $e4
    db $fc
    inc a
    inc a
    nop
    nop
    ld b, $06
    dec b
    rlca
    ld [de], a
    inc de
    inc c
    rrca
    ld h, $27
    ld [hl], h
    ld [hl], a
    or $f7
    dec a
    ccf
    ret nz

    ret nz

    or b
    ldh a, [$2c]
    call c, $ae72
    ld h, d
    sbc $fc
    ld a, h
    ld [hl], b
    or b
    cp b
    ret z

    ld e, b
    ld e, a
    and [hl]
    rst $38
    adc c
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_038_4c95

    dec e
    rra
    ld [$0f0f], sp
    rrca
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp-$2c
    db $fc

jr_038_4c62:
    ld l, h
    db $f4
    ld e, h
    db $e4
    cp b
    ret z

    ld [hl], b
    ldh a, [$f8]
    ld hl, sp+$03
    inc bc
    ld [bc], a
    inc bc
    add hl, bc
    add hl, bc
    ld b, $07
    inc hl
    inc hl
    ld [hl], d
    ld [hl], e
    di
    di
    inc a
    ccf
    ld h, b
    ld h, b
    ret c

    ld hl, sp+$16
    xor $39
    rst $10
    ld sp, $7eef
    cp [hl]
    jr c, jr_038_4c62

    call c, Call_038_58e4
    ld e, a
    and c
    rst $38
    adc [hl]
    ld bc, $0165

jr_038_4c94:
    rra

jr_038_4c95:
    rra
    ld c, $0f
    rrca
    rrca
    jr c, jr_038_4c94

    sbc b
    ld hl, sp+$74
    db $fc
    inc e
    db $f4
    inc e
    db $f4
    ld l, b
    ld hl, sp+$10
    ldh a, [$f8]
    ld hl, sp+$01
    nop
    nop
    ld l, h
    ld l, a
    db $10
    rra
    ld [hl], b
    ld a, a
    adc c
    adc a
    daa
    daa
    ld [hl], d
    ld [hl], e
    ld bc, $0010
    dec c
    db $fd
    ld [bc], a
    cp $02
    cp $45
    db $fd
    ld e, b
    ld hl, sp+$66
    and $7c
    ld a, a
    sbc [hl]
    sbc a
    jr z, jr_038_4d0d

    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld bc, $022a
    ld a, $fe
    ld l, a
    rst $38
    adc l
    db $fd
    ld a, [de]
    xor $72
    sbc [hl]
    db $e4
    db $fc
    ld a, h
    ld a, h
    nop
    nop
    nop
    ld bc, $0105
    ld bc, $0302
    ld b, $07
    add hl, hl
    cpl
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, l
    sbc e
    rst $38
    xor h
    db $db
    dec b
    nop
    ld [bc], a
    add hl, de
    rra
    ld l, $3f
    ld e, a
    ld l, l
    ld e, e
    ld l, a
    xor h
    db $db
    cp a
    call c, $ffab
    jp hl


    cp $a7
    cp h

jr_038_4d0d:
    dec de
    rra
    ld e, $12
    ld a, $2a
    ld [hl], $36
    ld [$ba76], a
    cp $f6
    ld [hl], $d2
    ld [hl], d
    cp b
    ld hl, sp-$14
    db $fc
    ldh a, [$f0]
    nop
    nop
    jr jr_038_4d3f

    daa
    ccf
    jr nz, jr_038_4d6a

    inc e
    rra
    ld a, [bc]
    rrca
    ld d, $1b
    ld a, [hl+]
    scf
    ld l, d
    ld [hl], a
    dec b
    db $fc
    ldh a, [$80]
    add b
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$5f

jr_038_4d3f:
    rst $30
    ret


    cp a
    pop hl
    sbc a
    ld d, l
    ld l, a
    ld e, b
    ld a, a
    ld h, [hl]
    ld a, e
    ld e, l
    ld h, [hl]
    cp a
    rst $18
    ld [hl], a
    ld c, a
    rst $38
    xor e
    ld a, [hl]
    ld a, [hl]
    rst $38
    pop bc
    cp [hl]
    ld a, [hl]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    ld a, h
    ld a, h
    dec b
    ld a, $02
    jr c, jr_038_4da8

    inc d

jr_038_4d6a:
    rra
    ld l, $37
    ld d, d
    ld l, a
    ld d, d
    ld l, a
    dec b
    ld a, [$05f2]
    ld d, h
    ld b, $ad
    rst $10
    cp e
    db $dd
    xor [hl]
    di
    rst $18
    db $db
    sub l
    sbc e
    rra
    jr @+$41

    ld a, $1f
    rra
    pop hl
    sbc a
    rst $38
    pop bc
    ld a, [hl]
    cp [hl]
    dec b
    halt
    ld [hl], b
    ldh a, [$f8]
    xor b
    ld hl, sp-$08
    dec b
    nop
    nop
    inc b
    rlca
    inc l
    cpl
    ld l, h
    ld l, a
    ld l, d
    ld l, a
    sbc l
    rst $38
    xor b
    rst $10
    dec b
    ret nz

    ld [bc], a

jr_038_4da8:
    inc e
    rra
    inc l
    ccf
    ld e, d
    ld l, a
    ld d, l
    ld l, a
    xor d
    push de
    xor [hl]
    rst $10
    cp b
    rst $18
    ld sp, hl
    dec b
    dec h
    nop
    rla
    dec b
    ld a, [hl+]
    inc bc
    or $3a
    cp $de
    ld a, $ea
    ld e, d
    xor b
    ld hl, sp-$10
    ldh a, [rTIMA]
    inc a
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [hl-], a
    inc sp
    ld c, h
    ld a, a
    dec h
    ccf
    ld [hl-], a
    ccf
    inc a
    ccf
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld c, h
    call z, $fe32
    and h
    db $fc
    ld c, h
    db $fc
    inc a
    db $fc
    dec h
    ccf
    ld d, d
    ld a, a
    dec h
    ccf
    ld a, [hl]
    ld a, a
    xor a
    ei
    ld l, a
    ld a, l
    rst $38
    add [hl]
    ld a, c
    ld a, c
    inc h
    db $fc
    ld d, d
    cp $a4
    db $fc
    ld a, [hl]
    cp $ff
    pop de
    cp $be
    pop hl
    ld a, a
    sbc [hl]
    sbc [hl]
    ld [hl], b
    ld [hl], b
    xor c
    reti


    or $af
    ld a, d
    ld l, e
    ld l, a
    ld e, a
    ld a, c
    ld e, a
    ret nc

    cp a
    ldh [$bf], a
    inc b
    db $fc
    ldh a, [$c0]
    ret nz

    inc l
    db $ec
    ld d, $fe
    ld a, [hl-]
    cp $a6
    cp $ca
    cp $e0
    cp a
    add c
    rst $38
    or b
    rst $38
    ld c, a
    ld [hl], b
    ld e, a
    ld a, a
    ld e, b
    ld a, b
    db $fc
    add h
    ld a, b
    ld a, b
    and [hl]
    cp $19
    rst $38
    cp $e6
    ld e, $f2
    call c, $fcfc
    adc h
    ld [hl], d
    ld a, [hl]
    inc a
    inc a
    inc b
    ld b, b
    rrca
    dec c
    and b
    rst $38
    pop af
    rst $38
    ld b, b
    ld a, a
    ld e, a
    ld a, b
    ld e, a
    ld a, a
    db $fc
    add h
    ld a, e
    ld a, a
    inc a
    inc a
    inc b
    ld [hl], b
    ld [bc], a
    ld a, $f2
    cp h
    db $fc
    or d
    cp $fc
    inc c
    ldh a, [$f0]
    inc b
    nop
    ld [$3e3b], sp
    dec [hl]
    inc b
    rrca
    add hl, bc
    ld e, h
    db $fc
    call z, Call_000_277c

Call_038_4e7d:
    dec a
    inc hl
    ccf
    ld a, [hl-]
    ccf
    ld h, a
    ld a, h
    xor a
    ldh a, [$6f]
    ld a, [hl]
    db $fd
    add l
    ld a, b
    ld a, b
    call nz, $cc7c
    ld a, h
    call nz, $967c
    cp $ff
    ld hl, $5ede
    and e
    cp a
    ld e, $1e
    nop
    ld bc, $0406
    inc b
    ld [bc], a
    ld [bc], a
    inc de
    inc de
    ld l, d
    ld a, e
    rst $28
    cp l
    push af
    sbc [hl]
    ld [hl], d
    ld e, a
    ld a, [hl-]
    ccf
    ld a, [bc]
    rrca
    add hl, sp
    ccf
    ld l, b
    ld e, a
    or $9f
    ld h, a
    ld a, a
    ld a, [de]
    dec de
    ld [bc], a
    inc bc
    ld bc, $0601
    nop
    ld [bc], a
    ld a, [hl+]
    dec sp
    cpl
    dec a
    ld [hl], l
    ld a, [hl]
    ld a, [c]
    sbc a
    ld a, [$7a8f]
    ld a, a
    ld sp, hl
    adc a
    ld hl, sp-$61
    db $76
    ld a, a
    daa
    ccf
    ld b, $1a
    ld [bc], a
    jr jr_038_4ef3

    inc a
    inc h
    ccf
    inc hl
    ld e, $13
    ld e, $13
    ld c, $0b
    rlca
    dec b
    rrca
    rrca
    inc c
    inc c
    db $10
    db $10
    jr c, jr_038_4f27

    call nz, $9cfc
    db $ec

jr_038_4ef3:
    rrca
    rst $30
    add hl, hl
    rst $38
    ld h, $fe
    ld a, [hl-]
    scf
    ld a, [hl]
    ld b, a
    ei
    adc e
    ld a, h
    ld a, a
    ld de, $121f
    ld e, $0c
    inc c
    nop
    nop
    ld [de], a
    cp $3c
    db $fc
    ld [$e4f8], sp
    db $fc
    jr jr_038_4f2b

    ld b, $f8
    db $f4
    ld [hl], b
    ld [hl], b
    ei
    adc e
    ld a, [hl]
    ld b, a
    ld a, $23
    ld a, [hl]
    ld a, e
    db $fd
    adc a
    ld a, e
    ld b, a
    ld b, $50
    inc c

jr_038_4f27:
    ld a, $3f
    ld [bc], a
    inc bc

jr_038_4f2b:
    inc bc
    inc bc
    inc c
    rrca
    ld b, $68
    rrca
    dec b
    ld b, $00
    inc b
    db $fc
    cp a
    cp $8f
    ld a, [hl]
    ld b, e
    ccf
    ld sp, $0f0e
    ccf
    ld sp, $477e
    ld a, [$669f]
    ld b, $19
    dec bc
    inc l
    ccf
    ld [hl], h
    ld a, a
    xor $9f
    rst $38
    add c
    ld a, [hl]
    ld a, a
    rst $38
    add c
    or $8f
    ld a, d
    ld a, a
    ld h, $06
    add hl, sp
    inc bc
    nop
    ld bc, $3108
    ld sp, $2939
    ld l, $37
    dec hl
    dec a
    ld a, b
    ld c, a
    ld a, [hl]
    ld a, a
    rst $28
    xor l
    sbc e
    cp $fd
    add a
    sub $af
    rst $18
    cp b
    rst $20
    cp b
    ld h, l
    ld a, [hl]
    inc sp
    ccf
    ld b, h
    ld a, h
    ld a, $3e
    cp a
    pop hl
    ld l, e
    push af
    ei
    dec e
    rst $20
    dec e
    and [hl]
    ld a, [hl]
    ret z

    ld hl, sp+$7c
    ld a, h
    ld [$f0fe], sp
    dec sp
    ld a, [hl+]
    ld l, $35
    dec hl
    dec a
    ld a, l
    ld b, a

jr_038_4f9a:
    ld a, a
    ld a, l
    xor $ad
    sbc e
    cp $02
    ld [bc], a
    rlca
    dec b
    dec b
    ld b, $04
    rlca
    scf
    inc [hl]
    ld [hl], a
    ld d, a
    ld c, l
    ld a, l
    cp a
    jp $2020


    ldh a, [$f0]
    ld c, b
    ld hl, sp-$72
    db $76
    sub c
    ld a, a
    cp $ce
    ld a, $e2

jr_038_4fbe:
    inc e
    db $fc
    sub $ab
    call nc, $f8af
    cp a
    ld d, b
    ld e, a
    ld h, h
    ld a, a
    cp e
    rst $00
    ld a, [hl]
    ld a, a
    inc bc
    inc bc
    jr c, jr_038_4f9a

    inc h
    db $fc

jr_038_4fd4:
    inc e
    db $f4
    ld a, h
    db $e4
    inc e
    db $f4
    jr jr_038_4fd4

    jr nz, jr_038_4fbe

    ldh a, [$f0]
    ld [$f0fc], sp
    rlca
    rlca
    rlca
    inc b
    inc [hl]
    scf
    ld [hl], l
    ld d, [hl]
    ld c, a
    ld a, l
    cp e
    rst $00
    add b
    add b
    ld [hl], a
    ld [hl], a
    ret


    rst $38
    adc d
    db $76
    add [hl]
    ld a, [hl]
    cp $de

Jump_038_4ffb:
    ld a, [hl]
    adc $2e
    ld a, [c]
    ld [$0660], sp
    or [hl]
    rst $08
    ld a, h
    ld a, a
    rrca
    rrca
    inc e

jr_038_5009:
    db $fc
    ld [$0272], sp
    inc a
    db $e4
    jr c, jr_038_5009

    ld l, b
    ld hl, sp-$04
    db $fc
    ld [$0200], sp
    inc h
    dec sp
    ld a, h
    ld b, e
    ld a, h
    ld a, a
    add sp, -$51
    sbc [hl]
    rst $38
    add b
    rst $38
    add [hl]
    rst $38
    adc b
    rst $38
    cp b
    rst $38
    ld h, h
    ld a, a
    inc sp
    ld a, $45
    ld a, l
    ld a, $3e
    ld bc, $61ff
    rst $38
    ld de, $0dff
    rst $38
    ld h, $fe
    ld c, b
    ld hl, sp-$44
    ld a, h
    ldh [$e0], a
    ld [$fca0], sp
    nop
    ld bc, $0300
    inc bc
    rrca
    rrca
    ld de, $241f
    ccf
    ld a, $3b
    inc a
    ccf
    ld h, $3d
    ld d, e
    ld e, [hl]
    ret nz

    ret nz

    ldh a, [$f0]
    adc b
    ld hl, sp+$24
    db $fc
    ld a, h
    call c, $fc3c
    ld h, h
    cp h
    ret z

    ld a, b
    xor a
    jp hl


    xor b
    rst $28
    rst $38
    ld hl, sp+$78
    ld a, a
    ld l, a
    ld a, h
    inc [hl]
    ccf
    ld c, $0f
    ld bc, $f001
    sub b
    inc e
    db $fc
    ld a, [c]
    ld a, $2f
    rst $38
    cp a
    ld a, a
    inc sp
    rst $38
    ld [c], a
    ld e, $fc
    db $fc
    inc bc
    inc bc
    rlca
    rlca
    ld [$100f], sp
    rra
    rra
    ld e, $1f
    ld e, $11
    ld e, $28
    cpl
    nop
    stop
    ld a, b
    ld hl, sp+$16
    cp $39
    rst $28
    sub c
    ld a, a
    adc $72
    inc a
    db $fc
    ld e, a
    ld a, a
    ld d, a
    ld [hl], a
    ld [hl], c
    ld [hl], c
    ld a, h
    ld a, h
    ld l, a
    ld a, a
    ld h, $3f
    inc e
    rra
    rlca
    rlca
    ld hl, sp+$08
    db $fc
    add h
    ld [bc], a
    cp $de
    ld [c], a
    cp $e2
    jp nz, Jump_038_7cfe

    call nz, $f8f8
    nop
    ld b, b
    ld a, [bc]
    ld c, b
    ld c, a
    nop
    ld d, b
    inc c
    xor a
    rst $28
    and e
    db $e3
    ldh [$e0], a
    ldh a, [$f0]
    ld e, a
    nop
    ld l, c
    ld bc, $0303
    db $fc
    adc h
    cp $c2
    add c
    rst $38
    ld a, a
    ld [hl], c
    rst $38
    pop af
    pop bc
    rst $38
    ld e, d
    and $00
    ld a, $00
    inc b
    rlca
    jr jr_038_5111

    ccf
    ccf
    ccf
    ccf
    jr nz, jr_038_5137

    jr nz, jr_038_5139

jr_038_50fa:
    rra
    rra

Call_038_50fc:
    ret nz

    ret nz

    jr nz, @-$1e

    jr jr_038_50fa

    db $fc
    db $fc
    db $fc
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld a, [$0ffa]
    rrca
    inc a
    ccf
    ld b, a

jr_038_5111:
    ld a, a
    cp c
    rst $38
    rst $38
    rst $38
    ld h, e
    ld a, a
    ld l, $3f
    rra
    rra
    push af
    rst $30
    dec [hl]
    rst $30
    rst $38
    rst $38
    ei
    rst $38
    ld [c], a
    cp $2c
    db $fc
    ld [hl], b
    ldh a, [$80]
    add b
    nop
    ld bc, $0001
    nop
    inc b
    inc b
    ld b, $06
    dec e
    rra

jr_038_5137:
    dec d
    rra

jr_038_5139:
    ld [hl], l
    ld a, a
    ld e, c
    ld a, a
    ld l, h
    ld a, a
    nop
    nop
    ld e, h
    ld e, h
    add sp, -$08
    ld [hl], b
    ldh a, [$50]
    ldh a, [$5c]
    db $fc
    inc [hl]
    db $fc
    ld l, h
    db $fc
    cp [hl]
    ei
    call $87fb
    cp $46
    ld a, a
    cp a
    db $fd
    rst $38
    cp $b9
    jp hl


    ld a, b
    ld a, b
    ld a, [$66be]
    cp [hl]
    jp nz, $fcfe

    db $fc
    sbc $7e
    ld a, [$1eee]
    ld e, $01
    ld a, [$0ff4]
    rrca
    ld a, [de]
    dec de
    ld [hl], c
    ld [hl], c
    ld d, a
    ld [hl], a
    or h
    rst $30
    ld bc, $f0fe
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ret nc

    ldh a, [$50]
    ldh a, [$a8]
    ld hl, sp-$2c
    db $fc
    cp e
    rst $38
    push hl
    rst $38
    di
    rst $38
    ld c, c
    ld a, a
    ld [hl], h
    ld a, a
    cp a
    rst $28
    cp [hl]
    sbc $78
    ld a, b
    ld [hl], h
    db $fc
    rst $38
    rst $18
    ld l, a
    db $dd
    di
    rst $38
    adc c
    rst $38
    ld a, l
    rst $38
    sbc $f6
    db $fc
    db $fc
    nop
    nop
    inc c
    inc c
    dec de
    dec de
    ld [hl-], a
    inc sp
    ld h, c
    ld h, c
    ld h, a
    ld h, a
    db $e4
    and a
    sub a
    rst $30
    ld bc, $0a52

jr_038_51bc:
    ld [hl], h
    db $fc
    reti


    cp a
    and l
    rst $38
    ld [hl], e
    ld a, a
    ld c, c
    ld a, a
    ld h, l
    ld a, a
    ld a, a
    ld a, a
    ld b, a
    ld a, l
    ccf
    ccf
    ld bc, $0272
    ld hl, $1dff
    rst $38
    or $fa
    ld l, [hl]
    sbc $fe
    cp $01
    nop
    inc b
    rra
    rra
    db $76
    ld a, a
    ld e, e
    ld a, [hl]
    ld h, h
    ld bc, $030f
    ret z

    cp b
    jr nc, jr_038_51bc

    call c, $343c
    db $fc
    db $ec
    inc a
    xor h
    rst $38
    jp z, $b9fd

    cp $44
    ld a, a
    adc [hl]
    db $fd
    cp $ff
    ld bc, $002c
    ld a, [hl-]
    cp $66
    cp [hl]
    or d
    ld a, [hl]
    inc a
    db $fc
    sbc $7e
    ld [$01fe], a
    inc a
    nop
    nop
    ld bc, $1902
    add hl, de
    dec d
    dec e
    ld a, [bc]
    rrca
    ld e, [hl]
    ld d, a
    db $eb
    xor l
    and h
    rst $20
    or $95
    db $db
    xor [hl]
    db $dd
    or e
    db $fc
    xor a
    rst $18
    cp b
    ld hl, sp-$59
    ld a, l
    ld h, [hl]
    ccf
    inc sp
    ld a, h
    ld b, h
    ld a, b
    ld a, b
    cp e
    call $f53f
    ei
    dec e
    rra
    push hl
    cp [hl]
    ld h, [hl]
    ret z

    ld hl, sp+$7c
    ld a, h
    ld [bc], a
    cp $f0
    rla
    ld e, $0e
    dec c
    ld e, a
    ld d, l
    db $ed
    xor a
    and a
    push hl
    ld [bc], a
    inc c
    nop
    nop
    nop
    ld bc, $0001
    nop
    jr nc, jr_038_5289

    ld [hl], c
    ld d, c
    adc a
    cp $ff
    add d
    push de
    xor d
    sub b
    sub b
    ld l, b
    ld hl, sp-$58
    ld hl, sp-$2c
    db $fc
    sbc $2e
    pop af
    rra
    cp $4e
    sbc $62
    rst $10
    xor h
    rst $18
    cp b
    rst $38
    or b
    ld e, a
    ld d, b
    ccf
    inc h
    ld a, e
    ld b, a
    rst $28
    sbc [hl]
    ld [hl], e
    ld [hl], e
    db $fc
    inc a
    ldh a, [$50]
    ld hl, sp-$58
    add sp, $78

jr_038_5289:
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$f0]
    ld [bc], a
    ld a, [$01f2]
    ld bc, $3131
    ld [bc], a
    ld c, b
    nop
    ei
    add [hl]
    ld b, b
    ld b, b
    and b
    ldh [$d6], a
    or $2a
    cp $ca
    or $c4
    inc a
    ld hl, sp+$18
    ld hl, sp+$48
    push de
    xor d
    rst $10
    xor h
    rst $18

jr_038_52b2:
    cp c
    rst $38
    or b
    ld e, a
    ld h, h
    ei

jr_038_52b8:
    add [hl]
    ld a, a
    ld a, h
    rlca
    rlca
    db $ec
    inc [hl]
    ld hl, sp-$68
    ldh a, [$50]
    ret z

    ld hl, sp-$18
    jr c, jr_038_52b8

    jr nc, jr_038_52b2

    ld a, b
    db $fc
    db $fc
    ld [bc], a
    nop
    nop
    dec bc
    ld c, $5f
    ld d, h
    db $eb
    xor h
    and l
    and $f5
    sub [hl]
    rst $38
    adc [hl]
    rst $38
    add b
    db $ed
    sub d
    db $dd
    cp [hl]
    db $eb
    or h
    ld a, l
    ld h, [hl]
    dec sp
    ld [hl], $7f
    ld b, a
    ld a, b
    ld a, b
    rst $38
    ld bc, $49b7
    cp e
    ld a, l
    rst $18
    dec h
    and [hl]
    ld a, [hl]
    ret c

    jr c, @+$7e

    add h
    cp $fe
    ld [bc], a
    and b
    db $fc

Call_038_52ff:
    nop
    ld bc, $0c04
    inc c
    ld c, $0e
    rrca
    rrca
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    rra
    dec e
    ld a, [bc]
    rrca
    dec b
    rlca
    jr jr_038_532c

    jr c, jr_038_534e

    ld a, b
    ld a, b
    rst $30
    rst $30
    cp $fe
    db $fc
    call c, $fb2b
    push de
    rst $30
    inc bc
    ld [bc], a
    dec sp
    dec sp
    ld b, [hl]
    ld a, a
    add d
    rst $38
    adc h
    rst $38

jr_038_532c:
    jp Jump_038_7fbc


    ld b, c
    ld a, $3e
    push hl
    daa
    push hl
    rst $20
    cp e
    ld a, l
    and [hl]
    ld a, d
    xor d
    db $76
    db $fc
    ld c, h
    ldh a, [$f0]
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld c, $0e
    rlca
    rlca
    inc bc
    inc bc

jr_038_534e:
    ld h, c
    ld h, c
    ld d, c
    ld [hl], c
    add b
    add b
    ret z

    ret z

    db $ec
    db $ec
    db $fc
    db $fc
    db $f4
    db $fc
    ld a, [$97ee]
    ld sp, hl
    ld a, $ce
    ld d, c
    ld [hl], c
    ld [hl], d
    ld d, e
    ld l, d
    ld e, e
    scf
    ld l, $3b
    ld h, $1d
    inc de
    rrca
    inc c
    inc bc
    inc bc
    ld a, [hl]
    and d
    call c, $bc3c
    ld a, h
    jp nz, $b17e

    ld a, a
    db $e3
    dec e
    cp $82
    db $fc
    db $fc
    inc b
    ld b, b
    ld [$1111], sp
    add hl, hl
    add hl, sp
    inc b
    ld d, b
    inc c
    ld c, c
    ld a, c
    ld [hl], d
    ld d, e
    ld [hl], h
    ld d, a
    ld l, l
    ld e, [hl]
    ld h, l
    ld e, [hl]
    inc [hl]
    cpl
    ld e, $13
    rrca
    rrca
    inc b
    ld [hl], b
    nop
    cp b
    ld a, b
    call nz, $e27c
    ld a, [hl]
    add $3a
    ld a, h
    add h
    ld hl, sp-$08
    jr jr_038_53c5

    inc e
    inc e
    ld e, $1e
    rst $28
    rst $28
    ld a, a
    ld a, a
    ccf
    ccf
    sbc $df
    ld [$30af], a
    jr nc, jr_038_542e

    ld [hl], b
    ldh a, [$f0]
    xor $ee
    db $fc
    db $fc

jr_038_53c5:
    ld hl, sp-$08
    ldh a, [$f0]
    and b
    ldh [$e8], a
    xor a
    db $e4
    and a
    sbc $bf
    ld h, e
    ld e, a
    ld [hl], b
    ld c, a
    ld a, $31
    rrca
    ld c, $01
    ld bc, $e020
    db $fc
    db $fc
    ld [bc], a
    cp $e1
    rst $38
    add hl, de
    rst $38
    ld bc, $c2ff
    ld a, $fc
    db $fc
    nop
    ld bc, $e101
    pop hl
    sbc d
    ei
    ld b, [hl]
    ld a, a
    ld a, b
    ld a, a
    ld [hl], $2f
    dec de
    rla
    dec e
    rla
    ld a, [hl-]
    dec l
    ld a, [hl-]
    cpl
    dec [hl]
    cpl
    ld a, a
    ld b, l
    rst $38
    cp [hl]
    ld c, c
    ld c, a
    add hl, bc
    ld c, $07
    inc b
    inc bc
    inc bc
    ld bc, $0e00
    scf
    dec l
    ld a, a
    ld b, [hl]
    db $fd

jr_038_5416:
    cp a
    ld b, l

jr_038_5418:
    ld b, [hl]
    add hl, bc
    ld c, $0b
    inc c
    rlca
    rlca
    jr jr_038_5439

    ld h, $3e
    add hl, de
    rra
    inc e
    rla
    rrca
    dec bc
    rrca
    ld [$4c4b], sp
    rst $20

jr_038_542e:
    and h
    ld bc, $f0fc
    ret nz

    ret nz

    jr nz, jr_038_5416

    jr nz, jr_038_5418

    sbc b

jr_038_5439:
    ld a, b
    ld c, $f6
    sub c
    rst $38
    rst $30
    sub h
    rst $38
    xor h
    rst $38
    cp h
    rst $10
    or l
    ld l, a
    ld e, e
    ld [hl], h
    ld c, a
    ccf
    jr nc, jr_038_545c

    rrca
    ld a, [hl]
    sbc $fe
    ld c, [hl]
    cp $b2
    ld l, h
    sbc h
    jr c, @-$36

    jr c, @-$36

    ldh a, [rNR10]

jr_038_545c:
    ldh [$e0], a
    ld bc, $0840
    dec bc
    inc c
    rlca
    inc b
    ld bc, $0c50
    rst $00
    call nz, $b4f7
    rst $38
    adc h
    rst $30
    or l
    rst $18
    cp e
    ld bc, $036a
    adc $fe
    ld h, d
    call c, Call_038_68bc
    sbc b
    cp h
    call nz, $c43c
    ld hl, sp+$08
    ldh a, [$f0]
    ld bc, $0000
    ld b, a
    ld a, a
    jr nz, jr_038_54ca

    inc hl
    ccf
    rla
    inc e
    inc de
    rra
    jr nz, jr_038_54d2

    add a
    add a
    ld e, c
    rst $18
    ld h, d
    cp $e4
    cp h
    db $fc
    inc e
    db $fc
    and h
    ld hl, sp-$48
    db $e4
    cp h
    jr nz, @+$41

    dec h
    ccf
    ld c, c
    ld a, a
    cp d
    rst $38
    ld c, b
    ld c, a
    dec bc
    inc c
    dec b
    ld b, $03
    inc bc
    db $e4
    cp h
    ld h, h
    cp h
    ld [c], a
    ld a, $dd
    ccf
    jp nc, $d032

    jr nc, @-$5e

    ld h, b
    ret nz

    ret nz

    nop
    ld bc, $7100
    ld [hl], c
    db $fd
    db $fd

jr_038_54ca:
    ccf
    ccf
    ld a, l
    ld a, a
    ld [$160f], sp
    dec de

jr_038_54d2:
    ld d, $1d
    dec bc
    rrca
    inc e
    rra
    dec sp
    cpl
    ld l, a
    ld d, h
    jr z, jr_038_551d

    ccf
    jr c, jr_038_552d

    ld a, a
    scf
    jr c, jr_038_5504

    rra
    jr c, @-$06

    call c, $f6f4
    ld a, [hl+]
    inc d
    db $fc
    ld hl, sp+$18
    db $10
    ldh a, [$e0]
    ld h, b
    add b
    add b
    nop
    nop
    ld a, [bc]
    dec sp
    cpl
    ld l, l
    ld d, a
    ld l, $3f
    daa
    add hl, sp
    jr jr_038_5522

    rrca

jr_038_5504:
    ld [$0f08], sp
    rlca
    ld b, $01
    ld bc, $eab6
    ld d, h
    db $fc
    and h
    db $fc
    jr @-$06

    db $fc
    inc e
    ld [hl-], a
    cp $ec
    inc e
    ld hl, sp-$08
    rlca
    rlca

jr_038_551d:
    rrca
    rrca
    inc bc
    inc bc
    rlca

jr_038_5522:
    rlca
    ld bc, $6800
    inc bc
    jr nz, jr_038_5549

    ldh [$e0], a
    ld hl, sp-$08

jr_038_552d:
    call z, $84fc
    db $fc
    ld a, [de]
    xor $22
    cp $1c
    db $fc
    rlca
    rlca
    nop
    ld h, h
    nop
    ld [hl-], a
    inc sp
    ld l, $3f
    ld hl, $1e3f
    rra
    rlca
    rlca
    call nz, $f8fc

jr_038_5549:
    cp b
    or h
    ld e, h
    cp [hl]
    ld a, [c]
    ld h, d
    cp $fe
    jp nz, $fc04

    ld hl, sp-$08
    rrca
    rrca
    ld b, $07
    ld e, $1f
    db $ec
    rst $28
    sbc b
    rst $38
    rst $00
    rst $38
    ld a, b
    ld a, a
    rra
    rra
    xor h
    db $fc
    db $f4
    call c, $acdc
    ld e, h
    db $f4
    db $e4
    db $fc
    ld hl, sp+$08
    db $10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc b
    add hl, bc
    rrca
    ld de, $111f
    rra
    add hl, bc
    rrca
    adc [hl]
    adc [hl]
    cp a
    cp a
    db $fc
    db $fc
    cp [hl]
    cp $90
    ldh a, [$88]
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [rTIMA]
    rlca
    rla
    rla
    dec l
    ccf
    ld c, e
    ld a, a
    dec sp
    ccf
    ld c, [hl]
    ld a, a
    jr nc, jr_038_55de

    rra
    rra
    and b
    ldh [$e8], a
    add sp, -$4c
    db $fc
    ld [de], a
    cp $1c
    db $fc
    jr nz, @-$1e

    jr nz, @-$1e

    ret nz

    ret nz

    nop
    ld bc, $0602
    ld b, $0f
    rrca
    ld de, $1d1f
    rra
    ld hl, $2f3f
    ccf
    ld a, $3f
    inc hl
    ccf
    nop
    nop
    jr nc, jr_038_55f8

    ld a, b
    ld a, b
    ld b, h
    ld a, h
    call c, $c2fc
    cp $f2
    cp $fa
    cp $73
    ld a, a
    add a
    rst $38
    add l
    rst $38
    ld a, l
    ld a, a
    and $ff

jr_038_55de:
    inc h
    ccf
    ld a, [hl+]
    ccf
    ld d, l
    ld a, l
    call nz, $eefc
    cp $a1
    rst $38
    and c
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    ld l, d
    cp $80
    add b
    ld [bc], a
    ld a, [$01f2]

jr_038_55f8:
    ld bc, $0303
    ld b, $07
    ld c, $0f
    inc d
    rra
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    call nz, $dcfc
    db $fc
    ld [hl+], a
    cp $f2
    cp $1a
    cp $2a
    ccf
    ld sp, $603f
    ld a, a
    ld b, h
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    ld a, a
    ld l, e
    ld a, a
    push af
    rst $38
    inc d
    db $fc
    ld e, $fe
    pop hl
    rst $38
    ld hl, $1fff
    rst $38
    add [hl]
    cp $d7
    rst $38
    xor a
    rst $38
    ld [bc], a
    ld b, h
    nop
    ld [bc], a
    ld b, [hl]
    nop
    rlca
    rlca
    rrca
    rrca
    inc e
    rra
    dec l
    ccf
    ldh [$e0], a
    ldh a, [$f0]
    ld [$38f8], sp
    ld hl, sp-$7c
    db $fc
    db $f4
    db $fc
    ld a, h
    db $fc
    call nz, Call_038_50fc
    ld a, a
    ld h, h
    ld a, a
    jp nz, $81ff

    rst $38
    add h
    rst $38
    add h
    rst $38
    rst $10
    rst $38
    xor b
    ld hl, sp+$2e
    cp $21
    rst $38
    ld hl, $feff
    cp $04
    db $fc
    ld b, d
    cp $ea
    cp $75
    ld a, a
    ld [bc], a
    nop
    nop
    inc de
    rra
    inc de
    rra
    inc hl
    ld [bc], a
    add hl, bc
    ld bc, $0227
    rrca
    inc bc
    ld h, h
    ld a, h
    db $e4
    db $fc
    ld [c], a
    ld [bc], a
    dec de
    ld bc, $7f66
    adc d
    rst $38
    sub b
    rst $38
    ld [hl], b
    ld a, a
    ldh [rIE], a
    inc h
    ccf
    dec hl
    ccf
    ld d, h
    ld a, h
    ld [hl], h
    db $fc
    ld d, [hl]
    cp $49
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    scf
    rst $38
    ld [$00fe], a
    nop
    nop
    ld bc, $3001
    jr nc, jr_038_56c4

    jr jr_038_56c5

    rra
    inc e
    rra
    ld c, $0b
    ld e, h
    ld e, a
    rst $10
    rst $18
    rst $38
    ldh a, [$af]
    cp b
    ld a, a
    ld a, a
    sub d
    rst $38
    ld a, a
    ld a, a
    ld c, e
    ld a, a
    adc h

jr_038_56c4:
    rst $38

jr_038_56c5:
    ei
    xor a
    ld a, [hl]
    ld a, [hl]
    ld [$fe3a], a
    cp $a3
    rst $38
    ld [c], a
    cp $c3
    dec a
    cp $c2
    inc a
    db $fc
    ld hl, sp-$08
    ld bc, $0410
    inc sp
    ccf
    jr z, jr_038_571f

    daa
    ccf
    ld a, $3e
    ld bc, $0820
    ld a, $fe
    db $fc
    db $fc
    inc c
    inc c
    rlca
    rlca
    ld b, $05
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec bc
    dec bc
    inc e
    rra
    ld e, $1f
    ld bc, $f0fc
    ld hl, sp-$08
    ld d, h
    db $fc
    cp e
    rst $28
    ld [hl], c
    rst $38
    rst $38
    adc a
    rst $38
    add c
    ld a, [hl+]
    cpl
    ld [$900f], sp
    sbc a
    jp nc, $a2df

    rst $38
    rst $08
    or l
    rst $38
    rst $08
    ld [hl], a
    ld [hl], a
    ld a, a
    pop bc
    ld a, $fe
    db $d3

jr_038_571f:
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    db $dd
    cp [hl]
    ld [c], a
    cp $be
    db $fc
    db $fc
    ld a, [hl+]
    cpl
    ld c, b
    ld c, a
    ld [hl], c
    ld a, a
    ld d, b
    ld a, a
    ld d, h
    ld a, a
    daa
    ccf
    cpl
    dec a
    rra
    rra
    ld bc, $0680
    cp $e2
    call c, $fc7c
    db $fc
    ld bc, $0200
    ld a, [de]
    rla
    ld a, [bc]
    rrca
    ld e, h
    ld e, a
    ret nc

    rst $18
    db $f4
    rst $38
    ld e, h
    ld e, a
    ld a, b
    ld a, a
    db $dd
    rst $38
    ld d, d
    ld a, a
    xor d
    rst $38
    ld b, a
    ld a, [hl]
    ld a, a
    ld d, a
    ccf
    ccf
    dec e
    db $fd
    ld c, $fe
    dec h
    rst $38
    ld [hl], $fe
    inc e
    db $fc
    inc c
    db $fc
    call nz, Call_038_7cbc
    ld a, h
    ld bc, $00c0
    jp nc, $56ff

    ld a, a
    sbc h
    rst $38
    ld e, b
    ld a, a
    ld sp, $1f3e
    rra
    ld bc, $00d0
    ld e, l
    rst $38
    ld h, $fe
    ld a, [hl+]
    cp $71
    cp a
    rst $38
    push af
    ld a, [hl]
    ld a, [hl]
    nop
    ld bc, $0301
    inc bc
    ld h, h
    ld h, a
    ld e, c
    ld a, a
    ld e, l
    ld a, a
    ld a, [hl+]
    ccf
    ld a, [hl+]
    ccf
    ld l, [hl]
    ld a, a
    ld d, l
    ld a, a
    add a
    add a
    ret


    rst $08
    ld c, d
    adc $5e
    sbc $b4
    db $fc
    or d
    cp $da
    cp $51
    rst $38
    ld h, h
    ld a, a
    ld [hl], l
    ld a, a
    xor [hl]
    rst $38
    or c
    rst $38
    or l
    rst $38
    ld e, e
    ld a, a
    ld [hl], c
    ld a, a
    ld l, [hl]
    ld l, [hl]
    db $dd
    rst $38
    ld sp, hl
    rst $38
    xor c
    rst $38
    and d
    cp $b2
    cp $7c
    db $fc
    or b
    or b
    nop
    nop
    sbc h
    sbc h
    jp nc, Jump_038_6ade

    xor $67
    rst $20
    sub l
    rst $30
    sbc c
    rst $38
    db $dd
    rst $38
    ld d, c
    rst $38
    reti


    rst $38
    pop af
    rst $38
    cp d
    cp $b2
    cp $a4
    db $fc
    ld a, b
    ld hl, sp+$01
    inc a
    nop
    pop hl
    pop hl
    sub e
    di

jr_038_57f4:
    ld d, d
    ld [hl], e
    ld a, d
    ld a, e
    inc l
    ccf
    ld c, l
    ld a, a
    ld e, c
    ld a, a
    adc d
    rst $38
    ret nz

    ret nz

    jr nc, jr_038_57f4

    ld l, b
    ld hl, sp+$28
    ld hl, sp+$44
    db $fc
    ld [hl], h
    db $fc
    inc [hl]
    db $fc
    ld a, h
    db $fc
    ld b, d
    cp $fa
    cp $d4
    db $fc
    ld c, [hl]
    cp $f3
    rst $38
    dec b
    rst $38
    ld sp, hl
    rst $38
    ld c, $0e
    add hl, sp
    add hl, sp
    ld c, d
    ld a, e
    ld d, h
    ld [hl], a
    push hl
    rst $20
    xor c
    rst $28
    sbc d
    rst $38
    cp d
    rst $38
    adc d
    rst $38
    pop hl
    pop hl
    sub d
    di
    ld d, h
    ld [hl], a
    ld a, [hl]
    ld a, a
    inc l
    ccf
    ld l, a
    ld e, a
    ld l, d
    ld a, e
    jp nc, $c0f3

    ret nz

    and [hl]
    and $1a
    cp $4a
    cp $64
    call c, $bc74
    db $76
    xor $72
    cp [hl]
    db $d3
    or e
    jp nc, $ccf3

    cp a
    ld h, h
    ld a, a
    ld [hl], c
    ld e, a
    ccf
    dec [hl]
    ld c, $0e
    nop
    nop
    db $76
    xor $77
    cp a
    ld [hl], l
    rst $28
    rst $30
    rst $18
    ei
    ld l, a
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld [hl], b
    ld bc, $0290
    and $e7
    and h
    rst $20
    sub $b7
    call nc, $d2f7
    or e
    set 7, e
    call z, Call_038_66bf
    ld a, a
    ld h, b
    ld e, a
    ld a, $2b
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld h, h
    ld h, a
    ld a, e
    ld e, l
    ld a, a
    ld e, l
    dec sp
    ld l, $3f
    ld a, [hl+]
    ld a, a
    ld l, [hl]
    ld a, a
    ld d, l
    add a
    add a
    ret


    rst $08
    ld c, d
    adc $de
    ld e, [hl]
    cp h
    db $f4
    or $ba
    sbc $fa
    rst $30
    ld e, c
    ld a, a
    ld h, h
    ld a, a
    ld [hl], l
    rst $38
    xor [hl]
    rst $38
    or c
    rst $38
    or l
    ld a, a
    ld e, e
    ld a, a
    ld [hl], c
    ld l, [hl]
    ld l, [hl]
    rst $38
    db $dd
    ei
    db $fd
    db $eb
    cp l
    or $aa
    cp $b2
    db $fc
    ld a, h
    or b
    or b
    nop
    nop
    sbc h
    sbc h
    jp nc, Jump_038_6ade

    xor $e7
    ld h, a
    rst $10
    or l
    db $db
    cp l
    rst $38
    db $dd
    di
    ld e, l
    ei
    db $dd
    di
    db $fd

Call_038_58e4:
    cp $ba
    or $ba
    db $fc
    and h
    ld hl, sp+$78
    ld bc, $003c
    pop hl
    pop hl
    sub e
    di

jr_038_58f3:
    ld d, d
    ld [hl], e
    ld a, e
    ld a, d
    dec a
    ld l, $6f
    ld e, l
    ld a, e
    ld e, l
    rst $28
    sbc d
    ret nz

    ret nz

    jr nc, jr_038_58f3

    ld hl, sp+$68
    cp b
    ld l, b
    db $f4
    ld c, h
    db $fc
    ld [hl], h
    inc a
    db $f4
    db $fc
    ld a, h
    sbc $62
    cp $fa
    call c, Call_038_7ef4
    adc $ff
    di
    rst $38
    dec b
    ei
    db $fd
    ld c, $0e
    add hl, sp
    add hl, sp
    ld c, d
    ld a, e
    ld d, l
    db $76
    rst $20
    push hl
    db $eb
    xor l
    rst $18
    cp d
    rst $38
    cp d
    rst $08
    cp d
    pop hl
    pop hl
    sub d
    di
    ld d, l
    db $76
    ld a, a
    ld a, [hl]
    dec a
    ld l, $7f
    ld c, a
    ld l, d
    ld a, e
    ld a, [c]
    db $d3
    ret nz

    ret nz

    and [hl]
    and $fa
    ld e, $fa
    ld c, [hl]
    db $f4
    ld c, h
    db $fc
    inc [hl]
    cp $66
    ld a, [$f336]
    sub e
    ld a, [c]
    db $d3
    db $ed
    sbc [hl]
    ld [hl], a
    ld l, h
    ld a, a
    ld d, c
    ccf
    dec [hl]
    ld c, $0e
    nop
    nop
    cp $66
    rst $38
    scf
    rst $38
    ld h, l
    rst $38
    rst $10
    rst $38
    ld l, e
    ei
    db $fd
    rst $38
    rst $38
    ld [hl], b
    ld [hl], b
    ld bc, $0390
    and $e5
    and [hl]
    rst $10
    or [hl]
    db $f4
    rst $10

Jump_038_5979:
    ld a, [c]
    sub e
    db $eb
    db $db
    db $fc
    adc a
    ld [hl], a
    ld l, [hl]
    ld a, a
    ld b, b
    ccf
    ld a, [hl+]
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    ld bc, $0004
    nop
    ld [$0b08], sp
    dec bc
    inc e
    rra
    ld l, $3f
    ld d, a
    ld a, e
    ld e, h
    ld [hl], a
    sbc b
    rst $38
    nop
    nop
    inc hl
    inc hl
    and l
    and a
    ld a, l
    rst $38
    jp hl


    rst $38
    push de
    cp a
    db $76
    sbc $32
    cp $bf
    rst $38
    cp [hl]
    db $ed
    xor [hl]
    db $fd
    ld b, [hl]
    ld a, l
    ld b, e
    ld a, a
    jr c, jr_038_59f9

    ld a, a
    ld d, a
    ld a, h
    ld a, h
    ld a, [$fafe]
    ld l, [hl]
    ld [$c47e], a
    ld a, h
    add h
    db $fc
    inc a
    db $fc
    ret nz

    ret nz

    inc b
    cp $f0
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld d, c
    ld [hl], c
    ld c, [hl]
    ld a, a
    ld c, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    add b
    add b

jr_038_59df:
    add b
    add b
    ret z

    ret z

    ld hl, sp-$08
    jr c, jr_038_59df

    ld e, h
    db $ec
    ld [hl], d
    sbc $72
    cp $69
    ld a, a
    add hl, hl
    ccf
    add hl, hl
    ccf

Jump_038_59f3:
    inc h
    ccf
    inc de
    rra
    cpl
    ccf

jr_038_59f9:
    inc a
    inc a
    nop
    nop
    ld a, a
    rst $38

Jump_038_59ff:
    dec a
    db $db
    dec a
    db $db
    adc l
    ei
    cp [hl]
    cp $f8
    ret z

    db $fc
    add h
    db $fc
    db $fc
    ld e, $1e
    inc h
    inc a
    ld c, b
    ld a, b
    ld c, c
    ld a, c
    adc [hl]
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    inc b
    ld h, b
    ld b, $0f
    rrca
    rrca
    ld [$0f0f], sp
    inc b
    ld [hl], b
    inc b
    adc [hl]
    cp $f8
    ld hl, sp-$80
    add b
    inc b
    inc a
    nop
    ld b, h
    ld b, h
    ld h, l
    ld h, l
    ld e, [hl]
    ld a, a
    ld d, h
    ld a, a
    ld c, b
    ld a, a
    ld h, h
    ld a, a
    ld d, d
    ld a, a

jr_038_5a40:
    nop
    nop
    db $10
    db $10
    ret nc

    ret nc

    jr c, jr_038_5a40

    inc d
    db $fc
    ld [bc], a
    cp $02
    cp $01
    rst $38
    ld d, c
    ld a, a
    ld l, b
    ld a, a
    ld h, h
    ld a, a
    inc hl
    ccf
    jr nz, jr_038_5a99

    inc e
    rra
    inc bc
    inc bc
    nop
    nop
    add l
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    cp $e2
    cp $1c
    db $fc
    cp $ea
    ld a, $3e
    inc b
    and b
    db $fc
    nop
    ld bc, HeaderLogo
    ld bc, $0302
    scf
    ld [hl], $6a
    ld e, a
    ld h, a
    ld e, [hl]
    ld [hl-], a
    cpl
    inc a
    daa
    ld e, d
    ld a, a
    ret z

    rst $38
    and a
    db $fd
    rst $20
    cp $fd
    sbc e
    rst $38
    adc a
    ld a, h
    ld h, h
    jr jr_038_5aac

    inc b
    db $fc
    ld a, [c]
    ld [de], a
    inc de

jr_038_5a99:
    cpl
    ld a, $36
    cpl
    inc sp
    ld l, $7a
    ld h, a
    sbc h
    rst $30
    sbc d
    rst $38
    adc b
    rst $38
    and a
    db $fd
    ld h, a
    ld a, [hl]
    daa

jr_038_5aac:
    ccf
    ld e, $12
    ld e, $12
    inc c
    inc c
    inc b
    ld hl, sp-$0c
    inc bc
    inc bc
    dec c
    rrca
    ld [de], a
    rra
    inc d
    rra
    jr nz, jr_038_5ae0

    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld hl, sp-$38
    inc [hl]
    db $fc
    ld b, d
    cp [hl]
    ld b, l
    rst $38
    daa
    ccf
    ld h, d
    ld a, a
    db $e4
    cp a
    ld h, b
    ld a, a
    ld hl, $113f
    rra
    rrca
    rrca
    nop
    nop
    pop bc
    rst $38

jr_038_5ae0:
    cpl
    di
    dec sp
    db $fd
    ld a, $fe
    ld a, h
    db $e4
    ld a, b
    adc b
    ldh a, [$30]
    ret nz

    ret nz

    inc b
    ld b, h
    ld [bc], a
    ld b, $05
    ld b, $05
    db $db
    sbc $e3
    cp [hl]
    pop bc
    rst $38
    inc b
    ld d, b
    ld [bc], a
    ret nc

    ldh a, [$78]
    ret z

    inc [hl]
    db $fc
    jp nz, $c53e

    ccf
    add b
    rst $38
    add h
    rst $38
    add d
    rst $38
    ld b, d
    ld a, a
    ld h, h
    ld a, a
    ld c, a
    ld a, a
    ld a, a
    ld b, c
    ld a, [hl]
    ld a, [hl]
    pop bc
    rst $38
    ccf
    ei
    ld e, a
    push hl
    ld e, $fe
    ldh [$e0], a
    inc b
    ld a, [$03f4]
    ld [bc], a
    scf
    scf
    ld l, h
    ld e, a
    ld [hl], b
    ld e, a
    jr nz, jr_038_5b6e

    ld h, b
    ld a, a
    and b
    rst $38
    add c
    rst $38
    add e
    cp $43
    ld a, [hl]
    ld d, c
    ld a, a
    db $ec
    sbc a
    ld a, a
    ld a, a
    inc b
    ld hl, sp-$0a
    rla
    rla
    inc a
    cpl
    jr nc, jr_038_5b87

    jr nz, jr_038_5b89

    ld hl, $433f
    ld a, [hl]
    ld h, e
    ld a, [hl]
    pop af
    rst $18
    ldh [$9f], a
    ld hl, sp-$61
    rst $30
    sub a
    ld h, b
    ld h, b
    nop
    nop
    nop
    ld bc, $2c09
    inc l
    ld e, e
    ld a, a
    adc b
    rst $38
    ld e, [hl]
    ld a, l
    xor c
    rst $38
    xor d
    rst $38
    or h
    rst $38
    db $e3

jr_038_5b6e:
    rst $38
    or b
    cp a
    jr z, @+$41

    ld b, h
    ld a, a
    cpl
    ccf
    ld a, [hl+]
    dec sp
    ld [de], a
    inc de
    ld bc, $0001
    nop
    dec c
    db $fd
    inc d
    db $fc
    ld [hl+], a
    cp $f4
    db $fc

jr_038_5b87:
    sub h
    sbc h

jr_038_5b89:
    ld a, b
    ld hl, sp+$04
    db $fc
    ld hl, sp-$08
    add hl, bc
    nop
    inc b
    ret


    rst $38
    xor e
    rst $38
    or l
    rst $38
    ld [c], a
    rst $38
    or c
    add hl, bc
    ld de, $1105
    ld de, $fc09
    ldh a, [$8d]
    add hl, bc
    ld hl, $7403
    db $fc
    adc b
    ld hl, sp+$74
    ld a, h
    ld [$0808], sp
    ld [$1c14], sp
    inc hl
    ccf
    ld d, $1f
    ld a, [hl+]
    ccf
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld e, h
    ld a, a
    ret nz

    ret nz

    or b
    ldh a, [$08]
    ld hl, sp+$18
    add sp, $24
    db $fc
    inc a
    db $fc
    adc b
    ld hl, sp+$78
    ld hl, sp+$68
    ld l, a
    ld b, h
    ld b, a
    ld [bc], a
    inc bc
    dec c
    rrca
    inc de
    rra
    inc l
    inc a
    jr nc, jr_038_5c0d

    nop
    nop
    inc b
    db $fc
    ld a, [bc]
    cp $11
    rst $38
    ld [$1afe], a
    ld e, $04
    inc b
    add hl, bc
    db $fc
    ldh a, [$09]
    ld [hl], b
    nop
    add hl, bc
    db $76
    ld [bc], a
    jr c, @-$06

    sbc b
    add hl, bc
    ld a, l
    inc bc
    ld b, $07
    dec b
    rlca
    dec d
    rla
    add hl, hl
    ccf
    ld [hl+], a
    ld a, $1c
    inc e
    add hl, bc
    nop
    ld [bc], a
    ld e, b
    ld a, a
    ld c, b
    ld a, a

jr_038_5c0d:
    ld b, h
    ld a, a
    add b
    rst $38
    adc b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ld e, b
    ld a, a
    ld l, $3f
    dec hl
    add hl, bc
    ld c, c
    inc bc
    dec c
    rst $38
    rrca
    rst $38
    ld a, [de]
    cp $74
    db $fc
    ld d, h
    call c, $f838
    add h
    db $fc
    ld a, b
    ld a, b
    add hl, bc
    ldh [rDIV], a
    ld c, $fe
    ld [c], a
    add hl, bc
    sub a
    ld bc, $0100
    ld bc, $f7f7
    rst $18
    ret c

    ccf
    jr c, jr_038_5c81

    jr nz, jr_038_5cbd

    ld b, [hl]
    ld [hl], e
    ld c, l
    ld [hl], a
    ld c, d
    dec sp

jr_038_5c4a:
    dec h
    sbc $de
    or $36
    ld hl, sp+$38
    ld hl, sp+$08
    inc a
    call nz, $649c
    call c, $b8a4
    ld c, b
    ld a, l
    ld d, d
    rst $38
    adc a
    rst $38
    add b
    rst $30
    adc d
    ld a, a
    ld b, [hl]
    ccf
    jr c, jr_038_5caf

    ld a, a
    ld a, b
    ld a, b
    ld a, h
    sub h
    cp $e2
    cp $02
    sbc $a2
    db $fc
    db $c4, $f8, $18
    ldh [$e0], a
    nop
    nop
    di
    di
    rst $08
    call z, $131f

jr_038_5c81:
    rra
    ld de, $203f
    ld bc, HeaderROMSize
    jr nc, jr_038_5c4a

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$08
    call z, $9c34
    ld l, h
    cp h
    ld d, h
    call c, Call_038_732c
    ld c, h
    cp $81
    rst $38
    add h
    rst $38
    add e
    ld a, a
    ld b, b
    ccf
    jr nc, @+$81

    ld a, a
    nop
    nop
    ld hl, sp+$38
    ldh a, [rNR10]
    ld a, b
    adc b

jr_038_5caf:
    ld a, b
    adc b
    ld hl, sp+$18
    ldh a, [rSVBK]
    adc b
    ld hl, sp-$08
    ld hl, sp+$01
    ld h, b
    rlca
    inc a

jr_038_5cbd:
    ld b, a
    ld a, a
    ld a, h
    ld a, h
    ld bc, $0470
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    ld bc, $f6fe
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld c, h
    ccf
    jr nc, jr_038_5cd7

    db $10

jr_038_5cd7:
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld h, h
    ld hl, sp+$18
    ld a, a
    ld b, c
    rst $38
    add d
    rst $38
    add d
    rst $38
    add h
    ld a, a
    ld b, b
    ccf
    inc sp
    rrca
    rrca
    nop
    nop
    db $fc
    add h
    cp $42
    ld bc, $00d2
    db $fc
    add h
    ld hl, sp+$38
    call nz, $3cfc
    inc a
    ld bc, $ffa0
    dec c
    nop
    ld bc, $0301
    inc bc
    ld d, $17
    dec hl
    ccf
    dec l
    ccf
    scf
    ccf
    ccf
    dec a
    cpl
    ld a, [hl-]
    cpl
    dec a
    ld b, b
    ld b, b
    xor b
    add sp, $78
    ld hl, sp+$54
    db $fc
    db $f4
    db $fc
    db $f4
    cp h
    ld hl, sp+$58
    ld hl, sp-$48
    rla
    rra
    dec [hl]
    ccf
    dec l
    ccf
    dec e
    rra
    ld a, [de]
    rra
    ld a, [bc]
    rrca
    ld b, $07
    dec b
    dec b

jr_038_5d36:
    db $ec
    db $fc
    ld c, h
    db $fc
    ld d, h
    db $fc
    jr z, jr_038_5d36

    xor b
    ld hl, sp-$30
    ldh a, [$e0]
    ldh [$a0], a
    and b
    ld bc, $0400
    dec [hl]
    ccf
    dec a
    ccf
    add hl, hl
    ccf
    dec hl
    ccf
    ld bc, $0610
    ld [hl], h
    call c, $a878
    ld a, b
    ret c

    ld d, $01
    ld hl, $0a07
    rrca
    ld bc, $0a2e
    or b
    or b
    add b
    add b
    ld [bc], a
    ld [bc], a
    dec d
    rla
    ld e, $1f
    ld a, [hl+]
    ccf
    dec l
    ccf
    dec h
    ccf
    dec d
    rra
    dec e
    rra
    ret nz

    ret nz

    ld l, b
    add sp, -$2c
    db $fc
    or h
    db $fc
    ld l, h
    db $fc
    ld e, h
    db $fc
    ld d, h
    db $fc
    call nc, Call_000_37fc
    ccf
    ld [hl-], a
    ccf
    ld a, [hl+]
    ccf
    inc d
    rra
    dec d
    rra
    dec bc
    rrca
    dec c
    dec c
    dec b
    dec b
    ld c, b
    ld hl, sp-$54
    db $fc
    or h
    db $fc
    cp b
    ld hl, sp+$58
    ld hl, sp+$50
    ldh a, [$50]
    ldh a, [$a0]
    and b
    ld bc, $ffa0
    dec l
    nop
    ld bc, $0004
    nop
    ld bc, $0301
    ld [bc], a
    ld c, $0f
    ld [hl], e
    ld a, [hl]
    sub d
    rst $38
    ld l, a
    ld a, [hl]
    ld [hl], a
    ld a, a
    nop
    nop
    ld a, $3e
    ret z

    ld hl, sp-$10
    ldh a, [$9c]
    db $fc
    sub d
    cp $ec
    db $fc
    ret c

    ld hl, sp-$48
    rst $28
    or [hl]
    rst $38
    rst $28
    or l
    ld e, a
    ld a, e
    ld c, l
    ld a, a
    ld a, [hl]
    ld h, l
    ld a, a
    ld d, a
    ld a, h
    ld a, h
    inc a
    db $ec
    jp c, $eefe

    ld e, d
    or $be
    ld e, [hl]
    or $fe
    ld l, d
    sbc [hl]
    sbc [hl]
    inc b
    db $fc
    ld a, [c]
    rlca
    rlca
    dec l
    ld a, [hl+]
    ld e, a
    ld d, a
    ld a, d
    ld l, a
    or c
    rst $38
    and c
    rst $38
    inc b
    cp $f0
    ret nz

    ret nz

    ld h, b
    and b
    ldh a, [$d0]
    ld a, b
    ret c

    cp h
    db $f4
    call c, $a17c
    rst $38
    add b
    rst $38
    db $e4
    cp a
    ld [c], a
    cp a
    ld [hl], d
    ld a, a
    ld [hl], e
    ld c, [hl]
    rst $38
    xor a
    cp $fe
    add $7e
    ld a, [$7fbe]
    rst $30
    add hl, bc
    rst $38
    adc $fe
    cp l
    ld h, a
    cp $ea
    cp $fe
    inc b
    cp $f0
    rrca
    rrca
    dec d
    dec de
    ld a, $2f
    add hl, sp
    ccf
    ld h, l
    ld e, a
    ret


    cp a
    inc b
    cp $f0
    add b
    add b
    ldh [$e0], a
    ld a, b
    ret c

    xor h
    db $f4
    call c, $c67c
    ld a, [hl]
    ret nc

    cp a
    ret nz

    cp a
    and $bf
    ld h, c
    ld a, a
    ld hl, $7f3f
    ld [hl], e
    ld e, a
    ld [hl], l
    ccf
    ccf
    ld a, [$5fbe]
    rst $30
    add hl, hl
    rst $38
    sub [hl]
    cp $19
    rst $38
    cp $3e
    db $f4
    ld e, h
    db $fc
    db $fc
    inc b
    nop
    dec b
    ld a, a
    sub d
    rst $38
    ld h, d
    ld a, a
    ld [hl], h
    inc b
    rrca
    ld bc, $e8d8
    or b
    ret nc

    ld a, h
    cp h
    ld [hl], d
    cp [hl]
    call z, $d87c
    ld a, b
    ld b, l
    ld a, [hl]
    adc l
    cp $85
    cp $85
    cp $67
    ld a, [hl]
    ccf
    cpl
    inc b
    inc l
    nop
    and h
    ld a, h
    and $3e
    ld a, [c]
    ld a, $e2
    ld a, [hl]
    ld a, [hl]
    or $fe
    ld [$3c04], a
    nop
    nop
    ld bc, $7c05
    ld a, h
    ld [hl], d
    ld c, [hl]
    dec a
    inc sp
    ld c, $0f
    inc b
    rlca
    ld a, [bc]
    rrca
    ld [$140f], sp
    rra
    ld [hl+], a
    ccf
    ld a, [hl+]
    ccf
    daa
    ccf
    ld d, a
    ld a, h
    ld c, [hl]
    ld a, e
    ld l, [hl]
    ld a, c
    add l
    cp $ff
    rst $38
    ld c, $0e
    ld sp, $5e3f
    ld h, a
    inc a
    ccf
    dec b
    ld a, [bc]
    ld b, $67
    ld a, a
    sub a
    db $fc
    sbc [hl]
    ei
    ld c, [hl]
    ld a, c
    dec l
    ld a, $1b
    dec de
    dec b
    ld a, [$01f2]
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    ld [$100f], sp
    rra
    rra
    rra
    ld h, c
    ld a, a
    sbc [hl]
    and $38
    ld hl, sp+$10
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$07
    rst $38
    ld d, b
    ld e, a
    db $e4
    rst $38
    and h
    rst $38
    add e
    rst $38
    ld h, b
    ld a, a
    inc de
    rra
    jr nz, jr_038_5f44

    ccf
    ccf
    ld hl, $9eff
    cp $7c
    db $fc
    ld a, $e2
    rst $18
    push hl
    ret


    rst $30
    scf
    ld sp, hl
    xor $ee
    dec b
    ld b, d
    ld a, [bc]
    db $10
    rra
    ld a, b
    ld a, b
    add [hl]
    cp $39
    rst $38
    ld d, $f6
    dec b
    ld e, d
    ld [bc], a
    ld hl, $26ff
    ccf
    ld hl, $413f
    ld a, a
    ld b, c
    ld a, a
    sub b
    rst $38
    ld l, h
    ld l, a
    inc b
    rlca
    inc bc
    inc bc
    sbc [hl]
    cp $fc
    db $fc
    ld a, $e2
    ccf
    push hl
    ld l, c
    rst $30
    sub a

jr_038_5f44:
    sbc c
    adc [hl]
    adc [hl]
    dec b
    cp $f0
    ld b, d
    ld a, [hl]
    ld sp, $053f
    ld b, $02
    inc c
    rrca
    db $10
    rra
    ld hl, $213f
    ccf
    ld a, [hl-]
    ccf
    ld b, d
    ld a, a
    ld c, b
    ld a, a
    ld h, h
    ld a, a
    add d
    rst $38
    dec b
    ld e, $02
    ld b, [hl]
    ld a, a
    inc a
    ccf
    ld [$cb05], sp
    ld bc, $3f29
    ld sp, $623f
    ld a, a
    and d
    rst $38
    add b
    rst $38
    ld c, b
    ld a, a
    inc l
    ccf
    dec b
    inc a
    nop
    nop
    ld bc, $1805
    jr jr_038_5f8c

    rlca
    ld e, [hl]
    ld e, c
    xor [hl]
    ei
    ld c, h
    ld a, a

jr_038_5f8c:
    sbc a
    ld hl, sp+$7f
    ld a, e
    daa
    add hl, sp
    jr jr_038_5fac

    ldh [$e0], a
    ld a, d
    sbc d
    ld [hl], l
    rst $18
    ld [hl-], a
    cp $f9
    rra
    cp $de
    db $e4
    sbc h
    ccf
    inc a
    ld e, a
    ld h, e
    rst $38
    ld hl, sp-$41
    ret nz

    ld a, a
    ld a, h

jr_038_5fac:
    rla
    jr jr_038_5fbe

    ld c, $01
    ld bc, $3efe
    ld sp, hl
    rst $00
    cp $1e
    ld a, [c]
    ld c, $fc
    ld a, h
    sub b
    ld [hl], b

jr_038_5fbe:
    add sp, $18
    db $fc
    db $fc
    ld a, a
    ld a, h
    sbc a
    db $e3
    ld a, a
    ld a, b
    ld c, a
    ld [hl], b
    ccf
    ld a, $09
    ld c, $17
    jr jr_038_6010

    ccf
    db $fc
    inc a
    ld_long a, $ffc6
    rra
    db $fd
    inc bc
    cp $3e
    add sp, $18
    ldh a, [rSVBK]
    add b
    add b
    ld c, $0e
    inc bc
    inc bc
    ld d, l
    ld d, a
    xor h
    rst $38
    ld c, b
    ld a, a
    adc [hl]
    rst $38
    ld [hl], b
    ld a, a
    cpl
    ccf
    nop
    nop
    ldh [$e0], a
    ld [hl], b
    sub b
    ld [hl], b
    or b
    ld [$f8f8], sp
    ld [$78f8], sp
    ld hl, sp-$48
    ld [hl], b
    ld a, a
    ld c, a
    ld [hl], b
    ccf
    inc a
    daa
    jr c, jr_038_602a

    rra
    inc b
    rlca
    dec bc
    inc c

jr_038_6010:
    rra
    rra
    db $fc
    call z, $fe3a
    cp $02
    and $1e
    db $fc
    cp h
    ldh a, [rNR10]

jr_038_601e:
    ldh [$e0], a
    nop
    nop
    ld [hl], b
    ld a, a
    ld e, h
    ld a, a
    ld a, a
    ld b, b
    ld h, e
    ld a, h

jr_038_602a:
    ccf
    dec a
    rrca
    ld [$0707], sp
    nop
    nop
    db $fc
    db $fc
    ld a, [c]
    ld c, $fc
    inc a
    db $e4

jr_038_6039:
    inc e
    ld hl, sp-$08
    jr nz, jr_038_601e

    ret nc

    jr nc, jr_038_6039

    ld hl, sp+$05
    nop
    nop
    ld e, b
    ld e, a
    xor e
    rst $38
    ld c, h
    ld a, a
    sub b
    rst $38
    ld h, b
    ld a, a
    daa
    ccf
    dec b
    stop
    ld a, [de]
    ld_long a, $ffd5
    ld [hl-], a
    cp $09
    rst $38
    ld b, $fe
    db $e4
    db $fc
    ccf
    jr c, jr_038_60c2

    ld h, b
    ld a, a
    ld a, b
    cp a
    ret nz

    ld a, a
    ld a, [hl]
    dec bc
    inc c
    dec b
    ld c, h
    ld bc, $fa1c
    ld b, $ff
    ccf
    dec b
    ld d, [hl]
    nop
    ld hl, sp+$08
    dec b
    ld e, h
    nop
    nop
    ld bc, $0209
    ld [bc], a
    dec b
    rlca
    ld a, [hl-]
    ccf
    db $10
    rra
    ld a, [$47ff]
    ld a, l
    rst $20
    db $fc
    rst $38
    sbc [hl]
    xor b
    xor b
    ld d, b
    ldh a, [$bc]
    db $fc
    ld [$5ff8], sp
    rst $38
    ld [c], a
    cp [hl]
    rst $20
    ccf
    rst $38
    ld a, c
    ld [hl], a
    ld e, h
    ld [hl], e
    ld a, [hl]
    inc hl
    ld a, $23
    ccf
    inc sp
    ld a, $1f
    dec e
    rlca
    dec b
    ld b, $06
    xor $3a
    adc $7e

jr_038_60b3:
    call nz, $847c
    db $fc
    adc h
    db $fc
    jr c, jr_038_60b3

    db $fc
    call nz, Call_038_7e7e
    ld [bc], a
    ld [bc], a
    ld a, l

jr_038_60c2:
    ld a, l
    inc de
    rra
    ld [$fc0f], sp
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_038_610c

    ld b, [hl]
    ld a, a
    and b
    and b
    ld d, b
    ldh a, [$a8]
    ld hl, sp+$0c
    db $fc
    inc e
    db $fc
    db $fc
    db $f4
    db $fc
    add h
    db $fc
    sub h
    rst $38
    db $fd
    cpl
    add hl, sp
    ld c, a
    ld a, a
    ldh a, [rIE]
    ld b, b
    ld a, a
    rst $38
    rst $38
    rlca
    inc b
    rlca
    rlca
    ld a, h
    call z, $e23e
    ld a, $f2
    ld e, $fe
    ld e, $fa
    and a
    push hl
    rst $00
    ld b, l
    db $c3, $c3, $09


    ld h, b
    ld b, $fc
    rst $38
    ccf
    inc hl
    ld a, $3e
    ld a, h
    db $cc, $7e, $09

jr_038_610c:
    ld [hl], e
    inc bc
    ld a, $fa
    rst $30
    push af
    inc bc
    inc bc
    add hl, bc
    nop
    ld [bc], a
    inc d
    rra
    cp $ff
    ld h, l
    ld a, a
    sbc $ff
    ld c, b
    ld a, a
    add hl, bc
    db $10
    ld [bc], a
    jr z, @-$06

    ld h, a
    rst $38
    and d
    cp $b7
    rst $38
    ld sp, $ffff
    rst $38
    ld d, d
    ld a, a
    dec hl
    ccf
    inc h
    ccf
    jr nc, jr_038_6177

    ld e, $1f
    ld bc, $0001
    nop
    ld d, [hl]
    cp $a2
    cp $24
    db $fc
    ld b, h
    db $fc
    inc l
    add hl, bc
    add hl, sp
    inc bc
    add hl, bc
    ret nz

    ld b, $3e
    ccf
    ld a, l
    ld b, l
    ld a, h
    ld a, h
    add hl, bc
    ret nc

    ld [$c0c0], sp
    nop
    nop
    nop
    ld bc, $0602
    ld b, $01
    ld bc, $0303
    ld c, $0f

jr_038_6165:
    rra
    inc de
    ccf
    add hl, hl
    ccf
    ld l, $7f
    ld d, a
    jr jr_038_6187

    jr nz, @+$22

    ldh [$e0], a
    jr nc, jr_038_6165

    ld a, h
    db $fc

jr_038_6177:
    ld a, [$fee6]
    ld a, [bc]
    cp $f2
    rst $38
    db $d3
    rst $38
    sbc h
    ld a, e
    ld l, a
    db $10
    rra
    jr @+$21

jr_038_6187:
    ld [bc], a
    ld b, $00
    inc a
    inc a
    db $fc
    db $e4
    cp $1a
    xor $fa

jr_038_6192:
    rra
    ld sp, hl
    ld a, [hl]
    xor $fe
    xor d
    db $fc
    call nz, Call_000_3c3c
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [bc], a
    ld b, $01
    jr z, jr_038_61e8

    cpl
    nop
    nop
    sub b
    sub b
    ldh [$e0], a
    jr nz, jr_038_6192

    db $10
    ldh a, [$f8]
    ld hl, sp-$08
    ld [$f8f8], sp
    ld a, a
    ld d, a
    ld a, a
    ld b, h
    ccf
    daa
    dec de
    rra
    rrca
    add hl, bc
    rrca
    ld [$0f0f], sp
    ld bc, $f001
    ldh a, [$fc]
    inc e
    xor $fa
    rrca
    ld sp, hl
    db $76
    or $f0
    sub b
    ld hl, sp+$28
    ld hl, sp-$08
    ld [bc], a
    nop
    nop
    rlca
    rlca
    inc c
    rrca
    ld [$1f0f], sp
    rra
    ccf
    jr nc, jr_038_61ea

jr_038_61e8:
    ld c, [hl]
    nop

jr_038_61ea:
    db $10
    db $10
    ld [bc], a
    ld d, h
    nop
    db $fc
    db $fc
    db $fc
    inc d
    rst $38
    ld [hl], e
    rst $38
    pop af
    ccf
    cpl
    rra
    db $10
    ccf
    ccf
    ld a, h

Jump_038_61fe:
    ld d, a
    ld a, a
    ld b, a
    ld a, e
    ld a, d
    rlca
    dec b
    rlca
    rlca
    cp $9e
    add sp, $38
    adc $fe
    ld e, $f2
    db $fc
    db $f4
    ld hl, sp-$48
    ldh [rNR41], a
    ldh [$e0], a
    jr jr_038_6231

    inc b
    inc b
    ld [bc], a
    add h
    nop
    jr c, @+$41

    ld d, b
    ld a, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld h, b
    ld h, b
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$1c

jr_038_6231:
    db $f4
    inc c
    db $fc
    ld c, $fa
    jr c, jr_038_6267

    ld [hl], a
    ld e, a
    ld [hl], b
    ld e, a
    ld hl, sp-$61
    ld a, a
    ld a, a
    ccf
    inc hl
    ld a, a
    ld c, c
    ld a, a
    ld a, a
    scf
    ei
    rst $18
    pop af
    ld e, $f6
    ld [$98f8], sp
    ld hl, sp-$10
    ldh a, [$f8]
    ret z

    inc a
    inc a
    nop
    ld bc, $0001
    nop
    add hl, bc
    add hl, bc
    ccf
    ld [hl], $3b
    cpl
    ld [hl], c
    ld a, a
    ld [hl], a
    ld e, a
    dec l
    dec sp

jr_038_6267:
    rst $08
    db $fd
    nop
    nop
    jr nz, jr_038_628d

    ld hl, sp-$28
    cp b
    add sp, $1c
    db $fc
    call c, Call_038_6ef4
    cp [hl]
    cp $7a
    ei
    cp [hl]
    rst $28
    db $dd
    cp $fb
    rst $38
    adc h
    ei
    rst $38
    ld b, a
    ld a, a
    ld a, h
    ld d, h
    jr c, jr_038_62c1

    xor h
    db $f4
    cp $7e

jr_038_628d:
    cp $a2
    sbc $7e
    xor d
    or $fe
    ld a, [c]
    ld e, $1e
    ld bc, $f0fe

jr_038_629a:
    inc b
    inc b
    rrca
    dec bc
    ld l, h
    ld l, a
    ld a, [hl]
    ld e, a
    ld l, $3b
    and $ff
    ld hl, sp-$41
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret c

    ret c

    jr c, jr_038_629a

    ldh a, [$f0]
    cp $9e
    ld a, l
    di
    ld e, h
    ld [hl], a
    db $ed
    cp a
    pop af
    rst $38
    cp a
    rst $08
    ld [hl], a

jr_038_62c1:
    ld a, b
    sbc a
    rst $28
    cp [hl]
    sbc $70
    ld [hl], b
    rra
    push af
    sbc e
    rst $38
    rst $38
    ld a, l
    rst $18
    pop af
    cp a
    ld a, a
    and $de
    call c, $3cf4
    inc a
    nop
    nop
    inc bc
    inc bc
    rra
    ld e, $1d
    rla
    ld a, h

jr_038_62e1:
    ld a, a
    ld a, l
    ld d, a
    dec l
    ccf
    ldh a, [rIE]
    ld bc, $f0fe
    or b
    or b
    ldh a, [$d0]
    jr nc, jr_038_62e1

    ld hl, sp-$18
    ld hl, sp+$38
    cp $ee
    ld hl, sp-$51
    ld a, e
    ld a, a
    ei
    cp $b7
    rst $08
    ld a, e
    ld a, h
    rst $18
    rst $28
    rst $08
    rst $30
    ld a, h
    ld a, h
    ld a, l
    db $d3
    ld a, a
    push de
    ei
    rst $38
    cp a
    db $dd
    ld a, a
    pop af
    rst $28
    rst $18
    cp h
    db $ec
    ldh a, [$f0]
    ld bc, $0400
    ld sp, $7b3f
    ld c, [hl]
    ld [hl], e

jr_038_631f:
    ld a, [hl]
    ld l, c
    ld e, a
    ld bc, $0410
    jr jr_038_631f

    cp h
    db $e4
    sbc h
    db $fc
    ld l, $f2
    di
    cp [hl]
    rst $08
    rst $38
    ld [hl], a
    ld a, c
    cp $8f
    ld a, [$47ff]
    ld a, a
    ld a, l
    ld d, l
    jr c, jr_038_6375

    sbc [hl]
    cp $fc
    db $fc
    ld a, [$7e86]
    cp $6a
    or $7e
    ld a, [c]
    ld e, [hl]
    sbc $80
    add b
    nop
    ld bc, $0002
    nop
    ld bc, $0101
    ld bc, $3737
    ld c, c
    ld a, a
    ld d, l
    ld a, e
    cpl
    dec [hl]
    daa
    dec sp
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$e0], a
    sub b
    ldh a, [$a8]
    ret c

    db $f4
    xor h
    db $e4
    call c, Call_038_7e43
    adc a
    db $fc
    cp a

jr_038_6375:
    ret nc

    cp a
    rst $08
    ld a, a
    ld a, e
    ld b, e
    ld a, h
    jr nz, jr_038_63bd

    ld a, a
    ld a, a
    jp nz, $f17e

    ccf
    ei
    dec c
    rst $38
    ld sp, hl
    xor $de
    cp $22
    ld a, a
    ret


    rst $38
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    rlca
    rlca
    add hl, bc
    rrca
    dec d
    dec de
    ld [bc], a
    inc c
    ld [bc], a
    adc h
    adc h
    sub d
    sbc [hl]
    ld sp, hl
    rst $38
    sub l
    rst $30
    xor l
    rst $18
    push af
    xor a
    push hl
    rst $18
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    inc c

jr_038_63b3:
    rrca
    db $10
    rra
    jr nz, jr_038_63f7

    jr nz, jr_038_63f9

    ld [bc], a
    stop

jr_038_63bd:
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, jr_038_63b3

    ld e, b
    cp b
    add sp, $58
    ld c, h
    cp h
    ld b, b
    ld a, a
    ld d, h
    ld a, a
    ld d, a
    ld a, e
    ld c, a
    ld a, c
    ld b, a
    ld a, a
    ld a, b
    ld a, a
    ld b, h
    ld a, a
    ccf
    ccf
    ld a, $f2
    ld a, [hl]
    jp nz, $fe7e

    inc a
    db $e4
    inc a
    db $fc
    ld a, h
    call nz, $82fe
    cp $fe
    ld [bc], a
    add b
    inc b
    ld e, a
    ld a, a
    ld a, [hl]
    ld h, e
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    ld [bc], a
    sub b
    inc b

jr_038_63f7:
    inc e
    db $fc

jr_038_63f9:
    inc e
    db $fc
    ld [hl+], a
    cp $fe
    cp $02
    ld b, b
    inc b
    dec bc
    rrca
    ld de, $211f
    ld [bc], a
    ld l, l
    inc bc
    sbc b
    sbc b
    db $e4
    db $fc
    db $e4
    db $fc
    and h
    db $fc
    and h
    db $fc
    inc h
    db $fc
    ld b, b
    ld a, a
    ld [bc], a
    ldh [rP1], a
    ld b, e
    ld [bc], a
    pop hl
    ld bc, $3f21
    ld a, a
    ld a, a
    ld c, d
    cp $4a
    cp $8a
    cp $12
    cp $3e
    cp $7e
    ld [c], a
    rst $38
    ret


    rst $38
    rst $38
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    scf
    ld bc, $f4fe
    jr c, @+$3a

    rst $28
    rst $38
    add l
    rst $38
    add $7e
    ld a, a
    ld [hl], l
    ld a, a
    ld a, b
    rst $38
    sbc a
    cp $9f
    ld a, c
    ld a, a
    db $e3
    cp $3f
    ccf
    nop
    nop
    pop hl
    ld a, a
    pop af
    rst $38
    ld a, [c]
    ld a, $dc
    db $fc
    ldh a, [$30]
    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    ld bc, $0220
    rst $38
    sbc a
    ld a, h
    ld h, a
    cp $c3
    dec a
    dec a
    ld bc, $042e
    db $fc
    inc a
    ret nc

    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ld bc, $f6fc
    inc e
    inc e
    rst $30
    rst $38
    and c
    rst $38
    ld h, e
    ld a, a
    ld bc, $f2ff
    ld b, b
    ld b, b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    call c, $ff87
    adc a
    rst $38
    ld c, a
    ld a, a
    dec sp
    ccf
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    db $fc
    sub h
    cp $c6
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, $e6
    ld a, a
    rst $00
    db $fc
    db $fc
    nop
    nop
    ld bc, $0480
    rrca
    inc c
    rrca
    ld [$0707], sp
    ld bc, $068e
    add [hl]
    cp $cf
    ld a, a
    ld hl, sp-$08
    ld bc, $0f5e
    ld c, $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    add d
    cp $c6
    ld a, [hl]
    ld bc, $009c
    ld bc, $04e0
    ld a, $e6
    ld a, [hl]
    jp nz, $9c01

    nop
    nop
    ld bc, $5405
    ld d, h
    ld a, b
    ld a, b
    ld e, h
    ld a, h
    cp a
    rst $30
    sbc b
    rst $38
    sub [hl]
    rst $38
    sub a
    db $fd
    ld d, e
    ld a, a
    ld d, e
    ld a, [hl]
    ld c, d
    ld a, a
    ld h, a
    ld a, [hl]
    ld b, c
    ld a, a
    ld a, b
    ld a, a
    add h
    rst $38
    xor e
    rst $38
    ld a, [hl]
    ld a, [hl]
    sub h
    db $fc
    and h
    db $fc
    call z, $04fc
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    nop
    xor b
    xor b
    db $fc
    db $fc
    sbc a
    rst $30
    ld hl, sp+$05
    add hl, bc
    ld bc, $ff93
    ld c, d
    cp $d2
    cp $e6
    cp $02
    cp $1e
    cp $21
    rst $38
    push de
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld bc, $0101
    ld bc, $0302
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_038_658c

    jr nz, @+$22

    ret nz

    ret nz

    ld [hl], b
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$f0], a
    ldh a, [$fc]
    call c, $fca4
    jr nz, jr_038_659e

    ld b, b
    ld a, a
    dec b
    ld [hl], d

jr_038_6563:
    ld [bc], a
    ld h, b
    ld a, a
    dec b
    ld a, e
    nop
    jr jr_038_6563

    db $10
    ldh a, [$50]
    ldh a, [$28]
    ld hl, sp+$78
    ld hl, sp-$7c
    db $fc
    inc h
    db $fc
    dec b
    ld l, $00
    dec b
    db $fc
    ldh a, [rTIMA]
    ld d, d
    ld b, $00
    nop
    jr nz, jr_038_65a4

jr_038_6584:
    ld a, b
    ld a, b
    sub b
    ldh a, [$0c]
    db $fc
    jr jr_038_6584

jr_038_658c:
    cp $ee
    ld d, d
    cp $46
    cp $02
    cp $1c
    dec b
    dec h
    inc bc
    ld e, $fe
    cp $fe
    dec b
    nop

jr_038_659e:
    nop
    ld c, h
    ld a, h
    adc a
    rst $38
    sbc b

jr_038_65a4:
    rst $38
    add a
    rst $38
    add b
    rst $38
    dec b
    ld [hl], h
    inc b
    ld b, b
    dec b
    rla
    ld bc, $ffb3
    ld a, [hl]
    ld a, [hl]
    dec b
    ld h, $02
    dec b
    ld h, $0c
    adc a
    rst $38
    cp h
    dec b
    ret


    ld bc, $ff80
    nop
    ld bc, $0101
    rst $38
    ldh a, [$03]
    inc bc
    rrca
    inc c
    ld e, $1b
    ld a, a
    ld [hl], l
    xor $d7
    rst $30
    adc e
    ld bc, $f0ff
    ret nz

    ret nz

    ldh a, [$30]
    ld a, b
    ret c

    cp $ae
    ld [hl], a
    db $eb
    db $eb
    push de
    xor $93
    sbc h
    rst $30
    ld a, h
    ld [hl], a
    ld a, a
    ld b, e
    scf
    jr z, jr_038_6627

    ld a, $27
    ccf
    ld e, $1e
    ld a, l
    rst $00
    ccf
    db $e3
    ld a, $e2
    cp $c2
    or $0e
    xor c
    ld e, a
    pop af
    rst $38
    ld e, $1e
    ld bc, $0400
    rla
    jr @+$21

    db $10
    cpl
    jr nc, @+$61

    ld [hl], c
    ld bc, $0410
    ret c

    jr c, @-$06

    ld l, b
    db $fc
    inc a
    ld [$bf1e], a
    ld [c], a
    db $e3
    cp [hl]
    rst $38
    sbc h
    cp a
    ret nz

    ld a, a
    ld h, b
    ld d, l
    ld a, d
    cpl
    ccf

jr_038_6627:
    ld e, $1e
    push af
    rrca
    db $fd
    rlca
    db $fd
    rlca
    cp $02
    db $fc
    inc e
    ld h, d
    cp [hl]
    jp nz, Jump_038_7cfe

    ld a, h
    ld bc, $0b40
    ld h, c
    cp a
    ret z

    rst $38
    add h
    db $fc
    add a
    cp a
    jp Jump_038_6e5f


    ld sp, $213f
    ccf
    rra
    rra
    push af
    adc a
    db $fd
    ld b, a
    ld a, l
    rst $00
    cp $82
    db $fc
    inc b
    ld l, h
    sbc h
    db $f4
    db $fc
    ld a, b
    ld a, b
    ld bc, $0200
    inc c
    rrca
    dec e
    ld a, [de]
    ld a, a
    ld [hl], b
    rst $28
    ret nc

    rst $30
    adc b
    ld bc, $0210
    jr nc, @-$0e

    cp b
    ld e, b
    cp $0e
    rst $30
    dec bc
    db $eb
    dec d
    rst $08
    or b
    cp a
    ldh [$5f], a
    ld h, b
    ld e, a
    ld h, b
    scf
    jr z, jr_038_66bc

    dec a
    ld bc, $002c
    db $fd
    rlca
    ei
    rlca
    cp $02
    cp $02
    ld bc, $0238
    ld a, $3e
    ld bc, $fca0
    nop
    ld bc, $0101
    rst $38
    ld a, [c]
    rrca
    rrca
    db $10
    rra
    jr nz, jr_038_66e1

    jr z, jr_038_66db

    dec l
    ld [hl-], a
    inc c
    inc c
    ld e, $12
    ccf
    ld hl, $adb3
    ld [hl], e
    db $ed
    ld a, $fe
    xor h
    ld l, h
    xor h
    ld l, h
    jr nz, jr_038_66f7

    jr jr_038_66d9

    ld l, a
    ld a, a

jr_038_66bc:
    rst $30
    cp a
    ret c

Call_038_66bf:
    cp a
    ld a, h
    ld h, a
    ld a, [hl]
    ld b, e
    ld a, a
    ld a, a
    inc l
    db $ec
    call c, $fedc
    ld [c], a
    xor d
    or $bc
    db $fc
    inc l
    db $ec
    inc l
    db $ec
    db $cc, $cc, $01
    jr nz, jr_038_66d9

jr_038_66d9:
    ccf
    ccf

jr_038_66db:
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    add hl, sp
    ccf

jr_038_66e1:
    inc hl
    ld a, $1f
    rra
    ld bc, $0030
    cp [hl]
    ld [c], a
    ld a, [hl+]
    or $fe
    cp $ec
    inc l
    db $fc
    inc e
    db $fc
    db $fc
    ld [bc], a
    ld [bc], a
    rlca

jr_038_66f7:
    dec b
    rrca
    ld a, [bc]
    ld bc, $0064
    rlca

Jump_038_66fe:
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $f0ff
    add b
    add b
    ldh a, [$f0]
    adc b
    ld hl, sp-$7c
    db $fc
    inc d
    db $ec
    ld a, [de]
    and $03
    inc bc
    rlca
    rlca
    dec hl
    inc l
    dec sp
    inc a
    cpl
    ccf
    rla
    rra
    rrca
    rrca
    inc bc
    inc bc
    or d
    cp $8f
    rst $38
    rst $38
    rst $38
    sub d
    cp $2e
    cp $1e
    ld a, [c]
    dec sp
    push hl
    rst $38
    rst $38
    ld bc, $0080
    dec bc
    inc c
    dec bc
    inc c
    rrca
    rrca
    rla
    rra
    cpl
    ccf
    inc sp
    inc sp
    ld bc, $0290
    and [hl]
    cp $ea
    cp $f2
    sbc [hl]
    ei
    rrca
    rst $38
    rst $38
    jr nc, jr_038_6780

    ld a, b
    ld c, b
    db $fc
    add h
    db $fd
    or l
    cp $b7
    ld a, h
    ld a, a
    inc [hl]
    scf
    inc a
    ccf
    ld bc, $f2ff
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld b, $fe
    db $e4
    db $fc
    ld a, [de]
    ld a, [$fc04]
    add d
    cp $5a
    cp $be
    and $7e
    db $c2, $fe, $01

    rst $18
    ld bc, $fc0c
    ld a, [de]

jr_038_6780:
    cp $6a
    cp $92
    cp $c2
    ld a, [hl]
    db $fc
    db $fc
    nop
    ld bc, $3002
    jr nc, jr_038_6807

    ld c, b
    db $fc
    add h
    db $fc
    add h
    rst $28
    sub e
    ld [hl], d
    ld c, l
    or h
    rst $38
    rst $30
    adc l
    and h
    rst $18
    ld e, d
    ld a, a
    ld h, e
    ld a, [hl]
    dec l
    dec sp
    ld a, e
    ld a, h
    dec h
    daa
    inc bc
    inc bc
    ld bc, $2501
    ei
    ld e, d
    cp $c6
    ld a, [hl]
    or h
    call c, Call_000_3ede
    and h
    db $e4
    ret nz

    ret nz

    ld [bc], a
    ld a, [$60f2]
    ld h, b
    ldh a, [$90]
    sbc a
    rst $28
    ld e, l
    ld [hl], d
    ld a, h
    ld h, a
    ld [hl], a
    ld c, l
    ld [bc], a
    nop
    ld a, [bc]
    db $f4
    adc a
    ld [bc], a
    ld hl, sp-$0c
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$d0]
    ld [hl], b
    and [hl]
    rst $18
    ld e, c
    ld a, a
    ld h, c
    ld a, [hl]
    ld a, [hl+]
    dec a
    ld a, d
    ld a, l
    ld h, $25
    inc bc
    inc bc
    nop
    nop
    ld [$f8f8], sp
    add sp, $30
    ldh a, [rSVBK]
    sub b
    sub b
    ld [hl], b
    or b
    ld [hl], b
    ld hl, sp-$08
    ld [bc], a
    ld l, $08
    ld e, h
    ld [hl], e
    ld a, h
    ld h, a
    ld [hl], h
    ld c, a
    ld h, [hl]
    ld e, a
    ld a, c
    ld c, a
    ld sp, $023e

jr_038_6807:
    ld h, [hl]
    ld b, $02
    nop
    ld b, $73
    ld c, h
    cp l
    cp $f2
    adc a
    and h
    rst $18
    ld e, e
    ld a, h
    ld h, h
    ld a, e
    add hl, hl
    ld a, $7a
    ld a, l
    ld [bc], a
    ld a, [de]
    inc b
    jp c, Jump_000_263e

    sbc $94
    ld a, h
    ld e, [hl]
    cp [hl]
    ld [bc], a
    ld a, [hl+]
    ld a, [bc]
    cp a
    rst $08
    sub a
    ld hl, sp+$6d
    db $76
    scf
    ld l, $54
    ld l, a
    ld l, e
    ld e, h
    inc [hl]
    dec sp
    ld [bc], a
    or [hl]
    inc b
    nop
    nop
    ld a, [hl+]
    or $d6
    ld a, [hl-]
    inc l
    call c, $c602
    inc b
    add b
    add b
    nop
    ld bc, $0501
    dec b
    rlca
    ld b, $0a
    rrca
    dec de
    ld e, $1e
    dec d
    dec bc
    ld c, $0f
    dec c
    ld a, [de]
    rra
    ld b, b
    ld b, b
    ret nz

    ret nz

    and b
    ldh [$b0], a
    ldh a, [$f0]
    ld d, b
    and b
    ldh [$e0], a
    ld h, b
    or b
    ldh a, [$1f]
    inc d
    rra
    inc d
    rra
    dec de
    dec sp
    inc h
    inc a
    daa
    rra
    rra
    inc c
    inc c
    inc b
    inc b
    ld hl, sp+$58
    db $f4
    ld e, h
    db $f4
    sbc h
    add sp, $38
    ld hl, sp-$48
    ldh [$a0], a
    ldh [$e0], a
    ldh [$e0], a
    ld bc, $f2fa
    ld b, $06
    dec b
    rlca
    inc b
    rlca
    add hl, bc
    rrca
    ccf
    ld a, $11
    ld de, $5353
    xor a
    db $fd
    adc [hl]
    ld a, [$fa1e]
    ld d, h
    db $fc
    cp [hl]
    ld [$2fd7], a
    ld e, a
    ld [hl], b
    cp a
    ld [c], a
    cp a
    pop hl
    cp l
    di
    ld a, d
    ld b, a
    ld e, a
    ld l, a
    ld a, e
    ld a, e
    jr c, jr_038_68f0

    rst $28
    ld sp, $3ddb

Call_038_68bc:
    cp $3e
    ld e, h
    and h
    ld e, h
    db $f4
    ld hl, sp-$08
    inc a
    inc a
    inc e
    inc e
    ld bc, $0840
    dec hl
    cpl
    ld e, a
    ld a, h
    ld bc, $0062
    cp a
    pop af
    ld l, a
    ld [hl], a
    ld [de], a
    rra
    rrca
    rrca
    ld c, $0e
    ld b, $06
    ld bc, $0170
    ld e, $6c
    call c, $ce7e
    call c, Call_038_78ec
    ld a, b
    jr c, jr_038_6924

    ld [bc], a
    ld [bc], a
    dec b
    rlca

jr_038_68f0:
    ld [$1c0f], sp
    rra
    jr jr_038_6915

    ld a, [bc]
    rrca
    inc c
    rrca
    ld e, $1b
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    ld [hl], b
    ldh a, [$30]
    ldh a, [$a0]
    ldh [$60], a
    ldh [$f0], a
    or b
    dec h
    ccf
    ld hl, $3f3f
    ld a, $3b
    inc h
    inc [hl]

jr_038_6915:
    ccf
    cpl
    ccf
    ld a, $3e
    inc b
    inc b
    ld hl, sp-$68
    db $fc
    inc c
    call c, $e86c
    sbc b

jr_038_6924:
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld bc, $fca0
    nop
    ld bc, $3c02
    inc a
    ld a, [hl]
    ld c, [hl]
    ld [hl], a
    ld e, c
    cp $a7
    push hl
    cp a
    cp $e7
    sbc a
    sub d
    cpl
    inc a
    ld c, a
    ld a, d
    ld h, a
    ld a, h
    ld h, a
    ld a, [hl]
    daa
    dec sp
    daa
    add hl, sp
    inc sp
    inc a
    ld a, a
    ld c, [hl]
    ld a, e
    ld a, e
    db $f4
    ld e, h
    ld [c], a
    ld a, $e2
    ld a, [hl]
    and $de
    db $e4
    sbc h
    call z, $b03c
    ld [hl], b
    ret nz

    ret nz

    ld c, $0e
    rra
    ld de, $223f
    ccf
    inc l
    ld a, a
    ld c, h
    rst $30
    sbc h
    rst $20
    db $fc
    ld b, a
    ld a, h
    db $76
    db $76
    ld [$fbfe], a
    ccf
    pop af
    rra
    cp $ea
    rst $38
    pop hl
    rst $38
    push de
    rst $38
    inc de
    ld b, e
    ld a, [hl]
    ld b, c
    ld a, a
    sub b
    rst $38
    or d
    rst $38
    or d
    rst $38
    rst $18
    rst $18
    adc e
    adc e
    ld bc, $ff01
    ld hl, $f2de
    rra
    rst $28
    sbc a
    rst $20
    call z, $fcf4
    or h
    ld hl, sp+$18
    ldh a, [$f0]
    ld b, a
    ld [bc], a
    ld d, c
    inc bc
    or [hl]
    rst $38
    rst $18
    rst $18
    sbc a
    sub c
    rra
    rra
    ld [bc], a
    ld h, b
    ld b, $bc
    or h
    jr jr_038_69cd

    ld [bc], a
    cp $f3
    ld e, e
    db $fc
    and a
    add sp, -$41
    ldh a, [rIE]
    or b
    cp a
    jr nz, jr_038_6a02

    ld b, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    jr z, jr_038_6a0a

    jr z, jr_038_6a0c

jr_038_69cd:
    inc [hl]
    ccf
    ld a, [hl]
    ld c, a

jr_038_69d1:
    ld a, e
    ld a, e
    ld b, d
    cp $42
    cp $22
    cp $96
    cp $74
    db $fc
    inc c
    db $fc
    jr nc, jr_038_69d1

    ret nz

    ret nz

    ld [bc], a
    and b
    rst $38

jr_038_69e6:
    dec l
    nop

jr_038_69e8:
    ld bc, $0b00
    dec bc
    inc e
    rla
    jr c, jr_038_6a27

    ld e, b
    ld a, a
    sub e
    rst $38
    adc [hl]
    db $fd
    add h
    rst $38
    sbc e
    db $fd
    ret nc

    ret nc

    jr c, jr_038_69e6

    jr jr_038_69e8

    inc e
    db $fc

jr_038_6a02:
    jp z, Jump_038_72fe

    cp [hl]
    ld hl, $d1ff
    cp a

jr_038_6a0a:
    ld c, l
    ld a, [hl]

jr_038_6a0c:
    ld c, e
    ld a, a
    adc b
    rst $38
    add h
    rst $38
    add a
    rst $38
    ld b, l
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld d, h
    ld d, h
    and l
    ld a, a
    push bc
    rst $38
    rrca
    rst $38
    ld [hl], $fe
    ld b, d
    cp $c6
    cp $8c

jr_038_6a27:
    db $fc
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    sub c
    pop af
    jp z, Jump_038_4ffb

    ld a, a
    sub b
    rst $38
    sub b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ldh a, [$f0]
    xor b
    ld hl, sp+$74
    call c, $de72
    and $de
    ld b, [hl]
    ld_long a, $ff21
    daa
    ei
    nop
    ld c, h
    nop
    sub b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld hl, $303f
    ccf
    rrca
    rrca
    inc de
    db $fd
    ld e, $fe
    adc b
    ld hl, sp-$7c
    db $fc
    ld b, d
    cp $e1
    rst $38
    ld sp, $feff
    cp $00
    ld b, b
    rrca
    inc de
    add c
    rst $38
    ld b, c
    ld a, a
    ld sp, $5c3f
    ld a, a

jr_038_6a75:
    ccf
    ccf

jr_038_6a77:
    inc sp
    db $fd
    ld a, $fe
    jr jr_038_6a75

    jr jr_038_6a77

    inc e
    db $fc
    ld a, [bc]
    cp $8e
    cp $fc
    db $fc
    nop
    nop
    ld bc, $453f
    ld a, a
    add c
    rst $38
    add c
    rst $38
    add l
    rst $38
    adc c
    rst $38
    ret nc

    ret nc

    ld l, b
    ld hl, sp-$68
    ld hl, sp+$1c
    db $fc
    ld [hl+], a
    cp $42
    cp $41
    rst $38
    ld hl, $48ff
    ld a, a
    ld c, b
    nop
    inc hl
    ld bc, $0086
    add hl, hl
    inc b
    rst $38
    and l
    rst $38
    ld b, $fe
    ld b, $fe
    ld a, [de]
    cp $e6
    nop
    dec sp
    ld bc, $0100
    ld bc, $7070
    ld d, c
    ld [hl], c
    adc d
    ei
    add h
    rst $38
    add d
    db $fd
    add h
    rst $38
    add d
    rst $38
    ld l, a
    ld a, a
    nop
    nop
    pop af
    pop af
    adc d
    ei
    call nz, $42ff
    ld a, l
    ld b, h
    ld a, a
    ld b, d
    ld a, a
    ld l, a

Jump_038_6ade:
    ld a, a
    ld a, $33
    ld a, a
    ld c, a
    pop af
    cp a
    di
    cp a
    sbc $df
    sub c
    sbc a
    ld de, $1f1f
    rra
    ld a, [hl]
    add $3e
    ld a, [$fd9f]
    sbc a
    db $fd
    rst $30
    rst $38
    sbc l
    db $fd
    ldh a, [$f0]
    ld bc, $f0fc
    jr nc, @+$32

    set 7, e
    add h
    rst $38
    sbc b
    rst $38
    add a
    rst $38
    adc b
    rst $38
    ld h, b
    ld a, a
    ld h, b
    ld h, b
    or b
    ldh a, [rWX]
    ld a, e
    ld b, h
    ld a, a
    ld e, b
    ld a, a
    ld bc, $024a
    ld e, $1e
    ld hl, $203f
    ccf
    jr nz, jr_038_6b62

    db $10
    rra
    jr jr_038_6b46

    ld [$080f], sp
    rrca
    ld bc, $f0fc
    ret nz

    ret nz

    or b
    ldh a, [rOBP0]
    ld hl, sp+$58
    add sp, $04
    db $fc
    ld a, [c]
    cp $10
    rra
    ld hl, $233f
    ld a, $3f
    ccf
    db $10
    rra
    inc hl
    ccf

jr_038_6b46:
    dec h
    ccf
    ccf
    ccf
    ld a, [$fa8e]
    ld a, [hl]
    adc d
    cp $12
    cp $24
    db $fc
    ld hl, sp-$08
    ld c, h
    ld a, h
    ld a, h
    ld a, h
    jr jr_038_6b74

    inc [hl]
    inc a
    inc hl
    ccf
    ld b, d
    ld a, a

jr_038_6b62:
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    add d
    rst $38
    add e
    rst $38
    ld bc, $f0fc
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$b0]

jr_038_6b74:
    ret nc

    ld [$e8f8], sp
    ld hl, sp-$7d
    cp $47
    ld a, l
    ld c, [hl]
    ld a, e
    ld a, h
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    sbc h
    rst $38
    rst $30
    rst $30
    db $e4
    inc a
    db $e3
    rst $38
    add hl, de
    rst $38
    rla
    rst $30
    or b
    ldh a, [$60]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$30], a
    ccf
    ld [hl], b
    ld e, a
    ld a, [c]
    cp a
    ld sp, hl
    cp a
    rst $08
    rst $08
    sub c
    sbc a
    dec d
    rra
    rra
    rra
    ld b, $fe
    adc [hl]
    ld a, [$fd4f]
    cpl
    db $fd
    sbc e
    ei
    pop de
    pop af
    ld a, b
    ld a, b
    nop
    nop
    nop
    ld bc, $7c01
    ld a, h
    sub a
    rst $38
    ld c, a
    ld a, a
    adc $fd
    cp l
    rst $38
    ld a, b
    ld a, a
    xor c
    rst $38
    rst $08
    rst $38
    ld e, l
    ld a, a
    xor l
    rst $38
    ld a, [hl]
    ld a, a
    ld c, a
    ld a, a
    ld b, a
    ld a, a
    ld h, l
    ld a, l
    call nz, $fcfc
    db $fc
    or d
    cp $af
    rst $38
    ld a, l
    rst $38
    pop af
    rst $38
    or $fe
    and d
    cp [hl]
    ld e, $1e
    ld bc, $fcfe
    adc $ff
    ld c, h
    ld a, a
    or $ff
    cp a
    rst $38
    adc a
    rst $38
    ld l, a
    ld a, a
    ld b, l
    ld a, l
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl-]
    cp $75
    rst $38
    cp $fe
    ld a, [c]
    cp $e2
    cp $a6
    cp [hl]
    inc hl
    ccf
    ccf
    ccf
    rlca
    rlca
    ld a, [bc]
    rrca
    ld [$050f], sp
    rlca
    ld a, [bc]
    rrca
    ld bc, $0060
    ld c, b
    ld c, a
    ret nc

    ret nc

    ld a, b
    ld hl, sp-$04
    db $fc
    sub $ee
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, e
    rst $38
    db $ed
    rst $38
    push hl
    rst $20
    ld [$a7ef], a
    rst $20
    sbc c
    rst $38
    ld b, e
    ld a, a
    ccf
    ccf
    dec b
    rlca
    inc bc
    inc bc
    di
    rst $38

jr_038_6c40:
    cp $fe
    cp $fe
    inc a
    db $fc
    jr jr_038_6c40

    sbc h
    db $fc
    ld [bc], a
    cp $fc
    db $fc
    ld bc, $0280
    sbc h
    rst $38
    ld b, h
    ld a, a
    inc a
    ccf
    ld [$0f0f], sp
    rrca
    or $fe
    or $fe
    ld a, [c]
    cp $fe
    cp $7c
    db $fc
    ret c

    ld hl, sp+$44
    db $fc
    db $fc
    db $fc
    ld bc, $0000
    rst $08
    rst $38
    ld b, [hl]
    ld a, a
    or b
    ld bc, $0109
    pop bc
    rst $38
    ld a, $3e
    jp hl


    rst $38
    di
    rst $38
    ld h, d
    cp $0d
    rst $38
    sbc [hl]
    cp $d5
    rst $38
    jp Jump_038_59ff


    ld a, a
    xor c
    rst $38
    ld [hl], d
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    ld bc, $0319
    ld d, d
    cp $4f
    rst $38
    ld b, c
    rst $38
    sub c
    ld bc, $0127
    ld a, $3e
    nop
    nop
    nop
    ld bc, $1c03
    inc e
    jr nc, jr_038_6cd9

    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, [hl]
    dec a
    ld a, $4f
    ld a, b
    adc e
    cp $9d
    ei
    jr c, jr_038_6cef

    inc c
    inc c
    adc $ce
    cp $7e
    cp h
    ld a, h
    ld a, [c]
    ld e, $d1
    ld a, a
    or l
    rst $18
    cp l
    rst $28
    db $fd
    rst $08
    ld a, [hl]
    ld b, a
    ld a, a
    ld h, l
    ccf
    jr c, jr_038_6d0b

    daa
    dec a
    dec h
    ld a, b
    ld a, b
    xor [hl]
    ld a, [$f1bf]

jr_038_6cd9:
    ld a, a
    call $86fe
    db $f4
    inc c
    ret z

    ld hl, sp-$44
    cp h
    nop
    nop
    rlca
    rlca
    inc c
    inc c
    inc e
    inc e
    rra
    rra
    rrca
    rrca

jr_038_6cef:
    inc sp
    ld a, $46
    ld a, l
    ld b, e
    ld a, a
    inc bc
    db $fc
    ldh a, [$e0]
    ldh [$f8], a
    sbc b
    cp b
    ret z

    db $fc
    inc b
    db $f4
    sbc h
    db $ec
    sbc h
    add [hl]
    rst $38
    adc a
    ld sp, hl
    sbc a
    pop af
    ld e, a

jr_038_6d0b:
    ld [hl], e
    ld e, a
    ld [hl], d
    ld l, $3f
    add hl, de
    rra
    rlca
    rlca
    ld l, h
    call c, $dc6c
    ld [hl], h
    call z, $b8f8
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$90]
    ld hl, sp-$08
    inc bc
    ld b, b
    rrca
    ld de, $f98f
    ld c, a
    ld a, b
    ld b, a
    ld a, h
    daa
    ccf
    rra
    inc e
    inc bc
    ld l, [hl]
    dec b
    ld hl, sp-$08
    adc b
    ld e, b
    cp b
    add sp, -$08
    db $fc
    db $fc
    inc e
    inc e
    ld sp, $7631
    ld [hl], a
    ld a, b
    ld a, a
    jr nz, jr_038_6d87

    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    jr c, jr_038_6d88

    adc h
    adc h
    ld l, [hl]
    xor $1e
    cp $04
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld bc, $03ff
    call z, $5000
    ld a, a
    ld h, h
    ld a, a
    jr c, jr_038_6da6

    ld a, $03
    dec hl
    ld bc, $fe02
    dec bc
    rst $38
    dec b
    rst $38
    ld c, [hl]
    cp $34
    db $fc
    ld c, b
    inc bc
    dec sp
    ld bc, $0100
    ld b, $01
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    ld [$3c0f], sp

jr_038_6d87:
    ccf

jr_038_6d88:
    ld a, $2b
    rra
    dec d
    ccf
    inc sp
    cpl
    dec a
    ccf
    dec hl
    rra
    dec de
    ld d, $1e
    dec e
    inc de
    ld e, $1e
    nop
    nop
    ld hl, sp-$68
    ld hl, sp+$68
    add sp, -$08
    db $fc
    add h
    ret c

    xor b

jr_038_6da6:
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld b, $fe
    ld a, [c]
    inc h
    daa
    ld d, h
    ld [hl], a
    ld c, d
    ld a, a
    ld c, a
    ld a, l
    ccf
    jr c, jr_038_6dd7

    rla
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$f8], a
    ld a, b
    ld hl, sp+$28
    ldh a, [rNR10]
    rra
    db $10
    rra
    inc d
    rra
    dec de
    rra
    inc de
    rra
    inc de
    ld hl, $063f
    inc e

jr_038_6dd7:
    nop
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    or b
    ldh a, [$50]
    ldh a, [$d0]
    ldh a, [rSVBK]
    ld [hl], b
    ld b, $fc
    ldh a, [rSC]
    ld [bc], a
    ld h, l
    ld h, a
    and h
    rst $20
    xor b
    rst $28
    db $dd
    rst $18
    sbc a
    sub d
    cp a
    or l
    ret z

    ret z

    xor b
    add sp, $14
    db $fc
    ld [de], a
    cp $c2
    cp $fa
    ld a, [hl]
    db $f4
    call c, Call_000_3aee
    ld a, a
    ld h, b
    ccf
    ld [hl-], a
    ld a, e
    ld b, a
    ld a, h
    ld e, h
    ld a, b
    ld c, b
    jr c, jr_038_6e4b

    ld b, $fc
    ldh a, [$f7]
    ld c, a
    rst $38
    and l
    cp $3a
    sbc $ba
    ld [hl], h
    ld c, h
    ld b, $9a
    ld [bc], a
    ld b, $70
    nop
    dec b
    ld b, $05
    ld bc, $5f5d
    cp a
    or d
    rst $38
    push hl
    cp a
    ld [c], a
    cp a
    ld a, [c]
    db $db
    rst $10
    ccf
    dec h
    rra
    dec d
    rra
    inc de
    ld c, $0e
    ld b, $9e
    inc b
    adc $4a
    call nz, $e044
    jr nz, @-$1e

    ldh [rTMA], a
    and b

jr_038_6e4b:
    rst $38
    rrca
    nop
    ld bc, $1803
    jr jr_038_6e72

    rla
    rra
    ld d, $1f
    dec e
    rla
    dec e
    inc sp
    ld a, $21
    ccf
    ld c, b

Jump_038_6e5f:
    ld a, a
    jr jr_038_6e7a

    ld hl, sp-$18
    ld hl, sp+$68
    ld hl, sp-$48
    add sp, -$48
    call z, $947c
    db $fc
    ld a, [bc]
    cp $48
    ld a, a

jr_038_6e72:
    ld c, b
    ld a, a
    jr nc, jr_038_6eb5

    jr nz, @+$41

    ld [de], a
    rra

jr_038_6e7a:
    add hl, bc
    rrca
    rlca
    rlca
    ld bc, $0a01
    cp $04
    db $fc
    inc bc
    ld [hl-], a
    ld [bc], a
    adc b
    ld hl, sp+$08
    ld hl, sp-$10
    ldh a, [$03]
    nop
    nop
    inc e
    rla
    jr jr_038_6eb3

    inc de
    rra
    jr nc, jr_038_6ed7

    jr z, jr_038_6ed9

jr_038_6e9a:
    ld d, b
    inc bc
    rrca
    ld bc, $e838
    jr jr_038_6e9a

    ret z

    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $0c
    inc c
    rrca
    dec bc
    rrca
    dec bc
    rra
    ld e, $13

jr_038_6eb3:
    ld e, $21

jr_038_6eb5:
    ccf

jr_038_6eb6:
    jr nz, jr_038_6ef7

    ld b, b
    ld a, a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$03], a
    halt
    jr nz, jr_038_6eb6

    ldh a, [rNR10]
    ldh a, [rOBP1]
    ld a, a
    ld d, d
    ld a, a
    ld d, d
    ld a, a
    ld c, h
    ld a, a
    ld h, b
    ld a, a
    jr c, jr_038_6f14

    inc l
    ccf

jr_038_6ed7:
    rra
    rra

jr_038_6ed9:
    ld [$03f8], sp
    sub b
    nop
    db $10
    ldh a, [$60]
    ldh [$60], a
    ldh [rNR10], a
    ldh a, [$e0]
    ldh [$03], a
    ld h, b
    nop
    ld c, $0b
    inc e
    rra
    ld de, $201f
    inc bc
    ld l, e

Call_038_6ef4:
    dec b
    ld b, b
    ret nz

jr_038_6ef7:
    jr nz, @+$05

    ld a, b
    nop
    ldh [$30], a
    inc bc
    ld a, l
    ld bc, $7f48
    ld b, l
    ld a, a
    ld b, d
    ld a, a
    jr nz, @+$41

    inc hl
    ccf
    ld b, c
    ld a, a
    ccf
    ccf
    ld [$03f8], sp
    ld a, [hl-]
    nop
    inc bc

jr_038_6f14:
    sub [hl]
    nop
    ldh a, [$f0]
    ret z

    inc bc
    dec a
    rlca
    db $10
    rra
    inc bc
    inc h
    nop
    inc bc
    ld c, $02
    inc bc
    ld d, h
    nop
    ld [$0cf8], sp
    db $fc
    inc d
    db $fc
    ld a, [bc]
    cp $00
    ld bc, $0d04
    dec c
    rrca
    ld a, [bc]
    rlca
    dec b
    rlca
    dec b
    ld a, [bc]
    rrca
    ld d, $1f
    ld e, $1f
    ld e, $1b
    or b
    or b
    ldh a, [$d0]
    ldh [$a0], a
    ldh [rNR41], a
    ldh a, [rSVBK]
    add sp, $78
    ld hl, sp+$78
    ld a, b
    ret c

    rst $38
    push af
    adc a
    ei
    and a
    db $fc
    ld h, a
    ld a, h
    inc sp
    ld a, $39
    ccf
    ccf
    daa
    inc a
    inc a
    db $fc
    xor h
    ld a, [$f5de]
    ccf
    push hl
    ccf
    rst $08
    ld a, a
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld b, $06
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0601
    rlca
    dec c
    rrca
    ld [de], a
    rra
    ld hl, $c03f
    ret nz

    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [$50]
    ld hl, sp-$58
    ld a, b
    add sp, -$08
    ld hl, sp-$08
    ret c

    ld a, b
    ld a, a
    add h
    rst $38
    ld b, d
    ld a, a
    jr nz, jr_038_6fd9

    jr nc, @+$41

    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    ld hl, sp-$58
    db $fc
    call nc, $e47c
    ld a, h
    call nc, $fc3c
    ld [hl], b
    ldh a, [$f8]
    adc b
    ld hl, sp-$08
    jr c, jr_038_6ff3

    ld b, b
    ld a, a
    add b
    rst $38
    adc [hl]
    rst $38
    ldh a, [rIE]
    inc l
    ccf
    ld e, $13
    rra
    rra
    inc b
    ld [hl], b
    ld b, $10
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    inc b
    nop
    inc b
    add hl, bc
    ld c, $11
    ld e, $10
    rra
    db $10
    rra
    inc b
    db $10
    inc b

jr_038_6fd9:
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    cp d
    nop
    ld hl, sp-$01
    add h
    rst $38
    add d
    rst $38
    ld h, b
    ld a, a
    jr nc, jr_038_7029

    jr c, jr_038_6ff0

    dec hl
    ld bc, $f818

jr_038_6ff0:
    inc h
    db $fc
    ld b, d

jr_038_6ff3:
    cp $59
    rst $38
    rrca
    rst $38
    ret nc

    inc b
    dec sp
    ld bc, $df04
    rrca
    dec c
    nop
    ld bc, $0309
    inc bc
    rlca
    inc b
    dec bc
    ld c, $0b
    rrca
    ld e, $1b
    inc a
    ccf
    add sp, -$21
    ld a, h
    ld a, a
    ld l, h
    ld a, h
    ld a, h
    ld d, h
    ld a, h
    ld a, h
    ld d, h
    ld l, h
    jr c, jr_038_7055

    jr c, @+$2a

    db $10
    stop
    nop
    db $e3
    db $e3
    rst $30
    or h
    ld a, e
    ld e, [hl]

jr_038_7029:
    ei
    cp a
    ld a, [hl]
    ld e, e
    inc l
    ccf
    ld l, b
    ld e, a
    inc a
    ccf
    add hl, bc
    nop
    nop
    rrca
    ld [$080f], sp
    rra
    inc e
    ccf
    ccf
    rst $28
    call c, Call_038_7fff
    ld a, h
    add hl, bc
    ld b, b
    inc bc
    jr c, jr_038_7080

    jr c, jr_038_7082

    add hl, bc
    inc e
    inc b
    ld a, a
    ld e, b
    rst $38
    cp b
    ld a, a
    ld e, h
    cpl
    ccf

jr_038_7055:
    ld h, a
    ld e, h
    ccf
    ccf
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    di
    or e
    ld a, e
    ld a, d
    res 7, d
    ld c, l
    ld a, a
    adc $bd
    ld h, a
    ld e, [hl]
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld [hl], b
    ldh a, [$fc]
    ld e, h
    ld [c], a
    ld a, $d9
    rst $38
    push de
    ld a, a
    ccf
    ccf
    rlca
    ld b, $07
    rlca
    rlca

jr_038_7080:
    rlca
    inc bc

jr_038_7082:
    inc bc
    add hl, bc
    ld a, [$ebf2]
    ei
    ret c

    ld e, b
    ret nz

    ret nz

    ldh a, [rSVBK]
    ld hl, sp-$58
    db $fc
    db $f4
    inc c
    inc c
    add hl, bc
    ld a, [$01f2]
    ld bc, $0203
    inc bc
    ld [bc], a
    dec b
    rlca
    ld c, $0d
    rla
    ld e, $37
    cpl
    rla
    ld e, $3f
    daa
    dec de
    rla
    ccf
    dec sp
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    add hl, bc
    adc [hl]
    inc b
    ret nz

    ld b, b
    add b
    add b
    add hl, bc
    and b
    rst $38
    inc hl
    nop
    ld bc, $0301
    inc bc
    inc c
    rrca
    ld e, $13
    ld e, $13
    inc a
    scf
    ld c, l
    ld a, a
    cp a
    ld a, [$fc87]
    add b
    add b
    ld h, b
    ldh [$f0], a
    sub b
    ldh a, [$90]
    ld a, b
    ret c

    ld l, h
    db $fc
    ld [$d2be], a
    ld a, [hl]
    adc a
    db $fc
    ld e, a
    ld a, d
    cpl
    dec a
    dec hl
    ld a, [hl-]
    ld c, c
    ld a, c
    or b
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$e2]
    ld a, [hl]
    db $f4
    cp h
    add sp, $78
    cp h
    cp h
    inc h
    inc a
    inc e
    inc e
    ld bc, $f0fc
    rrca
    rrca
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_038_7145

    ld c, h
    ld a, a
    ld d, b
    ld a, a
    and c
    rst $38
    and d
    rst $38
    add b
    add b
    ld c, [hl]
    adc $3d
    di
    rra
    push af
    ld c, $fe
    ld l, h
    db $fc
    ld a, [hl]
    jp nc, $f17f

    db $e3
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    sbc [hl]
    cp $cf
    rst $38
    ld a, e
    ld a, e
    ld c, c
    ld a, c
    add hl, sp
    add hl, sp
    ccf
    ld sp, hl
    ld a, a
    push hl
    rst $38
    ei
    ld b, $06
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    rlca
    rlca
    jr jr_038_7161

    jr nz, jr_038_7183

    ld b, b

jr_038_7145:
    ld a, a
    ld e, b
    ld a, a
    and b
    rst $38
    and e
    rst $38
    db $e4
    rst $38
    nop
    nop
    ret nz

    ret nz

    ld l, $ee
    dec e
    ld bc, $0555
    ld a, [c]
    rst $38
    cp b
    cp a
    di
    rst $38
    rst $20
    rst $38
    ld h, b

jr_038_7161:
    ld a, a
    add hl, de
    rra
    ld a, $3f
    rra
    rra
    ld a, a
    pop af
    ccf
    ld sp, hl
    rst $38
    push hl
    ld a, a
    ld a, e
    add [hl]
    add [hl]
    ld b, b
    ret nz

    jr nz, @-$1e

    ldh [$e0], a
    ld bc, $0000
    db $10
    rra
    ld bc, $0042
    ld d, b
    ld a, a
    adc d

jr_038_7183:
    rst $38
    adc d
    rst $38
    ld bc, $0010
    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$34
    db $fc
    jp nz, Jump_038_42fe

    cp $85
    rst $38
    ld c, a
    ld a, a
    dec sp
    ccf
    dec l
    ccf
    db $eb
    ei
    or b
    ldh a, [$d0]
    ldh a, [$60]
    ld h, b
    ld b, d
    cp $24
    db $fc
    cp b
    ld hl, sp-$44
    db $fc
    ld h, h
    db $fc
    ret c

    ret c

    ld bc, $f0a0
    nop
    ld bc, HeaderLogo
    ld bc, $0302
    ld [bc], a
    inc bc
    ld e, $1f
    ld [hl+], a
    ccf
    ld h, a
    ld a, l
    rst $38
    cp d
    rst $20
    db $fd
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, b
    ld hl, sp-$3c
    db $fc
    and $7e
    rst $38
    cp c
    rst $18
    ld a, a
    cpl
    dec sp
    ccf
    dec sp
    sbc $d7
    cp a
    rst $30
    ld e, a
    ld a, l
    scf
    dec [hl]
    rlca
    rlca
    inc c
    inc c
    adc b
    ld hl, sp-$78
    ld hl, sp-$2a
    or $ea
    cp $d4
    ld e, h
    adc b
    adc b
    inc b
    db $fc
    ldh a, [$0d]
    dec c
    ld e, $17
    ld e, [hl]
    ld d, a
    cp $bf
    ld [c], a
    cp a
    rst $20
    cp l
    ld a, a
    ld e, d
    daa
    dec a
    adc h
    adc h
    ld e, h
    call nc, $d65e

jr_038_720c:
    ld a, a
    db $fd
    rst $00
    db $fd
    rst $20
    ld a, l
    cp $ba
    call c, $167c
    ld d, $3e
    ld a, [hl+]
    ccf
    dec hl
    ld a, a
    ld d, a
    ld a, a
    ld d, c
    ccf
    cpl
    rra
    ld de, $1f1f
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_038_720c

    sub b
    ldh a, [rNR10]
    ldh a, [$b8]
    add sp, $7c
    call nc, $ecbc
    ld de, $391f
    cpl
    inc a
    cpl
    ld a, a
    ld d, a
    ld a, h
    ld d, h
    ld a, h
    ld d, h
    ld a, $2a
    ld e, $1e
    ld a, $fa
    sbc $fa
    sub a
    push af
    and e
    db $e3
    ld d, c
    pop af
    and b
    ldh [rLCDC], a
    ld b, b
    inc b
    db $fc
    ldh a, [$0e]
    ld c, $1f
    inc de
    ccf
    dec a
    ccf
    inc hl
    ld a, a
    ld e, l
    ld a, a
    ld h, e
    ld a, a
    ld e, a
    inc b
    ld [hl], b
    inc c
    inc b
    ld a, $00
    ld [de], a
    rra
    ld e, $1f
    ccf
    inc sp
    ccf
    inc l
    ld a, a
    ld [hl], b
    ld a, a
    ld c, b
    jr nc, @+$32

    dec a
    dec l
    ld a, d
    ld l, a
    cp $af

Call_038_727f:
    rst $38
    or a
    rst $38
    sbc d
    ld a, a
    ld c, b
    ld a, a
    ld [hl], b
    ccf
    dec a
    rrca
    add hl, bc
    ld l, a
    ld l, c
    ld e, a
    ld a, l
    dec hl
    dec sp
    jr jr_038_72ab

    inc b
    db $fc
    ldh a, [$fc]
    ld a, h
    adc $7e
    jp c, $f47e

    ld a, h
    ld hl, sp+$38
    ldh a, [$b0]
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld bc, $a101
    and c

jr_038_72ab:
    ld h, d
    ld h, e
    db $f4
    rst $30
    ld a, l
    ld a, a
    ld e, a
    ld a, l
    cpl
    scf
    ccf
    ld l, $3f
    jr z, jr_038_72e1

    ccf
    ccf
    dec h
    dec sp
    ld h, $2f
    ccf
    ld e, a
    ld a, c
    cp $fd
    ld [hl], d
    ld [hl], e
    and c
    and c
    and a
    and a
    ld l, h
    ld l, a
    ld hl, sp-$01
    ld e, l
    ld a, a
    ld l, l
    ld e, a
    dec [hl]
    cpl
    ld [hl], $2f
    ld a, [hl-]
    daa
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [$60], a

jr_038_72e1:
    ldh [$e0], a
    ld hl, sp-$68
    db $fc
    add h
    db $fc
    db $fc
    ld a, [hl-]
    daa
    ld a, [hl-]
    daa
    ld [hl], $2f
    cp h
    xor a
    ld l, b
    ld a, a
    rst $18
    rst $38
    ld a, e
    ld a, e
    xor c
    xor c
    ld hl, sp-$48
    ld hl, sp-$38
    ld [hl], b

Jump_038_72fe:
    ldh a, [rLCDC]
    ret nz

    add b
    add b
    ld bc, $f8fa
    ld a, h
    ld a, a
    ld [hl], $3f
    ld a, [hl+]
    ccf
    ld h, $3f
    inc hl
    ccf
    ld sp, $2f3f
    ccf
    inc hl
    ccf
    dec h
    ccf
    add hl, hl
    ccf
    db $fd
    rst $38
    ld [hl], e
    ld [hl], e
    and c
    and c
    ld bc, $ffa0
    ld c, l
    ld bc, $0fdf
    dec c
    nop
    ld bc, $0301

Call_038_732c:
    inc bc
    rrca
    dec c
    rra
    dec d
    rra
    db $10
    ccf
    inc l
    ld a, a
    ld d, [hl]
    rst $38
    sub e
    db $fc
    sbc a
    add b
    add b
    ldh [$60], a
    ldh a, [$50]
    ldh a, [rNR10]
    ld hl, sp+$68
    db $fc
    call nc, $92fe
    ld a, [hl]
    ld a, [c]
    xor b
    rst $18
    ld e, h
    ld a, a
    ld a, [hl+]
    ccf
    dec l
    ccf
    dec hl
    dec sp
    ld d, b
    ld [hl], b
    xor b
    ld hl, sp-$28
    ret c

    ld a, [hl+]
    or $74
    db $fc
    xor b
    ld hl, sp+$68
    ld hl, sp-$2c
    db $fc
    ld l, h
    ld l, h
    ld bc, $f0fc
    rra
    rra
    rla
    jr jr_038_73ac

    ld a, $2f
    jr nc, jr_038_73f0

    ld a, [hl]
    ld e, [hl]
    ld [hl], c
    rst $38
    ldh [$bf], a
    ldh [rSB], a
    db $10
    ld bc, $f810
    ld [$64fc], sp
    db $fc
    or h
    db $fc
    sbc h
    ld a, [c]
    cp $fe
    pop hl
    dec a
    inc sp
    ld c, a
    ld a, a
    sbc [hl]
    cp $8f
    rst $38
    ld h, a
    ld a, a
    daa
    ccf
    dec a
    dec a
    pop hl
    cp a
    ld a, c
    rst $38
    ld h, l
    cp a
    di
    rst $38
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    rrca
    rrca
    inc de
    inc e

jr_038_73ac:
    ccf
    ld a, $66
    ld a, c
    ld e, c
    ld a, [hl]
    cp $e1
    cp a
    ldh [rIE], a
    ldh [rP1], a
    nop
    ret nz

    ret nz

    ldh [rNR41], a

jr_038_73be:
    ld bc, $0554
    ld e, h
    ccf
    jr nc, jr_038_73e3

    add hl, de
    scf
    ccf
    ld h, a
    ld a, a
    ld h, c
    ld a, a
    inc a
    ccf
    rra
    rra
    ld c, $0f
    ld a, [c]
    ld a, [hl]
    pop hl
    cp a
    ld sp, hl
    ld bc, $0173
    ld l, $ee
    jr nz, jr_038_73be

    ldh [$e0], a
    ld bc, $0300

jr_038_73e3:
    dec d
    ccf
    ld hl, $507f
    rst $38
    add b
    rst $38
    adc b
    ld bc, $0310
    ld d, b

jr_038_73f0:
    ld hl, sp+$08
    db $fc
    inc [hl]
    cp $42
    cp $42
    or h
    rst $08
    ld c, a
    ld a, a
    ld a, [hl-]
    ld bc, $0125
    ret nc

    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    ld e, d
    and $e4
    db $fc
    cp b
    ld hl, sp+$6c
    db $fc
    and h
    cp h
    jr jr_038_742a

    ld bc, $f0a0
    nop
    ld bc, $1c08
    inc e
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $38
    db $fd
    sbc $df
    add h
    add a
    inc b
    rlca
    ld [bc], a
    inc bc

jr_038_742a:
    ld [bc], a
    inc bc
    rlca
    dec b
    dec c
    ld a, [bc]
    ld a, [bc]
    rrca
    dec b
    rlca
    dec b
    ld b, $03
    inc bc
    nop
    nop
    ld bc, $3301
    inc sp
    ld a, e
    ld a, e
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld [hl], h
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld h, d
    ld h, e
    ld b, a
    ld b, l
    ld [$0816], sp
    inc bc
    inc bc
    rrca
    rrca
    rra
    ld [HeaderSGBFlag], sp
    dec de
    dec de
    rra
    rra
    ld [$f0fc], sp

jr_038_7460:
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    ld hl, sp-$18
    db $fc
    db $fc
    ld [c], a
    cp $d9
    rst $18
    rla
    rla
    dec c
    dec c
    dec e
    dec e
    dec de
    ld a, [de]
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld b, [hl]
    add $b0
    ldh a, [$f8]
    ld l, b
    db $ec
    inc d
    ld d, h
    cp h
    jr z, jr_038_7460

    ld e, b
    xor b
    ldh a, [$f0]
    ld [$0042], sp
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    adc a
    adc a
    inc bc
    inc bc
    rlca
    rlca
    add b
    add b
    ld [$0a52], sp
    rlca
    rlca
    ld [$0f62], sp
    dec bc
    ld [$0500], sp
    rst $38
    rst $18
    rst $18
    add e
    add e
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rrca
    ld a, [bc]
    dec bc
    inc c
    ld b, $05
    inc b
    rlca
    ld [$071e], sp
    ld [$01e8], sp
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    ld b, l
    ld b, a
    ld [$06d6], sp
    nop
    ld bc, $0404
    rst $38
    ld a, [c]
    ld sp, $3b31
    ld a, [hl+]
    ld e, e
    ld l, d
    ld e, l
    ld l, [hl]
    or a
    call z, $a2ff
    or $a9
    ld e, e
    ld e, h
    dec b
    ld b, $03
    inc bc
    inc b
    db $fc
    or $01
    ld bc, $0203
    inc bc
    ld [bc], a
    dec e
    ld e, $37
    inc l
    ld a, a
    ld b, d
    sub $a9
    ei
    xor h
    db $ed
    cp [hl]
    cp e
    ei
    ret nc

    ret nc

    inc b
    ld a, [$03ff]
    inc b
    cp $f4
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh [rNR41], a
    rst $38
    and b
    and a
    ld hl, sp+$04
    inc d
    ld [$90f0], sp
    sub b
    ld [hl], b
    ret nc

    jr nc, @-$5e

    ld h, b
    ret nz

    ret nz

    inc b
    ld a, [de]
    rrca
    ld [bc], a
    ld b, b
    inc b
    ld d, d
    ld a, [bc]
    ldh a, [$90]
    rst $10
    xor b
    inc b
    ld [hl-], a
    ld a, [bc]
    inc b
    ld [hl], d
    ld c, $04
    ld [bc], a
    dec bc
    and b
    rst $30
    xor b
    inc b
    inc d
    rrca
    ld [$0440], sp
    and b
    inc c
    nop
    ld bc, $0005
    nop
    inc c
    inc c
    inc bc
    inc bc
    scf
    scf
    ld a, a
    ld a, l
    cp $fb
    xor a
    xor l
    ld a, [bc]
    rrca
    inc c
    rrca
    scf
    scf
    rra
    rra
    add hl, bc
    add hl, bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $3001
    ldh a, [$ec]
    db $ec
    ld hl, sp-$08
    sub b
    sub b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ret nz

    ret nz

    nop
    nop
    db $ec
    db $ec
    ld [hl], e
    ld [hl], e
    rst $38
    rst $38
    ld a, a
    ld a, l
    ld e, $1b
    rrca
    dec c
    dec b
    ld c, $06
    ld bc, $4805
    ld bc, $0000
    dec b
    jr nz, jr_038_7595

    nop
    nop
    cp h
    cp h
    and $e6

jr_038_7595:
    db $10
    db $10
    ld [$0f08], sp
    rrca
    rra
    rra
    rra
    rla
    ccf
    dec hl
    ccf
    scf
    add hl, hl
    ccf
    inc hl
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    inc b
    inc b
    ld e, $1e
    dec b
    cp $f0
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    inc e
    inc e
    dec b
    ld [hl], b
    inc b
    ld d, $16
    inc e
    inc e
    ld b, $06
    dec b
    ld a, [hl]
    ld [bc], a
    adc $ce
    sbc e
    sbc e
    ldh a, [$f0]
    dec b
    ld a, [$7ffb]
    rst $38
    rst $38
    xor a
    xor a
    rrca
    rrca
    rrca
    dec b
    ld de, $0503
    jr z, jr_038_75e9

    inc bc
    inc bc

jr_038_75e9:
    ldh a, [rTIMA]
    ld hl, $c003
    ret nz

    ld b, b
    ld b, b
    dec b
    add h
    nop
    dec b
    jr nc, jr_038_75fc

    ld a, a
    dec b
    ld [hl], h
    nop
    dec b

jr_038_75fc:
    cp [hl]
    ld [$2805], sp
    nop
    ld h, a
    ld h, a
    nop
    ld bc, $6a05
    ld a, a
    cp h
    rst $08
    cp b
    rst $08
    ld a, [hl]
    ld [hl], a
    cpl
    add hl, sp
    ld b, a
    ld a, h
    inc sp
    ccf
    ld c, $0e
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    db $76
    ld [hl], a
    rst $28
    sbc c
    cp a
    sub $7f
    ld d, l
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [rNR41], a
    ldh [$6e], a
    xor $f7
    sbc c
    db $fd
    ld l, e
    cp $aa
    dec b
    db $10
    ld [bc], a
    ld h, d
    ld h, e
    or $97
    rst $38
    adc c
    ld a, a
    ld d, [hl]
    ld e, a
    ld [hl], l
    dec b
    jr nz, jr_038_7648

    ld h, $e6

jr_038_7648:
    ld l, a
    jp hl


    rst $38
    sub c
    cp $6a
    ld a, [$00ae]
    nop
    ld bc, $0601
    rlca
    ld l, d
    ld l, a
    ld hl, sp-$61
    sbc a
    rst $28
    rst $38
    adc h
    ld c, e
    ld [hl], h
    ldh [$e0], a
    sub b
    ldh a, [$90]
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$f0], a
    sub b
    cp $3e
    ld sp, hl
    ld l, a
    ld e, a
    ld h, b
    ld a, l
    ld [hl], d
    rra
    ld [de], a
    ld l, [hl]
    ld [hl], e
    adc a
    ld sp, hl
    ld a, a

Jump_038_767b:
    ld a, h
    inc bc
    inc bc
    nop
    nop
    ld a, [c]
    ld a, [hl]
    xor h
    ld a, h
    or h
    ld a, h
    ld l, d
    sbc $fc
    cp h
    ret z

    ld a, b
    sub b
    ldh a, [$60]
    ld h, b
    or $7e
    and d
    ld a, [hl]
    cp h
    ld a, h
    ld [hl], h
    call z, $b8f8
    dec b
    adc d
    ld [bc], a
    dec b
    ld d, b
    ld [bc], a
    ld a, [bc]
    rrca
    ld [$7f0f], sp
    ld a, a
    rst $38
    adc h
    adc e
    db $f4
    ld l, a
    ld [hl], b
    cp a
    reti


    cp [hl]
    jp Jump_038_767b


    ccf
    jr nz, jr_038_7714

    ld a, b
    daa
    ccf
    ld e, $1e
    dec b
    db $10
    ld b, $ff
    adc c
    sub a
    db $ec
    ld a, a
    ld b, d
    dec b
    jr nz, jr_038_76cc

    rst $38
    sub c
    jp hl


    scf
    cp $42

jr_038_76cc:
    dec b
    jr nc, jr_038_76d5

    sbc a
    jp hl


    ld a, a
    ld b, h
    ld b, a
    ld a, d

jr_038_76d5:
    dec b
    ld b, b
    ld b, $f9
    sub a
    cp $22
    ld [c], a
    ld e, [hl]
    nop
    ld bc, $3801
    jr c, jr_038_7720

    inc h
    rra
    inc de
    ccf
    ld a, [hl-]
    ld a, a
    ld b, c
    cp $87
    db $fd
    rst $38
    dec bc
    rrca
    ld a, b
    ld a, b
    ld hl, sp-$78
    cp $1e
    rst $38
    ld sp, $87ff
    ld a, b
    add sp, -$50
    ldh a, [$d0]
    ldh a, [rIE]
    rst $38
    sub a
    db $fd
    sub a
    db $fc
    ld d, e
    ld a, a
    scf
    inc a
    dec sp
    ld a, $3f
    daa
    inc a
    inc a
    ld hl, sp-$08
    db $ec

jr_038_7714:
    cp h
    ld [$c93e], a
    rst $38
    rst $28
    ccf
    ret nc

    ld [hl], b
    ldh [$e0], a
    nop

jr_038_7720:
    nop
    ld e, $1e
    rra
    ld de, $787f
    rst $38
    adc h
    rst $38
    pop hl
    ld e, $17
    inc c
    rrca
    ld c, $0f
    inc e
    inc e
    inc a
    inc h
    ld hl, sp-$38
    db $fc
    ld e, h
    cp $82
    ld a, a
    pop hl
    ccf
    rst $38
    ld [hl], b
    ldh a, [$78]
    ld a, a
    add h
    rst $38
    ld b, d
    ld a, a
    jr nz, jr_038_7788

    jr nc, jr_038_778a

    jr z, jr_038_778c

    inc e
    rra
    inc bc
    inc bc
    ldh a, [$f0]
    ld hl, sp-$48
    ld hl, sp-$78
    ld a, h
    db $fc
    ld a, $e2
    ld a, [hl]
    ld a, [$8efe]
    ld hl, sp-$08
    jr @+$21

    jr nz, jr_038_77a4

    ld b, b
    ld a, a
    adc [hl]
    rst $38
    ldh a, [rIE]
    inc l
    ccf
    ld e, $13
    rra
    rra
    ld bc, $0670
    ld e, $fa
    inc c
    db $fc
    ldh a, [$f0]
    ld bc, $0840
    dec c
    rrca
    ld a, [bc]
    ld bc, $094f
    cp a
    rst $38
    ld d, b
    ldh a, [rNR23]

jr_038_7788:
    rra
    inc h

jr_038_778a:
    ccf
    ld b, d

jr_038_778c:
    ld a, a
    sbc d
    rst $38
    ldh a, [rIE]
    dec bc
    rrca
    rlca
    rlca
    nop
    nop
    rra
    rst $38
    ld hl, $41ff
    rst $38
    ld [bc], a
    cp $0c
    db $fc
    inc e
    db $fc
    db $fc

jr_038_77a4:
    db $e4
    inc a
    inc a
    ld bc, $ffa0
    dec c
    nop
    ld bc, $5405
    ld d, h
    ld a, b
    ld a, b
    ld e, h
    ld [hl], h
    cp a
    di
    sbc [hl]
    ei
    sbc a
    db $fd
    sub a
    ld a, [$755f]
    nop
    nop
    jr nc, jr_038_77f2

    ld [hl], b
    ld d, b
    ldh a, [$90]
    ldh [$a0], a
    db $fc
    ld a, h
    ld a, [c]
    cp [hl]
    ld [$557e], a
    ld a, e
    ld c, e
    ld a, [hl]
    ld h, [hl]
    ld a, a
    ld b, c
    ld a, a
    ld a, b
    ld a, a
    add h
    rst $38
    xor e
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    cp [hl]
    cp h
    db $fc
    call z, $04fc
    db $fc
    inc d
    db $fc
    ld c, h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc

jr_038_77f2:
    inc bc
    ld [bc], a
    rlca
    rlca
    ld [$170f], sp
    rra
    jr jr_038_781b

    jr nz, jr_038_783d

    nop
    nop
    ld b, b
    ld b, b
    ldh a, [$f0]
    ldh [rNR41], a
    ld hl, sp-$68
    ldh a, [$f0]
    inc e
    db $fc
    ld [$20f8], sp
    ccf
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    dec b
    ld h, d
    nop
    ld h, b
    ld a, a
    dec b
    ld l, e

jr_038_781b:
    nop
    inc c
    db $fc
    or $fa
    adc h
    db $fc
    adc b
    ld hl, sp+$78
    ld hl, sp-$7c
    db $fc
    inc h
    db $fc
    dec b
    ld a, $00
    ld bc, $0101
    ld bc, $0302
    inc b
    rlca
    ld [$100f], sp
    rra

jr_038_7839:
    db $10
    rra
    sub b
    sub b

jr_038_783d:
    ldh [$e0], a
    jr c, jr_038_7839

    db $10
    ldh a, [$30]
    ldh a, [$5e]
    cp $7c
    db $ec
    ld a, [hl]
    sbc $20
    ccf
    jr nz, jr_038_788e

    jr nc, jr_038_7890

    jr nz, jr_038_7892

    inc a
    ccf
    ld b, d
    ld a, a
    ld e, c
    ld a, a
    ccf
    ccf
    ld e, $ea
    set 7, l
    ld b, $fe
    ld h, h
    db $fc
    inc b
    db $fc
    inc l
    db $fc
    ld e, $fe
    cp $fe
    dec b
    nop
    ld [bc], a
    adc a
    rst $38
    sbc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    dec b
    db $10
    inc bc
    ret nc

    inc a
    db $fc
    ld [bc], a
    cp $05
    jp c, Jump_000_0500

    ld l, b
    nop
    ld b, b
    ld a, a
    ld b, b
    dec b
    daa
    ld bc, $ffb3

jr_038_788e:
    ld a, [hl]
    ld a, [hl]

jr_038_7890:
    inc b
    db $fc

jr_038_7892:
    inc c
    db $fc
    inc b
    dec b
    di
    ld bc, $050c
    dec sp
    ld bc, $0100
    inc b
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld c, $0b
    rra
    dec d
    rra
    dec de
    rrca
    ld c, $50
    ret nc

    xor b
    cp b
    ret nc

    ldh a, [$a0]
    ldh [rSVBK], a
    ret nc

    ld hl, sp-$58
    ld hl, sp-$28
    ldh a, [rSVBK]
    rst $28
    add sp, -$69
    rst $30
    ld c, a
    ld a, l
    ld c, e
    ld a, [hl]
    ld hl, $183f
    rra
    rra
    inc de
    inc e
    inc e
    rrca
    ld [$3f3f], sp
    ld c, a
    ld a, l
    adc e
    cp $b1
    rst $38
    ret z

    rst $08
    sbc a
    sub e
    inc e
    inc e
    dec c
    dec c
    ld [bc], a
    ld b, $05
    rlca
    inc bc
    inc bc
    inc b
    nop
    nop
    ld a, [c]
    di

Call_038_78ec:
    adc h
    rst $38
    ld b, b
    ret nz

    and b
    ldh [$d0], a
    ldh a, [$38]
    add sp, -$04
    call nc, $ee7e
    ld a, $f2
    cp a
    pop hl
    ld b, l
    ld a, a
    ld hl, $103f
    rra
    inc e
    rra
    db $10
    rra
    add hl, bc
    rrca
    rlca
    ld b, $01
    ld bc, $7e7e
    cp [hl]
    xor [hl]
    ld e, [hl]
    jp nc, $ce4e

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [rNR41], a
    ldh [$e0], a
    inc b
    ld b, b
    ld [$0706], sp
    inc c
    rrca
    ld de, $201f
    ccf
    ld b, b
    ld a, a
    sbc h
    rst $38
    or b
    rst $38
    ret


    rst $08
    add a
    add [hl]
    ld bc, $0a01
    dec bc
    dec d
    dec e
    dec bc
    rrca
    dec c
    rrca
    jr @+$21

    db $10
    rra
    ld [$0a0f], sp
    rrca
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$18
    ld hl, sp+$50
    ldh a, [$e6]
    rst $20
    sbc d
    ei
    ld b, [hl]
    ld a, a
    ld b, d
    ld a, a
    jr nz, jr_038_799e

    jr jr_038_7980

    inc e
    rla
    rrca
    rrca
    ld [hl], $37
    ld c, d
    ld a, e
    add [hl]
    rst $38
    or d
    rst $38
    ret z

    rst $08
    sbc b
    sbc a
    inc b
    call z, $0400
    and b
    rst $38
    dec c
    nop
    ld bc, $e605
    and $97
    push af
    ld d, e

jr_038_7980:
    ld [hl], d
    xor [hl]
    db $fd
    and [hl]
    db $fd
    ld d, [hl]
    ld a, l
    ld c, a
    ld a, [hl]
    and a
    db $fd
    add d
    add d
    push bc
    ld b, a
    push hl
    ld h, a
    add hl, sp
    rst $18
    or d
    cp $7d
    sbc a
    ld sp, hl
    adc a
    cp $e6
    sbc a
    ld hl, sp+$4f

jr_038_799e:
    ld a, b
    ccf
    jr c, @+$09

    inc b
    dec de
    rra
    ld [de], a
    ld e, $1a
    ld e, $0e
    ld c, $fd
    rst $30
    cp $ce
    ld hl, sp+$78
    ldh a, [rNR10]
    db $ec
    db $fc
    inc h
    inc a
    jr z, @+$3a

    jr c, jr_038_79f3

    dec sp
    dec sp
    dec h
    dec a
    inc d
    inc e
    dec hl
    ccf
    add hl, hl
    ccf
    dec d
    rra
    inc sp
    ccf
    inc l
    ccf
    and b
    and b
    ldh [$60], a
    ld hl, sp-$68
    ld b, h
    cp h
    call nc, Call_038_463c
    cp [hl]
    cp $e2
    ld e, a
    ld sp, hl
    inc de
    rra
    ld [$0f0f], sp
    rrca
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0501
    db $fc
    ldh a, [rIE]
    push af
    rst $38
    sbc e
    db $f4
    inc d
    ldh a, [rNR10]
    db $ec

jr_038_79f3:
    inc l
    call nc, Call_000_24fc
    inc a
    inc a
    inc a
    inc bc
    inc bc
    dec b
    ld l, d
    nop
    ld [hl], c
    ld [hl], c
    ld c, a
    ld a, a
    inc sp
    ccf
    ld c, l
    ld a, a
    ld [hl-], a
    ccf
    ld c, a
    ld a, a
    jr nc, jr_038_7a4c

    dec b
    ld h, h
    ld [$4141], sp
    and e
    ld [c], a
    and a
    and $9f
    cp $43
    ld a, a
    cp c
    rst $38
    add a
    rst $38
    ld a, c
    ld a, a
    ld h, a
    ld h, a
    jp hl


    xor a
    ld a, [$e5be]
    ld a, a
    sbc c
    rst $38
    and $fe
    ld a, [de]
    cp $e4
    db $fc
    adc a
    rst $38
    ld h, c
    ld a, a
    rra
    ld e, $0f
    inc c
    scf
    ccf

jr_038_7a3a:
    inc h
    inc a
    inc d
    inc e
    inc e
    inc e
    jr jr_038_7a3a

    ldh a, [$f0]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret c

    ld hl, sp+$48
    ld a, b

jr_038_7a4c:
    ld e, b
    ld a, b
    ld [hl], b
    ld [hl], b
    dec b
    and b
    rst $38
    dec c
    nop
    ld bc, $0009
    nop
    pop af
    pop af
    ei
    adc d
    ld a, a
    ld h, l
    rst $18
    or [hl]
    ld a, e
    ld e, [hl]
    rst $38
    xor d
    ld a, a
    ld e, h
    cpl
    jr z, jr_038_7aa9

    ld a, $75
    ld e, a
    ccf
    inc l
    ld [hl], a
    ld d, [hl]
    cpl
    dec hl
    ccf
    ld [hl], $19
    add hl, de
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rlca
    ld b, $1b
    ld e, $3f
    ld a, [hl+]
    ld a, a
    ld c, h
    ld l, a
    ld e, b
    rst $10
    cp [hl]
    rst $30
    cp l
    rst $38
    xor a
    ld [hl], l
    ld d, a
    daa
    dec h
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    dec e
    dec e
    nop
    nop
    rst $20
    rst $20
    rst $38
    sbc b
    ld a, a
    ld e, h
    rst $38
    xor a
    ld a, a
    ld d, d
    rst $38
    xor c
    ld a, a
    ld d, l
    nop
    nop

jr_038_7aa9:
    add b
    add b
    ldh a, [rSVBK]
    ret c

    jr c, @-$02

    ld h, h
    call c, $fc74
    ld d, h
    cp $22
    ld a, e
    ld [hl], a
    ld a, a
    ld e, [hl]
    ld sp, hl
    xor a
    rst $30
    rst $10
    di
    jp nc, Jump_038_5979

    inc a
    inc l
    jr @+$1a

    rst $38
    pop de
    rst $38
    ld e, l
    cp $ce
    db $fc
    ld h, h
    ld hl, sp-$48
    ld b, b
    ld b, b
    add hl, bc
    cp $f0
    rlca
    rlca
    rrca
    ld [$0407], sp
    rlca
    rlca
    ld e, $1b
    ccf
    dec l
    ld a, [hl]
    ld e, e
    ld a, a
    ld l, e
    add hl, bc
    ld d, d
    ld a, [bc]
    rst $38
    pop de
    ld a, a
    ld d, [hl]
    ld a, l
    ld [hl], a
    ld a, a
    ld d, a
    ccf
    ld l, $3d
    dec l
    inc a
    inc l
    ld a, [de]
    ld a, [de]
    inc c
    inc c
    rst $38
    ld c, l
    cp $e2
    db $fc
    ld a, h
    ldh [$a0], a
    add hl, bc
    ld a, d
    ld [bc], a
    add hl, bc
    cp $f5
    ld h, h
    rst $38
    sub [hl]
    ld a, a
    ld e, d
    rst $38
    xor e
    ld a, a
    ld e, h
    cpl
    add hl, hl
    ccf
    ccf
    ld [hl], a
    ld e, l
    ccf
    dec l
    ld [hl], a
    ld d, l
    cpl
    ld a, [hl+]
    add hl, bc
    inc e
    dec b
    inc b
    rlca
    inc b
    rra
    ld a, [de]
    ccf
    daa
    ld a, a
    ld c, h
    ld l, a
    ld e, c
    rst $10
    cp e
    rst $38
    cp l
    rst $38
    xor l
    add hl, bc
    ret c

    nop
    add hl, bc
    ld a, [hl-]
    ld [bc], a
    nop
    ld bc, $0009
    nop
    pop af
    pop af
    adc d
    ei
    ld h, l
    ld a, a
    sub a
    cp $5b
    ld a, [hl]
    xor a
    ld a, [$7c5f]
    cpl
    jr z, jr_038_7b8d

    ld a, $55
    ld a, a
    cpl
    inc a
    ld d, a
    db $76
    dec hl
    cpl
    ld [hl], $3f
    add hl, de
    add hl, de
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    ld b, $1b
    ld e, $2f
    ld a, [hl-]
    ld c, a
    ld a, h
    ld c, a
    ld a, b
    sub a
    cp $b5
    rst $38
    xor a
    rst $38
    ld d, l
    ld [hl], a
    dec h
    daa
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    dec e
    dec e
    nop
    nop
    rst $20
    rst $20
    sbc b
    rst $38
    ld e, h
    ld a, a
    xor a
    rst $38
    ld d, d
    ld a, a
    xor c
    rst $38
    ld d, l
    ld a, a
    nop
    nop

jr_038_7b8d:
    add b
    add b
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$7c
    db $e4
    ld e, h
    db $f4
    ld a, h
    call nc, $e23e
    ld [hl], e
    ld a, a
    ld e, [hl]
    ld a, a
    xor c
    rst $38
    rst $10
    rst $30
    jp nc, Jump_038_59f3

    ld a, c
    inc l
    inc a
    jr jr_038_7bc3

    rst $38
    pop de
    ld a, a
    db $dd
    cp $ce
    ld a, h
    db $e4
    cp b
    ld hl, sp+$40
    ld b, b
    add hl, bc
    cp $f0
    rlca
    rlca
    ld [$040f], sp
    rlca
    rlca
    rlca
    ld a, [de]

jr_038_7bc3:
    rra
    dec l
    ccf
    ld e, d
    ld a, a
    ld l, e
    ld a, a
    add hl, bc
    ld d, d
    ld a, [bc]
    rst $38
    pop de
    ld d, [hl]
    ld a, a
    ld [hl], l
    ld a, a
    ld d, a
    ld a, a
    ld l, $3f
    dec l
    dec a
    inc l
    inc a
    ld a, [de]
    ld a, [de]
    inc c
    inc c
    ld a, a
    call $e2fe
    ld a, h
    db $fc
    and b
    ldh [$09], a
    ld a, d
    ld [bc], a
    add hl, bc
    cp $f4
    ld h, h
    ld a, a
    sub [hl]
    rst $38
    ld e, d
    ld a, a
    xor e
    rst $38
    ld e, h
    ld a, a
    add hl, hl
    cpl
    ccf
    ccf
    ld d, l
    ld a, a
    dec l
    ccf
    ld d, l
    ld [hl], a
    ld a, [hl+]
    add hl, bc
    dec de
    dec b
    inc b
    rlca
    inc b
    rlca
    ld a, [de]
    rra
    daa
    ccf
    ld c, h
    ld a, a
    ld c, c
    ld a, a
    sub e
    rst $38
    cp l
    rst $38
    xor l
    rst $38
    add hl, bc
    ret c

    nop
    add hl, bc
    ld a, [hl-]
    ld [bc], a
    nop
    ld bc, $0109
    ld bc, $fbfb
    db $fd
    and a
    ld a, [hl]
    ld d, a
    ld l, e
    ld e, a
    ccf
    ld a, [hl+]
    rra
    inc e
    rra
    jr jr_038_7c40

    inc c
    scf
    ld a, [hl-]
    ld d, l
    ld a, e
    ld a, [hl+]
    dec a
    ld d, a
    ld [hl], a
    inc h
    daa
    inc c
    rrca
    rlca
    rlca

jr_038_7c40:
    ldh [$60], a
    ret c

    cp b
    ld d, h
    cp h
    xor b
    ld a, b
    call nc, $48dc
    ret z

    add b
    add b
    add hl, bc
    cp $f0
    inc bc
    inc bc
    dec b
    rlca
    ld b, $07
    dec bc
    rrca
    ccf
    ld a, [hl-]
    ld l, a
    ld e, h
    rst $38
    ld hl, sp+$07
    rlca
    db $f4
    rst $30
    db $eb
    cp e
    cp [hl]
    rst $28
    db $db
    or a
    ld l, l
    ld e, a
    ccf
    inc sp
    ld c, $0f
    ldh a, [$f0]
    ld [$64f8], sp
    db $fc
    ld [hl], h
    call c, $fc5c
    ld a, $e2
    rst $38
    pop bc
    rst $38
    or c
    inc bc
    inc bc
    ld a, [c]
    di
    sub l
    rst $30
    ld a, [hl]
    ld a, a
    dec d
    rra
    inc de
    rra
    ld [$070f], sp
    rlca
    rst $38
    ret


    cp [hl]
    ld a, d
    ld c, [hl]
    cp [hl]
    db $ec
    cp h
    xor d
    ld e, [hl]
    db $f4
    db $f4
    ld h, b
    and b
    ret nz

    ret nz

    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rra
    rra
    ld l, e
    ld [hl], a
    push de
    xor e
    cp $ff
    add hl, bc
    add h
    nop
    add hl, bc
    add b
    nop
    db $fd
    rst $38
    sub e
    rst $38
    ld a, h
    ld a, a
    inc bc

Call_038_7cbc:
    inc bc
    add hl, bc
    ld [hl], b
    ld b, $f6
    or $30
    ret nc

    ldh [$e0], a
    ld bc, $fa01
    ei
    push af
    xor a
    ld a, [hl]
    ld d, a
    ld l, a
    ld e, e
    ld a, $27
    rra
    dec de
    inc e
    rra
    ld a, [bc]
    dec c
    dec [hl]
    ld a, [hl-]
    ld d, a
    ld a, c
    ld a, [hl+]
    ccf
    ld d, l
    ld [hl], a
    ld l, $2f
    jr @+$21

    rlca
    rlca
    and b
    ld h, b
    ld e, b
    cp b
    call nc, $a83c
    ld hl, sp+$54
    add hl, bc
    add hl, hl
    dec b
    ld [bc], a
    add hl, bc
    inc sp
    ld bc, $0f0f
    ld a, [hl-]
    scf
    ld d, a
    ld l, e
    db $fc
    rst $38

Jump_038_7cfe:
    add hl, bc
    and b
    db $fc
    nop
    ld bc, $0305
    inc bc
    inc e
    rra
    dec h
    ld a, $35
    ld l, $7f
    ld e, [hl]
    ld a, e
    ld [hl], a
    inc c
    rrca
    ld c, $0b
    ccf
    scf
    ld c, a
    ld a, d
    ld c, a
    ld a, h
    db $db
    cp h
    cp l
    cp $f6
    rst $10
    or a
    push af
    db $e3
    db $e3
    inc bc
    inc bc
    inc a
    ccf
    ld b, l
    ld a, [hl]
    ld h, l
    ld e, [hl]
    ei
    cp [hl]
    db $cd, $cf, $0e
    dec bc
    rra
    rla
    rra
    ld a, [de]
    ld l, a
    ld a, h
    db $eb
    sbc h
    ld a, [hl]
    ld l, a
    dec e
    rra
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0701
    rlca
    inc e
    rra
    ld a, $33
    ld l, a
    ld e, a
    ld a, b
    ld a, b
    ld hl, sp-$68
    rst $38
    rst $38
    rst $38
    cp h
    ld hl, sp-$08
    ld h, [hl]
    cp $17
    ld sp, hl
    ccf
    rst $18
    ld hl, sp-$18
    jr jr_038_7d78

    add b
    add b
    ld h, b
    ldh [$ce], a
    rst $30
    ld e, a
    ld h, a
    cp [hl]
    rst $08
    jp c, $bdef

    rst $18
    ld d, a
    ld [hl], a
    ld h, b
    ld h, b
    jr nz, @+$22

    ldh [$a0], a
    db $fc
    ld e, h

jr_038_7d78:
    ld e, [hl]
    or d
    dec e
    di
    ccf
    pop hl
    rst $38
    reti


    ld a, a
    ld h, l
    ld e, $1e
    dec b
    ld b, b
    inc b
    ld hl, sp-$08
    rst $38
    sbc a
    rst $38
    db $fc
    sbc [hl]
    rst $28
    ld hl, sp-$08
    ld h, h
    db $fc
    ld e, $f2
    ld a, [hl]
    sbc d
    or $d6
    ldh [$e0], a
    ld h, b
    ldh [$e0], a
    and b
    rst $08
    rst $30
    sbc [hl]
    rst $28
    or d
    rst $18
    ld a, l
    ld a, a
    rlca
    rlca
    dec b
    ld a, [$05f2]
    ld [hl], d
    ld b, $77
    ld e, l
    ld a, [hl-]
    ld a, [hl+]
    jr c, jr_038_7ded

    inc bc
    inc bc
    dec e
    ld e, $27
    ccf
    dec hl
    inc a
    ld a, a
    ld e, a
    ld a, a
    ld a, b
    rrca
    rrca
    rrca
    ld [$3f37], sp
    ld b, a
    ld a, h
    ld c, a
    ld a, a
    db $db
    cp h
    cp a
    rst $38
    rst $30
    rst $10
    or l
    rst $30
    dec b
    ld e, $00
    dec a
    ld a, $47
    ld a, a
    ld c, e
    ld a, h
    rst $38
    cp a
    rst $08
    ret z

    rrca
    rrca
    rra
    jr jr_038_7dfc

    rra
    ld h, a
    ld a, h
    rst $28
    sbc a
    ld a, e
    ld l, h
    rra

jr_038_7ded:
    rra
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_038_7dfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7e43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7e7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7ef4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7fad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7fbc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7fff:
    nop
