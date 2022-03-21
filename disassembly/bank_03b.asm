; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    dec sp
    ld c, l
    ld b, b
    rst $30
    ld b, b
    ld a, a
    ld b, c
    ld d, $42
    ret z

    ld b, d
    ld hl, $c143
    ld b, e
    ld d, l
    ld b, h
    inc bc
    ld b, l
    add $45
    ld a, [de]
    ld b, [hl]
    ld a, [c]
    ld b, [hl]
    adc [hl]
    ld b, a
    ld a, [hl-]
    ld c, b
    call c, Call_03b_6c48
    ld c, c
    ld [$6049], a
    ld c, d
    rla
    ld c, e
    rst $10
    ld c, e
    jr c, @+$4e

    jp z, $804c

    ld c, l
    db $10
    ld c, [hl]
    jp nc, Jump_03b_594e

    ld c, a
    dec b
    ld d, b
    or l
    ld d, b
    add hl, bc
    ld d, c
    ld e, a
    ld d, c
    jp c, Jump_03b_5751

    ld d, d
    ret nz

    ld d, d
    ld a, e
    ld d, e
    ldh [rHDMA3], a
    and d
    ld d, h
    ld de, $a055
    ld d, l
    nop
    ld [bc], a
    nop
    ld [$0009], sp
    nop
    ld c, $ff
    nop
    inc d
    rlca
    jr jr_03b_4074

    nop
    jr nz, jr_03b_406c

    nop
    inc d
    ld [$3130], sp
    inc [hl]
    dec [hl]
    jr c, jr_03b_40a0

    nop
    ld b, d
    nop
    jr nc, jr_03b_409d

jr_03b_406c:
    jr nc, jr_03b_409f

    jr c, jr_03b_40a9

    nop
    ld b, h
    nop
    nop

jr_03b_4074:
    inc d
    ld [$3332], sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    ld h, d
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    ld h, h
    nop
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld b, b
    ld [bc], a
    nop
    ld b, h
    nop
    nop
    ld c, h
    nop
    nop
    adc d
    nop
    nop
    ld d, h
    ld a, [bc]
    nop
    ld h, b
    ld [bc], a

jr_03b_409d:
    nop
    ld h, h

jr_03b_409f:
    nop

jr_03b_40a0:
    nop
    ld l, h
    nop
    nop
    xor d
    nop
    nop
    ld [hl], h
    inc c

jr_03b_40a9:
    nop
    ld c, h
    ld [bc], a
    nop
    add $02
    nop
    ld c, d
    nop
    nop
    sub h
    inc c
    nop
    ld l, h
    ld [bc], a
    nop
    and $02
    nop
    ld l, d
    nop
    nop
    or h
    ld c, $00
    ld b, b
    inc b
    nop
    ret nz

    ld [bc], a
    nop
    db $d4, $0e, $00
    ld h, b
    inc b
    nop
    ldh [rSC], a
    nop
    db $f4
    rrca
    ld bc, $4000
    jr jr_03b_40d8

jr_03b_40d8:
    inc d
    rra
    ld bc, $6000
    jr jr_03b_40df

jr_03b_40df:
    ld [hl], h
    ld c, $00
    ld b, [hl]
    rra
    dec bc
    nop
    inc l
    inc d
    nop
    ld l, h
    rra
    dec b
    nop
    add b
    inc e
    nop
    inc d
    rra
    inc bc
    nop
    ld l, d
    rra
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [$0209], sp
    nop
    inc c
    inc h
    dec h
    rst $38
    ld [bc], a
    inc d
    rlca
    jr jr_03b_4120

    ld [bc], a
    jr nz, jr_03b_4116

    ld h, $27
    ld [bc], a
    inc d
    ld [$3130], sp
    inc [hl]
    dec [hl]
    jr nc, jr_03b_4146

    ld [bc], a

jr_03b_4116:
    ld b, h
    inc b
    ld [bc], a
    ld b, d
    nop
    ld [bc], a
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp

jr_03b_4120:
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld [bc], a
    ld h, h
    inc b
    ld [bc], a
    ld h, d
    nop
    ld [bc], a
    ld [hl-], a
    inc c
    ld [bc], a
    add b
    inc c
    ld b, $07
    ld [bc], a
    ld d, h
    ld a, [bc]
    ld [bc], a
    and b
    inc c
    ld d, $17
    ld [bc], a
    inc [hl]
    inc c
    ld [bc], a
    ld b, d
    inc c
    ld [bc], a
    ld d, h
    inc c
    ld [bc], a
    ld h, d
    inc c

jr_03b_4146:
    ld [bc], a
    ld [hl], h
    ld c, $02
    ld b, d
    ld [$d202], sp
    inc c
    ld [bc], a
    ld l, d
    inc b
    ld [bc], a
    ld h, h
    ld b, $02
    ld [hl], h
    rrca
    inc bc
    ld [bc], a
    ld b, d
    nop
    ld [bc], a
    ld b, d
    nop
    nop
    ld bc, $9402
    rrca
    inc bc
    ld [bc], a
    ld h, d
    nop
    ld [bc], a
    ld h, d
    nop
    db $10
    ld de, $7402
    rrca
    dec bc
    ld [bc], a
    ld d, d
    inc c
    ld [bc], a
    and b
    inc c
    ld [bc], a
    ld [hl], d
    rrca
    dec c
    ld [bc], a
    sub d
    rra
    dec de
    nop
    ld [bc], a
    ld b, $08
    add hl, bc
    ld b, $00
    ld c, $ff
    ld b, $14
    rlca
    jr jr_03b_41a6

    ld b, $20
    ld c, $06
    inc d
    ld [$3130], sp
    ld b, $40
    ld c, $06
    inc d
    ld [$3332], sp
    ld b, $60
    ld c, $06
    inc [hl]
    rrca
    ccf
    inc [hl]
    dec [hl]

jr_03b_41a6:
    jr c, @+$3b

    jr c, @+$3b

    inc [hl]
    dec [hl]
    ld b, $4e
    rrca
    dec b
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld b, $6e
    rrca
    inc bc
    ld b, $c6
    ld [bc], a
    ld b, $c8
    ld b, $06
    ld d, h
    inc c
    ld b, $e6
    ld [bc], a
    ld b, $e8
    ld b, $06
    inc [hl]
    ld a, [bc]
    ld b, $c6
    inc b
    ld b, $c6
    ld b, $06
    ld d, h
    ld a, [bc]
    ld b, $e6
    inc b
    ld b, $e6
    ld b, $06
    inc [hl]
    ld a, [bc]
    ld b, $c8
    ld b, $06
    add $02
    ld b, $52
    inc c
    ld b, $e8
    ld b, $06
    and $02
    ld b, $72
    ld a, [bc]
    ld [bc], a
    inc bc
    ld b, $c0
    db $10
    inc b
    dec b
    ld b, $40
    nop
    nop
    ld bc, $c006
    ld [de], a
    ld b, $14
    ld [$1312], sp
    ld b, $e0
    db $10
    inc d
    dec d
    ld b, $60
    nop
    db $10
    ld de, $e006
    ld [de], a
    ld b, $14
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_4241

    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$2d2c], sp
    jr nc, @+$33

    jr c, jr_03b_426d

    nop
    ld b, h
    nop
    nop
    ld b, d
    nop
    jr nc, jr_03b_426d

    nop
    ld c, [hl]
    nop
    nop
    inc d

jr_03b_4241:
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    ld h, h
    nop
    nop
    ld h, d
    nop
    ld [hl-], a
    inc sp
    nop
    ld l, [hl]
    nop
    nop
    inc d
    ld [$0b0a], sp
    nop
    ld c, b
    inc b
    nop
    ld c, h
    ld [bc], a
    nop
    ld c, b
    nop
    nop
    inc d
    ld [$1b1a], sp
    nop
    ld l, b
    inc b
    nop
    ld l, h
    ld [bc], a
    nop
    ld l, b
    nop

jr_03b_426d:
    nop
    inc d
    ld [$4e00], sp
    ld [bc], a
    nop
    ld b, d
    inc b
    nop
    ld c, h
    ld [bc], a
    nop
    inc d
    ld [$6e00], sp
    ld [bc], a
    nop
    ld h, d
    inc b
    nop
    ld l, h
    ld [bc], a
    nop
    or h
    inc c
    nop
    ld b, [hl]
    ld [$9000], sp
    inc c
    nop
    db $e4
    inc b
    nop
    xor b
    rrca
    dec b
    inc b
    dec b
    nop
    ld c, b
    ld [$8e00], sp
    ld c, $14
    dec d
    nop
    ld l, b
    ld [$ae00], sp
    ld c, $00
    ld b, b
    nop
    nop
    adc h
    inc b
    nop
    ld [bc], a
    inc d
    nop
    ld d, h
    inc c
    nop
    xor h
    inc b
    nop
    ld [hl+], a
    inc d
    nop
    ld [hl], h
    rra
    ld bc, $c200
    jr jr_03b_42bf

jr_03b_42bf:
    sub h
    rra
    ld bc, $e200
    jr jr_03b_42c6

jr_03b_42c6:
    inc d
    ld [$0200], sp
    ld [bc], a
    ld [$0209], sp
    nop
    inc c
    inc h
    dec h
    rst $38
    ld [bc], a
    inc d
    rlca
    jr jr_03b_42f1

    ld [bc], a
    jr nz, jr_03b_42e7

    ld h, $27
    ld [bc], a
    inc d
    ld [$3130], sp
    ld [bc], a
    ld b, b
    inc c
    ld [bc], a
    ld [de], a

jr_03b_42e7:
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [bc], a
    ld h, b
    inc c
    ld [bc], a
    ld [hl-], a
    rrca
    dec c

jr_03b_42f1:
    ld b, $07
    ld [bc], a
    ld d, h
    rrca
    dec bc
    ld d, $17
    ld [bc], a
    inc [hl]
    rrca
    dec bc
    jr nc, @+$33

    ld [bc], a
    ld d, h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    ld [bc], a
    or h
    rrca
    ld c, e
    nop
    ld bc, $5402
    rrca
    dec bc
    db $10
    ld de, $3402
    rrca
    add hl, sp
    inc b
    dec b
    ld [bc], a
    ld b, d
    rrca
    dec bc
    inc d
    dec d
    ld [bc], a
    ld h, d
    rrca
    dec bc
    nop
    ld [bc], a
    ld [bc], a
    inc l
    dec l
    ld [$0209], sp
    ld [bc], a
    inc c
    rst $38
    ld [bc], a
    inc d
    rlca
    ld l, $2f
    jr jr_03b_434c

    ld [bc], a
    ld [hl+], a
    inc c
    ld [bc], a
    inc d
    ld [$2d2c], sp
    jr nc, jr_03b_436e

    ld [bc], a
    ld b, d
    inc b
    inc [hl]
    dec [hl]
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    inc d
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [bc], a
    ld h, d

jr_03b_434c:
    inc b
    ld [hl], $37
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [bc], a
    inc d
    ld [$0b0a], sp
    ld [bc], a
    ld b, h
    ld b, $38
    add hl, sp
    ld [bc], a
    ld c, h
    ld [bc], a
    ld [bc], a
    inc d
    ld [$1b1a], sp
    ld [bc], a
    ld h, h
    ld b, $3a
    dec sp
    ld [bc], a
    ld l, h
    ld [bc], a
    ld [bc], a
    inc d

jr_03b_436e:
    ld [$8402], sp
    ld b, $02
    adc h
    inc b
    ld [bc], a
    ld d, d
    ld a, [bc]
    ld [bc], a
    and h
    ld b, $02
    xor h
    inc b
    ld [bc], a
    or d
    ld c, $02
    add $02
    ld [bc], a
    jp z, $070f

    ld [bc], a
    and $02
    ld [bc], a
    ld [$030f], a
    inc b
    dec b
    ld [bc], a
    add [hl]
    ld a, [bc]
    ld [bc], a
    ld d, b
    inc c
    inc d
    dec d
    ld [bc], a
    and [hl]
    ld a, [bc]
    ld [bc], a
    ld [hl], b
    inc c
    ld [bc], a
    ld b, b
    inc b
    ld [bc], a
    ld c, d
    ld d, $02
    ld d, d
    rrca
    inc bc
    ld [bc], a
    ld l, d
    ld d, $02
    ld [hl], d
    rra
    inc bc
    ld [bc], a
    ld b, d
    ld b, $00
    ld bc, $5402
    rrca
    dec b
    ld [bc], a
    ld h, d
    ld [bc], a
    db $10
    ld de, $1402
    ld [$0200], sp
    ld [bc], a
    ld [$0209], sp
    nop
    ld c, $ff
    ld [bc], a
    inc d
    rlca
    jr jr_03b_43e8

    ld [bc], a
    jr nz, jr_03b_43e0

    ld [bc], a
    inc d
    ld [$3130], sp
    jr nc, jr_03b_440a

    inc [hl]
    dec [hl]
    ld [bc], a
    ld b, d
    ld a, [bc]
    ld [bc], a
    inc d

jr_03b_43e0:
    ld [$3332], sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [bc], a

jr_03b_43e8:
    ld h, d
    ld a, [bc]
    ld [bc], a
    inc [hl]
    inc c
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    add d
    ld b, $02
    ld d, h
    inc c
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [bc], a
    and d
    ld b, $02
    ld [hl], h
    rrca
    inc bc
    ld [bc], a
    ld b, h
    inc b
    ld [bc], a
    sub d
    rrca
    dec b
    ld [bc], a
    ld h, h
    inc b

jr_03b_440a:
    ld [bc], a
    ld [hl], d
    ld c, $02
    ld b, h
    ld [bc], a
    ld [bc], a
    ld [$0210], sp
    add b
    ld [bc], a
    ld [bc], a
    ld d, h
    rrca
    inc bc
    ld [bc], a
    jr z, jr_03b_442d

    ld [bc], a
    and b
    ld [bc], a
    ld [bc], a
    inc [hl]
    ld a, [bc]
    ld [bc], a
    add [hl]
    ld a, [bc]
    ld [bc], a
    sub b
    ld c, $02
    and [hl]
    ld a, [bc]
    ld [bc], a

jr_03b_442d:
    or b
    rrca
    inc bc
    ld [bc], a
    ld b, [hl]
    rra
    add hl, bc
    ld [bc], a
    ld l, h
    inc d
    ld [bc], a
    ld l, d
    rra
    inc bc
    inc b
    dec b
    ld [bc], a
    add b
    ld d, $02
    add b
    ld [bc], a
    nop
    ld bc, $1402
    ld [$1514], sp
    ld [bc], a
    and b
    ld d, $02
    and b
    ld [bc], a
    db $10
    ld de, $1402
    ld [$0200], sp
    nop
    jr nc, jr_03b_448b

    inc [hl]
    dec [hl]
    jr nc, jr_03b_448f

    nop
    inc b
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    inc c
    nop
    jr nc, jr_03b_4499

    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    inc h
    ld [bc], a
    ld [hl], $37
    nop
    inc l
    nop
    ld [hl-], a
    inc sp
    nop
    inc d
    ld [$0800], sp
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    nop
    inc d
    ld a, [bc]

jr_03b_448b:
    nop
    jr nz, jr_03b_4496

    nop

jr_03b_448f:
    inc h
    ld [bc], a
    nop
    inc [hl]
    inc c
    nop
    inc b

jr_03b_4496:
    ld b, $00
    ld c, [hl]

jr_03b_4499:
    rrca
    inc bc
    nop
    inc h
    ld b, $00
    ld l, [hl]
    rrca
    dec b
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc b
    inc [hl]
    dec [hl]
    nop
    sub h
    ld c, $00
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    inc b
    ld [hl], $37
    nop
    inc [hl]
    ld c, $00
    inc b
    inc d
    nop
    nop
    ld [bc], a
    nop
    ld d, h
    ld c, $00
    inc h
    inc d
    nop
    jr nz, jr_03b_44c9

    nop
    inc [hl]

jr_03b_44c9:
    ld a, [bc]
    nop
    ld [$3816], sp
    add hl, sp
    nop
    ld c, d
    stop
    ld [de], a
    ld c, $00
    ld a, [hl+]
    inc d
    ld a, [hl-]
    dec sp
    nop
    ld l, d
    stop
    ld [hl-], a
    ld e, $00
    ld c, h
    stop
    ld c, d
    inc d
    nop
    ld d, b
    rra
    ld bc, $6c00
    stop
    ld l, d
    inc d
    nop
    ld [hl], b
    inc e
    ld [bc], a
    inc bc
    nop
    ret nz

    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ldh [rNR34], a
    nop
    inc d
    ld [$0200], sp
    nop
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_03b_4540

    jr nc, jr_03b_4542

    ld b, $07
    nop
    nop
    ld [bc], a
    rst $38
    nop
    inc d
    rlca
    jr jr_03b_4535

    nop
    jr nz, jr_03b_451f

jr_03b_451f:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    jr nz, jr_03b_452c

    nop
    inc d

jr_03b_452c:
    ld [$0800], sp
    nop
    nop
    ld b, b
    inc b
    jr c, jr_03b_456e

jr_03b_4535:
    inc [hl]
    dec [hl]
    nop
    ld c, [hl]
    nop
    nop
    inc d
    ld [$2800], sp
    nop

jr_03b_4540:
    nop
    ld h, b

jr_03b_4542:
    inc b
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    ld l, [hl]
    nop
    nop
    inc [hl]
    rrca
    dec b
    nop
    ld c, d
    ld [bc], a
    jr nc, jr_03b_4584

    nop
    ld d, h
    rrca
    dec b
    nop
    ld l, d
    ld [bc], a
    ld [hl-], a
    inc sp
    nop
    inc [hl]
    inc c
    nop
    sub b
    nop
    inc [hl]
    dec [hl]
    nop
    ld c, h
    nop
    jr c, @+$3b

    nop
    ld [$0000], sp
    ld d, h

jr_03b_456e:
    inc c
    nop
    or b
    nop
    ld [hl], $37
    nop
    ld l, h
    nop
    ld a, [hl-]
    dec sp
    nop
    jr z, jr_03b_457c

jr_03b_457c:
    nop
    inc [hl]
    ld a, [bc]
    nop
    ret z

    nop
    nop
    inc b

jr_03b_4584:
    stop
    ret z

    ld [bc], a
    nop
    ret nc

    ld c, $00
    add sp, $00
    nop
    inc h
    stop
    add sp, $02
    nop
    ldh a, [$0e]
    nop
    adc h
    inc b
    nop
    db $c2, $02, $00

    ret nc

    rrca
    ld bc, $2c00
    inc d
    nop
    ld l, $12
    nop
    or d
    rrca
    inc bc
    nop
    ld c, b
    rra
    add hl, bc
    nop
    ld l, h
    inc d
    nop
    ld l, h
    rra
    ld bc, $0302
    nop
    ret nz

    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ldh [rNR34], a
    nop
    inc d
    ld [$0200], sp
    inc b
    jr nc, @+$33

    inc b
    nop
    inc c
    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    ld [hl-], a
    inc sp
    inc b
    jr nz, jr_03b_45e5

    ld h, $27
    inc b
    inc d
    ld [$0004], sp
    rrca
    ccf
    ld b, $07
    inc b

jr_03b_45e5:
    inc d
    rrca
    dec bc
    ld d, $17
    inc b
    inc [hl]
    rrca
    dec bc
    jr nc, jr_03b_4621

    inc b
    inc d
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc b
    or h
    rrca
    ld c, e
    nop
    ld bc, $1404
    rrca
    dec bc
    db $10
    ld de, $3404
    rrca
    add hl, sp
    ld [bc], a
    inc bc
    inc b
    ret nz

    inc e
    jr z, jr_03b_4636

    inc b
    inc d
    ld [$1312], sp
    inc b
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    jr nc, jr_03b_4652

jr_03b_4621:
    nop
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]

jr_03b_4636:
    jr nc, jr_03b_4669

    nop
    ld b, d
    nop
    nop
    ld a, [bc]
    rrca
    dec b
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    ld h, d
    nop
    nop
    ld a, [hl+]
    rrca
    inc bc
    ld a, [bc]
    dec bc
    nop
    ld b, h
    ld [bc], a
    nop
    ld b, [hl]
    ld [bc], a

jr_03b_4652:
    inc [hl]
    dec [hl]
    nop
    ld b, d
    nop
    nop
    inc d
    ld [$1b1a], sp
    nop
    ld h, h
    ld [bc], a
    nop
    ld h, [hl]
    ld [bc], a
    ld [hl], $37
    nop
    ld h, d
    nop
    nop
    inc d

jr_03b_4669:
    ld [$0200], sp
    ld [bc], a
    nop
    adc [hl]
    ld [bc], a
    inc [hl]
    dec [hl]
    jr c, jr_03b_46ad

    nop
    adc [hl]
    nop
    nop
    inc d
    ld [$2200], sp
    ld [bc], a
    nop
    xor [hl]
    ld [bc], a
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    xor [hl]
    nop
    nop
    inc d
    ld [$c600], sp
    inc b
    nop
    adc b
    inc b
    nop
    adc $00
    nop
    inc d
    ld [$e600], sp
    inc b
    nop
    xor b
    inc b
    nop
    xor $00
    nop
    inc d
    ld [$0504], sp
    nop
    adc $00
    nop
    ld [bc], a
    nop
    jr c, @+$3b

    nop

jr_03b_46ad:
    adc d
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    inc d
    dec d
    nop
    xor $00
    nop
    ld [hl+], a
    nop
    ld a, [hl-]
    dec sp
    nop
    xor d
    ld [bc], a
    nop
    ld [hl-], a
    ld c, $00
    adc $00
    jr c, jr_03b_4700

    nop
    adc b
    stop
    adc d
    ld [bc], a
    nop
    ld d, h
    inc c
    nop
    xor $00
    ld a, [hl-]
    dec sp
    nop
    xor b
    stop
    xor d
    ld [bc], a
    nop
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    inc b
    ld a, [bc]
    dec bc
    jr nc, jr_03b_472a

    inc b
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    inc b

jr_03b_4700:
    inc d
    rlca
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    inc b
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    inc b
    inc d
    ld [$0204], sp
    ld [$3938], sp
    inc b
    ld c, d
    nop
    inc b
    ld [de], a
    ld a, [bc]
    inc b
    ld [hl+], a
    ld [$3b3a], sp
    inc b
    ld l, d
    nop
    inc b
    ld [hl-], a
    rrca
    dec b
    inc b
    ld c, h
    ld [bc], a
    jr nc, @+$33

jr_03b_472a:
    ld b, $07
    inc b
    ld d, h
    rrca
    inc bc
    inc b
    ld l, h
    ld [bc], a
    ld [hl-], a
    inc sp
    ld d, $17
    inc b
    inc [hl]
    rrca
    ld bc, $8a04
    inc b
    inc b
    ld c, h
    nop
    inc b
    ld d, h
    rrca
    ld bc, $aa04
    inc b
    inc b
    ld l, h
    nop
    inc b
    inc [hl]
    ld c, $04
    ret z

    ld [$d204], sp
    rrca
    ld bc, $e804
    ld [$f204], sp
    ld c, $04
    ret z

    ld [$3938], sp
    nop
    ld bc, $5404
    inc c
    inc b
    add sp, $08
    ld a, [hl-]
    dec sp
    db $10
    ld de, $f404
    rrca
    add hl, bc
    inc b
    ld d, b
    rrca
    inc bc
    inc b
    add sp, $06
    inc b
    ld [hl], b
    inc c
    ld [bc], a
    inc bc
    inc b
    ret nz

    inc e
    jr z, jr_03b_47aa

    inc b
    inc d
    ld [$1312], sp
    inc b
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    jr nc, jr_03b_47c6

    nop
    ld [bc], a
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    ld [bc], a
    ld [bc], a
    ld b, $07
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    ld [bc], a

jr_03b_47aa:
    ld [hl], $37
    nop
    ld [hl+], a
    ld [bc], a
    ld d, $17
    nop
    inc d
    ld [$0000], sp
    ld [$4a00], sp
    inc b
    nop
    inc d
    rrca
    dec b
    nop
    ld l, d
    inc b
    nop
    inc d
    ld [$0b0a], sp

jr_03b_47c6:
    nop
    ld b, $08
    nop
    ld b, $02
    nop
    inc d
    ld [$1b1a], sp
    nop
    ld h, $08
    nop
    ld h, $02
    nop
    inc d
    ld [$4a00], sp
    inc b
    nop
    ld b, h
    ld b, $30
    ld sp, $1400
    ld [$6a00], sp
    inc b
    nop
    ld h, h
    ld b, $32
    inc sp
    nop
    inc d
    ld [$4200], sp
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc d
    ld [$6200], sp
    ld a, [bc]
    nop
    ld [hl+], a
    ld [bc], a
    nop
    inc d
    ld [$0504], sp
    nop
    db $ca, $06, $00

    db $c4, $04, $00
    inc d
    ld [$1514], sp
    nop
    ld [$0006], a
    db $e4
    inc b
    nop
    inc [hl]
    rrca
    ld bc, $8600
    ld [$1400], sp
    rrca
    ld bc, $a600
    ld [$1400], sp
    ld [$2928], sp
    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    nop
    ld a, [bc]
    dec bc
    jr nc, jr_03b_4872

    nop
    ld [bc], a
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    ld [$3400], sp
    dec [hl]
    ld b, $07
    rst $38
    nop
    inc d
    rlca
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    ld [bc], a
    ld [hl], $37
    nop
    jr z, jr_03b_485d

jr_03b_485d:
    ld [hl], $37
    ld d, $17
    nop
    inc d
    ld [$0800], sp
    ld [bc], a
    nop
    inc b
    ld a, [bc]
    nop
    inc d
    ld [$2800], sp
    ld [bc], a
    nop
    inc h

jr_03b_4872:
    ld a, [bc]
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld b, b
    ld c, $00
    ld d, h
    ld a, [bc]
    nop
    ld h, b
    ld c, $00
    ld [hl], h
    inc c
    nop
    ld [bc], a
    ld a, [bc]
    jr nc, jr_03b_48b8

    nop
    sub h
    inc c
    nop
    ld [hl+], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    nop
    or h
    rrca
    ld bc, $3938
    nop
    ld [bc], a
    ld b, $00
    call nc, $010f
    ld a, [hl-]
    dec sp
    nop
    ld [hl+], a
    ld b, $00
    ld [hl], h
    inc c
    nop
    ld [$3810], sp
    add hl, sp
    nop
    ld [$0016], sp
    sub h
    inc c
    nop
    jr z, jr_03b_48c2

    ld a, [hl-]
    dec sp
    nop
    jr z, jr_03b_48cd

    nop

jr_03b_48b8:
    inc [hl]
    ld a, [bc]
    nop
    ld b, h
    inc d
    nop
    ld b, h
    ld [de], a
    nop
    ld d, b

jr_03b_48c2:
    ld e, $00
    ld h, h
    inc d
    nop
    ld h, h
    ld [de], a
    nop
    ld [hl], b
    inc e
    ld [bc], a

jr_03b_48cd:
    inc bc
    nop
    ret nz

    ld e, $00
    inc d
    ld [$1312], sp
    nop
    ldh [rNR34], a
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    jr nc, jr_03b_4914

    nop
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    nop
    ld b, d
    nop
    jr nc, jr_03b_492e

    jr c, @+$3b

    nop
    inc c
    rrca
    inc bc
    ld [hl], $37
    nop
    ld h, d
    nop
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    nop
    inc l
    rrca
    inc bc
    nop
    ld [bc], a
    nop
    inc [hl]

jr_03b_4914:
    dec [hl]
    jr c, jr_03b_4950

    nop
    adc b
    nop
    nop
    ld c, $0f
    dec b
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    xor b
    nop
    nop
    ld l, [hl]
    rrca
    rlca
    nop
    add [hl]
    ld [$9400], sp

jr_03b_492e:
    rrca
    ld bc, $a600
    ld [$7400], sp
    ld c, $00
    db $c4, $02, $00
    add [hl]
    nop
    nop
    db $10
    rrca
    dec b
    nop
    ld h, d
    ld [bc], a
    nop
    xor $0f
    rlca
    nop
    db $c2, $06, $00

    ld [de], a
    rrca
    rlca
    nop
    ld a, [hl+]

jr_03b_4950:
    inc d
    nop
    ld [hl], h
    inc c
    nop
    ld b, [hl]
    nop
    nop
    ld b, d
    inc b
    nop
    db $10
    rrca
    ld bc, $6600
    nop
    nop
    ld h, d
    inc b
    nop
    jr nc, jr_03b_4986

    add hl, bc
    nop
    inc c
    rrca
    ld hl, $0200
    nop
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld b, $07
    nop
    ld [bc], a
    nop
    ld [$ff09], sp
    nop
    inc d
    rlca

jr_03b_4986:
    ld l, $2f
    jr jr_03b_49a3

    jr jr_03b_49a5

    ld a, [de]
    dec de
    ld [hl], $37
    ld [hl], $37
    ld d, $17
    nop
    ld [hl+], a
    nop
    jr @+$1b

    nop
    inc d
    ld [$2d2c], sp
    nop
    ld [$0000], sp
    ld b, d

jr_03b_49a3:
    ld a, [bc]
    nop

jr_03b_49a5:
    inc d
    ld a, [bc]
    nop
    jr z, jr_03b_49aa

jr_03b_49aa:
    nop
    ld h, d
    ld a, [bc]
    nop
    inc [hl]
    rrca
    ccf
    jr nc, jr_03b_49e4

    nop
    jp nz, Jump_000_3004

    ld sp, $3130
    nop
    ld d, h
    ld c, $32
    inc sp
    nop
    ld [c], a
    inc b
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    nop
    inc [hl]
    rrca
    ld b, c
    nop
    add $08
    nop
    ld d, h
    rrca
    ld bc, $e600
    ld [$3400], sp
    rrca
    dec sp
    nop
    db $cc, $02, $00
    db $ca, $06, $00

    db $d2, $0c, $00

    db $ec
    ld [bc], a

jr_03b_49e4:
    nop
    ld [$0006], a
    ld a, [c]
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    inc l
    dec l
    jr nc, @+$33

    ld [bc], a
    ld [bc], a
    ld [$3534], sp
    inc h
    dec h
    rst $38
    ld [bc], a
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [hl+], a
    ld [$3736], sp
    ld h, $27
    ld [bc], a
    inc d
    ld [$0002], sp
    ld a, [bc]
    inc [hl]
    dec [hl]
    jr c, jr_03b_4a4a

    ld [bc], a
    ld [de], a
    rrca
    add hl, bc
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [hl-], a
    inc c
    jr c, jr_03b_4a57

    ld [bc], a
    ld b, [hl]
    ld [$3534], sp
    ld b, $07
    ld [bc], a
    inc d
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld h, [hl]
    ld [$3736], sp
    ld d, $17
    ld [bc], a
    ld [hl], h
    inc c
    ld [bc], a
    jp nz, $0200

    adc d
    inc b
    ld [bc], a
    add d
    nop
    ld [bc], a
    sub h
    inc c
    ld [bc], a
    ld [c], a
    nop
    ld [bc], a
    xor d
    inc b
    ld [bc], a
    and d
    nop
    ld [bc], a

jr_03b_4a4a:
    or h
    rrca
    dec a
    ld [bc], a
    add h
    ld a, [bc]
    nop
    ld bc, $9402
    rrca
    dec bc
    db $10

jr_03b_4a57:
    ld de, $3402
    rrca
    dec sp
    ld [bc], a
    ld [bc], a
    rrca
    dec hl
    nop
    ld [bc], a
    ld b, $2c
    dec l
    inc [hl]
    dec [hl]
    jr nc, jr_03b_4a9a

    ld b, $04
    ld a, [bc]
    rst $38
    ld b, $14
    rlca
    ld l, $2f
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld b, $24
    ld a, [bc]
    ld b, $14
    ld [$2d2c], sp
    jr c, jr_03b_4ab9

    ld b, $02
    ld b, $34
    dec [hl]
    ld b, $02
    nop
    ld b, $14
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld b, $22
    ld b, $36
    scf
    ld b, $22
    nop
    ld b, $34
    ld a, [bc]
    inc [hl]
    dec [hl]

jr_03b_4a9a:
    jr c, jr_03b_4ad5

    ld b, $48
    ld [$1206], sp
    ld c, $3a
    dec sp
    ld b, $68
    ld [$3206], sp
    rrca
    ld bc, $4406
    ld [$5206], sp
    rrca
    ld bc, $6406
    ld [$3206], sp
    ld c, $06

jr_03b_4ab9:
    ld [bc], a
    db $10
    ld b, $08
    rrca
    rlca
    ld a, [hl-]
    dec sp
    ld b, $22
    db $10
    ld b, $28
    rrca
    add hl, bc
    jr nc, @+$33

    ld b, $42
    ld b, $06
    ld d, b
    rrca
    ld bc, $3332
    ld b, $62

jr_03b_4ad5:
    ld b, $06
    ldh a, [rIF]
    dec b
    ld b, $c2
    ld [bc], a
    ld b, $86
    ld [de], a
    ld b, $14
    rra
    ld bc, $e206
    ld [bc], a
    ld b, $a6
    ld [de], a
    ld b, $14
    ld [$2928], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $02
    nop
    nop
    ld bc, $c206
    db $10
    ld [bc], a
    inc bc
    ld b, $14
    ld [$2b2a], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $22
    nop
    db $10
    ld de, $e206
    db $10
    ld [de], a
    inc de
    ld b, $14
    ld [$0200], sp
    ld [bc], a
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, @+$33

    jr nc, jr_03b_4b57

    ld b, $07
    ld [bc], a
    ld [bc], a
    nop
    ld [$ff09], sp
    ld [bc], a
    inc d
    rlca
    ld l, $2f
    jr @+$1b

    jr jr_03b_4b50

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    ld [bc], a
    ld [hl+], a
    nop
    jr jr_03b_4b5d

    ld [bc], a
    inc d
    ld [$2d2c], sp
    ld [bc], a
    ld [$0200], sp
    ld [$3800], sp

jr_03b_4b50:
    add hl, sp
    ld [bc], a
    ld c, d
    ld [bc], a
    jr nc, jr_03b_4b87

    ld [bc], a

jr_03b_4b57:
    inc d
    ld a, [bc]
    ld [bc], a
    jr z, jr_03b_4b5c

jr_03b_4b5c:
    ld [bc], a

jr_03b_4b5d:
    jr z, jr_03b_4b5f

jr_03b_4b5f:
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld l, d
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [bc], a
    inc [hl]
    inc c
    inc [hl]
    dec [hl]
    ld [bc], a
    add h
    inc b
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    ld d, d
    ld c, $36
    scf
    ld [bc], a
    and h
    inc b
    ld [bc], a
    ld [hl], b
    nop
    ld [bc], a
    ld [hl], d
    rrca
    ld bc, $8202
    nop
    jr c, jr_03b_4bbe

    ld [bc], a
    adc h

jr_03b_4b87:
    rrca
    rlca
    ld [bc], a
    and d
    nop
    ld a, [hl-]
    dec sp
    ld [bc], a
    xor h
    rrca
    rlca
    ld [bc], a
    add h
    inc b
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    sub h
    rrca
    rlca
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [bc], a
    or h
    rrca
    inc bc
    ld [bc], a
    add $02
    ld [bc], a
    ld d, b
    rrca
    ld bc, $e402
    ld [bc], a
    ld [bc], a
    and $02
    ld [bc], a
    ld [hl], b
    rrca
    dec c
    ld [bc], a
    add h
    nop
    ld [bc], a
    sub h
    rrca
    add hl, bc
    ld [bc], a
    and h
    nop

jr_03b_4bbe:
    ld [bc], a
    inc [hl]
    rrca
    inc bc
    ld [bc], a
    ld b, d
    ld [bc], a
    inc [hl]
    dec [hl]
    nop
    ld bc, $5402
    rrca
    inc bc
    ld [bc], a
    ld h, d
    ld [bc], a
    ld [hl], $37
    db $10
    ld de, $1402
    ld [$0200], sp
    ld [$2d2c], sp
    jr nc, @+$33

    ld [$0a02], sp
    ld b, $07
    rst $38
    ld [$0714], sp
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [$0a22], sp
    ld d, $17
    ld [$0814], sp
    ld [$0e00], sp
    jr nc, jr_03b_4c29

    ld [$0f14], sp
    dec bc
    ld [hl-], a
    inc sp
    ld [$0f34], sp
    ld c, l
    ld [$0f94], sp
    ld c, l
    ld [$0ff4], sp
    ld c, l
    ld [$1f54], sp
    add hl, de
    jr z, jr_03b_4c39

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [$0002], sp
    nop
    ld bc, $c208
    db $10
    ld [bc], a
    inc bc
    ld [$0814], sp
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de

jr_03b_4c29:
    inc d
    dec d
    ld [$0022], sp
    db $10
    ld de, $e208
    db $10
    ld [de], a
    inc de
    ld [$0814], sp
    nop

jr_03b_4c39:
    ld [bc], a
    ld [bc], a
    inc l
    dec l
    jr nc, @+$33

    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, $07
    rst $38
    ld [bc], a
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld d, $17
    ld [bc], a
    inc d
    ld [$2d2c], sp
    jr c, jr_03b_4c91

    inc [hl]
    dec [hl]
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    inc d
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld [hl], $37
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld [bc], a
    inc [hl]
    inc c
    ld [bc], a
    ld b, d
    nop
    inc [hl]
    dec [hl]
    jr c, jr_03b_4caa

    ld [bc], a
    ld c, h
    rrca
    dec b
    ld [bc], a
    ld h, d
    nop
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld l, h
    rrca
    dec b
    jr nc, jr_03b_4cb3

    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    adc d
    inc b
    ld [bc], a
    ld d, h
    inc c
    ld [hl-], a
    inc sp
    ld [bc], a
    and d
    ld [bc], a
    ld [bc], a

jr_03b_4c91:
    xor d
    inc b
    ld [bc], a
    inc [hl]
    ld a, [bc]
    ld [bc], a
    ld b, h
    nop
    ld [bc], a
    ret z

    ld [bc], a
    ld [bc], a
    ld b, h
    inc b
    ld [bc], a
    inc d
    ld a, [bc]
    ld [bc], a
    ld h, h
    nop
    ld [bc], a
    add sp, $02
    ld [bc], a
    ld h, h

jr_03b_4caa:
    inc b
    ld [bc], a
    ld [hl], h
    rrca
    ld bc, $4802
    rrca
    add hl, bc

jr_03b_4cb3:
    ld [bc], a
    ld h, d
    inc c
    ld [bc], a
    inc [hl]
    rrca
    dec sp
    ld [bc], a
    ld b, h
    inc c
    nop
    ld bc, $1402
    ld e, $02
    ld [hl+], a
    ld [$1110], sp
    ld [bc], a
    inc d
    ld [$0200], sp
    nop
    jr nc, @+$33

    inc [hl]
    dec [hl]
    nop
    ld [bc], a
    nop
    jr nc, jr_03b_4d07

    nop
    ld [$2404], sp
    dec h
    rst $38
    nop
    inc d
    rlca
    ld [hl-], a
    inc sp
    ld [hl], $37
    nop
    ld [hl+], a
    nop
    ld [hl-], a
    inc sp
    nop
    jr z, jr_03b_4cef

    ld h, $27
    nop
    inc d

jr_03b_4cef:
    ld [$0800], sp
    nop
    nop
    ld b, $00
    nop
    inc b
    inc b
    jr c, @+$3b

    nop
    ld [de], a
    inc c
    nop
    jr nz, jr_03b_4d01

jr_03b_4d01:
    nop
    jr nz, @+$04

    nop
    jr z, jr_03b_4d07

jr_03b_4d07:
    ld a, [hl-]
    dec sp
    nop
    ld [hl-], a
    ld c, $00
    ld b, d
    ld [bc], a
    nop
    ld [$0002], sp
    ld d, b
    rrca
    ld bc, $6200
    ld [bc], a
    nop
    jr z, jr_03b_4d1e

    nop
    ld [hl], b

jr_03b_4d1e:
    ld c, $00
    add [hl]
    ld [$cc00], sp
    nop
    nop
    ld [de], a
    ld c, $00
    xor b
    ld b, $00
    db $ec
    nop
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $38
    add hl, sp
    nop
    ld [$0012], sp
    ld [de], a
    ld a, [bc]
    nop
    ld [hl+], a
    ld b, $3a
    dec sp
    nop
    jr z, jr_03b_4d56

    nop
    ld a, [c]
    inc c
    nop
    nop
    ld [bc], a
    nop
    ld a, [bc]
    inc d
    nop
    db $10
    ld e, $00
    jr nz, jr_03b_4d55

    nop
    ld a, [hl+]

jr_03b_4d55:
    inc d

jr_03b_4d56:
    nop
    jr nc, @+$20

    nop
    ld b, h
    ld [de], a
    nop
    add [hl]
    inc d
    nop
    db $10
    rra
    inc bc
    nop
    db $ec
    ld [bc], a
    nop
    db $ec
    nop
    nop
    jr nc, jr_03b_4d78

    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    jr z, jr_03b_4d9c

    nop
    inc d
    ld [$1312], sp

jr_03b_4d78:
    nop
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    jr nc, @+$33

    jr nc, jr_03b_4dbf

    ld b, $07
    nop
    nop
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    jr jr_03b_4db4

    nop

jr_03b_4d9c:
    jr nz, jr_03b_4d9e

jr_03b_4d9e:
    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    jr nz, jr_03b_4da9

jr_03b_4da9:
    ld h, $27
    nop
    inc d
    ld [$3130], sp
    jr c, jr_03b_4deb

    inc [hl]
    dec [hl]

jr_03b_4db4:
    nop
    ld [$0000], sp
    ld [$3800], sp
    add hl, sp
    jr c, jr_03b_4df7

    nop

jr_03b_4dbf:
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [hl], $37
    nop
    jr z, jr_03b_4dca

jr_03b_4dca:
    nop
    jr z, jr_03b_4dcd

jr_03b_4dcd:
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    nop
    ld [hl-], a
    inc c
    nop
    add b
    ld a, [bc]
    nop
    ld d, b
    ld c, $00
    and b
    ld a, [bc]
    nop
    ld [hl], b
    rrca
    dec c
    jr nc, jr_03b_4e14

    nop
    sub d
    rrca
    dec bc
    ld [hl-], a
    inc sp
    nop
    or d

jr_03b_4deb:
    rrca
    ld c, l
    nop
    ld [de], a
    rra
    add hl, hl
    inc [hl]
    dec [hl]
    nop
    sub b
    rrca
    dec bc

jr_03b_4df7:
    ld [hl], $37
    nop
    ld [hl], b
    inc c
    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    jr z, jr_03b_4e2c

    nop
    inc d
    ld [$1312], sp
    nop
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l

jr_03b_4e14:
    dec l
    jr nc, jr_03b_4e48

    nop
    ld [bc], a
    nop
    inc [hl]
    dec [hl]
    nop
    ld b, $00
    nop
    inc c
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp

jr_03b_4e2c:
    nop
    ld [hl+], a
    nop
    ld [hl], $37
    nop
    ld h, $00
    nop
    inc l
    nop
    ld h, $27
    nop
    inc d
    ld [$0000], sp
    ld b, $00
    ld c, b
    inc b
    nop
    ld [de], a
    rrca
    dec b
    nop
    ld l, b

jr_03b_4e48:
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    ld a, [bc]
    dec bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld b, $00
    ld [de], a
    ld a, [bc]
    ld a, [de]
    dec de
    nop
    ld [hl+], a
    ld [bc], a
    nop
    inc h
    ld b, $00
    ld [hl-], a
    ld a, [bc]
    nop
    inc b
    ld [bc], a
    jr c, jr_03b_4ea0

    nop
    ld [bc], a
    ld b, $00
    ld [de], a
    ld a, [bc]
    nop
    inc h
    ld [bc], a
    ld a, [hl-]
    dec sp
    nop
    ld [hl+], a
    ld b, $00
    or d
    inc c
    jr c, jr_03b_4eb3

    nop
    add $00
    nop
    inc b
    inc d
    nop
    ret nc

    ld c, $3a
    dec sp
    nop
    and $00
    nop
    inc h
    inc d
    nop
    ldh a, [$0c]
    inc b
    dec b
    nop
    ld [bc], a
    nop
    nop
    inc b
    ld [de], a
    nop
    inc c
    rra
    ld bc, $1514
    nop
    ld [hl+], a
    nop
    nop

jr_03b_4ea0:
    inc h
    ld [de], a
    nop
    inc l
    rra
    ld bc, $0000
    inc b
    jr c, jr_03b_4ee4

    nop
    db $c4, $04, $00
    ld [de], a
    rrca
    inc bc
    ld a, [hl-]

jr_03b_4eb3:
    dec sp
    nop
    db $e4
    inc b
    nop
    ld [hl-], a
    ld a, [bc]
    jr z, jr_03b_4ee5

    ld [bc], a
    inc bc
    nop
    jp nz, Jump_000_281a

    add hl, hl
    nop
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_03b_4f10

    jr nc, jr_03b_4f12

    ld b, $07
    nop

jr_03b_4ee4:
    ld [bc], a

jr_03b_4ee5:
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_4f09

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    ld [hl+], a
    nop
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    nop
    ld [$0000], sp
    ld b, d

jr_03b_4f09:
    ld [$1200], sp
    inc c
    nop
    jr z, jr_03b_4f10

jr_03b_4f10:
    nop
    ld h, d

jr_03b_4f12:
    ld [$3200], sp
    ld a, [bc]
    nop
    ld b, $02
    nop
    ld b, [hl]
    rrca
    rlca
    nop
    ld h, $02
    nop
    ld h, [hl]
    rrca
    rlca
    nop
    ld b, d
    inc c
    nop
    ld d, b
    inc c
    nop
    ld h, d
    inc c
    nop
    or b
    rrca
    dec a
    inc b
    dec b
    nop
    ld b, d
    rrca
    dec bc
    inc d
    dec d
    nop
    ld h, d
    rrca
    dec bc
    nop
    ld b, b
    rrca
    dec l
    jr z, jr_03b_4f6c

    ld [bc], a
    inc bc
    nop
    jp nz, Jump_000_281a

    add hl, hl
    nop
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    ld a, [bc]
    dec bc
    inc [hl]
    dec [hl]
    jr nc, jr_03b_4f93

    nop
    inc b
    ld [$2524], sp
    rst $38
    nop
    inc d
    rlca
    ld a, [de]

jr_03b_4f6c:
    dec de
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    inc h
    ld [$2726], sp
    nop
    inc d
    ld [$3534], sp
    jr c, jr_03b_4fb6

    jr c, jr_03b_4fb8

    nop
    inc b
    ld [bc], a
    nop
    ld b, d
    nop
    jr c, jr_03b_4fc0

    nop
    ld [de], a
    ld a, [bc]
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    nop
    inc h
    ld [bc], a

jr_03b_4f93:
    nop
    ld h, d
    nop
    ld a, [hl-]
    dec sp
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld c, d
    ld [bc], a
    nop
    inc b
    ld [bc], a
    nop
    ld b, b
    nop
    nop
    db $10
    inc c
    nop
    ld l, d
    ld [bc], a
    nop
    inc h
    ld [bc], a
    nop
    ld h, b
    nop
    nop
    jr nc, jr_03b_4fbf

    nop
    ld c, b
    inc b

jr_03b_4fb6:
    nop
    add [hl]

jr_03b_4fb8:
    ld b, $00
    sub d
    inc c
    nop
    and b
    inc c

jr_03b_4fbf:
    nop

jr_03b_4fc0:
    or d
    ld c, $34
    dec [hl]
    nop
    ld [bc], a
    ld b, $34
    dec [hl]
    nop
    jp nc, $360e

    scf
    nop
    ld [hl+], a
    ld b, $36
    scf
    nop
    ld [hl], d
    inc c
    nop
    inc b
    jr jr_03b_4fda

jr_03b_4fda:
    ld c, $0e
    nop
    ld [hl+], a
    ld a, [de]
    nop
    ld l, $0e
    nop
    add [hl]
    inc b
    nop
    ld [bc], a
    ld b, $00
    db $d2, $0e, $00

    ld [hl+], a
    ld a, [de]
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    jr z, @+$2b

    nop
    inc d
    ld [$1312], sp
    nop
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    jr nc, jr_03b_503d

    nop
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$0000], sp
    nop
    jr c, jr_03b_505f

    nop
    ld [bc], a
    ld b, $34
    dec [hl]
    nop
    ld [de], a
    ld c, $3a
    dec sp
    nop
    ld [hl+], a
    ld b, $36
    scf
    nop
    ld [hl-], a
    ld c, $00
    ld b, d
    nop
    inc [hl]
    dec [hl]

jr_03b_503d:
    nop
    ld c, [hl]
    nop
    nop
    ld b, h
    nop
    nop
    ld [de], a
    rrca
    ld bc, $3b3a
    ld [hl], $37
    nop
    ld l, [hl]
    nop
    nop
    ld h, h
    nop
    nop
    ld [hl-], a
    inc c
    nop
    adc h
    nop
    nop
    adc b
    nop
    nop
    ld b, d
    inc b
    nop
    ld [de], a

jr_03b_505f:
    inc c
    nop
    xor h
    nop
    nop
    xor b
    nop
    nop
    ld h, d
    inc b
    nop
    or d
    rrca
    ld bc, $4c00
    ld [bc], a
    nop
    ld b, h
    nop
    nop
    ld d, b
    ld c, $00
    xor h
    ld [bc], a
    nop
    xor d
    inc b
    nop
    ld [hl], b
    rrca
    ld bc, $c600
    inc b
    inc [hl]
    dec [hl]
    nop
    adc h
    nop
    nop
    ld [de], a
    ld c, $00
    and $04
    ld [hl], $37
    nop
    xor h
    nop
    nop
    ld [hl], d
    rrca
    ld bc, $0200
    inc b
    nop
    add [hl]
    nop
    nop
    ld [de], a
    rrca
    add hl, bc
    nop
    and [hl]
    nop
    nop
    ld [hl], d
    rra
    add hl, bc
    nop
    adc b
    nop
    nop
    ld [de], a
    rrca
    add hl, bc
    nop
    xor b
    nop
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_03b_50f3

    jr nc, jr_03b_50f5

    ld b, $07
    nop
    ld [bc], a
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_50ec

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    ld [hl+], a
    nop
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    nop
    ld [$0000], sp
    ld b, d

jr_03b_50ec:
    ld [$1200], sp
    inc c
    nop
    jr z, jr_03b_50f3

jr_03b_50f3:
    nop
    ld h, d

jr_03b_50f5:
    ld [$3200], sp
    rrca
    ld c, l
    nop
    sub d
    rrca
    ld c, l
    nop
    ld a, [c]
    rrca
    ld c, l
    nop
    ld d, d
    rra
    ld c, l
    nop
    ld [hl], d
    ld a, [de]
    nop
    ld [bc], a
    ld b, $2c
    dec l
    jr nc, jr_03b_5141

    ld b, $02
    ld a, [bc]
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld b, $22
    ld a, [bc]
    ld h, $27
    ld b, $14
    ld [$0006], sp
    rrca
    ld c, l
    ld b, $60
    rrca
    ld c, l
    ld b, $c0
    rrca
    ld c, l
    ld b, $20
    rra
    ld c, l
    jr z, jr_03b_5160

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $42
    stop

jr_03b_5141:
    ld bc, $c206
    db $10
    jr z, jr_03b_5170

    ld b, $54
    jr jr_03b_5175

    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $22
    db $10
    db $10
    ld de, $e206
    db $10
    ld a, [hl+]
    dec hl
    ld b, $54
    jr jr_03b_5160

jr_03b_5160:
    ld [bc], a
    inc c
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_03b_519d

    jr nc, jr_03b_519f

    ld b, $07

jr_03b_5170:
    inc c
    ld [bc], a
    nop
    inc h
    dec h

jr_03b_5175:
    rst $38
    inc c
    inc d
    rlca
    ld l, $2f
    jr jr_03b_5196

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    inc c
    ld [hl+], a
    nop
    ld h, $27
    inc c
    inc d
    ld [$2d2c], sp
    inc c
    ld [$0c00], sp
    ld b, d

jr_03b_5196:
    ld [$120c], sp
    inc c
    inc c
    jr z, jr_03b_519d

jr_03b_519d:
    inc c
    ld h, d

jr_03b_519f:
    ld [$320c], sp
    rrca
    ld c, l
    inc c
    sub d
    rrca
    ld c, l
    inc c
    ld a, [c]
    rrca
    ld c, l
    inc c
    ld d, d
    rra
    dec de
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$0000], sp
    ld bc, $c20c
    db $10
    jr z, @+$2b

    inc c
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_03b_51d0

jr_03b_51d0:
    db $10
    ld de, $e20c
    db $10
    ld a, [hl+]
    dec hl
    inc c
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    jr nc, jr_03b_5212

    nop
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$0000], sp
    rrca
    cpl
    jr c, jr_03b_5235

    nop
    inc b
    rrca
    dec bc
    ld a, [hl-]
    dec sp
    nop
    inc h
    rrca
    dec c
    jr c, jr_03b_5241

    nop
    add d
    ld [$1200], sp
    ld c, $3a
    dec sp
    nop
    and d

jr_03b_5212:
    ld [$7200], sp
    ld c, $00
    ld [bc], a
    ld [de], a
    nop
    adc d
    rrca
    rlca
    nop
    ld [hl+], a
    ld [de], a
    nop
    ld l, d
    rrca
    dec bc
    nop
    db $c4, $06, $00
    sub d
    rrca
    inc bc
    nop
    db $e4
    ld b, $00
    ld [hl-], a
    rrca
    dec b
    nop
    ld [bc], a
    inc d

jr_03b_5235:
    nop
    ld [de], a
    rrca
    dec b
    nop
    ld [hl+], a
    inc d
    nop
    ld [hl-], a
    ld a, [bc]
    jr z, jr_03b_526a

jr_03b_5241:
    ld [bc], a
    inc bc
    nop
    jp nz, Jump_000_281a

    add hl, hl
    nop
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr nc, jr_03b_5295

    jr nc, jr_03b_5297

    ld b, $07
    nop
    ld [bc], a

jr_03b_526a:
    nop
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_528e

    jr @+$1b

    ld a, [de]
    dec de
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld d, $17
    nop
    ld [hl+], a
    nop
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    nop
    ld [$0000], sp
    ld b, d

jr_03b_528e:
    ld [$1200], sp
    inc c
    nop
    jr z, jr_03b_5295

jr_03b_5295:
    nop
    ld h, d

jr_03b_5297:
    ld [$3200], sp
    rrca
    ld c, l
    nop
    sub d
    rrca
    ld c, l
    nop
    ld a, [c]
    rrca
    ld c, l
    nop
    ld d, d
    rra
    dec de
    jr z, @+$2b

    ld [bc], a
    inc bc
    nop
    jp nz, Jump_000_281a

    add hl, hl
    nop
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_52ed

    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    inc [hl]
    dec [hl]
    nop
    ld b, d
    ld [bc], a
    jr nc, jr_03b_5316

    jr nc, jr_03b_5318

    inc [hl]
    dec [hl]
    jr c, jr_03b_5324

    nop
    ld [de], a

jr_03b_52ed:
    inc c
    ld [hl], $37
    nop
    ld h, d
    ld [bc], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld a, [hl-]
    dec sp
    nop
    ld [hl-], a
    inc c
    nop
    ld c, h
    nop
    nop
    ld c, b
    nop
    nop
    ld b, d
    nop
    jr c, jr_03b_5342

    inc [hl]
    dec [hl]
    nop
    ld [de], a
    inc c
    nop
    ld l, h
    nop
    nop
    ld l, b
    nop
    nop
    ld h, d

jr_03b_5316:
    nop
    ld a, [hl-]

jr_03b_5318:
    dec sp
    ld [hl], $37
    nop
    ld [hl], d
    rrca
    ld bc, $8200
    inc b
    jr c, jr_03b_535d

jr_03b_5324:
    jr nc, @+$33

    nop
    sub d
    rrca
    ld bc, $a200
    inc b
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    nop
    ld [hl-], a
    ld c, $00
    ld c, d
    nop
    nop
    ld c, d
    nop
    nop
    adc [hl]
    nop
    nop
    ret nc

    ld c, $00
    ld l, b

jr_03b_5342:
    ld [bc], a
    nop
    ld l, d
    nop
    nop
    xor [hl]
    nop
    nop
    ldh a, [$0e]
    nop
    inc b
    inc d
    nop
    ld c, h
    ld [bc], a
    nop
    sub b
    rrca
    ld bc, $2400
    inc d
    nop
    xor h
    rrca
    dec b

jr_03b_535d:
    nop
    ld b, [hl]
    inc d
    nop
    inc b
    ld [de], a
    nop
    ld d, d
    rra
    dec b
    nop
    ld [hl+], a
    inc d
    nop
    ld [hl-], a
    rra
    inc bc
    nop
    ld b, h
    ld b, $00
    ld d, d
    rra
    inc bc
    nop
    ld h, h
    ld b, $00
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld b, $2c
    dec l
    ld [$0609], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    ld b, $14
    rlca
    ld l, $2f
    jr jr_03b_53a8

    ld b, $22
    ld a, [bc]
    ld h, $27
    ld b, $14
    ld [$2d2c], sp
    jr nc, @+$33

    ld b, $42
    ld a, [bc]
    ld b, $12
    inc c
    ld [hl-], a
    inc sp
    ld b, $62
    ld a, [bc]
    ld b, $32

jr_03b_53a8:
    rrca
    ld c, l
    ld b, $92
    rrca
    ld c, l
    ld b, $f2
    rrca
    ld c, l
    ld b, $52
    rra
    dec de
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $42
    stop
    ld bc, $c206
    db $10
    jr z, jr_03b_53f1

    ld b, $14
    ld [$2b2a], sp
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $22
    db $10
    db $10
    ld de, $e206
    db $10
    ld a, [hl+]
    dec hl
    ld b, $14
    ld [$0200], sp
    nop
    ld [$0009], sp
    nop
    inc c
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    jr jr_03b_5409

    nop

jr_03b_53f1:
    jr nz, @+$0e

    ld h, $27
    nop
    inc d
    ld [$3130], sp
    jr nc, @+$33

    jr c, jr_03b_5437

    jr nc, @+$33

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    nop
    ld b, h
    nop
    jr c, jr_03b_5442

jr_03b_5409:
    nop
    ld [de], a
    ld a, [bc]
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    dec sp
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld [hl], $37
    nop
    ld h, h
    nop
    ld a, [hl-]
    dec sp
    nop
    ld [hl-], a
    ld c, $00
    ld c, d
    nop
    inc [hl]
    dec [hl]
    nop
    add d
    ld [bc], a
    jr nc, jr_03b_545b

    nop
    ld d, d
    ld c, $00
    ld l, d
    nop
    ld [hl], $37
    nop
    and d
    ld [bc], a
    ld [hl-], a
    inc sp

jr_03b_5437:
    nop
    ld [hl-], a
    ld c, $00
    ld b, d
    nop
    nop
    ld b, h
    nop
    nop
    ret nz

jr_03b_5442:
    ld [bc], a
    nop
    ld d, d
    ld c, $00
    ld h, d
    nop
    nop
    ld h, h
    nop
    nop
    ldh [rSC], a
    nop
    ld [hl], d
    rrca
    rlca
    nop
    db $cc, $0f, $05
    nop
    and h
    inc b
    nop

jr_03b_545b:
    db $ec
    rrca
    inc bc
    nop
    ld c, b
    nop
    nop
    ld c, d
    nop
    nop
    ret z

    inc b
    nop
    ld d, d
    inc c
    nop
    ld l, b
    nop
    nop
    ld l, d
    nop
    nop
    add sp, $04
    nop
    ld [hl-], a
    ld a, [bc]
    nop
    ld b, d
    ld [de], a
    nop
    add d
    ld [bc], a
    nop
    add [hl]
    ld [bc], a
    nop
    ld [de], a
    ld a, [bc]
    nop
    ld h, d
    ld [de], a
    nop
    and d
    ld [bc], a
    nop
    and [hl]
    ld [bc], a
    nop
    ld [hl-], a
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ret nz

    inc e
    jr z, @+$2b

    nop
    inc d
    ld [$1312], sp
    nop
    ldh [rNR32], a
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_54cf

    nop
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    nop
    inc d
    ld [$2d2c], sp
    jr nc, jr_03b_54f3

    nop
    ld b, d
    ld a, [bc]
    nop
    ld [de], a
    inc c
    ld [hl-], a
    inc sp
    nop
    ld h, d
    ld a, [bc]
    nop
    ld [hl-], a

jr_03b_54cf:
    ld a, [bc]
    ld a, [bc]
    dec bc
    nop
    ld b, d
    rrca
    dec bc
    ld a, [de]
    dec de
    nop
    ld h, d
    rrca
    dec bc
    nop
    ld b, d
    inc c
    nop
    ld d, b
    inc c
    nop
    ld h, d
    inc c
    nop
    or b
    rrca
    dec a
    inc b
    dec b
    nop
    ld b, d
    rrca
    dec bc
    inc d
    dec d
    nop
    ld h, d

jr_03b_54f3:
    rrca
    dec bc
    nop
    ld b, b
    rrca
    dec l
    jr z, jr_03b_5524

    ld [bc], a
    inc bc
    nop
    jp nz, Jump_000_281a

    add hl, hl
    nop
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    nop
    inc d
    ld [$0200], sp
    nop
    inc l
    dec l
    ld [$0009], sp
    ld [bc], a
    inc c
    rst $38
    nop
    inc d
    rlca
    ld l, $2f
    jr jr_03b_553c

    nop

jr_03b_5524:
    ld [hl+], a
    inc c
    nop
    inc d
    ld [$2d2c], sp
    jr c, jr_03b_5566

    jr c, @+$3b

    jr nc, @+$33

    nop
    ld b, [hl]
    ld [$1400], sp
    ld a, [bc]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld [hl-], a

jr_03b_553c:
    inc sp
    nop
    ld h, [hl]
    ld [$3400], sp
    inc c
    inc [hl]
    dec [hl]
    nop
    add h
    ld [bc], a
    nop
    ld c, h
    rrca
    dec b
    ld [hl], $37
    nop
    and h
    ld [bc], a
    nop
    ld l, h
    rrca
    inc bc
    nop
    ld b, [hl]
    ld a, [bc]
    nop
    ld d, b
    ld c, $00
    ld h, [hl]
    ld a, [bc]
    nop
    ld [hl], b
    rrca
    ld bc, $3130
    nop
    adc b

jr_03b_5566:
    ld [$5200], sp
    ld c, $32
    inc sp
    nop
    xor b
    ld [$7200], sp
    ld c, $00
    ld b, d
    inc c
    nop
    ld d, h
    ld c, $00
    ld h, h
    ld a, [bc]
    nop
    ld [hl], h
    rrca
    dec b
    nop
    add [hl]
    inc b
    nop
    sub h
    rrca
    dec b
    nop
    and [hl]
    inc b
    nop
    inc d
    ld [$2928], sp
    ld [bc], a
    inc bc
    nop
    jp nz, $001c

    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    nop
    ld [c], a
    inc e
    nop
    inc d
    ld [$0200], sp
    inc b
    inc l
    dec l
    ld [$0409], sp
    ld [bc], a
    ld a, [bc]
    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    ld l, $2f
    jr jr_03b_55cd

    inc b
    ld [hl+], a
    ld a, [bc]
    ld h, $27
    inc b
    inc d
    ld [$2d2c], sp
    jr nc, jr_03b_55f1

    inc b
    ld b, d
    ld a, [bc]
    inc b
    ld [de], a
    inc c
    ld [hl-], a
    inc sp
    inc b
    ld h, d
    ld a, [bc]
    inc b
    ld [hl-], a

jr_03b_55cd:
    rrca
    dec c
    ld b, $07
    inc b
    ld d, h
    rrca
    dec bc
    ld d, $17
    inc b
    inc [hl]
    rrca
    dec bc
    jr nc, jr_03b_560e

    inc b
    ld d, h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc b
    or h
    rrca
    ld c, e
    nop
    ld bc, $5404
    rrca
    dec bc
    db $10
    ld de, $3404

jr_03b_55f1:
    rrca
    add hl, sp
    jr z, jr_03b_561e

    ld [bc], a
    inc bc
    inc b
    jp nz, Jump_000_281a

    add hl, hl
    inc b
    inc d
    ld [$2b2a], sp
    ld [de], a
    inc de
    inc b
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    dec hl
    inc b
    inc d
    ld [$0000], sp
    nop

jr_03b_560e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_561e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03b_5751:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03b_594e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_6c48:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
