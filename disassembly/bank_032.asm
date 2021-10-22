; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    ld [hl-], a
    add hl, hl
    ld b, b
    ld e, e
    ld b, d
    dec bc
    ld b, h
    pop af
    ld b, l
    and b
    ld b, a
    cp b
    ld c, c
    ld h, c
    ld c, e
    ld d, d
    ld c, l
    add b
    ld c, a
    ld l, l
    ld d, c
    rst $28
    ld d, d
    jr nz, jr_032_406e

    ld de, $7c57
    ld e, b
    xor h
    ld e, d
    ld d, l
    ld e, h
    cp $5d
    sbc e
    ld e, a
    sbc e
    ld l, a
    jr jr_032_409c

    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    nop
    rst $38
    jr @-$17

    inc a
    jp $f17e


    ld a, a
    ld sp, hl
    rst $08
    db $fc
    add a
    cp $03
    rst $38
    ld [de], a
    db $fd
    dec d
    ld sp, hl
    add hl, sp
    ld a, [c]
    inc sp
    push de
    db $76
    db $db
    ld a, l
    push de
    ei
    rst $28
    rst $30
    rst $38
    inc bc
    db $fc
    call z, $f070
    add b
    add b
    add b
    add b
    add hl, bc
    db $fc
    ldh a, [$80]
    add b
    rst $38
    ldh a, [rIF]
    ld c, $01
    ld bc, $0101
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$101f], sp
    rst $38
    rlca
    ld sp, hl

jr_032_406e:
    ld a, $d9
    and $98
    ld h, a
    ret z

    scf
    ret nz

    ld hl, $00c0
    add b
    nop
    rst $38
    ldh a, [$8f]
    ld a, b

Call_032_407f:
    ccf
    ld hl, sp+$4f
    cp $93
    cp $af
    db $fc
    rst $38
    ldh a, [$bf]
    add sp, -$01
    ld bc, $07ff
    ld hl, sp+$0f
    pop af
    rra
    pop af
    rra
    ldh [$3f], a
    call nz, $c27f
    ld a, a
    rst $38

jr_032_409c:
    rst $38
    ld d, b
    db $d3
    and b
    rst $38
    call z, $ffff
    rst $38
    rst $38
    rst $08
    rst $08
    or c
    ld a, [hl]
    rst $00
    rst $08
    rst $08
    ld d, b
    rst $18
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld h, c
    rst $38
    sbc e
    rst $38
    ccf
    ccf
    adc a
    adc h
    ld a, a
    ldh a, [$7f]
    ret nz

    ccf
    di
    call c, Call_032_5bfc
    db $eb
    ld a, [hl]
    rst $00
    add e
    inc bc
    adc h
    adc a
    db $d3
    ld e, h
    xor a
    di
    cp h
    call z, $fcf0
    nop
    rst $38
    inc a
    rst $38
    ld a, a
    sub b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld h, b
    ld e, a
    ld [hl], b
    ld c, a
    ld hl, sp-$76
    rst $38
    adc a
    and $af
    jp nz, $c7bb

    rst $30
    ld c, a
    rst $28
    add hl, sp
    cp $37
    ld hl, sp+$2f
    add hl, sp
    rst $38
    ld b, $ff
    rst $00
    jr c, @-$0f

    db $10
    rst $38
    db $e3
    db $fc
    call z, $b77f
    ld a, h
    rst $08
    dec b
    rst $38
    dec c
    rst $38
    push af
    ld [hl], $cf
    adc $3f
    ld sp, $c3ff
    ld a, h
    rlca
    cp h
    rlca
    ccf
    push hl
    ld a, a
    add l
    rst $38
    dec e
    rst $28
    ld a, e
    cp a
    db $db
    ld a, [hl]
    push hl
    cp h
    db $db
    ld a, a
    rst $20
    rrca
    rrca
    db $10
    rra
    inc hl
    inc a
    ld b, a
    ld a, b
    ld c, l
    ld [hl], e
    rst $08
    ld a, [c]
    cp e
    and $9f
    db $f4
    rst $00
    db $fc
    rlca
    db $fc
    db $e3
    ld e, $f3
    ld c, $b3
    adc $db
    ld h, [hl]
    ei
    ld h, $fb
    ld h, $f0
    ld e, a
    pop af
    ld e, [hl]
    ei
    inc a
    rst $38
    ld c, h
    rst $38
    or e
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [hl], b
    ldh [$37], a
    pop hl
    ld e, d
    ei
    ret nz

    db $fd
    ld b, b
    ret c

    push hl
    cp h
    pop hl
    xor h
    ld a, [c]
    or b
    rrca
    or b
    rrca
    cp b
    rlca
    ldh a, [rIF]
    ret nc

    ccf
    ld h, c
    cp a
    ld_long $ff37, a
    ld h, $18
    add hl, bc
    inc l
    db $10
    rst $38
    rrca
    ldh a, [rIE]
    ret nz

    ld a, a
    ldh [rIE], a
    sub b
    rst $38
    ldh a, [rNR22]
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    add a
    ld a, h
    rst $20
    ld e, h
    db $e3
    ld e, [hl]
    db $e3
    ld e, [hl]
    rst $28
    inc [hl]
    rst $38
    inc d
    rst $38
    inc d
    rst $30
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld h, [hl]
    sbc a
    ld a, [c]
    add hl, bc
    ld d, c
    ld de, $cf30
    ld a, a
    ld a, [$fd5f]
    ld l, e
    rst $38
    ld l, c
    cp [hl]
    pop de
    sbc [hl]
    ldh a, [$96]
    ld hl, sp-$52
    ret c

    db $db
    db $ec
    dec [hl]
    xor $fe
    rlca
    rst $38
    push bc
    rst $38
    ld hl, sp-$01
    ld [hl+], a
    db $dd
    ld [hl], $ff
    inc d
    ld l, e
    inc e
    rst $30
    jr @-$0f

    inc [hl]
    xor a
    ld a, [$79ef]
    rst $38
    ld b, b
    add hl, bc
    or [hl]
    ld bc, $3fc0
    ld sp, hl
    add l
    ld a, a
    rst $38
    ld e, $ff
    ld d, $e3
    ld e, a
    and d
    rst $18
    ld [c], a
    sbc a
    rst $30
    adc d
    ld a, l
    add [hl]
    rst $38
    add h
    cp a
    ret nz

    rst $18
    ld h, c
    rra
    ldh a, [$6f]
    sbc b
    rst $38
    ld c, b
    rst $30
    ld l, h
    rst $18
    ld [hl], h
    sbc a
    db $fc
    cp a
    ld [$eabf], a
    rst $38
    sbc h
    rst $38
    di
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$0b

    ld d, c
    ld de, $bf00
    ld h, b
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    and b
    rst $38
    and b
    add hl, bc
    ld a, [hl+]
    ld [de], a
    rst $38
    dec e
    rst $38
    rla
    db $fc
    rrca
    ld sp, hl
    rrca
    ei
    dec c
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    db $f4
    ccf
    ld hl, sp-$01
    ld l, b
    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    xor b
    rst $38
    ld [hl], b
    cp $3f
    rst $38
    inc bc
    cp $03
    rst $38
    ld bc, $ea09
    ld [de], a
    rst $38
    nop
    rst $38
    and [hl]
    rst $38
    or b
    rst $38
    add sp, -$01
    xor b
    rst $38
    add hl, bc
    ld d, b
    ld [de], a
    nop
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    rlca
    jr nc, @+$01

    jr c, @+$01

    inc a
    ld b, $00
    dec bc
    rra
    ld b, $00
    rlca
    ld bc, $03ff
    rst $38
    rlca
    ld b, $00
    rlca
    add b
    ld b, $4a
    ld bc, $ff06
    rst $38
    add hl, bc
    ld b, $ff
    ldh a, [$3f]
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ei
    dec bc
    di
    inc de
    push hl
    daa
    db $eb
    ld l, $e0
    ld h, b
    ret nz

    ret nz

    rst $38
    ld b, $84
    ld bc, $eeee
    db $e4
    push af
    db $e4
    rst $38
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fb
    ld a, [$f9f9]
    db $f4
    db $fc
    ld_long a, $ffee
    add b
    rst $38
    inc c
    di
    inc de
    db $fc
    inc c
    rst $38
    rrca
    pop af
    ld de, $8cfc
    cp $82
    rst $38
    nop
    rst $38
    ldh [$5f], a
    call c, $8283
    sbc a
    sbc h
    and a
    and h
    ccf
    jr c, jr_032_430d

    jr nz, jr_032_42d6

    ld [hl], $02
    cp $02
    db $fc
    dec b

jr_032_42d6:
    db $fd
    rlca
    db $fd
    rlca
    db $fc
    rlca
    bit 1, [hl]
    ei
    ld a, [hl]
    add [hl]
    or a
    ld bc, $ccfd
    cp $33
    rst $38
    inc c
    rst $38
    ldh [rIE], a
    push af
    push af
    xor $64
    ldh [$75], a
    xor $f1
    sub c
    rst $38
    rra
    cp $35
    rst $38
    rst $18
    push af
    ld a, [$fbee]
    rst $08
    db $ec
    db $dd
    ldh a, [$b7]
    ret nc

    ld a, a
    and b
    xor a
    ld d, b
    rst $38
    ld h, c
    rst $28
    ld a, [hl]

jr_032_430d:
    ld b, d
    db $fc
    call nz, $a838
    add hl, sp
    ld sp, hl
    ld c, c
    ld sp, hl
    sbc a
    rst $38
    and h
    rst $38
    jr z, @+$01

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld b, $4e
    inc bc
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    rst $38
    rlca
    cp $03
    db $fc
    rrca
    ld sp, hl
    rrca
    cp $07
    pop bc
    rst $30
    ld bc, $c6f7
    rst $20
    ld c, $ef
    ld c, [hl]

jr_032_4341:
    rst $28
    call c, $5cfd
    rst $38
    ld e, b
    ei
    adc $ff
    and h
    push af
    push de
    rst $38
    and h

jr_032_434f:
    push af
    adc d
    xor $99

jr_032_4353:
    rst $30
    adc d

jr_032_4355:
    xor $84
    or l
    ld d, e
    rst $38
    and l
    db $fd
    ld c, d
    ei
    sub d
    rst $30
    inc b
    rst $28
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    jr z, @+$08

    inc e
    ld bc, $bb3b
    ld l, e
    ld a, [$7273]
    rst $10
    or $a7
    and $7f
    ret nz

    ld a, a
    ret nz

    ld b, $4e
    ld [$03fe], sp
    ld b, $80
    db $10
    db $fc
    dec b
    ld b, $86
    ld de, $ff04
    inc bc
    ld e, b
    rst $38
    ld [hl], b
    rst $30
    jr nc, jr_032_434f

Call_032_4390:
    jr nz, jr_032_4341

    jr nz, jr_032_4353

    jr nz, jr_032_4355

    ld b, b
    rst $18
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

Call_032_439d:
    rst $18
    and b
    and [hl]
    ld e, a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    jr nz, @-$1e

    ld e, $ff
    nop
    rst $38
    jr nz, @-$3f

    ret nz

    ld b, $7c
    ld de, $ff01
    ld bc, $02ff
    cp $ab
    xor $cb
    adc $d3
    sbc $d3
    sbc $d3
    jp c, Jump_032_4a4b

    cpl
    db $ec
    cpl
    add sp, $06
    nop
    inc c
    db $fc
    dec b
    ld hl, sp+$0b
    db $fc
    dec b
    rst $38
    inc bc
    ld b, $00
    inc b
    ret nz

    rst $18
    ld h, c
    rst $28
    ld a, $fe
    ldh [$ef], a
    rst $00
    ld b, a
    rst $38
    jr c, @+$08

    nop
    nop
    ld b, $49
    nop
    ld b, $47
    ld bc, $ffbe
    ld a, a
    ld b, $fc
    ld [de], a
    rlca
    rst $30
    ld b, $10
    jr nz, @+$01

    ld hl, sp+$06
    nop
    ld [bc], a
    ld l, a
    db $ec
    xor e
    xor d
    cpl
    db $ec
    rst $28
    add sp, -$11
    jr z, @+$01

    db $10
    ld b, $00
    rrca
    ld bc, $0240
    add hl, bc
    ldh [rP1], a
    ret nz

    nop
    ret nz

    ld b, $c0
    rlca
    ret nz

    inc bc
    ldh [rP1], a
    ldh a, [rDIV]
    ld_long a, $ff00
    nop

jr_032_4420:
    rrca
    db $10

jr_032_4422:
    rra
    jr nz, jr_032_442c

    nop
    rrca
    add c
    rlca
    ld bc, $0103

jr_032_442c:
    dec c
    sub b
    rst $38
    jr jr_032_4420

    jr c, jr_032_4422

    ld l, b
    sbc l
    ld sp, hl
    rlca
    rst $30
    ld [c], a
    ld a, [$5ff0]
    ld hl, sp-$11
    rst $38
    nop
    add hl, bc
    jr nc, jr_032_4443

jr_032_4443:
    rst $18
    ret nz

    ccf
    ccf
    add h
    ld d, a
    dec bc
    dec sp
    ld [hl], a
    rst $30
    add hl, bc
    jr nc, jr_032_4452

    rst $38
    nop

jr_032_4452:
    rst $38
    ret nz

    ccf
    ldh a, [$ef]
    db $fc
    rra
    ld e, $09
    ld b, b
    dec b
    add hl, bc
    ld b, c
    inc bc
    db $fd
    ld [bc], a
    add hl, bc
    jr nc, @+$03

    ld bc, $07fe
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    ld b, e
    rst $00
    jr nz, @+$01

    ld bc, $02fe
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    xor $df
    rst $38
    ccf
    rst $38
    cp $77
    adc a
    adc l
    ld a, a
    db $76
    rst $38
    xor h
    db $fc
    di
    rst $30
    adc a
    rst $38
    ld sp, hl
    rst $38
    add e
    db $ec
    sbc h
    or $36
    adc c
    ld l, c
    ld [hl], l
    db $fd
    inc bc
    ei
    add e
    sbc d
    inc bc
    ld [hl], d
    dec b
    adc l
    cp a
    or e
    ld a, a
    ld e, c
    rst $38
    adc b
    add hl, bc
    jr nc, jr_032_44a8

    rlca

jr_032_44a8:
    rst $38
    rra
    db $fd
    dec a

jr_032_44ac:
    add hl, bc
    ld d, b
    add hl, bc
    add b
    rst $38
    ret nz

    cp b
    cp l
    db $fd
    rst $00
    rst $38
    inc bc
    cp $06
    db $fc
    inc c
    ld hl, sp+$18
    db $fc
    inc a
    rst $38
    ld h, e
    ld [hl], a
    rst $30
    call nz, $8cc4
    adc h
    ld c, $0e
    add hl, de
    rra
    dec e
    dec d
    jr c, @+$3e

    jr nc, @+$3a

    db $fd
    rst $28
    pop af
    rst $38
    ld b, e
    ld e, [hl]
    ld b, e
    ld a, [hl]
    add h
    db $fc
    add a
    db $fc
    set 3, h
    ld c, b
    ld l, b
    add l
    ld a, l
    ld b, h
    inc [hl]
    ld [bc], a
    adc [hl]
    ld a, [$0306]
    inc bc
    ld a, [$fc07]
    ld b, $05
    rlca
    pop af
    ld [hl], c
    pop hl
    pop hl
    dec a
    dec a
    daa
    scf
    ld l, a
    ld a, e
    rst $00
    rst $20
    add e
    jp $b030


    rst $38
    ret nz

    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ccf
    jr nc, jr_032_454a

    jr nc, jr_032_44ac

    sub b
    sbc a
    sbc b
    sbc a
    sbc b
    rst $38
    ld bc, $5009
    ld a, [bc]
    ld b, e
    ld [hl], e
    db $dd
    db $fd
    cp a
    rst $28
    sbc e
    sbc a
    add h
    rst $18
    ret z

    ld c, a
    ret nc

    ld a, a
    ret nc

    ld e, a
    add hl, hl
    xor [hl]
    xor b
    rst $28
    ret nc

    ld [hl], b
    ldh [rIE], a
    ld hl, $20ee
    pop af
    and h
    ld [$e4a3], a
    db $fd
    rlca
    ld a, [$7107]
    adc c
    nop
    rlca
    db $fc
    inc bc
    ld hl, sp+$04
    nop
    inc bc
    ldh a, [$0e]
    ld l, [hl]
    xor $ff

jr_032_454a:
    cp l
    cp $f6
    ld e, a
    rst $18
    ld d, a
    ld d, h
    ld d, a
    ld d, h
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    adc a
    adc h
    rst $00
    call nz, $dedf
    ld a, a

Jump_032_455e:
    ld h, d
    rst $38
    ret nz

    rst $38
    ld b, b
    add hl, bc
    ld d, b
    inc c
    add hl, bc
    jr nc, jr_032_4569

jr_032_4569:
    ldh [$7f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [rNR21]
    ld hl, sp+$08
    cp $06
    rst $38
    inc bc
    and b
    jp hl


    ld d, b
    db $76
    ld d, b
    ld d, e
    jr z, @+$2e

    inc e
    rra
    rlca
    rlca
    rrca
    inc c
    rst $38
    ld hl, sp-$40
    add hl, sp
    nop
    ld b, $01
    ld sp, hl
    ld [bc], a
    ld b, $0d
    db $fd
    cp $fe
    ldh a, [$33]
    pop af
    ld de, $9293
    and e
    and d
    inc hl
    ld [hl-], a
    ld b, a
    ld d, h
    add a
    and h
    rrca
    ret z

    ccf
    or b
    rst $38
    ret nz

    add hl, bc
    ld a, h
    rra
    ld bc, $5009
    add hl, bc
    ld bc, $02fe
    db $fd
    rlca
    ei
    ccf
    rst $38
    ld c, h
    rst $38
    ld [hl], a
    add hl, bc
    jr nc, jr_032_45be

jr_032_45be:
    ld c, a
    ld c, b
    xor a
    add sp, $37
    cp [hl]
    cp a
    cp c
    rst $38
    rst $08
    add hl, bc
    jr nc, jr_032_45cd

    ld hl, sp+$0c

jr_032_45cd:
    db $fc
    rlca
    cp $07
    ld hl, sp+$1f
    di
    dec sp
    rst $38
    ld c, h
    rst $38
    ld [hl], b
    add hl, bc
    cp d
    nop
    ld a, a
    ld [hl], b

jr_032_45de:
    rrca
    xor $63
    ei
    rra
    ld a, [hl]
    rst $18
    reti


    rst $38
    inc h
    rst $38
    inc e
    add hl, bc
    or [hl]
    dec b
    ld b, b
    add hl, bc
    adc $12
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38

jr_032_45f5:
    jr c, jr_032_45de

    ld e, h
    rst $00
    cp $ff
    cp d
    rst $38
    add $bb
    cp $c7
    ld a, h
    rst $38

jr_032_4603:
    inc a
    rst $38
    nop
    ld [bc], a
    db $10
    rrca
    ld h, $1c
    di
    ld e, $f9
    rrca
    ld [bc], a
    db $10
    inc bc
    jr jr_032_4603

    jr c, jr_032_45f5

    ld [hl], b
    cp a
    ldh [$3f], a
    db $fc
    rst $20
    inc a
    rst $30
    inc e
    rst $38
    inc e
    rst $30
    inc e
    rst $38
    ld e, $f5
    rra
    push af
    rla
    di
    rra
    ld [bc], a
    db $10
    ld bc, $ff38
    ld d, $ff
    add hl, bc
    db $fd
    ld b, $fc
    rlca
    cp $c3
    ld [bc], a
    db $10
    dec b
    add b
    rst $38
    ld b, b
    ld a, a
    and b
    ccf
    rst $10
    ld [bc], a
    db $10
    dec b
    inc bc
    rst $38
    inc b
    db $fc
    dec bc
    ld hl, sp-$29
    db $fc
    rlca
    db $fc
    rlca
    cp $3b
    db $fd
    rst $10
    db $fd
    dec l
    ld [hl], e
    sub $69
    rst $38
    ret


    ld sp, hl
    add e
    cp $bf
    db $fc
    ccf
    ldh [$df], a
    ldh a, [$ef]
    jr c, @+$01

    jr jr_032_466c

    stop

jr_032_466c:
    pop af
    ld de, $1df1
    rst $38
    rrca
    ei
    ld [bc], a
    push bc
    dec b
    cp [hl]
    cp a
    ld c, l
    call $eeab
    jp hl


    rst $38
    db $ed
    ei
    rst $28
    ld sp, hl
    rst $28
    jp hl


    rst $28
    jp hl


    rra
    rst $28
    adc a
    rst $38
    cp $7f
    ld a, e
    sbc e
    sbc c
    db $fd
    ld sp, hl
    rst $38
    db $dd
    cp l
    ld a, e

jr_032_4695:
    ld e, c
    ldh a, [$ef]
    db $e3
    rst $38
    rst $38
    db $fc
    cp l
    or e
    ld [hl-], a
    ld a, a
    ld a, $ff
    ld [hl], a
    ld a, e
    cp h
    inc [hl]
    sbc b
    add sp, $5c
    ld h, l
    cp h
    rst $00
    inc a
    rst $00
    db $fc
    add l
    db $f4
    adc h
    db $f4
    adc h
    db $e4
    sbc l
    rst $38
    add b
    ld [bc], a
    db $10
    ld a, [de]
    ld [bc], a
    add $06
    ld [bc], a
    add $00
    db $fd
    rlca
    rst $08
    ret


    rst $08
    jp hl


    rst $10
    ld hl, sp-$29
    ld hl, sp-$6d
    sbc h
    sub e
    sbc h
    and c
    cp $38
    rst $20
    ld a, b
    db $fd
    ld l, e
    db $fc
    xor l
    cp [hl]
    xor e
    ei
    push de
    ld a, l
    ld a, [$fe3b]
    dec c
    ld a, [$3c03]
    ld a, [hl]
    xor h
    ld a, a
    ld l, c
    ld sp, hl
    xor c
    cp l
    ld d, e
    ld a, [hl]
    xor a
    xor h
    ld a, a
    ldh a, [$bf]
    add b
    db $e4
    sbc a
    db $e4
    sbc a
    call nz, $d83d
    jr z, jr_032_4695

    ld l, c
    cp c
    ld c, e
    ld sp, hl
    rrca

Jump_032_4701:
    ld sp, hl
    rrca
    ld [bc], a
    db $10
    dec d
    ld [bc], a
    ld de, $fd03
    rlca
    ld [bc], a
    add b
    ld a, [de]
    ld a, $a1
    ccf
    jr nz, @+$41

    jr nz, jr_032_4764

    pop af
    ld h, e
    rst $18
    ld a, e
    add $5f
    ld h, b
    cpl
    jr nc, jr_032_479c

    add c
    rst $38
    jr c, @+$01

    ld a, [c]
    rst $38
    di
    rst $38
    rst $38
    ld a, l
    ld a, l
    rst $38
    sub a
    db $fc
    inc b
    ld a, a
    ld [bc], a
    ld [hl], e
    nop
    sbc [hl]
    rst $38
    sbc a
    rst $38
    rst $38
    ld a, a
    ld a, l
    rst $38
    call nc, Call_032_407f
    jp hl


    dec de
    ret


    add hl, sp
    reti


    add hl, hl
    xor c
    ld e, e
    pop af
    rra
    di
    ld e, $d3
    ld [hl], $a3
    ld h, d
    ld [bc], a
    db $10
    dec c
    rlca
    cp $03
    rst $38
    inc bc
    cp $07
    ld a, [$fa0f]
    dec bc
    rst $38
    rlca
    rst $38
    nop
    rla
    jr c, @-$6f

    rst $28
    add b

jr_032_4764:
    ld [c], a
    ldh [$e6], a
    sbc $df
    cp a
    cp c
    rst $38
    ret nz

    ld [bc], a
    sub [hl]
    nop
    ld a, a
    add b
    rst $38
    rst $38
    nop
    jr jr_032_4777

jr_032_4777:
    inc a
    rst $38
    rst $38
    ld [bc], a
    add h
    ld [bc], a
    ei
    rlca
    db $fc
    db $fc
    nop
    jr nc, jr_032_4785

    ld a, c

jr_032_4785:
    rst $38
    cp $02
    stop
    ld b, a
    call nz, $fc87
    rrca
    ld a, h
    dec sp
    ei
    jp nc, $e4d3

    and $ff
    ld [bc], a
    ld l, a
    ld [bc], a
    ld [bc], a
    add e

jr_032_479c:
    inc b
    ld [bc], a
    ld [hl], a
    ld de, $0240
    ld [$08ff], sp
    rst $38
    ld hl, sp+$01
    rst $38
    ld [bc], a
    rst $38
    ld bc, $06fe
    ld sp, hl
    add hl, de
    rst $38
    cpl
    ld sp, hl
    ld e, c
    rst $30
    or $bb
    xor a
    sbc e
    cp [hl]
    rst $38
    add b
    rst $38
    add b
    ld [$0100], sp
    ld [$0021], sp
    add b
    rst $38
    ret nz

    rst $38
    inc bc
    cp $02
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    ret nz

    ccf
    jr nc, @+$01

    add sp, $3f
    inc [hl]
    rst $18
    sbc $bb
    db $eb
    or e
    ld a, [$0008]
    add hl, bc
    nop
    rst $38
    add b
    cp $03
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rla
    or $1f
    cp $2e
    rst $28
    ccf
    pop bc
    db $db
    ldh [$ee], a
    rst $08
    rst $28
    sbc e
    rst $18
    ccf
    ei
    ccf
    cp e
    ld e, e
    rst $18
    rrca
    ccf

jr_032_480d:
    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    or b
    rst $28
    jr c, jr_032_480d

    sbc h
    ld [hl], e
    or $9b
    db $eb
    db $fc
    rst $38
    db $fd
    rlca
    db $fc
    inc b
    rst $38
    dec de
    rst $28
    add hl, sp
    rst $18
    ld [hl], e
    sbc l
    rst $18
    or e
    xor a
    ld a, a
    rst $38
    ld b, $b7
    rrca
    rst $28
    rst $20
    rst $28
    or e
    rst $30
    ld sp, hl
    cp a
    ld hl, sp-$45
    or h
    or $e1
    ld sp, hl
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ret nc

    rst $18
    ldh a, [rIE]
    add sp, -$11
    ld hl, sp-$01
    ccf
    rst $20
    cpl
    rst $28
    ld l, e
    rst $20
    ld l, a
    ei
    ld a, d
    cp c
    xor c
    sub b
    cp e
    pop bc
    rst $18
    jp $a1df


    rst $20
    ld hl, sp-$46
    db $fd
    cp l
    and c
    rst $28
    ld h, c
    rst $38
    and d
    rst $38
    jp z, Jump_000_32ff

    sub $e9
    db $eb
    and $bf
    ld [hl], a
    push af
    add sp, -$1f
    push hl
    xor d
    ei
    rst $38
    or a
    sub a
    sbc c
    rst $10
    cpl
    xor a
    adc $fa
    db $dd
    ld e, a
    cpl
    rrca
    ld c, a
    xor e
    cp [hl]
    rst $38
    jp c, $87d3

    rst $30
    dec bc
    rst $08
    ccf
    cp e
    ld a, a
    ld a, e
    dec bc
    xor $0d
    rst $38
    adc d
    rst $38
    and a
    rst $38
    rst $38
    ld hl, sp-$31
    add sp, -$11
    xor h
    rst $08
    db $ec
    cp a
    cp h
    dec sp
    ld a, [hl+]
    inc de
    cp d
    rlca
    or $b9
    ld sp, hl
    db $fc
    cp l
    cp $be
    cp $be
    rst $38
    cp a
    ld [$1028], sp
    cp a
    rst $38
    jp z, $8afa

    ld [$fd5d], a
    inc d
    call c, Call_000_363e
    or $fe
    cp [hl]
    cp $f1
    cp a
    dec [hl]
    sub l
    dec a
    add hl, de
    ld a, b
    ld e, d
    ei
    add sp, $5c
    db $f4
    ld c, a
    rst $18
    ld h, a
    db $ec
    dec a
    db $fc
    ld e, b
    ld d, d
    ld a, b
    jr nc, jr_032_491e

    or l
    cp [hl]
    ld l, $74
    ld e, [hl]
    db $e4
    or $cc
    ld l, [hl]
    ld a, c
    ld a, a
    and a

Jump_032_48ed:
    cp a
    and d
    xor a
    ld [hl], h
    ld a, [hl]
    ld d, b
    db $76
    ld sp, hl
    reti


    rst $18
    rst $38
    ei
    rst $38
    rra
    ei
    dec sp
    ld a, $7f
    ld a, d
    rst $38
    ld a, [$7408]
    inc d
    ei
    cp $ff
    ld e, a
    rst $38
    ld e, a
    ld sp, hl
    ld e, c
    db $fc
    ld d, [hl]
    cp $5f
    rst $38
    ld d, e
    cp $57
    ld hl, sp+$5b
    ldh [$bf], a
    and d
    ei
    jp nz, $8673

jr_032_491e:
    and $4e
    ld c, d
    ccf
    or c
    rra
    ret nc

    adc a
    add sp, -$5a
    db $ec
    ld d, e
    or $1d
    db $fd
    dec bc
    rst $38
    inc c
    ccf
    adc e
    adc e
    rst $38
    ld a, a
    ld hl, sp+$18
    jp z, $946f

    rst $18
    ld [hl], b
    ld a, a
    and b
    cp $60
    ld hl, sp-$5d
    and e
    rst $38
    db $fc
    ld a, a
    ld h, b
    rrca
    ei
    adc e
    cp a
    add a
    sbc l
    jp nz, $e4ce

    and l
    ld sp, hl
    dec de
    ldh a, [rNR22]
    ld [c], a
    rst $28
    rst $38
    db $f4
    rst $38
    db $f4
    ccf
    inc [hl]
    ld a, a
    call nc, $f4ff
    rst $38
    sub h
    rst $38
    call nc, $b43f
    di
    ld d, a
    rst $38
    ld e, h
    rst $18
    ld [hl], h
    rst $38
    inc a
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $00
    db $f4
    rst $30
    inc [hl]
    rst $38
    jr z, @+$01

    jr nc, jr_032_4988

    nop
    dec b
    rrca
    db $fc
    inc c
    rst $38
    rlca
    rst $38

jr_032_4988:
    inc bc
    ld [$0500], sp
    db $e3
    ld e, h
    ld e, h
    db $e3
    db $e3
    cp a
    cp l
    cp $7b
    cp $02
    add sp, $00
    jp Jump_032_4701


    ld e, a
    db $db
    jp c, $2efb

    ei
    cp $87
    ld a, h
    ccf
    ld a, b
    ccf
    ld h, b
    rst $38
    ret nz

jr_032_49ab:
    sbc a
    call nc, Call_032_74ff
    rst $30
    ld e, h
    rst $38
    ld a, b
    rst $38
    jr jr_032_49be

    ld [$4012], a
    ld [bc], a
    ld b, $ff
    ld b, $ff

jr_032_49be:
    rst $38
    dec de
    inc c
    ld b, $00
    rrca
    inc e
    ld b, $ff
    rst $38

jr_032_49c8:
    dec b
    inc e
    ei
    rrca
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    ei
    ld c, $fb
    ld c, $ff
    ld a, [bc]
    db $fd
    dec bc
    rst $30
    jr jr_032_49c8

    db $ec
    ld a, d
    pop de
    push bc
    db $d3
    ld b, $00
    inc bc
    ret nz

    cp a
    ld hl, $27fe
    jr c, jr_032_49ab

    or b
    rst $18
    ld b, $00
    inc bc
    inc a
    rst $08
    ld hl, sp+$1f
    or $3f
    push af
    ld c, [hl]
    rst $08
    ld b, $00
    inc bc
    jr nc, @+$01

    ld d, b
    cp a
    ldh [$bf], a
    cp b
    ld c, a
    ld d, h
    ld b, $00
    inc bc
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $0fff
    ld a, [c]
    dec sp
    call $dd7d
    push af
    ld d, [hl]
    sbc $a9
    db $fd
    call Call_000_1fef
    push de
    cp e
    add $7f
    cp h
    ld a, [$4cf8]
    ret


    cp [hl]
    or c
    ld a, l
    db $e3
    ld [hl-], a
    rst $08
    rst $38
    rst $38
    ret c

    ld l, a
    ret c

    ld l, e
    cp c
    set 5, d
    sbc [hl]
    sub l
    db $fd
    ld e, [hl]
    sbc $f9
    ld sp, hl
    or [hl]
    rst $30
    sub a
    sub a
    xor e
    cp [hl]
    ld d, a
    ld a, l
    xor a
    db $e4
    cpl

Jump_032_4a4b:
    or h
    ld a, a
    ld d, d
    or $99
    ld hl, sp+$0f
    rra
    inc e
    rst $38
    ldh a, [$9f]
    ld a, b
    rst $28
    ld hl, sp-$71
    ld a, b
    rra
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $ca06
    ld [bc], a
    cp $03
    db $fc
    rlca
    rst $28
    push af
    rst $08
    cp c
    di
    ld a, l
    add d
    ld a, a
    add h
    db $fd
    ld a, b
    db $fd
    ld d, b
    db $dd
    sub b
    sbc l
    or [hl]
    cp a
    ei
    ld e, a
    and h
    ld a, a
    ei
    ld d, a
    cp a
    ld l, b
    db $dd
    dec [hl]
    xor d
    dec de
    add $05
    reti


    ld a, [$f4bf]
    ld c, e
    db $fc
    cp a
    call nc, Call_000_2cfb
    ld [hl], a
    ld e, b
    xor [hl]
    or c
    ld e, a
    db $e3
    rst $38
    rrca
    jp c, $d50b

    dec c
    sub h
    ld c, h
    sub h
    ld c, h
    inc [hl]
    adc h
    inc h
    sbc h
    db $e4

jr_032_4aae:
    db $dc, $ff, $00
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [$5f], a
    ld [hl], b

jr_032_4ab9:
    ld e, a
    ld [hl], b
    cpl
    jr c, jr_032_4aed

    jr c, jr_032_4ab9

    rrca
    ld a, [c]
    ld e, $f2
    ld e, $e4
    inc a
    ld b, $86
    db $10
    or $1e
    rst $30
    dec e
    inc d
    ld a, [de]
    ld d, $18
    cpl
    jr c, jr_032_4b24

    ld [hl], b
    ld c, a
    ld [hl], b
    sbc a
    ldh [$9f], a
    ldh [$80], a
    ld hl, sp+$7a
    add e
    ld a, c
    add l
    inc a
    ld b, e
    sbc a
    nop
    db $e3
    inc b
    rst $38
    nop
    ei
    rlca
    rra

jr_032_4aed:
    jr nz, jr_032_4aae

    adc h
    ccf
    ld d, b
    ld a, a
    and b
    db $fc
    ld b, c
    ld hl, sp+$43
    di
    add h
    rst $28
    nop
    rst $18
    ld bc, $3ce4
    db $f4
    inc e
    add sp, $18
    add sp, $18
    db $e4
    inc e
    db $e4
    ld a, h
    sub l
    db $fd
    cp a
    cp $17
    inc e
    ld b, $d0
    db $10
    ld [hl], a
    ld a, h
    rst $30
    sbc h
    rst $38
    sbc b
    rst $38
    jr @+$01

    db $10
    rst $38
    inc c
    rst $38
    dec b
    ld b, $2a
    db $10

jr_032_4b24:
    rst $38
    dec b
    rst $38
    rlca
    ld b, $00
    nop
    rst $30
    ld hl, sp+$7f
    add b
    cp $ff
    or c
    rst $38
    ei
    ld l, a
    rst $38
    db $fc
    ld b, $00
    ld [bc], a
    ret nz

    jr nz, @+$01

    nop
    rst $38
    rst $38
    ld b, $00
    inc b
    ld a, $07
    ld sp, hl
    rrca
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    inc bc
    ld b, $00
    ld [bc], a
    ld [hl], a
    ld e, h
    inc hl
    ld h, $8f
    adc [hl]
    rst $38
    ld a, [$2e06]
    dec b
    ld b, $03
    jr nz, @+$08

    rst $38
    rst $30
    ld b, b
    ld [bc], a
    ld de, $11ff
    rst $38
    cp $01
    ld de, $0312
    ld de, $030d
    cp $06
    ei
    adc c
    rst $30
    sub h
    ld l, a
    ld [c], a
    rst $38
    cp c
    cp a
    rst $08
    bit 7, e
    rst $38
    db $fc
    inc bc
    inc bc
    cp $24
    rst $38
    ld sp, hl
    rst $38
    jp z, $f4ff

    adc a
    adc a
    ld h, $56
    rst $38
    nop
    rst $38
    inc b
    rst $38
    adc h
    ld a, a
    ld c, h
    or a
    inc a
    rst $38
    add sp, -$11
    sbc b
    sbc a
    ldh a, [rNR11]
    nop
    rrca
    nop
    ld de, $040f
    ld de, $f6ff
    ld a, b
    add a
    cp $01
    rra
    ldh [$e7], a
    ld hl, sp+$7b
    db $fc
    dec a
    or a
    or a
    cp a
    sbc a
    cp a
    and a
    cp e
    sub a
    cp e
    adc a
    ld e, [hl]
    ld b, [hl]
    ld e, [hl]
    ld d, [hl]
    dec l
    cpl
    ld [hl], a
    daa
    daa
    ld d, a
    adc a
    adc a
    sbc $df
    ld d, [hl]
    ld d, a
    adc e
    adc e
    ld a, [$fafb]
    xor e
    ld l, a
    ld l, b
    rst $28
    ret z

    rst $28
    dec hl
    db $ec
    ld c, a
    add sp, -$71
    ret nc

    ld d, $d1
    ld d, l
    and d
    and e
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    rlca
    call nz, $383f
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    ld de, $0c00
    ld a, [c]
    ld e, $ef
    inc sp
    db $fd
    dec l
    db $ec
    inc a
    db $fd
    dec e
    cp $0e
    rst $38
    rlca
    ei
    rrca
    dec l
    daa
    push de
    rst $10
    dec a
    rst $38
    call $30ff
    ld hl, sp+$10
    ldh a, [rNR42]
    ld [hl], c
    ret


    jp hl


    daa
    xor a
    db $76
    adc a
    sbc a
    rst $18
    push hl
    db $fd
    ld a, [de]
    ld a, e
    ld l, $2f
    jp nc, $e6d3

    rst $28
    xor h
    cpl
    ld [hl], a
    ld a, c
    xor a
    ldh a, [$cf]
    cp $d1
    ld sp, hl
    pop hl
    db $fd
    rst $08
    rst $38
    or e
    rst $38
    rst $38
    ld b, b
    ld a, a
    and b
    rst $38
    and b
    rst $38
    ld h, b
    ld de, $01bc
    add b
    rst $38
    add b
    ld de, $060a
    cp $03
    db $fc
    rlca
    ld sp, hl
    rrca
    rst $30
    rra
    jp hl


    add hl, sp
    pop de
    ld [hl], c
    and d
    db $e3
    ld b, d
    jp $8282


    add h
    add [hl]
    inc b
    ld b, $3f
    rst $38
    rst $20
    ld a, [c]
    ld hl, $2771
    ld [hl], c
    ld hl, $2771
    pop af
    ld h, b
    or b
    ld h, [hl]
    or b
    sbc [hl]
    rst $38
    ldh [$f8], a
    ldh a, [rNR10]
    ld e, [hl]
    ld e, $b2
    ld [de], a
    ld e, l
    or c
    ldh [$e1], a
    db $ec
    pop hl
    rst $08
    rst $38
    dec sp
    ld [hl], a
    dec sp
    scf
    ld a, [de]
    ld [hl], $4e
    ld e, [hl]
    di
    rst $30
    db $fd
    adc a
    ld sp, hl
    adc a
    ld a, a
    ret nz

    ld de, $1070
    cp a
    ldh [rNR11], a
    db $76
    db $10
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld a, [$f20e]
    ld e, $e4
    inc a
    db $e4
    inc a
    ret z

    ld a, b
    ret z

    ld a, b
    sub b
    ldh a, [$90]
    ldh a, [$08]
    ld c, $0a
    inc c
    ld [de], a
    inc e
    ld d, $18
    ld h, $38
    ld l, $30
    cpl
    jr nc, jr_032_4d08

    ld [hl], b
    ld de, $104c
    ld [hl], d
    sbc c
    ld [hl], b
    sbc d
    ld a, c
    adc h
    ld a, b
    adc h
    inc [hl]
    ld b, a
    inc sp
    ld b, a
    ldh [$e1], a
    ld c, h
    ld b, c
    add hl, bc
    inc de
    and c
    dec bc
    or e
    ld b, $a3
    ld b, $05
    inc e
    dec de
    ld hl, sp-$07
    adc a
    ld sp, hl
    adc a
    ld a, [$110d]
    call nz, $fb12
    inc c
    ei
    inc c
    ld c, a
    ld a, b
    daa
    inc a
    and a
    cp h
    sub e
    sbc [hl]

Call_032_4cee:
    ld de, $10d6
    ld c, e
    adc $4b
    adc $9e
    cp $bf
    pop af
    rst $38
    ld h, b
    ld de, $11e4
    inc hl
    db $fc
    inc c
    rst $38
    rra
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    sbc a

jr_032_4d08:
    ldh [$9f], a
    ldh [$f7], a
    ld hl, sp+$0f
    rst $28
    ld c, $3f
    rst $38
    ldh a, [$30]
    ld b, a
    cp b
    ld [bc], a
    sbc c
    ld [hl+], a
    call c, $ee01
    nop
    ld a, a
    add b
    ei
    db $fc
    rst $38
    rlca
    db $e3
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    inc bc
    rst $38
    cp $11
    call z, $fb10
    inc c
    db $eb
    inc e
    di
    rra
    call c, $f83f
    cp $ff
    rrca
    ld e, a
    call c, $ec7f
    ld a, a
    ret z

    ld a, a
    ret z

    rst $38

jr_032_4d4b:
    ret nz

    ld a, a
    ldh [$1f], a
    jr @+$01

    db $fc
    ld b, b
    ld [bc], a
    dec b
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    jr z, jr_032_4d4b

    inc [hl]
    rst $38
    inc de
    rst $30
    jr @+$01

    ld [$0cfb], sp
    rst $38
    nop

jr_032_4d67:
    dec b
    db $10
    ld bc, $fc03
    rlca
    db $fd
    rst $38
    push de
    dec [hl]
    ld [c], a
    dec sp
    dec b
    ld [de], a
    inc bc
    rst $00
    dec sp
    rst $38
    call Call_000_27fe
    push af
    di
    dec de
    dec b
    db $10
    ld bc, $7f80
    rst $00
    cp b
    rst $38
    ld h, a
    rst $38
    ret


    ld e, a
    sbc [hl]
    or c
    dec b
    db $10

jr_032_4d8f:
    inc bc
    add b
    ld a, a
    pop bc
    ld a, a
    cp $57
    ld e, b
    adc a
    cp b
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    jr z, jr_032_4d8f

    ld e, b
    rst $38
    sub b
    rst $18
    jr nc, @+$01

    jr nz, jr_032_4d67

    ld h, b
    cp $07
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    di
    ld e, $f3
    ld e, $fd
    rra
    db $fc
    rla
    and d
    ld a, e
    and e
    db $e3
    db $e4
    ld h, [hl]
    ld hl, sp+$18
    ldh a, [rNR24]
    ldh [$3f], a
    ld sp, hl
    rst $38
    adc [hl]
    cp $f8
    ld a, [hl+]
    ld a, h
    sbc l
    di
    rst $38
    rrca
    ld a, l
    ld e, e
    rst $38
    db $fc
    xor h
    ret nc

    or b
    cp d
    jp c, $a93e

    ld a, l
    ld [hl], e
    sbc [hl]
    cp $e0
    ld a, h
    or h
    rst $38
    ld a, [hl]
    ld l, e
    rla
    dec de
    cp d
    or [hl]
    adc d
    cp l
    adc e
    adc a
    ld c, a
    call z, Call_000_303f
    rra
    jr nc, @+$11

    ld hl, sp+$3f
    rst $38
    ld [c], a
    rst $38
    rst $38
    ret nz

    dec b
    db $10
    ld bc, $9f60
    ldh a, [$9f]
    ldh a, [$7f]
    ldh a, [$7f]
    ret nc

    db $fc
    ld [hl], l
    sbc h
    push af
    adc b
    ret z

    call nc, $f0d4
    or b
    ldh [$a0], a
    db $f4
    call nc, Call_032_6fef
    jp Jump_032_70ff


    rst $38
    ld [$acfd], sp
    cp $7a
    ld e, e
    or d
    sub $ed
    cp l
    ld h, l
    ld a, l
    ld a, a
    ld [hl], l
    adc a
    sbc a
    ld h, b
    rst $28
    dec sp
    cp e
    ld b, [hl]
    ld a, a
    sub e
    rst $10
    cp l
    xor l
    or h
    xor a
    db $fd
    ld e, l
    ld [c], a
    di
    inc c
    rst $28
    cp b
    cp d
    call nz, $92fd
    sub $7b
    ld l, e
    ld e, e

jr_032_4e46:
    db $eb
    add [hl]
    rst $38
    inc e
    rst $38
    jr nz, jr_032_4ecb

    ld l, d
    cp $bc
    or h
    sbc d
    sub $6e
    ld a, d
    ld c, l
    ld a, l
    ld a, a
    ld e, h
    ld [hl], e
    ld e, [hl]
    inc hl
    ld h, $57
    ld d, [hl]
    rra
    ld a, [de]
    rrca
    ld a, [bc]
    ld e, a
    ld d, [hl]
    rst $28
    db $ec
    sbc $7a
    cp $6a
    rst $28
    dec [hl]
    rst $38
    dec e
    dec b
    db $10
    ld bc, $f718
    dec e
    inc hl
    ld a, a
    ld [hl+], a
    ld l, [hl]
    rla
    scf
    ld c, h
    ld e, l
    xor [hl]
    xor a
    push af
    ld [hl], a
    add h
    add a
    rlca
    rlca
    ld c, b
    ld c, a
    jr nc, jr_032_4e46

    dec d
    rst $18
    xor d
    cp h
    ld e, l
    rst $38
    inc sp
    scf
    sub $fb
    xor l
    cp d
    dec h
    push hl
    jr @+$7c

    ld d, c
    rst $30
    xor d
    ld a, e
    ld [hl], h
    rst $38
    sbc c
    reti


    sub $bf
    ld l, e
    cp e
    adc b
    db $fc
    adc b
    db $ec
    pop de
    reti


    ld h, l
    ld [hl], l
    db $eb
    ld [$dc5f], a
    ld b, e
    jp nz, $c1c1

    rst $30
    cp h
    rst $38
    xor h
    rst $28
    ld e, b
    rst $38
    ld [hl], b
    dec b
    db $10
    ld bc, $df30
    ld [hl], b
    ei
    rrca
    db $fc
    rlca
    db $fc
    dec c
    ld a, [c]
    ld [de], a

jr_032_4ecb:
    rst $20
    dec h
    rst $08
    ld c, c
    rst $18
    ld d, c
    rst $38
    ld h, c
    inc c
    rrca
    pop af
    rst $38
    ld [de], a
    rst $38
    inc d
    cp a
    inc d
    ld d, h
    ccf
    ccf
    di
    ld a, [$1d11]
    ld d, a
    ld e, a
    cp b
    cp a
    inc e
    sbc h
    inc sp
    ccf
    db $fc
    rst $18
    ei
    dec bc
    db $fc
    inc b
    rst $38
    rlca
    call nc, Call_000_3bf5
    ei
    ld [hl], b
    ld [hl], e
    sbc b
    ld sp, hl
    ld a, [hl]
    or $bf
    and c
    ld a, a
    ld b, b
    rst $38
    pop bc
    ld h, c
    pop hl
    ld e, $ff
    sub b
    rst $38
    ld d, b
    ld a, [$5551]
    ld sp, hl
    ld sp, hl
    sbc a
    cp a
    ld de, $bf71
    ldh [$7f], a
    ret nz

    ld a, a
    ld h, b
    sbc a
    sub b
    rst $08
    ld c, b
    rst $20
    inc h
    rst $30
    inc d
    rst $38
    dec b
    rrca
    nop
    inc bc
    cp $3f
    rst $30
    ld a, a
    ld hl, sp-$72
    db $fc
    rst $38
    cp $22
    rst $38
    ccf
    sub b
    cp h
    sub b
    or b
    ld l, b
    add sp, $1f
    rst $38
    ldh [$f9], a
    rra
    sbc a
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add e
    rst $38
    add b
    rst $38
    ldh a, [rVBK]
    ld hl, sp-$61
    sbc h
    rst $18
    jp nc, $3eff

    rst $38
    nop
    cp $82
    cp $02
    cp $1e
    push hl
    ccf
    ld a, [c]
    ld [hl], e
    rst $30
    sub a
    rst $38
    ld hl, sp-$01
    nop
    inc de
    ld a, d
    inc de
    dec de
    inc l
    cpl
    pop af
    rst $38
    ld c, $3e
    ldh a, [$f3]
    cp $1e
    dec b
    ld h, d
    ld bc, $ff80
    ld hl, sp-$21
    db $fc
    ccf
    ld [c], a
    ld a, a
    cp $ff
    adc b
    rst $38
    ld hl, sp+$40
    ld [bc], a
    add hl, bc
    rst $38
    inc bc
    db $fd
    rrca
    ei
    ld d, $f7
    inc l
    rst $30
    ld c, h
    rst $30
    ld c, h
    db $e3
    sbc a
    pop hl
    sbc a
    rst $38
    add b
    rst $38
    ld [$0cff], sp
    rst $38
    inc c
    ei
    ld c, $fb
    ld c, $fd
    rlca
    db $fc
    dec b
    rst $38
    nop
    add hl, bc
    jr nz, jr_032_4faf

    add b
    ld a, a
    di
    add hl, bc
    jr nz, jr_032_4fb7

    inc bc

jr_032_4faf:
    db $fc
    sbc a
    rst $38
    inc bc
    rst $38
    ld hl, $60ff

jr_032_4fb7:
    rst $38
    ld h, b
    cp a
    ldh [$bf], a
    ldh [$7f], a
    pop bc
    ld a, a
    ld b, c
    rst $38
    add b
    ld a, a
    ldh [$bf], a
    ret nc

    rst $18
    ld l, b
    rst $18
    ld h, h
    rst $18
    ld h, h
    adc a
    ld a, [c]
    rrca
    ld a, [c]
    db $e3
    sbc [hl]
    db $e3
    sbc [hl]
    rst $20
    sbc h
    add hl, bc
    ld h, h
    nop
    rst $30
    ld c, h
    rst $30
    ld c, a
    ld a, [c]
    ld c, a
    cp $02
    rst $38
    ld bc, $2009
    inc bc
    ld hl, sp+$07
    rst $38
    ld bc, $2dff
    rst $38
    inc hl
    ld a, [hl-]
    and c
    and a
    or $7e
    rst $10
    ld [hl], l
    cp d
    ld a, [$e463]
    xor b
    cp d
    ld l, b
    cp $89
    cp c
    dec bc
    jp z, $fcdf

    rst $10
    ld e, h
    cp e
    cp [hl]
    adc l
    ld c, a
    dec hl
    cp e
    rst $38
    add b
    add hl, bc
    jr nz, jr_032_5016

    ld a, $c1
    rst $38
    nop
    rst $38

jr_032_5016:
    adc a
    ld a, [c]
    adc a
    ld a, [c]
    rst $08
    ld [hl], d
    add hl, bc
    or h
    nop
    rst $18
    ld h, h
    rst $18
    db $e4
    sbc a
    db $e4
    ei
    daa
    ld a, [$f926]
    rla
    db $fd
    inc de
    cp $0b
    db $fd
    rlca
    ei
    ld c, $fc
    rrca
    ldh [rIE], a
    jr @+$1f

    inc d
    ld d, $ea
    ei
    or e
    ei
    di
    dec sp
    ld d, l
    push af
    cp b
    add sp, -$01
    db $fc
    ld b, a
    ld [hl], a
    add b
    cp $81
    rst $38
    add c
    cp l
    ld b, e
    ld b, e
    inc a
    ld a, [hl]
    xor b
    cp b
    cp $7f
    call nz, $02dd
    cp $02
    rst $38
    inc bc
    ld a, e
    add l
    add l
    ld a, c
    db $fd
    ld a, [hl+]
    ld a, [hl-]
    rrca
    rst $38
    jr nc, jr_032_50d9

    ld d, c
    pop de
    xor a
    cp a
    sbc d
    cp a
    sbc a
    cp c
    ld d, l
    ld e, [hl]
    ld a, [hl-]
    cpl
    cp a
    ret z

    cp a
    ret z

    ccf
    ret nc

    ld a, a
    sub b
    rst $38
    and b
    ld a, a
    ret nz

    cp a
    ldh [$7f], a
    ldh [$f9], a
    rrca
    ei
    dec c
    rst $38
    dec b
    db $fd
    ld b, $ff
    inc bc
    add hl, bc
    jr nz, jr_032_5094

    ld e, b
    ld a, b

jr_032_5094:
    cp [hl]
    xor [hl]
    ld c, d
    ld a, [hl]
    sbc l
    sbc l
    ld [hl], a
    cp $ff
    db $fd
    sbc [hl]
    sub a
    ld hl, sp+$6f
    ret z

    xor $98
    ret c

    ld l, b
    ld a, [hl]
    adc e
    ei
    add h
    rst $20
    ret z

    adc $33
    cp e
    inc e
    rst $18
    ld h, $ee
    ld [hl-], a
    ld [hl], $2c
    db $fc
    and e
    cp a
    ld b, e
    adc $27
    rst $20
    sbc b
    cp e
    ld [hl], b
    rst $30
    dec [hl]
    dec a
    ei
    db $eb
    and l
    db $fd
    ld [hl], e
    ld [hl], d
    db $dd
    rst $38
    rst $38
    ld a, [hl]
    di
    jp nc, $ec3f

    ccf
    ldh [$bf], a
    ld h, b
    rst $38
    ld b, b
    ld a, a

jr_032_50d9:
    ret nz

    add hl, bc
    and b
    rlca
    add hl, bc
    ld a, e
    add hl, de
    ldh a, [$1f]
    pop af
    ccf
    jp z, $ca7f

    ld l, d
    rst $18
    ld e, a
    di
    ccf
    db $e4
    cpl
    db $e4
    ld l, $f0
    db $fc
    rra
    sbc a
    jr c, jr_032_5122

    rst $38
    rst $08
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    add b
    ld e, $7f
    pop af
    di
    jr c, jr_032_516f

    cp $e6
    ld a, a
    ld b, c
    rst $38
    add c
    cp $03
    cp $02
    rra
    ldh a, [$1f]
    ld hl, sp-$59
    db $fc
    and a
    xor h
    rst $30
    db $f4
    sbc a
    ld hl, sp+$4f
    add sp, $4f
    add sp, $09
    ld a, d

jr_032_5122:
    rra
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    add hl, bc
    ld [hl], d
    nop
    ld [c], a
    ld h, $f1
    ld de, $ffef
    or b
    ld sp, hl
    ret


    rst $28
    rst $38
    ld a, [hl]
    add hl, bc
    and b
    ld bc, $ff80
    add b
    ld a, a
    ret nz

    cp a
    or b
    rst $38
    add sp, -$01
    jr @+$0b

    jr nz, jr_032_514a

jr_032_514a:
    add hl, bc
    push af
    nop
    db $fd
    rlca
    ld_long a, $ff1b
    cpl
    rst $38
    jr nc, jr_032_515f

    jr nz, jr_032_5158

jr_032_5158:
    adc a
    ret z

    rra
    db $10
    rst $28
    cp $1b

jr_032_515f:
    ccf
    daa
    xor $ff
    db $fd
    add hl, bc
    jr z, @+$16

    add hl, bc
    jr z, jr_032_516c

    add hl, bc
    and b

jr_032_516c:
    ld [bc], a
    ld b, b
    ld [bc], a

jr_032_516f:
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld bc, $ff04
    inc bc
    rst $38
    ld bc, $0002
    ld bc, $1902
    ld [bc], a
    rlca
    ei
    inc e
    rst $28
    ldh a, [$bf]
    cp c
    or $ff
    cp e
    rst $20
    ld [bc], a
    nop
    ld bc, $bfc0
    ld [hl], c
    rst $28
    rra
    ei
    ld a, [hl-]
    rst $18
    cp $bb
    rst $08
    ld [bc], a
    nop
    ld bc, $ff40
    add b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    ld bc, $8ef3

jr_032_51a9:
    rst $18
    or d
    rst $00
    sub a
    ld [c], a
    rst $08
    ld [hl], e
    adc $62
    rst $00
    ld l, c
    push hl
    jr z, jr_032_5214

    di
    or a
    cp b
    sub c
    sub $56
    ld hl, sp-$27

jr_032_51bf:
    ld [hl], d
    ld [$7faa], a
    db $fd
    add sp, -$17
    ld [hl], l
    sbc a
    db $da, $3b, $12

    rst $10
    push de
    ld a, $37
    sbc l
    xor [hl]
    xor d
    db $fd
    ld a, a
    cpl
    ld l, $ff
    sbc [hl]
    db $e3
    or $9b
    add $d3
    adc [hl]
    rst $20
    sbc h
    rst $20
    adc h
    rst $00
    inc l
    ld c, a
    jr z, jr_032_51e9

    ld c, b
    rrca

jr_032_51e9:
    dec c
    ld [c], a

jr_032_51eb:
    add hl, hl
    db $e3

jr_032_51ed:
    add hl, hl
    rst $20
    add hl, hl
    rst $20
    add hl, hl
    di
    add hl, de
    ld [bc], a
    ret c

    ld [bc], a
    db $db
    db $fc
    inc l
    ld a, c
    dec a
    cp d
    sbc l
    ld a, $d7
    sub [hl]
    adc a
    rst $18
    ld c, b
    ld e, [hl]
    ld b, b
    ld a, l
    or [hl]
    ld a, a
    ld l, c
    dec a
    ld a, c
    cp e
    ld [hl], e
    ld sp, hl
    rst $30

Jump_032_5210:
    di
    inc hl
    scf
    dec h

jr_032_5214:
    push af
    push bc
    db $fd
    adc a
    jr z, jr_032_51a9

    jr z, jr_032_51eb

    jr z, jr_032_51ed

jr_032_521e:
    jr z, jr_032_51bf

    jr nc, @+$04

    ld [$0212], sp
    ld c, b
    rrca
    dec c
    di
    rla
    or $1e
    ld hl, sp+$08
    ei
    dec bc
    db $fc
    inc c
    ld hl, sp+$0c
    ld sp, hl
    inc c
    ei
    ld [$bba3], sp
    cp a
    cp a
    db $ed
    db $ed
    ld a, [hl+]
    db $eb
    dec e
    cp $5a
    adc e
    ld e, l
    dec c
    rst $18
    rrca
    adc e
    ei
    ld a, [$6efa]
    ld l, [hl]
    xor c
    xor a
    ld [hl], b
    cp $b4
    and d
    ld [hl], l
    ld h, b
    rst $30
    ldh [$9f], a
    ret nc

    rst $18
    ldh a, [$3f]
    jr nz, jr_032_521e

    and b
    ld a, a
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    cp a
    jr nz, jr_032_526b

    db $10
    rra

jr_032_526b:
    ld c, $18

jr_032_526d:
    ld [bc], a
    sub b
    ld [de], a
    and $39
    and $39
    db $e4
    dec sp
    call nz, $df7a
    cpl
    cp a
    ld c, a
    ei
    dec bc
    db $f4
    inc d
    di
    inc de
    ld a, [c]
    ld [de], a
    ld a, [c]
    ld [hl-], a
    ld [$f72a], a
    add sp, -$05
    db $e4
    cp a
    and b
    ld e, a
    ld d, b
    sbc [hl]
    sub c
    sbc [hl]
    sub c
    sbc [hl]
    sbc c
    xor [hl]
    xor b
    ld [bc], a
    ld [$cf14], sp
    jr c, jr_032_526d

    jr c, @+$51

    cp b
    ld b, a
    cp h
    ld [bc], a
    nop
    rrca
    nop
    ld bc, $03fe
    cp $02
    rla
    inc b
    nop
    pop bc
    ld hl, sp+$47
    ldh [$9f], a
    rst $08
    cp c
    rra
    rst $20
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    ret z

    ld c, b
    add h
    add h
    ld [hl], b
    ld [hl], b
    adc h
    adc h
    ldh a, [$f0]
    rst $38
    rrca
    ld [bc], a
    nop
    nop
    daa
    inc h
    ld b, e
    ld b, d
    dec e
    dec e
    ld h, e
    ld h, e
    rra
    rra
    rst $38
    pop hl
    ld [bc], a
    nop
    nop
    rlca
    ld a, $c5
    rrca
    ld a, [c]
    rst $20
    ld a, [hl-]
    pop af
    rst $08
    rst $38
    rst $38
    cp $02
    nop
    dec b
    add b
    ld [bc], a
    ld b, [hl]
    ld b, $40
    ld [bc], a
    add hl, bc
    rst $38
    nop
    rst $38
    db $ec
    di
    ld [hl], d
    push af
    dec a
    ret c

    ld e, d
    pop de
    ld [hl], a
    di
    ld a, a
    sbc $7e
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld [c], a
    sbc a
    db $d3
    ld e, a
    ld [hl], c
    ld c, a
    ld l, c
    ld h, a
    db $f4
    rst $18
    cp $ff
    add hl, bc
    rst $38
    ldh a, [$09]
    rst $38
    ldh a, [$80]
    ld a, a
    ld b, c
    cp a
    and c
    cp [hl]
    di
    add hl, bc
    jr nz, jr_032_5326

    ld bc, $03ff

jr_032_5326:
    db $fd
    dec b
    ei
    ld a, [bc]
    ei
    sbc [hl]
    rst $38
    ld [$0cff], sp
    rst $38
    adc [hl]
    di
    sub a
    db $f4
    inc e
    push hl
    dec l
    call $f65f
    add hl, bc
    rra
    nop
    ld l, [hl]
    sbc a
    sbc h

jr_032_5341:
    ld e, a
    ld a, b
    scf
    or h
    rla
    call c, $fc9f
    rst $30
    db $fc
    pop af
    inc sp
    ldh a, [rNR21]
    ld hl, sp+$1f
    ld hl, sp+$3b
    db $ec
    dec a
    bit 3, e
    ret nc

    ld [hl], h
    ret nc

    ld [hl], d
    scf
    ld [hl], a
    ld [$95eb], a
    sbc l
    ld l, d
    ld l, [hl]
    jr jr_032_5341

    adc c
    db $ed
    ld [hl], d
    ei
    ld [hl+], a
    ld h, e
    sbc $7a
    rst $18
    rst $18
    dec [hl]
    push af
    sub d
    sub $e1
    ld sp, hl
    inc b
    xor $06
    ld d, $b1
    pop de
    rst $30
    cp l
    or $f7
    ld e, c
    ld e, a
    sub d
    sub $0e
    ld a, $41
    rst $28
    ret nz

    pop de
    ld a, [de]
    rla
    reti


    db $dd
    xor [hl]
    xor [hl]
    ld d, d
    ld [hl], e
    xor h
    db $ed
    jr nc, jr_032_540c

    inc hl
    ld l, a
    sbc h
    cp [hl]
    adc b
    adc h
    rra
    sbc b
    rra
    ret nc

    ccf
    ldh a, [$3f]
    cp b
    ld l, a
    ld a, b
    and a
    or h
    rla
    ld e, h

Jump_032_53a9:
    rla
    sbc h
    ret nc

    ld a, c
    sub c
    cp c
    and e
    db $eb
    and a
    rst $38
    and l
    db $fd
    and l
    db $fd
    and h
    db $fc
    and d
    ld a, [$5b53]
    ret


    call Call_000_3d39
    ret


    db $fd
    dec [hl]
    dec [hl]
    inc l
    ld l, l
    or d
    di
    ret


    ret


    ld a, a
    or l
    rst $00
    ld c, a
    add sp, $62
    add a
    or l
    nop
    ld [$e700], sp
    nop
    ld hl, sp-$7f
    rst $38
    db $fd
    ld e, e
    rst $00
    push hl
    cpl
    adc l
    jp $015b


    ld hl, $cf00
    nop
    ccf
    inc bc
    rst $38
    sub h
    or l
    daa
    ld h, a
    add hl, sp
    ld a, c
    daa
    ld a, a
    ld e, c
    ld e, c
    ld l, c
    ld l, l
    sbc d
    sbc [hl]
    ld h, $26
    rla
    inc a
    inc de
    ld a, [hl-]
    adc e
    xor [hl]
    set 7, [hl]
    ld c, e
    ld a, [hl]
    add hl, bc
    jr jr_032_5418

    adc e
    cp [hl]
    and e
    ei

jr_032_540c:
    and e
    ei
    and a
    rst $38
    and [hl]
    cp $ae
    cp $ab
    db $eb
    cp l
    db $fd

jr_032_5418:
    or c
    pop af
    ld c, b
    ld e, c
    inc l
    ld a, h
    cp d
    ei
    jp nc, Jump_032_72f6

    rst $38

Call_032_5424:
    call c, $01df
    rrca
    ld c, $1e
    ld a, [hl]
    cp $20
    ld h, b
    ld e, $fe
    db $10
    jr nc, @+$21

jr_032_5433:
    rst $38
    ld h, d
    ld [c], a
    add b
    add b
    nop
    rra
    db $fc
    rst $38
    ld [$f00c], sp
    rst $38
    db $10
    jr jr_032_5433

    rst $38
    call c, Call_000_1bdf
    dec de
    inc bc
    db $e3
    dec h
    dec [hl]
    ld l, c
    ld a, l
    cp e
    cp a
    sub [hl]
    sbc $9c
    cp $77
    rst $30
    ld bc, $81e1
    pop af
    adc e
    cp [hl]
    adc e
    cp [hl]
    set 7, [hl]
    set 7, [hl]
    db $eb
    cp $ab
    xor [hl]
    ld a, e
    ld a, [hl]
    dec sp
    ld a, $9a
    ld a, [$b292]
    jp c, $e47a

    ld h, h

jr_032_5472:
    db $f4
    ld [hl], h
    db $ed
    dec l
    xor $2e
    rst $38
    dec sp
    jr c, jr_032_54b6

    inc e
    ld a, $10
    dec [hl]
    jr nz, jr_032_54e5

    pop af
    ei
    ldh a, [$fb]
    ld b, d
    ld d, a
    push hl
    db $ed
    nop
    ld a, a
    rra
    rst $38
    ld h, e
    ei
    ret nz

    db $fc
    ld b, b
    rst $30
    add b
    ld hl, sp-$80
    rst $38
    ret nz

    rst $20
    inc bc
    ei
    pop bc
    db $fd
    or b
    cp [hl]
    ld [$047f], sp
    rst $18
    inc b
    ccf
    ld [bc], a
    rst $38
    ld [bc], a
    rst $08
    ld b, b
    ld [hl], b
    ld h, b
    ld a, b
    ldh [$f8], a
    ld d, b
    ld e, h
    ld d, b
    ld e, h
    jr c, jr_032_5472

jr_032_54b6:
    inc [hl]
    or h
    rla
    rst $10
    cp e
    cp [hl]
    cp a
    cp [hl]
    and a
    and h
    ld a, a
    ld a, [hl]
    ld b, a
    ld b, [hl]
    ld a, a
    ld a, [hl]
    sbc a
    sbc [hl]
    rst $28
    xor $fe
    ld a, [de]
    db $fd
    dec c
    cp $06
    rst $38
    rra
    ld sp, hl
    add hl, sp
    rst $30
    ld [hl], a
    rst $38
    add hl, de
    rst $38
    nop
    inc l
    inc l
    cp [hl]
    rst $38
    db $ec
    rst $28
    ld l, [hl]
    ld l, a
    db $eb
    db $eb
    ccf

jr_032_54e5:
    inc a
    rst $38
    ret c

    rst $38
    ld [$7840], sp
    nop
    rrca
    nop
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    add hl, bc
    jr nz, @+$04

    ld bc, $0139
    pop hl
    ld bc, $090f
    ld b, $26
    dec c
    call $ed0d
    dec bc
    db $eb
    add e
    di
    jp $e0fb


    ld a, h
    ld hl, sp+$1f
    rst $38
    rlca
    ld [hl], a
    db $76
    ld a, a
    ld a, [hl]
    cp a
    cp h
    or a
    or h
    rst $28
    add sp, $1f
    db $10
    ld a, a
    ldh [rIE], a
    add b
    ld b, b
    ld [bc], a
    dec bc
    rst $38
    dec bc
    rst $38
    db $fc
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    dec bc
    nop
    add hl, bc
    add b
    ld a, a
    ld b, b
    cp a
    and b
    cp a
    ldh a, [$df]
    ld a, b
    rst $18
    ld e, [hl]
    rst $38
    nop
    rst $38
    ld bc, $03ff
    db $fd
    dec b
    ei
    ld a, [bc]
    ei
    ld e, $f7
    inc a
    rst $30
    db $f4
    rst $38
    add c
    cp $87
    ld sp, hl
    rrca
    pop af
    dec e
    db $e3
    ld a, [hl+]
    db $e3
    ld a, [hl-]
    jp $c352


    ld d, d
    rst $38
    ret nz

    rst $38
    add b
    dec bc
    nop
    dec bc
    dec bc
    dec d
    nop
    dec bc
    ld h, e
    ld b, $fc
    dec de
    rst $10
    ld c, [hl]
    rst $28
    add c
    rst $38
    sbc [hl]
    cp $28
    db $ec
    ld [hl], $f5
    ld h, [hl]
    push hl
    ldh a, [$3c]
    ld a, [c]
    sbc d
    ld h, c
    ld h, l
    inc h
    xor [hl]
    add $f6
    add c
    ret


    sbc b
    rst $18
    add a
    or a
    rra
    ld a, b
    sbc a
    or e
    inc c
    ld c, l
    ld c, c
    db $eb
    add $de
    ld [bc], a
    ld h, $32
    rst $30
    jp nz, $ffdb

    ld a, [hl]
    or c
    rst $10
    push hl
    rst $28
    inc bc
    rst $38
    di
    rst $38
    add hl, hl
    ld l, a
    reti


    ld e, a
    call $0b4f
    nop
    dec c
    ld bc, $01ff
    cp $03
    dec bc
    call nz, $fd02
    rlca
    db $fd
    rlca
    ld h, e
    ld [$de4f], a
    jp $c1fb


    db $fd
    pop bc
    db $fd
    and e
    cp a
    inc h
    dec a
    jr nz, jr_032_55f2

    ret nz

    ld c, a
    ld a, b
    jr c, jr_032_562c

    daa
    jr nc, @+$12

    rra
    rrca
    rst $08
    ret nz

    ld hl, $17e0
    ldh a, [rTAC]
    db $e4
    dec a
    jr c, jr_032_55e9

    ret


    add hl, de
    ld de, $e1f1
    rst $20
    rlca
    ld [$d00f], sp
    rra
    adc l
    xor a

jr_032_55e9:
    push hl
    rst $30
    add [hl]
    cp a
    ld b, $7f
    ld b, $7f
    adc d

jr_032_55f2:
    ei
    ld c, c
    ld a, c
    add hl, bc
    xor c
    dec bc
    jr nz, jr_032_55fc

    dec bc
    inc d

jr_032_55fc:
    ld [de], a
    ld a, a
    ret nz

    ld a, a
    ret nz

    dec bc
    call z, $fa00
    ld c, $fa
    ld c, $fb
    rrca
    ei
    rrca
    or $1e
    or $1e
    jr nc, jr_032_5649

    ld d, c
    ld d, c
    adc c
    adc c
    add a
    add a
    ld bc, $2119
    ld a, l
    ld b, c
    db $dd
    ld b, c
    db $fd
    rrca
    ld a, a
    ld [$56de], sp
    ld a, h
    xor l
    cp $74
    pop af
    ld b, $a0

jr_032_562c:
    add a
    jr nz, @-$73

    jr nz, @-$1e

    db $fd
    ld hl, $d5f7
    ld a, l
    ld l, e
    rst $38
    ld e, l
    rra
    pop bc
    dec de
    db $d3
    add hl, bc
    sub e
    add hl, hl
    add hl, de
    reti


    dec d
    dec d

jr_032_5644:
    ld [hl+], a
    ld [hl+], a
    db $c2, $c2, $01

jr_032_5649:
    ld sp, $7d09
    inc b
    db $76
    inc b
    ld a, [hl]
    dec bc
    inc e
    db $10
    cp a
    ldh [$0b], a
    ld [hl], h
    ld [de], a
    rst $18
    ldh a, [$df]
    ldh a, [$f6]
    ld e, $f6
    rra
    push af
    dec e
    db $f4
    inc e
    db $f4
    inc e
    db $fd
    dec c
    rst $38
    ld c, $ff
    inc b
    add c
    cp l
    add b
    cp [hl]
    add b
    cp [hl]
    add b
    cp d
    add h
    cp l
    add h
    sbc h
    add d
    sbc [hl]
    pop bc
    ld c, a
    adc e
    jr nz, jr_032_5644

    sub b
    add $90
    jp Jump_032_6094


    ld c, e
    ld h, b
    ld c, h
    add hl, sp
    ld h, $b0
    xor e
    or e
    add hl, bc
    or $02
    or $02
    and [hl]
    ld d, d
    inc l
    add l
    ld l, h
    inc b
    cp b
    ld c, b
    dec de
    xor e
    ld [bc], a
    ld a, d
    ld [bc], a
    ei
    inc bc
    ei
    ld [bc], a
    cp d
    ld b, d
    ld a, d
    ld b, e
    ld [hl], e
    add e
    ld a, [c]
    rlca
    db $e4
    dec bc
    ld a, h
    db $10
    ld e, a
    ld [hl], b
    dec bc
    call nc, Call_032_7f10
    ld h, b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    ld b, $ff
    ld [bc], a
    dec bc
    jr nc, jr_032_56c1

jr_032_56c1:
    cp $03
    rst $38
    rlca
    dec bc
    ld d, $00
    ldh [$e3], a
    sbc h
    db $fc
    db $e3
    rst $38
    sbc h
    rst $18
    ei
    ei
    daa
    or a
    rst $38
    db $fc
    rst $38
    nop
    ld a, b
    db $f4
    inc c
    ld l, e
    ld h, a
    ld h, h
    rra
    rst $38
    nop
    inc c
    ldh a, [$f0]
    rst $38
    rrca
    rst $38
    nop
    inc a
    ld e, a
    ld h, b
    xor h
    call $f04d
    rst $38
    ld bc, $1f61
    rra
    rst $38
    ldh [rIE], a
    nop
    rrca
    adc [hl]
    ld [hl], e
    ld a, [hl]
    adc a
    cp $73
    rst $30
    cp [hl]
    cp a
    ret


    db $db
    rst $38
    ld a, a
    rst $38
    nop
    dec bc
    ld d, b
    dec b
    add b
    rst $38
    ret nz

    dec bc
    nop
    nop
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    db $f4
    rlca
    rst $38
    ld [$16f9], sp
    ld sp, hl
    ld d, $05
    nop
    dec b
    nop
    rst $38
    add c
    cp $42
    cp $42
    dec b
    db $10
    rlca
    ret nz

    ccf
    jr nz, jr_032_576f

    and b
    dec b
    db $10
    rlca
    dec b
    ld sp, $130f
    dec [hl]
    db $ed
    dec a
    ld a, [c]
    rra
    db $fc
    rra
    db $e3
    inc hl
    ld a, [$ee3b]
    cpl
    push af
    dec e
    cp $42
    cp $8f
    ld hl, sp-$32
    cp [hl]
    or [hl]
    adc h
    adc l
    or h
    or h
    xor h
    cp [hl]
    sub a
    sbc [hl]
    ccf
    jr nz, @+$41

    ld hl, sp+$0f
    cp c
    ld a, $36
    jr jr_032_57b9

    ld d, $96
    sbc d
    cp [hl]
    db $f4
    cp h
    dec b
    nop
    ld bc, $0ff0
    inc c
    inc bc
    ld [bc], a

jr_032_576f:
    rrca
    ld c, $13
    ld [de], a
    cpl
    ccf
    dec b
    nop
    ld bc, $ff08
    inc c
    rst $38
    ld c, $ff
    inc c
    rst $30
    ld d, $e7
    db $ec
    dec b
    nop
    ld bc, $ff38
    ld b, h
    rst $08
    or d
    rst $08
    or d
    rst $38
    add d
    rst $38
    ld b, h
    db $f4
    rra
    db $fc
    rrca
    cp $07
    rst $38
    ld bc, $c605
    nop
    cp $03
    rst $38
    rlca
    or [hl]
    or [hl]
    cp e
    cp h
    rst $38
    di
    db $dd
    rst $28
    db $f4
    or [hl]
    sub $5c
    sub $d5
    ld d, l
    ld e, [hl]
    ld [hl], $b6
    ld l, [hl]
    sbc [hl]
    rst $38
    rst $20
    ld e, l
    ld a, e
    rla

jr_032_57b9:
    or [hl]
    dec [hl]
    sbc l
    dec [hl]
    ld d, l
    push de
    dec a
    ld d, c
    ld a, a
    cp a
    rst $38
    ccf
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    cp a
    ldh [$7f], a
    ld [hl], b
    ccf
    ld hl, sp-$01
    ret nz

    dec b
    jr nc, jr_032_57e0

    jr c, jr_032_57de

    jr nc, jr_032_57e6

    add hl, bc
    cp $02

jr_032_57de:
    rst $38
    inc bc

jr_032_57e0:
    cp $07
    ld hl, sp+$0e
    ldh a, [$1f]

jr_032_57e6:
    di
    ld a, [de]
    pop af
    dec e
    sub l
    sub h
    sbc e
    sbc [hl]
    rst $30
    or $1b
    ld [$443d], a
    scf
    add [hl]
    sub a
    ld c, [hl]
    call Call_032_5424
    sub h
    db $ec
    inc a
    rst $30
    scf
    db $ec
    dec hl
    sbc $11
    or $30
    db $f4
    add hl, sp
    reti


    ld [de], a
    rst $38
    ret z

    cp a
    and b
    rst $38
    ldh [$3f], a
    ldh a, [rIF]
    jr c, @+$09

    db $fc
    rst $20
    inc l
    rst $00
    ld e, h
    dec b
    jr nc, jr_032_582c

    dec c
    cp $09
    cp $0c
    ei
    dec bc
    push af
    dec d
    dec b
    add [hl]
    db $10
    rst $30
    rla
    rst $30

jr_032_582c:
    dec d
    and a
    sub [hl]
    ld a, l
    db $fc
    sub d
    sub e
    ld l, [hl]
    ld l, [hl]
    rla
    rla
    ld d, $1e
    rra
    dec e
    ccf
    dec l
    ld a, [c]
    inc [hl]
    rst $18
    rra
    and h
    ld h, h
    cp e
    dec sp
    db $f4
    ld [hl], h
    or h
    inc a
    ld a, h
    call c, Call_032_5a7e
    cp a
    ret z

    ccf
    sbc b
    rst $28
    add sp, $57
    ld d, h
    dec b
    or [hl]
    db $10
    ld [hl], a
    ld [hl], h
    ld [hl], a
    ld d, h
    dec b
    jr nc, jr_032_586e

    ld c, $18
    rst $38
    ld [$08ff], sp
    dec b
    db $10
    rlca
    db $e4
    rst $38
    inc b
    dec b
    jr nc, jr_032_5877

jr_032_586e:
    sub e
    rst $38

jr_032_5870:
    sub b
    dec b
    jr nc, jr_032_587d

    adc h
    dec b
    ld [c], a

jr_032_5877:
    dec de
    dec b
    ld sp, $0c0f
    ld b, b

jr_032_587d:
    ld [bc], a
    ld [$08ff], sp
    rst $38
    ldh a, [rSB]
    cp $02
    cp $02
    db $fc
    dec b
    ld hl, sp-$35
    ld sp, hl
    ld a, a
    rst $38
    jr c, jr_032_5870

    ld [hl], b
    cp a
    and c
    rst $38
    pop hl
    ccf
    pop hl
    rra
    sub c
    rrca
    call $e383
    ld [$0100], sp
    nop
    rst $38
    ld bc, $01ff
    cp $82
    cp $e3
    sbc $d7
    ld [$0422], sp
    rst $38
    ld bc, $81ff
    rst $38
    adc a
    rst $30
    rst $10
    rst $38
    jr c, @-$07

    inc e
    ei
    dec bc
    cp $0e
    ld hl, sp+$0e
    ldh a, [rNR13]
    ldh [$67], a
    add e
    adc a
    ld [$0320], sp
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    and [hl]
    ccf
    db $fc
    xor $2e
    rst $30
    rra
    db $eb
    cpl
    db $ed
    dec a
    jp z, $d35a

    ld [hl], e
    pop de
    ld [hl], c
    pop de
    ld [hl], c
    ld c, c
    ld sp, hl
    cp l
    rst $38
    db $e3
    db $eb
    db $d3
    db $d3
    add b
    ret nz

    inc bc
    adc a
    ld h, c
    ld a, c
    ld h, b
    ld a, h
    ld e, [hl]
    db $76
    ld l, e
    ei
    ld [hl], c
    pop af
    cp l
    db $fd
    and h
    and h
    ld h, b
    ld [hl], b
    ld c, d
    ld e, d
    jp hl


    db $ed
    push af
    db $dd
    xor l
    cp a
    dec e
    rra
    ld a, e
    ld a, a
    ld c, d
    ld c, d
    dec c
    dec e
    and l
    or l
    ld l, $6e
    inc h
    ld a, $7b
    rst $38
    adc a
    xor a
    sub a
    sub a
    ld [bc], a
    ld b, $81
    db $e3
    dec c
    dec a
    dec c
    ld a, l
    rst $28
    add sp, -$21
    ldh a, [$af]
    add sp, $6f
    ld a, b
    and a
    or h
    sub a
    sbc h
    rla
    inc e
    rla
    inc e
    sub c
    or c
    and c
    pop hl
    and d
    ld [c], a
    and h
    push hl
    ld [$00c6], sp
    xor c
    db $eb
    xor d
    ld [$3e0c], a
    add h
    sbc $40
    ld a, h
    dec a
    cp l
    ld b, [hl]
    add $86
    add [hl]
    ld b, $1f
    add hl, bc
    add hl, sp
    ld d, a
    ld a, l
    inc sp
    scf
    ld a, [c]
    ld sp, hl
    rla
    rra
    add hl, de
    ld e, c
    jp z, Jump_032_48ed

    ld a, h
    inc d
    rst $30
    call nc, $987c
    ret c

    sbc [hl]
    ld a, $d1
    pop af
    jr nc, @+$36

    and [hl]
    ld l, [hl]
    inc h
    ld a, l
    ld d, c
    rst $18
    ld h, c
    ld sp, hl
    ld b, e
    rst $30
    inc b
    ld a, h
    ld a, b
    ld a, e
    call nz, $c2c7
    jp $f1c1


    jr nz, @+$3a

    inc de
    ld a, [de]
    dec bc
    ld c, $8b
    adc [hl]
    ld c, e
    ld c, [hl]
    ld [$1016], sp
    dec hl
    xor [hl]
    xor e
    xor [hl]
    ld a, [c]
    ld a, [c]
    or d
    cp d
    pop hl
    jp hl


    and b
    ld [$f7a0], a
    pop hl
    rst $30
    pop bc
    push de
    db $c3, $c6, $10


    ld [hl], e
    jr z, jr_032_5a0e

    rst $00
    rst $00
    add c
    add c
    add c
    add c
    add e
    add d
    jp $e742


    inc h
    ei
    rst $38
    xor l
    xor l
    ld sp, $033d
    ld h, e
    ld bc, $83cf
    ei
    pop hl
    ld [hl], a
    db $e3
    dec sp
    cp [hl]
    rst $38
    ld l, d
    ld l, e
    add hl, de
    ld a, c
    add c
    adc l
    ld bc, $83e7
    cp [hl]
    rrca
    call c, $b88f
    db $10
    sbc h
    jr z, jr_032_5a01

    rst $00
    rst $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    add e
    add e
    add a
    add l
    rst $08
    ld c, b
    sbc a
    sbc [hl]
    sbc e
    cp d
    rrca
    ld l, $0b
    xor [hl]
    dec bc
    sbc $0f
    sbc $07
    ld d, [hl]
    add a
    add $e3
    ld [c], a
    db $e3
    ld [$c9c1], a
    ret nz

    ld e, [hl]
    add $5f
    rst $08
    ld e, e
    adc $5a
    rst $28
    ld a, a

jr_032_5a01:
    rst $20
    inc h
    rst $38
    jr @+$01

    nop
    rst $38
    add c
    ld a, [hl]
    jp nz, $c17f

    rst $38

jr_032_5a0e:
    add b
    rst $38
    nop
    ldh a, [$7c]
    ret z

    rst $08
    call nz, $84ef
    sbc a
    adc a
    cp a
    inc c
    xor h
    sub h
    push af
    db $e4
    ld l, h
    rra
    ld a, h
    daa
    and $47
    xor $43
    di
    ld [c], a
    ld a, [$6b61]
    ld d, e
    rst $18
    ld c, h
    db $ed
    rst $08
    ld c, b
    rst $38
    jr nc, @+$01

    ld bc, $0afe
    db $fc
    cp a
    ld d, l
    rst $30
    ld b, d
    ld d, d
    rra
    rst $18
    adc a
    adc [hl]
    adc a
    xor [hl]
    rlca
    ld h, $07
    db $f4
    rst $00
    db $f4
    and a
    or h
    rst $20
    db $f4
    rst $28
    db $fc
    db $e3
    ld l, [hl]
    db $fd
    dec a
    ei
    dec de
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc b
    ld [$0320], sp
    ld [$0003], sp
    rra
    di
    ld a, a
    sub [hl]
    sub a
    ld sp, hl
    ld sp, hl
    rst $38
    ld c, $ee
    ld a, [hl-]
    rst $08
    ld e, c
    adc a
    ld hl, sp+$5f
    ld hl, sp-$79
    db $f4
    ccf
    cp [hl]
    rst $38
    ret nz

    rst $38
    nop
    jr z, jr_032_5ab6

Call_032_5a7e:
    rst $20
    rst $30
    db $e3
    ccf
    db $f4
    ccf
    jp $f85f


    ei
    rst $38
    rlca
    rst $38
    nop
    ld a, a
    ld [hl], e
    rst $28
    xor c
    rst $30
    rla
    ei
    ei
    sbc h
    db $fc
    rst $10
    rst $10
    ccf
    ccf
    rst $38
    ldh [$8f], a
    xor $7b
    ld a, [hl]
    cp e
    cp [hl]
    di
    ld a, [$f2e3]
    rst $00
    db $e4
    rra
    jr @+$01

    ldh [rLCDC], a
    ld [bc], a
    dec c
    rst $38
    dec c
    rst $38
    pop af
    ld a, a
    ld [hl], b
    rst $08

jr_032_5ab6:
    rst $08
    push af
    dec [hl]
    ei
    rrca
    db $fc
    rlca
    dec c
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    sbc b
    ld [hl], a
    ld a, h
    xor e
    xor a
    push de
    rst $10
    dec c
    db $10
    dec b
    dec c
    rst $38
    ldh a, [$08]
    rst $30
    call c, $200d
    add hl, bc
    ld hl, $77df
    dec c
    db $10
    dec b
    inc sp
    db $dd
    ld a, l
    xor e
    db $eb
    ld d, [hl]
    dec c
    rra
    inc bc
    db $fd
    inc e
    rst $20
    and $5f
    ld e, b
    cp a
    ldh [$7f], a
    ret nz

    rst $38
    inc bc
    dec c
    jr nz, jr_032_5afd

    nop
    ld l, d
    db $eb
    sub l
    push af
    ld [$f77a], a
    rra

jr_032_5afd:
    ld a, [$fd0f]
    rlca
    rst $38
    rlca
    db $fd
    dec b
    rst $30
    db $fc
    ld l, e
    xor $9b
    rst $18
    adc d
    xor $cb
    rst $08
    ld b, d
    jp nz, $f1b1

    add hl, hl
    ld l, c
    sbc $7f
    xor l
    rst $28
    or d
    or $a3
    rst $28
    and [hl]
    rst $20
    add l
    add a
    dec de
    rra
    add hl, hl
    dec l
    xor l
    xor a
    ld d, e
    ld e, [hl]
    xor a
    cp h
    rst $18
    ldh a, [$0d]
    ld e, h
    ld bc, $7fc0
    ld b, b
    rst $38
    add b
    dec c
    ld h, d
    ld a, [bc]
    dec c
    or d
    inc c
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    db $fc
    rrca
    di
    rra
    db $ec
    inc a
    pop de
    db $db
    db $dd
    call $f6aa
    jr @-$44

    jr jr_032_5bb2

    xor [hl]
    or $4f
    ld l, c
    ld l, $2a
    ld d, $b6
    ld [hl], a
    ld h, a
    xor e
    sbc $31
    cp e
    ld sp, $ea75
    rst $18
    push hl
    dec l
    add sp, -$58
    dec c
    or b
    dec b
    add b
    ld a, a
    ldh [$9f], a
    ldh a, [$6f]
    ld a, b
    dec c
    or d
    rrca
    ld b, $06
    ld sp, hl
    add hl, bc
    rst $38
    rrca
    ld a, [$dc0a]
    ld [hl], h
    ld hl, sp+$69
    ld hl, sp+$0b
    ldh a, [rSC]
    ld hl, sp+$08
    db $fc
    dec e
    db $e4
    dec h
    db $f4
    rst $30
    inc de
    sub a
    inc de
    inc de
    add hl, hl
    cp e
    ld e, d
    db $fc
    ld e, e
    ld hl, sp+$28
    xor h
    inc e
    rst $30
    rra
    or e
    sub b
    jp nc, $9190

    jr z, @-$43

    or h
    ld a, [hl]
    or h
    ld a, $28
    ld l, e
    ld [hl], b
    rst $18
    ldh a, [$9b]
    ld [hl], a
    ld e, h

jr_032_5bb2:
    ccf
    inc l
    ccf
    and b
    rra
    add b
    ccf
    jr nz, jr_032_5c3a

    ld b, b
    ld a, a
    ld b, b
    ccf
    or c
    dec c
    jr nz, jr_032_5bcc

    ret nz

    ccf

jr_032_5bc5:
    jr nz, jr_032_5bc5

    dec bc
    cp $6b
    sbc h
    sbc h

jr_032_5bcc:
    ldh [$f1], a
    ret nc

    sbc e
    jp hl


    set 6, d
    or $a2
    or [hl]
    call nc, $b6df
    sbc a
    rst $28
    xor a
    rst $08
    adc $cf
    ret c

    rlca
    ld e, $21
    ld hl, $4940
    ccf
    jr nz, jr_032_5bf6

    or b
    add hl, bc
    add b
    ld hl, sp+$09
    cp $03
    dec c
    db $d2, $01, $0d

    rst $38
    di

jr_032_5bf6:
    ld c, a
    ret


    sbc $de
    sub $f7

Call_032_5bfc:
    jp c, $eef3

    ld a, [hl+]
    and $27
    and $37
    pop bc
    pop af
    rst $38
    ldh [$bf], a
    and b
    rst $38
    and b
    rst $38
    xor h
    ld [hl], e
    ld [hl], d
    rrca
    ld e, $17
    or d
    cpl
    and [hl]
    call nc, $e8dc
    ld c, e
    ld hl, sp+$3f
    rst $38
    dec c
    rrca
    dec b
    ld b, [hl]
    ld [hl], a
    ld a, e
    ld sp, hl
    rst $30
    db $d3
    rst $38
    inc c
    dec c
    and [hl]
    ld d, $0d
    or b
    dec bc
    ld bc, $03fe
    cp $03
    rst $38
    dec c
    or e
    dec d
    ld [$0408], sp

jr_032_5c3a:
    inc h
    call nz, $bcdc
    ccf
    sbc $97
    rst $38
    ld h, c
    dec c
    nop
    nop
    sbc a
    sbc $8b
    jp c, Jump_032_7657

    cpl
    and h
    ccf
    ld hl, sp-$01
    ret nz

    dec c
    nop
    nop
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    db $fc
    jr @+$01

    inc c
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    ei
    ld d, $06
    ld a, [de]
    nop

jr_032_5c6a:
    ld b, $00
    ld bc, $ff04
    rlca
    db $fc
    dec b
    cp $02
    cp $02
    rst $38
    ld bc, $0006
    inc bc

Call_032_5c7b:
    ld [hl], $d5
    push de
    rst $10
    ld a, l
    ld d, l
    db $dd
    ld e, l
    ld a, a
    ld b, $00
    ld bc, $ff08
    jr c, jr_032_5c6a

    add sp, $1f
    ret nc

    rra
    db $10
    rst $38
    ldh [rTMA], a
    nop
    dec c
    ld b, $ff
    ei
    rst $30
    ld a, [hl+]
    rst $30
    inc l
    rst $30
    ld c, h
    rst $20
    ld e, e
    db $e3
    ld e, l
    rst $20
    ld e, d
    rst $10
    ld l, d
    ei
    ld [hl], l
    rst $38
    nop
    rst $38
    ld bc, $63ff
    rst $18
    ld hl, sp-$19
    ccf
    ei
    ld e, $ed
    dec e
    db $f4
    inc a
    and d
    cp [hl]
    or [hl]
    xor d
    rst $38
    ld h, e
    rst $38
    db $dd
    rst $38
    db $10
    rst $28
    jr nc, jr_032_5ce5

    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    adc a
    or $7f
    rst $18
    db $76
    cp a
    push af
    rst $38
    push af
    ld b, $00
    dec b
    add b
    rst $38
    add b
    ld a, a
    ldh a, [$df]
    or b
    ld b, $00
    add hl, bc

jr_032_5ce5:
    ld bc, $02ff
    rst $38
    add hl, bc
    rst $38
    dec bc
    db $fd
    rra
    ei
    dec a
    rst $38
    rla
    rst $38
    ld l, h
    rst $38
    sbc d
    rst $28
    ld a, c
    or $5a
    ei
    cp a
    ld a, [$b566]
    db $eb
    ld [hl], e
    cp $d7
    rst $28
    xor l
    cp a
    add hl, sp
    ccf
    rst $18
    and a
    ld a, a
    ld sp, hl
    cp a
    and $bb
    push hl
    rst $38
    pop af
    cp e
    rst $20
    xor h
    db $fc
    ld [hl], e
    ld [hl], e
    ld l, a
    or b
    ei
    call nz, $65fe
    rst $38
    rst $38
    adc a
    ld a, [$faef]
    ld b, a
    ld a, l
    add a
    db $fd
    rst $38
    ld h, b
    ld b, $b8
    nop
    ld b, $00
    rlca
    inc b
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    inc c
    rst $38
    inc c
    add a
    cp $02
    rst $38
    dec b
    rst $38
    adc a
    cp $c2
    ld a, a
    pop bc
    ld a, a
    jp $ee7f


    dec a
    jp nz, $e2ff

    rst $38
    jp nz, $827f

    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    pop af
    ld a, a
    adc a
    adc h
    ld c, a
    ret z

    ld d, a
    ret c

    scf
    ld hl, sp+$57
    cp b
    ld d, e
    cp h
    adc e
    ld a, h
    adc c
    ld a, [hl]
    ld b, a
    db $fd
    rst $00
    ld a, l
    and e
    ld a, [hl]
    db $e3
    ld a, $06
    ld h, [hl]
    ld [de], a
    jp Jump_000_067e


    or h
    inc b
    ld b, $74
    dec d
    inc b
    ld b, $00
    ld a, [bc]
    cp $19
    db $fc
    dec bc
    db $fc
    dec bc
    cp $09
    cp $0d
    rst $38
    inc c
    ei
    ld c, $fd

jr_032_5d95:
    rlca
    ld h, c
    cp a
    jp nz, Jump_000_067e

    and d
    ld [de], a
    ld b, c
    rst $38
    ld h, c
    cp a
    and c
    ld a, a
    ld e, l
    cp [hl]
    ld [hl], h
    or a
    ld d, h
    rst $10
    ld d, d
    db $d3
    ld d, b
    jp nc, $1a18

    inc d
    inc e
    call c, $c3dd
    ld a, [hl]
    ld h, e
    cp [hl]
    or a
    ld a, h
    rst $10
    ld a, l
    ld d, a
    db $fd
    daa
    cp l
    scf
    cp l
    ccf
    ld l, d
    ld b, $74
    inc de
    ld b, $51
    rrca
    ld b, $fe
    inc bc
    ld b, $2e
    dec b
    ld b, $ff
    pop af
    rst $20
    cp a
    rst $18
    cp e
    cp $53
    db $fc
    ld d, h
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    nop
    ld a, $e3
    rst $18
    or c
    sbc a
    ld de, $617f
    ld b, $14
    inc d
    ccf
    inc l
    rra
    ld d, b
    ccf
    ld d, b
    cpl
    jr c, jr_032_5d95

    xor b
    rst $28
    ld a, b
    rst $38
    jr nc, jr_032_5e02

    ld d, b
    ld c, $40
    ld [bc], a
    inc b
    rst $38

jr_032_5e02:
    inc b
    rst $38
    rst $38
    inc bc
    add b
    rst $38
    ret nz

    cp a
    ldh [$5f], a
    jr nc, @+$01

    ld d, b
    inc b
    nop
    ld bc, $fc03
    dec b
    ei
    dec bc
    ld hl, sp+$0f
    ldh a, [rNR14]
    ldh a, [rNR13]
    inc b
    nop
    ld bc, $3fe0
    or b
    rra
    ld e, b
    rra
    sbc b
    rst $20
    db $f4
    rrca
    adc $04
    nop
    rlca
    ld a, b
    rst $00
    ld b, h
    rst $10
    ld d, [hl]
    inc b
    nop
    rrca
    inc b
    inc b
    rst $38
    push af
    rst $28
    ld e, b
    cp a
    ld [$2cf7], sp
    rst $10
    inc c
    ei
    ld d, $eb
    rlca
    db $fd
    dec bc
    push af
    inc bc
    ei
    dec de
    call nc, $fb16
    ccf
    call nz, $9377
    rst $10
    inc a
    ccf
    ld b, a
    rst $10
    add d
    cp d
    ld a, l
    ld a, a
    sub l
    dec [hl]
    ld [$12ea], a
    jp nc, Jump_032_6d65

    rlca
    scf
    dec bc
    ld l, e
    ld a, [c]
    ld a, [$5cd9]
    ld d, e
    ld e, d
    pop de
    call c, $dad3
    pop de
    call c, $faf3
    sub c
    call c, $da93
    inc b
    ld d, b
    rrca
    ld [$fe01], sp
    inc bc
    ld hl, sp+$03
    cp $05
    ld a, [$f309]
    ld [de], a
    pop hl
    jr z, @-$3d

    db $d3
    ld bc, $0365
    rst $08
    ld [bc], a
    cp d
    or d
    ld a, [c]
    cp $fe
    ld e, c
    reti


    ld e, h
    call c, Call_032_6fae
    cp c
    ld a, c
    rst $10
    cp a
    ld e, h
    inc [hl]
    inc c
    xor h
    inc d
    inc d
    db $eb
    db $eb
    ld e, $3e
    ld a, a
    rst $38
    pop af
    rst $30
    sub b
    sub e
    ld [$913d], sp
    db $dd
    ld a, [c]
    ld a, [$dcd0]
    jp nc, $d0db

    db $dd
    di
    ld a, e
    di
    sbc $b7
    cp $04
    inc d
    nop
    ccf
    nop
    ld a, a
    ld b, b
    rra
    add b
    ccf
    ldh [$8f], a
    ret nz

    rst $18
    ld [hl], b
    db $fc
    rlca
    ldh a, [rTAC]
    ld hl, sp+$0d
    ld hl, sp+$0b
    ldh [$0b], a
    ldh a, [rNR22]
    inc b
    ld a, [hl+]
    db $10
    ld b, $77
    inc c
    rst $28
    dec e
    rst $30
    ld e, $d6
    ld a, $e6
    ccf
    and c
    ccf
    and b
    ld a, a
    pop bc
    db $76
    ld l, [hl]
    ld [$f6da], a

jr_032_5ef6:
    scf
    ld [c], a
    ld a, [$bbe3]
    rst $38
    sbc a
    rst $38
    add [hl]
    rst $20
    rla
    ld [$08bb], sp
    jp hl


    ld de, $1317
    sub e
    ld e, $7f
    cp a
    rst $20
    db $fc
    ld h, a
    cp $07
    rst $28

jr_032_5f12:
    sbc h
    rst $38
    adc b
    ld a, a
    adc b
    rst $28
    ret c

    rra
    ldh a, [$5f]
    or b
    rst $38
    ldh a, [$3f]
    and b
    rst $38
    jr nc, @-$07

    db $10
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, jr_032_5f12

    rlca
    ld hl, sp+$0b
    ld hl, sp+$09
    db $fc
    dec b
    cp $02
    rst $38
    ld bc, $0004
    nop
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    jp $c37e


    ld a, h
    rst $00
    ld a, $a7
    cp e
    db $e3
    db $fc
    ld h, l
    rst $00
    rlca
    rst $20
    rrca
    rst $08
    jr jr_032_5ef6

    ld hl, sp+$7f
    ldh a, [$1f]
    ret nc

    rst $18
    ret nc

    ld a, a
    ld h, b
    rst $38
    rrca
    ld sp, hl
    add hl, bc
    db $fc
    inc c
    rst $38
    inc bc
    inc b
    adc d
    ld [de], a
    inc b
    ld [hl-], a
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$1f]
    ld e, b
    rst $38
    ld hl, sp+$04
    ld d, b
    rrca
    dec c
    inc b
    nop
    ld [bc], a
    cp $16
    db $fd
    dec b
    ld hl, sp+$08
    ld hl, sp+$0e
    ld sp, hl
    dec bc
    db $fd
    dec c
    rst $38
    rlca
    inc b
    cp [hl]
    inc de
    inc b
    inc bc
    jr nz, jr_032_5f12

    rst $38
    add b
    inc b
    jp z, $131f

    inc b
    nop
    ld a, [bc]
    ld l, [hl]
    inc d
    rst $28
    db $ed
    rst $38
    call nc, Call_032_4cee
    jp c, $bd9a

    adc c
    ld e, l
    ld bc, $5256
    ld h, e
    jp $d36f


    ld a, e
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp e
    ld a, a
    dec sp
    rst $38
    ld a, e
    rst $38
    push de
    add e
    db $eb
    inc l
    or $a3
    cp [hl]
    rla
    db $e3
    jp nz, $a6a0

    reti


    pop de
    xor d
    and l
    dec e
    db $e3
    or e
    rst $00
    or [hl]

jr_032_5fd0:
    rst $08
    cp $ff
    pop af
    rst $38
    add $f9
    db $fd
    cp $ff
    ld [hl], d
    rst $18
    call c, $d894
    jp $abcf


    ldh [$3d], a
    ld e, c
    rst $38
    inc h
    ld h, a
    ld b, d
    rst $38
    ret nz

    rst $00
    xor b
    rlca
    add sp, -$7e
    ld a, l
    xor a
    ld e, a
    cp h
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $30
    rst $28
    sub $b7
    or $b5
    xor $19
    db $fd
    rst $10
    di
    xor e
    ld e, a
    db $db
    ld e, d
    rlca
    adc [hl]
    dec l
    ld e, b
    ldh [$58], a
    ldh [$e0], a
    ldh a, [$e8]
    ldh a, [$f4]
    ld a, b
    or h
    jr c, jr_032_5fd0

    call c, $ecda
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    ld h, e
    rlc b
    add $00
    adc a
    ld bc, $3092
    adc [hl]
    ld hl, $20ce
    adc [hl]
    ld hl, $cfb7
    sub a
    rst $28
    sbc d
    rst $28
    sub $ef
    rst $20
    rst $08
    or $cf
    or [hl]
    rst $08
    or $cf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_032_6094:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_609c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $ffd3

    rst $10
    rst $38
    or a
    ld a, a
    ld a, [de]
    db $db
    xor e
    ld a, [$dbaa]
    xor c
    cp $8c
    rst $30
    cp $f7
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $18
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    ld [hl], l
    scf
    sbc c
    xor a
    sub e
    cp $fe
    ld sp, hl
    sbc b
    and l
    ld d, l
    rla
    ld [hl], a
    or $72
    ei
    xor d
    ld [hl], a
    rst $38
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    cp $7e
    adc [hl]
    adc [hl]
    db $ec
    db $fd
    ld hl, sp+$1a
    ld sp, $9ae2
    ld [c], a
    ld a, [c]
    add sp, $09
    xor c
    ld a, h
    rst $38
    db $fc
    ld a, $60
    cp c
    ld l, b
    and $cf
    or $0f
    ld d, $0f
    ld l, $16
    ld a, [hl+]
    rla
    ccf
    rra
    ld a, [$b13f]
    ld a, [hl]
    add $b3
    db $fc
    ld l, l
    ld c, h
    ld b, l
    ld [hl], d
    or c
    xor $63
    add e
    inc e
    dec sp
    inc l
    ldh a, [$9f]
    sub $ec
    or $c6
    ld a, [hl]
    cp $3c
    ld a, [hl]
    db $fc
    ldh a, [$f0]
    ldh [$f0], a
    ret nz

    ld d, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add a
    db $f4
    cp h
    or e
    sbc c
    db $d3
    or c
    rst $00
    add d
    res 0, e
    rst $10
    cp d
    call c, $d1b4
    xor $aa
    rst $00
    xor $c7
    and $cf
    rst $10
    rst $28
    sub a
    rst $28
    xor [hl]
    rst $00
    and a
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    sub h
    cp $ae
    rst $28
    or a
    rst $10
    add h
    res 1, b
    ld [c], a
    and d
    and $ba
    db $76
    ld a, [hl-]
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $28
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    sbc $7d
    jp nz, $c2e5

    ld de, $7c40
    add d
    xor e
    ld a, c
    rst $38
    cp $f4
    inc sp
    cp $1f
    ld a, a
    adc $eb
    ld sp, hl
    rra
    ldh [$7d], a
    add e
    and a
    rst $18
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, [hl-]
    db $fd
    ld e, $ff
    adc a
    ld [hl], a
    ld l, c
    adc e
    ld l, l
    ld c, h
    ld sp, hl
    ld l, b
    di
    or b
    pop af
    pop bc
    rst $10
    inc bc
    ld hl, sp+$1b
    pop af
    call z, $fc60
    rst $20
    ld hl, sp-$09
    db $fc
    cp $dd
    rst $38
    cp a
    rst $28
    rst $38
    rra
    db $fc
    di
    db $fc
    sub b
    adc a
    db $eb
    inc e
    di
    adc h
    or $a9
    and $e9
    or [hl]
    add hl, sp
    nop
    scf
    db $ec
    rla
    ld d, b
    ldh [$d0], a
    ldh [$b0], a
    ld b, b
    ld d, b
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ret nz

    ret c

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    sub [hl]
    db $dd
    ret nz

    ld sp, hl
    sub $fd
    call nz, $c0df
    sbc [hl]
    add b
    cp h
    add b
    xor b
    call nz, $f9b3
    or e

jr_032_65ae:
    ld sp, hl
    db $d3
    cp c
    pop de
    cp e
    pop af
    cp e
    or c
    ei
    cp e
    di
    cp e
    di
    ld h, d
    nop
    ld e, c
    ld bc, $017d
    dec c
    ld bc, $0041
    pop af
    nop
    adc c
    nop
    dec c
    ld bc, $ff81
    add a
    rst $38
    add e
    rst $38
    di
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    rrca
    push bc
    cp $01
    add $da
    ld e, [hl]
    dec e
    call $c30a
    inc d
    rst $00
    ld c, h
    pop bc
    ld a, [bc]
    ld l, $b3
    cp [hl]
    rst $20
    push af
    xor $fa
    db $e4
    and h
    ld a, b
    ldh a, [$28]
    or b
    jr c, jr_032_65ae

    ld hl, sp-$31
    db $e3
    res 0, b
    add $80
    adc a
    add c
    sub d
    or b
    adc [hl]
    and c
    adc $a0
    adc [hl]
    and c
    or a
    rst $08
    sub a
    rst $28
    sbc d
    rst $28
    sub $ef
    rst $20
    rst $08
    or $cf
    or [hl]
    rst $08
    or $cf
    add [hl]
    add a
    db $f4
    cp h
    or e
    sbc c
    db $d3
    or c
    rst $00
    add d
    res 0, e
    rst $10
    cp d
    call c, $d1b4
    xor $aa
    rst $00
    xor $c7
    and $cf
    rst $10
    rst $28
    sub a
    rst $28
    xor [hl]
    rst $00
    and a
    rst $08
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$03
    ld a, [c]
    ei
    push hl
    rst $30
    set 2, h
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $fd
    ei
    ei

Jump_032_6656:
    rst $30
    rst $20
    rst $38
    sbc $ef
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    rst $38
    cp $fc
    ld hl, sp-$03
    ei
    rst $20
    push af
    call z, Call_000_389a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    cp $f4
    ld hl, sp-$15
    ldh a, [$c7]
    pop hl
    rst $38
    db $fc
    rst $28
    adc $e8
    ld c, d
    db $eb
    ld h, l
    add a
    and a
    ld e, a
    ld e, a
    rst $38
    ccf
    ldh a, [$30]
    rst $38
    rst $38
    db $f4
    ld hl, sp-$79
    pop af
    ld e, e
    add a
    ld l, a
    rra
    rst $38
    ccf
    ld a, a
    rst $38
    rst $08
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    jp $ffff


    ld a, a
    ld a, a
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
    ccf
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    or $f4
    ld a, [$e5ee]
    adc b
    cp b
    ld c, b
    ld e, h
    call nz, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    db $fd
    di
    or $f3
    or [hl]
    daa
    daa
    jr c, @+$01

    rst $38
    cp $fe
    call z, Call_000_2dc8
    ld h, c
    ei
    add b
    ld [$1b00], sp
    add h
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    cp $9b
    sbc h
    inc a
    add hl, de
    or e
    ld a, h
    and b
    ld b, b
    nop
    nop
    rst $38
    rst $38
    ld [hl], e
    ld [hl], e
    add $54
    ld c, $59
    ld a, c
    ld d, d
    add c
    rst $30
    db $fc
    inc bc
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    di
    ld a, a
    di
    xor a
    add $9c
    adc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $18
    cp a
    xor a
    ld c, a
    ld a, d
    ret nz

    rst $38
    add d
    ld l, [hl]
    inc c
    ld a, [hl-]
    ret z

    ld d, a
    or d
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    ld e, a
    or a
    sbc l
    ld l, b
    ld sp, $e3d3
    ld c, h
    ccf
    nop
    inc c
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
    ccf
    cp a
    cp a
    jr nc, jr_032_67b9

    ld b, l
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
    ld a, a
    rst $38
    cp a
    ld a, a
    di
    db $fc
    adc $0c
    sbc $93
    ld a, c
    ld b, a
    ld [c], a
    cp [hl]
    ld [hl], e
    dec a
    ld h, a
    jr z, jr_032_67d6

    add h
    rst $38
    rst $38
    ld h, d
    ld sp, $616d
    or $e6
    db $fd
    db $fd
    xor $ce
    rst $10
    jp nc, $fd5f

    rst $38
    rst $38
    dec sp
    and a
    ld b, e
    cp l
    daa
    ld hl, sp-$80
    ld a, a
    add a
    ld a, b
    db $db
    inc h
    sub [hl]
    ld [hl], c
    cp a
    rra
    ld e, c
    add a
    add b
    add b
    db $fc
    nop
    rst $38
    ld a, a
    ld a, b
    ld a, b
    ld hl, $8e23
    rrca
    rst $38
    rst $38
    xor b
    xor h
    ld sp, hl
    add b
    ldh [$cc], a
    db $e4
    ret z

    pop af
    add b
    pop de
    add b
    jp nz, $aa90

    xor b
    db $e3
    di
    or $e3
    sub $e3
    jp nc, $eee7

    rst $00
    xor $c7
    db $ec
    rst $00

jr_032_67b9:
    call c, $9bc7
    nop
    or d
    nop
    ld c, $01
    ld e, [hl]
    ld [bc], a
    rrca
    rlca
    dec bc
    add hl, bc
    ld c, l
    ld [$1899], sp
    ld h, a
    rst $38
    rrca
    rst $38
    ccf
    cp $3f
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_032_67d6:
    rst $38
    add hl, sp
    rst $38
    ld a, l
    rst $38
    rst $38
    and b
    add a
    sub b
    rst $08
    ld h, h
    scf
    ld d, d
    ld sp, hl
    ld b, b
    ld a, l
    jr nz, jr_032_685e

    ld a, [de]

jr_032_67e9:
    rra
    dec c
    ret z

    ldh a, [$e8]
    ldh a, [$d8]
    or b
    and h
    ret c

    sbc d
    db $fc
    call $e4fe
    rst $38
    ld a, [$88f7]
    inc bc
    ld [hl], b
    rst $38
    rlca
    ld hl, sp+$00
    rst $38

jr_032_6803:
    add a
    rst $38
    cp e
    ld a, $0b
    jp $0487


    inc bc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $01
    rst $00
    ccf
    ld a, a
    rst $38
    daa
    cp b
    inc bc
    add sp, -$3d
    jr nz, jr_032_67e9

    ret nc

    rst $28
    ld c, $7a
    ld [bc], a
    call Call_000_360d
    or b
    cp c
    ld b, a
    dec de
    rlca

jr_032_682f:
    rla
    rrca
    ccf
    rrca
    rst $18
    ccf
    rst $38
    db $fc
    db $e3
    ldh a, [rKEY1]
    add e
    rst $18
    nop
    inc a
    jr z, jr_032_6899

    nop
    db $e4
    db $10
    ld [hl], b
    daa
    and l
    add a
    sbc d
    ld [bc], a
    rst $28
    ret nz

    adc a
    rst $38
    sbc [hl]
    rst $38
    cp l
    cp $e7
    ld hl, sp-$41
    ret nz

    ld h, a
    jr jr_032_68ba

    db $fd
    ldh a, [rIE]
    dec h
    ld h, b
    ld e, e

jr_032_685e:
    ld b, b
    daa
    nop
    rst $38
    jr nz, jr_032_6803

    rst $08
    cp h
    dec e
    ld [hl], b
    scf
    ld h, e
    inc [hl]
    ld e, a
    add e
    ccf
    add a
    rst $28
    rra
    rst $28
    rra
    cp a
    ld a, a
    ld a, a
    cp $fd
    ld sp, hl
    db $ec
    db $f4
    add b
    nop
    jr nc, jr_032_682f

    ld l, e
    sub a
    or d
    ld a, [de]
    ccf
    adc [hl]
    ccf
    cp e
    adc l
    dec h
    ld sp, hl
    add hl, bc
    push bc
    ld a, [$c00f]
    ld h, c
    add b
    rst $20
    pop bc
    ld a, c
    rst $00
    ld [hl], a
    ld c, a
    ld e, a
    ld a, a

jr_032_6899:
    rst $38
    ld a, a
    bit 0, e
    or $95
    cp e
    nop
    and a
    jr @+$3f

    ld [$307c], sp
    ld a, b
    ld h, b
    ldh a, [$80]
    ei
    ld a, $f1
    ld a, d
    db $e3
    rst $30
    cp [hl]
    rst $20
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_032_68ba:
    rst $38
    ld [hl], e
    add e
    ld hl, $c40d
    ld b, $e2
    inc bc
    ldh a, [rTMA]
    ld [hl], b
    inc b
    db $10
    inc bc
    ld a, $00
    ld h, h
    ld a, b
    adc $f0
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp-$79
    ld hl, sp-$1d
    db $fc
    ret nz

    rst $38
    sbc a
    ldh [$0c], a
    di
    ld bc, $040f
    db $f4
    nop
    nop
    ld [hl], b
    ld [hl], a
    add hl, bc
    ld sp, hl
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ei
    nop
    rst $38
    nop
    adc a
    nop
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    and e
    cp a
    ldh a, [rIE]
    ld c, c
    ld c, [hl]
    nop
    ld h, c
    ld b, e
    ld hl, sp-$7d
    ld hl, sp-$79
    pop hl
    nop
    nop
    ld b, b
    nop
    nop
    nop
    or b
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ld a, e
    add c
    inc bc
    cp $3a
    db $fd
    ld b, l
    add $62
    ei
    jr nz, jr_032_692c

    inc e
    dec b
    ld [$0705], sp

jr_032_692c:
    nop
    ld bc, $0000
    nop
    jr c, jr_032_6933

jr_032_6933:
    db $fc
    nop
    add $f8
    and $f8
    or $f8
    ei
    ld sp, $ebae
    ld b, c
    ld [$15b9], sp
    rst $18
    dec h
    ld [$f70b], a
    ld b, $70
    adc c
    ld l, l
    add [hl]
    sbc [hl]
    inc e
    or $3f
    ld [hl], e
    nop
    add hl, de
    inc bc
    ld e, $05
    inc c
    nop
    ld b, $03
    rst $38
    add b
    cp l
    jp $8e72


    ld c, b
    ld a, a
    sub e
    db $10
    jr @+$16

    call z, Call_032_609c
    ld d, e
    nop
    nop
    nop
    nop
    add c
    nop
    add a
    add b
    sub b
    rst $28
    ret nc

    rst $28
    cpl
    ld [hl], b
    call c, $bde0
    inc d
    scf
    db $10
    ld [hl], d
    jr nc, @+$5c

    db $10
    ld e, [hl]
    ld c, c
    xor $45
    xor $65
    cp $74
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    ld a, [$e0ff]
    and b
    db $fd
    ret nc

    or a
    sub b
    rst $30
    ret nz

    pop de
    ret nz

    pop de
    ldh [$f0], a
    adc b
    ld hl, sp-$48
    sbc h
    rst $08
    xor b
    rst $08
    add sp, -$31
    ld hl, sp-$31
    call c, $dcef
    rst $28
    rst $30
    rst $28
    rst $38
    rst $20
    cp l
    nop
    ei
    inc bc
    db $eb
    pop hl
    ret nz

    pop de
    ld de, $df02
    dec bc
    ld c, e
    inc bc
    sbc l
    ld b, c
    rst $38
    rst $38
    db $fc
    nop
    jr jr_032_69d8

    ld [hl], $0f
    adc $3c
    inc a
    db $fc
    db $dd

jr_032_69d8:
    dec a
    cp e
    ld a, a
    jp $9800


    adc b
    ld [$3738], sp
    rlca
    add $46
    rst $30
    add e
    sbc e
    ld e, b
    rlca
    ld l, a
    rst $38
    rst $38
    ld a, b
    rlca
    ld b, a
    add b
    ret c

    ldh [$7e], a
    add hl, sp
    cpl
    rra
    ld h, b
    add a
    ldh a, [$80]
    rst $38
    rlca
    ccf
    ld [hl], a
    rst $10
    jp nc, $07c7

    inc e
    db $ed
    ld a, [c]
    jp $2292


    or c
    rst $30
    rst $38
    rst $38
    rrca
    rst $38
    ccf
    rrca
    ld a, $0f
    ld e, $ff
    ld a, [$3efd]
    pop bc
    rrca

jr_032_6a1a:
    nop
    ld a, e
    inc bc
    xor [hl]
    adc [hl]
    rst $38
    ld a, h
    ld c, a
    dec bc
    add [hl]
    nop
    inc l
    ld bc, $00e0
    ld c, a
    rlca
    rst $30
    adc a
    sbc a
    rst $38
    cp $ff
    ccf
    rst $38
    ld a, l
    cp $d1
    cp $1f
    rst $38
    ccf
    rst $38
    cp a
    jr nz, jr_032_6a1a

    nop
    ld [bc], a
    nop
    jp nc, $8630

    add b
    adc h
    sub b
    adc c
    nop
    add e
    add c
    ldh a, [$bf]
    inc hl
    cp a
    pop hl
    ld a, a
    cp c
    rst $00
    ld [hl], c
    rrca
    ld [hl], e
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    jr nc, jr_032_6abd

    rrca
    ld h, c
    ld [$4462], sp
    db $fd
    ld d, a
    db $dd
    add a
    res 0, h
    ld a, e
    inc h
    ldh [$e0], a
    ldh [$e0], a
    rst $00
    rst $38
    pop de
    rst $38
    db $ed
    jp $c3e1


    rst $30
    rst $20
    di
    ei
    cp e
    sub l
    rst $38
    call nc, $fcff
    rst $38
    add b
    cp $00
    ldh a, [rP1]
    adc h
    ld [$0a14], sp
    rst $38

jr_032_6a8c:
    ld a, e
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ldh [rIE], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    nop
    add hl, sp
    db $10
    ld de, $5810
    jr jr_032_6b22

    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    or $ef
    and e
    rst $00
    add a
    inc bc
    jr c, jr_032_6abd

jr_032_6abd:
    ld a, b
    ld [bc], a
    ld a, b
    nop
    db $ed
    nop
    jp nz, $8600

    nop
    add e
    ld [hl-], a
    add a
    jr nc, jr_032_6a8c

    rst $38
    add d
    db $fd
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $30
    call z, $c038
    rst $38
    nop
    ldh [rP1], a
    add c
    inc bc
    daa
    jr jr_032_6b00

    inc hl
    sbc h
    ld h, e
    rst $28
    db $10
    ld sp, hl
    rrca
    nop
    rst $38
    rra
    rst $38
    ld a, [hl]
    db $fc
    ret nc

    ldh [rSCX], a
    add e
    inc bc
    inc bc
    ld h, b
    nop
    jr nc, jr_032_6afb

jr_032_6afb:
    ld b, [hl]
    nop
    ld b, c
    nop
    rst $20

jr_032_6b00:
    add sp, -$1e
    add hl, bc
    ld d, [hl]
    xor c
    ld h, c
    or e
    ld c, a
    db $e4
    pop hl
    ld b, h
    ccf
    rst $38
    cp a
    rst $38
    dec de
    rlca
    rra
    ld b, $95
    adc [hl]
    sbc a
    adc h
    ld [hl-], a
    add hl, de
    ret c

    inc sp
    sub d
    dec bc
    xor a
    rra
    db $c2, $63, $01

jr_032_6b22:
    ld sp, hl
    ld [hl], c
    dec b
    add b
    inc b
    ld hl, sp+$03
    ld l, h
    ld h, c
    db $ec
    ldh a, [$d0]
    ldh [$7c], a
    add b
    cp $00
    ld b, $f8
    ld [hl], a
    ld hl, sp+$03
    db $fc
    ld h, c
    sbc [hl]
    ld bc, $e0fc
    cp $00
    rst $38
    inc e
    rst $38
    ld de, $47f0
    ld c, h
    inc bc
    ld hl, sp+$40
    inc e
    inc bc
    ld bc, $0100
    nop
    nop
    nop
    nop
    rrca
    nop
    cp h
    inc bc
    ld hl, sp+$07
    rra
    db $e3
    sub c
    ld c, $9b
    ld b, e
    ld a, a
    inc bc
    cp a
    sub e
    cpl
    nop
    rlca
    add hl, bc
    add a
    add hl, bc
    rrca
    inc c
    add sp, -$10
    rst $30
    cp b
    ld a, e
    sbc h
    ld [hl], e
    ld a, h
    cp c
    ld a, a
    ld b, a
    cp a
    ld a, a
    sub a
    xor a
    rst $18
    cp $54
    ld a, d
    ld b, h
    ld [$7b24], a
    and l
    ccf
    dec [hl]
    cp a
    dec c
    ld a, [hl-]
    adc c
    ld e, $4d
    ld a, [$faff]
    rst $38
    ld a, d
    rst $38
    ld a, e
    cp $7f
    ld a, [$7af7]
    ld [hl-], a
    rst $38
    or [hl]
    ei
    db $fc
    and b
    rst $38
    sub [hl]
    or $9d
    sbc $8c
    jp z, $e48b

    add l
    add [hl]
    sub [hl]
    rst $08
    db $e3
    rst $28
    rst $30
    ld hl, sp-$09
    or $fb
    cp $fb
    sbc $fd
    sbc $ff
    rst $18
    rst $28
    or a
    rst $08
    cp $70
    dec sp
    sub b
    ld a, [hl-]
    db $10
    sbc h
    ld l, b
    sbc [hl]
    inc c
    rst $38
    ld e, $1f
    dec de
    rst $38
    pop hl

jr_032_6bcb:
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    cp h
    ld a, a
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ret nz

    ld c, a
    ld a, a

jr_032_6bde:
    nop
    or $00
    add hl, hl
    jr nc, jr_032_6bde

    ld d, d
    ld d, e
    call Call_032_7fe0
    cp h
    inc bc
    ld c, a
    or b
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $28
    pop af
    db $fd
    ret nz

    ld h, b
    rst $18
    sbc a
    ret nz

    add b
    ld d, c
    ld c, a
    add a
    ld b, $fa
    dec b
    dec bc
    sub c
    sub d
    sub [hl]
    ld c, a
    or d
    sbc a
    ld h, a
    rst $38
    jr c, jr_032_6bcb

    nop
    ld b, $f9
    ld bc, $f7fe
    ld l, a
    db $fd
    ld hl, sp-$61
    nop
    ccf
    rra
    rst $38
    ld a, a
    ld e, e
    ld [$c7e0], sp

jr_032_6c1f:
    rrca
    nop
    ld e, h
    ld h, e
    ldh [$9f], a
    ld d, d
    ld b, l
    sub $2b
    ld [$3cc3], a
    rst $38
    jr c, jr_032_6c1f

    ldh a, [$e0]
    add e
    add e
    rra
    rra
    cp c
    ld bc, $c0bc
    di
    db $fc
    cp a
    ld [hl+], a
    ld c, c
    pop hl
    or $01
    ld b, $fb
    ld [$39f6], sp
    call z, $ed67
    rst $08
    inc sp
    ld a, [hl]
    rst $38
    ld a, $1c
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp-$0d
    pop af
    rst $00
    jp Jump_000_031f


    rst $30
    rrca
    cp $02
    ld e, [hl]
    sbc c
    rst $18
    db $10
    sbc $1b
    ld a, [$fb83]
    db $db
    rst $20
    ldh [$f9], a
    dec de
    ld a, e
    rst $38
    and $7f
    ld a, a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$f4], a
    ldh [$f7], a
    ld hl, sp-$03
    cp $5f
    ld a, [bc]
    ccf
    ret nc

    ldh a, [$8f]
    ldh [$1f], a
    db $fc
    inc bc
    ret nc

    ld [$14d1], a
    ld h, [hl]
    ldh [$ec], a
    ldh a, [$60]

jr_032_6c8e:
    add b
    rrca

jr_032_6c90:
    rrca
    rra
    rra
    nop
    nop
    rlca
    ld bc, $03ee
    rst $38
    rra
    rst $38
    inc c
    ld a, [$7b11]
    and d
    ld h, a
    and [hl]

jr_032_6ca3:
    db $eb
    jp nc, $a75d

    sbc $e3
    dec a
    add hl, de
    inc b
    inc bc
    ld c, $04
    sub h
    adc h
    adc h
    sbc b
    inc l
    jr jr_032_6c8e

    jr c, jr_032_6c90

    inc a
    rst $38
    cp $2c
    inc bc
    jr jr_032_6d06

jr_032_6cbf:
    ldh a, [rIF]
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    cp c
    add $e8
    rst $30
    db $d3
    db $e3

jr_032_6ccd:
    rst $20
    rlca
    rrca
    rrca
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    ld b, $06
    rlca
    rlca
    ccf
    rst $30
    ld a, $d2
    ld a, [hl+]
    di
    jr z, jr_032_6ccd

    ld e, h
    sub b
    ld a, e
    ldh [$3e], a
    ld e, $d5
    ld h, a
    ret c

    ret nz

    push de
    ret z

    set 3, h
    db $fc
    rst $18
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    rst $38
    inc l
    jr jr_032_6cbf

    ld e, b
    or a
    ld e, b
    ld h, [hl]
    pop de
    daa
    nop
    rla
    nop
    rst $30

jr_032_6d06:
    ldh a, [$7b]
    jr c, @-$60

    xor $e6
    ld sp, $21f6
    rst $28
    jr nc, @+$39

    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ld e, a
    ccf
    cp [hl]
    add b
    cp a
    nop
    rst $00
    nop
    jr nc, jr_032_6ca3

    rst $18
    jr nz, @-$0d

    dec bc
    ld sp, hl
    ld bc, $8160
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh [$1f], a
    ld a, [$fe04]
    nop
    rst $38
    nop
    jr nz, jr_032_6d79

    rlca
    ld [hl], b
    add hl, de
    ld [hl], a
    and a
    jr @+$72

    cpl
    ld a, a
    add h
    sub e
    ldh [$6e], a
    sbc h
    ccf
    jp $8d72


    ld [hl], h
    adc b
    ld d, b
    ldh [$8f], a
    rst $08
    nop
    nop
    ld a, e
    inc e
    ld l, l
    di
    add hl, hl
    ld d, a
    rrca
    inc e
    jp z, $8821

    ld b, c
    ld a, [hl]
    and e

Jump_032_6d65:
    sub $22
    db $fd
    ld b, c
    db $fd
    ld h, b
    cp c
    rst $08
    rst $18
    push hl
    ld c, [hl]
    push af
    ld l, d
    scf
    adc [hl]
    sub e
    rlca
    dec de
    rst $10
    dec sp

jr_032_6d79:
    rst $30
    ei
    db $db
    adc l
    rst $38
    jp hl


    cp $85
    db $eb
    sub c
    jp Jump_032_53a9


    cp d
    ld a, e
    cp c
    ld a, d
    ld c, h
    rst $30
    ld a, [$faf7]
    ld a, [hl]
    di
    ld a, d
    rst $20
    ld b, e
    cp $41
    cp $7b
    add $3a
    rst $00
    rst $08
    or e
    xor e
    sub d
    sbc a
    and c
    sub d
    or b
    adc [hl]
    sub c
    and $80
    adc [hl]
    sub c
    set 4, c
    rst $30
    rst $08
    rst $10
    rst $28
    or $cf
    rst $20
    rst $08
    sub $ef
    adc $ff
    sub $ef
    or [hl]
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    add h
    ld a, a
    ld b, $0e
    nop
    pop hl
    add c
    rst $20
    rst $20
    jr nc, jr_032_6e23

    nop
    nop
    rst $38
    rst $38
    db $fd
    jp $ffff


    ccf
    rst $38
    ld h, b
    ld e, $18
    nop
    inc a
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rNR10]
    ld e, b
    rra
    add b
    sbc a
    ldh [$e0], a
    ld d, $40
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    ldh [$60], a
    nop
    rra
    nop
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38

jr_032_6e1b:
    db $fd
    ld hl, sp+$1f
    ld c, $43
    pop bc
    jr jr_032_6e1b

jr_032_6e23:
    rst $20
    rst $20
    jr nc, jr_032_6e63

    nop
    nop
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    ld bc, $1807
    nop
    inc a
    jp $ffff


    rst $38
    rst $38
    ld a, a
    add a
    rst $38
    ld a, [de]
    db $e3
    ldh [rIF], a
    ld [$ff04], sp
    ld a, e
    ld c, $00
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $eb
    rst $30
    rst $38
    nop
    ld c, $f1
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    ld c, a
    rst $38
    or d
    ld a, $06

jr_032_6e63:
    dec c
    push hl
    ld a, l
    dec b
    ld [bc], a
    ld [bc], a
    rst $38
    cp $9f
    ld a, a
    cp a
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $28
    rra
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc sp
    rlca
    ld [hl], b
    ld l, a
    ld a, c
    ld h, h
    ld [hl+], a
    ld d, l
    sub $dd
    ld l, [hl]
    ld l, c
    sbc a
    sub a
    rst $38
    rst $38
    or $f8
    rrca
    rst $08
    inc bc
    add b
    ld a, [$f18c]
    ld sp, hl
    pop af
    pop af
    ld hl, sp-$10
    rst $38
    ld c, $1b
    ret nz

    rst $28
    nop
    rst $38
    ld b, b
    add a
    ld a, b
    ld e, $e5
    ld a, a
    or [hl]
    cp a
    ccf
    rst $38
    rst $38
    ld b, a
    ccf
    rra
    nop
    add b
    nop
    ld a, b
    ld a, b
    db $e3
    ldh [$9f], a
    adc a
    rst $38
    ld a, a
    ld h, a
    ld a, b
    rst $30
    inc bc
    db $fc
    xor l
    jp $be39


    ld h, [hl]
    ld a, l
    jr nc, @-$20

    rlca
    rst $38
    rst $38
    ret nz

    add b
    db $fc
    ld hl, sp+$42
    ld bc, $071f
    ccf
    rra
    cp $ff
    and $f9
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $db
    ld e, h
    db $fc
    inc bc
    db $eb
    ld e, $1f
    ldh [$3b], a
    pop hl
    xor a
    ld [hl-], a
    ld hl, sp-$68
    rst $38
    rst $38
    sbc e
    rst $20
    db $fc
    ld a, a
    ld bc, $e300
    pop hl
    inc bc
    rlca
    rst $38
    rst $00
    ld a, a
    rst $38
    rst $38
    rst $38
    and a
    ld h, e
    rst $28
    add a
    ld a, a
    ccf
    rst $38
    ld [hl], c
    push af
    ldh [$f3], a
    ld h, [hl]
    db $fc
    inc [hl]
    cp d
    or h
    xor a
    rst $18
    rst $18
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ld sp, hl
    push af
    ei
    or l
    ei
    db $e4
    add b
    ret nz

    ld [bc], a
    pop de
    ld b, $b1
    ld [bc], a
    adc l
    nop
    add e
    nop
    or b
    ld [bc], a
    and b
    inc c
    rst $30
    ei
    push af
    ei
    push hl
    ei
    pop bc
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    jp $cffd


    pop af
    cp a
    ld b, a
    rst $38
    add b
    ld [hl], c
    ld c, $2d
    rst $18
    jp c, $f71d

    sub d
    ld a, [hl]
    ld d, l
    rst $00
    ld a, [bc]
    cp a
    ld a, a
    rst $38
    cp a
    pop af
    rst $38
    dec l
    di
    ld l, d
    and a
    push af
    xor [hl]
    ld [$f7fd], a
    add hl, sp
    add b
    ld [$0766], sp
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $66
    dec bc
    rrca

Call_032_6fae:
    inc b
    or l
    db $10
    or [hl]
    db $10
    or a
    db $10
    cp b
    db $10
    cp c
    db $10
    cp d
    db $10
    cp e
    db $10
    cp h
    db $10
    cp l
    db $10
    inc b
    ld d, b
    inc bc
    ld d, b
    ld [bc], a
    ld d, b
    ld bc, $0750
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    inc de
    db $10
    inc d
    db $10
    dec d
    db $10
    ld d, $10
    rla
    db $10
    jr jr_032_7043

    ld c, e
    rlca
    ld h, [hl]
    ld c, h
    nop
    jp $c410


    db $10
    push bc
    db $10
    add $10
    rst $00
    db $10
    ret z

    db $10
    ret


Call_032_6fef:
    db $10
    jp z, $cb10

    db $10
    call z, $cd10
    db $10
    adc $10
    inc de
    ld d, b
    ld [de], a
    ld d, b
    ld de, $1050
    ld d, b
    jr nz, jr_032_7014

    ld hl, $2210
    inc d
    inc hl
    inc d
    inc h
    db $10
    dec h
    db $10
    ld h, $10
    daa
    db $10
    jr z, jr_032_707a

jr_032_7014:
    adc e
    rlca
    pop de
    db $10
    jp nc, $d310

    db $10
    call nc, $d510
    db $10
    sub $10
    rst $10
    db $10
    ret c

    db $10
    reti


    db $10
    jp c, $db10

    db $10
    call c, $dd10
    db $10
    sbc $10
    inc hl
    ld d, h
    ld [hl+], a
    ld d, h
    ld hl, $2050
    ld d, b
    jr nc, jr_032_704c

    ld sp, $3210
    inc d
    inc sp
    inc d
    inc [hl]

jr_032_7043:
    db $10
    dec [hl]
    db $10
    ld [hl], $10
    scf
    db $10
    jr c, jr_032_70b2

jr_032_704c:
    rlc a
    pop hl
    db $10
    ld [c], a
    db $10
    db $e3
    db $10
    db $e4
    db $10
    push hl
    db $10
    and $10
    rst $20
    db $10
    add sp, $10
    jp hl


    db $10
    ld [$eb10], a
    db $10
    db $ec
    db $10
    db $ed
    db $10
    xor $10
    inc sp
    ld d, h
    ld [hl-], a
    ld d, h
    ld sp, $3050
    ld d, b
    ld b, b
    db $10
    ld b, c
    db $10
    ld b, d
    db $10
    ld b, e
    db $10

jr_032_707a:
    ld b, h
    db $10
    ld b, l
    db $10
    ld b, [hl]
    db $10
    ld b, a
    db $10
    ld c, b
    ld h, [hl]
    dec bc
    rla
    ld b, [hl]
    db $10
    ld a, [c]
    db $10
    di
    db $10
    db $f4
    db $10
    push af
    db $10
    or $10
    rst $30
    db $10
    ld hl, sp+$10
    ld sp, hl
    db $10
    cp [hl]
    db $10
    cp a
    db $10
    db $fc
    db $10
    db $fd
    db $10
    cp $10
    rst $38
    db $10
    ld b, d
    ld d, b
    ld b, c
    ld d, b
    ld b, b
    ld d, b
    ld d, b
    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld d, e
    db $10

jr_032_70b2:
    ld d, h
    db $10
    ld d, l
    db $10
    ld a, [$4b66]
    rra
    inc d
    or b
    db $10
    or c
    db $10
    or d
    db $10
    ld d, d
    ld d, b
    ld d, c
    ld d, b
    ld d, b
    ld d, b
    ld h, b
    db $10
    ld h, c
    db $10
    ld h, d
    db $10
    ld h, e
    db $10
    ld h, h
    db $10
    ld h, l
    ld h, [hl]
    ld c, e
    rra
    ld d, $c0
    db $10
    pop bc
    db $10
    jp nz, Jump_032_5210

    ld d, b
    ld [hl], c
    ret nc

    ld d, b
    ld d, b
    ld [hl], b
    db $10
    ld [hl], c
    db $10
    ld [hl], d
    db $10
    ld [hl], e
    db $10
    ld [hl], h

jr_032_70eb:
    db $10
    ld [hl], l
    ld h, [hl]
    ld c, e
    rra
    ld d, $d0
    db $10
    rst $08
    db $10
    ld [hl], e
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], c
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    sub b

Jump_032_70ff:
    ld [hl], c
    sub b
    ld [hl], d
    sub b
    ld [hl], e
    sub b
    ld d, h
    ld h, [hl]
    adc c
    rra
    jr jr_032_70eb

    db $10
    rst $18
    db $10
    ld [hl], e
    ret nc

    ld [hl], d
    ret nc

    ld h, c
    ret nc

    ld [hl], b
    ret nc

    ld h, b
    sub b
    ld [hl], c

jr_032_7119:
    db $10
    ld h, d
    sub b
    ld h, e
    sub b
    ld h, h
    sub b
    ld h, [hl]
    jp z, $171f

    ldh a, [rNR10]
    rst $28
    db $10
    ld h, e
    ret nc

    ld h, d
    ret nc

    ld [hl], c
    ld d, b
    ld h, b
    ret nc

    ld h, [hl]
    add b
    inc d
    ld h, [hl]
    ld [$192f], sp
    ld h, l
    ld d, b
    ld h, h
    ld d, b
    ld h, e
    ld d, b
    ld h, d
    ld d, b
    ld [hl], c
    ld d, b
    ld h, b
    ld h, [hl]
    cp a
    rra
    ld [hl+], a
    ld [hl], l
    ld d, b
    ld [hl], h
    ld d, b
    ld h, [hl]
    ld hl, sp+$1c
    ld [hl], h
    sub b
    ld h, [hl]
    adc d
    rra
    rla
    or h
    db $10
    add b
    db $10
    add c
    db $10
    add d
    db $10
    add e
    db $10
    ld h, [hl]
    ld a, $26
    ld d, h
    ld h, [hl]
    ret


    rra
    jr jr_032_7119

    db $10
    sub b
    db $10
    sub c
    db $10
    sub d
    db $10
    sub e
    db $10
    ld h, [hl]
    ld a, [hl]
    ld h, $66
    adc b
    rra
    add hl, de
    ld h, l
    ret nc

    and b
    db $10
    and c
    db $10
    and d
    db $10
    and e
    db $10
    ld [hl], b
    ret nc

    ld h, [hl]
    ret nz

    inc d
    ld h, [hl]
    ld c, b
    ccf
    add hl, de
    ld h, [hl]
    db $f4
    cpl
    dec l
    ld h, l
    ld d, b
    ld [hl], h
    ret nc

    ld h, [hl]
    jr c, jr_032_71b4

    ld [hl], c
    ld h, [hl]
    dec a
    cpl
    inc h
    ld [hl], l
    ld d, b
    ld d, h
    ld d, b
    ld h, [hl]
    ld a, b
    jr nz, @+$63

    ret nc

    ld h, [hl]
    ld a, [hl]
    cpl
    dec hl
    ld h, c
    ld h, [hl]
    cp l
    daa
    ld h, h
    ld h, [hl]
    ret


    ccf
    ld a, [de]
    ld d, h
    ld h, [hl]
    rst $30
    dec h
    add hl, bc

jr_032_71b4:
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    ld h, [hl]
    rst $00
    ccf
    dec e
    ld h, [hl]
    scf
    ld b, l
    add hl, de
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $66
    adc e
    ccf
    jr jr_032_7235

    ret nc

    ld h, [hl]
    ld a, b
    ld b, h
    add hl, hl
    db $10
    ld a, [hl+]
    db $10
    dec hl
    db $10
    inc l
    db $10
    dec l
    db $10
    ld l, $66
    adc e
    ld c, a
    ld [hl+], a

jr_032_71e4:
    add hl, sp
    db $10
    ld a, [hl-]
    db $10
    dec sp
    db $10
    inc a
    db $10
    dec a
    db $10
    ld a, $10
    ld c, b
    sub b
    rrca
    db $10
    ld d, [hl]
    db $10
    ld b, a
    sub b
    ld c, b
    sub b
    ld b, [hl]
    sub b
    ld h, [hl]
    jp nc, Jump_032_6656

    jp nc, Jump_032_455e

    ret nc

    ld b, h
    ret nc

    ld b, e
    ret nc

    ld b, d
    ret nc

    ld b, c
    ret nc

    ld b, b
    ret nc

    ld c, c
    db $10
    ld c, d
    db $10
    ld c, e

jr_032_7213:
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, [hl]
    db $10
    ld c, a
    db $10
    rra
    db $10
    ld d, a
    db $10
    ld e, b
    db $10
    scf
    sub b
    ld [hl], $90
    scf
    sub b
    jr c, jr_032_7290

    dec d
    ld h, e
    ld h, [hl]
    jr jr_032_7295

    ld h, [hl]
    inc e
    ld h, h
    dec [hl]
    ret nc

    inc [hl]

jr_032_7235:
    ret nc

    inc sp
    call nc, $d432
    ld sp, $30d0
    ret nc

    ld e, c
    db $10
    ld e, d
    db $10
    ld e, e
    db $10
    ld e, h
    db $10
    ld e, l
    db $10
    ld e, [hl]
    db $10
    ld e, a
    db $10
    cpl
    db $10
    ld h, a
    db $10
    ld l, b
    db $10
    jr z, jr_032_71e4

    ld h, $90
    daa
    sub b
    ld h, [hl]
    ld d, h
    ld h, h
    ld h, [hl]
    ld e, b
    ld h, [hl]
    ld h, [hl]
    ld e, h
    ld h, h
    dec h
    ret nc

    inc h
    ret nc

    inc hl
    call nc, $d422
    ld hl, $20d0
    ret nc

    ld l, c
    db $10
    ld l, d
    db $10
    ld l, e
    db $10
    ld l, h
    db $10
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld l, a
    db $10
    ccf
    db $10
    ld [hl], a
    db $10
    ld a, b
    db $10
    jr jr_032_7213

    ld d, $90
    rla
    sub b
    ld h, [hl]
    sub h
    ld h, h
    ld h, [hl]
    sbc b
    ld h, [hl]
    ld h, [hl]
    sbc h
    ld h, h

jr_032_7290:
    dec d
    ret nc

    inc d
    ret nc

    inc de

jr_032_7295:
    ret nc

    ld [de], a
    ret nc

    ld de, $10d0
    ret nc

    rlca
    db $10
    ld bc, $0290
    sub b
    inc bc
    sub b
    ld a, l
    db $10
    ld a, [hl]
    db $10
    ld a, a
    db $10
    dec c
    db $10
    ld c, $10
    ld b, $90
    ld h, [hl]
    db $d2, $6f, $0d

    dec b
    ret nc

    inc b
    ret nc

    inc bc
    ret nc

    ld [bc], a
    ret nc

    ld bc, $07d0
    db $10
    ei
    ld h, [hl]
    rst $38
    ld l, a
    ld c, l
    ld h, [hl]
    ld e, a
    ld a, a
    ld c, l
    ld h, [hl]
    sbc a
    ld a, a
    inc l
    nop
    nop
    sub $56
    sub h
    ld c, d
    ld [hl], d
    ld b, d
    jr nc, jr_032_7319

    rst $28
    add hl, sp
    xor $35
    xor l
    ld sp, $2dac
    ld l, e
    dec h
    ld l, d
    add hl, hl
    add hl, hl
    dec h
    jr z, jr_032_7304

    and $18
    ld a, e
    ld l, a
    ld h, [hl]
    db $fc
    ldh a, [$ef]
    dec l
    call $8c35
    dec l
    ld c, c
    ld c, l

Jump_032_72f6:
    ld c, d
    dec h
    ld [$0831], sp
    ld hl, $1d08
    add $18
    add $28
    and l
    inc l

jr_032_7304:
    add l
    inc h
    and l
    db $10
    ld h, h
    jr nz, jr_032_733b

    ld b, [hl]
    nop
    nop
    rra
    ld a, h
    ld h, [hl]
    ld b, d
    adc a
    add hl, bc
    ld h, [hl]
    ld b, b
    adc a
    dec c
    add b

jr_032_7319:
    ld [$1534], sp
    ld d, b
    inc d
    ld d, b
    inc de
    ld d, b
    ld [de], a
    ld d, b
    ld de, $2050
    sub b
    ld hl, $2090
    ret nc

    ld bc, $3410
    db $10
    rrca
    ld bc, $1011
    ld hl, $34d0
    inc h
    nop
    ld a, [de]
    ld d, b
    inc de

jr_032_733b:
    db $10
    inc de
    ret nc

    ld [hl+], a
    ld d, b
    inc [hl]
    db $10
    inc b
    inc de
    db $10
    dec d
    db $10
    inc d
    db $10
    inc [hl]
    nop
    ld [bc], a
    db $10
    ld d, b
    ld de, $2190
    ld d, b
    jr nz, jr_032_7388

    dec [hl]
    dec b
    inc [hl]
    db $10
    ld b, $20
    db $10
    ld hl, $1110
    ret nc

    inc [hl]
    ld h, h
    nop
    dec d
    db $10
    inc hl
    db $10
    ld de, $0f34
    dec b
    inc de
    db $10
    inc d
    db $10
    inc d
    ld d, b
    inc h
    db $10
    dec h
    db $10
    dec h
    db $10
    dec d
    db $10
    inc de
    db $10
    db $10
    inc [hl]
    ld d, c
    rlca
    inc [hl]
    ld a, [bc]
    nop
    ld [de], a
    db $10
    ld a, [de]
    db $10
    ld de, $5134

jr_032_7388:
    rrca
    nop
    inc [hl]
    ld [hl+], a
    ld [bc], a
    inc de
    db $10
    dec h
    ld d, b
    inc h
    ld d, b
    db $10
    db $10
    inc [hl]
    ld b, $00
    ld hl, $2210
    db $10
    inc [hl]
    add d
    nop
    inc d
    ld d, b
    inc [hl]
    and b
    ld b, $11
    sub b
    inc [hl]
    ret z

    nop
    ld [hl+], a
    inc [hl]
    ld c, a
    add hl, bc
    ld a, [de]
    ld d, b
    ld [de], a
    inc [hl]
    ld e, a
    rlca
    inc [hl]
    stop
    ld [hl+], a
    db $10
    inc hl
    db $10
    inc [hl]
    ld c, [hl]
    ld [bc], a
    db $eb
    db $10
    db $ec
    db $10
    db $ed
    db $10
    xor $10
    ldh a, [rNR10]
    pop af
    db $10
    rst $28
    inc [hl]
    dec bc
    ld de, $1434
    db $10
    rst $28
    ld d, b
    pop af
    ld d, b
    db $ed
    ld d, b
    db $ec
    ld d, b
    inc [hl]
    jr nz, jr_032_73eb

    ldh a, [$50]
    xor $34
    inc hl
    ld de, $34eb
    ld d, c
    rlca
    ld [bc], a
    ld e, b
    inc [hl]
    ld b, b
    inc d
    ld a, [c]

jr_032_73eb:
    db $10
    ld a, [$3400]
    ld c, h
    rra
    inc de
    ld a, [c]
    ld d, b
    ld [bc], a
    jr @+$36

    db $76
    inc d
    jr nc, jr_032_744b

    inc [hl]
    ld b, b
    inc d
    di
    inc [hl]
    ld c, e
    rra
    ld d, $f3
    inc [hl]
    ld [hl], l
    dec d
    jr nc, jr_032_7419

    add hl, de
    ld d, b
    jr jr_032_745d

    rla
    ld d, b
    ld d, $50
    inc bc
    ld e, b
    db $f4
    inc [hl]
    ld c, e
    rra
    ld d, $f4

jr_032_7419:
    ld d, b
    inc bc
    jr @+$18

    db $10
    rla
    db $10
    jr jr_032_7432

    add hl, de
    db $10
    add hl, hl
    ld d, b
    jr z, jr_032_7478

    daa
    ld d, b
    ld h, $50
    ld b, b
    ld d, b
    push af
    inc [hl]
    ld c, e
    rra

jr_032_7432:
    ld d, $f5
    ld d, b
    ld b, b
    db $10
    ld h, $10
    daa
    db $10
    jr z, jr_032_744d

    add hl, hl
    db $10
    dec b
    jr jr_032_7476

    ld b, b
    inc h
    or $34
    ld c, e
    rra
    ld d, $f6
    ld d, b

jr_032_744b:
    ld a, [hl+]
    db $10

jr_032_744d:
    dec b
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    inc [hl]

jr_032_7455:
    ccf
    ld hl, $34e5
    ccf
    ld hl, $34f7

jr_032_745d:
    ld c, e
    rra
    ld d, $f7
    ld d, b
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    dec b
    jr jr_032_7455

    db $10
    rst $20
    db $10
    add sp, $10
    jp hl


    db $10

jr_032_7476:
    inc [hl]
    ld c, d

jr_032_7478:
    rra
    add hl, de
    dec hl
    db $10
    inc l
    db $10
    dec l
    db $10
    ld l, $10
    cpl
    db $10
    ld b, $58
    inc [hl]
    nop
    inc [hl]
    inc [hl]
    adc d
    rra
    add hl, de
    dec sp
    db $10
    inc a
    db $10
    dec a
    db $10
    ld a, $10
    ccf
    inc [hl]
    rst $38
    daa
    inc [hl]
    jp z, $191f

    ld c, e

jr_032_749e:
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, [hl]
    db $10
    ld c, a
    db $10
    rlca
    ld e, b
    inc [hl]
    add b
    inc [hl]
    db $f4
    sub b
    inc [hl]
    call z, $161f
    ret nc

    ld e, e
    db $10
    ld e, h
    db $10
    ld e, l
    db $10
    ld e, [hl]
    db $10
    ld e, a
    db $10
    ld [$3458], sp

jr_032_74c0:
    ret nz

    inc [hl]
    di

jr_032_74c3:
    inc [hl]
    adc e
    ccf

jr_032_74c6:
    ld d, $f3
    ret nc

jr_032_74c9:
    ld l, e
    db $10
    ld l, h
    db $10
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld l, a
    db $10
    add hl, bc
    jr jr_032_750a

    nop
    ld b, h
    ld a, [c]
    inc [hl]
    adc e
    ccf
    ld d, $f2
    ret nc

jr_032_74df:
    ld a, e
    db $10
    ld a, h
    db $10
    ld a, l
    db $10
    ld a, [hl]
    db $10
    ld a, a

jr_032_74e8:
    inc [hl]
    rst $38
    ld sp, $340a
    ld bc, $f741
    inc [hl]

jr_032_74f1:
    adc e
    ccf
    ld d, $f7
    ret nc

    inc [hl]
    nop
    ld b, h
    adc l
    inc [hl]
    ld bc, $0b41
    inc [hl]

Call_032_74ff:
    ld bc, $f641
    inc [hl]
    adc e
    ccf
    ld d, $f6
    ret nc

    adc h
    inc [hl]

jr_032_750a:
    ld bc, $8e41
    jr jr_032_749e

jr_032_750f:
    jr jr_032_7542

    jr @+$34

    jr jr_032_7521

jr_032_7515:
    jr jr_032_754a

    ld e, b

jr_032_7518:
    ld [hl-], a
    ld e, b
    push af
    inc [hl]
    adc e
    ccf
    ld d, $f5
    ret nc

jr_032_7521:
    sbc e
    jr jr_032_74c0

    jr jr_032_74c3

    jr jr_032_74c6

    jr jr_032_74c9

    jr jr_032_7565

    jr jr_032_7564

    jr jr_032_7567

    jr jr_032_756a

    ld e, b
    add hl, sp
    jr jr_032_756a

    adc d
    ccf
    add hl, de
    xor e
    jr jr_032_74e8

    jr @-$51

    jr @-$50

jr_032_7540:
    jr jr_032_74f1

jr_032_7542:
    jr jr_032_758a

    jr jr_032_74df

    ret c

    ld b, l
    ld e, b
    ld b, [hl]

jr_032_754a:
    ld e, b
    ld b, l
    inc [hl]
    ret


    ccf
    ld a, [de]
    cp e
    jr jr_032_750f

    jr @-$41

    jr jr_032_7515

    jr jr_032_7518

    jr jr_032_75a0

    jr jr_032_759e

    inc d
    ld b, d
    inc d
    ld b, e

jr_032_7561:
    inc d
    sbc c
    sbc b

jr_032_7564:
    inc [hl]

jr_032_7565:
    ld a, [bc]
    ld c, a

jr_032_7567:
    add hl, de

jr_032_7568:
    res 3, b

jr_032_756a:
    call z, $cd18
    jr @-$30

jr_032_756f:
    jr jr_032_7540

jr_032_7571:
    jr jr_032_75c3

    inc d

jr_032_7574:
    ld d, c
    inc d
    ld d, d
    inc d
    ld d, e
    inc d
    ld d, h
    inc d
    db $eb
    sub b
    db $ec
    sub b
    db $ed
    sub b
    xor $90
    ldh a, [$90]
    pop af
    sub b
    rst $28
    inc [hl]

jr_032_758a:
    bit 2, c
    inc [hl]
    call nc, $ef50
    ret nc

    pop af
    ret nc

    db $ed
    ret nc

    db $ec
    ret nc

    inc [hl]
    ldh [$50], a
    ldh a, [$d0]
    xor $34

jr_032_759e:
    db $e3
    ld d, c

jr_032_75a0:
    db $eb
    ret nc

    call $c698

jr_032_75a5:
    jr @-$74

    jr jr_032_756f

    sbc b
    adc e
    jr jr_032_760d

jr_032_75ad:
    inc d
    ld h, c
    inc d
    ld h, d
    inc d
    ld h, e
    inc d
    ld h, h

jr_032_75b5:
    inc d
    ld h, l
    inc d

jr_032_75b8:
    ld h, [hl]
    inc d
    ld h, a

jr_032_75bb:
    inc d
    ld l, b

jr_032_75bd:
    inc d

jr_032_75be:
    ld l, c
    inc d
    adc e

jr_032_75c1:
    ld e, b
    ld e, c

jr_032_75c3:
    ld e, b

jr_032_75c4:
    and b
    jr jr_032_7568

    sbc b
    and d
    jr @-$5b

    jr jr_032_7571

    jr @-$73

    ret c

    or [hl]
    jr @-$36

    inc d

jr_032_75d4:
    and [hl]

jr_032_75d5:
    jr jr_032_7561

    jr jr_032_7620

    jr jr_032_7623

    jr jr_032_75a5

    inc d
    or a
    sbc b
    or a
    jr @-$75

    sbc b

jr_032_75e4:
    adc $18

jr_032_75e6:
    call z, $c618
    jr jr_032_7574

    sbc b
    ld [hl], b
    inc d
    ld [hl], c
    inc d
    ld [hl], d
    inc d
    ld [hl], e
    inc d
    ld [hl], h
    inc d
    ld [hl], l
    inc d
    db $76
    inc d

jr_032_75fa:
    ld [hl], a
    inc d
    ld a, b
    inc d
    ld a, c

jr_032_75ff:
    inc d
    ret nc

    jr jr_032_75d4

    jr jr_032_75b5

jr_032_7605:
    jr jr_032_75b8

    jr jr_032_75bb

    jr jr_032_75be

jr_032_760b:
    jr jr_032_75c1

jr_032_760d:
    jr jr_032_75c4

    jr jr_032_75e6

jr_032_7611:
    ld e, b
    and a
    jr jr_032_75bd

    ld e, b
    xor c

jr_032_7617:
    inc d
    ld b, h
    jr jr_032_75c3

    ld e, b

jr_032_761c:
    cp b
    jr jr_032_75d5

    sbc b

jr_032_7620:
    ld b, a
    ret c

    adc e

jr_032_7623:
    ret c

    rst $10
    jr jr_032_75ff

    jr @-$25

    jr jr_032_7605

    jr jr_032_75ad

    inc d
    add c
    inc d
    add d
    inc d
    add e
    inc d
    add h
    inc d
    add l
    inc d
    add [hl]
    inc d
    add a
    inc d
    adc b
    inc d
    adc c
    ld e, b
    or b
    ld e, b
    or c
    jr jr_032_7605

    jr @-$3d

    jr jr_032_760b

    jr @-$3b

    jr jr_032_7611

    jr @-$39

    jr jr_032_7617

    jr @-$47

    jr jr_032_760d

jr_032_7655:
    jr @-$45

Jump_032_7657:
    jr jr_032_75e4

    ret c

    adc c
    sbc b

jr_032_765c:
    and [hl]
    ret c

    inc [hl]
    ld a, d
    ld h, d
    call c, $dd18
    ld e, b
    sbc $18
    db $dd
    jr jr_032_75fa

    inc d
    sub c
    inc d
    sub d
    inc d
    sub e
    inc d
    sub h
    inc d
    sub l

jr_032_7674:
    inc d
    sub [hl]
    inc d

jr_032_7677:
    sub a

jr_032_7678:
    inc d
    sbc b
    jr jr_032_761c

    inc [hl]
    sub a
    ld h, c
    sub $18
    add $18
    jp nc, $d318

    jr jr_032_765c

    jr jr_032_76ce

    ld e, b
    and l
    jr jr_032_7655

    ret c

    ret z

    inc d
    db $db
    jr jr_032_7674

    jr jr_032_7677

    inc [hl]
    or a
    ld h, h
    ld e, b
    ld [c], a
    jr @-$1b

    jr jr_032_76a4

    jr @-$1f

    jr @-$03

    db $10

jr_032_76a4:
    inc [hl]
    nop
    ld a, a
    ld c, l
    inc [hl]
    jr nz, @+$81

    dec bc
    inc [hl]
    and b
    rst $38
    ld c, l
    inc [hl]
    ldh [rIE], a
    dec c
    rst $38
    ld b, a
    nop
    nop
    ld h, c
    nop
    jp $8208


    add hl, bc
    adc d
    ld [de], a
    ld c, $23
    sub d
    inc sp
    and a
    nop
    rst $08
    ld sp, $4a71
    ret c

    ld d, d
    rst $38
    ld a, a

jr_032_76ce:
    ld b, $72
    ld l, c
    ld a, [hl]
    db $ed
    ld a, [hl]
    rst $38
    ld b, a
    dec h
    nop
    ld h, c
    nop
    ret nz

    inc b
    ld b, d
    add hl, bc
    add hl, bc
    ld c, $8e
    ld a, [hl-]
    db $f4
    ld a, $e8
    inc d
    ld c, e
    ld hl, $31cf
    sub d
    ld c, [hl]
    ld e, b
    ld h, a
    sbc l
    inc c
    inc [hl]
    ld a, [hl-]
    add b
    inc [hl]
    jr nz, jr_032_7678

    inc [hl]
    ld b, $88
    xor d
    nop
    rrca
    ld bc, $0172
    di
    dec e
    inc [hl]
    ld a, [de]
    add h
    inc [hl]
    ld a, [hl-]
    add d
    inc [hl]

Jump_032_7708:
    ld h, d
    adc a
    dec b
    ld a, $49
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7716

    ld a, $06
    jr jr_032_7718

jr_032_7716:
    ld a, $0e

jr_032_7718:
    ldh [$90], a
    ld a, $0a
    ldh [$94], a
    ld l, $80
    set 2, [hl]
    ld a, [$d53e]
    and a
    jr nz, jr_032_7731

    ld hl, $ff9a
    ld a, [hl]
    xor $80
    ld [hl], a
    jr jr_032_7739

jr_032_7731:
    ld a, $0a
    call Call_032_4390
    jp Jump_000_3a6b


jr_032_7739:
    ld hl, $ff9b
    ld a, $48
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7747

    ld a, $06
    jr jr_032_7749

jr_032_7747:
    ld a, $0e

jr_032_7749:
    ldh [$90], a
    ld a, $0a
    ldh [$94], a
    ld l, $80
    set 2, [hl]
    ld a, [$d53e]
    and a
    jr z, jr_032_7763

    ld hl, $ff9a
    ld a, [hl]
    xor $80
    ld [hl], a
    jp Jump_032_7708


jr_032_7763:
    ld a, $0a
    call Call_032_4390
    jp Jump_000_3a78


    ld hl, $ff9c
    ld a, $9f
    ld [hl-], a
    ld a, $42
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    ld a, $0a
    call Call_032_4390
    jp Jump_000_3a85


    ld hl, $ff94
    dec [hl]
    ret nz

    inc l
    dec [hl]
    ld c, [hl]
    dec [hl]
    jr nz, jr_032_7795

    ld a, $08
    ld [hl], a

jr_032_7795:
    ld l, e
    ld h, d
    ld b, $00
    add hl, bc
    ld a, [hl-]
    ldh [$94], a
    ld a, [hl]
    ld hl, $ff9a
    bit 7, [hl]
    jr z, jr_032_77a7

    add $08

jr_032_77a7:
    ldh [$90], a
    ret


    ld [bc], a
    inc c
    nop
    rlca
    ld bc, $000c
    rlca
    dec b
    rrca
    inc b
    db $10
    inc bc
    ld b, $00
    db $10
    ld hl, $ff85
    ld a, [hl]
    sub $02
    ld [hl+], a
    jr nc, jr_032_77d0

    dec [hl]
    jr jr_032_77d0

    ld hl, $ff85
    ld a, [hl]
    add $02
    ld [hl+], a
    jr nc, jr_032_77d0

    inc [hl]

jr_032_77d0:
    ld l, $80
    set 3, [hl]
    ldh a, [$98]
    and a
    jr z, jr_032_7802

    ld a, $81
    ldh [$9c], a
    jr jr_032_7802

    ldh a, [$9b]
    and a
    jr nz, jr_032_7826

    ld l, $83
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$a7], a
    xor a
    ld [$c6a0], a
    db $cd, $0f, $14
    and a
    jr z, jr_032_7802

    ld a, [$c6a0]
    and a
    jr z, jr_032_7826

jr_032_7802:
    ld hl, $ff99
    ld a, [hl]
    ld b, $42
    add $e0
    ld c, a
    ld a, [bc]
    cp $80
    jr nz, jr_032_7814

    dec c
    ld a, [bc]
    jr jr_032_7815

jr_032_7814:
    inc [hl]

jr_032_7815:
    ld l, $83
    cp $80
    ld c, [hl]
    jr nc, jr_032_7821

    add c
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_032_7821:
    add c
    ld [hl+], a
    ret c

    dec [hl]
    ret


jr_032_7826:
    ld hl, $ff99
    xor a
    ld [hl-], a
    ld a, $01
    ld [hl], a
    ret


    ld a, $81
    ldh [$9c], a
    ld hl, $ff9f
    ld a, $78
    ld [hl-], a
    ld a, $49
    ld [hl-], a
    ld l, $80
    set 4, [hl]
    ld l, $8d
    ld a, $06
    ld [hl-], a
    ld a, $f9
    ld [hl-], a
    ret


    ldh a, [$9b]
    rst $28
    ld b, $79
    or e
    ld a, c
    ret c

    ld a, d
    ldh [$7a], a
    ld c, h
    ld a, h
    ld d, h
    ld a, h
    ld [hl], a
    ld a, h
    adc a
    ld a, h
    inc bc
    ld a, h
    dec c
    ld a, h
    or c
    jr c, @+$08

    ld a, c
    ld b, $79
    ld b, $79
    ld b, $79
    add l
    ld a, e
    xor a
    ld a, e
    dec [hl]
    ld a, c
    ld a, [bc]
    ld a, l
    call Call_032_5c7b
    ld a, e
    ld h, h
    ld a, e
    db $fc
    ld a, d
    inc l
    ld a, e
    ret c

    ld a, h
    and a
    ld a, h
    add c
    add hl, sp
    adc [hl]
    add hl, sp
    sbc e
    add hl, sp
    ld b, $79
    ld b, $79
    ld b, $79
    srl b
    push hl
    jr c, @+$01

    jr c, jr_032_78ac

    add hl, sp
    inc sp
    add hl, sp
    ld c, l
    add hl, sp
    ld h, a
    add hl, sp
    ld [hl], h
    add hl, sp
    ld b, d
    ld a, h
    jr c, @+$7e

    ld b, a
    ld a, c
    cp h
    ld a, d
    ld b, $79
    ld b, $79
    ld b, $79
    ld b, $79

jr_032_78ac:
    xor b
    add hl, sp
    adc $79
    ldh [$3a], a
    db $ed
    ld a, [hl-]
    scf
    ld a, [hl-]
    dec e
    ld a, [hl-]
    add a
    ld a, h
    sbc a
    ld a, h
    ld h, $39
    inc c
    add hl, sp
    cp [hl]
    jr c, @+$08

    ld a, c
    ld b, $79
    ld b, $79
    ld b, $79
    sub d
    ld a, e
    cp h
    ld a, e
    ccf
    ld a, c
    ld e, $7d
    db $eb
    ld a, e
    call c, $e939
    add hl, sp
    ld a, [de]
    ld a, e
    ld c, d
    ld a, e
    ld a, [c]
    ld a, h
    pop bc
    ld a, h
    sub d

jr_032_78e1:
    ld a, [hl-]
    sbc a
    ld a, [hl-]
    add $3a
    db $d3
    ld a, [hl-]
    xor h
    ld a, [hl-]
    cp c
    ld a, [hl-]
    ret c

    jr c, jr_032_78e1

    jr c, @+$0e

    add hl, sp
    ld h, $39
    ld b, b
    add hl, sp
    ld e, d
    add hl, sp
    call c, $e939
    add hl, sp
    ld b, $79
    ld b, $79
    ld e, h
    ld a, c
    adc $7a
    ld b, $79
    ld hl, $ff9b
    ld a, $30
    ld [hl-], a
    ld a, [$c660]
    add $2a
    ld b, a
    ldh a, [$8f]
    add $2a
    cp b
    jr c, jr_032_791f

    res 7, [hl]
    ld a, $00
    jr jr_032_7923

jr_032_791f:
    set 7, [hl]
    ld a, $04

jr_032_7923:
    ldh [$90], a
    dec l
    xor a
    ld [hl-], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $10
    ld [hl-], a
    ld l, $80
    res 4, [hl]
    ret


    ld hl, $ff9b
    ld a, $41
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ret


    ld a, $04
    call Call_032_439d
    jp $39b5


    ld hl, $ff9b
    ld a, $5a
    ld [hl-], a
    ld l, $96
    ld a, $30
    ld [hl-], a
    ld a, $04
    ld [hl-], a
    ld a, $01
    ld [hl-], a
    ld a, $71
    ldh [$ac], a
    ld a, [$c6c8]
    cp $10
    jr c, jr_032_7968

    ld a, $1c
    ldh [$9b], a
    ret


jr_032_7968:
    ld hl, $ff94
    dec [hl]
    jr nz, jr_032_798c

    inc l
    dec [hl]
    ld c, [hl]
    dec [hl]
    jr nz, jr_032_7977

    ld a, $04
    ld [hl], a

jr_032_7977:
    ld hl, $79af
    ld b, $00
    add hl, bc
    ld a, [hl-]
    ldh [$94], a
    ld a, [hl]
    ld hl, $ff9a
    bit 7, [hl]
    jr z, jr_032_798a

    add $04

jr_032_798a:
    ldh [$90], a

jr_032_798c:
    ld l, $96
    ld a, [hl]
    cp $18
    jr nz, jr_032_79a6

    ldh a, [$9a]
    rlca
    jr c, jr_032_799d

    ld bc, $482b
    jr jr_032_79a0

jr_032_799d:
    ld bc, $4842

jr_032_79a0:
    call Call_000_37c1
    ld hl, $ff96

jr_032_79a6:
    dec [hl]
    jp nz, $3a10

    ld a, $2b
    ldh [$9b], a
    ret


    inc bc
    jr nz, jr_032_79b2

jr_032_79b2:
    db $10
    ld hl, $ff9b
    ld a, $31
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_79c1

    ld a, $00
    jr jr_032_79c3

jr_032_79c1:
    ld a, $04

jr_032_79c3:
    ldh [$90], a
    ld l, $95
    ld a, $04
    ld [hl-], a
    ld a, $0d
    ld [hl-], a
    ret


    ld a, [$c6c8]
    cp $10
    jr c, jr_032_79da

    ld a, $1a
    ldh [$9b], a
    ret


jr_032_79da:
    ld a, $0d
    call Call_032_439d
    ld c, $2a
    ld a, [$c65f]
    add c
    ld b, a
    ldh a, [$8e]
    add c
    sub b
    cp $21
    jr c, jr_032_79f2

    cp $e0
    jr c, jr_032_7a12

jr_032_79f2:
    ld hl, $ff9a
    ld a, [$c660]
    add c
    ld b, a
    ldh a, [$8f]
    add c
    sub b
    cp $c0
    jr nc, jr_032_7a0e

    cp $40
    jr nc, jr_032_7a12

    ld a, [hl+]
    rla
    jr c, jr_032_7a12

jr_032_7a0a:
    ld a, $2a
    ld [hl], a
    ret


jr_032_7a0e:
    ld a, [hl+]
    rla
    jr c, jr_032_7a0a

jr_032_7a12:
    ld hl, $ff83
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$a7], a
    call $13cd
    and a
    ld hl, $ff89
    jr nz, jr_032_7a31

    res 6, [hl]
    ld a, $11
    ldh [$9b], a
    ret


jr_032_7a31:
    set 6, [hl]
    ld l, $83
    ldh a, [$a6]
    ld [hl+], a
    ldh a, [$a5]
    ld [hl+], a
    ldh a, [$9a]
    rlca
    jr c, jr_032_7a7e

    ld a, [hl]
    and $0f
    sub $07
    jr nc, jr_032_7a4e

    call Call_000_13f5
    and $0f
    jr z, jr_032_7a79

jr_032_7a4e:
    ld hl, $ff83
    ld a, [hl+]
    sub $04
    ldh [$a6], a
    ld a, [hl+]
    sbc $00
    ldh [$a5], a
    ld a, [hl+]
    sub $07
    ldh [$a8], a
    ld a, [hl+]
    sbc $00
    ldh [$a7], a
    call $14b8
    and a
    jr nz, jr_032_7a79

    ldh a, [$a9]
    rra
    ret nc

    ld hl, $ff85
    ld a, [hl]
    sub $01
    ld [hl+], a
    ret nc

    dec [hl]
    ret


jr_032_7a79:
    ld a, $13
    ldh [$9b], a
    ret


jr_032_7a7e:
    ld a, [hl]
    and $0f
    add $06
    cp $10
    jr c, jr_032_7a8e

    call $13fd
    and $0f
    jr z, jr_032_7ab7

jr_032_7a8e:
    ld hl, $ff83
    ld a, [hl+]
    sub $04
    ldh [$a6], a
    ld a, [hl+]
    sbc $00
    ldh [$a5], a
    ld a, [hl+]
    add $06
    ldh [$a8], a
    ld a, [hl+]
    adc $00
    ldh [$a7], a
    call $14b8
    and a
    jr nz, jr_032_7ab7

    ldh a, [$a9]
    rra
    ret c

    ld hl, $ff85
    inc [hl]
    ret nz

    inc l
    inc [hl]
    ret


jr_032_7ab7:
    ld a, $13
    ldh [$9b], a
    ret


    ld hl, $ff9b
    ld a, $5b
    ld [hl-], a
    ld a, [hl]
    xor $80
    ld [hl], a
    ld a, $08
    ldh [$96], a
    ld a, $0e
    ldh [$90], a
    ld hl, $ff96
    dec [hl]
    ret nz

    ld a, $01
    ldh [$9b], a
    ret


    ld hl, $ff9b
    ld a, $32
    ld [hl-], a
    jr jr_032_7ae6

    ld hl, $ff9b
    ld a, $33
    ld [hl-], a

jr_032_7ae6:
    ld a, [hl-]
    rlca
    jr c, jr_032_7aee

    ld a, $09
    jr jr_032_7af0

jr_032_7aee:
    ld a, $0b

jr_032_7af0:
    ldh [$90], a
    ld l, $98
    ld a, $02
    ld [hl-], a
    dec l
    ld a, $20
    ld [hl-], a
    ret


    ld hl, $ff9b
    ld a, $46
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7b0a

    ld a, $08
    jr jr_032_7b0c

jr_032_7b0a:
    ld a, $0a

jr_032_7b0c:
    ldh [$90], a
    ld a, $0c
    ldh [$94], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    ld a, $0c
    call Call_032_4390
    ld hl, $ff98
    ld a, [hl]
    and a
    jp nz, Jump_000_39c2

    ld a, $0f
    ldh [$9b], a
    ret


    ld hl, $ff9b
    ld a, $47
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7b3a

    ld a, $08
    jr jr_032_7b3c

jr_032_7b3a:
    ld a, $0a

jr_032_7b3c:
    ldh [$90], a
    ld a, $0c
    ldh [$94], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    ld a, $0c
    call Call_032_4390
    ld hl, $ff98
    ld a, [hl]
    and a
    jp nz, Jump_000_39cf

    ld a, $0f
    ldh [$9b], a
    ret


    ld hl, $ff9b
    ld a, $44
    ld [hl-], a
    jr jr_032_7b6a

    ld hl, $ff9b
    ld a, $45
    ld [hl-], a

jr_032_7b6a:
    ld a, [hl-]
    rlca
    jr c, jr_032_7b72

    ld a, $08
    jr jr_032_7b74

jr_032_7b72:
    ld a, $0a

jr_032_7b74:
    ldh [$90], a
    xor a
    ld [hl-], a
    ld a, $0c
    ldh [$94], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    ret


    ld a, $3f
    ldh [$9b], a
    ld a, $64
    ldh [$96], a
    ld hl, $ff80
    res 2, [hl]
    ld a, [$c6c8]
    cp $10
    jr c, jr_032_7b9e

    ld a, $1c
    ldh [$9b], a
    ret


jr_032_7b9e:
    ld a, $0c
    call Call_032_4390
    ld hl, $ff96
    dec [hl]
    jp nz, Jump_000_39f6

    ld a, $10
    ldh [$9b], a
    ret


    ld hl, $ff9b
    ld a, $40
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ld a, $07
    ldh [$96], a
    ld a, $0c
    call Call_032_4390
    ld hl, $ff96
    dec [hl]
    jp nz, Jump_000_3a03

    ld a, $00
    ldh [$9b], a
    ret


    ld hl, $ff9b
    ld a, $43
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7bdb

    ld a, $00
    jr jr_032_7bdd

jr_032_7bdb:
    ld a, $04

jr_032_7bdd:
    ldh [$90], a
    ld l, $96
    ld a, $30
    ld [hl-], a
    ld a, $04
    ld [hl-], a
    ld a, $04
    ld [hl-], a
    ret


    ld a, [$c6c8]
    cp $10
    jr c, jr_032_7bf7

    ld a, $1a
    ldh [$9b], a
    ret


jr_032_7bf7:
    ld hl, $ff96
    dec [hl]
    jp nz, $3a10

    ld a, $2b
    ldh [$9b], a
    ret


    ld hl, $ff9c
    ld a, $8f
    ld [hl-], a
    ld a, $38
    jr jr_032_7c15

    ld hl, $ff9c
    ld a, $8f
    ld [hl-], a
    ld a, $39

jr_032_7c15:
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7c1e

    ld a, $08
    jr jr_032_7c20

jr_032_7c1e:
    ld a, $0a

jr_032_7c20:
    ldh [$90], a
    xor a
    ld [hl-], a
    ld a, $02
    ld [hl-], a
    dec l
    ld a, $04
    ld [hl-], a
    dec l
    ld a, $0c
    ld [hl-], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    ret


    ld hl, $ff9b
    ld a, $34
    ld [hl-], a
    ld b, $02
    jr jr_032_7c5c

    ld hl, $ff9b
    ld a, $35
    ld [hl-], a
    ld b, $02
    jr jr_032_7c5c

    ld hl, $ff9b
    ld a, $34
    ld [hl-], a
    jr jr_032_7c5a

    ld hl, $ff9b
    ld a, $35
    ld [hl-], a

jr_032_7c5a:
    ld b, $03

jr_032_7c5c:
    ld a, [hl]
    and $f0
    ld [hl-], a
    rlca
    jr c, jr_032_7c67

    ld a, $09
    jr jr_032_7c69

jr_032_7c67:
    ld a, $0b

jr_032_7c69:
    ldh [$90], a
    xor a
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, $01
    ld [hl-], a
    ld a, $81
    ldh [$9c], a
    ret


    ld hl, $ff9b
    ld a, $36
    ld [hl-], a
    dec l
    ld a, $42
    ld [hl-], a
    ld a, $10
    ld [hl-], a
    ld a, $01
    ld [hl-], a
    ld a, $0c
    call Call_032_4390
    jp Jump_000_3a51


    ld hl, $ff9b
    ld a, $37
    ld [hl-], a
    dec l
    ld a, $42
    ld [hl-], a
    ld a, $30
    ld [hl-], a
    ld a, $01
    ld [hl-], a
    ld a, $0c
    call Call_032_4390
    jp Jump_000_3a5e


Jump_032_7ca7:
    ld hl, $ff9b
    ld a, $49
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7cb5

    ld a, $08
    jr jr_032_7cb7

jr_032_7cb5:
    ld a, $0a

jr_032_7cb7:
    ldh [$90], a
    ld a, $0c
    ldh [$94], a
    ld l, $80
    set 2, [hl]
    ld a, [$d53e]
    and a
    jr nz, jr_032_7cd0

    ld hl, $ff9a
    ld a, [hl]
    xor $80
    ld [hl], a
    jr jr_032_7cd8

jr_032_7cd0:
    ld a, $0c
    call Call_032_4390
    jp Jump_000_3a6b


jr_032_7cd8:
    ld hl, $ff9b
    ld a, $48
    ld [hl-], a
    ld a, [hl-]
    rlca
    jr c, jr_032_7ce6

    ld a, $08
    jr jr_032_7ce8

jr_032_7ce6:
    ld a, $0a

jr_032_7ce8:
    ldh [$90], a
    ld a, $0c
    ldh [$94], a
    ld l, $80
    set 2, [hl]
    ld a, [$d53e]
    and a
    jr z, jr_032_7d02

    ld hl, $ff9a
    ld a, [hl]
    xor $80
    ld [hl], a
    jp Jump_032_7ca7


jr_032_7d02:
    ld a, $0c
    call Call_032_4390
    jp Jump_000_3a78


    ld hl, $ff9c
    ld a, $9f
    ld [hl-], a
    ld a, $42
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    ld a, $0c
    call Call_032_4390
    jp Jump_000_3a85


    ld hl, $ff85
    ld a, [hl]
    sub $02
    ld [hl+], a
    jr nc, jr_032_7d3c

    dec [hl]
    jr jr_032_7d3c

    ld hl, $ff85
    ld a, [hl]
    add $02
    ld [hl+], a
    jr nc, jr_032_7d3c

    inc [hl]

jr_032_7d3c:
    ld l, $80
    set 3, [hl]
    ldh a, [$98]
    and a
    jr z, jr_032_7d6e

    ld a, $81
    ldh [$9c], a
    jr jr_032_7d6e

    ldh a, [$9b]
    and a
    jr nz, jr_032_7d92

    ld l, $83
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$a7], a
    xor a
    ld [$c6a0], a
    db $cd, $0f, $14
    and a
    jr z, jr_032_7d6e

    ld a, [$c6a0]
    and a
    jr z, jr_032_7d92

jr_032_7d6e:
    ld hl, $ff99
    ld a, [hl]
    ld b, $42
    add $e0
    ld c, a
    ld a, [bc]
    cp $80
    jr nz, jr_032_7d80

    dec c
    ld a, [bc]
    jr jr_032_7d81

jr_032_7d80:
    inc [hl]

jr_032_7d81:
    ld l, $83
    cp $80
    ld c, [hl]
    jr nc, jr_032_7d8d

    add c
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_032_7d8d:
    add c
    ld [hl+], a
    ret c

    dec [hl]
    ret


jr_032_7d92:
    ld hl, $ff99
    xor a
    ld [hl-], a
    ld a, $01
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

Call_032_7f10:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_032_7fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
