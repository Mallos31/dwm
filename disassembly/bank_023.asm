; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    inc hl
    dec a
    ld b, b
    ret


    ld b, l
    db $eb
    ld b, [hl]
    rrca
    ld c, b
    ld l, d
    ld c, d
    inc l
    ld c, e
    ldh a, [rWX]
    rrca
    ld d, d
    jr nc, @+$55

    ld c, a
    ld d, h
    ld l, h
    ld d, l
    sbc a
    ld e, d
    xor h
    ld e, e
    cp e
    ld e, h
    ld a, [de]
    ld e, a
    ld e, c
    ld h, b
    and d
    ld h, c
    ld e, h
    ld h, a
    ld l, d
    ld l, b
    ld a, h
    ld l, c
    ld h, $6f
    inc hl
    ld [hl], b
    ld c, b
    ld [hl], c
    and [hl]
    ld [hl], c
    push bc
    ld [hl], c
    inc bc
    ld [hl], l
    cp d
    ld [hl], l
    ld c, b
    db $76
    ret


    db $76
    sub d
    ld [hl], a
    nop
    ld [$2041], sp
    inc a
    jr nz, jr_023_4074

    rst $38
    rst $38
    rrca
    call z, Call_000_1b15
    rst $38
    di
    ld d, $1a
    inc de
    dec e
    jr nz, @+$3a

    ld b, c
    ld [bc], a
    nop
    jp nz, $8273

    add d
    rst $38
    rst $38
    ld h, $3a
    db $ec
    db $f4
    jr nz, jr_023_409f

    ld b, c
    ld [bc], a
    nop
    or h
    call nc, $ecdc
    rst $18
    rst $20
    ld l, $32
    scf
    add hl, sp
    ld b, c
    jr nz, jr_023_4073

    ld [hl], d
    ld d, e

jr_023_4073:
    ld e, d

jr_023_4074:
    ld l, e
    rst $28
    rst $30
    ld h, $3a
    di
    db $fd
    ld b, c
    jr nz, jr_023_4080

    ld c, $ca

jr_023_4080:
    ld a, [de]
    ld d, $f7
    rst $28
    ld h, l
    ld e, l
    rst $08
    cp a
    ld b, c
    jr nz, jr_023_408d

    dec c
    dec bc

jr_023_408d:
    dec de
    rla
    ei
    rst $20
    ld [hl], h
    ld c, h
    db $ec
    sbc h
    ld b, c
    jr nz, @+$04

    rlca
    and $15
    sub l
    rst $38
    rst $38
    ld h, h

jr_023_409f:
    ld e, h
    scf
    cpl
    ld b, c

Jump_023_40a3:
    jr nz, jr_023_40a7

    ld a, [c]
    inc sp

jr_023_40a7:
    xor d
    jp c, $cfff

    ld l, b
    ld e, [hl]
    ret z

    cp b
    jp c, $eaba

    ld a, [$2b3a]
    jr c, jr_023_40e0

    inc sp
    ld h, $31
    inc h
    dec [hl]
    jr nz, jr_023_40fa

    add hl, hl
    dec l
    ld l, $2b
    cpl
    cpl
    db $eb
    rrca
    set 4, [hl]
    ld [hl-], a
    add $12
    sub $02
    ld e, $ca
    and b
    ld h, b
    ldh [$e3], a
    ret nz

    rst $08
    ld b, b
    ld c, a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc e
    add b
    adc [hl]
    nop

jr_023_40e0:
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    ld b, c
    or h
    ld bc, $0077
    db $dd
    nop
    ld [$0f00], a
    nop
    ccf
    ld b, c
    or h
    inc bc
    rst $30
    nop
    cp l
    nop
    ld d, a
    dec b

jr_023_40fa:
    ld b, $07
    rst $00
    inc bc
    di
    ld [bc], a
    ld a, [c]
    ld bc, $01f9
    ld a, c
    ld bc, $01d9
    ld [hl], c
    or h
    ld [hl], h
    call nc, $f4f4
    rst $10

jr_023_410f:
    ldh a, [$d3]
    ld h, a
    ld c, h
    ld h, e
    ld c, b
    ld l, e
    ld b, b

jr_023_4117:
    ld a, b
    ld d, e
    ld e, e
    ld e, l
    ld d, [hl]
    ld e, [hl]
    ld e, h
    call nc, $941c
    call z, $8c64
    inc h
    xor h
    inc b
    inc a
    sub h
    ret


    adc $fc
    cp l
    cp h
    jp nz, Jump_023_6063

    inc e
    dec de
    ld [hl], a
    ld l, a
    db $db
    cp h
    rst $30
    rst $28
    sub a
    ld a, e
    and $11
    dec sp
    ld b, h
    rst $38
    nop
    rra
    ldh [$f3], a
    db $fc
    db $ec
    rra
    rst $30
    ei
    rla
    jr jr_023_4117

    call z, Call_023_7fb8
    and $1f
    rst $18
    jr c, jr_023_410f

    ld h, a
    ld l, h
    call c, $b0d0
    cp a
    ret nz

    cp $bb
    sbc $be
    ld l, [hl]
    sbc $b5
    ld a, a
    set 1, l
    dec bc
    ld [$0707], sp
    db $fd
    inc bc
    ld a, a
    db $dd
    ld a, e
    ld a, l
    db $76
    ld a, e
    xor l
    cp $d3
    or e
    ret nc

    db $10
    ldh [$e0], a
    add sp, $18

jr_023_417b:
    db $d3
    inc sp
    dec e
    cp $67
    ld hl, sp-$05
    inc e
    db $dd
    and $36
    dec sp
    dec bc
    dec c
    jp hl


    sbc $67
    adc b
    call c, $ff22
    nop
    ld hl, sp+$07
    rst $08
    ccf
    scf
    ld hl, sp-$11
    rst $18
    sub e
    ld [hl], e
    ccf
    cp l
    dec a
    ld b, e
    add $06
    jr c, jr_023_417b

    rst $28
    rst $30
    db $db
    dec a
    rst $28
    rst $30
    jr c, jr_023_41d8

    ld a, [hl-]
    ld l, $38
    inc l
    ld a, [hl+]
    ld a, [hl-]
    dec sp
    dec sp
    ld d, [hl]
    ld l, a
    cp a
    ret nz

    cp e
    rst $38
    ld c, $da
    ld l, $3b
    ld c, $1b
    ld a, [hl+]
    ld a, $ef
    rst $28
    or l
    ld a, e
    cp $01
    xor $ff
    add b
    sub l
    add b
    adc d
    ret nz

    call nz, $c1c0
    ld h, b
    ldh [$7f], a
    ld a, a
    ldh a, [$f0]
    ret nz

jr_023_41d8:
    rst $00
    nop
    ld d, b
    nop
    add b
    nop
    jr nz, @+$43

    db $fc
    ldh a, [$80]
    add b
    ld [hl], b
    ld [hl], b
    rrca
    adc a
    nop
    ld a, [bc]
    nop
    ld bc, $0400
    ld b, c
    db $fc
    ldh a, [rSB]
    ld bc, $0e0e
    ldh a, [$f1]
    ld bc, $01a9
    ld d, c
    inc bc
    inc hl
    inc bc
    add e
    ld b, $07
    cp $fe
    rrca
    rrca
    inc bc
    db $e3
    ld [hl], b
    ld e, e
    ld [hl], h
    call c, $d870
    ld d, h
    ld a, h
    rst $30
    rst $30
    xor l
    sbc $7f
    add b
    ld [hl], a
    rst $38
    inc e
    or h
    ld e, h
    ld [hl], h
    inc e
    inc [hl]
    ld d, h
    ld e, h
    call c, Call_023_6adc
    or $fd
    inc bc
    db $dd
    rst $38
    db $fd
    db $e4
    rst $18
    call nz, $c6dd
    call $cad4
    db $d3
    and d
    cp e
    and d
    cp e
    ld [c], a
    ld [$13df], a
    db $fd
    ld de, $31dd
    reti


    dec d
    xor c
    ld h, l
    and e
    ld l, a
    inc hl
    rst $28
    inc hl
    xor e
    ei
    ret z

    cp a
    adc b
    cp e
    adc h
    sbc e
    xor b

jr_023_424f:
    sub l

Call_023_4250:
    and [hl]
    push bc
    or $c4
    rst $30
    call nz, $bfd5
    daa
    ei
    inc hl
    cp e
    ld h, e
    or e
    dec hl
    ld d, e
    bit 0, l
    db $dd
    ld b, l
    db $dd
    ld b, a
    ld d, a
    rst $08

jr_023_4268:
    jr nz, @+$0b

    rst $20
    ld c, $e7
    jr jr_023_428e

    db $e3
    ccf
    call $977d
    rst $30
    cp h
    rst $38
    ccf
    rst $38
    ret nz

jr_023_427a:
    rst $38
    rra
    rst $38
    push af
    push af
    ld e, a
    ld e, a
    ldh [rIE], a
    nop
    ldh [rP1], a
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    ld hl, sp-$01
    ld d, a

jr_023_428e:
    ld d, a
    db $fd
    db $fd
    rlca
    rst $38
    nop
    rlca
    nop
    nop

jr_023_4297:
    adc a
    ld h, b
    adc b
    rst $20
    ld l, b
    rst $20
    jr jr_023_4297

    call nz, Call_023_72fc
    ld a, [hl]
    reti


    rst $18
    dec [hl]
    rst $30
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    sub h
    push de
    sbc h
    db $dd
    rst $38
    rst $38
    add b
    ld b, c
    add d
    jr nz, @+$01

    nop
    rst $38
    rst $38
    rst $38
    jr z, jr_023_4268

    jr c, jr_023_427a

    rst $38
    rst $38
    nop
    ld b, c
    sub d
    jr nz, @+$01

    add c
    ld sp, hl
    add c

Jump_023_42ca:
    pop bc
    ld b, c
    add b
    jr nz, jr_023_424f

    add b
    xor d
    xor d
    ld b, c
    adc [hl]
    jr nz, jr_023_42d8

    ld a, [c]
    ld [bc], a

jr_023_42d8:
    add d
    ld b, c
    sub b
    jr nz, jr_023_42dd

jr_023_42dd:
    nop

jr_023_42de:
    ld b, c
    xor h
    ld [hl+], a
    ld b, c
    sub d

jr_023_42e3:
    jr nz, @+$16

    ld d, l
    inc e
    ld e, l
    ld b, c
    sbc d
    inc h
    ld bc, $ffff
    rst $38
    add hl, hl
    xor e

jr_023_42f1:
    add hl, sp
    cp e
    rst $38
    rst $38
    ld bc, $d241
    jr nz, jr_023_433b

    sub c
    ld hl, $5555
    ld b, c
    or [hl]
    ld [hl+], a
    ld b, c
    sbc $2e
    sbc l
    sub l
    adc b
    adc b
    add b
    sbc a
    add b
    cp a
    cp a
    add b
    add b
    cp a
    ld b, c
    sub b
    jr nz, jr_023_42f1

    ld d, l
    adc c
    adc c
    ld bc, $01f9
    db $fd
    db $fd
    ld bc, $fd01
    ld b, c
    sub b
    jr nz, jr_023_42de

    xor d
    sub c
    sub c
    ld b, c
    inc b
    jr c, jr_023_42e3

    xor c
    ld de, $4111
    inc d
    jr c, jr_023_4389

    call c, $d850
    pop af
    ld sp, hl
    ld h, e
    ld [hl], e
    db $e3
    di
    rlca

jr_023_433b:
    rst $30
    rlca
    rlca
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ldh a, [$f0]
    rst $08
    rst $08
    sbc e
    sbc h
    sub b
    sub e
    jr jr_023_4366

    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    di
    di
    reti


    add hl, sp
    add hl, bc
    ret


    ld b, c
    ld e, h
    jr nc, jr_023_437e

    ccf
    ld c, $1f
    adc l
    sbc l
    push bc

jr_023_4366:
    call $cfc7
    ldh [$ef], a
    ldh [$e0], a
    rst $38
    rst $38
    adc b
    rst $28
    adc b
    call z, $a041
    inc h
    ld b, c
    add b
    jr nc, jr_023_438a

    ld e, $10
    jr @+$01

jr_023_437e:
    rst $38
    ld [bc], a
    db $e3
    ld b, c
    or h
    jr nz, jr_023_438d

    adc [hl]
    ld [$ff0c], sp

jr_023_4389:
    rst $38

jr_023_438a:
    ld [bc], a
    di
    ld [bc], a

jr_023_438d:
    add e
    ld b, c
    or [hl]
    ld [hl+], a
    ld b, c
    and $20
    rst $38
    rst $38
    dec b
    push hl
    dec b
    dec b
    ld b, c
    ret nc

    jr nz, @+$03

    ld bc, $e641
    jr nz, jr_023_43b3

    sbc $10
    sbc b
    ld b, c
    and b
    inc [hl]
    db $10
    rst $18
    db $10
    sbc b
    ld hl, $213d
    ld sp, $ffff

jr_023_43b3:
    dec b
    rst $00
    ld b, c
    or h
    jr nc, jr_023_43ca

    dec e
    ld de, $ff19
    rst $38
    add a
    or a
    add e
    cp e
    ret nz

    sbc $f0
    or $ff
    rst $38
    add h
    or [hl]

jr_023_43ca:
    ld b, c
    adc [hl]
    jr nz, @-$1d

    db $ed
    pop bc
    db $dd
    ld bc, $0779
    ld h, a
    rst $38
    rst $38
    ld hl, $ff6d
    rst $38
    rst $08
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    rst $08
    jr nz, jr_023_43f6

    rst $20
    ld [$00e7], sp
    nop
    db $fc
    ld [bc], a
    add b

jr_023_43f6:
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    add hl, bc
    rst $20
    ld bc, $ff01
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $7f01
    ld a, a
    rst $28
    add b
    ret z

    and a
    add b
    add b
    ld sp, hl
    add h
    pop bc
    cp h
    pop bc
    cp h
    ld b, c
    adc h
    jr nz, jr_023_445e

    db $10
    ld b, b
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc
    db $fc
    nop
    nop
    cp $fe
    call $4123
    inc h
    ld b, b

jr_023_4430:
    di
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $0001
    ld e, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    nop
    ld d, l
    ld b, c
    ld h, d
    ld b, c
    ld [$6841], a
    ld b, e
    ld b, c
    ld h, e
    ld b, [hl]
    ld b, c
    add b
    ld c, a
    ld c, l
    ld b, c
    pop hl
    rst $38
    inc c
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3
    inc e
    ld b, a
    cp b

jr_023_445e:
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
    jr nz, jr_023_4430

    ld b, b

jr_023_4472:
    rra
    ldh [$7e], a
    add c
    ld b, c
    jr nz, jr_023_44c9

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
    ld h, [hl]
    sbc c
    ld e, c
    and [hl]
    jr z, jr_023_4472

    inc a
    jp $b34c


    ld b, b
    cp a
    jr nz, @-$1f

    ld b, c
    ld b, b
    ld d, b
    sbc c
    ld h, [hl]
    ld b, c
    or h
    inc bc
    ld b, c
    or l
    ld bc, $9966
    sbc d
    ld h, l
    inc d
    db $eb
    inc a
    jp $cd32


    ld [bc], a
    db $fd
    inc b
    ei
    jr nz, @-$1f

    ld b, b
    cp a
    ld b, c
    ld c, h
    ld d, b
    ld b, c
    ld [hl], b
    ld d, h
    ld b, c
    ld d, [hl]
    ld e, b

jr_023_44c9:
    ld b, c
    or h
    nop
    inc b
    ei
    ld [bc], a
    db $fd
    ld b, c
    ld l, h
    ld d, b
    ld b, c
    sub b
    ld d, h
    ld b, c
    ld [hl], b

jr_023_44d8:
    ld d, b
    ld c, h
    or e
    inc a
    jp $d728


    ld e, c
    and [hl]
    ld h, [hl]
    sbc c
    ld b, c
    ld d, [hl]
    ld e, b
    sbc c
    ld h, [hl]
    ld b, c
    xor h
    ld d, b
    ld b, c
    sub b
    ld d, b
    ld [hl-], a
    call $c33c
    inc d
    db $eb
    sbc d
    ld h, l
    ld b, c
    xor h
    ld d, b
    add c
    ld a, [hl]
    ld b, d
    cp l
    inc d
    db $eb
    jr z, jr_023_44d8

    ld b, c
    call nc, Call_023_4250
    cp l
    add c
    ld a, [hl]
    add b
    sbc a
    nop
    ccf
    ld b, c
    ld [c], a
    ld d, b
    add b
    sbc a
    add b
    add a
    ld b, b
    ld b, b
    ldh [$a0], a
    ld b, c
    or d
    dec b
    jp c, Jump_000_2400

    nop
    add b
    nop
    nop
    nop
    rra
    ld b, c
    or h
    inc bc
    xor e
    nop
    ld b, h
    nop
    ld bc, $0000
    ld bc, $00f9
    db $fc
    ld b, c
    ld [de], a
    ld h, b
    ld bc, $01f9
    pop hl
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    cp b
    sbc b
    rst $10
    rst $08
    ld l, h
    ld h, d
    add hl, sp
    ld a, [hl-]
    ld h, a
    ld [hl], a
    sbc b
    and h
    cp h
    jp nz, Jump_023_7f7f

    ld b, c
    db $fc
    ldh a, [rIE]
    rst $38
    ldh a, [rIF]
    rst $08
    ldh a, [$7f]
    ld a, a
    add b
    add b
    nop
    ccf
    ld b, c
    jr nc, @+$64

    rrca
    ldh a, [$f3]
    rrca
    cp $fe
    ld bc, $0001
    db $fc
    dec e
    add hl, de
    db $eb
    di
    ld [hl], $46
    sbc h
    ld e, h
    and $ee
    add hl, de
    dec h
    dec a
    ld b, e
    cp $fe
    ld b, c
    and b
    ld c, a
    ld c, l
    jr nz, @-$1f

    cpl
    ret nc

    ld d, b
    xor a
    ld b, b
    add c
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
    cpl
    adc $47
    or a
    ld b, b
    cp a
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
    ld b, c
    cp b
    jr nz, jr_023_45ff

    ld bc, $4d7f
    ld b, c
    ld h, c
    ld a, a
    ld c, l
    ld b, c
    pop bc
    ld a, a
    dec hl
    nop
    ld [bc], a
    ld c, b
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    inc h
    dec h
    ld h, $27
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, b
    nop
    nop
    rst $38
    ld c, b
    inc d
    rlca
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, b
    ld b, d
    ld l, $2f
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld l, $2f
    ld b, b
    ld b, d
    ld c, b
    jr nz, jr_023_45f6

jr_023_45f6:
    ld c, b
    inc d
    ld [$4746], sp
    ld b, e
    ld b, h
    ld b, c
    ld b, d

jr_023_45ff:
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, b
    ld b, c
    ld b, h
    ld b, l
    ld c, b
    ld [de], a
    inc c
    ld b, b
    ld b, d
    inc l
    dec l
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr z, jr_023_4645

    ld c, b
    ld l, $00
    ld c, b
    inc d
    ld [$4248], sp
    nop
    inc a
    dec a
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    jr c, jr_023_466a

    ld c, b
    ld c, [hl]
    nop
    ld c, b
    inc d
    ld [$6248], sp
    nop
    ld a, [hl-]
    dec sp
    jr jr_023_4657

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, [hl+]

jr_023_4645:
    dec hl
    ld c, b
    ld l, [hl]
    nop
    ld c, b
    sub h
    ld a, [bc]
    inc a
    dec a
    ld d, h
    ld d, l
    jr nz, jr_023_4673

    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld [hl+], a

jr_023_4657:
    inc hl
    ld d, l
    ld d, [hl]
    jr c, jr_023_4695

    ld c, b
    or d
    inc c
    ld a, [hl-]
    dec sp
    ld d, a
    ld e, b
    jr nc, jr_023_4696

    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld [hl-], a

jr_023_466a:
    inc sp
    ld e, b
    ld e, c
    ld a, [hl+]
    dec hl
    ld c, b
    or d
    inc c
    ld d, b

jr_023_4673:
    ld d, c
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    ld d, h
    ld e, l
    ld e, l
    ld d, [hl]
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld d, b
    ld d, c
    ld c, b
    or d
    inc c
    ld d, d
    ld d, e
    ld d, a
    ld e, b
    ld e, b
    ld e, l
    ld e, l
    ld c, b
    dec h
    ld [de], a
    ld e, c
    ld d, d
    ld d, e
    ld c, b
    or d
    dec bc

jr_023_4695:
    ld b, c

jr_023_4696:
    ld b, h
    ld b, l
    ld c, b
    inc b
    db $10
    ld e, d
    ld e, l
    ld e, l
    ld e, h
    ld c, b
    inc c
    db $10
    ld c, b
    ld b, d
    nop
    ld c, b
    inc d
    ld [$6e48], sp
    nop
    ld e, d
    ld e, e
    ld c, b
    ld h, l
    dec d
    ld e, h
    ld c, b
    ld h, d
    nop
    ld c, b
    inc d
    ld [$8e48], sp
    ld [bc], a
    ld d, b
    ld d, c
    ld c, b
    add [hl]
    ld [de], a
    ld c, b
    add b
    ld [bc], a
    ld c, b
    inc d
    ld [$ae48], sp
    ld [bc], a
    ld d, d
    ld d, e
    ld c, b
    and [hl]
    ld [de], a
    ld c, b
    and b
    ld [bc], a
    ld c, b
    inc [hl]
    ld a, [bc]
    ld c, b
    adc [hl]
    ld bc, $c648
    inc de
    ld c, b
    add d
    nop
    ld c, b
    ld [de], a
    inc c
    ld a, [hl+]
    dec hl
    ld a, $3f
    ld c, b
    db $e4
    ld d, $3a
    dec sp
    ld c, b
    ld [hl-], a
    ld a, [bc]
    nop
    ld [bc], a
    ld c, b
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    inc h
    dec h
    ld h, $27
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, b
    nop
    nop
    rst $38
    ld c, b
    inc d
    rlca
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, b
    ld b, d
    ld l, $2f
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld l, $2f
    ld b, b
    ld b, d
    ld c, b
    jr nz, jr_023_4718

jr_023_4718:
    ld c, b
    inc d
    ld [$4746], sp
    ld b, e
    ld b, h
    ld b, c
    ld b, d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, b
    ld b, c
    ld b, h
    ld b, l
    ld c, b
    ld [de], a
    inc c
    ld b, b
    ld b, d
    inc l
    dec l
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr z, jr_023_4767

    ld c, b
    ld l, $00
    ld c, b
    inc d
    ld [$4248], sp
    nop
    inc a
    dec a
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    jr c, jr_023_478c

    ld c, b
    ld c, [hl]
    nop
    ld c, b
    inc d
    ld [$6248], sp
    nop
    ld a, [hl-]
    dec sp
    jr jr_023_4779

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, [hl+]

jr_023_4767:
    dec hl
    ld c, b
    ld l, [hl]
    nop
    ld c, b
    sub h
    ld a, [bc]
    inc a
    dec a
    ld d, h
    ld d, l
    jr nz, jr_023_4795

    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld [hl+], a

jr_023_4779:
    inc hl
    ld d, l
    ld d, [hl]
    jr c, jr_023_47b7

    ld c, b
    or d
    inc c
    ld a, [hl-]
    dec sp
    ld d, a
    ld e, b
    jr nc, jr_023_47b8

    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld [hl-], a

jr_023_478c:
    inc sp
    ld e, b
    ld e, c
    ld a, [hl+]
    dec hl
    ld c, b
    or d
    inc c
    ld d, b

jr_023_4795:
    ld d, c
    ld l, h
    ld l, l
    ld e, b
    ld e, b
    ld d, h
    ld e, l
    ld e, l
    ld d, [hl]
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld d, b
    ld d, c
    ld c, b
    or d
    inc c
    ld d, d
    ld d, e
    ld l, [hl]
    ld l, a
    ld e, b
    ld e, l
    ld e, l
    ld e, b
    ld c, b
    ld h, $11
    ld e, c
    ld d, d
    ld d, e
    ld c, b
    or d

jr_023_47b7:
    dec bc

jr_023_47b8:
    ld b, c
    ld b, h
    ld b, l
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    ld e, d
    ld e, l
    ld e, l
    ld e, h
    ld c, b
    inc c
    db $10
    ld c, b
    ld b, d
    nop
    ld c, b
    inc d
    ld [$6e48], sp
    nop
    ld e, d
    ld e, e
    ld c, b
    ld h, l
    dec d
    ld e, h
    ld c, b
    ld h, d
    nop
    ld c, b
    inc d
    ld [$8e48], sp
    ld [bc], a
    ld d, b
    ld d, c
    ld c, b
    add [hl]
    ld [de], a
    ld c, b
    add b
    ld [bc], a
    ld c, b
    inc d
    ld [$ae48], sp
    ld [bc], a
    ld d, d
    ld d, e
    ld c, b
    and [hl]
    ld [de], a
    ld c, b
    and b
    ld [bc], a
    ld c, b
    inc [hl]
    ld a, [bc]
    ld c, b
    adc [hl]
    ld bc, $c648
    inc de
    ld c, b
    add d
    nop
    ld c, b
    ld [de], a

Jump_023_4802:
    inc c
    ld a, [hl+]
    dec hl
    ld a, $3f
    ld c, b
    db $e4
    ld d, $3a
    dec sp
    ld c, b
    ld [hl-], a

Jump_023_480e:
    ld a, [bc]
    nop
    ld [$0007], sp
    rst $38
    ld a, a
    ld a, a
    nop
    ld e, b
    ld e, d
    nop
    ld e, b
    ld bc, $7e00
    db $fd
    db $fc
    add d
    ei
    nop
    rst $38
    cp $fe
    nop
    ld a, [de]
    ld e, d
    nop
    ld a, [de]
    add b
    nop
    ld a, [hl]
    cp a
    ccf
    ld b, c
    rst $18
    db $f4
    dec bc
    or a
    ld c, a
    ret


    ld a, [hl-]
    ret nc

    inc [hl]
    db $db
    inc sp
    cp a
    ld [hl], a
    ld d, a
    db $d3
    ld c, c
    ld c, d
    rra
    ldh [$e9], a
    or $96
    ld e, c
    ld c, $29
    db $db
    call z, $eefd
    db $eb
    jp z, Jump_023_5292

    inc a
    rst $38
    ld h, [hl]
    db $76
    rst $20
    rst $30
    rlca
    ld b, h
    ld [bc], a
    nop
    ld a, [hl]
    nop
    db $10
    adc b
    rst $28
    adc b
    call z, $cc88
    rst $38
    rst $38
    add b
    cp $80
    ret nz

    add b
    ret nz

    rst $38
    rst $38
    ld [$08ef], sp
    inc c
    ld [$070c], sp
    ld d, [hl]
    ld b, $09
    rst $28
    add hl, bc
    dec c
    add hl, bc
    dec c
    rst $38
    rst $38
    add c
    rst $38
    add c
    pop bc
    add c
    pop bc
    rst $38
    rst $38
    rst $08
    and b
    adc b
    rst $20
    adc b
    rst $20
    add b
    add b
    ld hl, sp-$7a
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    add b
    add b
    rst $08
    jr nz, jr_023_48a3

    rst $20
    ld [$00e7], sp
    nop
    db $fc
    ld [bc], a
    add b

jr_023_48a3:
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    nop
    rst $08
    ld hl, $e709
    add hl, bc
    rst $20
    ld bc, $ff01
    ld bc, $7f81
    add c
    ld a, a
    ld bc, $fe01
    cp $cd
    inc hl
    rlca
    and h
    nop
    di
    add hl, bc
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $cf01
    and c
    adc c
    rst $20
    adc c
    rst $20
    add c
    add c
    ld sp, hl
    add a
    pop bc
    cp a
    pop bc
    cp a
    add c
    add c
    rst $38
    rst $38
    rlca
    sub b
    nop
    nop
    nop
    ld sp, hl
    inc b
    ld bc, $01fc
    db $fc
    rlca
    sbc [hl]
    ld bc, $11c5
    dec d
    inc de
    rla
    pop de
    ld de, $7191
    or c
    ld [hl], a
    ld bc, $0701
    ldh [rSC], a
    ld a, [hl-]
    ld a, $c8
    ld [$7090], sp
    and c
    ld h, a
    ld bc, $8001
    add $80
    res 0, b
    ld hl, sp-$80
    call z, $ff80
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0163
    db $d3
    ld bc, $011f
    inc sp
    ld bc, $0907
    inc de
    add a
    sub a
    add b
    sbc h
    add b
    sbc a
    ld b, h
    set 0, e
    ld c, h
    and b
    ld h, e
    ld e, b
    cp b
    ld h, a
    sbc a
    pop hl
    jp hl


    ld bc, $0139
    ld sp, hl
    ld [hl+], a
    db $d3
    jp $0432


    rst $00
    dec de
    inc e
    rst $20
    ld hl, sp+$07
    ld b, h
    inc b
    rlca
    ld e, b
    inc b
    rst $08
    rst $08
    or a
    jr nc, jr_023_4980

    rst $38
    ld e, [hl]
    ld e, [hl]

jr_023_494b:
    ret


    inc c
    add hl, bc
    sbc b
    dec b
    inc a
    nop
    nop
    rst $20
    jr z, jr_023_4976

    xor a
    jr nc, @-$4d

    db $fc
    db $fc
    adc b
    ld c, b
    adc b
    ld c, d
    add b
    ld c, [hl]
    nop
    nop
    rst $38
    rlca
    ld [hl], b
    dec de
    rlca
    and b
    rst $38
    ld c, l
    rlca
    pop hl
    rst $38
    dec c
    inc a
    jp $827d


    ld sp, hl
    ld b, $e3

jr_023_4976:
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

jr_023_4980:
    ld a, c
    db $ec
    inc de
    ld a, [c]
    dec c
    or $09

jr_023_4987:
    rst $28
    db $10
    rst $18
    jr nz, jr_023_494b

    ld b, b
    rra
    ldh [$7e], a
    add c
    rlca

jr_023_4992:
    jr nz, @+$22

    cp b
    ld b, a
    sub e

jr_023_4997:
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

    jr jr_023_4997

    ld h, e
    sbc h
    rst $30
    ld [$08f7], sp
    ld b, e
    or h
    nop
    di
    ld [hl], b
    adc b
    ld a, b
    add h

jr_023_49be:
    jr c, jr_023_4987

    add d
    ld a, l
    rst $00
    jr z, @-$30

    ld hl, $4986
    ld bc, $03ee
    db $e4
    inc bc
    inc l
    ld a, b
    add h
    jr c, jr_023_4992

    add b
    jr nz, @-$1e

    nop
    ret nz

    inc b
    ret c

    inc b
    call z, Call_000_3130
    call z, Call_000_0f00
    nop
    ld [hl], d
    jr nz, jr_023_49be

    ldh a, [$0c]
    jr nc, @-$32

    ld b, b
    cp b
    ld a, [$fd04]
    ld [bc], a
    rlca
    pop bc
    rst $38
    dec l
    ld [hl], b
    adc a
    ld l, a
    sub b
    ret nc

    cpl
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f10e
    push hl
    ld [$74f3], a
    ld [hl], l
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l

Jump_023_4a0e:
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
    xor [hl]
    ld c, l
    rst $08
    ld l, $a7
    ld d, a
    or b
    ld c, a
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0b82
    db $f4
    push af
    ld a, [bc]
    ld c, $f1
    rlca
    and b
    rra
    ld c, l
    rlca
    ld e, a
    ccf
    ld c, l
    rlca
    cp a
    ccf
    ld c, l
    rlca
    rra
    ld c, a
    ld c, l
    rlca
    ld a, a
    ld c, a
    ld c, l
    rlca
    rst $18
    ld c, a
    ld c, l
    rlca
    ccf
    ld e, a
    ld c, l
    rlca
    sbc a
    ld e, a
    ld c, l
    rlca
    rst $38
    ld e, a
    ld c, l
    rlca
    ld e, a
    ld l, a
    ld c, l
    rlca
    cp a
    ld l, a
    ld c, l
    rlca
    rra
    ld a, a

jr_023_4a61:
    ld c, l
    rlca
    ld a, a
    ld a, a
    ld c, l
    rlca
    rst $18
    ld a, a
    dec c
    nop
    ld [bc], a
    jr jr_023_4a85

    ld a, [bc]
    ld b, $04
    ld b, $06
    inc b
    ld b, $08
    rla
    jr jr_023_4a82

    ld b, $ff
    jr jr_023_4a91

    rlca
    rla
    ld a, [bc]
    ld b, $14

jr_023_4a82:
    ld b, $06
    inc d

jr_023_4a85:
    jr jr_023_4a8e

    rrca
    ld [$2120], sp
    jr jr_023_4acf

    nop

jr_023_4a8e:
    jr @+$0a

    rrca

jr_023_4a91:
    rlca
    ld [hl+], a
    inc hl
    jr jr_023_4af8

    nop
    jr jr_023_4aa1

    rrca
    ld b, $0e
    jr @+$44

    rlca
    add hl, bc
    add hl, bc

jr_023_4aa1:
    ld d, $09
    jr jr_023_4af6

    rrca

jr_023_4aa6:
    add hl, bc
    ld a, [bc]
    ld b, $18
    rlca
    ld bc, $3418
    rrca
    ld b, $0e
    jr jr_023_4a61

    rrca
    ld bc, $a218
    rrca
    ld de, $2524
    ld [$1609], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $0908
    add hl, bc
    jr @+$15

    ld a, [bc]
    rrca
    jr jr_023_4b2e

    nop
    ld h, $27

jr_023_4acf:
    dec b
    ld b, $06
    ld b, $06
    rlca
    db $10
    ld de, $0605
    ld [$3318], sp
    rrca
    ld [bc], a
    dec b
    jr jr_023_4ae4

    nop
    rlca
    inc h

jr_023_4ae4:
    dec h
    jr @+$32

    ld e, $18
    ld h, d
    ld [bc], a
    dec b
    jr jr_023_4b11

    nop
    rlca
    jr @+$28

    db $10
    jr @+$34

    dec de

jr_023_4af6:
    add hl, bc
    dec c

jr_023_4af8:
    dec c
    dec c
    dec bc
    jr jr_023_4b3f

    ld [bc], a
    jr jr_023_4b42

    nop
    ld [bc], a
    inc bc
    jr @+$34

    dec de
    jr jr_023_4b31

    db $10

jr_023_4b09:
    inc c
    jr @+$64

    ld [bc], a
    jr jr_023_4b71

    nop
    ld [de], a

jr_023_4b11:
    inc de
    jr jr_023_4aa6

    rra
    nop
    ld [$150d], sp
    dec c
    jr jr_023_4ae4

    db $10
    jr @-$37

    ld de, $1218
    dec de

jr_023_4b23:
    jr @+$2b

    db $10
    jr jr_023_4b09

    ld a, [de]
    jr @+$15

    add hl, bc
    nop
    ld [bc], a

jr_023_4b2e:
    jr jr_023_4b47

    ld a, [bc]

jr_023_4b31:
    ld b, $04
    ld b, $06
    inc b
    ld b, $08
    rla
    jr jr_023_4b44

    ld b, $ff
    jr jr_023_4b53

jr_023_4b3f:
    rlca
    rla
    ld a, [bc]

jr_023_4b42:
    ld b, $14

jr_023_4b44:
    ld b, $06
    inc d

jr_023_4b47:
    jr jr_023_4b50

    rrca
    ld [$2120], sp
    jr jr_023_4b91

    nop

jr_023_4b50:
    jr @+$0a

    rrca

jr_023_4b53:
    rlca
    ld [hl+], a
    inc hl
    jr jr_023_4bba

    nop
    jr jr_023_4b63

    rrca
    ld b, $0e
    jr @+$44

    rlca
    add hl, bc
    add hl, bc

jr_023_4b63:
    ld d, $09
    jr jr_023_4bb8

    rrca
    add hl, bc
    ld a, [bc]

jr_023_4b6a:
    ld b, $18
    rlca
    ld bc, $3418
    rrca

jr_023_4b71:
    ld b, $0e
    jr jr_023_4b23

    rrca
    ld bc, $a218
    rrca
    ld de, $2524
    ld [$1609], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    nop
    ld bc, $0908
    add hl, bc
    jr @+$15

    ld a, [bc]
    rrca
    jr jr_023_4bf0

    nop
    ld h, $27

jr_023_4b91:
    dec b
    ld b, $06
    ld b, $06
    rlca
    db $10
    ld de, $0605
    ld [$3318], sp
    rrca
    ld [bc], a
    dec b
    jr jr_023_4ba6

    nop
    rlca
    inc h

jr_023_4ba6:
    dec h
    jr jr_023_4bd9

    ld e, $18
    ld h, d
    ld [bc], a
    dec b
    jr @+$25

    nop
    rlca
    jr jr_023_4bda

    db $10
    jr jr_023_4be9

    dec de

jr_023_4bb8:
    add hl, bc
    dec c

jr_023_4bba:
    dec c
    dec c
    dec bc
    jr jr_023_4c01

    ld [bc], a
    jr nz, jr_023_4be3

    inc l
    dec l
    ld [bc], a
    inc bc
    jr jr_023_4bfa

    dec de
    jr jr_023_4bf4

    db $10
    inc c

jr_023_4bcd:
    jr jr_023_4c31

    ld [bc], a
    ld [hl+], a
    inc hl
    ld l, $2f
    ld [de], a
    inc de
    jr jr_023_4b6a

    rra

jr_023_4bd9:
    nop

jr_023_4bda:
    ld [$150d], sp
    dec c
    jr @-$36

    db $10
    jr @-$37

jr_023_4be3:
    ld de, $1218

jr_023_4be6:
    dec de
    jr jr_023_4c12

jr_023_4be9:
    db $10
    jr jr_023_4bcd

    ld a, [de]
    jr jr_023_4c02

    add hl, bc

jr_023_4bf0:
    nop
    ld [$f009], sp

jr_023_4bf4:
    pop af
    ret nz

    rst $08
    ret nz

    rst $18
    add c

jr_023_4bfa:
    or [hl]
    add h
    cp e
    add b
    sbc a
    ret nz

    rst $18

jr_023_4c01:
    nop

jr_023_4c02:
    rrca
    nop
    rst $38
    jr nz, jr_023_4be6

    nop
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $03f9
    db $e3
    rlca

jr_023_4c12:
    ld h, a
    add h
    ld l, e
    ld [bc], a
    db $fd
    nop
    rst $18
    nop
    ld a, e
    inc b
    push hl
    inc b
    call nz, Call_000_1c1c
    rst $38
    rst $38
    nop
    rst $38
    inc b
    db $eb
    ld b, b
    cp a
    nop
    cp $00
    ld h, a
    sbc b
    sbc c
    db $fc
    db $fc

jr_023_4c31:
    rst $38
    rst $38
    db $ed
    db $ed
    rst $20
    rst $20
    push hl
    push hl
    push hl
    push hl
    rst $20
    rst $20
    rst $28
    rst $28
    rst $28
    rst $28
    xor l
    xor l
    cp a
    cp a
    ld l, l
    ld l, l
    rst $08
    rst $08
    rst $08
    rst $08
    call $c8cd
    ret z

    jp hl


    jp hl


    ld l, c
    ld l, c
    rst $38
    rst $38
    pop hl
    pop hl
    ret nz

    call z, $9f80
    add b
    sub a
    jp nz, $c0cc

    rst $08
    ret nz

    set 7, [hl]
    cp $c0
    sub $00
    ld a, $20
    rst $18
    nop
    db $fd
    nop
    rst $38
    inc b
    ld a, [$f400]
    rst $20
    ldh [$f3], a
    ldh a, [rIF]
    rst $08
    ld [bc], a
    ld [c], a
    nop
    ld hl, sp+$00
    rst $38
    nop
    ld e, a
    nop
    rst $38
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $28
    db $ec
    rla
    ld d, $0f
    rst $08
    rlca
    or a
    rlca
    rst $20
    rlca
    ld h, [hl]
    add b
    rst $18
    pop bc
    sub $c0
    rst $18
    ldh [$ed], a
    ldh [$e6], a
    db $e4
    db $e3
    ret nz

    rst $08
    add b
    sbc l
    inc bc
    ei
    inc bc
    or e
    ld bc, $09fd
    halt
    add b
    ld a, a
    inc b
    ei
    nop
    ei
    add b
    rst $18
    ret nz

    rst $10
    ret nz

    rst $18
    ldh [$ec], a
    ldh [$e6], a
    ldh [$e7], a
    add hl, bc
    xor h
    nop
    ld b, $e6
    inc bc
    ld a, [$d627]
    rla
    xor $03
    or d
    ld b, $f6
    ld b, c
    cp c
    inc bc
    di
    ld b, $e6
    inc bc
    ei
    daa
    rst $10
    rla
    rst $28
    inc bc
    or e
    add hl, bc
    jp c, Jump_000_3f02

    ccf
    ld l, l
    ld l, h
    rst $08
    adc $cd
    call z, $cccd
    ret


    ret z

    db $eb
    add sp, $6f
    ld l, h
    add hl, bc
    ret nz

    ld [bc], a
    ret nz

    call z, $cec0
    db $e4
    db $eb
    add hl, bc
    xor h
    nop
    rlca
    rst $20
    dec bc
    ei
    and a
    ld d, a
    rla
    rst $20
    ld [bc], a
    or d
    rlca
    rst $30
    ld b, e
    or e
    ld c, $fe
    rst $20
    rst $20
    call $cdcd
    call Call_023_6969
    ld l, c
    ld l, c
    add hl, sp
    add hl, sp
    add hl, hl
    add hl, hl
    dec l
    dec l
    db $fd
    db $fd
    db $fd
    db $fd
    ld a, l
    ld a, l
    ld a, b
    ld a, b
    ld a, l
    ld a, l
    ld [hl], l
    ld [hl], l
    add hl, bc
    ld c, b
    nop
    db $ed
    db $ed
    cp b
    cp b
    cp h
    cp h
    xor l
    xor l
    rst $20
    rst $20
    ld h, a
    ld h, a
    rst $00
    rst $00
    rst $38
    ld a, $ef
    rst $28
    db $e3
    db $e3
    db $e3
    db $e3
    ei
    ei
    ei
    ei
    ld_long a, $fffa
    cp a
    rst $38
    ld e, $c0
    rst $18
    add b
    sbc a
    add b
    cp [hl]
    adc b
    or h
    add b
    or a
    add c
    sbc [hl]
    add b
    xor a
    add b
    sbc a
    ld b, $e6
    rlca
    sub a
    rlca
    rst $20
    rlca
    rst $20
    dec h
    ld d, l
    inc bc
    di
    ld [bc], a
    and d
    rlca
    rst $00
    nop
    rst $38
    nop
    di
    ld [$0c36], sp
    ld [hl], e
    nop
    rst $38
    nop
    ld a, a
    nop
    dec sp
    ld [bc], a
    dec e
    rra
    rst $18
    rrca
    adc [hl]
    rrca
    xor $0f
    db $ec
    cpl
    ld e, h
    dec bc
    ld [$8707], a
    rlca
    rst $20
    ret nz

    set 1, b
    push de
    add b
    sbc a
    add b
    xor e
    add b
    sub c
    ret nz

    ret nz

    and $e6
    rst $38
    rst $38
    add h
    ld a, e
    ld [bc], a
    db $fd
    nop
    db $db
    nop
    ld [hl], e
    nop
    pop hl
    add hl, bc
    ld a, [hl+]
    ld [bc], a
    add hl, bc
    ld h, b
    rra
    nop
    sub [hl]
    rlca
    and $07
    db $e4
    dec h
    ld d, h
    inc bc
    ld a, [c]
    add hl, bc
    ld a, h
    db $10
    add hl, bc
    ld [hl], b
    inc e
    rst $28
    xor $e3
    ld [c], a
    add hl, bc
    ld d, h
    ld [de], a
    ei
    ei
    add hl, bc
    ld e, h
    stop
    ccf
    nop
    cpl
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    db $d3
    inc h
    and h
    and a
    and a
    db $fd
    db $fd
    inc bc
    sub e
    ld bc, $01f9
    ld sp, hl
    ld bc, $0771
    rst $00
    rrca
    rrca
    rst $08
    rst $08
    rst $38
    rst $38
    add hl, bc
    and b
    inc e
    add e
    ld a, e
    nop
    db $fc
    inc b
    db $db
    nop
    ld [hl], a
    nop
    db $e3
    add hl, bc
    ld a, [hl+]
    ld [bc], a
    ldh a, [$f5]
    ld a, a
    ld a, a
    inc de
    di
    ld [$42b7], sp
    ld c, l
    ld e, b
    ld e, b
    ld sp, hl
    ld sp, hl
    ld l, a
    ld l, a
    call nc, Call_023_7efd
    ld a, a
    ld b, a
    rst $00
    dec h
    reti


    ld bc, $9967
    sbc e
    db $fd
    db $fd
    rst $38
    rst $38
    add b
    adc a
    add b
    sub a
    add b
    sbc a
    add d
    cp l
    add b
    cp a
    add b
    sbc a
    ret nz

    db $db
    add hl, bc
    ld c, $00
    nop
    or a
    nop
    rst $38
    nop
    rst $28
    nop
    db $fd
    adc b
    ld [hl], a
    add hl, bc
    cp h
    nop
    ret nz

    jp $cdc0


    add hl, bc
    ld l, d
    jr nz, @-$7e

    adc c
    jp nz, $09c2

    xor h
    ld [de], a
    nop
    rst $38
    nop
    sbc $09
    or [hl]
    ld d, $00
    rst $38
    ld bc, $00be
    rst $38
    ld b, $e9
    ret nz

    ccf
    nop
    rst $38
    nop
    ld l, l
    nop
    ei
    inc bc
    jp $f303


    ld bc, $03f9
    di
    inc bc
    inc sp
    rlca
    daa
    rlca
    ld h, a
    inc bc
    di

jr_023_4e68:
    ld a, a
    ld a, a
    inc sp
    inc sp
    ld bc, $4081
    cp c
    nop
    push af
    db $10
    rst $28
    ld [bc], a
    dec a
    nop
    rrca
    rst $38
    rst $38
    rst $18
    rst $18
    rrca
    rrca
    inc bc
    jp $e707


    rlca
    scf
    add hl, bc
    cp h
    jr nz, jr_023_4e68

    rst $20
    and b
    and a
    pop hl
    ld l, [hl]
    ret nz

    ld c, a
    ldh [$7f], a
    ret nz

    ld e, l
    ret nz

    rst $08
    and h
    xor e
    ld bc, $11f1
    db $eb
    inc bc
    cp e
    inc bc
    ei
    rlca
    or a
    rrca
    cpl
    rrca
    ld l, a
    inc bc
    di
    add hl, bc
    jr nz, jr_023_4ec6

    ccf
    ccf
    add hl, bc
    ld d, d
    dec bc
    ldh a, [$09]
    ld b, d
    ld a, [hl+]
    rst $18

jr_023_4eb4:
    rra
    inc a
    ccf
    ldh [$dd], a
    ld [bc], a
    push af
    add hl, bc
    jr c, @+$06

    add hl, bc
    nop
    ccf
    ld bc, $cfce
    adc $ce

jr_023_4ec6:
    add hl, bc
    ld d, h
    jr nc, jr_023_4eb4

    db $eb
    ld l, e
    ld l, e
    add b
    add [hl]
    ldh a, [$f3]
    ldh [$e3], a
    ldh [$e7], a
    ret nz

    rst $00
    db $e4
    ld [$c7c0], a
    ldh [$e1], a
    nop
    ld a, a
    inc b
    db $eb

jr_023_4ee1:
    ld [bc], a
    db $fd
    ld [bc], a
    add hl, sp
    ld [bc], a
    ld a, l
    ld [$08f7], sp
    push hl

jr_023_4eeb:
    nop
    rst $38
    ld sp, hl
    ld sp, hl
    rst $08
    rst $08
    jp nz, $c242

    ld b, d
    and $26
    db $e4
    inc h
    db $ec
    ld l, h
    add sp, $68
    add hl, bc
    jr nc, jr_023_4f1c

    jr nz, jr_023_4ee1

    nop
    ld sp, hl
    jr jr_023_4eeb

    adc h
    ld [hl], e
    nop
    rst $18
    nop
    rst $08
    ld [$02f7], sp
    db $fd
    inc bc
    di
    inc bc
    db $db
    ld bc, $01f9
    ld l, l
    ld bc, $00fd
    ld a, h

jr_023_4f1c:
    nop
    ld hl, sp+$00
    call z, $cfc0
    and b
    and [hl]
    ret nz

    jp $f7f0


    ldh a, [$f7]
    db $f4
    ld a, [$d7d0]
    ldh [$e1], a
    inc bc
    ei
    inc hl
    db $d3
    ld bc, $03f9
    ld e, e
    dec b
    ld sp, hl
    ld bc, $01bd
    ld sp, hl
    ld bc, $09cd
    ret nz

    ld sp, $f043
    ld [hl], a
    ldh a, [$37]
    db $f4
    ld a, d
    ret nc

    ld d, a
    add hl, bc
    adc $3e
    rst $38
    inc bc
    cp $1e
    ldh a, [$30]
    ld [c], a
    ld l, l
    ret z

    rst $10
    add b
    sbc a
    ret z

    push af
    add b
    sbc e
    rst $38
    rst $38
    or d
    cp a
    add hl, bc
    db $10
    ld bc, $b909

jr_023_4f68:
    inc bc
    add hl, bc
    and b
    scf
    rst $28
    add hl, bc
    xor h
    jr nc, jr_023_4f72

    pop af

jr_023_4f72:
    ld bc, $13fb
    db $eb
    inc bc
    ei
    nop
    jr c, jr_023_4f80

    dec [hl]
    dec b
    ld h, l
    inc bc
    di

jr_023_4f80:
    nop
    rst $38
    nop
    ld a, l
    db $10
    rst $28
    nop
    rst $30
    nop
    ei
    inc h
    or h
    add hl, bc
    inc c
    jr nz, jr_023_4f90

jr_023_4f90:
    call z, $fc00
    nop
    ld a, a
    nop
    rst $18
    nop
    pop af
    nop
    ld h, b
    ret z

    ret z

    ld_long a, $fffa
    inc bc
    ld a, [$f01a]
    jr c, jr_023_4f68

    ld c, h
    ld c, b
    ld c, [hl]
    add hl, bc
    ld c, d
    ld [hl+], a

jr_023_4fac:
    rst $38
    rst $20
    ld a, [hl-]
    cp a
    nop
    ei
    ld h, b
    sbc l
    add hl, bc
    jr c, jr_023_4fbb

    ld sp, hl
    dec b
    ld [hl], e
    adc d

jr_023_4fbb:
    dec h
    sub $88
    ld a, c
    sub b
    ld [hl], c
    pop de
    ld [hl-], a
    adc $11
    db $ec
    ld [hl-], a
    rst $08
    ret nc

    or [hl]
    ld a, c
    sub h
    inc de
    adc b
    dec bc
    add l
    ld b, [hl]
    push bc
    inc a
    ld [hl], a
    ld b, $32
    ld b, e
    add $39
    ld [hl], d
    adc l
    jr nc, jr_023_4fac

    sbc b
    ld [hl], a
    sbc b
    ld a, a
    call nc, $e337
    inc hl
    ld hl, sp+$38
    ld h, e
    sbc h
    adc $31
    sbc b
    ld h, e
    call nc, Call_023_6d67
    ld l, [hl]
    cp l
    cp h
    sub a
    sub [hl]
    ld [hl+], a
    dec hl
    ld a, c
    dec b
    di
    adc d
    dec h
    ld d, $88
    cp c
    sub b
    or c
    ld d, c
    ld [hl-], a
    adc $91
    ld l, h
    add hl, bc
    adc a
    ld c, l
    add hl, bc
    ldh [rNR42], a
    xor $c0
    rst $08
    ldh [rIE], a
    ret nz

    db $dd
    add hl, bc
    db $ec
    jr nz, @+$01

    rst $38
    rst $30
    rst $30
    rst $38
    ld a, a
    ei
    ld a, e
    ld sp, hl
    ld a, c
    ld hl, sp+$38
    ei
    dec sp
    cp $3e
    ldh [$fe], a
    ldh [$7f], a
    ld hl, sp+$27
    db $ec
    inc hl
    ldh [$2f], a
    ld hl, sp+$3f
    ldh [$6f], a
    jp nz, Jump_000_09cd

    jr nc, jr_023_5039

jr_023_5039:
    ld [bc], a
    db $fd
    ld [bc], a
    db $dd
    nop
    rst $38
    nop
    ld a, $08
    db $f4
    nop
    db $fc
    nop
    rst $28
    nop
    ei
    nop
    rst $18
    nop
    rst $38
    nop
    jp hl


    ld [bc], a
    jp nz, Jump_023_5353

    ld a, [hl]
    ld a, [hl]
    ld bc, $01c7
    db $fd
    add c
    ld e, l
    ld bc, $13c9
    di
    rra
    rra
    rst $18
    rst $18
    rst $38
    rst $38
    ret nz

    rst $00
    nop
    ld e, $04
    ld a, e
    nop
    rst $30
    add hl, bc
    ld [$ef25], sp
    ld hl, $01dd
    db $fd
    ld bc, $07d9
    rst $30
    rrca
    ld a, a
    set 1, e
    ei
    rst $38
    nop
    ld d, l
    nop
    xor d
    add hl, bc
    ld h, b
    ld d, e
    cp [hl]
    add hl, bc
    ld h, b
    ld d, a
    ld a, [$6009]
    ld d, h
    and $28
    ld h, [hl]
    and c
    daa
    ldh [$93], a
    ld a, h
    db $10
    db $f4
    sbc h
    ld l, h
    jp $c023


    jr c, jr_023_50c2

    ld e, $22
    ld e, e
    ld b, d
    or e
    add [hl]
    ld h, a
    inc b
    ld [hl], a
    dec e
    ld a, [hl-]
    pop hl
    ld [c], a
    dec b
    ld a, [bc]
    rst $30
    ccf
    ld h, h
    and d
    add hl, bc
    add h
    ld e, b
    jp $02d2


    inc sp
    ld b, d
    cp e
    ld b, $f7
    inc b
    ld b, a
    dec e
    ld a, [de]
    add hl, bc

jr_023_50c2:
    sbc h
    ld d, b
    and $a8
    and $a1
    daa
    jr nz, jr_023_50de

    cp h
    ld d, b
    db $f4
    ld e, h
    ld l, h
    jp Jump_023_40a3


    add hl, bc
    adc a
    ld e, l
    add hl, bc
    ret nz

    inc a
    cp [hl]
    ld a, $fc
    ld a, h
    db $fc

jr_023_50de:
    db $fc
    or l
    or l
    di
    di
    db $e3
    db $e3
    db $e3
    ld h, e
    rst $38
    ld a, $46
    add hl, sp
    ld a, [c]
    adc l
    jr nc, jr_023_50fe

    sbc b
    or a
    sbc b
    cp a
    ld d, h
    scf
    db $e3
    and e
    ld a, b
    add hl, bc
    xor a
    ld c, l
    rst $30
    cp a

jr_023_50fd:
    db $e4

jr_023_50fe:
    and d
    add hl, bc
    call nz, Call_000_0958
    or b
    ld e, h
    ld b, a
    ld b, a
    ld l, l
    ld l, l

jr_023_5109:
    ld a, [hl-]
    ld a, [hl-]
    inc sp
    inc sp
    call $03cd
    inc bc
    add hl, bc
    db $fc
    ldh a, [rIE]
    add hl, bc
    ld d, b
    ld l, e
    rst $00
    jr c, jr_023_50fd

    dec e
    ld sp, hl
    ld b, $0c
    di
    dec b
    ld a, [$1fe0]
    ldh a, [rIF]
    adc c
    db $76
    inc a
    jp Jump_000_17e8


    jp $643c


    sbc e
    db $e3
    inc e
    ld b, a
    cp b
    ld [c], a
    dec e
    sub d
    ld l, l
    ld a, [hl-]
    push bc
    ld b, $f9
    inc hl
    call c, $3fc0
    jr c, jr_023_5109

    ret c

    daa
    push bc
    ld a, [hl-]
    xor c
    ld d, [hl]
    sbc c
    ld h, [hl]
    rlca
    ld hl, sp+$1a
    push hl
    ld h, c
    sbc [hl]
    sub c
    ld l, [hl]

jr_023_5152:
    and b

jr_023_5153:
    ld e, a
    and a
    ld e, b
    rst $28
    db $10
    ld [hl], e
    adc h
    or b
    ld c, a
    adc $31
    ld e, [hl]
    and c
    inc h
    db $db
    ld a, b
    add a
    or a
    ld c, b
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    jr jr_023_5153

    db $dd
    ld [hl+], a
    add sp, $17
    rst $20
    jr jr_023_5152

    jr nz, @+$20

    pop hl
    db $fc
    inc bc
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, e
    add h
    add h
    ld a, e
    jp nc, $b92d

    ld b, [hl]
    ld [hl], e
    adc h
    adc c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld a, a
    add b
    dec a
    jp nz, Jump_023_7f80

    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    add hl, bc
    ret nz

    ld h, a
    inc l
    ld [hl+], a
    add $18
    jr jr_023_51aa

    ret nc

    ld l, b
    push bc
    ld h, b
    ld l, b
    ld l, b
    rst $18
    inc hl
    add hl, de

jr_023_51aa:
    pop hl
    db $dd
    inc hl
    add sp, $10
    db $e4
    add hl, de
    call c, Call_000_1c21
    ldh [$f9], a
    ld bc, $7589
    ld h, a
    sbc e
    ld [hl], e
    add e
    ld a, d
    add e
    ld a, [hl-]
    jp Jump_023_7e82


    reti


    ld hl, $6393
    add hl, bc
    and b
    rst $38
    ld c, l
    nop
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

Call_023_51ff:
    ld a, [hl]
    ld a, a
    inc a
    dec a
    nop
    add e
    ld [$f0f7], sp
    add hl, bc
    ld l, a
    jr nz, jr_023_5215

    ret nz

    ld a, a
    inc l
    nop
    ld [bc], a
    ld c, d
    ld h, l
    ld h, l
    nop

jr_023_5215:
    ld bc, $0302
    ld [bc], a
    inc bc
    jr nz, jr_023_523d

    inc b
    dec b
    inc b
    dec b
    ld h, $27
    ld a, [hl+]
    dec hl
    ld h, l
    ld h, l
    rst $38
    ld c, d
    inc d
    rlca
    ld h, l
    ld h, l
    db $10
    ld de, $1312
    ld [de], a
    inc de
    jr nc, jr_023_5265

    inc d
    dec d
    inc d
    dec d
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld c, d

jr_023_523d:
    ld [de], a
    ld a, [bc]
    ld b, $07
    ld c, d
    ld [$0402], sp
    rrca
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    jr z, jr_023_5275

    ld b, h
    ld b, l
    inc l
    dec l
    ld c, d
    inc d
    ld [$1716], sp
    ld c, d
    jr z, jr_023_525a

    inc d
    rra

jr_023_525a:
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    jr c, jr_023_5299

    ld [de], a
    inc de
    inc a
    dec a
    ld c, d

jr_023_5265:
    inc d
    ld [$0e0c], sp
    inc b
    rrca
    ld c, b
    ld c, c
    ld c, d
    add h
    nop
    ld c, d
    ld c, d
    nop
    ld c, a
    dec b

jr_023_5275:
    inc b
    dec b
    ld c, [hl]
    cpl
    ld c, d
    inc d
    ld [$1e1c], sp
    inc d
    rra
    ld e, b
    ld e, c
    ld c, d
    and h
    nop
    ld c, d
    ld l, d
    nop
    ld e, a
    dec d
    inc d
    dec d
    ld e, [hl]
    ccf
    ld c, d
    ld [hl], h
    add hl, bc
    dec c

Jump_023_5292:
    ld c, d
    add h
    inc b
    ld l, d
    ld l, e
    ld l, d
    ld l, e

jr_023_5299:
    ld c, d
    ld c, d
    nop
    ld l, $4a
    sub e
    ld a, [bc]
    dec e
    ld c, d
    and h
    inc b
    ld l, h
    ld l, l
    ld l, h
    ld l, l
    ld c, d
    ld l, d
    nop
    ld a, $4a
    or e
    dec c
    ld c, d
    ld c, d
    nop
    ld c, d
    jp z, $4a02

    add h
    nop
    ld c, d
    jp nc, Jump_023_4a0e

    ld l, d
    nop
    ld c, d
    ld [$4a02], a
    and h
    nop
    ld c, d
    ld a, [c]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$4a09], sp
    ret z

    ld [bc], a
    ld l, d
    ld l, e
    ld c, d
    add h
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, d
    inc d
    ld [$1b1a], sp
    jr @+$1b

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, a
    ld c, d
    ld h, [hl]
    db $10
    ld c, d
    and h
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, d
    inc d
    ld a, [bc]
    inc c
    dec c
    ld l, d
    ld [hl], b
    ld h, h
    ld c, d
    add [hl]
    ld de, $4d4c
    ld c, d
    db $10
    db $10
    ld c, d
    ld [de], a
    inc c
    inc e
    dec e
    ld l, h
    ld [hl], c
    ld d, [hl]
    ld d, a
    ld c, d
    and [hl]
    db $10
    ld e, h
    ld e, l
    ld c, d
    jr nc, jr_023_531d

    ld c, d
    ld [de], a
    inc c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    ld c, d
    and a
    db $10
    ld c, h
    ld c, l
    ld b, [hl]
    ld b, a

jr_023_531d:
    ld d, h
    ld d, l
    ld c, d
    ld [de], a
    inc c
    ld c, d
    inc h
    nop
    inc [hl]
    dec [hl]
    ld c, d
    xor b
    ld [de], a
    ld c, d
    ld l, [hl]
    nop
    ld c, d
    ld [de], a
    ld a, [bc]
    nop
    ld [bc], a
    ld c, b
    ld h, l
    ld h, l
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    jr nz, jr_023_535e

    inc b
    dec b
    inc b
    dec b
    ld h, $27
    ld a, [hl+]
    dec hl
    ld h, l
    ld h, l
    rst $38
    ld c, b
    inc d
    rlca
    ld h, l
    ld h, l
    db $10
    ld de, $1312
    ld [de], a
    inc de

Jump_023_5353:
    jr nc, jr_023_5386

    inc d
    dec d
    inc d
    dec d
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld c, b

jr_023_535e:
    ld [de], a
    ld a, [bc]
    ld b, $07
    ld c, b
    ld [$0402], sp
    rrca
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    jr z, jr_023_5396

    ld b, h
    ld b, l
    inc l
    dec l
    ld c, b
    inc d
    ld [$1716], sp
    ld c, b
    jr z, jr_023_537b

    inc d
    rra

jr_023_537b:
    ld l, b
    ld l, c
    ld a, d
    ld a, e
    jr c, jr_023_53ba

    ld [de], a
    inc de
    inc a
    dec a
    ld c, b

jr_023_5386:
    inc d
    ld [$0e0c], sp
    inc b
    rrca
    ld c, d
    ld c, e
    ld c, b
    add h
    nop
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld c, a

jr_023_5396:
    dec b
    inc b
    dec b
    ld c, [hl]
    cpl
    ld c, b
    inc d
    ld [$1e1c], sp
    inc d
    rra
    ld e, d
    ld e, e
    ld c, b
    and h
    nop
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld e, a
    dec d
    inc d
    dec d
    ld e, [hl]
    ccf
    ld c, b
    ld [hl], h
    add hl, bc
    dec c
    ld c, b
    add h
    inc b
    ld l, d
    ld l, e

jr_023_53ba:
    ld l, d
    ld l, e
    ld c, b
    adc d
    nop
    ld l, $48
    sub e
    ld a, [bc]
    dec e
    ld c, b
    and h
    inc b
    ld l, h
    ld l, l
    ld l, h
    ld l, l
    ld c, b
    xor d
    nop
    ld a, $48
    or e
    dec c
    ld c, b
    adc d
    nop
    ld c, b
    jp z, Jump_023_4802

    add h
    nop
    ld c, b
    jp nc, Jump_023_480e

    xor d
    nop
    ld c, b
    ld [$4802], a
    and h
    nop
    ld c, b
    ld a, [c]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$4809], sp
    ret z

    ld [bc], a
    ld l, d
    ld l, e
    ld c, b
    add h
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, b
    inc d
    ld [$1b1a], sp
    jr @+$1b

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, a
    ld c, b
    ld h, [hl]
    db $10
    ld c, b
    and h
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, b
    inc d
    ld a, [bc]
    inc c
    dec c
    ld l, d
    ld [hl], b
    ld h, h
    ld c, b
    add [hl]
    ld de, $0e48
    ld [de], a
    ld c, b
    ld [de], a
    inc c
    inc e
    dec e
    ld l, h
    ld [hl], c
    ld d, [hl]
    ld d, a
    ld c, b
    and [hl]
    db $10
    ld c, b
    ld l, $12
    ld c, b
    ld [de], a
    inc c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    ld c, b
    and a
    db $10
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    ld d, h
    ld d, l
    ld c, b
    ld [de], a
    inc c
    ld c, b
    inc h
    nop
    inc [hl]
    dec [hl]
    ld c, b
    xor b
    ld [de], a
    ld c, b
    ld l, [hl]
    nop
    ld c, b
    ld [de], a
    ld a, [bc]
    nop
    ld [bc], a
    ld c, b
    ld h, l
    ld h, l
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    jr nz, jr_023_547d

    inc b
    dec b
    inc b
    dec b
    ld h, $27
    ld a, [hl+]
    dec hl
    ld h, l
    ld h, l
    rst $38
    ld c, b
    inc d
    rlca
    ld h, l
    ld h, l
    db $10
    ld de, $1312
    ld [de], a
    inc de
    jr nc, jr_023_54a5

    inc d
    dec d
    inc d
    dec d
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld c, b

jr_023_547d:
    ld [de], a
    ld a, [bc]
    ld b, $07
    ld c, b
    ld [$0402], sp
    rrca
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    jr z, jr_023_54b5

    ld b, h
    ld b, l
    inc l
    dec l
    ld c, b
    inc d
    ld [$1716], sp
    ld c, b
    jr z, jr_023_549a

    inc d
    rra

jr_023_549a:
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    jr c, jr_023_54d9

    ld [de], a
    inc de
    inc a
    dec a
    ld c, b

jr_023_54a5:
    inc d
    ld [$0e0c], sp
    inc b
    rrca
    ld c, d
    ld c, e
    ld c, b
    add h
    nop
    ld c, b
    ld c, d
    nop
    ld c, a
    dec b

jr_023_54b5:
    inc b
    dec b
    ld c, [hl]
    cpl
    ld c, b
    inc d
    ld [$1e1c], sp
    inc d
    rra
    ld e, d
    ld e, e
    ld c, b
    and h
    nop
    ld c, b
    ld l, d
    nop
    ld e, a
    dec d
    inc d
    dec d
    ld e, [hl]
    ccf
    ld c, b
    ld [hl], h
    add hl, bc
    dec c
    ld c, b
    add h
    inc b
    ld l, d
    ld l, e
    ld l, d
    ld l, e

jr_023_54d9:
    ld c, b
    ld c, d
    nop
    ld l, $48
    sub e
    ld a, [bc]
    dec e
    ld c, b
    and h
    inc b
    ld l, h
    ld l, l
    ld l, h
    ld l, l
    ld c, b
    ld l, d
    nop
    ld a, $48
    or e
    dec c
    ld c, b
    ld c, d
    nop
    ld c, b
    jp z, Jump_023_4802

    add h
    nop
    ld c, b
    jp nc, Jump_023_480e

    ld l, d
    nop
    ld c, b

Call_023_54ff:
    ld [$4802], a
    and h
    nop
    ld c, b
    ld a, [c]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$4809], sp
    ret z

    ld [bc], a
    ld l, d
    ld l, e
    ld c, b
    add h
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, b
    inc d
    ld [$1b1a], sp
    jr @+$1b

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, a
    ld c, b
    ld h, [hl]

Call_023_5524:
    db $10
    ld c, b
    and h
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, b
    inc d
    ld a, [bc]
    inc c
    dec c
    ld l, d
    ld [hl], b
    ld h, h
    ld c, b
    add [hl]
    ld de, $0e48
    ld [de], a
    ld c, b
    ld [de], a
    inc c
    inc e
    dec e
    ld l, h
    ld [hl], c
    ld d, [hl]
    ld d, a
    ld c, b
    and [hl]
    db $10
    ld c, b
    ld l, $12
    ld c, b
    ld [de], a
    inc c
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    ld c, b
    and a
    db $10
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, a
    ld d, h
    ld d, l
    ld c, b
    ld [de], a
    inc c
    ld c, b
    inc h
    nop
    inc [hl]
    dec [hl]
    ld c, b
    xor b
    ld [de], a
    ld c, b
    ld l, [hl]
    nop
    ld c, b
    ld [de], a
    ld a, [bc]
    nop
    ld [$2222], sp
    rst $38
    ld a, [c]
    inc bc
    inc bc
    rlca
    rlca
    ld [$0908], sp
    ld [$1413], sp
    ld [hl+], a
    rst $38
    ld a, [c]
    adc a
    adc a
    ld a, b
    ld a, d
    rlca
    ld [$50af], sp
    db $fd
    ld [hl+], a
    rst $38
    di
    adc a
    adc a
    rst $38
    rst $38
    ld de, $9f15
    ld a, a
    ld a, c
    rra
    ld bc, $2201
    rst $38
    ldh a, [$e0]
    ldh [$fe], a
    cp $d3
    db $eb
    add c
    add c
    rst $38
    rst $38
    ret nz

    ret nz

    or a
    or a
    ld e, b
    ld e, e
    ld l, [hl]
    ld l, a
    dec a
    ccf
    ld a, [$fcfb]
    db $fd
    sbc e
    db $db
    inc bc
    inc bc
    db $ed
    db $ed
    ld a, [de]
    jp c, $f474

    cp [hl]
    cp $5f
    rst $18
    ccf
    cp a
    reti


    db $db
    add b
    add b
    ld [hl+], a
    rst $38
    ldh a, [rTAC]
    rlca
    ld a, a
    ld a, a
    set 2, a
    ld [hl+], a
    inc a
    nop
    ld [hl+], a

jr_023_55d3:
    rst $38
    ld a, [c]

jr_023_55d5:
    pop af
    pop af
    rst $38
    rst $38
    adc b
    xor b
    ld sp, hl
    cp $9e
    sbc b
    ld [hl+], a
    ld [hl], b
    inc b
    ld e, $5e
    ldh [rNR10], a
    push af
    ld a, [bc]
    cp a
    ld [hl+], a
    rst $38
    di
    ret nz

    ret nz

    ld h, b
    ld h, b

jr_023_55f0:
    and b
    jr nz, jr_023_55d3

    jr nz, jr_023_55d5

    jr nz, jr_023_5611

    dec e
    dec bc
    ld [$0a09], sp
    add hl, bc
    ld a, [bc]
    dec c
    inc c
    dec c
    ld c, $19
    ld a, [de]
    inc de
    inc d
    ldh [$2f], a
    db $e3
    dec hl
    ld [hl], c
    or c
    ld h, b
    jr z, jr_023_55f0

    add hl, hl
    ld h, b

jr_023_5611:
    xor b
    push af
    dec [hl]
    and $2e
    rlca
    rst $30
    and $f6
    ld l, h
    ld l, h
    and h
    or l
    ld h, h
    ld [hl], l
    and h
    or h
    ld l, [hl]
    ld l, [hl]
    rst $20
    rst $30
    ld [hl+], a
    and $ff
    dec c
    ldh [$ef], a
    ld h, e
    ld l, e
    ld sp, $2031
    xor b
    ld hl, $20a9
    jr z, jr_023_56ac

    ld [hl], l
    and $ee
    ld de, $1916
    ld a, [de]
    dec de
    jr jr_023_564c

    inc c
    ld [de], a
    dec d
    ld de, $101e
    ld d, $13
    inc d
    ld h, a

jr_023_564b:
    adc b

jr_023_564c:
    rst $38
    nop
    db $dd
    ld [bc], a
    and $18
    cp a
    ld b, b
    or a
    ld b, b
    rst $18
    rra
    or b
    jr nc, jr_023_564b

    inc e
    rst $30
    rra
    or a
    ld e, a
    ld [hl], l
    dec d
    ld [hl], $de
    push de
    dec [hl]
    cp $fe
    dec b
    dec b

jr_023_566a:
    nop
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, b
    ld c, b
    add b
    add b
    ld c, b
    ld c, b
    adc b
    adc b
    ld c, b
    ld c, b
    ld c, $8e
    db $fd
    db $fd
    rst $38
    rst $38
    jr nz, jr_023_56a2

    jr nz, jr_023_56a4

    nop
    nop
    ld [hl+], a
    ld b, [hl]
    db $10
    ldh a, [$f3]
    ld a, a
    ld a, a
    rst $38
    rst $38
    add d
    add d
    add d
    add d
    ld [bc], a
    ld [bc], a
    add b
    add b
    add d
    add d
    nop
    sbc b
    ld [hl+], a
    ld [hl-], a
    db $10
    ld [de], a
    ld [de], a
    db $10
    db $10

jr_023_56a2:
    db $10
    db $10

jr_023_56a4:
    ld bc, $1201
    ld [de], a
    rrca
    xor b
    xor $f9

jr_023_56ac:
    db $ed
    ld [$a8ae], a
    ld l, h
    ld l, e
    xor e
    cp h
    ld a, a
    ld a, a
    and b
    and b
    and $11
    rst $38
    nop
    dec sp
    ret nz

    ld h, a
    sbc b
    db $fd
    ld [bc], a
    db $ed
    ld [bc], a
    ei
    ld hl, sp+$05
    inc b
    jr nz, jr_023_566a

    and b
    jr nz, jr_023_56ef

    sub d
    db $10
    sub b
    db $10
    cp b
    ld e, b
    add sp, $08
    ldh [rP1], a
    inc de
    inc d
    ld [de], a
    dec d
    inc de
    inc d
    add hl, de
    ld a, [de]
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    inc b
    dec b
    rlca
    rlca
    ldh [$27], a
    ld l, a
    xor a
    jr nz, jr_023_574d

    push af
    dec [hl]

jr_023_56ef:
    ld a, [$df3a]
    rra
    db $fc
    nop
    rla
    ret c

    rlca
    rst $20
    rst $38
    rst $38
    rlca
    rlca
    ld d, a
    ld d, a
    xor a
    xor a
    cp $ff
    ld a, e
    inc b
    rlca
    ld [hl+], a
    ld h, c
    ld bc, $d422
    rrca
    ld a, [bc]
    rst $20
    rst $28
    rst $28
    ldh [$e0], a

jr_023_5712:
    dec [hl]
    dec [hl]
    ld [$3fea], a
    rst $38
    jp $c03c


    nop
    rlca
    db $f4
    rst $20
    db $f4
    ld l, [hl]
    ld l, l
    and [hl]
    or h
    ld h, a
    ld [hl], h
    and [hl]
    or l
    ld l, a
    ld l, h
    rst $20
    db $f4
    ld e, b
    cp b
    sub b
    ld d, b
    ret nc

    db $10
    ret nc

    db $10
    ld d, b
    sub b
    ld [hl+], a
    ld d, $20
    adc b
    ld l, b
    ld [hl+], a
    halt
    ld [hl+], a
    ld [hl-], a
    db $10
    rst $30
    ld [hl+], a
    jr z, jr_023_5768

    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    ccf
    ccf

jr_023_574d:
    cp a
    cp a
    ld [hl+], a
    ld [hl-], a
    jr nz, jr_023_5712

    cp a
    rst $20
    rst $20
    call $cdcd
    call Call_023_6969
    ld l, c
    ld l, c
    add hl, sp
    add hl, sp
    add hl, hl
    add hl, hl
    dec l
    dec l
    db $fd
    db $fd
    db $fd
    db $fd

jr_023_5768:
    ld a, l
    ld a, l
    ld a, b
    ld a, b
    ld a, l
    ld a, l
    ld [hl], l
    ld [hl], l
    rst $20
    rst $20
    rst $28
    rst $28
    ld [hl+], a
    ld a, [$40f8]
    ld b, b
    ld [$2208], sp
    ldh a, [rIE]
    inc bc
    ld bc, $0601
    ld b, $0c
    inc c
    dec d
    dec d
    dec a
    dec a
    ld [hl+], a
    rst $38
    ld a, [c]
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, b
    ld a, b
    cp $fe

jr_023_5796:
    ld c, d
    ld c, d
    cp a
    cp a
    ld l, c
    ld l, c
    db $dd
    db $dd
    ld e, e
    ld e, e
    ld a, [hl]
    ld a, [hl]
    or d
    or d
    ld h, $26
    inc b
    inc b
    rst $28
    rst $28
    call c, $bedc

jr_023_57ad:
    cp [hl]
    or $f6
    db $ec
    db $ec
    adc [hl]
    adc [hl]
    ld de, $8011
    add b
    ld d, d
    ld d, d
    add l

jr_023_57bb:
    add l
    ld [de], a
    ld [de], a
    ld c, $0e
    ld e, b
    ld e, b
    ld bc, $2201
    ld c, b
    db $10
    db $e4
    db $e4
    inc d

jr_023_57ca:
    inc d
    ld h, [hl]

jr_023_57cc:
    ld h, [hl]
    sub b
    sub b
    ld b, h
    ld b, h
    db $10
    db $10
    ld b, h
    ld b, h
    nop
    nop
    ld [$4108], sp
    ld b, c
    nop
    nop
    ld c, b
    ld c, b
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld l, [hl]
    ld [hl+], a
    jp nz, $a0c2

    and b
    nop
    nop
    ld [hl+], a
    sbc $22
    add b
    add b
    rlca
    db $e4
    cp $fd
    inc b
    ld b, $57
    ld d, h
    xor a
    xor h
    ei
    ld hl, sp-$01
    nop
    jp hl


    add hl, bc
    ret z

    jr z, jr_023_57ca

    jr c, jr_023_57cc

    jr z, jr_023_5796

    ld [hl], b
    sub b
    ld d, b
    jr nc, jr_023_57bb

    jr nz, jr_023_57ad

    ldh [$e0], a
    db $ed
    db $ed
    rst $20
    rst $20
    push hl
    push hl
    push hl
    push hl
    ld [hl+], a
    ld e, h
    jr nz, @-$0f

    rst $28
    xor l
    xor l
    cp a
    cp a
    ld l, l
    ld l, l
    rst $08
    rst $08
    rst $08
    rst $08
    call $c8cd
    ret z

    jp hl


    jp hl


    ld l, c
    ld l, c
    ld [hl+], a
    jr nz, jr_023_5861

    ld c, h
    ld c, h
    and l
    and l

jr_023_5835:
    ld c, b
    ld c, b
    and c
    and c
    ld b, b
    ld b, b
    nop
    nop
    ld [hl+], a
    jr nc, jr_023_5870

    add l
    add l
    db $db
    db $db

jr_023_5844:
    adc l
    adc l
    ld b, b
    ld b, b
    jr z, @+$2a

    nop
    nop
    and b
    and b
    add h
    add h
    ld d, c
    ld d, c
    ld d, d
    ld d, d
    xor h
    xor h
    ld [hl+], a
    adc h
    jr nz, jr_023_5844

    ld [$4848], a
    ld h, $26
    ret z

    ret z

jr_023_5861:
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    sub h
    sub h
    ld b, d
    ld b, d
    ld [c], a
    ld [c], a
    ld c, b
    ld c, b
    ld [hl+], a

jr_023_5870:
    ld e, [hl]
    jr nc, jr_023_5895

    cp $f4
    db $db
    db $db
    push hl
    push hl
    ld e, h
    ld e, h
    ld c, e
    ld c, e
    ld de, $0a11
    ld a, [bc]
    ld [hl+], a
    ld h, d
    ld [bc], a
    ld [hl+], a
    and b
    ld [hl-], a
    inc bc
    ld [hl+], a
    xor b
    inc sp
    ldh [rNR43], a
    or b
    inc sp
    ret nz

    ld [hl+], a
    cp b
    inc sp
    cp [hl]
    cp [hl]

jr_023_5895:
    ld l, h
    ld l, h
    call z, $c422
    ld sp, $c8c8
    add sp, -$18
    ld l, b
    ld l, b
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld [hl], h
    ld [hl], h
    and $e6
    xor $ee
    ld [hl+], a
    ld l, d
    jr nz, jr_023_5835

    add b
    add hl, hl
    add hl, hl
    ld [hl+], a
    adc b
    ld a, [hl+]

jr_023_58bb:
    ld [hl+], a

jr_023_58bc:
    db $fc
    or $ff

jr_023_58bf:
    nop
    rst $18
    jr nz, jr_023_58bb

    dec b
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    rst $00
    jr z, jr_023_58bc

    db $10
    rst $38
    nop
    ld [hl+], a
    db $10
    ld b, b
    cp l
    ld [bc], a
    cp a
    ld b, b
    ld a, a
    add b
    db $e3
    inc d
    rst $30
    ld [$1022], sp
    ld c, [hl]
    ld [hl+], a
    ld [bc], a
    ld c, d
    cp $fe
    add hl, hl
    jr c, jr_023_5948

    dec de
    ld hl, sp+$03
    cp a
    ld b, b
    ld a, [bc]
    push af
    db $e3
    inc e
    rst $30
    ld [$6464], sp
    nop
    sub c
    ld de, $22ee
    db $10
    ld b, b
    ld [hl+], a
    ld a, [bc]
    ld b, d
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    and l
    ld e, d
    and a
    ld e, b
    nop
    and $08
    ret z

    jr c, jr_023_5947

    ld [hl+], a
    nop
    ld b, d
    and e
    ld e, h
    cp l
    ld b, d
    jr jr_023_58bf

    ld b, b
    ld e, d
    add $c6
    ld a, h
    ld a, h
    jp $80c3


    sbc a
    add a
    xor b
    sbc a
    and b
    rst $08
    ret nc

    ret z

    push de
    sbc l
    and d
    sub a
    xor b
    cp a
    ret nz

    sbc a
    and b
    sbc h
    and d
    ld e, a
    ld h, b
    ld e, e
    ld h, h
    cp $c1
    cp a
    add b
    ld [hl+], a
    sub b
    ld c, h
    cp a
    add b
    and a
    ret c

    adc b
    push af
    sbc l
    and d

jr_023_5947:
    ld c, a

jr_023_5948:
    ld d, b
    call z, $e0d3
    rst $20
    rst $38
    rst $38
    cp a
    add b
    rst $18
    ldh [$dd], a
    ldh [$ce], a
    pop de
    rst $08
    ret nc

    set 2, h
    sbc $e1
    sbc l
    and d
    ld [hl+], a
    or b
    ld c, h
    ld a, $3e
    jp $01c3


    ld sp, hl
    pop hl
    dec d
    ld sp, hl
    dec b
    di
    dec bc
    inc de
    xor e
    cp c
    ld b, l
    jp hl


    dec d
    db $fd
    inc bc
    ld sp, hl
    dec b
    add hl, sp
    ld b, l
    ld a, [$da06]
    ld h, $7f
    add e
    db $fd
    ld bc, $01fd
    push hl
    dec de
    ld de, $b9af
    ld b, l
    ld a, [c]
    ld a, [bc]
    inc sp
    sla d
    ret nz

    db $10
    ld [hl+], a
    ldh a, [$4e]
    ei
    rlca
    cp e
    rlca
    ld a, [c]
    ld a, [bc]
    ldh a, [$08]
    jp nc, Jump_023_7a2a

    add [hl]
    cp c
    dec b
    ld a, l
    ld a, l
    or $ea
    cp h
    add c
    or b
    adc e
    sbc l
    and a
    db $ed
    sub $fa
    add $a8
    sub l
    ld e, $1e
    db $e4
    inc d
    ld d, e
    xor d
    jp hl


    or h
    rra
    ld d, d
    jp z, $3f73

    call c, Call_000_1e49
    cp h
    add d
    sub e
    ldh [$94], a
    pop af
    adc c
    sub l
    ld e, l
    ld a, [hl]
    db $e3
    rst $18
    call c, $c1e3
    push bc
    or a
    cp b
    ld a, a
    add b
    ld [$3115], a
    ld b, d
    cp e
    ld [hl], $38
    ld b, e
    ld h, d
    xor $9c
    sbc h
    or h
    ld c, b
    ld e, e
    and b
    pop af
    ld b, $c3
    ld l, $74
    sbc l
    or a
    ld e, c
    add sp, $1b
    and c
    ld d, h
    ld e, d
    ld h, l
    sub a
    ld e, b
    ld c, e
    xor h
    and a
    ret nc

    ld a, d
    ld c, l
    cpl
    ret z

    ei
    ld [hl], h
    daa
    ld a, b
    ld a, [c]
    ld a, [bc]
    ld c, l
    add d
    ld d, e
    call nz, Call_023_5524
    db $76
    ld hl, sp-$74
    ld a, l
    ld [hl], c
    adc a
    xor $11
    jp c, $ffe5

    nop
    xor l
    ld d, d
    rst $00
    ld [$ddea], sp
    pop hl
    ld c, $8b
    cp h
    inc sp
    db $fc
    ld [hl+], a
    ld l, [hl]
    ld bc, $1022
    ld b, b
    ld d, l
    nop
    xor d
    nop
    nop
    sbc a
    sbc a
    rst $38
    rst $38
    sub $d6
    ld l, d
    ld l, d
    ld [hl+], a
    ld [hl-], a
    stop
    rst $38
    rst $38
    nop
    rst $10
    jr z, @+$01

    rst $38
    db $d3
    db $d3
    ld l, a
    ld l, a
    ld [hl+], a
    add $56
    ld [hl+], a
    and $ff
    dec c
    ret nz

    ld h, a
    add b
    ret z

    add b
    rst $10
    sbc a
    ld h, b
    rst $38
    sbc $ff
    rst $38
    pop af
    ld sp, $aee0
    ld bc, $78f8
    ld [hl], h
    inc a
    cp d
    inc e
    reti


    sbc h
    ld e, d
    sbc h
    ld e, d
    cp h
    ld [hl-], a
    cp b
    ld b, [hl]
    add a
    sbc b
    adc a
    inc de
    adc $d6
    adc $96
    adc $a6
    rst $08
    rst $30
    rst $00
    adc e
    add b
    rst $00
    ld b, c
    sbc l
    inc hl
    ld h, e
    ld a, a
    cp a
    ld a, a
    sbc [hl]
    ld a, $c1
    nop
    ld a, d
    add b
    add h
    nop
    ld hl, sp+$22
    and b
    rst $38
    ld c, l
    ld [hl+], a
    sbc a
    ld l, a
    ld c, l
    ld [hl+], a
    rst $38
    ld l, a
    ld c, l
    ld [hl+], a
    ld e, a
    ld a, a
    ld c, l
    ld [hl+], a
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    dec c
    daa
    dec c
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0d09], sp
    nop
    ld bc, $0dff
    inc d
    rlca
    dec c
    nop
    ld bc, $1110
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_023_5add

    dec c
    rrca
    rrca
    inc bc
    ld a, [bc]
    dec bc
    inc c
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    rrca
    jr nz, jr_023_5af3

    dec c
    rrca
    rrca
    inc bc
    ld a, [de]
    dec de
    inc e
    ld e, h
    ld e, l
    ld e, h
    ld e, l

jr_023_5add:
    rra
    jr nc, jr_023_5b11

    dec c
    rrca
    rrca
    inc bc
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld c, d
    ld b, c
    ld b, b
    ld d, c
    ld [hl+], a
    inc hl
    dec sp
    dec c
    rrca
    rrca
    inc bc
    daa

jr_023_5af3:
    ld [hl-], a
    inc sp
    ld c, e
    ld b, [hl]
    ld b, d
    ld d, d
    ld [hl-], a
    inc sp
    dec c
    and b
    ld [bc], a
    dec c
    sub h
    ld c, $24
    dec h
    inc h
    dec h
    ld c, h
    ld b, c
    ld b, h
    ld b, l
    ld b, h
    ld c, [hl]
    dec c
    db $10
    inc c
    jr z, jr_023_5b39

    daa

jr_023_5b11:
    jr z, @+$2b

    daa
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld c, d
    ld b, c
    ld d, a
    ld e, b
    ld b, d
    ld c, a
    dec c
    pop hl
    nop
    dec c
    inc d
    ld [$3938], sp
    ld a, $37
    ld c, b
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld b, d
    ld b, e
    ld e, c
    ld e, d
    ld b, d
    ld b, e
    ld b, h
    ld c, [hl]
    jr c, @+$3b

    dec c

jr_023_5b39:
    inc d
    ld [$3736], sp
    jr c, jr_023_5b78

    ld c, c
    ld b, e
    ld b, [hl]
    ld b, a
    dec c
    ld h, $15
    ld d, b
    ld [hl], $37
    dec c
    inc d
    ld a, [bc]
    ld d, e
    ld d, h
    dec c
    adc d
    nop
    inc h
    dec h
    dec c
    ld b, [hl]
    ld [de], a
    ld [hl+], a
    inc hl
    dec c
    ld [de], a
    inc c
    ld d, l
    ld d, [hl]
    dec c
    xor d
    nop
    inc [hl]
    dec [hl]
    dec c
    ld h, [hl]
    ld [de], a
    ld [hl-], a
    inc a
    dec c
    ld [de], a
    ld a, [bc]
    cpl
    ld l, $22
    inc hl
    dec c
    jp z, Jump_000_0d01

    add a
    ld [de], a
    ld c, [hl]
    inc h
    dec a
    cpl

jr_023_5b78:
    ld l, $0d
    inc d
    ld [$2f2e], sp
    ld [hl-], a
    inc sp
    ld c, l
    dec c
    ld h, $15
    ld b, c
    ld c, a
    inc [hl]
    dec [hl]
    ld l, $2f
    dec c
    inc d
    ld [$2d2c], sp
    dec c
    ld c, b
    inc d
    dec c
    ld c, b
    db $10
    ld c, h
    ld b, d
    dec c
    call z, Call_000_0d00
    inc d
    ld [$2b2a], sp
    dec c
    ld l, b
    inc d
    dec c
    ld l, b
    db $10
    dec c
    and h
    ld de, $0d50
    inc d
    ld [$0200], sp
    dec c
    daa
    dec c
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0d09], sp
    nop
    ld bc, $0dff
    inc d
    rlca
    dec c
    nop
    ld bc, $1110
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_023_5bea

    dec c
    rrca
    rrca
    inc bc
    ld a, [bc]
    dec bc
    inc c
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    rrca
    jr nz, jr_023_5c00

    dec c
    rrca
    rrca
    inc bc
    ld a, [de]
    dec de
    inc e
    ld e, h
    ld e, l
    ld e, h
    ld e, l

jr_023_5bea:
    rra
    jr nc, jr_023_5c1e

    dec c
    rrca
    rrca
    inc bc
    ld a, [hl-]
    ld [hl+], a
    inc hl
    ld c, d
    ld b, c
    ld b, b
    ld d, c
    ld [hl+], a
    inc hl
    dec sp
    dec c
    rrca
    rrca
    inc bc
    daa

jr_023_5c00:
    ld [hl-], a
    inc sp
    ld c, e
    ld b, [hl]
    ld b, d
    ld d, d
    ld [hl-], a
    inc sp
    dec c
    and b
    ld [bc], a
    dec c
    sub h
    ld c, $24
    dec h
    inc h
    dec h
    ld h, b
    ld h, c
    ld b, h
    ld b, l
    ld b, h
    ld c, [hl]
    dec c
    db $10
    inc c
    jr z, jr_023_5c46

    daa

jr_023_5c1e:
    jr z, @+$2b

    daa
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld h, d
    ld h, e
    ld d, a
    ld e, b
    ld b, d
    ld c, a
    dec c
    pop hl
    nop
    dec c
    inc d
    ld [$3938], sp
    ld a, $37
    ld c, b
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld b, d
    ld b, e
    ld e, c
    ld e, d
    ld b, d
    ld b, e
    ld b, h
    ld c, [hl]
    jr c, jr_023_5c7e

    dec c

jr_023_5c46:
    inc d
    ld [$3736], sp
    jr c, jr_023_5c85

    ld c, c
    ld b, e
    ld b, [hl]
    ld b, a
    dec c
    ld h, $15
    ld d, b
    ld [hl], $37
    dec c
    inc d
    ld a, [bc]
    ld d, e
    ld d, h
    dec c
    adc d
    nop
    inc h
    dec h
    dec c
    ld b, [hl]
    ld [de], a
    ld [hl+], a
    inc hl
    dec c
    ld [de], a
    inc c
    ld d, l
    ld d, [hl]
    dec c
    xor d
    nop
    inc [hl]
    dec [hl]
    dec c
    ld h, [hl]
    ld [de], a
    ld [hl-], a
    inc a
    dec c
    ld [de], a
    ld a, [bc]
    cpl
    ld l, $22
    inc hl
    ld c, h
    ld b, c
    dec c

jr_023_5c7e:
    dec b
    ld de, $060d
    db $10
    ld c, [hl]
    inc h

jr_023_5c85:
    dec a
    cpl
    ld l, $0d
    inc d
    ld [$2f2e], sp
    ld [hl-], a
    inc sp
    ld c, l
    dec c
    ld h, $15
    ld b, c
    ld c, a
    inc [hl]
    dec [hl]
    ld l, $2f
    dec c
    inc d
    ld [$2d2c], sp
    dec c
    ld c, b
    inc d
    dec c
    ld c, b
    db $10
    ld c, h
    ld b, d
    dec c
    call z, Call_000_0d00
    inc d
    ld [$2b2a], sp
    dec c
    ld l, b
    inc d
    dec c
    ld l, b
    db $10
    dec c
    and h
    ld de, $0d50
    inc d
    ld [$0800], sp
    ld c, $ff
    rst $38
    jp hl


    jp hl


    call $efcd
    rst $28
    cp a
    cp a
    add a
    add a
    call z, $dbcc
    db $db
    rst $38
    rst $38
    cp a
    cp a
    sbc l
    sbc l
    add hl, bc
    add hl, bc
    add hl, de
    add hl, de
    cp e
    cp e
    rst $38
    rst $38
    rst $28
    rst $28
    ld [hl], e
    ld [hl], e
    jr c, jr_023_5d1a

    xor h
    xor h
    ld e, $1e
    inc c
    inc c
    ld b, b
    ld b, b
    xor c
    xor c
    ld d, h
    ld d, h
    ld e, a
    ld e, a
    ccf
    ccf
    nop
    nop
    inc e
    inc e
    ld a, $3e
    inc e
    inc e
    and d
    and d
    ld d, c
    ld d, c
    xor d

Call_023_5cff:
    xor d
    ld e, l
    ld e, l
    xor d
    xor [hl]
    ld e, e
    ld e, a
    or l
    or c
    ld l, c
    ld h, l
    cp e
    and a
    ld a, c
    ld h, l
    xor d
    xor d
    ld d, l
    ld d, l
    ld c, $50
    ld [$a5b9], sp
    ld [hl], c
    ld l, c
    and b

jr_023_5d1a:
    cp b
    ld h, c
    ld e, c
    ret nz

    db $fc
    ret nz

    ld hl, sp-$13
    db $ed
    ld e, a
    ld e, a
    xor d
    xor d
    call $8ccd
    sbc h
    call nz, $c4dc
    call c, $dcc0
    db $ec
    db $ec
    rra
    rra
    and d
    and d
    ld e, l
    ld e, l
    xor d
    cp d
    dec a
    dec l
    and $d6
    ld b, a
    ld [hl], a
    ld [hl], h
    ld [hl], h
    db $fc
    db $fc
    xor d
    xor d
    ld d, a
    ld d, a
    xor a
    xor a
    ld c, $52
    ld b, $2a
    ld a, [hl+]
    ld d, l
    ld d, l
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    dec d
    dec d
    and b
    and b
    ld c, $52
    ld [bc], a
    add d
    add d
    ld bc, $8201
    add d
    ld c, $52
    ld [bc], a
    add b
    add b
    nop
    nop
    add b
    add b
    ld c, $52
    nop
    ld d, b
    ld d, b
    ld c, $50
    nop
    and d
    and d
    ld b, b
    ld b, b
    ld c, $50
    ld [bc], a
    ld c, $ce
    nop
    ld e, a
    ld e, a
    cp a
    cp a
    ld c, $6e
    nop
    ld c, $52
    ld b, $ae
    xor [hl]
    ld c, $52
    ld b, $0e
    ret nz

    rst $38
    dec l
    ld h, c
    sbc [hl]
    db $fd
    ld [bc], a
    cp $01
    ld a, $c1
    sbc a
    ld h, b
    cp a
    ld b, b
    ld e, $e1
    ld c, c
    or [hl]
    sbc $21
    sbc $21
    add $39
    ld de, $7bee
    add h
    dec sp
    call nz, $a659
    ret nz

    ccf
    ld [hl], e
    adc h
    rst $30
    ld [$08f7], sp
    ld [hl], a
    adc b
    rlca
    ld hl, sp-$6f
    ld l, [hl]
    adc $31
    ld b, $f9
    rst $30
    ld [$0cf3], sp
    ei
    inc b
    ei
    inc b
    ld a, [$f805]
    rlca
    di
    inc c
    nop
    rst $38
    ldh [$e0], a
    ld c, [hl]
    ld e, [hl]
    sub b
    ld l, a
    ld c, $46
    ld d, $da
    jp c, Jump_023_6808

    add [hl]
    db $76
    inc bc
    di
    ld h, e
    sbc a
    ld sp, $71cd
    adc c
    db $e3
    rra
    ld c, $60
    inc e
    di
    dec bc
    pop hl
    dec e

Call_023_5df7:
    ld sp, hl
    ld bc, $2dd1
    pop hl
    add hl, de
    ld sp, hl
    ld bc, $0df1
    ld bc, $80fd
    cp a
    add h
    adc e
    ret


    sub $8b
    or h
    pop hl
    xor $c7
    ret c

    adc a
    or b
    and h
    sbc e
    rst $28
    db $10
    rst $20
    jr jr_023_5e7b

    sbc h
    ld [$bdf7], sp
    ld b, d
    sbc l
    ld h, d
    inc c
    di
    ret nz

    ccf
    di
    adc h
    rst $30
    adc b
    rst $30
    adc b
    rst $20
    ret c

    jp $90f8


    ld [c], a
    call c, $fffc
    rst $38
    rst $00
    jr c, @-$63

    ld h, h
    cp e
    ld b, h
    cp l
    ld b, d
    inc h
    db $d3
    ld b, h
    db $e3
    ld l, e
    ld l, l
    rst $38
    rst $38
    ld c, $40
    inc e
    jp nz, $d122

    ld hl, $39c1
    ld de, $71ed
    adc c
    inc bc
    ei
    ld b, a
    and a
    pop bc
    add hl, sp
    ld c, $60
    inc d
    inc b
    ld sp, hl
    sub b
    ld c, c
    jr nz, jr_023_5e87

    db $f4
    db $f4
    pop af
    add hl, bc
    ld c, $b2
    ld [de], a
    ld h, e
    sbc a
    rlca
    rst $38
    rrca
    rst $08
    rst $30
    rst $30
    xor a
    xor a
    ld e, b
    ld e, b
    cp b
    cp e
    ld [hl], d
    ld [hl], l
    jp $8fdc


    or b
    sbc [hl]

jr_023_5e7b:
    and c
    adc c
    or [hl]
    rst $38
    rst $38
    ret nz

    pop hl
    nop
    inc de
    ld de, $1bae

jr_023_5e87:
    db $e4
    ld c, $5a
    ld [de], a
    or e
    adc h
    sub a
    xor b
    add l
    cp d
    jp $87cc


    cp b
    add c
    cp [hl]
    adc [hl]
    sub c
    add [hl]
    cp c
    ld c, $70
    inc e
    ld c, $c0
    rst $38
    dec l
    ld [hl], b
    adc a
    xor a
    ld d, b
    ret nc

    cpl
    add b
    ld b, c
    inc a
    cp h
    ld a, [hl]
    cp $7e
    ld [c], a
    ld h, d
    call c, $f20d
    push hl
    ld [$74f3], a
    ld [hl], l
    or d
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
    xor [hl]
    ld c, l
    adc a
    ld l, [hl]
    and a
    ld d, a
    ld [hl], b
    adc a
    ld b, [hl]
    dec sp
    ld a, [hl]
    rst $00
    ld a, [hl]
    ld a, a
    inc a
    dec a
    ld bc, $0b82
    db $f4
    db $f4
    dec bc
    rrca
    ldh a, [$0e]
    and b
    rst $38
    ld c, l
    ld c, $5f
    ccf
    ld c, l
    ld c, $bf
    ccf
    ld c, l
    ld c, $1f
    ld c, a
    ld c, l
    ld c, $7f
    ld c, a
    ld c, l
    ld c, $df
    ld c, a
    ld c, l
    ld c, $3f
    ld e, a
    ld c, l
    ld c, $9f
    ld e, a
    ld c, l
    ld c, $ff
    ld e, a
    ld c, l
    ld c, $5f
    ld l, a
    ld c, l
    ld c, $bf
    ld l, a
    ld c, l
    ld c, $1f
    ld a, a
    ld c, l
    ld c, $7f
    ld a, a
    ld c, l
    ld c, $df
    ld a, a
    dec c
    nop
    ld [bc], a
    dec c
    dec b
    ld c, $08
    inc c
    dec b
    inc c
    dec b
    ld [$0509], sp
    dec b
    inc c
    dec b
    dec bc
    inc b
    dec b
    dec c
    add hl, bc
    nop
    rst $38
    dec c
    inc d
    rlca
    ld c, $05
    inc c
    dec b
    dec b
    ld c, $05
    ld c, $0b
    inc c
    dec bc
    dec b
    dec b
    ld c, $06
    rlca
    add hl, bc
    inc c
    dec bc
    ld a, [bc]
    dec c
    inc d
    ld [$0905], sp
    inc b
    dec b
    inc c
    dec b
    inc c
    inc c
    inc h
    dec h
    jr jr_023_5f70

    dec b
    dec bc
    inc c
    dec c
    dec c
    nop
    ld [$140d], sp
    add hl, bc
    add hl, bc
    ld b, $07
    ld c, $0b
    dec bc
    dec b
    ld h, $27
    ld a, [de]
    dec de
    ld a, [bc]
    dec b
    ld c, $0b

jr_023_5f70:
    ld b, $07
    ld c, $09
    dec c
    inc d
    ld [$050c], sp
    dec b
    ld a, [bc]
    ld [$2405], sp
    dec h
    inc d
    dec d
    inc d
    dec d
    jr jr_023_5f9e

    inc c
    dec c
    jr z, jr_023_5f89

jr_023_5f89:
    inc c
    dec c
    inc d
    ld [$0b0a], sp
    dec b
    dec b
    dec bc
    ld a, [bc]
    ld h, $27
    ld d, $17
    ld d, $17
    ld a, [de]
    dec de
    dec b
    ld a, [bc]
    dec b

jr_023_5f9e:
    ld a, [bc]
    dec bc
    dec c
    inc de
    add hl, bc
    dec b
    dec b
    dec b
    dec bc
    dec c
    add [hl]
    ld [bc], a
    dec c
    adc b
    ld [bc], a
    dec bc
    dec b
    inc c
    dec bc
    dec c
    inc d
    ld [$0b08], sp
    ld c, $05
    dec c
    and [hl]
    ld [bc], a
    dec c
    xor b
    ld [bc], a
    ld c, $05
    dec c
    or d
    inc c
    dec bc
    inc c
    inc e
    dec e
    dec c
    add $04
    jr nz, @+$23

    ld [$050c], sp
    dec c
    db $d3
    add hl, bc
    dec bc
    add hl, bc
    ld a, [bc]
    dec b
    ld e, $1f
    dec c
    and $04
    ld [hl+], a
    inc hl
    dec bc
    dec b
    ld a, [bc]
    dec c
    ld d, e
    add hl, bc
    dec b
    inc c
    dec b
    ld a, [bc]
    nop
    ld bc, $040d
    ld [de], a
    jr nz, jr_023_600f

    nop
    ld bc, $0e0a
    dec bc
    dec c
    sub e
    add hl, bc
    ld [$0405], sp
    dec b
    ld [bc], a
    inc bc
    dec c
    inc h
    ld [de], a
    ld [hl+], a
    inc hl
    ld [bc], a
    inc bc
    dec bc
    ld a, [bc]
    dec b
    dec c
    inc sp
    add hl, bc
    inc c
    dec b
    ld b, $07
    ld c, $0d

jr_023_600f:
    ld b, e
    db $10
    dec d
    inc d
    dec c
    ld c, l
    ld de, $200d
    nop
    dec c
    ld d, h
    ld a, [bc]
    inc c
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    ld h, $17
    ld d, $1b
    dec c
    ld l, [hl]
    db $10
    dec bc
    ld a, [bc]
    dec b
    dec c
    ld [hl], e
    add hl, bc
    inc b
    dec b
    dec b
    ld a, [bc]
    ld c, $0a
    inc c
    dec bc
    dec c
    adc b
    db $10
    dec b
    ld [$050b], sp
    dec bc
    dec b
    inc b
    dec c
    sub e
    add hl, bc
    dec c
    ld l, $00
    dec b
    ld c, $08
    ld a, [bc]
    dec c
    xor b
    db $10
    dec bc
    dec bc
    dec b
    ld [$0b05], sp
    ld b, $07
    dec c
    inc d
    ld [$0200], sp
    dec c
    dec b
    ld c, $08
    inc c
    dec b
    inc c
    dec b

Jump_023_6063:
    ld [$0509], sp
    dec b
    inc c
    dec b
    dec bc
    inc b
    dec b
    dec c
    add hl, bc
    nop
    rst $38
    dec c
    inc d
    rlca
    ld c, $05
    inc c
    dec b
    dec b
    ld c, $05
    ld c, $0b
    inc c
    dec bc
    dec b
    dec b
    ld c, $06
    rlca
    add hl, bc
    inc c
    dec bc
    ld a, [bc]
    dec c
    inc d
    ld [$0905], sp
    inc b
    dec b
    inc c
    dec b
    inc c
    inc c
    inc h
    dec h
    jr jr_023_60af

    dec b
    dec bc
    inc c
    dec c
    dec c
    nop
    ld [$140d], sp
    add hl, bc
    add hl, bc
    ld b, $07
    ld c, $0b
    dec bc
    dec b
    ld h, $27
    ld a, [de]
    dec de
    ld a, [bc]
    dec b
    ld c, $0b

jr_023_60af:
    ld b, $07
    ld c, $09
    dec c
    inc d
    ld [$050c], sp
    dec b
    ld a, [bc]
    ld [$2405], sp
    dec h
    inc d
    dec d
    inc d
    dec d
    jr jr_023_60dd

    inc c
    dec c
    jr z, jr_023_60c8

jr_023_60c8:
    inc c
    dec c
    inc d
    ld [$0b0a], sp
    dec b
    dec b
    dec bc
    ld a, [bc]
    ld h, $27
    ld d, $17
    ld d, $17
    ld a, [de]
    dec de
    dec b
    ld a, [bc]
    dec b

jr_023_60dd:
    ld a, [bc]
    dec bc
    dec c
    inc de
    add hl, bc
    dec b
    dec b
    dec b
    dec bc
    dec c
    add [hl]
    nop
    inc l
    dec l
    dec c
    adc b
    ld [bc], a
    dec bc
    dec b
    inc c
    dec bc
    dec c
    inc d
    ld [$0b08], sp
    ld c, $05
    dec c
    and [hl]
    nop
    ld l, $2f
    dec c
    xor b
    ld [bc], a
    ld c, $05
    dec c
    or d
    inc c
    dec bc
    inc c
    inc e
    dec e
    dec c
    adc b
    nop
    dec c
    adc b
    nop
    jr nz, @+$23

    ld [$050c], sp
    dec c
    db $d3
    add hl, bc
    dec bc
    add hl, bc
    ld a, [bc]
    dec b
    ld e, $1f
    dec c
    xor b
    nop
    dec c
    xor b
    nop
    ld [hl+], a
    inc hl
    dec bc
    dec b
    ld a, [bc]
    dec c
    ld d, e
    add hl, bc
    dec b
    inc c
    dec b
    ld a, [bc]
    nop
    ld bc, $040d
    ld [de], a
    jr nz, jr_023_6158

    nop
    ld bc, $0e0a
    dec bc
    dec c
    sub e
    add hl, bc
    ld [$0405], sp
    dec b
    ld [bc], a
    inc bc
    dec c
    inc h
    ld [de], a
    ld [hl+], a
    inc hl
    ld [bc], a
    inc bc
    dec bc
    ld a, [bc]
    dec b
    dec c
    inc sp
    add hl, bc
    inc c
    dec b
    ld b, $07
    ld c, $0d

jr_023_6158:
    ld b, e
    db $10
    dec d
    inc d
    dec c
    ld c, l
    ld de, $200d
    nop
    dec c
    ld d, h
    ld a, [bc]
    inc c
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    ld h, $17
    ld d, $1b
    dec c
    ld l, [hl]
    db $10
    dec bc
    ld a, [bc]
    dec b
    dec c
    ld [hl], e
    add hl, bc
    inc b
    dec b
    dec b
    ld a, [bc]
    ld c, $0a
    inc c
    dec bc
    dec c
    adc b
    db $10
    dec b
    ld [$050b], sp
    dec bc
    dec b
    inc b
    dec c
    sub e
    add hl, bc
    dec c
    ld l, $00
    dec b
    ld c, $08
    ld a, [bc]
    dec c
    xor b
    db $10
    dec bc
    dec bc
    dec b
    ld [$0b05], sp
    ld b, $07
    dec c
    inc d
    ld [$0800], sp
    add hl, bc
    add hl, bc
    rst $38
    db $fc
    ret z

    scf
    sub b
    ld l, a
    add b
    ld a, a
    add h
    ld a, e
    add [hl]
    ld a, c
    add h
    ld a, e
    inc b
    ei
    nop
    rst $38
    add hl, bc
    rra
    nop
    cp $ff
    ei
    db $fc
    rst $28
    ldh a, [$da]
    push hl
    or l
    jp z, $b5ca

    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    nop
    ldh a, [rIF]
    ldh [$1f], a
    dec bc
    db $f4
    ld [hl-], a
    push bc
    ret nz

    rra
    add b
    sbc [hl]
    add b
    cp a
    sub b
    adc a
    ld b, b
    ld a, h
    ld b, b
    db $d3
    ld b, b
    ld l, h
    add b
    cp [hl]
    add b
    sbc a
    add hl, bc
    rra
    ld bc, $5009
    dec b
    db $ec
    db $e3
    add hl, bc
    ld d, b
    ld a, [bc]
    sub a
    ld h, a
    rst $38
    rst $38

jr_023_61f6:
    ldh a, [$fc]
    ldh [rP1], a
    ret nz

    jr c, jr_023_61f6

    dec b
    dec a
    pop bc
    add l
    ld a, e
    di
    dec c
    ld a, a
    ld a, a
    add hl, bc
    ld [hl-], a
    nop
    add hl, bc
    add h
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    rst $38
    ld a, a
    ld a, a
    xor d
    xor d
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $28
    rst $28
    add hl, bc
    rra
    nop
    add hl, bc
    sub [hl]
    nop
    add hl, bc
    ld d, b
    ld a, [bc]
    add hl, bc
    sub d
    inc b
    add hl, bc
    sub d
    ld [bc], a
    xor d
    xor d
    nop
    nop
    ld d, l
    ld d, l
    nop
    nop
    add hl, bc
    ret nz

    inc b
    add hl, bc
    or b
    ld [bc], a
    add hl, bc
    ld d, b
    ld b, $7f
    ld a, a
    ld e, a
    ld e, a
    xor e
    xor e
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    xor e
    xor e
    rst $38
    rst $38
    db $fd
    cp $fc
    db $fd
    cp $fe
    rst $18
    ldh [rRP], a
    xor c
    xor b
    ld d, a
    dec b
    ld a, [$df20]
    add hl, bc
    rra
    nop
    ldh [rIE], a
    nop
    rst $38
    add b
    rra
    add h
    ld e, [hl]
    inc h
    or $64
    or $09
    rra
    nop
    rlca
    rst $38
    nop
    rst $38
    ld bc, $24f8
    dec h
    dec h
    inc h
    ld [hl], $37
    add hl, bc
    ld a, [c]
    nop
    rst $38
    nop
    rrca
    ldh a, [rTAC]
    ld hl, sp-$30
    dec hl
    ld c, b
    and a
    inc bc
    db $fc
    add hl, bc
    rra
    ld bc, $ff00
    nop
    db $fc
    inc bc
    cp $01
    inc bc
    db $fc
    rra
    ldh [$6e], a
    ld l, [hl]
    jp z, Jump_023_42ca

    ld b, e
    ld h, d
    ld h, e
    inc h
    dec h
    dec l
    ld l, $8d
    adc [hl]
    rst $08
    call z, $344b
    jp nc, $b42d

    ld c, e
    ret


    ld [hl], $9a
    dec h
    add hl, bc
    ld a, [bc]
    ld [de], a
    ld h, [hl]
    sbc b
    ld c, b
    or a
    or d
    ld c, l
    inc h
    db $db
    ld b, c
    cp h
    add hl, bc
    ld a, [de]
    ld [de], a
    add hl, bc
    cp [hl]
    nop
    ld a, a
    ld a, a
    db $db
    db $db
    cp $fe
    add hl, bc
    ld d, b
    ld [bc], a
    add hl, bc
    or [hl]
    ld [bc], a
    db $fd
    db $fd
    cp a
    cp a
    add hl, bc
    ld a, b
    ld [de], a
    add hl, bc
    cp [hl]
    nop
    add hl, bc
    or h
    ld b, $ff
    rst $38
    ld c, l
    ld c, l
    add hl, bc
    sub d
    inc b
    xor a
    xor a
    add hl, bc
    ld d, b
    ld [bc], a
    ld a, [$09fa]
    sub h
    nop
    ld [$d4ea], a
    call nc, $2020
    nop
    nop
    add b
    add b
    nop
    nop
    ld d, h
    ld d, h
    add hl, bc
    add $04
    add hl, bc
    cp [hl]
    nop
    xor e
    xor e
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    xor d
    xor d
    add hl, bc
    and $02
    add hl, bc
    ld sp, $a312
    ld e, h
    dec [hl]
    jp z, $817e

    inc d
    db $eb
    add b
    ld a, a
    add hl, bc
    ld sp, $ff12
    nop
    add hl, bc
    ld hl, sp+$04
    push af
    push af
    add hl, bc
    ret nz

    nop
    add hl, bc
    rst $38
    or $aa
    xor d
    ld bc, $2a01
    ld a, [hl+]
    add hl, bc
    jp c, $0914

    call nz, RST_00
    nop
    ld bc, $0901
    ret nz

    nop
    add hl, bc
    and $00
    ld [$0aea], a
    ld a, [bc]
    nop
    nop
    dec d
    dec d
    xor b
    xor b
    ld [de], a
    ld [de], a
    and l
    and l
    ld d, l
    ld d, l
    and d
    and d
    db $10
    inc l
    nop
    adc a
    ld [bc], a
    ld [hl], l
    ld e, h
    ld e, d
    jr z, @+$2e

    inc b
    inc bc
    inc d
    rla
    xor b
    xor c
    add h
    ld d, $6c
    adc [hl]
    ld c, [hl]
    rst $18
    ld h, [hl]
    and a
    sbc a
    ld a, a
    sbc l
    ld e, a
    sbc h
    ld e, d
    ld e, h
    ld e, b
    inc h
    inc l
    jr nz, @+$2a

    inc sp
    inc sp
    ld d, $17
    ld [hl], $37
    cp [hl]
    cp a
    db $ec
    db $ed
    call z, $b8ec
    inc [hl]
    cp b
    jr nc, jr_023_63f9

    ld hl, sp+$70
    ld a, b
    ld a, c
    ld a, c
    ld l, e
    ld c, e
    rst $10
    or a
    adc a
    ld c, a
    ld [hl], b
    ld [hl], e
    ld l, b
    ld [hl], l
    ret nc

    ldh [$a0], a
    ret nz

    add l
    and l
    xor d
    ld [$c7c7], a
    rst $28
    rst $28
    ld c, a
    adc a
    dec bc
    inc hl
    ld bc, $8301
    add e
    add hl, bc
    and b
    inc b
    db $fd
    db $fc
    ld hl, sp-$07
    ld hl, sp-$07
    db $fc
    db $fd
    add hl, bc
    ld a, [c]
    nop
    cp $fe
    db $fc
    add hl, bc
    cpl
    ld [de], a
    add hl, bc
    xor a
    inc de
    add hl, bc
    nop
    inc h
    ld b, b
    ld b, b
    add hl, bc
    add $06
    add hl, bc
    rst $38
    ldh a, [rTIMA]
    dec b
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    jp z, $0904

    jp c, $af04

    xor a
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    xor b
    xor b
    db $fc
    db $fc
    ld d, h
    ld d, h
    db $fc
    db $fc
    xor b
    xor b
    xor b
    xor b
    add hl, bc
    db $f4
    jr nz, jr_023_646f

jr_023_63f0:
    nop
    ld c, b
    or a
    db $e3
    inc e
    rst $10
    jr z, jr_023_6437

    ret nz

jr_023_63f9:
    ldh [$1f], a

jr_023_63fb:
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    rra
    ldh [$f1], a
    ld c, $80
    ld e, a
    rlca
    jr c, jr_023_6448

    pop bc
    db $e3
    inc e
    ld a, h
    add b
    inc bc
    db $fc
    rst $08
    jr nc, @+$01

    nop
    ld a, l
    add d
    xor $11
    ld sp, hl
    ld b, $07
    ld hl, sp+$04
    ei
    ldh [rNR34], a
    and b
    ld e, [hl]
    ld d, b
    xor a
    add a
    ld a, b
    jr c, jr_023_63f0

    ret nz

    ccf
    nop
    rst $38
    ld [$fae7], sp
    ld a, [$fefe]

jr_023_6433:
    xor $ee
    add hl, bc
    or b

jr_023_6437:
    db $10
    add hl, bc
    ld a, b
    db $10
    cp $fe
    jr nc, jr_023_63fb

    ld c, b
    adc b
    add [hl]
    ld b, [hl]
    sub [hl]
    ld [hl], $a7
    ld l, a
    inc hl

jr_023_6448:
    ei
    daa
    or a
    daa
    or a
    call c, $dcfd
    db $dd
    sbc $de
    db $dd
    db $dd
    or [hl]
    or a
    cp [hl]
    cp a
    cp e
    cp e
    ld a, [$1ffa]
    rst $18
    xor [hl]
    ld l, $1e
    sbc [hl]
    xor h
    dec l
    ld a, h
    db $fd
    inc a
    cp l
    ld a, h
    db $fd
    ld a, [hl-]
    ld a, [hl-]
    scf
    scf

jr_023_646f:
    rra
    rst $18
    inc c
    adc a
    jr c, jr_023_6433

    ld a, c
    ld a, l
    ld a, [hl-]
    ld a, [hl-]
    ld a, c
    ld a, c
    ld a, [hl-]
    ld a, [hl-]
    add hl, bc
    rra
    nop
    cpl
    cpl
    cp a
    add hl, bc
    ld sp, $ff00
    add hl, bc
    sbc b
    jr nc, @-$04

    ld sp, hl
    ld sp, hl
    ld hl, sp-$0f
    ldh a, [$f9]
    ld hl, sp-$04
    db $fd
    ei
    ld a, [$fbfa]
    ld a, [$09fb]
    ld d, b
    inc b
    add hl, bc
    db $ec
    nop
    add hl, bc
    or [hl]
    db $10
    add hl, bc
    ld d, b
    inc b
    cp e
    cp e
    add hl, bc
    sbc [hl]
    inc c
    add hl, bc
    sbc b
    jr nc, jr_023_64b8

    db $ec
    nop
    add hl, bc
    ld d, b
    ld a, [bc]
    add hl, bc
    ldh a, [$2c]
    nop

jr_023_64b8:
    rst $38
    inc bc
    db $fc
    inc b
    ld hl, sp+$09
    add l
    ld bc, $00cf
    rst $18
    nop
    rst $38
    jr c, @-$3b

    nop
    ld a, a
    rlca
    ld hl, sp+$18
    push hl
    ld [hl], b
    adc c
    nop
    rst $38
    rlca
    ld hl, sp+$5c
    and e
    add hl, bc
    add l
    nop
    ld bc, $09e6
    add l
    ld bc, $c0ff
    ccf
    nop
    ei
    ld [$30c7], sp
    cpl
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $18
    nop
    rra
    inc c
    di
    ld [$09f7], sp
    xor d
    jr nz, jr_023_64ff

    ld c, d
    ld [hl-], a
    add hl, bc
    ld d, b
    ld [bc], a
    ld c, h
    call z, $da5a

jr_023_64ff:
    ld l, [hl]
    xor $8d
    call Call_000_1d9d
    add e
    dec de
    dec de
    cp e
    rra
    cp a
    add hl, bc
    or b

jr_023_650d:
    db $10
    add hl, bc
    ld b, b
    jr nc, jr_023_650d

    ei
    cp $fe
    ld a, h
    ld a, h
    cp $fe
    adc $8e
    sub $96
    cp [hl]
    cp $9f
    sbc a
    cp a
    rst $38
    add hl, bc
    db $76
    ld b, b
    cp [hl]
    cp a
    add hl, bc
    adc h
    jr nc, @+$7b

    ld a, c
    ld a, $3e
    db $fd
    db $fd
    xor $ee
    rlca
    rst $38
    ld e, e
    ld e, e
    add hl, bc
    and d
    inc c
    add hl, bc
    ld c, d
    ld [hl-], a
    add hl, bc
    ld b, h
    ld b, h
    cp $fe
    ld b, l
    ld b, l
    cp a
    cp a
    dec b
    dec b
    cp $fe
    dec b
    dec b
    and b
    and b
    add hl, bc
    rst $38
    ldh a, [$09]
    sub [hl]
    nop
    pop de
    pop de
    adc d
    adc d
    ld d, b
    ld d, b
    add hl, bc
    jr nc, jr_023_657d

    nop
    nop
    db $f4
    db $f4
    xor b
    xor b
    add hl, bc
    rst $38
    ld hl, sp-$41
    cp a
    add hl, bc
    ld [c], a
    nop
    add hl, bc
    db $ec
    jr nz, jr_023_6578

    rst $38
    ld a, [c]
    dec d
    dec d
    dec d
    dec d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]

jr_023_6578:
    ld a, [hl+]
    add hl, bc
    ldh a, [rLY]
    sub b

jr_023_657d:
    ld l, a
    and c
    ld e, [hl]
    and d
    ld e, l
    nop
    rst $38
    nop
    ld a, a
    add b
    cp c
    sub e
    sub b
    ld d, h
    ld d, b
    nop
    rst $38
    add d
    ld a, l
    inc b
    ld hl, sp+$09
    inc e
    nop
    inc bc
    db $fc
    add b
    ld a, a
    nop
    ccf
    nop
    rst $20
    nop
    cp a
    nop
    ccf
    ld [bc], a
    db $fd
    add hl, bc
    jr c, jr_023_65d8

    add hl, bc
    jr nz, jr_023_65ea

    cp $01
    cp $0b
    db $f4
    dec b
    ld a, [$f902]
    dec c
    db $ed
    dec [hl]
    or [hl]
    add hl, bc
    call nc, $af0a
    xor a
    ld a, a
    ld a, a
    ld l, a
    rst $28
    ccf
    cp a
    rra
    rra
    dec sp
    cp e
    add hl, bc
    add b
    nop
    rra
    sbc a
    add hl, bc
    ld b, b
    ld c, h
    cp h
    cp [hl]
    cp l
    cp a
    cp $fe
    cp c
    cp l
    ld a, [$b9fa]

jr_023_65d8:
    cp c
    add hl, bc
    ld a, b
    ld d, b
    cp l
    cp l
    add hl, bc
    ld d, b
    ld a, [bc]
    add hl, bc
    rst $38
    ldh a, [$09]
    db $f4

jr_023_65e6:
    jr z, jr_023_65e6

    cp $a8

jr_023_65ea:
    xor b
    ld hl, sp-$08
    ld d, b
    ld d, b
    ret nz

    ret nz

    add hl, bc
    ret nz

    db $10
    add hl, bc
    ld [$2a44], a
    ld a, [hl+]
    add b
    add b
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    ld [$fe00], a
    cp $aa
    xor d
    push af
    push af
    add hl, bc
    cp [hl]
    nop
    jp c, Jump_000_09da

    call c, $0902
    add b
    ld bc, $9b09
    ld sp, $1f09
    nop
    add hl, bc
    ld [c], a
    nop
    dec d
    dec d
    dec bc
    dec bc
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    call nc, Call_000_0920
    call z, Call_000_0912
    and $00
    sub l
    sub l
    ld l, d
    ld l, d
    add hl, bc
    ld [bc], a
    ld a, [hl+]
    add hl, bc
    dec bc
    ld l, a
    ld c, l
    add hl, bc
    db $fc
    rst $38
    ld bc, $f10e
    sub b
    ld l, a
    add b
    add hl, bc
    dec b
    db $10
    ccf
    nop
    sbc c
    inc de
    sub b
    sub h
    db $10
    add hl, bc
    rst $08
    rst $38
    ld l, $09
    add h
    ld bc, $837c
    ld b, $f9
    nop
    rst $38
    add hl, bc
    inc e
    ld d, c
    rst $38
    ld [hl], b
    adc a
    ld [$09f7], sp
    add l
    nop
    inc b
    ei
    inc b
    ei
    nop
    ld hl, sp-$04

jr_023_6668:
    inc bc
    and c
    ld e, [hl]
    ld d, b
    xor a
    add b
    ld a, a
    add hl, bc
    adc h
    nop
    jr c, @-$37

    ld b, $f9
    and h
    ld e, e

jr_023_6678:
    ld l, d
    sub l
    sub a
    ld l, b
    nop
    rst $38
    ld h, e
    sbc h
    inc e
    db $e3
    add hl, bc
    add l
    nop
    cp a
    ld b, b
    xor d
    ld d, l
    ld d, a
    xor b
    nop
    rst $38
    ldh [$1f], a
    jr jr_023_6678

jr_023_6691:
    rlca
    ld hl, sp+$00
    rst $38
    ld c, $f1
    jr nc, jr_023_6668

    ld [$c097], sp
    ccf
    inc e
    db $e3
    inc bc
    db $fc
    add hl, bc

jr_023_66a2:
    inc e
    nop
    adc a
    ld [hl], b
    ld h, l
    sbc d
    ld a, [bc]
    push af
    pop af
    ld c, $1c
    db $e3
    ld b, d
    cp l
    jr nz, jr_023_6691

    db $10
    rst $20
    ret nz

    ccf
    di
    inc c
    rra
    ldh [$86], a
    ld a, c
    ld [hl], a
    adc b
    add hl, bc
    add l
    nop
    jr nz, jr_023_66a2

    rrca
    ldh a, [$f8]
    rlca
    sbc a
    ld h, b
    inc bc
    ld hl, sp-$20
    inc e
    add hl, bc
    sub $62
    ld [c], a
    dec e
    inc de

jr_023_66d3:
    db $ec
    rst $00
    jr c, jr_023_66d3

    inc bc
    ld bc, $09fe
    jr nc, jr_023_672f

jr_023_66dd:
    add hl, bc
    rra
    nop
    db $e3
    db $e4
    rst $08
    ret nc

    rst $18
    ldh [$bc], a
    add e
    and c
    sbc $cf
    or b
    add hl, bc
    jr nc, jr_023_6703

    ccf
    ret nz

    ld a, a
    add b
    ret nz

    ccf
    ld hl, sp+$07
    add hl, bc
    jr nc, jr_023_670c

    add hl, bc
    ld [hl], $06
    add hl, bc
    rra
    nop
    rst $20
    rlca
    inc sp

jr_023_6703:
    sla e
    rst $18
    add c
    ld a, l
    ld bc, $1dff
    ld h, e

jr_023_670c:
    nop
    rst $38
    add hl, hl
    sub $00
    cp $20
    sbc $e1
    jr jr_023_66dd

    dec [hl]
    dec l
    call Call_000_3ebd
    rst $38
    rst $38
    rst $38
    ldh a, [$d0]
    rst $28
    ret nz

    pop bc
    cp h
    cp h
    cp $fe
    cp $e2
    ld [c], a
    call c, $ffff
    rst $20

jr_023_672f:
    rst $28
    di
    ld [hl], h
    ld [hl], l
    or d
    ld [hl], d
    or l
    ld [hl], d
    or l
    ld [c], a
    ld h, l
    ld [bc], a
    adc l
    ret nz

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
    rlca
    rst $30
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
    ld [$f0f7], sp
    rrca
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, HeaderRAMSize
    nop
    ld b, $3e
    ld bc, $0400
    ld bc, $fcf4
    db $10
    ld de, $2b49
    dec de
    jr nz, @+$22

    ld c, [hl]
    ld l, $54
    db $10
    ld de, $1001
    rrca
    ld bc, $2625
    dec hl
    ld e, d
    ld bc, $f1fb
    ld e, [hl]
    dec h
    ld h, $01
    db $10
    rrca
    ld bc, $3635
    ld c, l
    ld e, c
    ld bc, $f2fa
    dec [hl]
    ld [hl], $2e
    ld bc, $0b11
    dec b
    ld b, $49
    dec sp
    ld b, l
    ld b, [hl]
    nop
    cpl
    ld bc, $f0fc
    ld c, a
    nop
    ld b, l
    ld b, [hl]
    dec e
    ld c, $05
    ld b, $01
    db $f4
    ld hl, sp+$15
    ld d, $5c
    inc e
    ld d, l
    ld d, [hl]
    inc e
    ld bc, $0287
    dec l
    ld d, l
    ld d, [hl]
    dec c
    ld c, c
    dec d
    ld d, $01
    db $f4
    ld hl, sp+$01
    ld c, [hl]
    nop
    ld d, l
    ld d, [hl]
    ld e, h
    cpl
    dec l
    ld e, e
    ld [hl+], a
    inc hl
    ld e, a
    ld hl, $5655
    ld bc, $0042
    ld bc, $f8f4
    dec [hl]
    ld [hl], $49
    ld c, c
    ld e, l
    ld c, c
    ld c, c
    ld a, [bc]
    rla
    jr jr_023_67f8

    ld a, [de]
    add hl, bc
    ld bc, $00e3
    ld c, c
    dec [hl]
    ld [hl], $01
    db $f4
    ld hl, sp+$45
    ld b, [hl]
    ld bc, $0200
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld bc, $0200
    ld b, l
    ld b, [hl]

jr_023_67f8:
    ld bc, $f8f4
    ld d, l
    ld d, [hl]
    ld bc, $1208
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld bc, $1206
    ld d, l

Jump_023_6808:
    ld d, [hl]
    ld bc, $faf4
    jr nc, jr_023_683f

    ld [hl-], a
    inc sp
    ld c, c
    ld c, c
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld bc, $1440
    ld bc, $faf4
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, c
    ld c, c
    ld l, b
    ld l, l
    ld l, [hl]
    ld a, e
    ld bc, $1460
    ld bc, $faf4
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, c
    ld c, c
    daa
    jr z, jr_023_685e

    ld a, [hl+]
    ld bc, $1480
    ld bc, $faf4
    ld bc, $1288

jr_023_683f:
    scf
    jr c, @+$3b

    ld a, [hl-]
    ld bc, $1486
    ld bc, $faf4
    scf
    jr c, jr_023_68c3

    ld [de], a
    ld a, c
    ld a, d
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [hl], a
    ld a, c
    inc bc
    rlca
    ld bc, $10aa
    ld bc, $faf4
    ld b, a

jr_023_685e:
    ld bc, $1141
    ld d, a
    ld e, b
    ld bc, $1340
    ld c, d
    ld bc, $0a12
    nop
    ld [bc], a
    ld bc, HeaderRAMSize
    nop
    ld b, $3e
    ld bc, $0400
    ld bc, $fcf4
    db $10
    ld de, $2b49
    dec de
    jr nz, @+$22

    ld c, [hl]
    ld l, $54
    db $10
    ld de, $1001
    rrca
    ld bc, $2625
    dec hl
    ld e, d
    ld bc, $f1fb
    ld e, [hl]
    dec h
    ld h, $01
    db $10
    rrca
    ld bc, $3635
    ld c, l
    ld e, c
    ld bc, $f2fa
    dec [hl]
    ld [hl], $2e
    ld bc, $0b11
    dec b
    ld b, $49
    dec sp
    ld b, l
    ld b, [hl]
    nop
    cpl
    ld bc, $f0fc
    ld c, a
    nop
    ld b, l
    ld b, [hl]
    dec e
    ld c, $05
    ld b, $01
    db $f4
    ld hl, sp+$15
    ld d, $5c
    inc e
    ld d, l
    ld d, [hl]
    inc e
    ld bc, $0287

jr_023_68c3:
    dec l
    ld d, l
    ld d, [hl]
    dec c
    ld c, c
    dec d
    ld d, $01
    db $f4
    ld hl, sp+$01
    ld c, [hl]
    nop
    ld d, l
    ld d, [hl]
    ld e, h
    cpl
    dec l
    ld e, e
    ld [hl+], a
    inc hl
    ld e, a
    ld hl, $5655
    ld bc, $0042
    ld bc, $f8f4
    dec [hl]
    ld [hl], $49
    ld c, c
    ld e, l
    ld c, c
    ld c, c
    ld a, [bc]
    rla
    jr jr_023_6906

    ld a, [de]
    add hl, bc
    ld bc, $00e3
    ld c, c
    dec [hl]
    ld [hl], $01
    db $f4
    ld hl, sp+$45
    ld b, [hl]
    ld bc, $0200
    ld a, h
    ld a, l
    ld a, c
    ld a, d
    ld bc, $0200
    ld b, l
    ld b, [hl]

jr_023_6906:
    ld bc, $f8f4
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    ld bc, $100a
    ld a, [hl]
    ld a, a
    ld [hl], l
    db $76
    ld c, c
    ld c, c
    ld bc, $1022
    ld d, l
    ld d, [hl]
    ld bc, $faf4
    jr nc, jr_023_6951

    ld [hl-], a
    inc sp
    ld c, c
    ld c, c
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld bc, $1440
    ld bc, $faf4
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, c
    ld c, c
    ld l, b
    ld l, l
    ld l, [hl]
    ld a, e
    ld bc, $1460
    ld bc, $faf4
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, c
    ld c, c
    daa
    jr z, jr_023_6970

    ld a, [hl+]
    ld bc, $1480
    ld bc, $faf4
    ld bc, $1288

jr_023_6951:
    scf
    jr c, jr_023_698d

    ld a, [hl-]
    ld bc, $1486
    ld bc, $faf4
    scf
    jr c, jr_023_69d5

    ld [de], a
    ld a, c
    ld a, d
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [hl], a
    ld a, c
    inc bc
    rlca

Call_023_6969:
    ld bc, $10aa
    ld bc, $faf4
    ld b, a

jr_023_6970:
    ld bc, $1141
    ld d, a
    ld e, b
    ld bc, $1340
    ld c, d
    ld bc, $0a12
    nop
    ld [$9f11], sp
    sbc a
    pop af
    or $c6
    reti


    sbc c
    and [hl]
    adc h
    or e
    jp $e0dc


    db $e3

jr_023_698d:
    rst $18
    rst $18
    ld sp, hl
    ld sp, hl

jr_023_6991:
    dec c
    db $ed
    ld [hl], e
    adc e
    and c
    ld e, l
    add hl, sp
    push bc
    ld h, c
    sub c
    rlca
    rst $00
    ei
    ei
    rst $08
    ccf
    or c
    db $76
    ld b, [hl]
    ld de, $0105
    rst $00
    ret c

    ldh [$e7], a
    db $dd
    db $dd
    di
    db $fc
    dec c
    adc $72
    ld de, $0715
    nop
    rlca
    inc bc
    ldh a, [$e0]
    dec d
    jr nz, jr_023_6991

    and b
    ld d, l
    ld de, $0248
    ld [bc], a
    db $fd
    xor h
    ld d, e
    nop
    rst $38
    rst $28
    db $10
    ld [bc], a
    ld a, l
    ld e, [hl]
    ld h, c
    jr nz, jr_023_6a0f

    dec a
    ld [hl], d
    nop
    rst $38
    ld sp, hl

jr_023_69d5:
    ld b, $08
    rst $30
    rst $20
    jr jr_023_6a21

    cp b
    sub d
    ld l, [hl]
    inc a
    call nz, $fe0c
    nop
    ldh [$c0], a
    rrca
    add a
    jr z, @+$06

    dec hl
    dec b
    xor d
    ld de, $0278
    adc a
    ld [hl], b
    ld c, $ff
    ld a, a
    sbc a
    ld a, a
    cp a
    cp [hl]
    ld a, a
    rst $38
    ld a, h
    ld a, a
    call nc, Call_023_54ff
    jp nz, $f03d

    rst $28
    ei
    db $f4
    ld hl, sp-$01
    rst $38
    ld hl, sp-$04
    ld a, a
    rst $38
    ld d, h
    db $fc
    ld d, a

jr_023_6a0f:
    ld e, a
    and a
    cp h
    ld c, a
    ld a, a
    sbc a
    rra
    rst $38
    rst $38
    ld a, $3f
    db $fc
    rst $38
    ld d, h
    rst $38
    ld d, h
    ldh [$df], a

jr_023_6a21:
    ld a, c
    and $f7
    ld hl, sp-$0f
    cp $fc
    ei
    cp $79
    db $fd
    ld d, [hl]
    db $fc
    ld d, a
    add b
    ld a, a
    ld a, [hl]
    cp c
    ld a, a
    rst $00
    rrca
    ld hl, sp+$7f
    sub b
    cp a
    db $76
    cp a
    ld h, [hl]
    ld a, a
    xor c
    nop
    rst $38
    ld a, a
    sbc h
    cp $e3
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fd
    ld l, [hl]
    db $fc
    ld h, a
    rst $38
    sub h
    dec e
    ld [c], a
    rra
    rst $28
    rst $38
    rra
    ccf
    ei
    cp a
    ld [hl], b
    rst $38
    ld [hl], h
    ld a, a
    call nc, Call_023_51ff
    db $fd
    ld [bc], a
    db $fc
    db $e3
    cp $f1
    db $fd
    cp d
    db $fd
    ld a, [de]
    rst $38
    ld e, h
    rst $38
    ld d, h
    cp $15
    jp c, $88da

    xor b
    ld c, b
    ld e, c
    ld b, h
    push de
    ld b, h
    ld c, l
    add b
    adc d
    and b
    xor d
    xor b
    xor h
    di
    ei
    ld h, [hl]
    ld h, [hl]
    ld b, a
    ld c, a
    ld b, d
    ld c, d
    ld [bc], a
    adc e
    ld [$0ba8], sp
    xor e
    rrca
    cpl
    ld [hl], b
    sub b
    or h
    db $76
    ret nc

    ld d, b
    sub h
    sub [hl]
    sub b
    sub b

jr_023_6a99:
    ld de, $1f26
    inc bc
    ld de, $0448
    ld de, $0448
    ld c, $09
    inc l
    ld l, a
    dec bc
    ld a, [bc]
    add hl, hl
    ld l, c
    add hl, bc
    add hl, bc
    ld de, $1f56
    inc bc
    ld de, $0478
    ld de, $0478
    ld [hl], a
    cp b
    cp a
    ld c, a
    inc sp
    cp $fb
    ld c, a
    ld a, c
    rst $08
    rst $38
    ccf
    cp a
    ld e, a
    ccf
    adc $db
    inc a
    ei
    db $f4
    sbc b
    rst $38
    sbc a
    db $f4
    rra
    db $f4
    ld hl, sp-$01
    ld e, l
    or d
    ldh [rIE], a
    rst $30
    jr c, jr_023_6a99

    ld e, a
    ld [hl], a

Call_023_6adc:
    ei
    rst $30
    sbc b
    ldh a, [$9f]
    ldh [$7f], a
    rst $38
    ld a, a
    rst $38
    ccf
    sbc $3d
    db $fc
    ei
    rst $10
    cp h
    rst $08
    ld a, [hl-]
    ld c, $ff
    dec sp
    cp $d6
    rst $28
    cp $fd
    or a
    ld a, e
    ld a, e
    and h
    call c, $5f63
    db $fc
    ld h, e
    cp $e1
    ccf
    ld hl, $ffff
    rra
    rst $38
    xor $ee
    dec de
    sbc $33
    rra
    ld a, [c]
    sbc $3f
    db $ed
    ld d, $3a
    db $fd
    cp $f1
    rst $30
    dec sp
    ccf
    rst $08
    ld [hl], e
    cp [hl]
    ei
    ld c, a
    ld_long a, $ff4f
    ccf

jr_023_6b23:
    ccf
    rst $08
    sbc a
    ld h, a
    rst $18
    cp b
    ldh a, [$ef]
    db $dd
    ld a, d
    call c, Call_023_5df7
    or $f8
    rst $38
    ld d, a
    cp b
    ld hl, sp-$19
    rst $38
    rra
    ld [hl+], a
    rst $38
    ld sp, hl
    ld de, $10ab
    rst $38
    rst $38
    ei
    rst $38
    pop de
    rst $38
    sub c
    rst $30
    jr z, jr_023_6b23

    push af
    cp c
    sub $7d
    sub d
    dec sp
    db $e4
    rst $20
    ld hl, sp-$01
    ld a, b
    rst $38
    add h
    ld d, $e9
    rst $18
    daa
    cpl
    rst $18
    sbc a
    ld l, a
    rra
    rst $38
    ccf
    rst $18
    rst $38
    rra
    ld a, a
    cp h
    ret c

    daa
    push af
    ld a, [$f9fe]
    db $fd
    cp $ff
    db $ec
    cp $ad
    db $fc
    dec hl
    ei
    inc l
    dec b
    ld a, [$27df]
    inc a
    rst $08
    ld a, [hl]
    sub e
    cp $1f
    rra
    rst $30
    cp a

jr_023_6b83:
    ld d, l
    rst $38
    jr @+$4c

    or l
    ldh [rIE], a
    jr jr_023_6b83

    rrca
    ld hl, sp+$08
    rst $38
    ei
    db $fc
    ei
    inc a
    db $fd
    ld a, [hl-]
    ld [hl], b
    adc a
    rrca
    rst $38
    cp a
    ld e, a
    ccf
    rst $38
    scf
    rst $38
    rst $38
    dec [hl]
    sbc a
    ld [hl], l
    rra
    db $f4
    dec hl
    call nc, $ffe0
    rst $38
    ldh a, [$f1]
    cp $11
    sub [hl]
    nop
    ld a, [$fc3d]
    dec sp
    and b
    ld e, a
    add hl, bc
    or $eb
    rla
    rra
    db $ec
    ld [hl], b
    sbc a
    db $e4
    ccf
    jr c, @+$01

    ld a, b
    adc a
    ld bc, $fdfe
    ld [bc], a
    ldh a, [rIE]
    rst $28
    inc e
    ld [de], a
    rst $28
    dec bc
    or $0f
    cp $3c
    rst $30
    sbc $21
    cp l
    ld b, d
    dec bc
    rst $30
    cp $0d
    inc d
    ei
    ld [hl], h
    sbc e
    and a
    ld a, a
    rst $28
    inc a
    ld [hl], a
    adc b
    adc d
    ld [hl], l
    db $fd
    ld a, [c]
    ld c, [hl]
    cp c
    sub l
    ld a, [hl]
    adc e
    ld a, [hl]
    adc a
    cp $e7
    ld a, h
    nop
    rst $38
    cp a
    ld b, a
    dec de
    rst $28
    ld [hl], a
    sbc h
    sub a
    ld a, a
    cp a
    ld de, $008b
    ld d, e
    rlca
    ld hl, sp-$0a
    ret


    cp c
    and $d1
    ld a, [hl]
    db $db
    db $f4
    ei
    ld a, h
    rst $38
    ld d, h
    rst $38
    sub h
    ld [hl], b
    rst $28
    ld a, a
    rst $10
    ld hl, sp+$4f
    ldh a, [$5f]
    or b
    ld a, a
    and b
    ld a, a
    ld l, h
    cp a
    ldh [$7f], a
    ccf
    call z, $d5fe
    ccf
    db $e4
    ld e, $f5
    dec e
    ld a, [$fc0b]
    ld l, l
    ld a, [$f90e]
    rst $18
    ldh [rIE], a
    ld a, a
    rst $08
    ld a, e
    call $ff7f
    ld sp, $3fe7
    ld_long a, $ff1d
    rrca
    rst $30
    db $fc
    rst $38
    ld e, h
    db $fc
    ld d, a
    db $ed
    cp $fb
    inc c
    rst $30
    ld hl, sp-$09
    ret z

    rst $20
    sbc b
    cp $3f
    ld a, a
    cp a
    ld a, b
    cp a
    cp l
    ld h, a
    cp $2f
    or b
    ld e, a
    rst $38
    jr nz, @+$01

    ccf
    db $eb
    inc e
    ei
    db $f4
    dec a
    ld a, [$fd16]
    rrca
    db $fc
    ld a, a
    cp b
    call nc, $ff6f
    db $fc
    rst $18
    inc [hl]
    ccf
    rst $18
    ld [c], a

jr_023_6c79:
    ld a, l
    call nz, $fcfb
    jp Jump_023_7fff


    cp e
    rst $00
    rst $38
    rst $38
    ld a, [hl]
    ld sp, hl
    ld a, [$0ff5]
    db $fc
    sbc a
    ld a, [c]
    ld a, a
    ld a, [c]
    rst $38
    db $fc
    add [hl]
    db $fd
    db $fc
    rst $38
    rst $30
    jr jr_023_6cf6

    xor a
    jr c, jr_023_6c79

    ld a, b
    cp a
    or b
    ld a, a
    ld a, a
    sbc a
    dec l
    di
    rst $38
    ccf
    ld a, l
    ld a, [$fef1]
    ld e, $f9
    cp h
    rst $20
    ld a, a
    db $e4
    db $fc
    ei
    adc d
    db $fd
    cp $f1
    ld a, b
    adc a
    inc c
    rst $38
    ret nc

    ccf
    db $e4
    ccf
    ld a, b
    rst $38
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $10
    ld e, l
    rst $28
    ccf
    di
    rra
    di
    rra
    ld a, [$fe77]
    cp a
    call z, $fbfc
    ld a, a
    db $f4
    rst $10
    ld a, e
    rst $38
    ld a, h
    rst $30
    sbc h
    db $e3
    cp $b1
    rst $38
    and b
    rst $38
    rst $38
    ld a, a
    or $5d
    jp nc, $e3bf

    ld a, [hl]
    bit 7, [hl]
    add [hl]
    rst $38
    rlca
    cp $f1
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], h

jr_023_6cf6:
    adc a
    rst $38
    add sp, -$09
    ld hl, sp-$69
    rst $38
    sub b
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, a
    sbc a
    rst $38
    ld e, h
    db $eb
    cp $2b
    sbc $27
    sbc $e7
    inc e
    db $fd
    cp $6b
    sbc h
    ei
    db $f4
    ldh a, [$9f]
    rst $38
    cp a
    rst $38
    adc b
    cp $49
    ld hl, sp+$3f
    ld de, $108a
    ld a, a
    adc a
    rra
    db $f4
    rst $38
    ld a, [c]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld [hl], a
    db $ec
    sbc l
    ld a, [$dc11]
    jr nc, @+$81

    sbc b
    ld a, a
    and $ff
    add e
    rst $38
    db $fc
    xor a
    ld a, e
    cpl
    db $fc
    ld e, a
    db $f4
    rst $38
    ld h, h
    cp $31
    db $fd
    adc $ff
    add d
    rst $38
    ld a, [hl]
    ld [$edbd], a
    ld a, d
    rst $30
    ld e, h
    cp $4d
    rst $38
    nop
    rst $38
    rst $00
    ld a, [$fcbf]
    sbc a
    pop af
    sbc $fc
    ld a, a
    rst $38
    ld d, a
    rst $38
    ld [hl], h
    rst $38
    nop
    rst $38
    add $bf

Call_023_6d67:
    ld a, [$f27f]
    rra
    or $7f
    db $fc
    rst $38
    call nc, Call_023_5cff
    rst $38
    ld [hl], h
    xor a
    rst $38
    xor b
    rst $30
    ret z

    rst $30
    rst $08
    ld [hl], b
    rst $38
    ld a, a
    xor l
    ld [hl], e
    ld de, $30ce
    db $e3
    cp $2f
    sbc $3f
    jp nc, $12ff

    db $fd
    cp $fb
    db $fc
    ei
    db $f4
    ldh a, [$5f]
    rst $38
    sbc a
    rst $38
    and b
    cp $a1
    call c, $f36f
    ccf
    ld de, $404c
    rra
    ld a, [c]
    rst $38
    ld a, [$22ff]
    rst $38
    inc h
    ccf
    ld hl, sp-$03
    ld a, [$f4fb]
    ei
    db $e4
    sub a
    ld hl, sp-$61
    rst $38
    ei
    ld l, [hl]
    ld sp, hl
    ccf
    cp $37
    sbc $33
    cp a
    ld c, c
    ld a, a
    add a
    db $d3
    ld a, $f3
    cp $bf
    db $ec
    cpl
    db $f4
    rst $18
    db $fc
    cp e
    db $f4
    ei
    db $e4
    db $fc
    add e
    rst $10
    ld a, b
    adc a
    rst $38
    ld sp, hl
    cp $e3
    cp a
    rst $38
    ld a, h
    cp $11
    ld l, e
    ld b, c
    db $d3
    ld a, $e3
    cp $3f
    cp $9f
    ld a, [c]
    rst $38
    ld a, d
    dec c
    cp $7d
    ld a, [$f4fb]
    add b
    ld a, a
    dec l
    db $d3
    cpl
    rst $18
    rst $38
    ld sp, $40ff
    rst $38
    and b
    rst $38
    or b
    rst $38
    ld e, e
    rst $38
    ld hl, sp-$02
    adc l
    cp $05
    db $fc
    add a
    db $fd
    ld c, [hl]
    ei
    inc a
    ldh [$3f], a
    db $ed
    ld [hl-], a
    rst $38
    ld d, l
    rst $18
    ld h, c
    rst $38
    ccf
    db $10
    rst $38
    rst $18
    ccf
    cp a
    ld e, h
    ld a, e
    and a
    ld a, a
    cp a
    ldh [$3f], a
    push af
    ld l, d
    sbc b
    rst $30
    rrca
    ld hl, sp-$04
    rst $38
    add a
    db $fc
    ld [bc], a
    rst $38
    rst $38
    cp $11
    add b
    ld b, d
    jp hl


    ld e, a
    or $7f
    jp c, $bf3f

    ld c, a
    ld a, a
    add e
    ld de, $4290
    ccf
    ld hl, sp-$01
    ret c

    ei
    sub h
    ei
    inc h

jr_023_6e46:
    db $fc
    jp $f897


    ld de, $40a2
    di
    sbc a
    rst $38
    cp h
    ldh [$7f], a
    cp l
    ld a, a
    ld a, a
    sbc a
    rst $10
    inc a
    ld de, $40b2
    adc a
    ld a, [$7cff]
    db $fd
    ld a, [$9a6d]
    ei
    db $f4
    ld de, $ffa0
    ld c, l
    ld de, $ffbd
    jr nc, @+$01

    rst $38
    ld de, $51e1
    ld de, $5fe8
    inc bc
    rra
    ldh [$e0], a
    rra
    adc [hl]
    ld [hl], c
    ld [hl], e
    adc h
    ld hl, sp+$07
    rlca
    ld hl, sp-$21
    jr nz, jr_023_6e46

    ccf
    ldh [$1f], a
    rst $18
    jr nz, jr_023_6e8f

    db $fc
    db $fc
    inc bc

jr_023_6e8f:
    nop
    rst $38
    cp a
    ld b, b
    sbc $21
    ld b, b
    cp a
    scf
    ret z

    ei
    inc b
    nop
    rst $38
    rst $18
    jr nz, @-$1e

    rra
    sbc l
    ld h, d
    ld b, b
    cp a
    db $eb
    inc d
    rlca
    ld hl, sp-$45
    ld b, h
    ld a, h
    add e
    sbc e
    ld h, h
    dec b
    ld a, [$03fc]
    inc bc
    db $fc
    scf
    ret z

    db $fc
    inc bc
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    ld a, h
    add e
    ld de, $54e2
    ld de, $56e2
    rst $28
    db $10
    rst $28
    db $10
    ld bc, $83fe
    ld a, h
    rst $00
    jr c, @-$7b

    ld a, h
    add hl, sp
    add $11
    add sp, $5c
    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $11fe
    jp hl


    ld d, d
    ld [bc], a
    db $fd
    ld b, $f9
    ld c, $f1
    ld e, $e1
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, b
    add a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld de, $52e9
    add b
    ld a, a
    ld de, $600e
    ldh a, [rIF]
    ld hl, sp+$07
    ld de, $6016
    ld de, $5f83
    ld c, l
    ld de, $7f1f
    ld c, l
    ld de, $7f7f
    ld c, l
    ld de, $7fdf
    dec c
    nop
    ld [bc], a
    inc c
    ld h, b
    ld h, c
    inc c
    nop
    ld [$4342], sp
    inc c
    nop
    nop
    rst $38
    inc c
    inc d
    rlca
    ld h, d
    ld h, e
    inc c
    jr nz, @+$0a

    ld d, d
    ld d, e
    inc c
    jr nz, jr_023_6f41

jr_023_6f41:
    inc c
    inc d
    ld [$6160], sp
    ld [$6009], sp
    ld h, c
    inc l
    dec l
    inc c
    ld b, b
    ld [bc], a
    ld h, b
    ld h, c
    ld a, [bc]
    dec bc
    ld b, d
    ld b, e
    inc c
    inc d
    ld a, [bc]
    jr jr_023_6f73

    ld h, d
    ld h, e
    inc a
    dec a
    inc c
    ld h, b
    ld [bc], a
    ld h, d
    ld h, e
    ld a, [de]
    dec de
    ld d, d
    ld d, e
    inc c
    inc d
    ld [$460c], sp
    nop
    ld a, [bc]
    dec bc
    ld c, $0f
    ld b, b
    ld b, c

jr_023_6f73:
    inc c
    ld b, h
    nop
    ld a, [hl+]
    dec hl
    ld l, $2f
    inc c
    ld [de], a
    ld a, [bc]
    inc c
    ld h, [hl]
    nop
    ld a, [de]
    dec de
    ld e, $1f
    ld d, b
    ld d, c
    inc c
    ld h, h
    nop
    ld a, [hl-]
    dec sp
    ld a, $3f
    inc c
    ld [hl-], a
    inc c
    ld b, $07
    ld e, [hl]
    inc c
    call nz, $0407
    dec b
    inc c
    ld [de], a
    inc c
    ld [de], a
    rla
    ld e, a
    inc c
    db $e4
    rlca
    inc d
    dec d
    inc c
    ld [hl-], a
    ld a, [bc]
    jr z, jr_023_6fd1

    inc de
    rla
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld h, a
    ld h, a
    ld h, a
    inc c
    dec b
    db $10
    ld h, [hl]
    inc d
    ld d, $0c
    ld [de], a
    ld a, [bc]
    jr c, jr_023_6ff5

    inc de
    rla
    ld h, a
    ld h, a
    ld l, d
    ld l, e
    ld h, a
    ld h, [hl]
    ld h, [hl]
    inc c
    dec h
    db $10
    ld h, a
    inc d
    ld d, $0c
    ld [hl-], a
    inc c
    inc c
    ld [bc], a
    db $10

jr_023_6fd1:
    ld h, a
    ld h, a
    inc c
    jr z, jr_023_6fe6

    inc c
    ld b, [hl]
    db $10
    inc d
    ld d, $24
    dec h
    inc c
    inc d
    ld a, [bc]
    inc c
    ld [hl+], a
    db $10
    inc c
    inc c
    db $10

jr_023_6fe6:
    inc c
    inc b
    ld [de], a
    inc d
    ld d, $34
    dec [hl]
    inc c
    inc [hl]
    ld e, $0c
    ld h, $15
    inc c
    rrca

jr_023_6ff5:
    dec e
    inc c
    ld h, b
    ld [de], a
    inc c
    and h
    ld d, $0c
    jr nc, jr_023_701b

    ld [bc], a
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc c
    ld [$0c10], sp
    call nz, Call_000_0210
    ld bc, $0302
    inc c
    inc d
    ld [$1110], sp
    inc c
    ldh [rNR12], a
    ld h, l
    ld h, l

jr_023_701b:
    ld h, l
    ld h, l
    inc c
    ldh [rNR14], a
    inc c
    inc d
    ld [$0200], sp
    inc e
    ld b, d
    ld b, e
    ld l, $2f
    inc l
    dec l
    jr nz, @+$23

    ld a, [bc]
    dec bc
    inc l
    dec l
    ld b, d
    ld b, e
    ld a, [hl+]
    dec hl
    ld c, $0f
    ld b, b
    ld b, c
    rst $38
    inc e
    inc d
    rlca
    ld d, d
    ld d, e
    ld a, $3f
    inc a
    dec a
    jr nc, @+$33

    ld a, [de]
    dec de
    inc a
    dec a
    ld d, d
    ld d, e
    ld a, [hl-]
    dec sp
    ld e, $1f
    ld d, b
    ld d, c
    inc e
    inc d
    ld [$0d0c], sp
    ld [$4009], sp
    ld b, c
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [$0e09], sp
    rrca
    ld l, $2f
    ld a, [bc]
    dec bc
    ld [$1c09], sp
    inc d
    ld [$1918], sp
    jr jr_023_7089

    ld d, b
    ld d, c
    ld a, [hl-]
    dec sp
    ld a, $3f
    jr @+$1b

    ld e, $1f
    ld a, $3f
    ld a, [de]
    dec de
    jr jr_023_7099

    inc e
    inc d
    ld [$0a1c], sp
    nop
    inc e
    ld d, b
    nop

jr_023_7089:
    inc l
    dec l
    ld b, b
    ld b, c
    inc e
    inc b
    nop
    ld [$2e09], sp
    cpl
    inc e
    inc d
    ld [$2a1c], sp

jr_023_7099:
    nop
    inc e
    ld [hl], b
    nop
    inc a
    dec a
    ld d, b
    ld d, c
    inc e
    inc h
    nop
    jr jr_023_70bf

    ld a, $3f
    inc e
    inc d
    ld [$2322], sp
    ld b, $07
    ld e, [hl]
    inc e
    call nz, $0407
    dec b
    inc h
    dec h
    inc e
    inc d
    ld [$3332], sp
    ld [de], a
    rla
    ld e, a

jr_023_70bf:
    inc e
    db $e4
    rlca
    inc d
    dec d
    inc [hl]
    dec [hl]
    inc e
    inc d
    ld [$2928], sp
    inc de
    rla
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld h, a
    ld h, a
    ld h, a
    inc e
    dec b
    db $10
    ld h, [hl]
    inc d
    ld d, $26
    daa
    inc e
    inc d
    ld [$3938], sp
    inc de
    rla
    ld h, a
    ld h, a
    ld l, d
    ld l, e
    ld h, a
    ld h, [hl]
    ld h, [hl]
    inc e
    dec h
    db $10
    ld h, a
    inc d
    ld d, $36
    scf
    inc e
    or h
    ld a, [bc]
    inc e
    ld [bc], a
    db $10
    ld h, a
    ld h, a
    inc e
    jr z, jr_023_710d

    inc e
    ld b, [hl]
    db $10
    inc d
    ld d, $4c
    ld c, l
    inc e
    call nc, Call_000_1c0a
    ld [hl+], a
    db $10
    inc e
    inc c
    db $10

jr_023_710d:
    inc e
    inc b
    ld [de], a
    inc d
    ld d, $4e
    ld c, a
    inc e
    db $f4
    ld c, $1c
    ld h, $15
    inc e
    rrca
    rra
    inc b
    inc e
    and h
    ld d, $1c
    jr nc, jr_023_7140

    ld [bc], a
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc e
    ld [$1c10], sp
    call nz, Call_000_0210
    ld bc, $0302
    inc e
    inc d
    ld [$1110], sp
    inc e
    ldh [rNR12], a
    ld h, l
    ld h, l

jr_023_7140:
    ld h, l
    ld h, l
    inc e
    ldh [rNR14], a
    inc e
    inc d
    ld [$0800], sp
    ld bc, $01ff
    rst $38
    ei
    ld bc, $0f0f
    ld c, l
    ld bc, $0f6f
    ld c, l
    ld bc, $0fcf
    ld c, l
    ld bc, $1f2f
    ld c, l
    ld bc, $1f8f
    ld c, l
    ld bc, $1fef
    ld c, l
    ld bc, $2f4f
    ld c, l
    ld bc, $2faf
    ld c, l
    ld bc, $3f0f
    ld c, l
    ld bc, $3f6f
    ld c, l
    ld bc, $3fcf
    ld c, l
    ld bc, $4f2f
    ld c, l
    ld bc, $4f8f
    ld c, l
    ld bc, $4fef
    ld c, l
    ld bc, $5f4f
    ld c, l
    ld bc, $5faf
    ld c, l
    ld bc, $6f0f
    ld c, l
    ld bc, $6f6f
    ld c, l
    ld bc, $6fcf
    ld c, l
    ld bc, $7f2f
    ld c, l
    ld bc, $7f8f
    ld c, l
    ld bc, $7cef
    nop
    ld [bc], a
    ld bc, $ff01
    rst $38
    ld bc, $01ff
    inc d
    rlca
    ld bc, $0f00
    ld c, l
    ld bc, $0f60
    ld c, l
    ld bc, $0fc0
    ld c, l
    ld bc, $1f20
    ld c, l
    ld bc, $1f80
    ld c, l
    nop
    ld [$f714], sp
    rrca
    ld l, b
    sbc e
    ret nc

    ccf
    ldh [$37], a

jr_023_71d0:
    jr nz, jr_023_71d0

    ret nz

    ld e, e
    ld b, b
    db $e4
    add a
    cp a
    db $db
    db $e4
    cpl
    or b
    rla
    ld hl, sp+$0e
    ld sp, hl
    dec bc
    call c, Call_000_3c07
    dec b
    ld d, $c3
    jp z, Jump_000_0014

    rlca
    ld a, a
    ld b, b
    or $14
    ld c, $09
    inc [hl]
    dec b
    and $c2
    rl h
    jr nz, jr_023_7202

    rst $30
    inc d
    ld c, $0b
    sub $c3
    ld [c], a
    add b
    rst $38

jr_023_7202:
    add b
    cp a
    ret nz

    db $db
    or b
    or a
    add b
    cp [hl]
    sub c
    sbc l
    ld c, [hl]
    ld c, [hl]
    ld h, h
    push hl
    inc bc
    rst $18
    ld bc, $01e5
    pop af
    ld [de], a
    ld [hl], d
    ld h, d
    ld h, [hl]
    ld [bc], a
    dec de
    ld h, h
    ld h, h
    inc a
    cp l
    add b
    or a
    add b
    sbc c
    ret nz

    jp nz, $6614

    ld b, $01
    push af
    ld bc, $01cd
    ld sp, $7111
    ld h, d
    ld h, [hl]
    ld [bc], a
    ld a, [de]
    ld h, [hl]
    ld h, a
    inc a
    cp h
    add b
    cp a
    inc d
    ld h, d
    ld a, [bc]
    ld bc, $14dd
    ld [hl], d
    nop
    inc d
    sub [hl]
    dec b
    cp l
    rst $28
    rla
    ld a, b
    adc e
    ldh a, [$1f]
    ldh [$37], a
    ld h, b
    cp [hl]
    ret nz

    ld a, a
    ret nz

    ld [hl], a
    add a
    cp a
    ei
    call nz, $a03f
    rra
    ldh a, [$0e]
    ld sp, hl
    rrca
    ret c

    rlca
    inc a
    rlca
    db $fc
    jp $83e2


    cp e
    adc h
    sbc a
    sub b
    rst $10
    sub b
    db $d3
    and b
    xor a
    ld h, b
    ld a, a
    ld b, b
    sub $40
    ld a, c
    add d
    or e
    ld [hl+], a
    rst $20
    ld [de], a
    ccf
    ld a, [bc]
    sbc e
    dec bc
    ld [$d405], a
    dec b
    cp $05
    cp h
    adc b
    sbc e
    sub b
    rst $18
    and b
    rst $38
    and b
    or [hl]
    ret nz

    ld sp, hl
    ret nz

    rst $38
    add b
    sbc a
    add b
    cp l
    ld [hl+], a
    cp a
    ld [de], a
    rst $30
    ld a, [bc]
    db $db
    ld a, [bc]
    ei
    ld b, $e6
    rlca
    rst $38
    inc bc
    ei
    inc bc
    ld a, a
    inc d
    nop
    dec e
    xor a
    ld [de], a
    ld a, [c]
    ld a, [bc]
    sbc $0b
    ei
    rlca
    rst $38
    inc bc
    db $db
    inc bc
    db $e3
    ld bc, $88f1
    db $db
    sub b
    rst $18
    and b
    cp a
    inc d
    ld b, $16
    inc hl
    or [hl]
    inc de
    ld a, [c]
    ld a, [bc]
    cp e
    ld a, [bc]
    rlc [hl]
    rst $30
    inc b
    db $fd
    ld [bc], a
    ld l, e
    ld [bc], a
    sub e
    cp [hl]
    ld a, $cf
    cpl
    and $16
    db $f4
    rrca
    ld b, h
    cp a
    xor b
    ld e, l
    jp nz, $9c2b

    ld h, d
    ld a, b
    ld a, d
    ldh a, [$f5]

Call_023_72e6:
    ret


    sub $40
    ld a, a
    ld d, l
    ld l, d
    xor d
    push af
    sbc l
    or d
    ld h, a
    sbc b
    ld a, $3e
    rrca
    xor a
    ld h, $d6
    inc b
    rst $38
    ld d, h
    xor a

Call_023_72fc:
    xor b
    ld e, l
    ld [c], a
    dec bc
    cp [hl]
    ld b, b
    ld a, b
    ld a, c
    ldh a, [$f3]
    inc d
    ld [hl], h
    ld d, $ef
    db $10
    inc d
    add b
    inc e
    ld a, c
    ld a, d
    di
    db $f4
    rst $08
    ret nc

    ld e, a
    ld h, b
    ld d, [hl]
    ld l, c
    xor e
    db $f4
    sub a
    cp b
    ld l, e
    sub h
    inc d
    nop
    inc d
    ld b, b
    ld a, c
    ld b, b
    ld a, a
    inc d
    ld c, h
    ld de, $13b2
    ld a, [c]
    ld a, [bc]
    rst $18
    ld a, [bc]
    rst $38
    ld b, $ff
    inc b
    db $dd
    ld [bc], a
    db $e3
    ld [bc], a
    di
    add a
    adc a
    adc b
    res 2, b
    rst $38
    and b
    or a
    ld h, b
    ld a, [hl]
    ld b, b
    rst $38
    ld b, b
    ld [hl], a
    add b
    adc a
    jp $23d2


    xor d
    inc de
    ld a, [c]
    dec bc
    ld a, [$dc0d]
    dec b
    ld a, $05
    db $fc
    ld [bc], a
    ei
    inc d
    and b
    dec c
    ld [hl], l
    ld bc, $018f
    push af
    inc d
    or [hl]
    ld b, $14
    ld h, b
    inc e
    inc d
    or b
    inc e
    inc d
    ldh [$03], a
    sub $a0
    xor c
    ldh [rIE], a
    ret nz

    sub $40
    ld a, c
    add c
    or c
    ld hl, $11e5
    cp l
    dec bc
    sbc e
    dec bc
    db $eb
    rlca
    rst $10
    inc bc
    ei
    inc bc
    cp e
    add a
    or a
    adc b
    res 2, b
    sbc a
    and b
    or a
    ldh [rIE], a
    ret nz

    db $ed
    ld b, b
    ld [hl], e
    add b
    adc a
    pop bc
    push de
    ld hl, $11a7
    di
    add hl, bc
    ld l, c
    dec bc
    sbc e
    rlca
    rst $30
    inc bc
    db $eb
    inc bc
    ei
    inc d
    ldh [rTMA], a
    ldh [$fb], a
    ret nz

    add $c0
    jp hl


    add d
    adc d
    ld hl, $11e1
    ld sp, $9909
    inc d
    ld e, b
    jr nz, jr_023_73c0

    rst $38
    inc bc
    cp e
    add a
    sbc a
    inc d
    ld [c], a

jr_023_73c0:
    ld [de], a
    ldh [$fd], a
    ret nz

    cp $c0
    rst $30
    add b
    adc a
    jp $23d7


    xor a
    ld de, $09f5
    ld sp, hl
    dec b
    or l
    dec b
    ld a, l
    inc bc
    db $eb
    inc bc
    di
    add b
    cp a
    add b
    sbc l
    add a
    rst $00
    adc b
    xor e
    ret nc

    rst $18
    ldh [rIE], a
    ret nz

    add $c0
    reti


    inc bc
    or d
    inc bc
    add $c3
    sbc $14
    ld a, [c]
    db $10
    dec c
    call c, $f605
    dec b
    or h
    add a
    cp a
    adc b
    res 2, b
    db $fc
    and b
    xor [hl]
    ldh [$f7], a
    ret nz

    call $e3c0
    add b
    adc a
    jp Jump_000_23ca


    xor [hl]
    inc de
    db $76
    dec bc
    jp c, $2c0d

    dec b
    or $05
    call z, $fa03
    rst $28
    db $10
    ld a, l
    add d
    rst $38
    nop
    db $db
    inc h
    ld a, a
    add b
    rst $30
    ld [$21de], sp
    ei
    inc b
    ei
    inc b
    rst $18
    jr nz, @+$01

    nop
    db $76
    adc c
    rst $38
    nop
    inc d

jr_023_7433:
    ld [de], a
    jr nc, jr_023_7433

    ld [bc], a
    cp a
    ld b, b
    db $ed
    ld [de], a
    rst $38
    nop

jr_023_743d:
    or l
    ld c, d
    rst $38
    nop

jr_023_7441:
    rst $28
    db $10
    ld a, [$bf05]
    ld b, b
    xor a
    ld d, b
    rst $38
    nop

jr_023_744b:
    ld a, e
    add h
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    call $b732
    ld c, b
    db $fc
    inc bc
    inc d
    ld b, $30
    rst $20
    jr jr_023_743d

    dec h
    ld a, a
    add b
    cp a
    ld b, b
    ld sp, hl
    ld b, $d6
    add hl, hl
    inc d
    ld c, b
    jr nc, jr_023_744b

    inc h
    rst $38
    nop
    call $f332
    inc c
    xor l
    ld d, d
    rst $38
    nop
    cp c
    ld b, [hl]
    or $09
    inc d
    ld [hl-], a
    jr nc, jr_023_7441

    ld b, c
    or a
    ld c, b
    cp $01
    ld d, e
    xor h
    db $ed
    ld [de], a
    cp $01
    inc d
    ld b, d
    jr nc, jr_023_74fd

    sub h
    inc d
    nop
    ccf
    dec l
    ldh a, [rIF]
    jp $8e33


    ld l, [hl]
    sbc e
    ld e, e
    dec a
    cp l
    scf
    or a
    ld a, e
    ei
    dec a
    cp l
    rrca
    ldh a, [rSCX]
    ld c, h
    pop af
    or $f9
    ld a, [$dddc]
    or h
    or l
    ld l, [hl]
    ld l, a
    ld a, [$5ffb]
    rst $18
    db $76
    or $2d
    xor l
    dec sp
    cp e
    sbc a
    ld e, a
    adc a
    ld l, a
    jp nz, $f032

    rrca
    cp h
    cp l
    sbc $df
    db $ec
    db $ed
    cp h
    cp l
    reti


    jp c, Jump_023_7671

    jp Jump_000_0fcc


    ldh a, [rNR14]
    and b
    rst $38
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

jr_023_74fd:
    ld a, a
    ld c, l
    inc d
    cp a
    ld a, a
    dec l
    nop
    ld [bc], a
    inc c
    inc l
    dec l
    jr nc, jr_023_753b

    inc h
    dec h
    jr z, jr_023_7537

    inc c
    ld b, $02
    inc c
    nop
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    ld a, [hl+]
    dec hl
    inc c
    ld h, $02
    inc c
    jr nz, jr_023_7528

    inc c
    inc d

jr_023_7528:
    ld [$000c], sp
    nop
    ld b, $07
    ld [$0c09], sp
    ld b, [hl]
    ld [bc], a
    ld a, [bc]
    dec bc
    inc c
    db $10

jr_023_7537:
    rrca
    ld bc, $1716

jr_023_753b:
    jr jr_023_7556

    inc c
    ld h, [hl]
    ld [bc], a
    ld a, [de]
    dec de
    inc c
    jr nc, @+$0e

    inc c
    ld c, [hl]
    nop
    inc c
    add d
    ld a, [bc]
    ld b, $07
    inc c
    inc d
    ld [$6e0c], sp
    nop
    inc c
    and d
    ld a, [bc]

jr_023_7556:
    ld d, $17
    inc c
    inc d
    ld [$820c], sp
    inc c
    inc c
    add d
    nop
    inc c
    inc d
    ld [$a20c], sp
    inc c
    inc c
    and d
    nop
    inc c
    inc d
    ld [$0302], sp
    inc c
    nop
    db $10
    inc b
    dec b
    inc c
    add d
    nop
    nop
    ld bc, $000c
    ld [de], a
    inc c
    inc d
    ld [$1312], sp
    inc c
    jr nz, @+$12

    inc d
    dec d
    inc c
    and d
    nop
    db $10
    ld de, $200c
    ld [de], a
    inc c
    inc d
    ld [$080c], sp
    ld b, $0c
    ld [bc], a
    ld b, $0c
    inc d
    ld [$280c], sp
    ld b, $0c
    ld [hl+], a
    ld b, $0c
    inc [hl]
    rra
    ccf
    jr z, jr_023_75cf

    inc c
    nop
    db $10
    inc c
    ld b, $04
    inc c
    ld d, h
    ld e, $2a
    dec hl
    inc c
    jr nz, @+$12

    inc c
    ld h, $04
    inc c
    inc d
    ld [$0200], sp
    ld b, $2c
    dec l
    jr nc, jr_023_75f2

    inc h
    dec h
    jr z, jr_023_75ee

    ld b, $06
    ld [$06ff], sp
    inc d
    rlca
    ld l, $2f
    ld [hl-], a

jr_023_75cf:
    inc sp
    ld h, $27
    ld a, [hl+]
    dec hl
    ld b, $26
    ld [$1406], sp
    ld [$0006], sp
    rrca
    dec l
    ld a, [bc]
    dec bc
    ld b, $02
    rrca
    dec bc
    ld a, [de]
    dec de
    ld b, $22
    rrca
    dec bc
    jr nc, jr_023_761d

    ld b, $02

jr_023_75ee:
    rrca
    dec bc
    ld [hl-], a
    inc sp

jr_023_75f2:
    ld b, $22
    rrca
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $06
    ld a, [bc]
    ld b, $12
    ld a, [bc]
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld b, $26
    ld a, [bc]
    ld b, $32
    inc c
    ld [$0609], sp
    ld b, d
    ld a, [de]
    inc h
    dec h
    ld b, $14
    ld a, [bc]
    jr @+$1b

    ld b, $62
    ld a, [de]
    ld h, $27
    ld b, $34

jr_023_761d:
    inc c
    ld b, $82
    ld a, [de]
    ld b, $52
    inc e
    ld b, $e0
    nop
    ld b, $a2
    jr jr_023_7631

    ld [hl], d
    ld e, $00
    ld bc, $0006

jr_023_7631:
    db $10
    ld b, $00
    db $10
    inc b
    dec b
    ld b, $90
    rra
    ld bc, $1110
    ld b, $20
    db $10
    ld b, $20
    db $10
    inc d
    dec d
    ld b, $b0
    inc e
    nop
    ld [bc], a
    inc b
    jr z, jr_023_7676

    inc b
    nop
    ld [$2d2c], sp
    jr nc, jr_023_7685

    inc h
    dec h
    rst $38
    inc b
    inc d
    rlca
    ld a, [hl+]
    dec hl
    inc b
    jr nz, jr_023_7667

    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    inc b
    inc d

jr_023_7667:
    ld [$2d2c], sp
    ld [$0409], sp
    ld b, d
    ld b, $0a
    dec bc

Jump_023_7671:
    inc b
    db $10
    inc c
    ld l, $2f

jr_023_7676:
    jr jr_023_7691

    inc b
    ld h, d
    ld b, $1a
    dec de
    inc b
    jr nc, jr_023_768e

    jr nc, jr_023_76b3

    inc b
    add d
    ld a, [bc]

jr_023_7685:
    ld b, $07
    inc b
    ld d, h
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc b
    and d

jr_023_768e:
    ld a, [bc]
    ld d, $17

jr_023_7691:
    inc b
    ld [hl], h
    rrca
    dec bc
    jr nc, jr_023_76c8

    inc b
    sub h
    rrca
    dec bc
    ld [hl-], a
    inc sp
    inc b
    ld [hl], h
    inc c
    nop
    ld bc, $0302
    inc b
    ld b, $18
    inc b
    sub h
    inc c
    db $10
    ld de, $1312
    inc b
    ld h, $18
    inc b
    ld [hl], h

jr_023_76b3:
    inc c
    inc h
    dec h
    inc b
    nop
    ld a, [bc]
    inc b
    sub h
    inc c
    ld h, $27
    inc b
    jr nz, jr_023_76cb

    inc b
    inc [hl]
    rra
    ld c, l
    inc b
    sub h
    rra

jr_023_76c8:
    add hl, de
    nop
    ld [bc], a

jr_023_76cb:
    inc c
    inc l
    dec l
    jr nc, jr_023_7701

    inc h
    dec h
    inc c
    nop
    ld [bc], a
    jr z, @+$2b

    inc c
    inc c
    ld [bc], a
    rst $38
    inc c
    inc d
    rlca
    ld l, $2f
    ld [hl-], a
    inc sp
    ld h, $27
    inc c
    jr nz, jr_023_76e9

    ld a, [hl+]
    dec hl

jr_023_76e9:
    inc c
    inc l
    ld [bc], a
    inc c
    inc d
    ld [$000c], sp
    nop
    ld b, $07
    ld a, [bc]
    dec bc
    inc c
    ld [$090f], sp
    ld d, $17
    ld a, [de]
    dec de
    inc c
    jr z, jr_023_7710

jr_023_7701:
    add hl, bc
    inc c
    add d
    ld [bc], a
    inc c
    ld a, [bc]
    rrca
    rlca
    inc c
    and d
    ld [bc], a
    inc c
    ld a, [hl+]
    rrca
    inc bc

jr_023_7710:
    jr z, @+$2b

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc c
    ld [$050f], sp
    ld a, [hl+]
    dec hl
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    jr z, jr_023_7736

    dec b
    ld [$0809], sp
    add hl, bc
    inc c
    inc b
    ld [bc], a
    ld b, $07
    inc c
    nop
    db $10
    inc c
    nop

jr_023_7736:
    db $10
    inc c
    inc d
    ld [$1918], sp
    jr jr_023_7757

    inc c
    inc h
    ld [bc], a
    ld d, $17
    inc c
    jr nz, jr_023_7756

    inc c
    jr nz, @+$12

    inc c
    inc d
    ld [$860c], sp
    ld [bc], a
    inc c
    add b
    ld b, $0c
    add d
    nop
    inc c

jr_023_7756:
    inc d

jr_023_7757:
    ld [$a60c], sp
    ld [bc], a
    inc c
    and b
    ld b, $0c
    and d
    nop
    inc c
    inc d
    ld [$c60c], sp
    inc b
    inc c
    jp nz, Jump_000_0c00

    call nz, Call_000_0002
    ld bc, $140c
    ld [$e60c], sp
    inc b
    inc c
    ld [c], a
    nop
    inc c
    db $e4
    ld [bc], a
    db $10
    ld de, $340c
    inc c
    inc c
    ld a, [bc]
    ld b, $0c
    nop
    ld [bc], a
    inc c
    inc d
    ld c, $0c
    inc l
    inc b
    inc c
    jr nz, jr_023_7791

    inc c
    inc d

jr_023_7791:
    ld [$0200], sp
    ld [bc], a
    jr z, jr_023_77c0

    ld [bc], a
    nop
    ld c, $ff
    ld [bc], a
    inc d
    rlca
    ld a, [hl+]
    dec hl
    ld [bc], a
    jr nz, jr_023_77b1

    ld [bc], a
    inc d
    ld [$0002], sp
    rrca
    ld sp, $2d2c
    ld [$0209], sp
    add [hl]
    nop

jr_023_77b1:
    inc h
    dec h
    ld [bc], a
    ld c, $0f
    inc bc
    ld l, $2f
    jr jr_023_77d4

    ld [bc], a
    and [hl]
    nop
    ld h, $27

jr_023_77c0:
    ld [bc], a
    ld l, [hl]
    rrca
    dec b
    jr nc, jr_023_77f7

    ld [bc], a
    add $00
    ld [bc], a
    adc h
    rrca
    rlca
    ld [hl-], a
    inc sp
    ld [bc], a
    and $00
    ld [bc], a
    xor h

jr_023_77d4:
    rrca
    add hl, bc
    inc a
    dec a
    ld [bc], a
    jp z, $0b0f

    ld a, $3f
    ld [bc], a
    ld [$0b0f], a
    ld [bc], a
    ret z

    rrca
    add hl, hl
    jr z, jr_023_7811

    inc b
    dec b
    jr nc, jr_023_781d

    nop
    ld bc, $0c02
    rrca
    rlca
    inc d
    dec d
    ld [hl-], a
    inc sp
    db $10

jr_023_77f7:
    ld de, $2c02
    rrca
    rlca
    ld [bc], a
    call nz, $0200
    adc h
    inc b
    ld [bc], a
    ld [de], a
    rrca
    ld bc, $e402
    nop
    ld [bc], a
    xor h
    inc b
    ld [bc], a
    ld [hl-], a
    ld a, [bc]
    ld a, $0b

jr_023_7811:
    rlca
    nop
    nop
    ret nz

    ldh a, [$f8]
    inc bc
    db $fc
    sbc b
    ld a, [$73e5]

jr_023_781d:
    dec sp
    dec sp
    ld a, a
    cp $de
    rst $38
    rst $38
    db $e3
    ld [hl], d
    db $dd
    rst $38
    ld a, a
    ld a, a
    ld l, a
    ld a, $26
    add hl, sp
    add hl, de
    rra
    ld l, $1f
    dec c
    nop
    add c
    ld c, b
    inc b
    rst $38
    sbc [hl]
    db $e3
    ld [hl], d
    db $dd
    rst $38
    ld a, a
    ld a, a
    ld l, a
    ld a, $a6
    ld sp, hl
    ld sp, hl
    ld a, a
    ld a, a
    nop
    rst $38
    rst $38
    db $e3
    ld [hl-], a
    db $dd
    rst $38
    ld a, a
    ld a, a
    ld l, a
    ld a, $26
    add hl, sp
    add hl, de
    rrca
    inc bc
    rlca
    ld [$8600], sp
    rlca
    ld [$1410], sp
    dec c
    ld [bc], a
    ld [$8600], sp
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc b
    nop
    sub b
    rra
    ccf

jr_023_786e:
    inc hl
    ld [hl], e
    rst $18
    rst $38
    ld a, a
    rst $38
    ld l, a
    ld a, $3e
    ld sp, hl
    add hl, de
    rra
    ld l, $1f
    ld b, $00
    adc d
    inc bc
    inc c
    db $10
    db $10
    jr nz, jr_023_78a5

    jr nc, jr_023_7906

    add b
    rst $38
    dec b
    nop
    add c
    rst $38
    add hl, bc
    nop
    add [hl]
    rst $38
    rlca
    jr @+$22

    ld b, b
    ld b, b
    dec b
    add b
    sub [hl]
    ld b, b
    ld h, b
    jr c, jr_023_78e4

    add b
    rst $38
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nc, jr_023_78d5

jr_023_78a5:
    jr jr_023_78b3

    ld c, $07
    ld b, $06
    inc c
    ld [$1f10], sp
    rlca
    nop
    add l
    rlca

jr_023_78b3:
    ld [$2010], sp
    jr nz, jr_023_78bc

    ld b, b
    add [hl]
    ld [hl], b
    inc a

jr_023_78bc:
    rra
    rrca
    rlca
    rlca
    dec b
    inc bc
    add hl, bc
    nop
    add l
    rlca
    jr jr_023_78e8

    ld b, b
    ld b, b
    inc b
    add b
    add [hl]
    ret nz

    ret nz

    ld h, b
    nop
    jr z, jr_023_78fb

    inc bc
    ld b, h

jr_023_78d5:
    add d
    add d
    add d
    inc bc
    add $03
    ld l, h
    adc b
    jr c, jr_023_7917

    db $10
    db $10
    jr z, jr_023_790b

    inc l

jr_023_78e4:
    ld l, h
    inc b
    ld b, h
    add c

jr_023_78e8:
    ld l, h
    inc bc
    jr z, jr_023_786e

    db $10
    db $10
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    add l

jr_023_78fb:
    ld bc, $0806
    inc e
    ld e, $0a
    nop
    add [hl]
    ld a, [hl]
    add c
    nop

jr_023_7906:
    ld bc, $fe7c
    dec bc
    nop

jr_023_790b:
    sub l
    add b
    ld h, b
    sub b
    ret z

    ld l, b
    ccf
    ccf
    ld a, a
    ld a, [hl]
    ld c, h
    ld h, b

jr_023_7917:
    ld a, b
    ld a, l
    jr c, @+$22

    db $10
    db $10
    ld [$0106], sp
    nop
    inc bc
    cp $86
    ld a, [hl]
    jr c, @+$03

    ld a, $f8
    ldh [rTIMA], a
    nop
    xor l
    add c

jr_023_792e:
    ld a, [hl]
    inc h
    inc [hl]
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    ld h, b
    add b
    nop
    ld bc, $1806
    inc a
    ld a, a
    ld a, a
    cp $b8
    ret nz

    ld sp, hl
    ld [hl], b
    ld b, b
    jr nz, jr_023_7965

    ld b, $01
    rst $38
    nop
    ld bc, $ff7e
    rst $38
    cp $7c
    nop
    rst $38
    db $fc
    inc b
    nop
    sub c
    rst $38
    add b
    ld h, b
    ret c

    ld h, h
    ld [hl-], a

jr_023_7963:
    ld a, [de]
    add hl, bc

jr_023_7965:
    add hl, bc
    ld hl, $02c9
    ld [bc], a
    inc b
    jr jr_023_79cd

    add b
    dec b
    nop
    adc e
    ld bc, $300e
    ld a, a
    rst $38

jr_023_7976:
    cp a
    sbc $f8
    ld b, b
    jr nc, jr_023_798b

    dec b
    nop
    adc e
    rst $38
    nop
    nop
    ccf
    rst $38
    ccf
    rra
    inc bc
    nop
    nop
    rst $38
    dec b

jr_023_798b:
    nop
    adc e
    ld hl, sp+$07
    nop
    jp $e0e0


    call nz, Call_000_00f8
    nop
    rst $38
    rlca
    nop
    adc b
    ret nz

    jr nz, jr_023_792e

    ld d, b
    ld d, b
    db $10
    jr nz, jr_023_7963

    add hl, bc
    nop
    adc b
    inc bc
    inc c
    db $10
    jr nz, jr_023_79de

    ld a, a
    ld a, a
    rst $38
    ld [$8800], sp
    ret nz

    jr nc, jr_023_79bc

    db $e4
    inc [hl]
    sbc d
    adc $c5
    inc bc
    rst $38
    and l

jr_023_79bc:
    or e
    db $e3
    pop hl
    and c
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_023_79e6

    db $10
    inc c
    inc bc
    push bc
    pop bc
    pop de
    sub c

jr_023_79cd:
    pop hl
    pop bc
    add c
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$c030], sp
    nop
    nop
    ld e, $21
    ld c, h

jr_023_79de:
    ld b, d
    db $dd
    db $fd
    inc b
    db $fc
    add h
    db $fd
    db $fd

jr_023_79e6:
    rst $38
    sbc $04
    nop
    add d
    add b
    add b
    inc bc
    ld b, b
    rlca
    jr nz, jr_023_7976

    sbc $dc
    ret c

    sub b
    ld b, $80
    add h
    ld b, b
    ld b, b
    ld hl, $0d1e
    nop
    add l
    ld bc, $0806
    inc de
    rla
    ld a, [bc]
    nop
    sub [hl]
    ld a, [hl]

jr_023_7a09:
    add c
    nop
    nop
    jp $23e7


    daa
    ld b, a
    ld b, e
    ld b, c
    ld c, b
    ld b, a
    ld b, e
    jr nz, jr_023_7a38

    db $10
    db $10
    ld [$0106], sp
    nop
    inc bc
    rst $38
    add [hl]
    rst $20
    jp $8100


    rst $20
    jp $0005


    add d

Jump_023_7a2a:
    add c
    ld a, [hl]
    dec bc
    nop
    add l
    ld bc, $3c06
    ld a, [hl]
    rst $38
    ld a, [bc]
    nop
    add l
    ld a, [hl]

jr_023_7a38:
    add c
    nop
    ld a, a
    cp $05
    rst $38
    adc h
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, l
    jr c, jr_023_7a65

    db $10
    db $10
    ld [$0106], sp
    nop
    inc b
    rst $38
    add l
    cp $7d
    ld a, $f8
    ldh [rTIMA], a
    nop
    add d
    add c
    ld a, [hl]
    ld c, e
    nop
    add l
    ld bc, $0f07
    rra
    rra
    ld a, [bc]
    nop
    add [hl]
    ld a, [hl]
    rst $38

jr_023_7a65:
    rst $38
    cp $ff
    rst $38
    dec bc
    nop
    adc c
    add b
    ldh [rSVBK], a
    jr c, jr_023_7a09

    inc sp
    ld hl, $7365
    inc b
    ld a, a
    adc h
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    ld bc, $c700
    add e
    and e
    rst $08
    dec bc
    rst $38
    sbc b
    ld a, [hl]
    call c, $eecc
    cp $ee
    xor $fe
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$e0]
    add b
    nop
    ld bc, $1f07
    ccf
    ld b, a
    ld c, e
    rst $00
    inc bc
    rst $38
    adc l
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    ld bc, $ffff
    cp $ff
    jp $c3a1


    add hl, bc
    rst $38
    sub b
    add b
    ldh [$38], a
    sbc h
    adc $e6
    rst $30
    rst $30
    rst $38
    rst $30
    cp $fe
    db $fc
    ld hl, sp-$20
    add b
    dec b
    nop
    adc e
    ld bc, $3f0f
    ld a, a
    push bc
    pop hl
    rst $38
    rst $38
    ld a, a
    ccf
    rrca
    dec b
    nop
    inc b
    rst $38
    add d
    add sp, -$20
    dec b
    rst $38
    dec b
    nop
    add [hl]
    ld hl, sp-$01
    rst $38
    db $fc
    ld a, a
    ccf
    dec b
    rst $38
    rlca
    nop
    adc b
    ret nz

    ldh [rSVBK], a
    or b
    or b
    ldh a, [$e0]
    ret nz

    add hl, bc
    nop
    adc b
    inc bc
    rrca
    rra
    ccf
    ccf
    ld e, h
    ld c, b
    adc b
    ld [$8b00], sp
    ret nz

    ldh a, [$f8]
    inc e
    call z, Call_023_72e6
    ld a, e
    sbc h
    adc b
    call c, $ff06
    adc c
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rrca
    inc bc
    ld a, e
    ld a, a
    rlca
    rst $38
    sub d
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    nop
    ld e, $3f
    ld [hl], e
    ld a, l
    cp $e6
    and a
    and a
    rst $30
    inc bc
    and a
    add d
    rst $38
    rst $38
    inc b
    nop
    add d
    add b
    add b
    inc bc
    ret nz

    rlca
    ldh [$0a], a
    rst $38
    add h
    ld a, a
    ld a, a
    ccf
    ld e, $0d
    nop
    add l
    ld bc, $0f07
    rra
    rra
    ld a, [bc]
    nop
    add c
    ld a, [hl]
    dec b
    rst $38
    add h
    ld a, $3c
    ld a, h
    ld a, [hl]
    inc b
    ld a, a
    adc h
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    ld bc, $3c00
    jr jr_023_7bb9

    inc a
    dec bc
    rst $38
    add c
    ld a, [hl]
    dec bc
    nop
    add l
    ld bc, $3f07
    ld b, e
    add c
    ld a, [bc]
    nop
    add a
    ld a, [hl]
    rst $38
    rst $38
    cp $83
    ld bc, $0391
    add c
    add c
    ld b, e
    inc bc
    ld a, a
    adc c
    ccf
    ccf
    rra
    rra
    rrca
    rlca
    ld bc, $1100
    inc bc
    ld bc, $8381
    ld a, [bc]
    rst $38
    add c
    ld a, [hl]
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_7bb9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_023_7e82:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_023_7efd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_023_7f7f:
    nop

Jump_023_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_023_7fb8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_023_7fff:
    nop
