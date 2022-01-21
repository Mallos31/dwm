; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]
;All invalid jumps to external bank removed. 
    dec l
    dec sp
    ld b, b
    inc bc
    ld b, h
    rst $38
    ld b, h
    jp nz, $6c47

    ld c, b
    ld b, b
    ld c, d
    sbc $4a
    add b
    ld c, l
    jr nc, jr_02d_4061

    ld h, [hl]
    ld d, d
    ld c, [hl]
    ld d, e
    ld hl, $d155
    ld d, l
    inc b
    ld e, c
    bit 3, c
    adc [hl]
    ld e, h
    ld c, a
    ld e, l
    dec d
    ld h, b
    db $db
    ld h, b
    sub b
    ld h, e
    ld d, c
    ld h, h
    ld c, l
    ld h, a
    ld b, $68
    xor a
    ld l, e
    ld l, [hl]
    ld l, h
    ld a, e
    ld l, a
    ld b, d
    ld [hl], b
    ld a, a
    db $76
    add a
    ld [hl], a
    nop
    ld [$7f0a], sp
    add b
    ld a, a
    add a
    cp e
    ld e, h
    xor a
    ld [hl], b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $00
    ld e, b
    ld b, b
    rst $20
    xor a
    ld d, b
    rst $38
    ldh a, [$ef]
    inc e
    ei
    ld b, $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    dec b
    ld bc, $e0fb
    ldh [rIE], a

jr_02d_4061:
    sbc a
    ret nc

    or b
    ldh [$e0], a
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$e0], a
    db $fc
    nop
    nop
    rst $38
    rst $38
    ld a, [bc]
    ld a, [c]
    ld a, [$320a]
    ld a, [bc]
    rlca
    rlca
    rst $38
    ld sp, hl
    dec c
    dec bc
    rlca
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0707
    rra
    and b
    jp hl


    and c
    db $e3
    and [hl]
    and $ad
    db $ed
    cp h

jr_02d_4091:
    ei
    xor h
    ei
    or h
    db $e3
    cp b
    rst $28
    ret nz

    ld [$d580], a
    nop
    xor d
    dec e
    sbc l
    and a
    cp b
    sbc a
    and b
    cp a
    add b
    cp a
    add b
    rlca
    xor h
    dec b
    ld d, [hl]
    ld [bc], a
    xor e
    and a
    and a
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    sub l
    ld l, a
    and l
    ld a, a
    and l
    ld [hl], a
    dec d
    rst $30
    sub l
    rst $30
    db $fd
    rst $38
    ld a, l
    rst $00
    ld a, l
    rst $38
    add c
    sbc a
    jp z, $f2ca

    or $a4
    sbc h
    cp b
    adc d
    cp b
    adc d
    sbc h
    adc h
    db $fc
    db $fd
    push hl
    db $eb
    ld [de], a
    ld d, a
    inc e
    ld e, a
    jr nz, jr_02d_4091

    jr nc, jr_02d_4091

    inc a
    and e
    jr nz, jr_02d_4106

    ld a, a
    ld a, a
    db $dd
    db $e3
    ld [c], a
    ld a, [$bdbc]
    add b
    add e
    add d
    or l
    or [hl]
    adc c
    add b
    add b
    rst $38
    rst $38
    rst $08
    rst $18
    or b
    or b
    or b
    or [hl]
    adc h
    adc l
    ld b, c
    ld d, c
    ld h, b
    ld l, h
    sbc b
    sbc c

jr_02d_4106:
    add a
    and a
    ld sp, hl
    db $fd
    ld b, d
    ld c, d
    ld [bc], a
    ld [hl-], a
    inc c
    call $f7f1
    ld [bc], a
    ld a, [de]
    inc c
    ld c, l
    ldh a, [$f2]
    ld h, b
    ld l, l
    or b
    or d
    adc [hl]
    xor [hl]
    ld b, c
    reti


    ldh [$65], a
    ld e, a
    ld a, a
    rra
    dec d
    dec b
    push bc
    ret nz

    ld [hl], b
    ret nz

    ld [hl], a
    ldh [$7f], a
    ld hl, sp+$3f
    ld a, a
    sbc a
    sub a
    db $76
    or e
    ld d, d
    ld l, h
    adc l
    ld bc, $0107
    rst $30
    inc bc
    rst $38
    rrca
    cp $ff
    db $fc
    or l
    db $76
    dec h
    and $da
    add hl, de
    ld hl, sp-$61
    rst $18
    cp a
    rst $38
    ldh a, [$bf]
    db $ed

jr_02d_4150:
    or d
    rst $38
    and b
    rst $38
    and b
    cp $a0
    db $ed
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    or e
    ld e, h
    cp $20
    push af
    jr nz, jr_02d_4150

    ld b, b
    push de
    ld a, [bc]
    jr nc, jr_02d_417e

    inc sp
    rst $38
    db $ec
    rra
    ld d, b
    rrca
    xor b
    rrca
    ld e, b
    rrca
    ld sp, hl
    db $fd
    ei
    rst $30
    rrca
    push af
    ccf
    push af
    rst $08

jr_02d_417e:
    push af
    rrca
    or l
    ld c, a
    or l
    ld c, a
    or b
    rst $20
    and a
    rst $38
    cp a
    rst $38
    and b
    ldh [$0a], a
    ld h, [hl]
    db $10
    and c
    pop hl
    rst $38
    rst $38
    cp a
    add b
    ld e, a
    ldh [$c3], a
    db $fc
    ld b, b
    ld a, e
    add b
    di
    add b
    pop af
    ld b, $e7
    ld sp, hl
    rst $38
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    nop
    rst $28
    ld bc, $01ef
    rst $20
    ld [hl], e
    di
    call z, Call_02d_75ff
    rst $18
    ld [hl], l
    rst $18
    push hl
    sbc a
    push hl
    sbc a
    push bc

jr_02d_41bc:
    cp a
    push bc
    ccf
    ld c, l
    cp a
    rst $30
    rst $38
    db $cc, $ed, $08
    add hl, bc
    sbc h
    sbc [hl]
    db $f4
    cp $11
    db $db
    ld hl, $c123
    rst $20
    inc bc
    adc e
    ld b, c
    ld a, l
    ld b, e
    ld b, e
    daa
    daa
    ccf
    cp a
    jr jr_02d_41bc

    inc c
    ld c, h
    add [hl]
    and [hl]
    rst $00
    rst $10
    ld bc, $0165
    add hl, de
    add e
    add e
    rst $38
    rst $38
    jr c, @-$3f

    db $10
    jr jr_02d_4201

    ld de, $ffff
    ld b, b
    ld e, b
    ld a, [bc]
    call nc, $4008
    ld e, b
    ld bc, $0a05
    db $e4
    ld [$0501], sp

jr_02d_4201:
    ld [bc], a
    ld e, d
    ld [$01aa], sp
    dec b
    add e
    sbc e
    dec c
    ld c, a
    or $fc
    cp $57
    ld d, b
    ld d, e
    rst $38
    rst $38
    add b
    rst $38
    cp [hl]
    add c
    ld a, [bc]
    inc b
    ld [hl+], a
    ld a, [bc]
    call z, $ff00
    rst $38
    nop
    ld a, a
    ld a, $41
    ld a, [bc]
    inc d
    ld [hl+], a
    ld a, [bc]
    jr nc, jr_02d_4229

jr_02d_4229:
    cp $83
    add d
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    rst $18
    or b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03

jr_02d_423b:
    add d
    ld a, a
    ld [bc], a
    ld a, [bc]
    dec h
    jr nz, jr_02d_4272

    jr jr_02d_423b

    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_424b:
    ld a, a
    ld bc, $250a
    jr nz, jr_02d_4282

    add hl, de
    rst $30
    ld de, $ffff
    rst $38
    add d
    cp $82
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    cp $02
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10

jr_02d_4272:
    jr jr_02d_4284

    db $10
    rst $38
    rst $38
    ld bc, $01fd
    add c
    ld bc, $ff01
    rst $38
    ld de, $11df

jr_02d_4282:
    add hl, de
    ld a, [bc]

jr_02d_4284:
    call z, $0a10
    ld a, [hl]
    inc l
    rst $08
    jr nc, jr_02d_424b

    ld b, b
    ld e, [hl]
    sbc b
    push hl
    dec a
    db $e3
    cpl
    reti


    add hl, de
    ld l, l
    ld l, l
    sub b
    or [hl]
    rst $30
    ld l, b
    sbc l
    jp nc, $facd

    rlca
    ld a, [hl]

Call_02d_42a1:
    ld b, c
    ei
    inc bc
    rra
    ld d, d
    ld e, d
    add l
    sub h
    sub b
    cp a
    add b
    sbc a
    ret nz

    rst $18
    jr nz, @+$2e

    sub c
    inc de
    ret z

    add hl, bc
    call nz, $3724
    rst $00
    ld a, a
    ld a, b
    rla
    ret nc

    dec bc
    jr c, jr_02d_4327

    ld a, h
    and a
    xor h
    ld e, e
    ret c

    ld h, e
    ld b, h
    cp c
    add [hl]

jr_02d_42c9:
    ld a, [bc]
    ret nc

jr_02d_42cb:
    rst $38
    dec e
    ld h, a
    xor b
    ld h, [hl]
    xor c
    ld [hl], b
    or a
    xor h
    ld l, h
    and b
    ld h, e
    ld hl, sp+$1b
    or a
    ld e, a
    dec a
    sbc $86
    ld [hl], l
    inc b
    rst $30
    dec c
    xor $37
    inc [hl]
    rlca
    call nz, $dc1b
    rst $28
    add sp, -$41
    ld a, b
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c

jr_02d_42fa:
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_42c9

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld a, [bc]
    ld b, b
    jr nc, jr_02d_42cb

    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28

jr_02d_4327:
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    inc h
    jp $815a


    sbc c
    nop
    ld h, [hl]
    jr @+$68

    db $10
    sbc b
    nop
    db $da, $00, $22

    nop
    dec b
    ld a, [$c13e]
    ld c, b
    add a
    inc [hl]
    add e
    ld [hl-], a
    ld bc, $31cc
    call $3120
    ld [bc], a
    db $10
    ld b, c
    nop
    ld l, d
    nop
    ld h, e
    add b
    dec [hl]
    ld b, b
    add d
    ld h, [hl]
    sbc c
    inc a
    jp $df20


    ld [hl], $01
    ld c, c
    nop
    nop
    and l
    nop
    sbc l
    inc bc
    cp b
    inc b
    inc hl
    ld [$9897], sp
    ld h, a
    rst $28
    db $10
    rst $28
    db $10
    ld bc, $83fe
    ld a, h
    rst $00
    jr c, jr_02d_42fa

    ld a, h
    sub e
    ld l, h
    add hl, sp
    add $0a
    jr nz, jr_02d_43af

    ei
    inc b
    ei
    inc b
    ld h, c
    sbc [hl]
    cp h
    ld b, e
    sbc a
    ld l, a
    ld d, b
    or a
    sbc [hl]
    ld h, c
    db $ec
    inc de
    jp nc, $be2d

    ld b, c
    cp a
    ld b, b
    ld a, a
    add b
    rst $30
    ld hl, sp+$0f
    add sp, $0a
    and b
    rst $38
    ld c, l
    ld a, [bc]
    or b
    rst $38
    dec a
    ld e, [hl]
    and c
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    ld e, h
    db $fc

jr_02d_43af:
    ld d, h
    db $f4
    call nc, Call_02d_7376
    adc h
    rst $38
    cp $02
    rst $38
    ei
    cp $83
    add [hl]
    add e
    or $82
    rst $30
    add d
    rst $30
    db $d4, $76, $0a
    and b
    ld b, b
    ld d, h
    or $5e
    cp $c0
    ld a, a
    rst $38
    ld a, a
    or $09
    add e
    or $0a
    or b
    ld b, d
    ld [bc], a
    rlca
    ld [bc], a
    rst $38
    rst $38
    cp $78
    add a
    ld a, [bc]
    jr nz, jr_02d_4431

    ld c, l
    ld a, [bc]
    rra
    ld e, a
    ld c, l
    ld a, [bc]
    ld a, a
    ld e, a
    ld c, l
    ld a, [bc]
    rst $18
    ld e, a
    ld c, l
    ld a, [bc]
    ccf
    ld l, a
    ld c, l
    ld a, [bc]
    sbc a
    ld l, a
    ld c, l
    ld a, [bc]
    rst $38
    ld l, a
    ld c, l
    ld a, [bc]
    ld e, a
    ld a, a
    ld c, l
    ld a, [bc]
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    dec l
    jr z, jr_02d_4435

    nop
    nop
    inc hl
    dec l
    dec b
    dec b
    dec l
    nop
    ld bc, $2dff
    inc d
    rlca
    dec l
    nop
    ld bc, $0d24
    ld c, $2d
    ld h, $02
    ld [hl+], a
    dec l
    rrca
    rrca
    ld bc, $2323
    inc h
    ld [bc], a
    inc bc
    inc b
    dec b
    dec e
    ld e, $1d
    ld e, $22
    dec l
    dec c

jr_02d_4431:
    ld bc, $142d
    dec bc

jr_02d_4435:
    inc h
    dec c
    ld c, $12
    inc de
    inc d
    dec d
    rrca
    rra
    rrca
    rra
    dec l
    inc l
    ld [bc], a
    dec l
    inc d
    add hl, bc
    inc hl
    inc hl
    inc h
    dec e
    ld e, $06
    rlca
    ld [$4809], sp
    ld c, c
    ld [hl], $37
    dec l
    ld c, h
    ld [bc], a
    dec l
    inc d
    add hl, bc
    inc h
    dec c
    ld c, $0f
    rra
    ld d, $17
    jr @+$1b

    ld c, d
    ld c, e
    jr c, jr_02d_449f

    dec l
    ld l, h
    ld [bc], a
    dec l
    sub h
    ld a, [bc]
    dec e
    ld e, $36
    scf
    ld [hl], $37
    ld a, [hl-]

Jump_02d_4473:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec l
    db $c4, $00, $1d
    ld e, $2d
    or d
    inc c
    rrca
    rra
    jr c, @+$3b

    jr c, jr_02d_44bd

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec l
    db $e4
    nop
    rrca
    rra
    dec l
    or d
    inc c
    dec l
    db $c4, $00, $32
    inc sp
    dec sp
    inc a
    nop
    ld bc, $3c3b
    dec l
    call nz, $2d00

jr_02d_449f:
    or d
    inc c
    dec l
    db $e4
    ld [bc], a
    jr nc, jr_02d_44d7

    db $10
    ld de, $3130
    dec l
    db $e4
    nop
    dec l
    ld a, [c]
    ld c, $3a
    inc sp
    ld [hl-], a
    dec l
    ld b, l
    inc d
    ld a, [hl-]
    dec l
    db $10
    rra
    ld bc, $353a

jr_02d_44bd:
    dec l
    add sp, $00
    dec l
    ld h, [hl]
    ld de, $2d3a
    jr nc, @+$21

    ld bc, $2a29
    dec l
    ld b, [hl]
    rra
    ld [$3827], sp
    add hl, sp
    dec hl
    inc l
    dec l
    ld h, [hl]
    jr jr_02d_44fc

jr_02d_44d7:
    dec l
    inc de
    ld a, [bc]
    ld hl, $2020
    ld a, [bc]
    dec bc
    jr nz, @+$0e

    jr nz, jr_02d_4503

    dec l
    db $c2, $11, $2d

    add $10
    dec l
    inc de
    ld a, [bc]
    ld h, $26
    ld h, $1a
    dec de
    ld h, $1c
    ld h, $26
    inc e
    dec l
    db $e3
    db $10
    dec l
    and $10

jr_02d_44fc:
    dec l
    inc de
    add hl, bc
    nop
    ld [$ff12], sp

jr_02d_4503:
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_4535

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_4535:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_455f

    db $10
    ld [de], a
    jr nz, jr_02d_4554

    add c

jr_02d_4554:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_455f:
    rst $38
    ld [$0fe8], sp
    rrca
    rlca
    ld [$f0ef], sp
    cpl
    or b
    inc sp
    inc a
    inc l
    inc l
    ldh [$e3], a
    ld [bc], a
    ld [bc], a
    ld a, [c]
    ld a, [c]
    ld [$f71a], a
    rrca
    db $f4
    ld c, $ec
    inc e
    inc [hl]
    inc [hl]
    rlca
    rst $00
    db $10
    sub e
    rrca
    rrca
    dec b
    ld b, $fd
    cp $15
    sub $17
    rla
    inc de
    inc d
    ld sp, hl
    ld a, [$ca0a]
    ld a, [c]
    ld a, [c]
    and d
    ld h, d
    cp a
    ld a, a
    xor b
    ld l, [hl]
    add sp, -$18
    ret z

    jr z, @-$6e

    ld d, b
    scf
    rst $10
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [rIE], a
    ld [de], a
    ldh [$0b], a
    ld [de], a
    ldh a, [$fc]
    ld hl, sp-$7b
    add d

jr_02d_45ea:
    rst $38
    add b
    ld [de], a
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_4609

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_4609:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $12ff
    ld a, $01
    adc [hl]
    nop
    inc c
    pop bc
    pop af
    nop
    ld [$3000], sp
    ld bc, $fb60
    ld hl, sp+$02
    rst $38
    ld [bc], a
    and d
    ld [bc], a
    ld [hl-], a
    rst $38
    rst $38
    add b
    ld [$5e80], sp
    ret nz

    jr z, jr_02d_4682

    xor a
    ld [bc], a
    ld h, l
    inc b
    ld l, e
    inc c
    ld [hl+], a
    add sp, -$0a
    jr @+$3a

    rla
    scf
    ld [$f80f], sp
    ld sp, hl
    dec hl
    rst $18
    ld a, [hl+]
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    rrca
    ld a, a
    jr @+$1a

    add sp, -$18
    jr jr_02d_45ea

    ccf
    ccf
    inc c
    inc c
    rlca
    rlca
    inc bc
    inc bc
    ld [de], a
    ld b, [hl]
    ld b, $72
    ld [hl], d
    ld [c], a
    ld [c], a
    db $c2, $c2, $12

    ld b, [hl]
    ld b, $12
    jr nc, jr_02d_467f

    ld bc, $0230
    ld h, c
    cp $f9
    ld [de], a
    ld b, b
    rla
    ld e, $c0
    ld [$af6f], sp
    inc b
    ld h, d
    inc c
    ld h, d
    ld [$e824], sp
    db $f4

jr_02d_467f:
    ld [de], a
    ld e, b
    inc d

jr_02d_4682:
    dec sp
    rst $18
    ld a, [de]
    xor $1a
    ld l, [hl]
    rrca
    ccf
    ld [de], a
    ld l, b
    inc d
    ld [de], a
    rst $08
    rst $38
    rra
    nop
    add b
    nop
    sbc a
    nop
    adc a
    nop
    add a
    nop
    add e
    nop
    add c
    nop
    add b
    nop
    rst $38
    nop
    ld bc, $f904
    inc c
    pop af
    inc e
    pop hl
    inc a
    pop bc
    ld a, h
    add c
    db $fc
    ld bc, $be01
    inc bc
    cp h
    rlca
    cp b
    rrca
    or b
    rra
    and b
    ccf
    add b
    ld [de], a
    ld c, $22
    nop
    add c
    nop
    pop bc
    nop
    pop hl
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld bc, $ff00
    nop
    rst $38
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]

jr_02d_46e7:
    and c
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, d
    add l
    ld [de], a
    ld d, [hl]
    jr nz, @+$42

    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $ff00
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_46e7

    ld b, b
    rra
    ldh [rNR12], a
    ld e, [hl]
    jr nz, jr_02d_47ad

    add c
    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    ld [de], a
    cp a
    rst $38
    cpl
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    nop
    ld [de], a
    rst $28
    dec c
    ld [de], a
    ld c, a
    ccf
    ld c, l
    ld [de], a
    xor a
    ccf
    ld c, l
    ld [de], a
    rrca
    ld c, a
    ld c, l
    ld [de], a
    ld l, a
    ld c, a
    ld c, l
    ld [de], a
    rst $08
    ld c, a
    ld c, l
    ld [de], a
    cpl
    ld e, a
    ld c, l
    ld [de], a
    adc a
    ld e, a
    ld c, l
    ld [de], a
    rst $28
    ld e, a

jr_02d_47ad:
    ld c, l
    ld [de], a
    ld c, a
    ld l, a
    ld c, l
    ld [de], a
    xor a
    ld l, a
    ld c, l
    ld [de], a
    rrca
    ld a, a
    ld c, l
    ld [de], a
    ld l, a
    ld a, a
    ld c, l
    ld [de], a
    rst $08
    ld a, a
    dec e
    nop
    ld [bc], a
    dec b
    ld c, $01
    dec b
    ld bc, $0e0d
    rst $38
    dec b
    inc d
    rlca
    ld c, $12
    inc b
    inc de
    inc d
    dec b
    ld [hl+], a
    add hl, bc
    db $10
    dec b
    inc de
    inc c
    dec d
    ld d, $05
    ld b, d
    add hl, bc
    dec b
    ld [hl-], a
    dec c
    rla
    jr jr_02d_47eb

    ld h, d
    add hl, bc
    dec b
    ld [hl-], a
    inc c

jr_02d_47eb:
    inc h
    dec h
    jr z, jr_02d_4818

    dec b
    add d
    nop
    jr nz, jr_02d_4815

    dec b
    adc d
    nop
    jr nc, jr_02d_482a

    dec b
    ld [hl-], a
    inc c
    ld h, $27
    ld a, [hl+]
    dec hl

Jump_02d_4800:
    dec b
    and d
    nop
    ld [hl+], a
    inc hl
    dec b
    xor d
    nop
    ld [hl-], a
    inc sp
    dec b
    ld [hl-], a
    inc c
    jr z, jr_02d_4838

    nop
    dec b
    ld bc, $0509
    ld [hl-], a

jr_02d_4815:
    inc c
    ld a, [hl+]
    dec hl

jr_02d_4818:
    inc bc
    inc b
    dec b
    push hl
    ld [$7205], sp
    ld c, $03
    inc b
    ld b, $07
    inc b
    dec b
    dec b
    dec d
    dec b
    sub d

jr_02d_482a:
    ld c, $03
    inc b
    ld [$0409], sp
    dec b
    dec h
    dec d
    dec b
    or d
    ld c, $24
    dec h

jr_02d_4838:
    ld a, [bc]
    dec bc
    dec b
    ld b, h
    ld d, $05
    db $d2, $0e, $26

    daa
    inc c
    dec c
    dec b
    ld h, h
    ld d, $05
    ld [hl], d
    rrca
    dec b
    dec b
    add d
    inc b
    dec b
    sub d
    rrca
    dec b
    dec b
    and d
    inc b
    dec b
    ld [hl-], a
    dec bc
    ld de, $0105
    rlca
    ld [bc], a
    dec b
    add h
    nop
    dec b
    ld [hl-], a
    dec bc
    dec b
    ldh [rNR23], a
    dec b
    ld h, c
    ld de, $3205
    ld a, [bc]
    nop
    ld [$ff04], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_48a2

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    ld hl, sp-$7b
    add d

jr_02d_48a2:
    rst $38
    add b
    inc b
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_48c1

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_48c1:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $ffff
    rst $38

jr_02d_48ce:
    add d
    rst $38
    add d
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_48fb

    db $10
    inc b
    jr nz, jr_02d_48f0

    add c

jr_02d_48f0:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $5c04

jr_02d_48fb:
    nop
    inc b
    adc [hl]
    dec bc
    ld [$0fe8], sp
    rrca
    rlca
    ld [$f0ef], sp
    cpl
    or b
    inc sp
    inc a
    inc l
    inc l
    ldh [$e3], a
    ld [bc], a
    ld [bc], a
    ld a, [c]
    ld a, [c]
    ld [$f71a], a
    rrca
    db $f4
    ld c, $ec
    inc e
    inc [hl]
    inc [hl]
    rlca
    rst $00
    db $10
    sub e
    rrca
    rrca
    dec b
    ld b, $fd
    cp $15
    sub $17
    rla
    inc de
    inc d
    ld sp, hl
    ld a, [$ca0a]
    ld a, [c]
    ld a, [c]
    and d
    ld h, d
    cp a
    ld a, a
    xor b
    ld l, [hl]
    add sp, -$18
    ret z

    jr z, jr_02d_48ce

    ld d, b
    scf
    rst $10
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [rDIV], a
    xor a
    rst $38
    ccf
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, d
    add l
    inc b
    add [hl]
    db $10
    ld b, b
    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $ff00
    inc b
    xor a
    rst $38
    ccf
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    inc b
    xor [hl]
    rra
    ld b, b
    inc b
    sub b
    cpl
    ld c, l
    inc b
    ldh a, [$2f]
    ld c, l
    inc b
    ld d, b
    ccf
    ld c, l
    inc b
    or b
    ccf
    ld c, l
    inc b
    db $10
    ld c, a
    ld c, l
    inc b
    ld [hl], b
    ld c, a
    ld c, l
    inc b
    ret nc

    ld c, a
    ld c, l
    inc b
    jr nc, @+$61

    ld c, l
    inc b
    sub b
    ld e, a
    ld c, l
    inc b
    ldh a, [$5f]
    ld c, l
    inc b
    ld d, b
    ld l, a
    ld c, l
    inc b
    or b
    ld l, a
    ld c, l
    inc b
    db $10
    ld a, a
    ld c, l
    inc b
    ld [hl], b
    ld a, a
    ld c, l
    inc b
    ret nc

    ld a, a
    inc e
    nop
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld [$0807], sp
    rst $38
    ld [$0714], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    rlca
    rlca
    inc bc
    ld [$0f07], sp
    ld c, d
    jr nz, @+$23

    inc bc
    ld [$0003], sp
    ld [$0287], sp
    ld [$0f11], sp
    nop
    ld [hl+], a
    inc hl
    ld b, $07
    ld [$04a7], sp
    ld [$0026], sp
    ld [$0c14], sp
    rla
    jr @+$0a

    and [hl]
    inc b
    ld a, [bc]
    dec bc
    ld [$0fb0], sp
    ld bc, $1a19
    ld [$04a6], sp
    inc c
    dec c
    ld [$0fb0], sp
    inc bc
    ld [$1404], sp
    ld c, $0f
    ld [$0fd0], sp
    inc bc
    ld [$1424], sp
    db $10
    ld de, $b008
    rrca
    inc bc
    nop
    ld bc, $0101
    ld bc, $0802
    inc b
    db $10
    ld [$0fd0], sp
    inc bc
    ld [$0126], sp
    ld [$1123], sp
    ld [$0fb0], sp
    ld bc, $2120
    ld [$1266], sp
    ld [$1044], sp
    ld [$0f90], sp
    inc bc
    ld [$1466], sp
    ld [$0226], sp
    ld [$0b14], sp
    inc b
    ld bc, $8f08
    ld de, $c208
    nop
    ld [$1fae], sp
    ld [bc], a
    ld [$0407], sp
    ld [$1fab], sp
    ld [bc], a
    nop
    ld [$ff0a], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_4b14

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_4b14:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_4b3e

    db $10
    ld a, [bc]
    jr nz, jr_02d_4b33

    add c

jr_02d_4b33:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_4b3e:
    rst $38
    ld [bc], a
    ld a, [bc]
    ld h, b
    ld bc, $ffff
    ld [de], a
    ld a, [c]
    inc d
    sub [hl]
    jr jr_02d_4b65

    ldh a, [$fa]
    jr nz, jr_02d_4b6f

    ld b, b
    ld l, a
    add a
    xor b
    inc b
    xor e
    ld a, [bc]
    db $76
    inc b
    ld b, $06
    ld [bc], a
    or $e1
    dec d
    jr nz, @-$29

    ld a, [bc]
    add [hl]
    inc b
    ld [bc], a
    ld a, [c]

jr_02d_4b65:
    ld a, [bc]
    ld h, d
    ld [bc], a
    ld c, b
    ld c, [hl]
    jr z, jr_02d_4bd4

    jr jr_02d_4bc6

    rrca

jr_02d_4b6f:
    ld e, a
    jr nz, jr_02d_4b9c

    ld b, b
    ld l, d
    add b
    ld [$a40a], a
    ld b, $0a
    db $76
    ld b, $0a
    db $76
    ld [bc], a
    ld a, [bc]
    add [hl]
    ld b, $0a
    add [hl]
    ld [bc], a
    inc b
    ld d, h
    ld [bc], a
    ld d, [hl]
    ld bc, $0a57
    db $d4, $06, $0a
    and h
    ld [$ac0a], sp
    inc b
    rlca
    xor b
    nop
    xor a
    nop
    and b
    rra
    and b

jr_02d_4b9c:
    nop
    add b
    ld a, a
    add b
    ld hl, sp-$7b
    add d
    rst $38
    add b
    ld a, [bc]
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_4bc2

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_4bc2:
    ld a, a
    ld bc, $c7ff

jr_02d_4bc6:
    rst $00
    rst $08
    ld hl, $e709
    ld de, $0aff
    dec l
    ld e, $00
    rst $38
    nop
    rst $38

jr_02d_4bd4:
    rst $38
    nop
    nop
    ld a, [bc]
    ld b, h
    ld [de], a
    nop
    rst $38
    nop
    ld a, [bc]
    add [hl]
    nop
    ldh [$15], a
    nop
    push af
    nop
    dec b
    ld hl, sp+$05
    nop
    ld bc, $01fe
    ld a, [bc]
    call nc, $0a08
    call c, $8102
    ld [$e880], a
    add a
    add sp, -$80
    ldh [$9f], a
    ldh [$80], a
    ld a, [bc]
    dec a
    db $10
    ld a, [bc]
    ld c, c
    inc de
    ld a, [bc]
    ld b, l
    ld [de], a
    rst $38
    rst $38
    ld bc, $8157
    ld d, a
    ld bc, $e117
    rla
    ld bc, $f907
    rlca
    ld bc, $7d0a
    ld de, $a20a
    rst $38
    ld c, e
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld a, [bc]
    jr nz, jr_02d_4c61

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    ld a, [bc]
    db $fd
    pop af
    ld a, [bc]
    ld b, l
    db $10

jr_02d_4c61:
    ld a, [bc]
    ld b, a
    cpl
    inc b
    inc [hl]
    sra h
    db $d3
    scf
    ret z

    ld a, [hl+]
    push de
    dec d
    ld [$d02f], a
    ld a, [bc]
    ld b, [hl]
    inc h
    db $f4
    dec bc
    xor b
    ld d, a
    ld d, h
    xor e
    db $ec
    inc de
    ld a, [bc]
    ld h, b
    jr nz, jr_02d_4cb4

    sra b
    rst $10
    inc d
    db $eb
    ld a, [bc]
    ld a, [hl]
    jr z, jr_02d_4c93

    ld h, d
    ld l, $dd
    ld [hl+], a
    xor d
    ld d, l
    ld d, l
    xor d
    cp e
    ld b, h

jr_02d_4c93:
    ld a, [bc]
    ld e, h
    inc h
    ld a, [bc]
    ld [hl], h
    inc h
    ld a, [bc]
    ld b, [hl]
    inc h
    ld [hl], $c9
    dec hl
    call nc, $ea15
    ld a, [hl+]
    push de
    ld a, [bc]
    adc h
    inc h
    ld a, [bc]
    or h
    dec hl
    cp a
    ccf
    ld h, b
    ld a, a
    ccf
    ld h, b
    jr nz, jr_02d_4d12

    ccf
    ld a, [bc]

jr_02d_4cb4:
    and $20
    nop
    rst $38
    ld [bc], a
    rst $38
    ld sp, hl
    inc bc
    ei
    ld sp, hl
    inc bc
    ld bc, $f903
    ld a, [bc]
    or $20
    ld a, [bc]
    ld [$0a22], a
    nop
    inc [hl]
    rst $38
    rst $38
    inc bc
    ld sp, hl
    rst $38
    db $fd
    ld a, [bc]
    ld hl, sp+$20
    ld a, [bc]
    ld [de], a
    inc sp
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    ld b, d
    cp l
    ld b, e
    cp h
    ld c, a
    or b
    ld c, d
    or l
    ld a, [hl]
    add c
    add hl, de
    and $0a
    jr nz, jr_02d_4d1d

    jp nz, $f23d

    dec c
    ld d, d
    xor l
    ld a, [hl]
    add c
    sbc b
    ld h, a
    add hl, de
    and $7e
    add c
    ld c, d
    or l
    ld c, a
    or b
    ld b, e
    cp h
    ld b, d
    cp l
    ld a, [hl]
    add c
    nop
    rst $38
    sbc b
    ld h, a
    ld a, [hl]
    add c
    ld d, d
    xor l
    ld a, [c]
    dec c
    db $c2, $3d, $0a

    ld c, d
    ld [hl-], a

jr_02d_4d12:
    ld a, [bc]
    and b
    rra
    ld c, l
    ld a, [bc]
    cp [hl]
    rst $38
    cpl
    rrca
    ldh a, [$f0]

jr_02d_4d1d:
    rrca
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, RST_00
    ldh [$ef], a
    rst $30
    ld [hl], b
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    ld a, [bc]
    ld e, [hl]
    ccf
    ld c, l
    ld a, [bc]
    sbc l
    ld c, a
    ld c, l
    ld a, [bc]
    db $fd
    ld c, a
    ld c, l
    ld a, [bc]
    ld e, l
    ld e, a
    ld c, l
    ld a, [bc]
    cp l
    ld e, a
    ld c, l
    ld a, [bc]
    dec e
    ld l, a
    ld c, l
    ld a, [bc]
    ld a, l
    ld l, a
    ld c, l
    ld a, [bc]
    db $dd
    ld l, a
    ld c, l
    ld a, [bc]
    dec a
    ld a, a
    ld c, l
    ld a, [bc]
    sbc l
    ld a, a
    ld c, l
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc de
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0702
    rlca
    inc de
    rst $38
    ld [bc], a
    inc d
    rlca
    ld [bc], a
    nop
    inc bc
    ld [de], a
    inc b
    ld [bc], a
    jr z, jr_02d_4d9d

    db $10
    ld [bc], a
    inc de
    rrca
    ld [bc], a

jr_02d_4d9d:
    ld b, $07
    ld b, b
    ld b, c
    inc h
    inc h
    ld b, b
    ld b, c
    ld [$0209], sp
    ld [hl-], a
    rrca
    inc bc
    ld a, [bc]
    dec bc
    ld b, d
    ld b, e
    dec h
    dec h
    ld b, d
    ld b, e
    inc c
    dec c
    ld [bc], a
    ld [hl-], a
    dec bc
    ld [bc], a
    rlca
    ld [bc], a
    ld [de], a
    ld c, $0f
    ld l, $2f
    inc d
    inc d
    ld l, $2f
    dec d
    ld d, $02
    ld [hl-], a
    dec bc
    ld [bc], a
    daa
    ld [bc], a
    dec b
    rla
    jr @+$32

    ld sp, $0218
    xor c
    nop
    add hl, de
    ld [bc], a
    sub d
    rrca
    inc bc
    jr z, @+$27

    ld [bc], a
    ret


    inc bc
    jr z, jr_02d_4de3

    or d
    rrca

jr_02d_4de3:
    dec e
    jr nz, jr_02d_4e07

    ld [hl-], a
    inc sp
    jr nz, @+$23

    add hl, hl
    daa
    ld [bc], a
    ret


    ld [bc], a
    inc l
    dec l
    ld [bc], a
    sub d
    inc c
    ld [hl+], a
    inc hl
    inc [hl]
    dec [hl]
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld h, $2a
    ld [bc], a
    ld a, [hl+]
    ld de, $232d
    ld [bc], a
    sub d
    inc c
    ld [hl-], a
    inc sp

jr_02d_4e07:
    nop
    ld [bc], a
    rlca
    ld [$1101], sp
    ld [bc], a
    sub e
    dec bc
    inc [hl]
    dec [hl]
    db $10
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld h, l
    inc d
    ld [bc], a
    db $f4
    inc c
    ld [bc], a
    ld h, h
    rra
    dec bc
    ld [hl+], a
    inc hl
    ld [bc], a
    ld h, h
    rra
    dec bc
    ld [hl-], a
    inc sp
    ld [bc], a
    ld h, h
    rra
    dec bc
    ld [bc], a
    ld h, d
    rra
    dec bc
    nop
    ld [$ff16], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_4e66

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_4e66:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_4e90

    db $10
    ld d, $20
    ld bc, $0181
    ld bc, $ffff
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_4e90:
    rst $38
    nop
    dec b
    nop
    dec c
    nop
    inc a
    add sp, -$17
    nop
    ld l, a
    nop
    cpl
    ld [$c867], sp
    jp z, Jump_02d_4800

    nop
    ld a, h
    nop
    scf
    rrca
    rrca
    ld b, b
    rla
    ld b, b
    rla
    ld h, b
    ld b, $e3
    inc bc
    ld b, b
    ld [bc], a
    sub b
    add d
    inc c
    nop
    add c
    and c
    inc e
    inc bc
    rrca
    nop
    ldh [$f0], a
    ld [hl], b
    ccf
    inc c
    cpl
    ld [de], a
    ld c, e
    ld h, $57
    ld a, [$03fb]
    ld a, [c]
    db $c3, $22, $05


    inc b
    dec bc
    adc b
    ld b, b
    add d
    db $10
    add d
    adc h
    nop
    add c
    ld hl, $831c
    adc a
    nop
    ldh [rSVBK], a
    ld [hl], b
    cp a
    dec c
    cpl
    inc de
    ld c, e
    ld h, $56
    ld a, [$02fa]
    ld a, [c]
    jp nz, $0423

    inc b
    ld a, [bc]
    adc b
    ld [$0fe8], sp
    rrca
    rlca
    ld [$f0ef], sp
    cpl
    or b
    inc sp
    inc a
    inc l
    inc l
    ldh [$e3], a
    ld [bc], a
    ld [bc], a
    ld a, [c]
    ld a, [c]
    ld [$f71a], a
    rrca
    db $f4
    ld c, $ec
    inc e
    inc [hl]
    inc [hl]
    rlca
    rst $00
    scf
    rst $10
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld hl, sp-$7b
    add d
    rst $38
    add b
    ld d, $15
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_4f53

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_4f53:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $16ff
    dec l
    ld e, $ea
    ld [$caca], a
    ld [$cdea], a
    call Call_02d_6d6d
    db $fd
    db $fd
    ld d, $fc
    ldh a, [rRP]
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, a
    ld d, a
    ld h, e
    ld h, e
    and a
    and a
    or l
    or l
    ld d, $fb
    pop af
    inc e
    ld bc, $033c
    ld [hl], b
    and [hl]
    and c
    ld c, $61
    inc c
    ld h, e
    adc h
    and d
    add h

jr_02d_4f8d:
    add d
    and b
    ld b, l
    and b
    ld d, l
    db $10
    db $e4
    dec d
    and l
    db $10
    and [hl]
    db $10
    inc h
    nop
    inc [hl]
    inc bc
    inc hl
    db $fc
    adc h
    ld a, e
    ld b, e
    ld a, h
    ld b, h
    ld h, c
    ld b, d
    ld b, c
    ld c, d
    ldh [$ac], a
    sub b
    db $d3
    rst $38
    adc a
    ld [hl], h
    ld a, e
    ldh a, [$cf]
    ld [hl], a
    ld l, b
    ld a, a
    ld hl, sp-$51
    inc l
    rlca
    ld h, h
    rra
    sbc b
    rst $38
    ldh [$7c], a
    adc h
    ld a, e
    add e
    inc a
    call nz, Call_02d_42a1
    pop bc
    ld a, [bc]
    ldh [$2c], a
    sub b
    ld d, e
    ld a, a
    adc a
    ld [hl], h
    ld a, d
    pop af
    rst $08
    db $76
    ld l, b
    ld a, [hl]
    ld a, [$2dad]
    rlca
    ld h, l
    ld e, $98
    cp $e0
    db $10
    sub e
    rrca
    rrca
    dec b
    ld b, $fd
    cp $15
    sub $17
    rla
    inc de
    inc d
    ld sp, hl
    ld a, [$ca0a]
    ld a, [c]
    ld a, [c]
    and d
    ld h, d
    cp a
    ld a, a
    xor b
    ld l, [hl]
    add sp, -$18
    ret z

    jr z, jr_02d_4f8d

    ld d, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [rNR21], a

jr_02d_501f:
    ld h, b
    inc bc
    add sp, $00
    ld l, h
    ld bc, $092c
    ld h, d
    db $ca, $c9, $16

    ld [hl], b
    ld bc, $0ff7
    rrca
    nop
    rst $30
    nop
    ld [hl], a
    nop
    db $76
    inc bc
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    dec [hl]
    inc b
    ld [hl], e
    and h
    xor d
    inc c
    ld h, d
    inc c
    ld h, d
    ld d, $6c
    db $10
    add b
    dec a
    nop
    cp l
    ld b, b
    sbc h
    ld h, l
    adc l
    jr nz, jr_02d_501f

    db $10
    ld h, h
    db $10
    inc h
    inc bc
    inc hl
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [$4016]
    inc hl
    ld d, $4b
    ld [hl+], a
    push de
    ld d, $4a
    inc hl
    ld a, l
    nop
    xor d
    or a
    rst $10
    di
    sub h
    ld a, c
    ld c, d
    ld l, a
    rst $18
    ld [$993b], sp
    ld [$cab9], a
    pop af
    sub d
    rst $28
    jp hl


    call $9229
    ld e, [hl]
    or $fb
    ld e, $d3
    sbc a
    ld d, c
    sbc l
    ld d, c
    adc l
    ld c, c
    ei
    cp h
    rst $20
    cp a
    db $db
    db $fc
    rst $20
    rst $38
    sbc a
    ld hl, sp-$11
    rst $30
    cp a
    ret c

    ld a, a
    ld b, a
    rst $18
    dec a
    push hl
    rst $38
    db $db
    ccf
    rst $20
    rst $38
    ld sp, hl
    rra
    rst $30
    rst $28
    db $fc
    jr @+$01

    pop hl
    adc b
    add sp, -$71
    adc a
    add a
    adc b
    rst $28
    ldh a, [$af]
    or b
    or e
    cp h
    xor h
    xor h
    ldh [$e3], a
    inc bc
    inc bc
    di
    di
    db $eb
    dec de
    rst $30
    rrca
    push af
    rrca
    db $ed
    dec e
    dec [hl]
    dec [hl]
    rlca
    rst $00

jr_02d_50cc:
    sub b
    sub e

jr_02d_50ce:
    adc a
    adc a
    add l
    add [hl]
    db $fd
    cp $95
    sub $97
    sub a
    sub e
    sub h
    ld sp, hl
    ld a, [$cb0b]
    di
    di
    and e
    ld h, e
    cp a
    ld a, a
    xor c
    ld l, a
    jp hl


    jp hl


    ret


    add hl, hl
    sub c
    ld d, c
    ld d, $e0
    rst $38
    dec c
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_50cc

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld d, $20
    jr nc, jr_02d_50ce

    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    nop
    rst $38
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c

jr_02d_514b:
    ld a, $c1
    ld d, $20
    jr nc, jr_02d_51cd

    add e
    ld a, d
    add l
    ld d, $56
    jr nc, jr_02d_5198

    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $ff00
    cp h
    jp $82fd


    add hl, sp
    add [hl]
    ld h, e
    ld e, h
    rst $00
    cp b
    sub e
    db $ec
    cp c
    add $bc
    add e
    add a
    ld a, c
    db $ec
    ld [de], a
    pop af
    dec c
    db $f4
    add hl, bc
    rst $28
    ld de, $21df
    cp h
    ld b, b
    ld e, $e2
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    jr c, @+$09

    sub e
    xor h
    pop bc

jr_02d_5198:
    cp [hl]
    inc l
    ld d, e
    ld a, $81
    ld l, l
    sub c
    push af
    dec bc
    pop af
    rrca
    rst $30
    add hl, bc
    and $1a
    db $ec
    ld de, $718f
    inc a
    jp nz, Jump_02d_7b63

    ld b, c
    ld d, $03
    add hl, sp
    ld [hl+], a
    ld a, [hl+]
    ld l, l
    ld c, a
    ld d, $14
    jr c, jr_02d_51d1

    ldh [rIE], a
    dec c
    ld [hl], b
    rrca
    ld h, a
    jr jr_02d_514b

    or a
    add b
    and b
    sbc [hl]
    sbc $3f
    ld a, a
    cp a
    pop af
    or c

jr_02d_51cd:
    xor $03
    db $fc
    pop af

jr_02d_51d1:
    db $76
    ld a, b
    cp e
    ld a, [hl-]
    reti


    add hl, sp
    ld e, d
    add hl, sp
    ld e, d
    ld [hl], c
    ld [hl-], a
    ld bc, $a046
    ret c

    ld h, e
    ld d, e
    ld h, a
    ld d, [hl]
    ld h, a
    ld d, [hl]
    sub a
    and $c7
    or a
    and e
    db $db
    ld h, b
    ld b, a
    inc hl
    sbc l
    cp a
    ld h, e
    ccf
    cp a
    ld e, $9e
    nop
    pop bc
    add h
    ld a, e
    ld sp, hl
    add [hl]
    inc bc
    and h
    ret nz

    ccf
    sbc a
    ld h, c
    ld hl, $00de
    add e
    ld a, b
    ld a, c
    db $fc
    db $fd
    db $fd
    call nz, $b9c4
    rrca
    pop af
    add $d8
    db $e3
    db $ed
    ld [$e666], a
    ld l, d
    push hl
    ld l, e
    push bc
    rlc l
    dec de
    add b
    ld h, d
    adc [hl]
    ld c, l
    sbc h
    ld e, d
    sbc h
    ld e, d
    ld e, h
    sbc e
    ld e, $dd
    adc a
    ld l, [hl]
    add b
    rra
    adc l
    ld [hl], a
    db $fd
    adc a
    db $fc
    cp $78
    ld a, b
    ld [bc], a
    ld b, $10
    db $ec
    rst $20
    add hl, de
    rlca
    pop bc
    ld d, $a0
    rst $38
    ld c, l
    ld d, $df
    ld c, a
    ld c, l
    ld d, $3f
    ld e, a
    ld c, l
    ld d, $9f
    ld e, a
    ld c, l
    ld d, $ff
    ld e, a
    ld c, l
    ld d, $5f
    ld l, a
    ld c, l
    ld d, $bf
    ld l, a
    ld c, l
    ld d, $1f
    ld a, a
    ld c, l
    ld d, $7f
    ld a, a
    ld c, l
    ld d, $df
    ld a, a
    dec c
    nop
    ld [bc], a
    nop
    inc de
    inc de
    inc de
    ld bc, $0300
    add hl, bc
    inc de
    inc de
    inc de
    rst $38
    nop
    inc d
    rlca
    inc de
    inc de
    inc de
    ld [de], a
    inc b
    nop
    inc h
    rlca
    stop
    ld de, $010c
    ld bc, $0412
    inc b
    ld b, $07
    nop
    inc h
    nop
    nop
    ld b, [hl]
    nop
    db $10
    ld de, $0011
    inc de
    ld a, [bc]
    ld [de], a
    inc b
    dec b
    inc b
    inc b
    ld d, $17
    nop
    inc h
    nop
    nop
    ld h, [hl]
    nop
    inc bc
    inc b
    stop
    ld d, e
    dec bc
    inc c
    dec hl
    inc d
    dec d
    ld [$3409], sp
    dec [hl]
    inc [hl]
    dec [hl]
    ld a, [bc]
    dec bc
    inc d
    dec d
    ld a, [hl+]
    dec c
    nop
    ld [hl], d
    inc c
    inc e
    dec l
    inc h
    dec h
    jr jr_02d_52db

    ld [hl], $37
    ld [hl], $37
    ld a, [de]
    dec de
    inc h
    dec h
    inc l
    dec e
    nop
    ld [hl], d
    inc c
    ld c, $27
    dec h
    inc h
    ld b, b
    ld b, c
    nop
    adc b
    nop
    ld b, h
    ld b, l
    dec h

jr_02d_52db:
    inc h
    ld h, $0f
    nop
    ld [hl], d
    inc c
    ld e, $29
    inc h
    dec h
    ld b, d
    ld b, e
    nop
    xor b
    nop
    ld b, [hl]
    ld b, a
    inc h
    dec h
    jr z, jr_02d_530f

    nop
    ld [hl], d
    inc c
    jr nc, jr_02d_532e

    dec h
    inc h
    inc d
    dec d
    jr c, jr_02d_532c

    jr nc, jr_02d_5336

    inc d
    dec d
    dec h
    inc h
    jr c, jr_02d_5334

    nop
    ld [hl], d
    inc c
    ld [hl-], a
    dec sp
    inc h
    dec h
    inc h
    dec h
    ld a, [hl-]
    inc sp
    nop

jr_02d_530f:
    ld [hl+], a
    inc d
    nop
    ld a, [c]
    rrca
    ld bc, $0e00
    stop
    ld b, d
    inc d
    nop
    ld [de], a
    rra
    dec e
    inc [hl]
    dec [hl]
    inc a
    dec a
    inc a
    dec a
    nop
    adc b
    nop
    nop
    add h
    ld [de], a
    nop

jr_02d_532c:
    ld [hl], d
    inc c

jr_02d_532e:
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp

jr_02d_5334:
    nop
    xor b

jr_02d_5336:
    nop
    nop
    and h
    ld [de], a
    nop
    ld [hl], d
    dec bc
    ld de, $0300
    add hl, bc
    ld [bc], a
    jr nc, jr_02d_5344

jr_02d_5344:
    ld de, $001c
    ldh [rNR30], a
    ld [de], a
    ld [hl-], a
    nop
    ld sp, $001b
    ld [$ff04], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_5384

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    ld hl, sp-$7b
    add d

jr_02d_5384:
    rst $38
    add b
    inc b
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_53a3

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_53a3:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $04ff
    ld e, l
    ld c, $82
    rst $38
    add d
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_53de

    db $10
    inc b
    jr nz, jr_02d_53d3

    add c

jr_02d_53d3:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_53de:
    rst $38
    inc a
    jp $8777


    rst $20
    nop
    rst $08
    db $10
    ld l, a
    and b
    or b
    ld [hl], e
    xor h
    ld l, h
    ld h, c
    xor [hl]
    sbc [hl]
    ld h, c
    db $cc, $c3, $02
    push hl
    add d
    ld a, c
    rlca
    db $f4
    rrca
    db $cc, $37, $34

jr_02d_53fd:
    add a
    ld h, h
    ld h, c
    xor [hl]
    inc b
    ret nz

    nop
    and c
    ld l, [hl]
    add c
    ld h, [hl]
    rst $18
    cpl
    cp a
    ld b, b
    ccf
    ret nz

    add [hl]
    ld h, l
    add h
    ld h, a
    add l
    ld h, [hl]
    add a
    ld h, h
    add a
    ld b, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc b
    rst $18
    rst $38
    ld c, $3c
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_53fd

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc b
    jr nz, @+$12

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    nop
    rst $38
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    ld a, $c1
    inc b
    jr nz, jr_02d_5491

    ld a, h
    add e
    ld a, d
    add l
    inc b
    ld d, [hl]
    db $10
    ld b, b
    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d

jr_02d_5491:
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $dd04
    rrca
    db $10
    inc b
    and b
    rra
    ld c, l
    rst $38
    rrca
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    inc b
    ld a, [hl]
    rra
    ld c, l
    inc b
    sbc l
    cpl
    ld c, l
    inc b
    db $fd
    cpl
    ld c, l
    inc b
    ld e, l
    ccf
    ld c, l
    inc b
    cp l
    ccf
    ld c, l
    inc b
    dec e
    ld c, a
    ld c, l
    inc b
    ld a, l
    ld c, a
    ld c, l
    inc b
    db $dd
    ld c, a
    ld c, l
    inc b
    dec a
    ld e, a
    ld c, l
    inc b
    sbc l
    ld e, a
    ld c, l
    inc b
    db $fd
    ld e, a
    ld c, l
    inc b
    ld e, l
    ld l, a
    ld c, l
    inc b
    cp l
    ld l, a
    ld c, l
    inc b
    dec e
    ld a, a
    ld c, l
    inc b
    ld a, l
    ld a, a
    ld c, l
    inc b
    db $dd
    ld a, a
    rrca
    nop
    ld [bc], a
    ld c, $06
    inc b
    ld c, $01
    inc bc
    ld b, $0e
    nop
    ld b, $ff
    ld c, $14
    rlca
    ld b, $05
    ld [$220e], sp
    ld bc, $0603
    ld c, $20
    ld b, $0e
    inc d
    rrca
    dec sp
    ld a, [bc]
    dec bc
    inc d
    dec d
    ld a, [bc]
    dec bc
    ld c, $28
    nop
    ld c, $82
    inc b
    ld c, $14
    ld a, [bc]
    inc c
    dec c
    ld d, $17
    inc c
    dec c
    ld c, $28
    nop
    ld c, $a2
    inc b
    ld c, $14
    ld a, [bc]
    inc d
    dec d
    jr nz, jr_02d_5583

    inc d
    dec d
    inc bc
    inc b
    inc b
    ld c, $c1
    inc b
    ld c, $13
    dec bc
    ld d, $17
    ld [hl+], a
    inc hl
    ld d, $17
    rlca
    ld [$0908], sp
    ld c, $e2
    ld [bc], a
    ld c, $72
    rrca
    inc bc
    ld c, $e8
    nop
    ld c, $8c

jr_02d_5583:
    rrca
    add hl, bc
    ld c, $e8
    nop
    ld c, $ac
    rrca
    inc bc
    db $10
    ld de, $420e
    ld a, [de]
    ld c, $32
    inc c
    ld [de], a
    inc de
    ld c, $62
    ld a, [de]
    ld c, $32
    ld e, $00
    ld bc, $0201
    ld c, $42
    db $10
    ld c, $84
    ld [de], a
    ld c, $52
    ld e, $0e
    jr z, jr_02d_55ac

jr_02d_55ac:
    ld c, $6e
    ld [de], a
    ld c, $a0
    ld [de], a
    ld c, $14
    add hl, bc
    inc b
    ld bc, $0401
    ld b, $0e
    ld b, b
    ld [de], a
    inc bc
    ld b, $0e
    ret nz

    ld [de], a
    ld c, $14
    add hl, bc
    ld c, $e0
    ld [de], a
    ld c, $a7
    inc d
    ld c, $e0
    ld de, $140e
    ld [$0800], sp
    inc c
    rst $38
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_5607

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_5607:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_5631

    db $10
    inc c
    jr nz, jr_02d_5626

    add c

jr_02d_5626:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_5631:
    rst $38
    ld [$0fe8], sp
    rrca
    rlca
    ld [$f0ef], sp
    cpl
    or b
    inc sp
    inc a
    inc l
    inc l
    ldh [$e3], a
    ld [bc], a
    ld [bc], a
    ld a, [c]
    ld a, [c]
    ld [$f71a], a
    rrca
    db $f4
    ld c, $ec
    inc e
    inc [hl]
    inc [hl]
    rlca
    rst $00
    scf
    rst $10
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9

jr_02d_566a:
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld a, [hl]
    add c
    dec a
    jp nz, Jump_02d_649b

    pop hl
    rra
    xor $12
    db $cc, $36, $18
    ld [$1af0], a
    ldh [rNR41], a
    ret nz

    ld l, a
    add a
    xor b
    inc b
    xor e
    inc c
    or [hl]
    inc b
    ld b, $05
    inc bc
    or $e1
    dec d
    jr nz, jr_02d_566a

    inc c
    add $04
    ld a, [hl]
    add c
    ld a, $c1
    db $dd
    ld [hl+], a
    db $ed
    sub d
    ld l, e
    ld d, h
    dec [hl]
    ld l, d
    ld d, $59
    ld c, $59
    ldh [$2a], a
    ret nz

    ld l, d
    add b
    ld [$e40c], a
    ld b, $07
    ld d, h
    inc bc
    ld d, [hl]
    ld bc, $0c57
    db $f4
    ld b, $f8
    add l
    add d
    rst $38
    add b
    inc c
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_56dc

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_56dc:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $0cff
    dec l
    ld e, $ea
    ld [$caca], a
    ld [$cdea], a
    call Call_02d_6d6d
    db $fd
    db $fd
    inc c
    db $fc
    ldh a, [rRP]
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, a
    ld d, a
    ld h, e
    ld h, e
    and a
    and a
    or l
    or l
    inc c
    db $fc
    ldh a, [rNR10]
    sub e
    rrca
    rrca
    dec b
    ld b, $fd
    cp $15
    sub $17
    rla
    inc de
    inc d
    ld sp, hl
    ld a, [$ca0a]
    ld a, [c]
    ld a, [c]
    and d
    ld h, d
    cp a
    ld a, a
    xor b
    ld l, [hl]
    add sp, -$18
    ret z

    jr z, @-$6e

    ld d, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [$0c], a
    ldh a, [$fc]
    inc c
    or [hl]
    ld b, $0c
    or [hl]
    ld [bc], a
    inc c
    add $06
    inc c
    add $02
    inc c
    db $e4
    ld [$e40c], sp
    nop
    inc c
    or [hl]
    nop
    rlca
    xor b
    nop
    xor a
    nop
    and b
    rra
    and b
    nop
    add b
    ld a, a
    add b
    add b
    ld [$ea81], a
    add b
    add sp, -$79
    add sp, -$80
    ldh [$9f], a
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    inc c
    add $00
    ldh [$15], a
    nop
    push af
    nop
    dec b
    ld hl, sp+$05
    nop
    ld bc, $01fe
    inc c
    db $f4
    ld [$f40c], sp
    ld [bc], a
    add c
    ld d, a
    ld bc, $e117
    rla
    ld bc, $f907
    rlca
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    inc c
    inc [hl]

jr_02d_57a8:
    ld [hl+], a
    inc c
    add hl, sp
    inc l
    inc c
    dec l
    jr nz, jr_02d_5805

    nop
    xor d
    nop
    push de
    nop
    xor d
    inc c
    ld d, b
    ld hl, $0c7d
    ld d, [hl]
    inc hl
    ld d, l
    nop
    ld a, [$600c]
    inc hl
    xor d
    inc c
    and b
    rst $38
    ld c, l
    inc c
    ret nc

    rst $38
    dec e
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_57a8

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc c
    jr nz, jr_02d_5821

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp

jr_02d_5805:
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    cp h
    jp $82fd


    add hl, sp
    add [hl]
    ld h, e
    ld e, h
    rst $00
    cp b
    sub e
    db $ec
    cp c
    add $bc
    add e
    add a
    ld a, c
    db $ec
    ld [de], a
    pop af
    dec c

jr_02d_5821:
    db $f4
    add hl, bc
    rst $28
    ld de, $21df
    cp h
    ld b, b
    ld e, $e2
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    jr c, @+$09

    sub e
    xor h
    pop bc
    cp [hl]
    inc l
    ld d, e
    ld a, $01
    ld l, l
    sub c
    push af
    dec bc
    pop af
    rrca
    rst $30
    add hl, bc
    and $1a
    db $ec
    ld de, $718f
    inc a
    jp nz, $ff00

    nop
    cp a
    ccf
    ld h, b
    ld a, a
    ccf
    ld h, b
    jr nz, jr_02d_58b6

    ccf
    inc c
    add [hl]
    jr nc, jr_02d_585b

jr_02d_585b:
    rst $38
    ld [bc], a
    rst $38
    ld sp, hl
    inc bc
    ei
    ld sp, hl
    inc bc
    ld bc, $f903
    inc c
    sub [hl]
    jr nc, jr_02d_5876

    adc d
    ld [hl-], a
    inc c
    and b
    inc [hl]
    rst $38
    rst $38
    inc bc
    ld sp, hl
    rst $38
    db $fd
    inc c

jr_02d_5876:
    sbc b
    jr nc, jr_02d_5885

    or d
    inc sp
    rst $38
    inc c
    nop
    ccf
    dec l
    inc c
    jr nc, @+$22

    inc c
    nop

jr_02d_5885:
    ld c, c
    inc c
    cp $f0
    inc c
    dec [hl]
    jr nz, jr_02d_5899

    ld bc, $c243
    jp nc, $b375

    inc c
    inc b
    jr c, jr_02d_58e4

    rst $08
    xor a

jr_02d_5899:
    sub e
    inc c
    inc d
    jr c, jr_02d_58aa

    cp [hl]
    rst $38
    cpl
    rrca
    ldh a, [$f0]
    rrca
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]

jr_02d_58aa:
    cp $7e
    ld [c], a
    ld h, d
    call c, RST_00
    ldh [$ef], a
    rst $30
    ld [hl], b
    ld [hl], h

jr_02d_58b6:
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    inc c
    add hl, sp
    ld hl, $c20c
    ld c, a
    ld c, l

jr_02d_58e4:
    inc c
    ld [hl+], a
    ld e, a
    ld c, l
    inc c
    add d
    ld e, a
    ld c, l
    inc c
    ld [c], a
    ld e, a
    ld c, l
    inc c
    ld b, d
    ld l, a
    ld c, l
    inc c
    and d
    ld l, a
    ld c, l
    inc c
    ld [bc], a
    ld a, a
    ld c, l
    inc c
    ld h, d
    ld a, a
    ld c, l
    inc c
    jp nz, $2a7f

    nop
    ld [bc], a
    inc bc
    inc de
    ld bc, $0103
    dec bc
    inc de
    inc de
    inc de
    rst $38
    inc bc
    inc d
    rlca
    inc de
    ld [de], a
    inc b
    inc bc
    ld [hl+], a
    add hl, bc
    db $10
    inc bc
    ld de, $060d
    rlca
    inc bc
    ld [hl+], a
    ld b, $06
    rlca
    inc bc
    jr nc, jr_02d_5935

    ld d, $17
    inc bc
    ld [hl+], a
    ld b, $16
    rla
    inc bc
    jr nc, @+$10

    ld [$0a09], sp
    dec bc

jr_02d_5935:
    ld c, b
    ld c, c
    ld b, c
    ld b, c
    ld c, b
    ld c, c
    inc c
    dec c
    ld [$0309], sp
    jr nc, jr_02d_5950

    jr jr_02d_595d

    ld c, $1b
    ld c, d
    ld c, e
    ld b, b
    ld b, b
    ld c, d
    ld c, e
    inc e
    rrca
    jr jr_02d_5969

jr_02d_5950:
    inc bc
    jr nc, jr_02d_5961

    inc d
    dec d
    dec e
    ld e, $38
    add hl, sp
    inc hl
    inc hl
    jr c, jr_02d_5996

jr_02d_595d:
    jr nz, jr_02d_5980

    inc d
    dec d

jr_02d_5961:
    inc bc
    jr nc, jr_02d_5972

    dec h
    ld h, $1f
    inc h
    ld a, [hl-]

jr_02d_5969:
    dec sp
    inc h
    inc bc
    push hl
    nop
    ld [hl+], a
    dec h
    ld h, $03

jr_02d_5972:
    jr nc, jr_02d_5982

    ld h, $25
    inc d
    dec d
    inc [hl]
    dec [hl]
    inc bc
    inc b
    ld [de], a
    ld h, $25
    inc bc

jr_02d_5980:
    ret nc

    rrca

jr_02d_5982:
    ld bc, $2625
    ld [hl], $37
    inc bc
    inc h
    ld [de], a
    inc bc
    xor $0f
    inc bc
    ld h, $25
    inc [hl]
    dec [hl]
    inc bc
    ld b, h
    ld [de], a
    inc bc

jr_02d_5996:
    ld c, $1f
    ld hl, $4342
    ld b, d
    ld b, e
    inc a
    dec a
    inc bc
    add h
    ld [de], a
    ld b, d
    ld b, e
    inc bc
    jr nc, jr_02d_59b5

    ld a, $3f
    inc bc
    and d
    jr @+$05

    jr nc, jr_02d_59bc

    ld de, $0103
    ld bc, $3c02

jr_02d_59b5:
    dec a
    nop
    inc bc
    ld bc, $1101
    inc bc

jr_02d_59bc:
    ld de, $030c
    ldh [rNR12], a
    ld [de], a
    inc bc
    xor [hl]
    ld [de], a
    inc bc
    ldh [rNR12], a
    inc bc
    inc d
    ld [$0800], sp
    inc d
    rst $38
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_5a01

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_5a01:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_5a2b

    db $10
    inc d
    jr nz, jr_02d_5a20

    add c

jr_02d_5a20:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_5a2b:
    rst $38
    nop
    dec b
    nop
    dec c
    nop
    inc a
    add sp, -$17
    nop
    ld l, a
    nop
    cpl
    ld [$c867], sp
    jp z, Jump_02d_4800

    nop
    ld a, h
    nop
    scf
    rrca
    rrca
    ld b, b
    rla
    ld b, b
    rla
    ld h, b
    ld b, $e3
    inc bc
    ld b, b
    add d
    db $10
    add d
    adc h
    nop
    add c
    ld hl, $831c
    adc a
    nop
    ldh [rSVBK], a
    ld [hl], b
    cp a
    inc c
    cpl
    ld [de], a
    ld c, e
    ld h, $57
    ld a, [$03fb]
    ld a, [c]
    db $c3, $22, $05


    inc b
    dec bc
    adc b
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    inc d
    and b
    ld bc, $147d
    and [hl]
    inc bc
    ld d, l
    nop
    ld a, [$b014]
    inc bc
    xor d
    inc d
    ld h, b

jr_02d_5a84:
    inc bc
    add sp, $00
    ld l, h
    ld bc, $092c
    ld h, d
    jp z, $14c9

    ld [hl], b
    ld bc, $0ff7
    rrca
    nop
    rst $30
    nop
    ld [hl], a
    nop
    db $76
    inc bc
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    dec [hl]
    inc b
    ld [hl], e
    and h
    xor d
    inc c
    ld h, d
    inc c
    ld h, d
    adc h
    and d
    add h
    add d
    add b
    dec a
    nop
    cp l
    ld b, b
    sbc h
    ld h, l
    adc l
    jr nz, jr_02d_5a84

    db $10
    ld h, h
    db $10
    inc h
    inc bc
    inc hl
    ld hl, sp-$7b
    add d
    rst $38
    add b
    inc d
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_5ade

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_5ade:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $14ff
    dec l
    ld e, $ea
    ld [$caca], a
    ld [$cdea], a
    call Call_02d_6d6d
    db $fd
    db $fd
    inc d
    db $fc
    ldh a, [rRP]
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, a
    ld d, a
    ld h, e
    ld h, e
    and a
    and a
    or l
    or l
    inc d
    ei
    pop af
    inc e
    ld bc, $033c
    ld [hl], b
    and [hl]
    and c
    ld c, $61
    inc c
    ld h, e
    inc d
    db $ec
    nop
    and b
    ld b, l
    and b
    ld d, l
    db $10
    db $e4
    dec d
    and l
    db $10
    and [hl]
    db $10
    inc h
    nop
    inc [hl]
    inc bc
    inc hl

jr_02d_5b28:
    ld a, h
    adc h
    ld a, e
    add e
    inc a
    call nz, Call_02d_42a1
    pop bc
    ld a, [bc]
    ldh [$2c], a
    sub b
    ld d, e
    ld a, a
    adc a
    ld [hl], h
    ld a, e
    ldh a, [$cf]
    ld [hl], a
    ld l, b
    ld a, a
    ld hl, sp-$51
    inc l
    rlca
    ld h, h
    rra
    sbc b
    rst $38
    ldh [rNR14], a
    and b
    rst $38
    ld c, l
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_5b28

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc d
    jr nz, jr_02d_5b91

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    cp h
    jp $82fd


    add hl, sp
    add [hl]

jr_02d_5b91:
    ld h, e
    ld e, h
    rst $00
    cp b
    sub e
    db $ec
    cp c
    add $bc
    add e
    add a
    ld a, c
    db $ec
    ld [de], a
    pop af
    dec c
    db $f4
    add hl, bc
    rst $28
    ld de, $21df
    cp h
    ld b, b
    ld e, $e2
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop bc

jr_02d_5baf:
    ld a, [hl]
    pop bc
    jr c, @+$09

    sub e
    xor h
    pop bc
    cp [hl]
    inc l
    ld d, e
    ld a, $81
    ld l, l
    sub c
    push af
    dec bc
    pop af
    rrca
    rst $30
    add hl, bc
    and $1a
    db $ec
    ld de, $718f
    inc a
    jp nz, $ff00

    nop
    add b
    nop
    sbc a
    nop
    adc a
    nop
    add a
    nop
    add e
    nop
    add c
    nop
    add b
    nop
    rst $38
    nop
    ld bc, $f904
    inc c
    pop af
    inc e
    pop hl
    inc a
    pop bc
    ld a, h
    add c
    db $fc
    ld bc, $be01
    inc bc
    cp h
    rlca
    cp b
    rrca
    or b
    rra
    and b
    ccf
    add b
    inc d
    adc [hl]
    ld [hl+], a
    nop
    add c
    nop
    pop bc
    nop
    pop hl
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld bc, $ff00
    ld b, $36
    inc [hl]
    or d
    inc d
    inc b
    jr z, jr_02d_5c11

    ld c, c

jr_02d_5c11:
    db $fc
    db $cd, $14, $14
    jr z, @+$16

    ldh [rIE], a
    dec c
    ldh [$1f], a
    rst $08
    jr nc, jr_02d_5baf

    ld l, a
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f807
    db $e3
    db $ec
    pop af
    db $76
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    adc a
    ld l, [hl]
    rst $00
    scf
    ldh [$1f], a
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    add hl, bc
    or $f3
    inc c
    rlca
    ld hl, sp+$14
    and b
    rra
    ld c, l
    inc d
    sbc a
    ccf
    ld c, l
    inc d
    rst $38
    ccf
    ld c, l
    inc d
    ld e, a
    ld c, a
    ld c, l
    inc d
    cp a
    ld c, a
    ld c, l
    inc d
    rra
    ld e, a
    ld c, l
    inc d
    ld a, a
    ld e, a
    ld c, l
    inc d
    rst $18
    ld e, a
    ld c, l
    inc d
    ccf
    ld l, a
    ld c, l
    inc d
    sbc a
    ld l, a
    ld c, l
    inc d
    rst $38
    ld l, a
    ld c, l
    inc d
    ld e, a
    ld a, a
    ld c, l
    inc d
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    inc bc
    inc de
    inc de
    inc de
    ld bc, $0303
    add hl, bc
    inc de
    inc de
    inc de
    rst $38
    inc bc
    inc d
    rlca
    inc de
    inc de
    inc de
    ld [de], a
    inc b
    inc bc
    inc h
    rlca
    db $10
    inc bc
    ld de, $000f
    ld b, $07
    inc bc
    inc h
    inc b
    ld b, $07
    inc bc
    jr nc, @+$11

    ld bc, $1716
    inc bc
    inc h
    inc b
    ld d, $17
    inc bc
    jr nc, @+$11

    ld bc, $0908
    jr nc, @+$33

    jr z, jr_02d_5cf1

    jr z, jr_02d_5cf3

    jr nc, jr_02d_5cfd

    ld [$0309], sp
    jr nc, @+$11

    ld bc, $1918
    ld [hl-], a
    inc sp
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld [hl-], a
    inc sp
    jr @+$1b

    inc bc
    jr nc, jr_02d_5cf0

    ld bc, $8803
    nop
    inc bc
    call nz, $0304
    jr nc, jr_02d_5cfa

    ld bc, $a803
    nop
    inc bc

jr_02d_5cf0:
    db $e4

jr_02d_5cf1:
    inc b
    inc bc

jr_02d_5cf3:
    jr nc, @+$11

    ld bc, $1514
    inc h
    dec h

jr_02d_5cfa:
    inc d
    dec d
    inc bc

jr_02d_5cfd:
    inc b
    ld [de], a
    inc bc
    jr nc, @+$11

    ld bc, $0b0a
    ld h, $27
    ld a, [bc]
    dec bc
    inc bc
    inc h
    ld [de], a
    inc bc
    jr nc, @+$11

    ld bc, $0a0b
    inc h
    dec h
    dec bc
    ld a, [bc]
    inc bc
    ld b, h
    ld [de], a
    inc bc
    db $10
    rra
    ld hl, $2d2c
    jr nz, @+$23

    inc l
    dec l
    inc bc
    add h
    ld [de], a
    inc bc
    jr nc, @+$11

    ld bc, $2322
    inc bc
    and h
    ld d, $03
    jr nc, @+$11

    nop
    ld de, $0101
    ld bc, $2002
    ld hl, $0300
    inc bc
    ld bc, $0311
    ld de, $030e
    ldh [rNR10], a
    ld [de], a
    inc bc
    xor [hl]
    ld [de], a
    inc bc
    ldh [rNR12], a
    inc bc
    inc d
    ld [$0800], sp
    inc d
    rst $38
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_5d85

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_5d85:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_5daf

    db $10
    inc d
    jr nz, jr_02d_5da4

    add c

jr_02d_5da4:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_5daf:
    rst $38
    nop
    dec b
    nop
    dec c
    nop
    inc a
    add sp, -$17
    nop
    ld l, a
    nop
    cpl
    ld [$c867], sp
    jp z, Jump_02d_4800

    nop
    ld a, h
    nop
    scf
    rrca
    rrca
    ld b, b
    rla
    ld b, b
    rla
    ld h, b
    ld b, $e3
    inc bc
    nop
    inc e
    ld bc, $033c
    ld [hl], b
    and [hl]
    and c
    ld c, $61
    inc c
    ld h, e
    adc h
    and d
    add h
    add d
    and b
    ld b, l
    and b
    ld d, l
    db $10
    db $e4
    dec d
    and l
    db $10
    and [hl]
    db $10
    inc h
    nop
    inc [hl]
    inc bc
    inc hl
    ld b, b
    add d
    db $10
    add d
    adc h
    nop
    add c
    ld hl, $831c
    adc a
    nop
    ldh [rSVBK], a
    ld [hl], b
    cp a
    inc c
    cpl
    ld [de], a
    ld c, e
    ld h, $57
    ld a, [$03fb]
    ld a, [c]
    db $c3, $22, $05


    inc b
    dec bc
    adc b
    ld a, h
    adc h
    ld a, e
    add e
    inc a
    call nz, Call_02d_42a1
    pop bc
    ld a, [bc]
    ldh [$2c], a
    sub b
    ld d, e
    ld a, a
    adc a
    ld [hl], h
    ld a, e
    ldh a, [$cf]
    ld [hl], a
    ld l, b

jr_02d_5e26:
    ld a, a
    ld hl, sp-$51
    inc l
    rlca
    ld h, h
    rra
    sbc b
    rst $38
    ldh [$3c], a
    jp $8f7f


    rst $30
    jr jr_02d_5e26

    jr nc, jr_02d_5ea8

    or b
    or e
    ld a, h
    xor h
    ld l, h

jr_02d_5e3e:
    ld h, b
    and e
    sbc [hl]
    ld h, c
    db $fc
    di
    ld [$f61d], a
    dec c
    rst $30
    inc c
    rst $28
    inc e
    scf
    inc [hl]
    rlca
    call nz, $85f8
    add d
    rst $38
    add b
    inc d
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_5e72

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_5e72:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $14ff
    dec l
    ld e, $70
    sub e
    ld a, a
    adc a
    ld a, l
    add [hl]
    cp l
    ld c, [hl]
    sub l
    db $76
    rst $10
    scf
    or e
    ld d, h
    add hl, sp
    jp z, $c90e

    db $f4
    ei
    or c
    ld l, [hl]
    or a
    ld a, b
    xor a
    ld l, b
    rst $28
    add sp, -$31
    jr z, jr_02d_5e3e

    ld d, b
    scf
    rst $10
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra

jr_02d_5ea8:
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [rNR14], a

jr_02d_5ee1:
    ld h, b
    inc bc
    add sp, $00
    ld l, h
    ld bc, $092c
    ld h, d
    jp z, $14c9

    ld [hl], b
    ld bc, $0ff7
    rrca
    nop
    rst $30
    nop
    ld [hl], a
    nop
    db $76
    inc bc

jr_02d_5ef9:
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    dec [hl]
    inc b
    ld [hl], e
    and h
    xor d
    inc c
    ld h, d
    inc c
    ld h, d
    inc d
    adc h
    nop
    add b
    dec a
    nop
    cp l
    ld b, b
    sbc h
    ld h, l
    adc l
    jr nz, jr_02d_5ee1

    db $10
    ld h, h
    db $10
    inc h
    inc bc
    inc hl
    inc d
    ldh [rIE], a
    dec c
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28

jr_02d_5f36:
    db $10
    rst $18
    jr nz, jr_02d_5ef9

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc d
    jr nz, jr_02d_5f62

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    nop
    rst $38
    nop

Call_02d_5f5f:
    add b
    nop
    sbc a

jr_02d_5f62:
    nop
    adc a
    nop
    add a
    nop
    add e
    nop
    add c
    nop
    add b
    nop
    rst $38
    nop
    ld bc, $f904
    inc c
    pop af
    inc e
    pop hl
    inc a
    pop bc
    ld a, h
    add c
    db $fc
    ld bc, $be01
    inc bc
    cp h
    rlca
    cp b
    rrca
    or b
    rra
    and b
    ccf
    add b
    inc d
    ld c, [hl]
    ld [hl+], a
    nop
    add c
    nop
    pop bc
    nop
    pop hl
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld bc, $ff00
    inc d
    and b
    rst $38
    ld c, l
    inc d
    ldh [rIE], a
    dec c
    ldh [$1f], a
    rst $08
    jr nc, jr_02d_5f36

    ld l, a
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f807
    db $e3
    db $ec
    pop af
    db $76
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    adc a
    ld l, [hl]
    rst $00
    scf
    ldh [$1f], a
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    add hl, bc
    or $f3
    inc c
    rlca
    ld hl, sp+$14
    and b
    cpl
    ld c, l
    inc d
    sbc a
    ccf
    ld c, l
    inc d
    rst $38
    ccf
    ld c, l
    inc d
    ld e, a
    ld c, a
    ld c, l
    inc d
    cp a
    ld c, a
    ld c, l
    inc d
    rra
    ld e, a
    ld c, l
    inc d
    ld a, a
    ld e, a
    ld c, l
    inc d
    rst $18
    ld e, a
    ld c, l
    inc d
    ccf
    ld l, a
    ld c, l
    inc d
    sbc a
    ld l, a
    ld c, l
    inc d
    rst $38
    ld l, a
    ld c, l
    inc d
    ld e, a
    ld a, a
    ld c, l
    inc d
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    ld a, [de]
    inc de
    inc de
    inc de
    ld bc, $031a
    add hl, bc
    inc de
    inc de
    inc de
    rst $38
    ld a, [de]
    inc d
    rlca
    inc de
    inc de
    inc de
    ld [de], a
    inc b
    ld a, [de]
    inc h
    rlca
    db $10
    ld a, [de]
    ld de, $010c
    ld bc, $0412
    inc b
    ld b, $07
    ld a, [de]
    inc h
    nop
    ld a, [de]
    ld b, [hl]
    nop
    db $10
    ld de, $1a11
    inc de
    ld a, [bc]
    ld [de], a
    inc b
    dec b
    inc b
    inc b
    ld [$1a09], sp
    inc h
    nop
    ld a, [de]
    ld h, [hl]
    nop
    inc bc
    inc b
    db $10
    ld a, [de]
    ld d, e
    dec c
    ld c, $0f
    ld a, [bc]
    dec bc
    inc h
    dec h
    inc h
    dec h
    ld a, [bc]
    dec bc
    ld c, $0f
    ld a, [de]
    ld [hl], b
    rrca
    ld bc, $1514
    inc c
    dec c
    ld h, $27
    ld h, $27
    inc c
    dec c
    inc d
    dec d
    ld a, [de]
    ld [hl], b
    ld c, $20
    ld hl, $1716
    ld a, [de]
    adc b
    nop
    ld a, [de]
    adc b
    nop
    ld d, $17
    jr nz, @+$23

    ld a, [de]
    ld [hl], d
    inc c
    ld [hl+], a
    inc hl
    jr @+$1b

    ld a, [de]
    xor b
    nop
    ld a, [de]
    xor b
    nop
    jr jr_02d_60ad

    ld [hl+], a
    inc hl
    ld a, [de]
    or d
    ld c, $30
    ld sp, $2120
    ld a, [de]
    adc b
    nop
    ld a, [de]
    ld [bc], a
    ld [de], a
    ld a, [de]
    db $d2, $0e, $32

    inc sp
    ld [hl+], a
    inc hl
    ld a, [de]
    xor b
    nop

jr_02d_60ad:
    ld a, [de]
    ld [hl+], a
    ld [de], a
    ld a, [de]
    or d
    ld c, $1a
    ld b, d
    ld a, [de]
    ld a, [de]
    jp nc, $1a0e

    ld h, d
    ld a, [de]
    ld a, [de]
    ld [hl-], a
    rra
    inc a
    ld de, $031a
    ld bc, $2002
    ld hl, $1a00
    inc bc
    inc bc
    ld a, [de]
    ld d, d
    dec bc
    ld a, [de]
    ldh [rNR12], a
    ld [de], a
    ld a, [de]
    ldh a, [rP1]
    ld a, [de]
    db $eb
    inc d
    ld a, [de]
    inc d
    ld [$0800], sp
    inc c
    rst $38
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_6111

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_6111:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_613b

    db $10
    inc c
    jr nz, jr_02d_6130

    add c

jr_02d_6130:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_613b:
    rst $38
    inc a
    jp $8777


    rst $30
    jr @-$0f

    jr nc, @+$71

    or b
    or b
    ld a, a
    xor b
    ld l, c
    ld h, c
    and [hl]
    sbc [hl]
    ld h, c
    db $ec
    db $e3
    ld a, [bc]
    db $fd

jr_02d_6152:
    add [hl]
    ld a, l
    rlca
    db $fc
    rrca
    db $fc
    rla
    sub h
    add a
    ld h, h
    ld [bc], a
    inc c
    add b
    ld bc, $ffff
    ld [de], a
    ld a, [c]
    inc d
    sub [hl]
    jr jr_02d_6182

    ldh a, [$fa]
    jr nz, jr_02d_618c

    ld b, b
    ld l, a
    add a
    xor b
    inc b
    xor e
    inc c
    sub [hl]
    inc b
    ld b, $06
    ld [bc], a
    or $e1
    dec d
    jr nz, jr_02d_6152

    inc c
    and [hl]
    inc b
    ld [bc], a
    ld a, [c]

jr_02d_6182:
    inc c
    add d
    ld [bc], a
    ld c, b
    ld c, [hl]
    jr z, jr_02d_61f1

    jr jr_02d_61e3

    rrca

jr_02d_618c:
    ld e, a
    add b
    ld [$c00c], a
    ld a, [bc]
    inc c
    sub [hl]
    nop
    rlca
    xor b
    nop
    xor a
    nop
    and b
    rra
    and b
    nop
    add b
    ld a, a
    add b
    inc c
    and [hl]
    nop
    ldh [$15], a
    nop
    push af
    nop
    dec b
    ld hl, sp+$05
    nop
    ld bc, $01fe
    ld bc, $0c57
    ldh a, [$0a]
    ld hl, sp-$7b
    add d
    rst $38
    add b
    inc c
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_61d7

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_61d7:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $0cff

jr_02d_61e3:
    dec l
    ld e, $00
    nop
    rst $38
    inc c
    db $fd
    ldh a, [$0c]
    ld b, e
    ld [de], a
    rst $38
    rst $38
    rst $38

jr_02d_61f1:
    ld bc, $8157
    ld d, a
    ld bc, $e117
    rla
    ld bc, $f907
    rlca
    ld bc, $ffff
    rst $38
    ld [hl], c
    or d
    ld l, b
    xor b
    ld h, b
    and a
    and c
    ld h, [hl]
    sub c
    db $76
    rst $18
    cpl
    cp a
    ld b, b
    ccf
    ret nz

    adc [hl]
    ld c, l
    inc d
    rla
    dec b
    and $87
    ld h, h
    adc a
    ld l, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    jr nz, jr_02d_624d

    ld b, b
    ld l, d
    inc c
    call nz, $0c0c
    sub b
    jr jr_02d_6238

    and [hl]
    ld b, $0c
    and [hl]

jr_02d_6230:
    ld [bc], a
    inc b
    ld d, h
    ld [bc], a
    ld d, [hl]
    inc c
    ldh a, [$08]

jr_02d_6238:
    add b
    ld [$ea81], a
    add b
    add sp, -$79
    add sp, -$80
    ldh [$9f], a
    ldh [$80], a
    inc c
    dec a
    db $10
    rst $38
    nop
    inc c
    ld a, $13

jr_02d_624d:
    inc c
    ld b, d
    inc d
    inc c
    ld [c], a
    rst $38
    dec bc
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_6230

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc c
    jr nz, jr_02d_6299

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    nop
    rst $38
    nop
    cp a
    ccf
    ld h, b

jr_02d_6299:
    ld a, a
    ccf
    ld h, b
    jr nz, @+$62

    ccf
    inc c
    ld b, [hl]
    jr nz, jr_02d_62a3

jr_02d_62a3:
    rst $38
    ld [bc], a
    rst $38
    ld sp, hl
    inc bc
    ei
    ld sp, hl
    inc bc
    ld bc, $f903
    inc c
    ld d, [hl]
    jr nz, jr_02d_62be

    ld c, d
    ld [hl+], a
    inc c
    ld h, b
    inc h
    rst $38
    rst $38
    inc bc
    ld sp, hl
    rst $38
    db $fd
    inc c

jr_02d_62be:
    ld e, b
    jr nz, jr_02d_62cd

    ld [hl], d
    inc hl
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a

jr_02d_62cd:
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    ld a, $c1
    inc c
    jr nz, jr_02d_6305

    ld a, h
    add e
    ld a, d
    add l
    inc c
    sub [hl]
    jr nz, @+$42

    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $410c
    db $10
    ld a, a
    add b

jr_02d_6305:
    rst $18
    jr nz, jr_02d_6314

    add [hl]
    daa
    nop
    cp $01
    inc bc
    db $fc
    inc c
    sub [hl]
    ld h, $0c
    db $fd

jr_02d_6314:
    pop af
    inc c
    ld b, b
    db $10
    inc c
    rst $20
    cpl
    ld b, $0f
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    inc c
    db $dd
    rra
    db $10
    inc c
    ld h, b
    ccf
    ld c, l
    inc c
    ret nz

    ccf
    ld c, l
    inc c
    jr nz, jr_02d_63b6

    ld c, l
    inc c
    add b
    ld c, a
    ld c, l
    inc c
    ldh [rVBK], a
    ld c, l
    inc c
    ld b, b
    ld e, a
    ld c, l
    inc c
    and b
    ld e, a
    ld c, l
    inc c
    nop
    ld l, a
    ld c, l
    inc c
    ld h, b
    ld l, a
    ld c, l
    inc c
    ret nz

    ld l, a
    ld c, l
    inc c
    jr nz, jr_02d_6406

    ld c, l
    inc c
    add b
    ld a, a
    ld c, l
    inc c
    ldh [$7f], a
    inc c
    nop
    ld [bc], a
    nop
    inc de
    ld bc, $0100
    rlca
    inc de
    nop
    dec c
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    inc de
    ld [de], a
    inc b
    nop
    ld [hl+], a
    dec b
    stop
    dec c
    rrca
    ld [bc], a
    ld [$2e09], sp
    ld l, $2c
    dec l
    ld l, $2e
    ld a, [bc]
    dec bc
    nop

jr_02d_63b6:
    inc l
    rrca
    inc bc
    jr jr_02d_63d4

    cpl
    cpl
    ld a, [hl+]
    dec hl
    cpl
    cpl
    ld a, [de]
    dec de
    nop
    inc l
    rrca
    inc bc
    inc c
    add hl, de
    jr z, jr_02d_63f4

    jr nc, @+$33

    jr z, @+$2b

    ld a, [de]
    rrca
    nop
    ld l, h
    rrca

jr_02d_63d4:
    dec b
    ld a, [hl+]
    dec hl
    ld [hl-], a
    inc sp
    ld a, [hl+]
    dec hl
    nop
    adc d
    rrca
    rlca
    cpl
    cpl
    jr z, jr_02d_640c

    cpl
    cpl
    nop
    xor d
    rrca
    add hl, bc
    nop
    ld h, [hl]
    ld bc, $8b00
    rrca
    dec b
    dec c
    inc h
    dec h
    dec e

jr_02d_63f4:
    dec e
    inc h
    dec h
    ld c, $0f
    db $10
    ld de, $0d00
    ld de, $1300
    dec bc
    inc e
    inc d
    ld h, $27
    inc d

jr_02d_6406:
    nop
    inc hl
    db $10
    dec d
    inc bc
    nop

jr_02d_640c:
    daa
    inc bc
    nop
    inc d
    ld a, [bc]
    ld b, $07
    jr z, @+$2b

    nop
    ld b, d
    ld [de], a
    nop
    inc l
    rra
    inc bc
    ld d, $17
    ld a, [hl+]
    dec hl
    nop
    ld h, d
    ld [de], a
    nop
    inc l
    rra
    inc bc
    jr z, jr_02d_6452

    nop
    add d
    inc d
    jr nz, jr_02d_644f

    nop
    adc h
    stop
    ld [hl-], a
    inc e
    ld a, [hl+]
    dec hl
    nop
    and d
    inc d
    ld [hl+], a
    inc hl
    nop
    xor h
    stop
    ld [hl-], a
    dec de
    ld de, $0100
    rlca
    ld [bc], a
    nop
    adc [hl]
    rra
    nop
    nop
    ldh [rNR23], a
    ld [de], a
    nop

jr_02d_644f:
    xor [hl]
    ld e, $00

jr_02d_6452:
    ld [$ff14], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_6487

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_6487:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38

Jump_02d_649b:
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_64b1

    db $10
    inc d
    jr nz, jr_02d_64a6

    add c

jr_02d_64a6:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_64b1:
    rst $38
    nop
    dec b
    nop
    dec c
    nop
    inc a
    add sp, -$17
    nop
    ld l, a
    nop
    cpl
    ld [$c867], sp
    jp z, Jump_02d_4800

    nop
    ld a, h
    nop
    scf
    rrca
    rrca
    ld b, b
    rla
    ld b, b
    rla
    ld h, b
    ld b, $e3
    inc bc
    nop
    inc e
    ld bc, $033c
    ld [hl], b
    and [hl]
    and c
    ld c, $61
    inc c
    ld h, e
    adc h
    and d
    add h
    add d
    and b
    ld b, l
    and b
    ld d, l
    db $10
    db $e4
    dec d
    and l
    db $10
    and [hl]
    db $10
    inc h
    nop
    inc [hl]
    inc bc
    inc hl
    ld b, b
    add d
    db $10
    add d
    adc h
    nop
    add c
    ld hl, $831c
    adc a
    nop
    ldh [rSVBK], a
    ld [hl], b
    cp a
    inc c
    cpl
    ld [de], a
    ld c, e
    ld h, $57
    ld a, [$03fb]
    ld a, [c]
    db $c3, $22, $05


    inc b
    dec bc
    adc b
    ld a, h
    adc h
    ld a, e
    add e
    inc a
    call nz, Call_02d_42a1
    pop bc
    ld a, [bc]
    ldh [$2c], a
    sub b
    ld d, e
    ld a, a
    adc a
    ld [hl], h
    ld a, e
    ldh a, [$cf]
    ld [hl], a
    ld l, b

jr_02d_6528:
    ld a, a
    ld hl, sp-$51
    inc l
    rlca
    ld h, h
    rra
    sbc b
    rst $38
    ldh [$3c], a
    jp $8f7f


    rst $30
    jr jr_02d_6528

    jr nc, jr_02d_65aa

    or b
    or e
    ld a, h
    xor h
    ld l, h

jr_02d_6540:
    ld h, b
    and e

Jump_02d_6542:
    sbc [hl]
    ld h, c
    db $fc
    di
    ld [$f61d], a
    dec c
    rst $30
    inc c
    rst $28
    inc e
    scf
    inc [hl]
    rlca
    call nz, $85f8
    add d
    rst $38
    add b
    inc d
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_6574

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_6574:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    ld de, $14ff
    dec l
    ld e, $70
    sub e
    ld a, a
    adc a
    ld a, l
    add [hl]
    cp l
    ld c, [hl]
    sub l
    db $76
    rst $10
    scf
    or e
    ld d, h
    add hl, sp
    jp z, $c90e

    db $f4
    ei
    or c
    ld l, [hl]
    or a
    ld a, b
    xor a
    ld l, b
    rst $28
    add sp, -$31
    jr z, jr_02d_6540

    ld d, b
    scf
    rst $10
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra

jr_02d_65aa:
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [rNR14], a

jr_02d_65e3:
    ld h, b
    inc bc
    add sp, $00
    ld l, h
    ld bc, $092c
    ld h, d
    jp z, $14c9

    ld [hl], b
    ld bc, $0ff7
    rrca
    nop
    rst $30
    nop
    ld [hl], a
    nop
    db $76
    inc bc

jr_02d_65fb:
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    dec [hl]
    inc b
    ld [hl], e
    and h
    xor d
    inc c
    ld h, d
    inc c
    ld h, d
    inc d
    adc h
    nop
    add b
    dec a
    nop
    cp l
    ld b, b
    sbc h
    ld h, l
    adc l
    jr nz, jr_02d_65e3

    db $10
    ld h, h
    db $10
    inc h
    inc bc
    inc hl
    inc d
    ldh [rIE], a
    dec c
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_65fb

    ld b, b
    rra
    ldh [$7e], a
    add c
    inc d
    jr nz, jr_02d_6664

    cp b
    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    nop
    rst $38
    nop
    add b
    nop
    sbc a

jr_02d_6664:
    nop
    adc a
    nop
    add a
    nop
    add e
    nop
    add c
    nop
    add b
    nop
    rst $38
    nop
    ld bc, $f904
    inc c
    pop af
    inc e
    pop hl
    inc a
    pop bc
    ld a, h
    add c
    db $fc
    ld bc, $be01
    inc bc
    cp h
    rlca
    cp b
    rrca
    or b
    rra
    and b
    ccf
    add b
    inc d
    ld c, [hl]
    ld [hl+], a
    nop
    add c
    nop
    pop bc
    nop
    pop hl
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld bc, $ff00
    nop
    rst $38
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    ld a, $c1
    inc d
    jr nz, jr_02d_66dc

    ld a, h
    add e
    ld a, d
    add l
    inc d
    sub [hl]
    jr nz, @+$42

    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    inc d
    ld a, l
    jr nz, @+$16

    ret nz

    rst $38

jr_02d_66dc:
    ld l, $0f
    ldh a, [rNR10]
    rst $28
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $ff00
    ldh [$ef], a
    ldh a, [rPCM34]
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    inc d
    cp [hl]
    cpl
    jr nc, jr_02d_6732

    add b
    ccf
    ld c, l
    inc d
    ldh [$3f], a
    ld c, l
    inc d
    ld b, b
    ld c, a
    ld c, l
    inc d
    and b
    ld c, a
    ld c, l
    inc d
    nop
    ld e, a
    ld c, l
    inc d

jr_02d_6732:
    ld h, b
    ld e, a
    ld c, l
    inc d
    ret nz

    ld e, a
    ld c, l
    inc d
    jr nz, jr_02d_67ab

    ld c, l
    inc d
    add b
    ld l, a
    ld c, l
    inc d
    ldh [$6f], a
    ld c, l
    inc d
    ld b, b
    ld a, a
    ld c, l
    inc d
    and b
    ld a, a
    ld c, h
    nop
    ld [bc], a
    nop
    inc de
    ld bc, $0100
    inc bc
    inc de
    nop
    add hl, bc
    ld b, $ff
    nop
    inc d
    rlca
    inc de
    ld [de], a
    inc b
    nop
    ld [hl+], a
    ld bc, $0010
    add hl, bc
    rrca
    ld b, $06
    rlca
    inc b
    inc b
    ld b, $07
    nop
    jr z, jr_02d_6780

    rlca
    ld [$0409], sp
    inc b
    ld [$0009], sp
    jr z, jr_02d_678a

    rlca
    ld a, [bc]
    dec bc
    jr z, @+$2b

jr_02d_6780:
    ld a, [bc]
    dec bc
    nop
    jr z, jr_02d_6794

    rlca
    inc c
    dec c
    ld a, [hl+]
    dec hl

jr_02d_678a:
    inc c
    dec c
    nop
    jr z, jr_02d_679e

    rlca
    jr nc, @+$33

    jr z, jr_02d_67bd

jr_02d_6794:
    jr nc, @+$33

    nop
    jr z, jr_02d_67a8

    rlca
    ld [hl-], a
    inc sp
    ld a, [hl+]
    dec hl

jr_02d_679e:
    ld [hl-], a
    inc sp
    nop
    jr z, jr_02d_67b2

    rlca
    ld c, $0f
    inc h
    dec h

jr_02d_67a8:
    ld c, $0f
    db $10

jr_02d_67ab:
    ld de, $0900
    dec d
    nop
    inc de
    dec bc

jr_02d_67b2:
    inc d
    dec d
    ld h, $27
    inc d
    dec d
    inc bc
    nop
    ld [hl+], a
    ld [bc], a
    nop

jr_02d_67bd:
    dec h
    ld bc, $1400
    ld a, [bc]
    ld d, $17
    inc h
    dec h
    ld d, $17
    nop
    jr z, jr_02d_67ea

    rlca
    jr jr_02d_67e7

    ld h, $27
    jr jr_02d_67eb

    nop
    jr z, jr_02d_67f4

    rlca
    inc h
    dec h
    nop
    add d
    db $10
    jr nz, jr_02d_67fe

    nop
    adc b
    inc d
    nop
    ld [hl-], a
    inc e
    ld h, $27
    nop
    and d

jr_02d_67e7:
    db $10
    ld [hl+], a
    inc hl

jr_02d_67ea:
    nop

jr_02d_67eb:
    xor b
    inc d
    nop
    ld [hl-], a
    dec de
    ld de, $0100
    inc b

jr_02d_67f4:
    nop
    ld bc, $0201
    jr z, @+$2b

    nop
    ld [hl-], a
    dec de
    nop

jr_02d_67fe:
    ldh [rNR30], a
    ld [de], a
    ld a, [hl+]
    dec hl
    nop
    ld [hl-], a
    ld a, [de]
    nop
    ld [$ff04], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_683c

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_683c:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_6866

    db $10
    inc b
    jr nz, jr_02d_685b

    add c

jr_02d_685b:
    ld bc, $ff01
    rst $38
    ld de, $11df
    add hl, de
    ld de, $ff11

jr_02d_6866:
    rst $38
    rst $38
    ldh [$fe], a
    ld a, [$cece]
    rst $00
    rst $00
    ld b, l
    ld b, l
    ld e, l
    ld e, l
    inc b
    db $fc
    ldh a, [$e6]
    nop
    ld d, a
    ld d, a
    ld d, e
    ld d, e
    ld h, c
    ld h, c
    xor c
    xor c
    cp a
    cp a
    inc b
    db $fc
    ldh a, [$f7]
    sub [hl]
    rst $28
    rst $28
    jp $83c3


    add e
    xor l
    xor l
    db $fd
    db $fd
    inc b
    db $fc
    pop af
    cpl
    rst $38
    rst $38
    ld h, a

jr_02d_6898:
    ld h, a
    ld [bc], a
    ld [bc], a
    and d
    and d
    push hl
    push hl
    inc b
    db $fc
    ldh a, [$3c]
    jp $8f7f


    rst $30
    jr jr_02d_6898

    jr nc, jr_02d_691a

    or b
    or e
    ld a, h
    xor h
    ld l, h
    ld h, b
    and e
    sbc [hl]
    ld h, c
    db $fc
    di
    ld [$f61d], a
    dec c
    rst $30
    inc c
    rst $28
    inc e
    scf
    inc [hl]
    rlca
    call nz, $d737
    ld [hl], e
    sub h
    ld sp, hl
    ld a, [bc]
    rst $28
    rra
    ld c, b
    cp e
    sbc c
    ld l, d
    cp c
    ld c, d
    ld [hl], c
    sub d
    xor $e9
    call z, $922b
    ld e, l
    or $f9
    rra
    ret nc

    sbc a
    ld d, b
    sbc a
    ld d, b
    adc a
    ld c, b
    ld [$0fe8], sp
    rrca
    rlca
    ld [$f0ef], sp
    cpl
    or b
    inc sp
    inc a
    inc l
    inc l
    ldh [$e3], a
    ld [bc], a
    ld [bc], a
    ld a, [c]
    ld a, [c]
    ld [$f71a], a
    rrca
    db $f4
    ld c, $ec
    inc e
    inc [hl]
    inc [hl]
    rlca
    rst $00
    ld hl, sp-$7b
    add d
    rst $38
    add b
    inc b
    dec d
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08

jr_02d_691a:
    jr nz, jr_02d_6924

    rst $20
    db $10
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    add c

jr_02d_6924:
    ld a, a
    ld bc, $c7ff
    rst $00
    rst $08
    ld hl, $e709
    inc b
    ld e, l
    nop
    inc b
    dec l
    inc e
    ld a, a
    ld a, a
    nop
    ld a, a
    inc b
    cp $f0
    sub a
    sub a
    sbc h
    db $fc
    sbc b

jr_02d_693f:
    ld hl, sp+$04
    cp $f0
    ld bc, $04ff
    ld d, h
    nop
    jp hl


    jp hl


    add hl, sp
    ccf
    add hl, de
    rra
    nop
    nop
    ld [$caea], a
    jp z, $eaea

    call $6dcd
    ld l, l
    inc b
    adc d
    ld [bc], a
    ld d, [hl]
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, a
    ld d, a
    ld h, e
    ld h, e
    and a
    and a
    or l
    or l
    inc b
    ei
    pop af
    ld d, l
    nop
    xor d
    nop

jr_02d_6970:
    push de
    nop
    xor d
    inc b
    add b
    ld de, $047d
    add [hl]
    inc de
    ld d, l
    nop
    ld a, [$9004]
    inc de
    xor d
    ld [hl], b
    sub e
    ld a, a
    adc a
    ld a, l
    add [hl]
    cp l
    ld c, [hl]
    sub l
    db $76
    rst $10
    scf
    or e
    ld d, h
    add hl, sp
    jp z, $c90e

    db $f4
    ei
    or c
    ld l, [hl]
    or a
    ld a, b
    xor a
    ld l, b
    rst $28
    add sp, -$31
    jr z, jr_02d_693f

    ld d, b
    ld a, e
    cp h
    ld h, a
    cp a
    ld e, e
    db $fc
    rst $20
    ld a, a
    sbc a
    ld hl, sp-$11
    ld [hl], a
    cp a
    ld e, b
    ccf
    rst $00
    sbc $3d
    db $e4
    rst $38
    db $db
    ld a, $e7
    cp $f9
    rra
    rst $30
    xor $ff
    jr @+$01

    ldh [rNR10], a
    sub e
    rrca
    rrca
    dec b
    ld b, $fd
    cp $15
    sub $17
    rla
    inc de
    inc d
    ld sp, hl
    ld a, [$ca0a]
    ld a, [c]
    ld a, [c]
    and d
    ld h, d
    cp a
    ld a, a
    xor b
    ld l, [hl]
    add sp, -$18
    ret z

    jr z, jr_02d_6970

    ld d, b
    xor $e8
    rst $08
    dec hl
    sub d
    ld e, [hl]
    db $f4
    ld hl, sp+$1e
    ret nc

    sbc a
    ld d, c
    sbc a
    ld d, c
    adc [hl]
    ld c, b
    call c, $e43d
    db $fd
    db $db
    ccf
    rst $20

jr_02d_69f8:
    rst $38
    ld sp, hl
    rra
    rst $30
    rst $28
    cp $18
    rst $38
    pop hl
    ld c, $c8
    push af
    ei
    or b
    ld l, h
    or [hl]
    ld a, d
    xor h
    ld l, b
    db $ed
    jp hl


    rst $08
    add hl, hl
    sbc a
    ld d, c
    inc b
    and b
    rst $38
    ld c, l
    inc b
    adc a
    cpl
    ld c, l
    inc b
    xor $fe
    ld l, l
    inc b
    db $fd
    pop af
    sub b
    rst $38
    xor [hl]
    ld d, c
    xor d
    ld d, l
    cp $01
    ld bc, $b701
    ld bc, $5404
    nop
    add hl, bc
    rst $38
    xor d
    ld d, l
    xor d
    ld d, l
    ld [$0415], a
    inc e
    ld [hl-], a
    ld a, $c1
    xor d
    ld d, l
    inc b
    nop
    jr nc, jr_02d_6a44

    ld [bc], a
    inc b

jr_02d_6a44:
    ld e, $30
    inc b
    inc e
    jr nc, jr_02d_69f8

    ld d, c
    inc b
    db $10
    jr nc, jr_02d_6a98

    ld c, c
    ld l, h
    and $75
    ld b, b
    ld sp, hl
    add [hl]
    db $e3
    sbc h
    add a
    cp b
    sub e
    db $ec
    add hl, sp
    ld b, [hl]
    ld a, h
    inc bc
    call nz, $ecd5
    ld [bc], a
    ld a, [c]
    dec c
    or $09

jr_02d_6a68:
    xor $11
    rst $18
    jr nz, @-$3f

    ld b, b
    rra
    ldh [$7e], a
    pop bc
    inc b
    ld h, b
    jr nc, jr_02d_6aae

    ld b, a
    sub e
    db $ec
    pop bc
    cp [hl]
    xor h
    db $d3
    ld a, [hl]
    ld b, c
    ld l, [hl]
    sub e
    db $f4
    ld [$0ff1], sp
    push af
    add hl, bc
    push hl
    dec de
    db $ed
    inc de
    adc h
    ld [hl], b
    ccf
    jp nz, $c33c

    ld a, l
    add d
    ld sp, hl
    ld b, $e3

jr_02d_6a96:
    inc e
    ld b, a

jr_02d_6a98:
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    inc b
    ld d, h
    jr nc, jr_02d_6a96

    db $10
    inc b
    ld e, d
    inc sp
    add c
    inc b
    and b

jr_02d_6aae:
    jr nc, jr_02d_6a68

    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b
    ccf
    ret nz

    nop
    rst $38
    ld a, a
    add b
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    cp b
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld [bc], a
    db $fd
    db $76
    adc c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    ld a, $c1
    inc b
    and b
    jr nc, jr_02d_6b67

    add e
    ld a, d
    add l
    inc b
    sub $30
    ld b, b
    cp a
    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    jp nz, $e23d

    dec e
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $ff00
    ld e, b
    ld e, b
    sbc e
    add d
    sbc a
    ldh [$e0], a
    sbc a
    ret nz

    and c
    sbc h
    call c, $3e3e
    cp [hl]
    ld [c], a
    add $c6
    db $ed
    add hl, bc
    db $fd
    ld bc, $e8e6
    ld [hl], a
    or c
    ld [hl], e
    or l
    ld [hl], e
    or l
    ld [c], a
    ld h, h
    ld a, [c]
    adc h
    ldh [$91], a
    rlca
    ld h, $4e
    db $ed
    ld c, $ad
    ld c, [hl]
    ld l, l
    rst $28
    sbc [hl]
    pop af
    adc [hl]
    ld [bc], a
    adc h
    ld b, l
    dec sp
    ld a, b
    jp nz, Jump_02d_7979

    ld sp, $0333
    add l
    rla
    jp hl


    cp $02
    rst $38
    add b
    ld h, b
    ld e, a
    add b
    and c
    sbc h
    call c, $febe
    cp [hl]
    ld [c], a
    or d
    adc h
    ld h, b
    ld d, c
    rst $38
    ld bc, $ebe5
    ld [hl], l
    or c
    ld [hl], d
    or [hl]
    ld [hl], d
    or [hl]
    db $e3
    ld h, a
    inc bc
    adc l
    ld b, h
    ld a, [hl-]

jr_02d_6b67:
    ld b, a
    ld h, [hl]
    adc [hl]
    xor l
    ld c, [hl]
    dec l
    adc $ad
    rst $08
    cp [hl]
    or c
    adc $dc
    ldh [$63], a
    ld h, e
    ld a, c
    jp Jump_02d_7979


    ld [hl-], a
    jr nc, jr_02d_6b7f

    add l

jr_02d_6b7f:
    dec d
    jp hl


    db $fc
    ld [bc], a
    ld sp, $8ecd
    adc [hl]
    inc b
    and d
    cpl
    ld c, l
    inc b
    rst $18
    ld c, a
    ld c, l
    inc b
    ccf
    ld e, a
    ld c, l
    inc b
    sbc a
    ld e, a
    ld c, l
    inc b
    rst $38
    ld e, a
    ld c, l
    inc b
    ld e, a
    ld l, a
    ld c, l
    inc b
    cp a
    ld l, a
    ld c, l
    inc b
    rra
    ld a, a
    ld c, l
    inc b
    ld a, a
    ld a, a
    ld c, l
    inc b
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    ld [bc], a
    inc de
    ld bc, $0102
    dec bc
    inc de
    inc de
    inc de
    rst $38
    ld [bc], a
    inc d
    rlca
    inc de
    ld [de], a
    inc b
    ld [bc], a
    ld [hl+], a
    add hl, bc
    db $10
    ld [bc], a
    ld de, $0e0d
    rrca
    inc b
    inc b
    ld [bc], a
    ld b, d
    nop
    ld [bc], a
    ld a, [hl+]
    rrca
    dec b
    ld e, $1f
    inc b
    inc b
    ld [bc], a
    ld h, d
    nop
    ld [bc], a
    ld a, [hl+]
    rrca
    dec b
    inc c
    dec c
    jr c, jr_02d_6c1b

    inc c
    jr nz, jr_02d_6bfb

    rla
    ld d, $17
    ld b, b
    ld b, c
    ld d, $17
    ld [bc], a
    jr nc, jr_02d_6bfd

    inc e
    dec e
    ld a, [hl-]
    dec sp
    inc e
    ld hl, $1918
    jr jr_02d_6c12

    ld b, d
    ld b, e

jr_02d_6bfb:
    jr jr_02d_6c16

jr_02d_6bfd:
    ld [bc], a
    jr nc, @+$10

    jr c, jr_02d_6c3b

    inc a
    dec a
    jr c, jr_02d_6c3f

    jr nc, jr_02d_6c39

    inc [hl]
    dec [hl]
    jr c, jr_02d_6c43

    add hl, de
    jr jr_02d_6c11

    jr nc, jr_02d_6c1f

jr_02d_6c11:
    ld a, [hl-]

jr_02d_6c12:
    dec sp
    ld a, $3f
    ld a, [hl-]

jr_02d_6c16:
    dec sp
    ld [hl-], a
    inc sp
    ld [hl], $3b

jr_02d_6c1b:
    ld a, [hl-]
    scf
    ld [bc], a
    xor [hl]

jr_02d_6c1f:
    rrca
    ld bc, $0b0a
    jr c, jr_02d_6c5e

    ld a, [bc]
    dec bc
    inc d
    dec d
    ld b, $07
    ld b, h
    ld b, l
    ld [bc], a
    adc $0f
    ld bc, $1b1a
    ld a, [hl-]
    dec sp
    ld a, [de]
    ld [hl+], a
    ld [bc], a
    xor b

jr_02d_6c39:
    nop
    ld b, [hl]

jr_02d_6c3b:
    ld b, a
    ld [bc], a
    xor [hl]
    rrca

jr_02d_6c3f:
    ld bc, $0d0c
    inc a

jr_02d_6c43:
    dec a
    nop
    ld [bc], a
    ld bc, $1105
    ld [bc], a
    sub c
    rrca
    nop
    ld a, $3f
    ld [bc], a
    jr nc, jr_02d_6c52

jr_02d_6c52:
    ld [bc], a
    ld h, a
    ld d, $02
    db $f4
    ld c, $02
    ld h, [hl]
    rra
    add hl, bc
    ld [bc], a
    ld [hl+], a

jr_02d_6c5e:
    db $10
    ld [bc], a
    ld h, [hl]
    rra
    add hl, bc
    ld [bc], a
    ld b, d
    db $10
    ld [bc], a
    ld h, [hl]
    rra
    add hl, bc
    ld [bc], a
    ld h, d
    rra
    dec bc
    nop
    ld [$ff16], sp
    rst $38
    add e
    cp $80
    db $fd
    ret z

    ret z

    rst $08
    and b
    adc b
    rst $20
    add b
    rst $28
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    nop
    db $fd
    ret nz

    ret nz

    rst $08
    jr nz, jr_02d_6ca4

    rst $30
    nop
    rst $28
    push bc
    push bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    ld b, e
    rst $08
    ld hl, $f719
    ld bc, $87ef
    add a
    add d
    rst $38
    add d

jr_02d_6ca4:
    add d
    add d
    add d
    rst $38
    rst $38
    sub b
    rst $18
    sub b
    sbc b
    sub b
    sub b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    db $10
    rst $18
    db $10
    jr jr_02d_6cce

    db $10
    rst $38
    ld d, $4e
    dec c
    nop
    dec b
    nop
    dec c
    nop
    inc a
    add sp, -$17
    nop
    ld l, a
    nop

jr_02d_6cce:
    cpl
    ld [$c867], sp
    jp z, Jump_02d_4800

    nop
    ld a, h
    nop
    scf
    rrca
    rrca
    ld b, b
    rla
    ld b, b
    rla
    ld h, b
    ld b, $e3
    inc bc
    ld b, b
    add d
    db $10
    add d
    adc h
    nop
    add c
    ld hl, $831c
    adc a
    nop
    ldh [rSVBK], a
    ld [hl], b
    cp a
    inc c
    cpl
    ld [de], a
    ld c, e
    ld h, $57

jr_02d_6cf9:
    ld a, [$03fb]
    ld a, [c]
    db $c3, $22, $05


    inc b
    dec bc
    adc b
    ld [bc], a
    ld d, $a0
    ld bc, $ffff
    ld [de], a
    ld a, [c]
    inc d
    sub [hl]
    jr jr_02d_6d29

    ldh a, [$fa]
    jr nz, jr_02d_6d33

    ld b, b
    ld l, a
    add a
    xor b
    inc b
    xor e
    ld d, $b6
    inc b
    ld b, $06
    ld [bc], a
    or $e1
    dec d
    jr nz, jr_02d_6cf9

    ld d, $c6
    inc b
    ld [bc], a
    ld a, [c]

jr_02d_6d29:
    ld d, $a2
    ld [bc], a
    ld c, b
    ld c, [hl]
    jr z, jr_02d_6d98

    jr @+$5a

    rrca

jr_02d_6d33:
    ld e, a
    add b
    ld [$e016], a
    ld a, [bc]
    ld d, $b6
    nop
    rlca
    xor b
    nop
    xor a
    nop
    and b
    rra
    and b
    nop
    add b
    ld a, a
    add b
    ld hl, sp-$7b
    add d
    rst $38
    add b
    ld d, $15
    nop
    and b
    sbc b
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    cp $03
    add b
    ld a, l
    nop
    db $fd
    ret nz

    ret nc

    rst $08
    jr nz, jr_02d_6d6a

    rst $20
    ld d, $4d
    nop
    db $fd
    inc bc
    add c
    ld a, a

jr_02d_6d6a:
    ld bc, $c7ff

Call_02d_6d6d:
    rst $00
    rst $08
    ld hl, $e709

jr_02d_6d72:
    ld de, $ffff
    rst $38
    ld bc, $8157
    ld d, a
    ld bc, $e117
    rla
    ld bc, $f907
    rlca
    ld bc, $ffff
    rst $38
    ld d, $c6
    nop
    ldh [$15], a
    nop
    push af
    nop
    dec b
    ld hl, sp+$05
    nop
    ld bc, $01fe
    ld bc, $1657

jr_02d_6d98:
    ld d, b
    ld a, [de]
    nop
    inc e
    ld bc, $033c
    ld [hl], b
    and [hl]
    and c
    ld c, $61
    inc c
    ld h, e
    adc h
    and d
    add h
    add d
    and b
    ld b, l
    and b
    ld d, l
    db $10
    db $e4
    dec d
    and l
    db $10
    and [hl]
    db $10
    inc h
    nop
    inc [hl]
    inc bc
    inc hl
    ld a, h
    adc h
    ld a, e
    add e
    inc a
    call nz, Call_02d_42a1
    pop bc
    ld a, [bc]
    ldh [$2c], a
    sub b
    ld d, e
    ld a, a
    adc a
    ld [hl], h
    ld a, e
    ldh a, [$cf]
    ld [hl], a
    ld l, b
    ld a, a
    ld hl, sp-$51
    inc l
    rlca
    ld h, h
    rra
    sbc b
    rst $38
    ldh [rNR41], a
    ld a, [hl+]
    ld b, b
    ld l, d
    ld d, $e4
    inc c
    ld d, $b0
    jr @+$18

    add $06
    ld d, $c6
    ld [bc], a
    inc b
    ld d, h
    ld [bc], a
    ld d, [hl]
    ld d, $50
    jr jr_02d_6d72

    ld [$ea81], a
    add b
    add sp, -$79
    add sp, -$80
    ldh [$9f], a
    ldh [$80], a
    ld d, $5d
    nop
    nop
    rst $38
    ld d, $fd
    ldh a, [rNR21]
    di
    ld [de], a
    ld d, $5d
    ld b, $e8
    nop
    ld l, h
    ld bc, $092c
    ld h, d
    db $ca, $c9, $16

    ld [hl], b
    ld bc, $0ff7
    rrca
    nop
    rst $30
    nop
    ld [hl], a
    nop
    db $76
    inc bc
    inc bc
    ld [bc], a
    add hl, de
    ld [bc], a
    dec [hl]
    inc b
    ld [hl], e
    and h
    xor d
    inc c
    ld h, d
    inc c
    ld h, d
    ld d, $6c
    db $10
    add b
    dec a
    nop
    cp l
    ld b, b
    sbc h
    ld h, l
    adc l
    jr nz, @-$30

    db $10
    ld h, h
    db $10
    inc h
    inc bc
    inc hl
    nop
    rst $38
    nop
    ld d, $ee
    inc de
    ld d, $f2
    inc d
    ld d, $cf
    rst $38
    jr nz, jr_02d_6e66

    ldh a, [rNR10]
    ld d, $87
    cpl
    inc b
    inc [hl]
    sra h
    db $d3
    scf
    ret z

    ld a, [hl+]
    push de
    dec d
    ld [$d02f], a
    ld d, $86
    inc h
    db $f4

jr_02d_6e66:
    dec bc
    xor b
    ld d, a
    ld d, h
    xor e
    db $ec
    inc de
    ld d, $a0
    jr nz, jr_02d_6ea5

    sra b
    rst $10
    inc d
    db $eb
    ld d, $be

jr_02d_6e78:
    jr z, jr_02d_6e90

jr_02d_6e7a:
    and d
    ld l, $36
    ret


    dec hl
    call nc, $ea15
    ld a, [hl+]
    push de
    ld d, $cc
    inc h
    ld d, $b4
    inc h
    ld d, $9c
    cpl
    dec b
    db $dd
    ld [hl+], a

jr_02d_6e90:
    xor d
    ld d, l
    ld d, l
    xor d
    cp e
    ld b, h
    ld d, $9c
    inc h
    ld d, $f4
    jr z, jr_02d_6ed9

    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a

jr_02d_6ea5:
    cp b
    sub e
    ld l, h
    cp c
    ld b, [hl]
    ld a, h
    add e
    add [hl]
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09
    rst $28
    db $10
    rst $18
    jr nz, jr_02d_6e78

    ld b, b
    rra
    ldh [$7e], a
    add c
    ld d, $50
    jr nc, jr_02d_6e7a

    ld b, a
    sub e
    ld l, h
    pop bc
    ld a, $ac
    ld d, e
    ld a, $c1
    ld l, [hl]
    sub c
    db $f4
    dec bc
    pop af
    ld c, $f7
    ld [$18e7], sp
    rst $28
    db $10
    adc a
    ld [hl], b

jr_02d_6ed9:
    ccf
    ret nz

    nop
    rst $38
    nop
    cp a
    ccf
    ld h, b
    ld a, a
    ccf
    ld h, b
    jr nz, jr_02d_6f46

    ccf
    ld d, $76
    jr nc, jr_02d_6eeb

jr_02d_6eeb:
    rst $38
    ld [bc], a
    rst $38
    ld sp, hl
    inc bc
    ei
    ld sp, hl
    inc bc
    ld bc, $f903
    ld d, $86
    jr nc, @+$18

    ld a, d
    ld [hl-], a
    ld d, $90
    inc [hl]
    rst $38
    rst $38
    inc bc
    ld sp, hl
    rst $38
    db $fd
    ld d, $88
    jr nc, jr_02d_6f1f

    and d
    inc sp
    ld d, $4e
    cpl
    ld [hl+], a
    ld d, $e2
    rst $38
    dec bc
    rrca
    ldh a, [$f0]
    rrca
    nop
    pop bc
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a

jr_02d_6f1f:
    ld h, d
    call c, RST_00
    ldh [$ef], a
    rst $30
    ld [hl], b
    ld [hl], h
    or e
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ld b, b
    or c
    ld b, a
    and [hl]
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld l, $cd
    rrca
    xor $07
    rst $30
    nop
    rst $38
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]

jr_02d_6f46:
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    rrca
    ld d, $4d
    cpl
    inc hl
    ld d, $73
    ld c, a
    ld c, l
    ld d, $d3
    ld c, a
    ld c, l
    ld d, $33
    ld e, a
    ld c, l
    ld d, $93
    ld e, a
    ld c, l
    ld d, $f3
    ld e, a
    ld c, l
    ld d, $53
    ld l, a
    ld c, l
    ld d, $b3
    ld l, a
    ld c, l
    ld d, $13
    ld a, a
    ld c, l
    ld d, $73
    ld a, a
    ld c, l
    ld d, $d3
    ld a, a
    add hl, de
    nop
    ld [bc], a
    jr nz, jr_02d_6f84

    jr nz, jr_02d_6f81

jr_02d_6f81:
    rrca
    nop
    rst $38

jr_02d_6f84:
    jr nz, jr_02d_6f9a

    rlca
    dec b
    ld bc, $2120
    rlca
    jr nz, jr_02d_6f9b

    rrca
    ld bc, $0412
    jr nz, @+$44

    dec b
    db $10
    jr nz, @+$2f

    rrca
    ld [hl+], a

jr_02d_6f9a:
    ld a, [bc]

jr_02d_6f9b:
    dec bc
    ld b, b
    ld b, c
    jr z, jr_02d_6fc8

    ld b, b
    ld b, c
    inc c
    dec c
    jr nz, jr_02d_6ff2

    rrca
    inc bc
    ld a, [de]
    dec de
    ld b, d
    ld b, e
    add hl, hl
    add hl, hl
    ld b, d
    ld b, e
    inc e
    dec e

jr_02d_6fb2:
    jr nz, jr_02d_7000

    rrca
    inc bc
    ld c, $0f
    scf
    jr c, @+$26

    inc h
    scf
    jr c, @+$16

    dec d
    db $10
    ld de, $cd20
    ld bc, $3320
    dec bc

jr_02d_6fc8:
    ld e, $1f
    add hl, sp
    ld a, [hl-]

jr_02d_6fcc:
    rra
    jr nz, jr_02d_6fb2

    nop
    inc de
    inc bc
    jr nz, jr_02d_701b

    inc bc
    jr nz, jr_02d_700b

jr_02d_6fd7:
    ld a, [bc]
    inc l
    add hl, hl
    jr nz, @+$05

    inc de
    inc l
    jr nz, jr_02d_6fcc

    nop
    ld b, $07
    jr nz, jr_02d_6fd7

    inc c

jr_02d_6fe6:
    ld a, [hl+]
    dec hl
    jr nz, jr_02d_6fed

    ld [de], a
    ld l, $2f

jr_02d_6fed:
    jr nz, @-$12

    nop
    ld d, $17

jr_02d_6ff2:
    jr nz, jr_02d_6fe6

    inc c

jr_02d_6ff5:
    inc sp
    jr nz, jr_02d_6ffa

    inc de
    ld a, [hl+]

jr_02d_6ffa:
    ld sp, $3131
    ld sp, $082b

jr_02d_7000:
    add hl, bc
    jr nz, jr_02d_6ff5

    inc c
    dec [hl]
    jr nz, @+$04

    dec d
    jr nz, @+$0a

    db $10

jr_02d_700b:
    jr jr_02d_7026

    jr nz, jr_02d_7041

    dec e
    dec l
    jr nz, jr_02d_705e

    stop
    ld bc, $0201
    dec hl
    add hl, hl
    add hl, hl

jr_02d_701b:
    inc l
    nop
    ld bc, $d220
    inc c
    dec [hl]
    ld [hl], $20
    and d
    db $10

jr_02d_7026:
    db $10
    dec b
    jr nz, jr_02d_702a

jr_02d_702a:
    ld de, $202c
    ld c, h
    nop
    jr nz, @+$16

    add hl, bc
    ld de, $2120
    ld [bc], a
    ld de, $a920
    rra
    dec b
    jr nz, jr_02d_703d

jr_02d_703d:
    ld b, $20
    xor e
    rra

jr_02d_7041:
    ld [bc], a
    nop
    ld [$7f1e], sp
    ld a, a
    adc b
    rst $20
    adc b
    rst $20
    ret nc

    ret nc

    cp $81
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ret nz

    rst $38
    rst $38
    rst $08
    jr nz, jr_02d_7072

    rst $30
    jr c, @+$3a

    ld a, [hl]

jr_02d_705e:
    ld bc, $3f40
    ld b, b
    ccf
    add c
    add c
    rst $38
    ld e, $20
    dec bc
    cp $fe
    add hl, bc
    rst $20
    add hl, bc
    rst $20
    inc bc
    inc bc
    rst $38

jr_02d_7072:
    ld bc, $7f81
    add c
    ld a, a
    add e
    add e
    ld h, a
    db $10
    ld b, h
    inc sp
    adc b
    adc b
    rst $38
    rst $38
    add b
    add b
    add b
    rst $38
    ld e, $4a
    nop
    rst $20
    db $10
    inc b
    di
    ld [$ff08], sp
    rst $38
    nop
    nop
    nop
    rst $38
    ld e, $5a
    nop
    rst $20
    ld de, $f305
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    ld bc, $0101
    rst $38
    ld e, $6a
    rrca
    ld bc, $5a1e
    ld [bc], a
    ld e, $80

jr_02d_70ac:
    ld b, $1e
    jr nz, jr_02d_70b2

    rst $20
    rst $20

jr_02d_70b2:
    db $e3
    db $e3
    pop hl
    pop hl
    pop af
    pop af
    rst $38
    ld e, $7f
    dec b
    jr nz, jr_02d_70ac

    ld e, b
    db $ed
    ld l, l
    dec h
    or [hl]
    cp $1e
    add b
    dec b
    ccf
    ldh [$ef], a
    nop
    rst $18
    ld b, b
    ld a, a
    ld e, $80
    dec b
    db $fc
    rlca
    rst $30
    nop
    ei
    ld [bc], a
    ld e, $af
    dec b
    inc b
    ld [hl], a
    ld a, [de]
    or a
    or [hl]

jr_02d_70df:
    and h
    ld l, l
    ld a, a
    ld e, $90
    inc b
    rst $00
    rst $00
    add a
    add a
    adc a
    adc a
    ld e, $9e
    nop
    jr nz, jr_02d_70df

    ld e, b
    rst $28
    ld l, h
    daa
    or h
    cp $78
    ld c, c
    ld [hl], e
    ld [hl], e
    and h
    db $e4
    rst $08
    and b
    ld e, $02
    nop
    pop bc
    pop bc
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    rst $08
    jr nz, jr_02d_7116

    rst $20
    ld [$90e7], sp
    sub b
    cp $01
    add b

jr_02d_7116:
    ld a, a
    add b
    ld a, a
    nop
    nop
    rst $18
    jr nc, jr_02d_713c

    ld [de], a
    db $10
    inc bc
    inc bc
    ld a, c
    rlca
    ld b, b
    ld a, $40
    ld a, $00
    nop
    rst $08
    ld hl, $321e
    nop
    ld de, $1e11
    jr c, @+$04

    ld bc, $1e01
    ld c, d
    ld [bc], a
    rst $38
    ld e, $4b

jr_02d_713c:
    nop
    ld e, $48
    nop
    ld e, $89
    dec b
    nop
    ld e, $57
    nop
    nop
    rst $38
    ld e, $6b

jr_02d_714b:
    inc bc
    ld e, $5e
    ld de, $681e
    nop
    ld e, $4b
    ld bc, $701e
    jr jr_02d_7177

    ldh a, [$fc]
    jp z, $91ce

    sbc e
    ei
    rst $38
    inc e
    inc e
    adc c
    adc c
    rst $38
    rst $38
    db $e3
    db $e3
    adc a
    adc a
    ld a, e
    ld c, e
    ld a, $3f
    rst $00
    push bc
    sbc l
    sbc a
    ld [hl], a
    ld a, [hl]
    inc hl
    scf

jr_02d_7177:
    or l
    cp l
    rst $38
    rst $38
    inc c
    ld a, l
    jp nc, Jump_02d_4473

    rlca
    cp a
    rst $38
    ret c

    ld l, a
    adc h
    call nz, $ecdc
    rst $38
    rst $38
    jr nc, jr_02d_714b

    ld c, e
    adc $22
    ldh [$fd], a
    rst $38
    dec de
    or $31
    inc hl
    dec sp
    scf
    rst $38
    rst $38
    sbc $d2
    ld a, h
    db $fc
    db $e3
    and e
    cp c
    ld sp, hl
    xor $7e
    db $c4, $ec, $2d
    dec a
    rst $38
    rst $38
    ld d, e
    ld [hl], e
    adc c
    reti


    rst $18
    rst $38
    jr c, jr_02d_71eb

    sub c
    sub c
    rst $38
    rst $38
    rst $00
    rst $00
    pop af
    pop af
    cp a
    rra
    add hl, hl
    ld l, a
    ret nc

    reti


    adc c
    adc a

jr_02d_71c3:
    ld d, [hl]
    ld e, [hl]
    ld h, e
    ld [hl], a

jr_02d_71c7:
    push de
    db $dd
    sbc a
    sbc a
    nop
    ld e, d
    ld b, d
    and l
    rla
    ld c, a
    add hl, sp
    cp d
    ld c, b
    call nc, $a080
    adc a
    rst $08
    sub a
    sbc b
    ld e, $00
    jr nz, jr_02d_71c7

    ld a, [c]
    sbc h
    ld e, l
    ld [de], a
    dec hl
    ld bc, $f105
    di
    jp hl


    add hl, de
    sbc a

jr_02d_71eb:
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [rNR34]
    ld c, d
    nop
    adc a
    rst $38
    or e
    db $fc
    ldh [$d0], a
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    pop af
    rrca
    ld e, $6a
    nop
    pop af
    rst $38
    call $073f
    dec bc
    ld e, $6e
    inc d
    ret nz

    ret nz

    add b
    rst $38
    cp a
    rst $38
    and h
    db $e4
    ld e, $5e
    inc d
    inc bc
    inc bc
    ld bc, $fdff
    rst $38
    ld b, l
    ld b, a
    xor d
    ld [$efaa], a
    xor d
    db $eb
    xor d
    cp $aa
    ld [$d595], a
    ld e, $4a
    jr nz, jr_02d_71c3

    sub a
    sub l
    sub a
    sub l
    rst $38
    sub l
    rst $38
    sub l
    sub a
    ld l, c
    ld l, e
    ld e, $5a
    jr nz, jr_02d_725b

    ld d, b
    inc b
    inc bc
    inc bc
    inc c
    db $ec
    ld de, $27d1
    rst $20
    ld e, $50
    inc b
    ldh [$e0], a
    jr jr_02d_7269

    call nz, Call_02d_72c5
    ld [hl], e
    add hl, hl
    xor e
    ld c, d
    call z, $d858
    ld d, b
    rst $10
    ld e, [hl]

jr_02d_725b:
    sbc $54
    jp c, $de5e

    ld b, c
    rst $18
    ld c, d
    ld [$9929], a
    dec c
    adc l
    dec b

jr_02d_7269:
    push af
    dec a
    cp l
    ld d, l
    db $ed
    ld a, l
    db $fd
    ld b, c
    db $fd
    ld b, b
    ret nz

    ld a, a
    rst $38
    nop
    ld e, $4d
    ld [de], a
    ld e, $5b
    ld de, $1e1e
    nop
    ld e, $5c
    db $10
    ld e, $58
    inc d
    ld a, a
    ld a, a
    ld e, $44
    inc h
    add b
    ret nz

    add b
    rst $18
    add b
    call c, $fdfc
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $07
    ld [bc], a
    rst $38

jr_02d_729b:
    ld [bc], a
    rlca
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld a, a
    rst $30
    ld hl, sp-$6f
    cp $bf
    rst $38
    jp $8ffc


    ldh a, [rNR34]
    jr nz, jr_02d_72ce

    sbc a
    ldh [rIE], a
    rrca
    jp hl


    rra
    db $fd
    rst $38
    jp $f13f


    rrca
    ld e, $30
    jr nz, @-$05

    rlca
    add b
    rst $08
    add b
    cp a
    add a
    rst $38

Call_02d_72c5:
    adc a
    rst $28
    ldh a, [$f0]
    jr @+$44

    ld b, d
    and l
    nop

jr_02d_72ce:
    ld e, d
    ld bc, $01f3
    db $fd
    pop hl
    rst $38
    pop af
    rst $30
    rrca
    rrca
    ld e, $2a
    ld [hl-], a
    and h
    db $e4
    and h
    db $e4
    and h
    rst $38
    and h
    rst $20
    and h
    db $e4
    sbc e
    db $db
    ld e, $4a
    jr nz, jr_02d_7331

    ld b, a
    ld b, l
    ld a, a
    ld b, l
    rst $00
    ld b, l
    rst $38
    ld b, l
    ld b, a
    cp c
    cp e
    ld e, $5a
    jr nz, jr_02d_729b

    rst $38
    cp a
    rst $38
    add b
    rst $38
    and b
    ldh [$df], a
    rst $18
    rst $18
    rst $18
    cp a
    cp a
    add b
    add b
    ld a, [bc]
    rst $38
    ld a, [$02ff]
    rst $38
    dec bc
    rrca
    or $f7
    or $f6
    ld a, [$03fa]
    inc bc
    ld e, $60
    ld [hl-], a
    ld e, $ea
    ld [hl+], a
    ld e, $60
    jr nc, jr_02d_7342

    ld [hl], b
    ld [hl-], a
    inc bc
    ld e, $fb
    jr nz, jr_02d_73a9

    ld a, [bc]
    cp $fb
    rst $38

jr_02d_732f:
    ld e, $00

jr_02d_7331:
    jr nz, jr_02d_734b

    ld e, d
    dec h
    cp l
    inc hl
    xor a
    add hl, de
    ld e, c
    ld l, l
    ld l, l
    sub b
    or [hl]
    ld h, b
    ld l, d
    sub d
    push de

jr_02d_7342:
    ret z

    ld a, [$7f06]
    ld b, c
    ei
    inc bc
    rra
    ld d, d

jr_02d_734b:
    ld e, d
    add h
    sub h
    sub b
    cp a
    add b
    sbc a
    ret nz

    rst $18
    jr nz, @+$2e

    ld de, $0813
    ld c, c
    ld b, h
    and h
    rlca
    ld d, a
    ld a, b
    ld a, d
    ld [de], a
    push de
    ld [$643a], sp
    ld a, l
    and h
    xor l
    ld e, b
    jp c, Jump_02d_6542

    add b
    sbc d
    adc h
    jp z, $5756

    ld l, e
    ld l, d
    ld a, a
    rst $38

Call_02d_7376:
    ld h, b
    ld l, d
    jr nc, jr_02d_732f

    dec a
    db $fd
    rrca
    rst $28
    ld h, [hl]
    and d
    call nc, $aed5
    xor a
    ld hl, sp-$07
    nop
    cp h
    inc b
    ld a, l
    ld e, b
    ld e, e
    ldh [$ef], a
    ld e, $50
    ld b, $1e
    ldh [rNR43], a
    rst $20
    db $10
    ld a, [hl]
    rst $38
    add c
    cp l
    cp l
    rst $38
    add c
    cp l
    ld e, $18
    ld b, b
    ld h, [hl]
    ld h, [hl]
    ld e, $50
    nop
    ret z

    ret z

    ccf

jr_02d_73a9:
    cp a
    and b
    ldh [$7f], a
    rst $38
    add b
    cp a
    nop
    ld e, $4f
    rlca
    cp $fe
    ld e, $6a
    nop
    ld e, $46
    inc hl
    ret nz

    ld a, a
    ld a, a
    ld de, $1211
    inc e
    rra
    pop de
    ld e, $58
    ld de, $9e1e
    nop
    rst $38
    ld bc, $7e01
    ld e, $c5

jr_02d_73d1:
    inc h
    ld e, $55
    ld b, c
    nop
    nop
    ld a, [hl]
    add c
    ld e, $5e
    db $10
    rlca
    rlca
    ld bc, $fdff
    inc bc
    cp $fe
    adc b
    adc b
    ld c, b
    jr c, jr_02d_73d1

    sbc e

jr_02d_73ea:
    ld de, $13d1
    db $dd
    inc de
    db $dd
    pop af
    rst $38
    inc de
    db $d3
    inc de
    add hl, de
    inc de
    add hl, de
    pop af
    ei
    adc b
    adc e
    ret z

    sbc e
    ret z

    sbc e
    rst $08
    sbc a
    adc b
    adc e
    add sp, -$68
    ret z

    cp b
    rst $08
    cp a
    nop
    nop
    nop
    rst $20
    jr jr_02d_73ea

    dec h
    cp l
    inc hl
    cpl
    add hl, de
    reti


    ld e, $ac
    ld sp, $9060
    rst $10
    ret z

    ei
    ld e, $b6
    dec [hl]
    sub l
    ld e, $c0
    scf
    ret


    inc b
    db $e4
    rlca
    rst $30
    ld a, b
    ld a, b
    db $10
    rst $10
    ld [$643b], sp
    ld a, l
    and h
    xor h
    ld e, b
    db $db
    ld b, b
    ld b, a
    add b
    sbc a
    ld e, $20
    nop
    rst $18
    rst $18
    rst $38
    rst $38
    db $fd
    db $fd
    rst $28
    rst $38
    rst $30
    rst $30
    ld h, e
    ld l, e
    or a
    or a
    ld e, $e8
    ld b, b
    rst $38
    rst $38
    or $f7
    ld l, a
    ld l, a
    add $d6
    ld d, d
    ld c, e
    ld e, $50
    nop
    add hl, hl
    add hl, hl
    sbc $de
    ld d, h
    ld [hl], h
    ld e, c
    db $dd
    ld d, e
    db $db
    ld b, h
    call nc, $501e
    ld [bc], a
    rst $30
    rst $30
    ld d, h
    ld e, h
    inc [hl]
    dec [hl]
    sub h
    or l
    ld b, h
    ld d, l
    ld c, c
    jp hl


    ld d, c
    rst $30
    ld d, c
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $10
    ld e, b
    db $db
    ld e, a
    rst $18
    ld b, b
    rst $08
    inc h
    dec l
    inc d
    dec e
    db $d4, $dd, $14
    push af
    inc d
    push de
    inc [hl]
    or l
    db $f4
    push af
    inc b
    push hl
    ld b, b
    ret nz

    ld e, l
    db $dd
    ld e, e
    db $db
    pop bc
    pop bc
    ld c, h
    call z, Call_02d_5f5f
    ld e, [hl]
    ld e, a
    sbc $df
    inc b
    dec b
    ld [hl], h
    ld [hl], l
    or h
    or l
    rlca
    rlca
    ld h, h
    ld h, h
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38

jr_02d_74b4:
    nop
    ld e, d
    ld b, a
    and a
    jr @+$1d

    ld b, e
    ld e, h
    adc h
    or e
    pop bc
    sbc $b8
    cp e
    sub a
    rst $10
    rst $38
    rst $38
    inc bc
    inc a
    ld a, h
    add e
    add c
    ld a, [hl]
    ld b, $f9
    ret nz

    ccf
    rra
    ldh [$80], a
    sbc a
    cp $fe
    ld sp, hl
    dec b
    rrca
    ldh a, [$e0]
    rra
    inc c
    di
    ld [hl], b
    adc a
    add [hl]
    ld a, c
    inc bc
    ei
    nop
    ld e, d
    ld a, [c]
    push af
    inc c
    adc $62
    sbc e
    ld sp, $e3cd
    dec de
    rrca
    rst $08
    di
    di
    ld b, c
    ld c, c
    jr nc, jr_02d_74b4

    ld c, $4e
    inc hl
    add e
    inc h
    add b
    jr jr_02d_7542

    ld b, d
    and h
    nop
    ld e, d
    ld a, d
    ld a, d
    ld hl, $01a5
    sub l
    set 1, a
    ld a, a
    ld a, a
    dec l
    xor l
    dec [hl]
    dec [hl]
    rrca
    rst $08
    db $fd
    db $fd
    add hl, bc
    ld c, c
    ld bc, $0b65
    cpl
    cp $fe
    or h
    or l
    sbc h
    sbc h
    or b
    or e
    db $db
    db $db
    ld e, [hl]
    ld e, a
    ld a, b
    ld a, d
    db $c4, $c1, $24
    ld bc, $2a1e
    ld [hl-], a
    nop
    ld a, c
    inc b
    ret nc

    ld a, [bc]
    and d
    ccf
    rst $30
    inc hl
    sub l
    ld [hl], h
    dec a
    cp l
    ld d, $68
    add hl, hl
    nop

jr_02d_7542:
    xor [hl]
    jr nz, jr_02d_759c

    ld e, d
    ld a, e
    adc l
    ld d, l
    sbc d
    cp e
    cp b
    inc de
    ld d, h
    ld b, c
    inc c
    ld b, h
    ld e, $84
    jr c, jr_02d_7573

    ld b, h
    db $10
    ld [bc], a
    cp $1e
    ld a, [$0a22]
    cp $1e
    ld [hl], d

jr_02d_7560:
    jr nc, jr_02d_7560

    ld e, $4b
    nop
    db $fc
    ld e, $42
    ld [de], a
    ld e, $0a
    ld h, l
    ld a, a
    ld e, $f2

jr_02d_756f:
    jr nz, jr_02d_756f

    ld e, $19

jr_02d_7573:
    ld h, e
    ld de, $1711
    reti


    ld e, $82
    ld b, b
    inc de
    inc de
    inc de
    ld sp, hl
    inc de
    ld sp, hl
    rra
    rst $38
    ret z

    push de
    push de
    db $ec
    pop bc
    jp c, $e4eb

    pop de
    jp nc, $3e3e

    ret


    ret


    ld b, $76
    ld h, e
    rla
    inc sp
    rst $00
    daa
    sub a
    adc h
    ld l, h
    scf

jr_02d_759c:
    or a
    sbc c
    sbc c
    rst $08
    rst $08
    jr nc, @-$48

    adc b
    adc b
    ld e, $92
    ld b, b
    ret z

    sbc e
    adc b
    adc b
    add sp, -$61
    ret z

    cp a
    ld hl, sp+$1e
    ld a, a
    dec e
    ld e, $8f
    ld l, a
    ld c, l
    ld e, $ed
    rst $38
    nop
    ld e, $7f
    ld [bc], a
    ld e, $59
    inc bc
    ld b, b
    sub l
    dec d
    ld l, d
    ld b, b
    add b
    nop

jr_02d_75c9:
    ld d, d
    ld b, b
    add l
    nop
    ld c, d
    ld b, d
    sub l
    nop
    ld c, d
    nop
    ld d, l
    ld d, l
    xor d
    nop
    nop
    inc h
    add c
    inc h
    add c
    ld e, $da
    ld d, e
    ld d, l
    ld d, h
    xor d
    ld [bc], a
    ld bc, $4a00
    ld [bc], a
    and c
    nop
    ld d, d
    ld b, d
    xor c
    nop
    ld d, d
    ld b, b
    sbc d
    ld [bc], a
    ld b, l
    ld e, b
    add d
    inc b
    ld b, c
    ld b, h
    ld e, $29
    ld [hl], b
    add l
    nop
    ld e, d
    ld e, $a0

Call_02d_75ff:
    ld sp, $1e42
    ld h, $76
    ld [bc], a
    ld e, c
    ld b, b
    and d
    ld a, [de]
    ld b, c
    jr nz, @-$7c

    ld [hl+], a
    ld e, $29
    ld [hl], b
    and c
    ld e, $4e
    db $76
    daa
    adc a
    ld a, [de]
    ld e, l
    ld l, l
    or d
    inc sp
    ld [hl], h
    ld e, $50
    ld [hl], h
    db $e4
    pop af
    ret c

    ld a, [hl-]
    ld [hl], $cd
    db $cc, $2e, $26
    db $76
    ld h, b
    and l
    inc [hl]
    ld [hl], c
    cpl
    cp a
    jr jr_02d_75c9

    nop
    ld e, $2b
    ld sp, $7664
    ld b, $95
    inc c
    xor [hl]
    db $f4
    db $fd
    jr jr_02d_7658

    ld e, $9a
    ld [hl], d
    and h
    db $fc
    and h
    db $e4
    and h
    db $fc
    ld e, $46
    inc [hl]
    rst $38
    rst $38
    ld d, l
    ld d, a
    ld d, l
    ld d, a
    ld d, l
    ld a, a
    ld d, l
    rst $38
    ld d, l
    ld d, a
    xor c

jr_02d_7658:
    xor e
    ld e, $64
    db $10
    ld e, h
    ld e, l
    ld e, b
    ld e, e
    ld e, b
    ld a, e
    ld e, h
    ld a, l
    ld e, a
    ld a, a
    add b
    add b
    add b
    cp a
    ld a, a
    ld a, a
    ld [hl], h
    ld a, h
    inc [hl]
    cp h
    inc [hl]
    cp h
    ld [hl], h
    ld a, h
    db $f4
    db $fc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [$fdfc]
    ld e, $a3
    ld l, h
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0103
    dec c
    ld [bc], a
    inc bc
    db $f4
    ld sp, hl
    inc de
    inc h
    dec h
    inc h
    dec h
    dec b
    dec b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec b
    inc bc
    inc l
    ld bc, $0310
    inc de
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld [$4408], sp
    ld b, l
    ld b, [hl]
    ld b, a
    ld [$2e08], sp
    cpl
    ld l, $2f
    inc bc
    ld [hl-], a
    inc c
    ld h, $27
    ld h, $27
    dec d
    dec d
    ld c, b
    ld c, [hl]
    ld c, [hl]
    ld c, c
    dec d
    dec d
    jr c, jr_02d_76f8

    jr c, jr_02d_76fa

    inc bc
    ld [hl-], a
    inc c
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld [hl], b
    ld [hl], b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    db $10
    ld de, $1403
    ld a, [bc]
    ld [hl], b
    inc bc
    and d
    dec bc
    inc b
    dec b
    inc bc
    sub h
    dec c
    ld [hl], c
    ld [hl], d
    inc bc
    add $03
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld [hl], b
    rla
    ld [$9403], sp
    dec c
    ld [hl], h
    ld [hl], l
    inc bc
    and $03
    db $76
    ld [hl], b
    ld [hl], b

jr_02d_76f8:
    ld [hl], b
    inc d

jr_02d_76fa:
    dec d
    inc bc
    inc d
    ld a, [bc]
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], h
    jr nz, jr_02d_7725

    ld [hl], l
    ld [hl], l
    ld a, [hl-]
    dec sp
    jr nz, jr_02d_772b

    inc bc
    xor $00
    ld [hl], b
    ld [hl], b
    inc bc
    inc d
    ld a, [bc]
    ld a, $3f
    ld [hl], b
    ld [hl], h
    jr nc, jr_02d_7749

    ld [hl], l
    ld [hl], l
    inc a
    dec a
    jr nc, jr_02d_774f

    inc bc
    ld c, $1f
    ld bc, $0203
    db $10

jr_02d_7725:
    ld [hl+], a
    inc hl
    inc bc
    and $00
    ld [hl+], a

jr_02d_772b:
    inc hl
    inc bc
    xor $00
    nop
    ld bc, $1403
    ld e, $32
    inc sp
    inc bc
    and $00
    ld [hl-], a
    inc sp
    inc bc
    xor $00
    db $10
    inc b
    inc bc
    db $f4
    ld sp, hl
    ld de, $0103
    inc c
    ld [de], a
    rla

jr_02d_7749:
    inc bc
    db $f4
    ld sp, hl
    inc bc
    inc l
    ld [bc], a

jr_02d_774f:
    dec b
    jr z, jr_02d_777b

    jr z, jr_02d_777d

    inc bc
    and c
    inc de
    inc d
    inc bc
    db $f4
    ld hl, sp+$09
    ld a, [bc]
    dec bc
    ld [$0d0c], sp
    dec bc
    ld [$2b2a], sp
    ld a, [hl+]
    dec hl
    ld [$0d0c], sp
    rrca
    ld a, [bc]
    dec bc
    ld [$1303], sp
    add hl, bc
    add hl, de
    ld a, [de]
    dec de
    dec d
    inc e
    dec e
    dec de
    dec d
    inc l
    dec l

jr_02d_777b:
    inc l
    dec l

jr_02d_777d:
    dec d
    inc e
    dec e
    rra
    ld a, [de]
    dec de
    dec d
    inc bc
    inc de
    add hl, bc
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, HeaderLogo
    dec c
    ld [bc], a
    inc b
    db $f4
    ld sp, hl
    inc de
    inc h
    dec h
    inc h
    dec h
    dec b
    dec b
    dec b
    dec b
    ld d, b
    ld d, c
    inc b
    ld h, $00
    dec b
    dec b
    db $10
    inc b
    inc de
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld [$0808], sp
    ld [$5352], sp
    inc b
    ld b, [hl]
    nop
    ld l, $2f
    inc b
    ld [hl-], a
    inc c
    ld h, $27
    ld h, $27
    dec d
    dec d
    dec d
    dec d
    ld d, h
    ld d, l
    inc b
    ld h, [hl]
    nop
    jr c, jr_02d_7801

    inc b
    ld [hl-], a
    ld a, [bc]
    ld [de], a
    inc de
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, l
    ld a, [hl]
    inc b
    add [hl]
    nop
    ld h, b
    ld h, c
    inc b
    ld [hl-], a
    ld a, [bc]
    dec b
    ld b, $04
    add [hl]
    nop
    inc b
    and d
    ld [$3204], sp
    ld a, [bc]
    ld [$7007], sp
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc b
    push bc
    dec b
    ld [hl], e
    inc b
    or b
    inc c
    dec d
    ld d, $70
    ld [hl], b
    ld [hl], h
    ld [hl], l
    inc b
    push hl
    dec b
    db $76

jr_02d_7801:
    inc b
    or b
    inc c
    inc b
    add [hl]
    nop
    ld [hl], h
    ld [hl], l
    ld [hl], a
    ld a, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld [hl], a
    ld a, b
    inc b
    xor $0f
    dec b
    ld a, c
    ld a, d
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld a, c
    ld a, d
    inc b
    xor $0e
    ld bc, $0403
    ld [c], a
    ld [bc], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    inc b
    db $ec
    nop
    ld c, d
    ld c, e
    inc b
    ld [hl-], a
    ld a, [bc]
    ld b, $13
    inc b
    ld [c], a
    ld [bc], a
    ld a, c
    ld a, d
    ld a, c
    ld a, d
    inc b
    db $ec
    nop
    ld c, h
    ld c, l
    inc b
    ld [hl-], a
    ld a, [bc]
    rlca
    ld de, HeaderLogo
    inc c
    ld [de], a
    inc b
    inc de
    add hl, bc
    ld d, $04
    inc l
    ld bc, $2928
    inc b
    and d
    ld d, $05
    inc b
    inc de
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld [$0808], sp
    ld a, [hl+]
    dec hl
    inc b
    ld b, [hl]
    nop
    ld a, [hl+]
    dec hl
    inc c
    dec c
    rrca
    ld a, [bc]
    dec bc
    ld c, $04
    db $f4
    ld hl, sp+$19
    ld a, [de]
    dec de
    dec d
    dec d
    dec d
    inc l
    dec l
    inc b
    ld h, [hl]
    nop
    inc l
    dec l
    inc e
    dec e
    rra
    ld a, [de]
    dec de
    ld e, $04
    and b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02d_7979:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02d_7b63:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
