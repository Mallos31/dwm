; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    ld [hl], $51
    ld b, b
    jr nc, jr_036_4047

    ei
    ld b, e
    cp h
    ld b, l
    ld e, h
    ld b, a
    ld sp, $0749
    ld c, e
    cpl
    ld c, h
    dec c
    ld c, l
    sbc h
    ld c, [hl]
    ld h, b
    ld c, a
    ld a, [hl]
    ld d, b
    dec sp
    ld d, d
    ld c, l
    ld d, e
    and $54
    jr z, jr_036_4077

    ld a, [hl-]
    ld d, a
    call c, $f558
    ld e, c
    inc sp
    ld e, e
    cp h
    ld e, h
    adc [hl]
    ld e, [hl]
    db $76
    ld e, a
    ld l, d
    ld h, b
    dec c
    ld h, d
    ld [de], a
    ld h, e
    sub [hl]
    ld h, h
    ld a, [hl]
    ld h, [hl]
    or b
    ld l, b
    adc [hl]
    ld l, d
    ld sp, hl
    ld l, e
    or l
    ld l, l
    add hl, hl
    ld l, a
    ld e, a
    ld [hl], b
    or l
    ld [hl], c

jr_036_4047:
    inc d
    ld [hl], e
    add hl, bc
    ld [hl], l
    inc e
    db $76
    rra
    ld [hl], a
    db $fc
    ld [hl], a
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    db $f4
    rst $38
    ldh [$6d], a
    rst $38
    rra
    db $fc
    inc b
    ld [bc], a
    nop
    dec b
    nop
    rst $38
    pop af
    adc [hl]
    rst $38
    ld [hl], e
    ld a, a
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$3a]
    rst $08
    ld l, a
    or [hl]
    ld sp, hl
    ld b, b
    rst $38
    and h
    db $db

jr_036_4077:
    db $fc
    rst $38
    ld [bc], a
    nop
    ld bc, $3fc0
    and b
    rst $18
    ldh a, [$2f]
    ld hl, sp-$69
    ld a, h
    ld c, e
    cp [hl]
    ld [bc], a
    db $10
    rlca
    ld bc, $07fe
    ld sp, hl
    db $fd
    ld [bc], a
    nop
    dec b
    ld a, b
    cp a
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    ld [bc], a
    nop
    ld bc, $fd06
    rlca
    cp $03
    rst $38
    rrca
    cp $31
    inc c
    rrca
    jp $e0c3


    ld h, b
    or b
    ldh a, [rBCPS]
    rst $18
    call z, $beae
    ld [hl], e
    ld a, [hl]
    rlc e
    ld a, a
    add b
    add sp, $70
    ld a, a
    rrca
    rrca
    inc b
    rlca
    ld [$19cc], sp
    ld sp, $d711
    dec bc
    ei
    sub l
    rst $28
    ld b, l
    cp l
    add d
    rst $38
    ld c, d
    or $a2
    cp a
    ld hl, $153f
    dec de
    rlca
    ld l, $1f
    ret c

    ld a, a
    ldh a, [$bf]
    and b
    rst $38
    ret nz

    rst $38
    xor b
    ld d, a
    ld a, h
    ld a, e
    ei
    ld [bc], a
    db $10
    rlca
    ld [bc], a
    rst $38
    pop af
    ldh a, [rKEY1]
    add b
    ld sp, hl
    cp h
    rst $38
    db $fc
    rst $00
    cp $03
    cp $03
    rst $38
    ld bc, $00ff
    adc a
    push af
    add a
    db $fd
    rst $30
    db $fd
    rst $38
    adc h
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    pop bc
    add hl, de
    pop af
    inc e
    sub e
    ld [$8fe8], sp
    ld hl, sp-$7c
    call nz, $fe83
    add c
    ld sp, hl
    nop
    rst $00
    ld de, $8b1f
    adc a
    adc h
    adc l
    ld c, c
    ld c, e
    xor b
    ld l, h
    rla
    sub a
    ld a, e
    ld a, [bc]
    rst $00
    and a
    ret nz

    db $e4
    adc b
    jp nc, $cb10

    add [hl]
    and [hl]
    ld a, a
    ld a, l
    ld b, l
    rst $30
    and [hl]
    or $da
    ld a, [hl]
    rst $38
    add b
    ld e, a
    ret nz

    ccf
    ld h, b
    rst $38
    ldh [rIE], a
    and b
    cp a
    ldh [$7f], a
    ld b, b
    di
    add b
    ld [bc], a
    or b
    inc c
    rst $38
    ld bc, $01ff
    ld [bc], a
    ret z

    nop
    cp $07
    db $fc
    rrca
    db $f4
    rra
    add sp, $3f
    nop
    db $fc
    nop
    di
    nop
    rst $08
    nop
    cp a
    inc bc

jr_036_4168:
    rst $38
    dec c
    cp $31
    rst $38
    rst $00
    add $5d
    pop bc
    inc sp
    ldh [$3f], a
    ldh a, [$cc]
    ld a, [$f8a9]
    ld d, a
    call c, $fcd7
    ld d, d
    ld e, [hl]
    rst $18
    ei
    ld l, a
    rst $38
    or b
    ld a, a
    rra
    rra
    ld sp, hl
    add hl, de
    add sp, $1c
    adc h
    ld c, l
    ld [hl], $0e
    dec c
    nop
    rst $20
    ret nz

    ei
    ld [bc], a
    rra
    ld [de], a
    add b
    rst $38
    add b
    ld [bc], a
    ld e, h
    ld bc, $ff02
    ld a, [c]
    inc bc
    db $fc
    rlca
    ld sp, hl
    rra
    db $e3
    ld a, $f1
    dec a
    db $e3
    ld a, e
    call z, $926f
    db $dd
    jr z, jr_036_4168

    ret nz

    rst $38
    ld [c], a
    dec a
    pop af
    ld a, $cc
    ret


    ccf
    cp a
    ret nz

    ld_long $ff3f, a
    ld b, b
    cp a
    inc c
    di
    nop
    rst $38
    ld hl, $dbde
    or $23
    cp [hl]
    db $c2, $fe, $0b

    or $83
    ld a, [hl]
    inc h
    call c, Call_036_7d86
    dec bc
    ld hl, sp-$0b
    dec c
    or $0e
    dec b
    rlca
    db $e4
    dec e
    push hl
    rra
    rst $08
    ld a, $0f
    ld [$f01f], sp
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ld b, b
    cp a
    and b
    cp a
    and b
    rst $38
    ld h, b
    ld [bc], a
    nop
    nop
    rst $20
    inc a
    rst $38
    jr @+$04

    or b
    ld [$1ffc], sp
    ei
    rrca
    cp $07
    ld [bc], a
    call z, $0200
    nop
    ld [bc], a
    ld [$c0f7], sp
    rst $38
    ccf

jr_036_420e:
    ld a, a
    add b
    or [hl]
    rst $38
    ld [bc], a
    rra
    nop
    nop
    rst $38
    nop
    jr jr_036_420e

    ld h, b
    rst $20
    and c
    sbc c
    rrca
    adc $ff
    ldh a, [rSC]
    nop
    ld [bc], a
    ccf
    jr nz, jr_036_42a7

    ret nz

    rst $38
    ld [bc], a
    rra
    ld e, $02
    rst $38
    push af
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    ldh a, [rIE]
    and $27
    pop af
    ld de, $09f9
    cp $07
    db $fd
    rlca
    dec b
    nop
    ld bc, $0ff0
    db $fc
    or e
    cp $55
    rst $38
    xor d
    cp e
    ld sp, $0531
    nop
    ld bc, $ff01
    ld bc, $03fe
    cp $83
    ld a, l
    rst $00
    dec a
    push hl
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    cp a
    cp e
    sub h
    sbc a
    sbc d
    sbc a
    dec h
    dec a
    ld c, b
    ld a, b
    dec b
    nop
    ld [bc], a
    ld c, $fe
    ret nc

    ldh a, [$a9]
    cp c
    ld d, a
    sbc $cb
    adc $05
    db $10
    ld [bc], a
    ld a, a

Call_036_427f:
    ld b, b
    rst $38
    add b
    dec b
    nop
    ld bc, $ff00
    rlca
    rst $38
    inc b
    dec b
    ld e, d
    inc bc
    dec b
    rst $38
    pop af
    or b
    or b
    db $fc
    ld a, h
    cp $22
    rst $38
    ld bc, $07fe
    ld hl, sp+$0e
    ld sp, hl
    dec c
    db $fc
    rlca
    sbc l
    db $fd
    ld c, c
    ld a, a
    and b
    cp a
    ld [hl], b

jr_036_42a7:
    rst $18
    ld l, c
    rst $18
    jr nc, jr_036_4322

    nop
    add hl, sp
    ret nz

    rst $08
    sub b
    ldh a, [rNR44]
    db $e3
    ld d, l
    rst $10
    add sp, -$41
    ld h, [hl]
    cp a
    pop bc
    rst $20
    add hl, bc
    swap d
    ld a, $df
    sbc $ef
    ld [$484f], a
    adc a
    adc b
    ld c, a
    ret z

    ld c, a
    ret z

    daa
    db $e4
    cp a
    cp $05
    ld h, h
    ld [$b005], sp
    rrca
    ld [bc], a
    inc bc
    dec b
    ld h, h
    rlca
    inc c
    di
    ld e, $30
    ldh a, [$df]
    or $c9
    ld a, c
    rst $28
    ld [hl], $e0
    cpl
    rst $38
    rra
    ldh [$3c], a
    jp nz, $cc45

    db $fd
    or c
    rst $30
    ld sp, $4aeb
    rst $00
    ld [hl], l
    ld b, a
    xor d
    sbc [hl]
    or h
    ld a, h
    ld e, h

Jump_036_42fd:
    ld a, h

jr_036_42fe:
    and e
    rst $38
    ld a, a
    db $fc
    ld c, a
    ret z

    sbc a
    sub b
    ld e, a
    ret nc

    cp a
    ldh [$7f], a
    ld h, b
    rst $38
    sub b
    dec b
    or b
    rrca
    dec c
    ei
    xor $bb
    rst $18
    or $6f
    or $3f
    call z, $db7c
    ld a, h
    jp hl


    ld a, [hl]
    ldh a, [rNR10]

jr_036_4322:
    or a
    adc $09
    rrca
    ld a, l
    rst $30
    db $dd
    ld l, a
    dec sp
    scf
    sbc e
    ld e, a
    rst $20
    ld a, $2b
    ld a, a
    xor e
    rst $28
    ld h, a
    and $af
    ld [$707f], a
    rst $38
    and l
    rst $38
    rlca
    db $fc
    ld e, a
    or b
    cp l
    rst $38
    nop

Call_036_4344:
    rst $38
    db $10
    rst $38
    inc e

jr_036_4348:
    db $e3
    inc hl
    ld sp, hl
    ld sp, hl
    ld b, $ef
    ld bc, $00bf
    ei
    dec b
    nop
    ld bc, $bf60
    ldh [$7f], a
    ldh [$bf], a
    and b
    ccf
    jr nz, jr_036_42fe

    dec b
    rrca
    dec e
    rst $30
    jr jr_036_4348

    inc a
    ldh [rNR41], a
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $00
    ld e, b
    ret nz

    ld h, b
    rst $00
    ld e, c
    ld [hl], $b6
    db $d3
    scf
    ld [$e60b], sp
    ld d, $c3
    add hl, hl
    ld a, [bc]
    sub b
    ld a, [c]
    add h
    ld h, h
    pop de
    ret nz

    rst $28

jr_036_4384:
    nop
    db $fd
    rrca
    ld e, a
    jr nc, jr_036_4384

    ret nz

    ld [$02a8], a
    xor b
    ld [bc], a
    xor c
    inc bc
    jr nc, jr_036_4412

    ld b, b
    rst $38
    or b
    db $fd
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    ei
    add b
    rst $18
    nop
    rst $38
    dec b
    and [hl]
    nop
    ld a, a
    db $fc
    ld c, a
    db $fc
    ld [hl], a
    ld a, h
    ld c, a
    call z, $9c97
    and a
    or h
    dec b
    or b
    inc c
    db $e3
    dec a
    ldh [rNR41], a
    pop af
    ld e, $fc
    inc c
    dec b
    ret nc

    inc b
    dec h

Jump_036_43c0:
    xor b
    sbc l
    sbc $c3
    ld [hl], e
    ld sp, $9e3d
    rst $28
    rst $38
    ld a, a
    dec b
    nop
    nop
    and c
    dec c
    ld [bc], a
    ld l, a
    db $fc
    rst $38
    ccf
    ccf
    ld c, b
    ret z

    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    nop
    ld bc, $02fb
    rst $18
    dec c
    ld a, l
    ld hl, sp-$05
    adc b
    adc [hl]
    inc bc
    ei
    rst $38
    db $fc
    rst $38
    nop

jr_036_43ee:
    ld c, a
    ld a, b
    adc a
    add sp, -$61
    ret nc

    ccf
    and b
    rst $38
    ret nz

    dec b
    ld e, d
    ld [bc], a
    ld b, b
    ld [bc], a
    dec d

Jump_036_43fe:
    rst $38
    dec d
    rst $38
    rst $38
    dec b
    ld bc, $06fe
    ld sp, hl
    dec c
    or $07
    rst $38
    nop
    rst $38
    jr nc, jr_036_43ee

    ld d, b
    sbc a
    sub b

jr_036_4412:
    rra
    inc e
    rst $20
    db $e4

jr_036_4416:
    cpl
    xor $db
    db $da, $ff, $00

    rst $38
    jr jr_036_4416

    inc d
    di
    ld [de], a
    pop af
    ld [hl], c
    adc $4e
    jp hl


    rst $28
    or [hl]
    or a
    dec d
    nop
    rlca
    ret nz

    ccf
    ld h, b
    rst $18
    ret nz

    dec d
    nop
    rrca
    ld b, $15
    inc de
    inc bc
    rst $38
    dec b
    ld a, [$fc0f]
    rra
    ldh [$2b], a
    db $fd
    ccf
    rst $38
    ld a, [hl+]
    push af
    push de
    ld a, e
    ld c, e
    rst $00
    ld a, a
    sub l
    db $fd
    dec hl
    cp $5b
    ld a, [$fedb]
    xor e
    xor $35
    rst $30
    ld l, l
    db $ed
    rst $00
    db $fd
    ld d, d
    ld a, a
    xor b
    rst $38
    or h
    cp a
    or a
    rst $38
    xor e
    xor $59
    rst $18
    ld l, l
    ld l, a
    rst $38
    ld b, b
    cp a
    ldh [$7f], a
    ldh a, [rIF]
    xor b
    ld a, a
    ld hl, sp-$01
    xor b
    ld e, a
    ld d, [hl]
    cp l
    and l
    dec d
    nop
    inc c
    cp $02
    cp $02
    db $fc
    inc b
    db $fd
    dec b
    cp $0f
    push af
    ld [hl], a
    adc a
    sbc $81
    rst $38
    ld [hl], l
    ld [hl], l
    rra
    rra
    ld h, b
    ld a, l
    add b
    rst $30
    ld c, a
    rst $38
    sbc d
    cp d
    adc a
    rst $38
    rrca
    ret c

    push af
    or a
    db $eb
    xor $d3
    jp nc, $e623

    inc de
    or d
    adc c
    ld sp, hl
    ld c, a
    ld l, a
    xor b
    cp [hl]
    ld e, a
    db $db
    xor a
    rst $28
    sub [hl]
    sub a
    adc b
    rst $08
    sub c
    sbc e
    ld [hl+], a
    ld a, $e5
    db $ed
    dec hl
    ld a, [$5c5c]
    ldh a, [$f0]
    inc c
    ld a, h
    inc bc
    rst $18
    db $e4
    rst $38
    or e
    cp e
    db $e3
    cp $e1
    scf
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ldh [$5f], a
    call c, $f6e3
    inc bc
    cp $fc
    ld a, a
    rst $38
    ld d, a
    ldh [rNR41], a
    ei
    ld de, $1ffe
    pop af
    rra
    rst $38
    ld c, $ff
    nop
    ld l, a
    add sp, -$61
    pop af
    sbc [hl]
    di
    ld a, [hl]
    ld [c], a
    db $fc
    adc a
    db $f4
    dec e
    db $e4
    ccf
    db $e4
    ccf
    ldh [$fb], a
    and b
    xor a
    ld h, c
    ld a, e
    ld b, d
    cp $03
    rst $10
    ld a, [bc]
    ld a, [$7f0b]
    ld a, [bc]
    jp c, $be0f

    dec bc
    db $eb
    inc c
    cp l
    add h
    cp $80
    rst $10
    and b
    cp a
    and b
    db $fd
    and b
    or a
    db $ec
    cpl
    di
    rra
    ld a, [c]

jr_036_4521:
    sbc [hl]
    db $fd
    adc a
    ld a, [hl]
    db $e3
    ld e, a
    ld [hl], c
    ld c, a
    ld hl, sp+$4f
    ld hl, sp+$7f
    db $fc
    rst $38
    call nc, Call_000_080f
    cp a
    db $10
    rst $38
    ldh a, [$1f]
    ldh a, [rIE]
    ldh [$15], a
    ld h, d
    dec bc
    nop
    rst $38
    nop
    and $37
    db $e4
    ld h, $e8
    cpl
    ld hl, sp+$1d
    ldh a, [$fe]
    pop af
    or l
    add sp, -$34
    ld hl, sp+$7c
    dec bc
    rst $38
    ld c, $fe
    ld a, [bc]
    sbc $09
    dec sp
    sub [hl]
    sub a
    rst $10
    db $dd
    ld a, [c]
    cp d
    ldh a, [$97]
    and b
    rst $38
    ldh [$fe], a
    and b
    rst $30
    jr nz, jr_036_4521

    jp nc, $d7d2

    ld [hl], a
    sbc [hl]
    cp d
    ld e, $d2
    rst $08
    ret c

    ld c, a
    ret z

    cpl
    add sp, $3f
    ld [hl], b
    rra
    cp $1f
    ld e, e
    cpl
    ld h, [hl]
    ccf
    ld a, h
    dec d
    ld d, b
    rrca
    inc c
    nop
    ldh [$78], a
    di
    db $d3
    rst $38
    ld l, h
    rst $38
    jr nc, jr_036_45a3

    nop
    inc b
    ld a, b
    ld e, l
    db $fc
    xor a
    rst $38
    db $eb
    rst $38
    dec c
    ei
    dec bc
    ei
    add hl, bc
    db $fc
    rlca
    rst $38
    inc bc
    inc a
    ld [hl], h
    ld a, a

jr_036_45a3:
    db $eb
    rst $38
    xor [hl]
    rst $38
    ld h, b
    cp a
    and b
    cp a
    jr nz, @+$81

    ret nz

    rst $38
    add b
    rrca
    inc a
    sbc a
    sub [hl]
    rst $38
    ld l, h
    rst $38
    jr jr_036_45ce

    nop
    rrca
    dec b
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    dec bc
    inc bc
    rst $38
    ld b, b

jr_036_45c7:
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $18
    ld a, b
    rst $28

jr_036_45ce:
    jr c, jr_036_45c7

    inc l
    rst $38
    ld a, a
    db $e4
    push af
    rst $38
    ld bc, $07ff
    ei
    dec e
    rst $28

jr_036_45dc:
    ld [hl-], a
    rst $18
    ld h, d
    or c
    jp $8a47


    rst $18
    call nz, $80ff
    inc b
    nop
    rrca
    inc c
    inc b
    rst $38
    ei
    db $fc
    rrca
    ld hl, sp+$0f
    rst $38
    rrca
    rst $28
    ld [$10ff], sp
    rst $38
    db $10
    ld hl, sp+$17
    ld hl, sp+$0f
    sbc [hl]
    db $db
    rlca
    rst $30
    add e
    cp [hl]
    db $e3
    ld a, [hl]
    cp a
    ld e, h
    ld_long $ff14, a
    nop
    rra
    ldh [rNR44], a
    and a
    and a
    xor d
    sbc a
    ld d, h
    db $d3
    ld d, $17
    inc a
    rst $18
    inc d
    rst $18
    jr jr_036_45dc

    ld l, b
    inc b
    nop
    rlca
    ld bc, $07fe
    ld sp, hl
    rra
    inc b
    nop
    dec b
    ld a, b
    rst $18
    ldh a, [$7f]
    and $fb
    adc $04
    nop
    inc c
    cp $07
    rst $38
    dec c
    di
    ld [de], a
    push af
    dec d
    ld a, [$f11e]
    rra
    pop af
    ccf
    ei
    cpl
    inc e
    rst $38
    jp $e0c3


    cpl
    pop de
    ld a, a
    adc a
    xor [hl]
    sub a
    sbc c
    ld h, $3f
    cp c

jr_036_4652:
    cp a
    ld c, a
    xor $f3
    rst $10
    ld a, h
    cp a
    or d
    ld d, a
    ldh a, [$72]
    adc c
    ld sp, hl
    ld a, [hl]
    rst $38
    db $d3
    or e
    and $7e
    sbc b
    cp b
    and b
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    jr nz, jr_036_4652

    rst $08
    pop bc
    ccf
    ld b, $33
    ld [hl], $03
    ld b, $0f
    ld [bc], a
    rlca
    inc e
    ld a, a
    ld [$f03f], sp
    rst $38
    ret nz

    inc b
    and d
    rlca
    ld b, $f8
    add hl, bc
    ldh a, [rNR21]
    pop af
    ld de, $05fc
    ld a, [$e91e]
    ld l, e
    adc c
    sbc c
    ld b, $66
    rra
    sbc e
    ld a, [hl]
    ld h, [hl]
    ld a, [$478a]
    cp $79
    cp $a3
    rst $38
    ld a, l
    cp $a0
    cp h
    ld b, e
    ld b, h
    add b
    ld hl, sp-$7d
    adc h
    db $ec
    dec e
    rst $30
    db $10
    adc a
    ei
    db $fc
    ld a, a
    ld a, b
    rrca
    call nz, Call_000_3c07
    rlca
    jp nz, $1f23

    ld hl, sp-$01
    ldh [$7f], a
    ret nz

    inc b
    ld h, h
    ld [de], a
    cp a
    and b
    sbc a
    ldh a, [rDIV]
    nop
    dec c
    ld c, $ff
    inc bc
    db $fc
    inc c
    ldh a, [rNR10]
    ldh [rNR43], a
    jp $df4b


    ld a, h
    cp a
    ldh [$f2], a
    ld a, [c]
    ld de, $2011
    ld [hl+], a
    jr nz, jr_036_4749

    jr nz, @-$57

    ldh [$e7], a
    ldh [rNR44], a
    ldh a, [rNR10]
    add e
    ldh a, [$80]
    sbc h
    add c
    and $60
    ld a, e
    db $10
    call c, $af28
    ld d, a
    ld [hl], a
    sub c
    sub $9e
    inc bc
    ld b, e
    inc sp
    adc $02
    inc c
    cp h
    inc e
    ld [hl], h
    ccf
    rst $20
    db $fc
    call nz, $85fc
    adc a
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    ld a, h
    rlca
    inc a
    rrca
    ld [$f0ff], sp
    ld a, a
    ldh [rDIV], a
    nop
    dec c
    inc b
    dec e
    ld d, $04
    rst $38
    ld a, [c]
    rrca
    cp $02
    cp $0e
    db $fc
    ld a, l
    ldh a, [$b6]
    or $de
    rst $38
    ld a, c
    rst $38
    nop
    inc hl
    ld l, e
    ccf
    db $fc
    rra
    ret c

    rra
    db $f4
    ccf
    db $fc
    cp a
    ldh [rIE], a
    ld b, b
    rst $38
    ret nz

    ld hl, sp+$19
    ld sp, hl
    add hl, hl
    db $fc
    inc a
    rst $38

jr_036_4749:
    inc bc
    inc b
    nop
    inc b
    ccf
    db $fc
    sbc a
    ld a, [$d6df]
    rst $38
    cp h
    rst $38
    inc b
    rst $08
    ld e, $04
    rst $38
    pop af
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec b
    ld bc, $03fe
    db $fc
    rlca
    ld sp, hl
    rrca
    rst $38
    nop

jr_036_476d:
    rst $38
    rlca
    ld hl, sp+$3f
    rst $00
    rst $38
    ld a, [hl-]
    ld a, [$df55]
    xor a
    cp a
    ld e, e
    ld a, e
    rst $38
    ld b, $f9
    adc a
    ld a, h
    rst $30
    adc h
    db $fd
    ld a, [c]
    cp $5f
    rst $18
    pop hl
    rst $38
    nop
    rst $38
    rst $38
    jr nc, jr_036_476d

    ld d, b
    cp a
    db $ec
    scf
    db $f4
    rst $18
    ld hl, sp+$1f
    db $10
    rst $38
    ldh [$3f], a
    cp b
    dec b
    nop
    rrca
    ld b, $05
    rst $38
    pop af
    rst $20
    nop
    ld a, [$f30e]
    rra
    ld a, [c]
    rra
    ld [c], a
    dec sp
    push hl
    ccf
    push hl
    ccf
    rst $20
    ld a, $e7
    ld a, $b4
    rst $30
    ld a, b
    rst $18
    ldh a, [$9f]
    ldh a, [$9f]
    pop hl
    ccf
    db $e3
    ccf
    ld [c], a
    ld a, $e3
    ccf
    dec b
    rst $38
    ldh a, [$3f]
    rst $38
    push de
    push de
    ld a, [de]
    ld a, d
    dec a
    db $eb
    ld a, [hl]
    push bc
    ld a, h
    rst $00
    rrca
    add sp, $0f
    db $e4
    rlca
    ld a, [c]
    add e
    ld a, [$f9c3]
    ld h, c
    ld a, c
    and e
    cp c
    pop hl
    ld sp, hl
    dec b
    nop
    ld [$00f3], sp
    rst $28
    ld [$08fb], sp
    db $fd
    inc b
    cp $02
    rst $38
    ld bc, $6605
    dec b
    ld a, $f7
    ld e, $f3
    ld a, [de]
    ld [hl], e
    ld a, [de]
    di
    sbc d
    or e
    sbc d
    ei
    ld c, d
    db $db
    ld c, d
    ld [c], a
    ld a, $f1
    rra
    ldh a, [$1f]
    ld hl, sp+$0f
    db $f4
    rla
    or $17
    rst $30
    rla
    or $77
    inc a
    db $eb
    add hl, de
    ld a, a
    add [hl]
    cp [hl]
    ld e, l
    db $dd
    ld a, [hl+]
    db $eb
    db $ec
    rst $28
    add sp, -$12
    xor c
    xor h
    and e
    cp c
    ld b, c
    ld a, c
    add a
    ld a, [c]
    inc de
    di
    ld c, h
    rst $38
    add b
    rst $38
    add [hl]
    rst $38
    call z, $dffe
    db $10
    rst $38
    jr nz, @-$3f

    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    dec b
    ld c, $08
    rst $38
    inc bc
    rst $38
    ld b, $eb
    ld a, [hl+]
    rst $30
    inc [hl]
    rst $30
    inc d
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $30
    ret nc

    rst $38
    add hl, bc
    rst $38
    ld [$43c3], sp
    ld a, [c]
    ld [hl-], a
    jp hl


    add hl, sp
    pop de
    ld [hl], c
    call z, $c27c
    ld a, [hl]
    db $e3
    rst $38
    call c, Call_036_4bdf
    ret


    rst $28
    ld [$acaf], a
    ld c, a
    ret z

    rst $28
    xor e
    db $fd
    db $fd
    daa
    cp $93
    rst $38
    db $fd
    scf
    db $fd
    rlca
    db $fd
    rlca
    rst $38
    rlca
    ld a, [$e71f]
    ccf
    db $ed
    ccf
    rst $30
    sub a
    dec b
    ld e, $11
    ld h, b
    cp a
    and b
    rst $38
    ret nz

    ld a, a
    ld b, b
    dec b
    ld e, $11
    inc e
    rst $20
    inc h
    bit 1, d
    jp hl


    ld l, c
    set 1, e
    xor c
    xor c
    and d
    and d
    push de
    ld d, l
    rst $38
    ld [$08ff], sp
    rst $28
    ld [$11ff], sp
    rst $38
    db $10
    rst $18
    db $10
    rst $38
    and b
    rst $38
    and b
    push hl
    daa
    ld hl, sp+$1f
    cp $7f
    call $ffcb
    ld sp, $59d7
    rst $38
    ld sp, hl
    rst $38
    inc b
    ld a, l
    ld a, l
    adc c
    adc c
    ld l, a
    xor $7f
    ld e, d
    daa
    cp a
    inc b
    rst $38
    adc b
    rst $38
    jp nz, $ffdf

    adc l
    dec b
    nop
    dec b
    add b
    rst $38
    ldh [$bf], a
    pop af
    ld a, a
    nop
    rst $38
    add b
    cp a
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    add b
    rst $38
    add b
    ld a, a
    nop
    or $76
    di
    ld d, e
    ei
    ld a, [bc]
    ei
    ld a, [bc]
    rst $38
    inc b
    dec b
    nop
    inc bc
    and b
    rst $38
    and b

jr_036_4901:
    rst $18
    db $10
    rst $28
    ld [$07f7], sp
    dec b
    nop
    inc bc
    ld [bc], a
    rst $38
    ld bc, $06fe
    ei
    jr jr_036_4901

    ldh [rTIMA], a
    nop

jr_036_4915:
    ld [bc], a
    or a
    cp l
    ld a, a
    ld a, a
    rst $38
    cp a
    push af
    ld e, a
    rst $20
    ld b, c
    rst $38
    inc h
    rst $38
    dec hl
    rst $38
    jr nc, jr_036_4915

    ld c, [hl]
    dec b
    ld e, $15
    dec b
    dec e
    ld a, [de]
    dec b
    rst $38
    di
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    dec b
    ld bc, $03fe
    db $fd
    ld b, $fb
    dec c
    rst $38
    nop

jr_036_4942:
    rst $38
    rlca
    ei
    inc a
    rst $18
    rst $20
    ld a, d
    cp a
    rst $18
    ld [hl], l
    cp a
    rst $28
    ld a, e
    rst $18
    rst $38
    ld b, $ff
    adc c
    ld a, a
    db $f4
    db $ed
    sbc [hl]
    ld a, [$dff7]
    ld a, a
    rst $28
    pop af
    ld a, a
    add b
    rst $38
    jr nc, jr_036_4942

    ld [hl], b
    rst $38
    xor h
    rst $30
    inc a
    rst $38
    ret c

    rra
    ldh a, [rIE]
    ldh [$bf], a
    jr nc, jr_036_497b

    nop
    rrca
    ld b, $0a
    rst $38
    pop af
    rst $20
    nop
    cp $0b

jr_036_497b:
    rst $30
    dec de
    rst $38
    ld [de], a
    db $eb
    ld [hl], $ff
    dec h
    rst $38
    dec h
    rst $38
    ld h, $ff
    ld h, $f5
    cp [hl]
    ei
    ld e, h
    rst $30
    sbc b
    rst $38
    sub b
    rst $28
    ld sp, $23ff
    cp $23
    rst $38
    inc hl
    ld a, [bc]
    nop
    ld bc, $d53f
    rst $38
    ld a, [hl-]
    sbc a
    ld a, e
    dec l
    ld a, l
    ld b, [hl]
    db $fd
    ld b, [hl]
    rst $28
    ld [$04f7], sp
    rst $30
    ld [bc], a
    ei
    add d
    ei
    pop bc
    ld a, l
    pop hl
    cp l
    pop hl
    db $fd
    pop hl
    ld a, [bc]
    nop
    ld [$00f3], sp
    rst $28
    ld [$08fb], sp
    db $fd
    inc b
    cp $02
    rst $38
    ld bc, $000a
    inc b
    rst $28
    ld [hl], $ff
    ld d, $fb
    ld d, $7b
    ld d, $fb
    sub [hl]
    or e
    sbc [hl]
    ei
    ld c, [hl]
    db $db
    ld c, [hl]
    xor $33
    rst $38
    ld de, $18f7
    ei
    inc c
    push af
    ld e, $fe
    rla
    rst $38
    rla
    rst $38
    db $76
    ld a, e
    inc l
    dec sp
    sbc l
    sbc [hl]
    rst $00
    db $dd
    ld a, a
    db $eb
    ld a, $ff
    db $ec
    rst $38
    add sp, -$02
    xor c
    cp l
    pop hl
    ld a, c
    jp $82fb


    di
    rla
    rst $38
    ld c, h
    rst $38
    add b
    or a
    adc $ce
    db $fd
    rst $18
    db $10
    rst $38
    jr nz, @-$3f

    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, [bc]
    ld c, $08
    rst $38
    inc bc
    rst $38
    ld b, $eb
    ld l, $f7
    inc a
    rst $30
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $30
    ret nc

    rst $38
    add hl, bc
    rst $38
    ld [$67db], sp
    or $3b
    db $fd
    dec hl
    rst $10
    ld a, c
    cp $4d
    ei
    ld b, [hl]
    rst $38
    db $e3
    rst $18
    db $fc
    db $fd
    ld c, e
    ei
    xor $ff
    xor h
    rst $38
    ld c, b
    rst $28
    cp e
    db $fd
    rst $38
    rst $38
    ld h, $ff
    sub e
    rst $38
    dec [hl]
    rst $38
    dec b
    db $fd
    rlca
    rst $38
    rlca
    rst $38
    ld a, [de]
    rst $28
    scf
    rst $38
    dec l
    rst $30
    sbc a
    ld a, [bc]
    ld e, $11
    ld h, b
    cp a
    ldh [rIE], a
    ret nz

    ld a, a
    ld a, [bc]
    dec de
    stop
    rst $38
    inc e
    rst $20
    inc a
    bit 7, [hl]
    jp hl


    ld a, a
    set 7, a
    xor c
    rst $38
    and d
    rst $38
    push de
    ld a, a
    rst $38
    ld [$08ff], sp
    rst $28
    ld [$11ff], sp
    rst $38
    db $10
    rst $18
    db $10
    rst $38
    and b
    rst $38
    and b
    rst $38
    dec h
    rst $38
    jr @+$01

    ld a, [hl]
    rst $18
    jp hl


    rst $38
    ld sp, $59f7
    rst $38
    ld sp, hl
    rst $38
    inc b
    ld a, l
    rst $38
    cp e
    call Call_036_7eef
    ld a, a
    jp c, Jump_036_7fa7

    rst $38
    inc b
    rst $38
    adc b
    rst $18
    jp nz, $8dff

    ld a, [bc]
    nop
    dec b
    add b
    rst $38
    ldh [rIE], a
    or c
    ld a, a
    nop
    rst $38
    add b
    cp a
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    add b
    rst $38
    add b
    ld a, a
    nop
    or $7f
    di
    ld e, a
    ei
    ld c, $fb
    ld c, $ff
    inc b
    ld a, [bc]
    nop
    inc bc
    and b
    rst $38
    and b

jr_036_4ad7:
    rst $18
    db $10
    rst $28
    ld [$07f7], sp
    ld a, [bc]
    nop
    inc bc
    ld [bc], a
    rst $38
    ld bc, $06fe
    ei
    jr jr_036_4ad7

    ldh [$0a], a
    nop

jr_036_4aeb:
    ld [bc], a
    cp a
    or l
    ld a, a
    ld a, a
    rst $38
    cp a
    push af
    ld e, a
    rst $20
    ld b, c
    rst $38
    inc h
    rst $38
    dec hl
    rst $38
    jr nc, jr_036_4aeb

    ld c, [hl]
    ld a, [bc]
    ld e, $15
    ld a, [bc]
    dec e
    ld a, [de]
    ld a, [bc]
    rst $38
    di
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    ld [hl], e
    ld c, $01
    rst $38
    ld bc, $03ff
    db $fd
    rrca
    pop af
    ccf
    add $5f
    adc c

jr_036_4b22:
    db $fd
    dec b
    ret nc

    ld bc, $45ff
    rst $38
    cp e
    ld a, l
    rst $00
    rst $38
    nop
    add e
    ld bc, $057d
    ld [hl], d
    inc bc
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$39
    db $f4
    inc hl
    ld a, [hl]
    dec b
    or d
    rrca
    rrca
    cp $03
    db $fc
    rlca
    ld hl, sp+$0b
    ld hl, sp+$0d
    ldh a, [$15]
    ldh a, [rNR13]
    ldh [$2e], a
    rrca
    db $fd
    ld a, $ff
    ld b, b
    rst $10
    ld c, h
    rst $28
    ld c, [hl]
    sbc $2f
    rst $20
    ld e, l
    ld d, a
    ld l, a
    ld a, e
    ld a, l
    rst $38
    xor d
    rst $00
    sub $ff
    jr c, jr_036_4b22

    nop
    cp $ff
    rst $38
    ld de, $5555
    cp e
    pop hl
    ld a, a
    ld hl, sp-$01
    inc b
    rst $10
    ld h, h
    rst $28
    db $f4
    rst $30
    ret c

    rst $28
    db $f4
    sub l
    call c, $05bc
    db $f4
    ld bc, $3fc0
    and b
    ccf
    ld h, b
    rra
    ld d, b
    rra
    sub b
    rrca
    add sp, $05
    ld [hl], d
    inc c
    ldh [$2c], a
    pop hl
    dec a
    db $e3
    ld a, [hl-]
    rst $20
    dec a
    rst $28
    ld c, l
    cp $56
    sub $7e
    cp $2a
    sbc a
    sbc e
    adc l
    sbc a
    add c
    xor a
    ld [bc], a
    ld e, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ef
    ld h, a
    ld a, l
    sub e
    ld a, l
    sub e
    rst $38
    ld de, $01ef
    db $fd
    inc bc
    cp $03
    ld a, d
    add a
    add [hl]
    rst $38
    ld [hl], d
    ld [hl-], a
    db $e3
    or e
    db $e3
    xor e
    ld b, c
    push af
    ld bc, $00ff
    cp $00
    xor $00
    call z, Call_036_680f
    rrca
    ld a, b
    adc [hl]
    cp a
    ld c, c
    rst $38
    ld l, h
    rst $20
    db $fc
    push de
    call nc, $affc

Call_036_4bdf:
    xor a
    dec b
    ld [hl], d
    ld [bc], a
    rst $18
    ldh [$3f], a
    ldh a, [rIF]
    ld a, h
    inc bc
    ld c, $ff
    cp $ff
    ld bc, $07ff
    cp $0d
    rst $38
    rlca
    rst $38
    ld bc, $7205
    ld [bc], a
    add c
    add e
    ld h, b
    ld h, b
    rst $18
    rst $18
    cp a
    ld a, b
    rst $38
    ret nz

    dec b
    ld [hl], d
    ld [bc], a
    ld a, d
    rst $38
    or $8a
    rst $28
    sbc e
    rst $38
    ld d, h
    rst $38
    ld d, b
    rst $38
    jr nz, jr_036_4c19

    ld [hl], d
    nop
    inc bc
    add e
    dec c

jr_036_4c19:
    dec c
    or $f7
    ei
    dec a
    rst $38
    rlca
    dec b
    ld [hl], d
    ld [bc], a
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    ld h, b
    dec b
    ld hl, sp+$14
    dec b
    ld [hl], d
    ld c, $40
    ld [bc], a
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    ld c, l
    inc bc
    ld e, a
    rrca
    ld c, l
    inc bc
    add a
    rrca
    inc de
    ld bc, $01ff
    cp $02
    rst $38
    ld [bc], a
    cp $02
    inc bc
    add [hl]
    rlca
    add b
    inc bc
    ld a, [$0301]
    add a

jr_036_4c51:
    rrca
    inc e
    ei
    ld a, h
    or $8f
    db $fd
    add c
    cp $40
    cp $21
    rst $38
    db $10
    cp $08
    ei
    inc c
    rst $38
    ld c, $f2
    ld a, [de]
    push hl
    cp [hl]
    ld b, h
    db $fc
    and a
    db $fc
    ld e, b
    db $fc
    dec hl
    ld hl, sp-$58
    inc a
    rst $38
    ldh [$9e], a
    or c
    ld c, a
    ei
    ld b, h
    ld a, [hl]
    jp z, Jump_000_357f

    ld a, [hl]
    xor b
    ld a, $2b
    ld a, b
    cp a
    ld a, h
    rst $18
    ld [c], a
    ld a, a
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, jr_036_4c51

    ld h, b
    inc bc
    add [hl]
    rrca
    dec c
    db $fd
    ld b, $fb
    rrca
    ld a, [$f40f]
    rra
    inc bc
    sub [hl]
    ld [de], a
    ld a, [$170f]
    call c, $fff3
    jr z, @+$01

    ld e, h
    rst $30
    ld d, l
    db $fc
    ld c, a
    db $fc
    ccf
    ld [c], a
    rla
    pop af
    pop de
    db $76
    sbc a
    rst $38
    jr z, @+$01

    ld [hl], h
    rst $18
    ld d, h
    ld a, a
    db $e4
    ld a, a
    ld hl, sp-$71
    ret nc

    rra
    ld a, a
    ret nz

    cp a
    ldh [$bf], a
    ldh [$5f], a
    ldh a, [$03]
    add $12
    cp a
    ldh [$03], a
    add [hl]
    rrca
    dec c
    cp $07
    ld sp, hl
    rra
    cp $21
    rst $10
    ld b, e
    rst $38
    inc a
    inc bc
    add [hl]
    ld [bc], a
    dec de
    db $ed
    ccf
    rst $10
    or a
    ret c

    xor a
    sbc a
    rst $38
    adc b
    rst $38
    ld [hl], b
    inc bc
    add [hl]
    nop
    or b
    ld l, a
    ld sp, hl
    rst $10
    jp c, $eb37

    di
    rst $38
    ld [hl+], a
    rst $38
    inc e
    inc bc
    add [hl]
    ld bc, $3fc0
    ldh a, [rIE]
    ld [$84d7], sp
    rst $38
    ld a, b
    inc bc
    add [hl]
    rrca
    inc bc
    ld b, b
    ld [bc], a
    dec c
    rst $38
    dec c
    rst $38
    ld a, [$0d03]
    nop
    ld bc, $ff08
    jr @-$17

    inc a
    rst $20
    inc a
    rst $00
    rst $38
    jr @+$01

    dec c
    nop
    dec bc
    ret nz

    dec c
    nop
    add hl, bc
    ld bc, $07fe

jr_036_4d2d:
    dec c
    nop
    ld bc, $ff20
    jr nc, @-$2f

    ld a, b
    rst $08
    ld a, b
    rst $00
    cp $31
    dec c
    rra
    inc c
    add b
    rst $38
    ld bc, $360d
    dec b
    inc bc
    db $fd
    rlca
    ld a, [$180e]
    rst $38
    rst $00
    rst $18
    rst $00
    ld c, h
    or a
    db $fc
    ld d, e
    sbc $93
    sub [hl]
    add hl, bc
    rrca
    ld [$ff0f], sp

jr_036_4d59:
    add b
    dec c
    ld [hl], $06
    ld hl, sp-$01
    add h
    cp $fe
    inc bc

jr_036_4d63:
    dec c
    ld h, b
    dec b
    ret nz

    ccf
    rst $38
    ld b, d
    rst $38
    ld sp, $c7ff
    or $c7
    ld h, h
    db $db
    ld a, [hl]
    sub l
    rst $30
    sub d
    db $d3
    ld hl, $20e1
    ldh [$0d], a
    ld d, h
    ld [$c07f], sp
    cp a
    ldh [$f4], a
    inc e
    add sp, $38
    adc b
    jr jr_036_4d59

    ld [hl], b
    db $10
    jr nc, jr_036_4d2d

    ldh [$a1], a
    pop hl
    and a
    and $08
    dec bc
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0d01
    db $fc
    ldh a, [$f0]
    ldh a, [$fc]
    inc c
    sbc h
    ld hl, sp+$6f
    ld sp, hl
    ld b, a
    ld a, a
    adc c
    rst $38
    adc b
    cp a
    ld b, a
    ld b, a
    ld [hl], a
    ld [hl], l
    ld c, a
    ld c, a
    ld [hl], d
    ccf
    db $ec
    ccf
    call nc, Call_000_23fc
    rst $38
    ld [hl+], a
    ld a, [$c4c4]
    call c, $e45c
    db $e4
    jr nz, jr_036_4d63

    ld b, b
    ld b, b
    add b
    add b
    dec c
    ld a, [$1ff2]
    rra
    ld a, a
    ld h, b
    ld e, a
    ld [hl], b
    cpl
    jr c, jr_036_4df6

    jr nc, jr_036_4dec

    inc e
    ld de, $0b18
    ld c, $0b
    ld c, $cb
    adc $af
    add sp, -$41
    ldh a, [$bf]
    and b
    rst $38
    ld h, b
    rst $38
    daa

jr_036_4de8:
    cp $03
    dec c
    sub b

jr_036_4dec:
    nop
    cp $02
    rst $38
    ld bc, $23ff
    db $fd
    scf
    ret


jr_036_4df6:
    rst $38
    ld c, c
    rst $38
    jr z, jr_036_4df6

    ld [hl], h
    db $fc
    ld b, a
    ld b, l
    add l
    or [hl]
    inc bc
    ld a, e
    nop
    ld a, h
    nop
    ld a, a
    nop
    ccf
    add b
    cp a
    ld b, b
    rst $18
    call nz, Call_036_4344
    db $db
    add c
    cp l
    ld bc, $017d
    db $fd
    ld bc, $02f9
    ei
    inc b
    or $0d
    add b
    ld bc, $7f88
    ret c

    daa
    rst $38
    inc h
    rst $38
    jr z, jr_036_4de8

    ld e, l
    ld a, a
    db $eb
    ld l, $fb
    ld e, $fb
    ld a, [bc]
    rst $38
    inc c
    rst $38
    ret z

    rst $38
    add b
    dec c
    add b
    nop
    cp $03
    cp $02
    rst $38
    dec c
    ccf
    ld [bc], a
    dec c
    rst $38
    pop af
    inc hl
    xor a
    ld [hl], b
    ld [hl], d
    db $fc
    adc l
    dec c
    jr nc, @+$13

    dec c
    rst $38
    pop af
    jr nz, jr_036_4eba

    add b
    add d
    inc a
    inc a
    ld a, $22
    cp $c2
    dec c
    ld a, [hl+]
    db $10
    cp $03
    ld bc, $02c5
    add d
    ld a, b
    ld a, c
    ld hl, sp-$78
    rst $38
    add a
    dec c
    ld a, d
    ld de, $8880
    db $eb
    inc e
    sbc h
    ld a, a
    ld h, e
    dec c
    add b
    dec b
    dec c
    ld e, l
    nop
    add b
    dec c
    ld l, $0b
    dec c
    rst $10
    rra
    ld a, [bc]
    dec c
    sub b
    rlca
    dec c
    rst $38
    pop af
    ld a, a
    ldh [$1f], a
    cp $c1
    rst $38
    ld hl, sp+$3d
    db $fc
    ld b, $0d
    ld c, $03
    dec c
    rl [hl]
    dec c
    rst $10
    rra
    ld [bc], a
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    ld a, e
    rrca
    rlca
    db $10
    rst $28
    inc a
    rst $38
    inc de
    ld [bc], a
    ld a, d
    add hl, bc
    ld a, a
    cp [hl]
    pop bc
    ld [bc], a
    ld a, d
    rlca

jr_036_4eba:
    inc b
    ei
    ld e, $ff
    db $e4
    ld [bc], a
    ld a, d
    rrca
    ld e, $03
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $30
    jr @-$07

    jr @+$01

    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    rst $28
    ld bc, $77eb
    cp [hl]
    db $dd
    rst $38
    and d

jr_036_4ee0:
    rst $38
    ld h, b
    rst $18
    or b
    ld l, a
    sbc b
    rst $28
    jr jr_036_4ee0

    inc c
    rst $30
    inc c
    rst $20
    sbc h
    rst $20
    sbc h
    ld [bc], a
    ld a, d
    dec bc
    ldh a, [rSC]
    ld a, d
    rrca
    dec c
    ei
    inc e
    push hl
    ld a, $db
    ld h, a
    xor $51
    rst $18
    ld h, d
    sbc $63
    rst $08
    ld [hl], c
    rst $20
    jr c, @+$01

    ld c, c
    xor e
    db $76
    ld [hl+], a
    db $e3
    db $dd
    rst $38
    di
    ld l, a
    ld a, a
    inc d
    sbc h
    rst $30
    rst $38
    ld h, e
    rst $08
    dec a
    ld [de], a
    rst $30
    ld h, c
    rst $28
    add c
    cp a
    pop hl
    ccf
    ld hl, $c17b
    db $fd
    inc hl
    jp nc, $887f

    rst $10
    inc l
    rlca
    db $fc
    ccf
    ld hl, sp-$01
    ret nz

    ld [bc], a
    ld a, d
    rrca
    inc de
    ld sp, hl
    ld e, $fe
    rlca
    rst $38
    ld bc, $07fe
    db $fc
    rlca
    rst $38
    inc bc
    ld [bc], a
    ld a, d
    ld [bc], a
    nop
    rst $38
    rst $38
    rst $38
    inc e
    db $dd
    rst $38
    db $e3
    ld [bc], a
    ld a, d
    ld [bc], a
    adc a
    ld a, h
    ccf
    ldh a, [rIE]
    ret nz

    ccf
    ldh a, [$9f]
    ldh a, [rIE]
    ld h, b
    ld [bc], a
    ld a, d
    rrca
    ld de, $0240
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    add hl, de
    ld bc, $03fe
    inc b
    nop
    add hl, bc
    add b
    ld a, a
    ret nz

    inc b
    nop
    rrca
    ld a, [de]
    inc b
    ld hl, $0409
    inc l
    nop
    cp $03
    cp $23
    call c, $dd77
    ld [hl], a
    call Call_036_6aff
    rst $38
    ld l, d
    rst $38
    or d
    ei
    and h
    rst $38
    rst $38
    add b
    rst $38
    and d
    ld e, l
    rst $30
    db $dd
    rst $30
    call $9aff
    cp a
    sbc d
    rst $38
    and l
    rst $30
    inc b
    nop
    dec b
    and b
    rst $18
    ldh a, [$bf]
    ldh [rDIV], a
    ld a, $0f
    db $10
    add hl, bc
    rst $30
    dec e
    ld a, [$fd0f]
    rlca
    rst $38
    inc bc
    cp $06
    rst $38
    rlca
    ei
    rrca
    and h
    or l
    ld c, [hl]
    ld a, [hl]
    rst $28
    db $ed
    ccf
    ld a, [hl-]
    ld e, a
    ld e, l
    and a
    and a
    xor e
    xor a
    ld a, [c]
    ld d, a
    or l
    db $fd
    ld a, [c]
    rst $38
    ei
    rst $18
    cp $ae
    db $fd
    db $dd
    ld a, [c]
    ld a, [c]
    xor d
    ld a, [$f5a7]
    ld a, a
    ldh [$9f], a
    ldh a, [$bf]
    ldh [$5f], a
    ld [hl], b
    ld e, a
    ld [hl], b
    xor a
    cp b
    rst $28
    ld hl, sp-$01
    ld [hl], b
    inc b
    nop
    rrca
    dec c
    db $fd
    rlca
    cp $03
    rst $38
    rlca
    db $fc
    rlca
    inc b
    ld a, h
    nop
    rst $38
    inc bc
    db $fd
    rlca
    ld d, d
    rst $38
    or c
    cp a
    inc [hl]
    rst $38
    ld d, a
    rst $18
    sub l
    cp l
    push de
    rst $38
    ld a, d
    ld a, a
    ld a, [hl+]
    xor a
    and l
    rst $38
    ld [hl], $fe
    push de
    db $fd
    ld d, l
    rst $38
    ld c, c
    rst $38
    ld d, d
    rst $38
    ld l, d
    rst $38
    cp d
    cp $7f
    ldh [$df], a
    ldh a, [rVBK]
    ld hl, sp-$11
    ld hl, sp+$7f
    ret nc

    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    inc b
    db $10
    rra
    rrca
    rst $38
    ld [bc], a
    inc b
    nop
    ld [$bda9], sp
    push de
    ld a, a
    sub $7f
    or [hl]
    rst $30
    or l
    or a
    jp c, $ba5b

    xor e
    ld a, [$9bca]
    rst $38
    ld d, h
    rst $38
    jp nc, $caf7

    ei
    ld d, [hl]
    db $76
    ld e, a
    ld a, c
    rst $10
    db $fc
    or e
    or [hl]
    rst $38
    add b
    rst $38
    ret nz

    ccf
    ldh [rIE], a
    ret nz

    rst $38
    add b
    inc b
    ld l, d
    ld de, $4104
    rrca
    ld e, $f5
    dec e
    db $ed
    ccf
    rst $38
    ld [de], a
    inc b
    nop
    ld b, $9b
    sbc d
    cp a
    and h
    cp a
    and b
    cp a
    ldh [$bf], a
    ldh [rIE], a
    ld b, b
    inc b
    nop
    rrca
    ld de, $0240
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld hl, sp+$07
    ld hl, sp+$18
    add hl, bc
    nop
    add hl, bc
    ldh a, [rIF]
    inc c
    add hl, bc
    nop
    inc bc
    dec b
    ld a, [$fa0f]
    rrca
    ei
    dec c
    db $fd
    ld b, $09
    nop
    ld bc, $7fe0
    ret nz

    rst $38
    add b
    add hl, bc
    inc [hl]
    ld bc, $09c0
    nop
    add hl, bc
    add hl, bc
    ld b, c
    rrca
    nop
    ldh [rNR44], a
    rst $00
    ld c, a
    sbc a
    sbc b
    cp a
    and b
    add hl, bc
    ld a, $04
    inc bc
    ld [bc], a
    ld bc, $c0e1
    ldh a, [$e1]
    add hl, sp
    ld a, [c]
    ld e, $f4
    dec e
    ld hl, sp+$0b
    ld hl, sp+$0f
    ei
    ld a, [de]
    push hl
    push hl
    add a
    adc a
    rlca
    dec [hl]
    dec b
    or $03
    ld a, [$fe05]
    ld d, $fd
    cp a
    or b
    rst $08
    ld c, h
    jp $4152


    db $fd
    ldh [$be], a
    ret nz

    ld e, a
    add b
    cp a
    and b
    rst $38
    add hl, bc
    nop
    dec b
    add b
    ld a, a
    ld b, b
    ccf
    and b
    ccf
    ldh [$09], a
    ld b, b
    dec c
    ld a, h
    add e
    rst $38
    db $fc
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ldh a, [$1f]
    ldh a, [$9f]
    ld [hl], b
    rst $38
    sbc b
    rst $38
    db $e4
    ld a, a
    ld a, [$25ff]
    rst $28
    ld [hl+], a
    rst $28
    rrca
    db $ed
    dec bc
    db $fd
    add hl, bc
    adc b
    nop
    dec d
    cp $2b
    cp $7a
    rst $28
    cp b
    add sp, -$40
    ld e, a
    ret nz

    ld a, a
    add b
    cp a
    add b
    rst $38
    ret nc

    rst $38
    ld l, b
    rst $38
    cp l
    rst $28
    ld a, [hl+]
    ccf
    rra
    ldh a, [$1f]
    di
    inc e
    rst $38
    inc sp
    rst $38
    ld c, a
    db $fc
    cp a
    rst $38
    ld c, b
    db $eb
    adc b
    db $eb
    rst $38
    ld a, h
    add e
    cp $7f
    db $fc
    rst $38
    add b
    add hl, bc
    and h
    inc bc
    ret nz

    db $fc
    dec b
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $07fe
    rst $38
    dec e
    ld sp, hl
    cpl
    cp $3f
    cpl
    db $ed
    dec hl
    dec l
    dec l
    cpl
    ld e, l
    ld d, e
    ld a, [c]
    rst $28
    cp l
    rst $38
    ld a, [bc]
    rst $38
    rrca
    cp $4c
    rst $30
    cpl
    ld [hl], a
    jr jr_036_51b4

    add b
    rst $28
    ld c, b
    db $eb
    xor l
    ld sp, hl
    rst $00
    ld [hl], a
    db $e4
    xor h
    ld h, l
    rst $18
    jp hl


    db $dd
    ld sp, $03f9
    rst $28
    inc h
    xor a
    ld l, e
    ccf
    add $dd
    ld c, a
    ld l, d
    add sp, $69
    xor [hl]
    ld a, [hl]
    ld h, c
    rst $38
    ld [hl], b
    sbc a
    sbc b
    rst $28
    ld a, b
    db $fd
    and d
    ei
    db $e4
    push hl
    ccf
    ldh [$3f], a
    ldh [$3f], a
    jr nz, @+$01

    add hl, bc
    dec a
    nop
    ret nz

    rst $38
    cp h
    or a
    jp nc, $cc09

    nop
    db $fc
    rlca
    db $fc

jr_036_51b4:
    dec b
    add hl, bc
    inc h
    db $10
    add hl, bc
    ld l, h
    ld bc, $01f3
    pop af
    inc bc
    db $e3
    rlca
    add h
    rrca

Jump_036_51c3:
    ld [$888f], sp
    add a
    db $e4
    add a
    db $e4
    di
    sbc a
    rst $28
    rst $18
    ld a, h
    ld [hl], e
    or a
    cp a
    db $fd
    ld a, l
    db $fd
    rra
    db $fc
    rrca
    rst $38
    dec bc
    sbc a
    di
    rst $28
    rst $30
    ld a, l
    sbc l
    db $db
    ld a, [$7c7f]
    ld a, a
    ldh a, [$7f]
    ldh [rIE], a
    and b
    adc b
    adc c
    ld a, b
    ld a, e
    ld hl, sp-$77
    ld hl, sp+$30
    call c, $cb60
    ld e, h
    db $fc
    or [hl]
    rst $38
    jp $cedf


    rst $38
    cp b
    rst $38
    add b
    rst $38
    ld [hl], b
    ld a, a
    adc b
    adc a
    db $e4
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    rrca
    db $fc
    inc de
    db $eb
    daa
    rst $38
    dec l
    rst $38
    db $10
    add hl, bc
    nop
    ld [bc], a
    rrca
    and $c7
    add hl, de
    ld [$9f0c], a
    ld d, $ff
    and c
    rst $38
    ld h, b
    add hl, bc
    nop
    nop
    ei
    inc c
    rst $38
    rlca
    rst $38
    add b
    add hl, bc
    inc b
    ld hl, $ff09
    pop af
    cp a
    ld h, b
    add hl, bc
    ld a, $0f
    rrca
    add hl, bc
    nop
    ld [$0240], sp
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    dec e
    rrca
    add hl, bc
    ld bc, $02ff
    dec b
    inc e
    ld b, $fe
    add b
    ld a, [hl]
    jp nz, $c77c

    dec b
    inc e
    rlca
    ldh [$3f], a
    ldh [rIE], a
    jr nz, jr_036_5261

jr_036_525c:
    inc e
    rrca
    dec e
    ld sp, hl
    nop

jr_036_5261:
    rst $38
    inc b
    rst $38
    inc b
    cp $04
    cp $04
    db $fd
    rlca
    cp $03
    cp $03
    ld a, e
    call z, $d877
    ld a, a
    ret nc

    ld l, e
    ldh a, [rPCM34]
    pop hl
    ld e, l
    di
    rst $30
    xor $cf
    ld hl, sp-$01
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    dec b
    ld b, h
    rrca
    daa
    cp $0f
    pop af
    rra
    ei
    ld l, $ea
    ld a, [hl+]
    pop af
    inc de
    ldh a, [rNR22]
    pop hl
    ld a, l
    ld e, a
    rst $30
    jr c, jr_036_525c

    inc h
    db $fd
    sub d
    cp $88
    cp $08
    cp e
    adc b
    jp hl


    db $10
    sub c
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $f4
    rlca
    db $fc
    inc bc
    ld a, [$7e03]
    dec b
    inc e
    ld b, $dd
    inc e
    pop bc
    ld e, l
    add b
    ldh [rTIMA], a
    inc e
    dec bc
    add b
    rst $38
    inc bc
    dec b
    call c, $ff00
    ld bc, $1c05
    inc b
    add a
    rst $30
    ld e, $bf
    ld a, a
    rst $20
    ld a, [$f88f]
    dec c
    ld a, [$ea1f]
    ld a, $e9
    dec sp
    ld h, b
    ldh [$9f], a
    sbc a
    ld a, [hl+]
    pop af
    ld [hl], a
    ld b, b
    ld c, b
    ld h, h
    rst $30
    cp a
    rst $38
    ld [hl], a
    db $eb
    cp a
    inc bc
    ld e, a
    ld bc, $914d
    or l
    ld c, c
    db $fd
    ld c, c
    reti


    jp hl


    cp c
    ret


    ret


    ld d, d
    inc de
    rrca
    rst $08
    rra
    or b
    ccf
    jr nz, jr_036_5346

    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ld b, b
    ccf
    jr nz, jr_036_5316

    or $0f
    dec c
    db $e4
    dec a

jr_036_5316:
    ld a, [c]
    ld a, [de]
    db $fd
    dec e
    db $fc
    inc hl
    rst $38
    ld b, a
    rst $38
    ld a, b
    dec b
    inc e
    nop
    ret c

    db $db
    ld l, b
    call nc, $c195
    rst $38
    rst $38
    dec b
    inc e
    inc b
    ld [c], a
    di
    ld b, h
    ld h, a
    sbc [hl]
    sbc c
    db $e3
    rst $38
    rst $30
    ld a, b
    rst $38
    rrca
    dec b
    inc e
    nop
    ccf
    jr nz, @+$41

    jr nz, jr_036_53c1

    ret nz

    rst $38
    add b
    rst $38

jr_036_5346:
    ld b, b
    rst $38
    ret nz

    dec b
    inc e
    rrca
    ld bc, $0240
    dec b
    rst $38
    dec b
    rst $38
    db $f4
    ld b, $fd
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @-$1f

    ld [hl], b
    rst $18
    ld [hl], e
    call c, $d977
    ld a, a
    db $d3
    cp $07
    db $fc
    dec b
    nop
    dec b
    add b
    rst $38
    ld h, b
    sbc a
    ldh a, [$ef]
    ld a, b
    dec b
    nop
    inc bc
    ld bc, $03fe
    rst $38
    dec c
    di
    ld e, $ef
    inc a
    rst $38
    nop
    rst $38
    ld [$1cf7], sp
    rst $30
    sbc h
    ld [hl], a
    call c, $fd37
    sub [hl]
    rst $38
    pop bc
    ld a, a
    dec b
    nop
    dec b
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    dec b
    inc [hl]
    nop
    dec b
    inc [hl]
    ld [bc], a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc b
    rst $38
    inc bc
    rlca
    cp $c9
    rst $38
    dec a
    scf
    ld a, a
    ld [hl], e
    ld c, [hl]
    rst $38
    add b
    rst $38
    inc c
    rrca
    cp $ff
    rst $30
    rra
    ld hl, sp+$0d
    ldh a, [$f9]
    ld h, [hl]
    ldh a, [$87]
    cp d

jr_036_53c1:
    or [hl]
    ld sp, hl
    rst $08
    rst $38
    ret nc

    rst $38
    rst $18
    ldh a, [$3f]
    ld h, c
    rra
    ccf
    call $c21f
    cp e
    jp c, $e63f

    rst $38
    ld d, $ff
    pop hl
    rst $38
    daa
    cp $79
    reti


    db $fc
    sbc l
    db $e4
    rst $38
    ld [bc], a
    rst $38
    ld h, b
    ldh [rIE], a
    rst $38
    dec b
    ld [hl+], a
    inc b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    dec b
    ld e, h
    ld bc, $ff05
    db $f4
    ld bc, $02ff
    rst $38
    inc b
    jp z, $b67f

    jp c, $8ff9

    rst $38
    ld b, a
    rst $38
    or b
    add sp, -$65
    ld a, a
    ret nz

    cp a
    ld a, a
    ld l, a
    rst $38
    daa
    or h
    rla
    inc e
    di
    rst $30
    ld hl, sp+$7b
    rst $20
    rra
    ld hl, sp+$07
    rst $38
    nop
    db $ec
    rst $38
    ret z

    ld e, d
    pop de
    ld [hl], c
    sbc a
    rst $18
    ccf
    cp h
    adc $f1
    ccf
    ret nz

    rst $38
    nop
    and a
    cp $dd
    or e
    ccf
    ldh [rIE], a
    pop bc
    cp $0f
    inc de
    sbc h
    rst $38
    inc bc
    add h
    ld h, a
    dec b
    inc h
    inc bc
    add b
    rst $38
    ld b, b
    rst $38
    dec b
    cp l
    nop
    ld b, b
    rst $38
    inc b
    rst $38
    ld [bc], a
    dec b
    ld c, $01
    dec b
    rst $38
    di
    ret c

    ccf
    rst $20
    rra
    cp $c1
    rst $38
    ld a, h
    db $e3
    sbc a
    db $fc
    ld h, e
    rst $38
    inc e
    rst $38
    inc bc
    cp $fe
    add a
    ld hl, sp+$70
    pop af
    rst $38
    nop
    cp $fe
    rlca
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rrca

jr_036_5471:
    jr nc, jr_036_5471

    ld bc, $807f
    rst $38
    nop
    inc bc
    inc e
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    ld sp, hl
    ld b, $07
    ld hl, sp-$01
    ld bc, $ce0f
    rst $38
    ld bc, $0ef7
    rst $38
    db $fc
    ccf
    call nz, Call_000_20ff
    cp a
    ld h, b
    rst $38
    ret nz

    dec b
    ret nz

    rlca
    dec b
    ld [hl], a
    inc e
    dec b
    inc hl
    inc d
    ld bc, $ca05
    ld [bc], a
    ret nz

    ccf
    ld hl, sp-$07
    ld hl, sp+$47
    or e
    db $f4
    ldh [$1f], a
    ld hl, sp-$7a
    rrca
    sub b
    rst $08
    ccf
    ld bc, $ffff
    nop
    rra
    rst $20
    adc a
    ld c, c
    rst $38
    ld b, $7f
    ld a, b
    dec b
    ld [hl], h
    ld de, $05f8
    cp [hl]
    add hl, bc
    dec b
    push bc
    rra
    rrca
    inc bc
    dec b
    db $76
    ld a, [de]
    sbc a
    and h
    rst $20
    sbc e
    rst $38
    ld a, h
    db $fd
    rlca
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld [$2205], sp
    dec b
    dec b
    inc de
    ld [hl+], a
    dec b
    push bc
    rra
    db $10
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    ld e, a
    rrca
    ld c, l
    ld [bc], a
    ld l, l
    ld [$fe07], sp
    inc bc
    ld [bc], a
    ld l, h
    add hl, bc
    add b
    rst $38
    ld b, b
    ld [bc], a
    ld l, h
    dec b
    inc bc
    db $fd
    rlca
    ld hl, sp+$0d
    ldh a, [rNR30]
    ld [bc], a
    ld l, h
    ld bc, $f72e
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    dec bc
    ld e, a
    inc b
    db $ed
    ld [bc], a
    ld l, h
    inc bc
    ret nz

    rst $38
    add b
    rst $38
    ld [hl], b
    cp a
    pop hl
    rst $38
    ld a, [c]
    ld [bc], a
    ld l, h
    add hl, bc
    ldh [rIE], a
    ld b, b
    rst $38
    ld bc, $07ff
    cp $09
    rst $38
    rra
    db $fd
    rlca
    rst $38
    dec bc
    rst $38
    inc e
    rst $38
    db $10
    ld a, a
    or b
    rst $08
    ld hl, sp-$79
    adc l
    or d
    or a
    ld a, b
    ld a, e
    pop af
    pop af
    pop hl
    ld hl, $11f1
    ldh [$3f], a
    ret nz

    jp c, $ff4e

    db $dd
    di
    cp [hl]
    or d
    call c, $bc6d
    db $f4
    ei
    rlca
    ld bc, $01fb
    push hl
    nop
    rst $18
    nop
    push af
    nop
    xor a
    ld bc, $89bf
    cp a
    ld [$0e3f], sp
    dec a
    sub e
    rst $18
    ld h, c
    ld [hl], c
    ld c, l
    db $ed
    sbc h
    call c, $dd1d
    dec bc
    adc e
    inc b
    rlca
    ld [bc], a
    ld [$ef10], sp
    sbc b
    cp a
    ld a, h
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    ret nc

    ld a, a
    ld [hl], b
    rst $38
    rrca
    cp $11
    rst $30
    ld l, $ff
    add hl, hl
    rst $38
    ld de, $01ff
    ld [bc], a
    ld l, h
    nop
    ld a, [c]
    inc de
    rst $38
    adc [hl]
    ld a, a
    jp nz, Jump_036_43fe

    rst $38
    ld b, e
    cp a
    ld h, d
    rst $18
    cp l
    rst $38
    ld b, e
    db $ec
    inc e
    call c, $b834
    ld l, h
    ldh a, [$5f]
    ldh [$bf], a
    ldh [rIE], a
    and b
    rst $28
    db $10
    di
    ld [$0438], sp
    ld a, h
    inc bc
    rst $38
    nop
    or $00
    ei
    nop
    rst $18
    nop
    db $f4
    nop
    or b
    ld [$300c], sp
    scf
    ret nz

    db $ca, $00, $0f

    rlca
    rra
    ld [$6c02], sp
    nop
    ld c, $3f
    and b
    rst $38
    ldh a, [$3f]
    and b
    rra
    ld d, b
    ld a, a
    ld hl, sp-$41
    ldh [$5f], a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld [bc], a
    ld l, h
    dec c
    dec a
    ld [bc], a
    jp z, $fd00

    ld [$1dff], sp
    rst $38
    ld b, $02
    ld l, h
    nop
    inc c
    ld c, h
    adc a
    adc a
    ld [hl], b
    ldh a, [$67]
    ld c, a
    rst $38
    cp b
    rst $38
    ret nz

    ld [bc], a
    ld l, h
    nop
    inc bc
    inc bc
    rst $38
    db $fd
    rst $38
    add c
    ld [bc], a
    ld l, h
    ld b, $c0
    db $dc, $01, $01
    ld c, $3f
    ldh [$f8], a
    rst $38
    add hl, de
    rst $38
    rlca
    ld [bc], a
    ret c

    inc bc
    ret nz

    cp a
    ldh a, [$9f]
    ld [$bcff], sp
    rst $38
    ld h, b
    ld [bc], a
    ld l, h
    nop
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $2b

jr_036_5632:
    rrca
    jr jr_036_5632

    inc a
    db $fd
    ld b, c
    ld b, $2c
    ld bc, $ff60
    db $10
    rst $38
    ld [$9806], sp
    ld bc, $0678
    inc l
    rrca
    inc h
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    rst $30
    ld l, $ff
    add b
    and $89
    ld [c], a
    add l
    ld [hl-], a
    nop
    jp c, $ed62

    ld sp, $19f5
    ld a, [$bf7c]
    rst $08
    add b
    or $80
    cp [hl]
    ld h, b
    rst $28
    cp b
    ld a, $84
    or a
    ld [hl], h
    inc c
    or e
    add e
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp b
    rst $38
    call nz, Call_036_427f
    ld a, a
    ld b, d
    ld a, a
    ld b, b
    rst $38
    ldh [rTMA], a
    inc l
    rrca
    dec c
    ei
    rra
    db $fd
    dec bc
    rst $38
    ld [$05fe], sp
    rst $38
    inc bc
    cp $05
    cp $05
    rst $38
    ld [$c4f6], sp
    or [hl]
    ld h, h
    xor e
    db $76
    ld h, c
    rst $28
    ldh [$a6], a
    ld a, h
    dec e
    add [hl]
    ld [bc], a
    db $e3
    dec e
    call Call_036_7d4b
    cp h
    nop
    nop
    db $fc
    ld [bc], a
    ld sp, hl
    cp $8e
    ld c, a
    rlca
    push af
    dec bc
    ld l, $7f
    sub b
    rst $38
    ld [$483f], sp
    ccf
    ld [$18ef], sp
    rra
    ldh a, [rIE]
    ldh [rIE], a
    or b
    ld b, $6c
    rrca
    ld c, $0a
    cp $08
    rst $38
    db $10
    ld sp, hl
    daa
    cp $3f
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc b
    add h
    ld [bc], a
    ld a, b
    ld bc, $7abc
    ld b, [hl]
    db $fd
    add e
    cp [hl]
    add e
    adc d
    jp nz, $a243

    ld h, e
    rst $38
    di
    ld a, e
    ld de, $9f11
    ld c, a
    ccf
    ld a, a
    jr c, @+$79

    ld c, h
    ld d, a
    cp a
    cp [hl]
    db $ed
    rst $38
    adc b
    rst $38
    db $10
    ld a, a
    adc b
    cp a
    ldh a, [rIE]
    ld b, b
    ld b, $00
    ld de, $0680
    inc l
    rrca
    ld c, $02
    rst $38
    ld bc, $0fff
    rst $38
    ld [de], a
    cp $1d
    rst $38
    inc bc
    ld b, $2c
    nop
    rra
    rst $38
    rst $08
    ld hl, sp-$11
    jr jr_036_579e

    add sp, -$01
    xor b
    rst $38
    db $10
    ld b, $88
    ld bc, $fbab
    add a
    rst $38
    add b
    rst $20
    ld e, a
    rst $38
    jr c, @+$08

    inc l
    dec b
    add b
    rst $38
    ld b, b
    ld b, $ce
    rra
    rlca
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    add hl, de
    ld [bc], a
    rst $38
    add d
    add hl, bc
    nop
    dec bc
    ld [$0009], sp
    rrca
    ld a, [de]
    add hl, bc
    rst $38
    ld a, [c]
    ld hl, $31ff
    rst $28
    add hl, sp
    rst $28
    dec h
    rst $10
    dec sp
    pop af
    dec d
    ld a, [c]
    sub c
    rst $38
    add l
    db $fd
    add a
    ld a, l
    jp z, $cd78

    ld [hl], b
    jr c, @+$34

    ld a, [$dfd2]
    cp a
    cp l
    rst $38
    ld [$0cff], sp
    rst $30
    sbc h
    rst $30
    sbc h
    ld [hl], a
    push hl
    ld h, a
    cp $5c
    db $dd
    ld_long $ffec, a
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    cp a
    ldh [$bf], a
    jr nz, @+$61

    ldh [$7f], a
    ld b, b
    ld a, a
    ld c, b
    add hl, bc
    nop
    rrca
    ld [$fd06], sp
    dec b
    cp $02
    ld sp, hl
    rst $08
    cp [hl]
    xor $dc
    ld a, h
    adc $56

jr_036_579e:
    db $e3
    add hl, hl
    di
    ld sp, $cfc9
    ld [hl], a
    rst $30
    rlca
    dec b
    add sp, -$16
    add sp, -$13
    ld [$0808], sp
    dec c
    dec c
    rrca
    rlca
    rlca
    ccf
    ccf
    inc b
    rlca
    cp e
    cp e
    cp c
    cp c
    add e
    add e
    add [hl]
    add h
    add [hl]
    add h
    inc b
    rlca
    rst $20
    rst $20
    rst $38
    sbc b
    rst $28
    cp b
    rst $18
    ldh a, [$9f]
    ld d, b
    ccf
    and b
    ld a, a
    ld h, e
    cp l
    cp l
    ld [hl], e
    ld a, d
    add hl, bc
    nop
    dec c
    inc bc
    db $fc
    dec c
    ldh a, [$30]
    rst $00
    ld b, b
    rst $28
    add a
    sbc b
    adc b
    rst $18
    adc d
    ld hl, sp-$61
    rst $30
    rst $30
    sra e
    ld d, $26
    adc e
    ld [de], a
    jp $e10a


    add c
    cp [hl]
    ret nz

    ret nz

    rst $38
    db $dd
    ldh [$7d], a
    add b
    ld [hl], d
    adc a
    sbc a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    or $e6
    or $df
    ccf
    or $0e
    ld [hl], d
    adc d
    call $fedb
    ld sp, hl
    ld a, [$7ff9]
    db $fd
    db $fd
    ccf
    ld [hl], a
    ld [hl], h
    ld e, a
    ld e, b
    rra
    rra
    dec de
    ld a, [de]
    cp c
    cp l
    db $fc
    db $f4
    ld a, [hl]
    ei
    db $dd
    ld h, a
    add hl, bc
    nop
    ld bc, $7f80
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    cp a
    jr nz, jr_036_5874

    ld h, b
    rst $38
    ld h, a
    rst $28
    jr nc, @-$0e

    rra
    rst $38
    rrca
    db $fd
    db $10
    db $fd
    db $10
    ld a, [c]
    ld de, $0ff9
    cp a
    ld a, a

jr_036_5848:
    ld a, [c]
    ld c, $3f
    db $fd
    push af
    ld hl, sp-$64
    adc $b6
    adc a
    add e
    ei
    db $ec
    cpl
    add hl, sp
    ld a, d
    xor h
    ld bc, $7741
    jp hl


    jp hl


    rst $18
    ccf
    ccf
    add b
    add c
    db $fd
    cp $fe
    ld e, $7f
    ld e, [hl]
    rst $18
    ld a, c
    ld a, a
    jp nc, Jump_036_42fd

    cp b
    ld b, l
    ld a, $fe
    rst $38

jr_036_5874:
    ld a, c
    add a
    rst $38
    inc hl
    ld h, d
    cp a
    db $fc
    rst $38
    rrca
    dec hl
    dec de
    sub b
    jr jr_036_58b5

    call nc, $9818
    rst $38
    ccf
    jr nz, jr_036_5848

    ld h, b
    cp a
    jr c, @+$01

    inc d
    cp a
    db $fc
    ld a, a
    ld b, b
    rst $38
    ld h, b
    ld e, a
    ret nc

    cp $06
    db $fc
    inc b
    rst $38
    inc e
    rst $38
    add hl, hl
    rst $38
    db $76
    rst $38
    dec de
    add hl, bc
    nop
    nop
    ld a, a
    inc de
    rst $28
    jr @+$01

    adc b
    rst $08
    jr c, @+$01

    ldh a, [$09]
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38

jr_036_58b5:
    db $fd
    add hl, bc
    nop
    ld [$fe07], sp
    rst $38
    ld hl, sp+$09
    nop
    ld [$7ff7], sp
    ld hl, sp+$0c
    db $fd
    ld b, $fe
    inc bc
    cp $03
    rst $38
    ld bc, $0009
    nop
    sbc a
    or b
    rrca
    sbc h
    ld a, a
    ld a, [de]
    rst $28
    inc [hl]
    ld a, a
    sbc $09
    ld hl, sp+$12
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    ld [hl], l
    rrca
    ld bc, $ff01
    ld bc, $02fe
    db $fc
    inc b
    db $fc
    inc e
    ld [c], a
    ld a, $ff
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_036_5921

    db $10
    rra
    inc e
    inc hl
    ld a, $05
    ld [hl], h
    rrca
    rlca
    rst $30
    rlca
    ldh a, [rNR22]
    ldh [$3f], a
    dec b
    ld [hl], h
    ld b, $bf
    add b
    ccf
    and b
    rra
    ret nc

    dec b
    ret nc

    ld b, $fe
    rlca
    ld hl, sp+$0f

jr_036_5921:
    ld hl, sp+$0f
    pop bc
    ld a, a
    add b
    ld [c], a
    ld [$1d40], sp
    ret


    dec bc
    jp nz, $e407

    dec bc
    db $fc
    scf
    ld hl, sp+$41
    ld a, a
    add b
    and e
    adc b
    add c
    call c, $e8c9
    ld hl, $1370
    ld l, b
    rra
    db $76
    rrca
    rst $38
    nop
    dec b
    ld [c], a
    ld bc, $3fc0
    and b
    ld a, $f0
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    add b
    add hl, de
    ret nz

    ld [hl], b
    ld b, $26
    adc a
    jp hl


    sbc a
    pop de
    rra
    ld d, c
    rra
    sub b
    ccf
    and b
    rra
    ldh a, [rIF]
    ret z

    rrca
    ld [$7405], sp
    ld [de], a
    sbc a
    sub b
    rst $38
    ld h, b
    ldh a, [$1f]
    pop af
    rra
    ldh a, [rNR22]
    ld hl, sp+$1b
    rst $30
    rla
    rst $30
    inc e
    rst $30
    rla
    ld hl, sp+$0f
    ld e, a
    ldh [rIE], a
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $28
    rst $38
    or b
    rst $28
    ld l, a
    ret nz

    ld [hl], b
    ret nz

    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $ffff
    rst $38
    ei
    rst $38
    ld b, $fb
    ei
    ld bc, $0107
    rst $38
    inc b
    db $f4
    add $f7
    inc b
    rst $30
    inc c
    xor $f4
    db $f4
    push af
    dec d
    rst $30
    db $76
    adc a
    add sp, $3f
    and b
    ccf
    jr nz, jr_036_59b8

    db $e4
    nop
    rst $38
    add b
    dec b

jr_036_59b8:
    ld [hl], h
    rrca
    inc bc
    ld hl, sp+$0b
    db $fc
    inc b
    rst $38
    dec de
    cp $25
    db $fd
    dec sp
    rst $38
    dec b
    ld c, a
    db $10
    dec b
    cp $f0
    cp a
    nop
    nop
    rst $38
    rst $38
    cp a
    ld [hl], b
    rst $38
    ret nz

    dec b
    db $ec
    ld de, $00fb
    db $ec
    dec b
    db $f4
    db $10
    cp $07
    rst $38
    ld bc, $7405
    nop
    rrca

Jump_036_59e6:
    ld [$101f], sp
    ld a, a
    ld l, h
    cp a
    jp nc, Jump_036_6edf

    rst $38
    ld hl, sp+$05
    ld [hl], h
    rrca
    ld de, $0240
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    ld a, e
    rrca
    rlca
    ld bc, $03fe
    db $fc
    rlca
    dec b
    ld a, d
    ld bc, $ef10
    jr c, @-$37

    db $f4
    rlca
    or h
    inc bc
    ld a, [c]
    ld bc, $05f9
    ret nc

    add hl, bc
    ld [bc], a
    cp $03
    dec b
    ld a, d
    ld bc, $f00f
    ld a, $c0
    pop af
    ld bc, $0e8f
    ld a, $70
    ldh a, [rTIMA]
    ld a, d
    ld bc, $7f80
    ldh [$1f], a
    db $10
    rst $38
    ldh [$bf], a
    and b
    cp a
    and b

jr_036_5a3a:
    dec b
    ret nc

    ld a, [bc]
    cp $03
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    db $e3
    ld a, a
    add a
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$01
    ld sp, hl
    nop
    db $fc
    dec b
    ld b, d
    db $10
    adc [hl]
    cp $d9
    ld [hl], a
    db $fc
    inc hl
    db $fc
    adc e
    rst $38
    add e
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rra
    db $10
    adc a
    adc c
    add [hl]
    add a
    xor b
    db $ec
    adc b
    call c, Call_000_2e04
    call nz, $c46e
    ld l, [hl]
    jp nz, $a056

    db $f4
    db $10
    push af
    cp a
    and b
    ccf
    jr z, jr_036_5a3a

    cp h
    inc hl
    ld a, $17
    ld d, $53
    ld d, d
    rra

jr_036_5a8b:
    inc e
    cpl
    jr z, jr_036_5a8b

    rlca
    db $fd
    rlca
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld [$8805], sp
    db $10
    or $7d
    rlca
    sbc h
    db $e3
    rst $28
    ret nc

    scf
    xor b
    ld a, b
    rst $10
    rst $28
    cp h
    ld a, a
    ld h, e
    rst $38
    ld e, h
    rst $18
    db $fd
    ld [hl], e
    adc [hl]
    cp $0f
    adc a
    ld [hl], c
    ld a, l
    adc a
    rst $38
    ld a, [hl]
    pop af
    rst $38
    add b
    rlca
    ld hl, sp+$78
    ld a, a
    ldh a, [$98]
    adc a
    ld a, a
    sub l
    ld a, l
    push bc
    cp l
    ld b, l
    db $fd
    dec sp
    ld a, [$f213]
    db $10
    dec de
    ldh [$eb], a
    ldh a, [rNR30]
    ldh a, [rNR34]
    ldh a, [rNR30]
    pop af
    dec de
    push af
    ccf
    rst $28
    ccf
    cpl
    jr z, @+$31

    jr z, jr_036_5af9

    sub h
    ld d, a
    sub $4f
    adc $2b
    ld [$f233], a
    rst $00
    db $e4
    adc e
    ei
    or e
    di
    rst $08
    ld c, h
    rst $38
    ld [hl], c
    rst $38
    ld [bc], a
    rst $38
    dec b

jr_036_5af9:
    rst $38
    ld bc, $f8e7
    sbc a
    ldh [$bf], a
    ret nz

    rst $18
    ld h, b
    or b
    ld a, a
    rst $38
    rst $38
    dec b
    ld a, d
    nop
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    ld hl, sp+$07
    nop
    rst $38
    dec b
    ld a, [$0b12]
    ld a, [$fc0f]
    rra
    ldh a, [$2f]
    ld hl, sp-$39
    db $fc
    rst $38
    db $fc
    dec b
    db $fc
    ld de, $ff1f
    rrca
    dec b
    ld a, d
    ld [$d81f], sp
    rst $38
    ldh [rTIMA], a
    ld a, d
    ld [$0240], sp
    ld de, $11ff
    rst $38
    db $f4
    ld a, [de]
    rst $38
    dec c
    rst $38
    ld [hl], a
    ld hl, sp+$3f
    ld de, $0500
    ld de, $f0ff
    add b
    rst $38
    add b
    ld de, $0910
    ld de, $0f21
    dec c
    ld bc, $01ff
    ld de, $0500
    ld e, b
    rst $38
    or b
    rst $38
    xor $1f
    db $fc
    or $de
    rst $28
    ld a, a
    rst $28
    ccf
    xor $ff
    ldh a, [$1f]
    cp $0f
    ld hl, sp+$0b
    ld hl, sp+$0a
    ld a, a
    ret nz

    ld de, $0070
    ccf
    ldh [$1f], a
    di
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $0500
    ld hl, sp+$07
    rst $38
    inc bc
    rst $38
    inc a
    ld de, $067f
    rra
    ldh [rIE], a
    ret nz

    rst $38
    inc a
    rst $38
    cp $03
    ld de, $00a0
    db $fc
    rlca
    ld hl, sp-$31
    jr c, @+$01

    ld [$08ff], sp
    rst $38
    ld l, a
    ld a, d
    rst $30
    cp $f7
    db $fc
    ld [hl], a
    cp $0f
    ld hl, sp+$7f
    ldh a, [$1f]
    ret nc

    rra
    ld d, b
    ld hl, sp+$09
    db $fc
    dec b
    db $fc
    inc b
    cp $02
    ld de, $044e
    nop

jr_036_5bbb:
    rst $38
    nop
    ld [hl], a
    nop
    or a
    ld [$c40b], sp
    rst $00
    db $fc
    ccf
    db $fc
    rlca
    db $fc
    rlca
    jr c, jr_036_5bbb

    ld [hl], $ff
    ld b, [hl]
    db $fc
    add a
    rst $38
    adc e
    rst $38
    adc c
    rst $38
    ret


    rst $38
    ld b, a
    cp $1c
    rst $30
    ld l, h
    rst $38
    ld h, d
    ccf
    pop hl
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    sub e
    rst $38
    ld [c], a
    ld a, a
    nop
    rst $38
    nop
    xor $00
    db $ed
    db $10
    ret nc

    inc hl
    db $e3
    ccf
    db $fc
    ccf
    ldh [$3f], a
    ldh [$1f], a
    sub b
    ccf
    and b
    ccf
    jr nz, @+$81

    ld b, b
    ld de, $0f1e
    dec b
    db $fc
    dec b
    db $fc
    dec b
    cp $02
    cp $06
    db $fd
    rlca
    ld hl, sp+$0b
    ld hl, sp+$0f
    ldh a, [rNR22]
    daa
    db $fd
    rla
    rst $38
    rrca
    rst $28
    rlca
    push af
    rlca
    ld a, [hl]
    dec b
    rst $00
    ld [bc], a
    di
    ld bc, $e4fd
    cp a
    add sp, -$01
    ldh a, [$f7]
    ldh [$af], a
    or b
    ld e, $b0
    db $d3
    and b
    rst $20
    ldh [$bf], a
    ccf
    and b
    ccf
    and b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    cp a
    ldh [$1f], a
    ret nc

    rra
    ldh a, [rIF]
    add sp, $11
    jr nz, jr_036_5c58

    dec c
    ldh a, [$1f]
    ldh a, [rNR22]
    ldh a, [rNR13]
    add sp, $3e
    ret nz

    ld a, a
    add b
    cp a
    add b
    cp a

jr_036_5c58:
    add b
    sbc a
    ld de, $f5ff
    cpl
    add b
    add c
    ld [hl], b
    ldh a, [rIF]
    rst $08
    ldh [$bf], a
    ld de, $10b0
    ld b, b
    rst $38
    nop
    db $f4
    ld bc, $0e41
    rrca
    ldh a, [$f3]
    rrca
    ld hl, sp+$0f
    add sp, $0f
    add sp, $17
    ld e, h
    inc bc
    cp $01
    db $fd
    ld bc, $01fd
    ld sp, hl
    ld de, $0f20
    dec c
    ret nz

    ld c, e
    ldh a, [$30]
    rst $28
    ld a, a
    ld_long a, $ffff
    ccf
    rst $38
    inc c
    ld de, $0000
    ccf
    or b
    ld e, a
    ld d, b
    rrca
    ld c, b
    ld a, a
    ldh a, [rNR11]
    ld e, $04
    db $fc
    dec c
    ld a, [$f00a]
    ld [de], a
    cp $0f
    ld de, $044e
    inc bc
    jp nc, $0c0f

    rst $30
    cp $5f
    rst $38

jr_036_5cb4:
    rst $38
    db $fc
    rst $38
    jr nc, @+$13

    jr nz, @+$11

    ld bc, $0240
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld a, [c]
    inc bc
    db $fc
    rlca
    db $fd
    dec [hl]
    call $c47d
    ld c, h
    add hl, bc
    nop
    inc bc
    nop
    rst $38
    add b
    rst $38
    jr nz, jr_036_5cb4

    ld [hl], b
    sbc a
    ret nc

    add hl, bc
    db $10
    dec b
    add hl, bc
    rst $38
    ld a, [c]
    ld b, $09
    jr nz, jr_036_5ced

    ld h, b
    add hl, bc
    db $10
    dec b
    ld bc, $04ff
    ei
    ld c, $f9
    dec bc

jr_036_5ced:
    add hl, bc
    nop
    inc bc
    ret nz

    ccf
    ldh [$bf], a
    xor h
    or e
    cp [hl]
    inc hl
    ld [hl-], a
    ldh [$60], a
    sub b
    ret nc

    add a
    add a
    ei
    ld a, h
    di
    inc e
    add hl, bc
    ld l, b
    ld [bc], a
    ccf
    jr nz, @+$01

    ret nz

    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    dec c
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec e
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    ret nz

    or $07
    rst $28
    dec c
    rst $28
    ld a, [bc]
    rst $38
    cp b
    rst $38
    ld b, h
    rst $38
    ld c, $ff
    ld bc, $03ff
    ld l, a
    ldh [$f7], a
    or b
    rst $30
    ld d, b
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld [$b0ff], sp
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and b
    rlca
    inc b
    dec bc
    ld a, [bc]
    db $e3
    ld [c], a
    rst $18
    inc a
    rst $08
    jr c, @+$0b

    cp b
    ld [bc], a
    pop af
    ld a, [de]
    pop af
    ld e, $f0
    dec de
    ld hl, sp+$0e
    ld hl, sp+$0d
    db $fc
    ld b, $fe
    inc bc
    rst $38
    ld bc, $06ff
    rst $38
    inc b
    rst $38
    inc b
    ld a, a
    ld b, $7f
    add d
    ccf
    ld [hl], c
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    dec c
    rst $00
    dec bc
    cp a
    inc a
    cp a
    inc sp
    rst $18
    rra
    db $f4
    ld b, $fc
    ld b, $fc
    rlca
    rst $38
    or b
    db $e3
    ret nc

    db $fd
    inc a
    db $fd
    call z, $f8fb
    cpl
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

jr_036_5d98:
    jr nz, jr_036_5d98

    ld h, b
    cp $41
    db $fc
    adc [hl]
    add hl, bc
    call z, $8f00
    ld e, b
    adc a
    ld a, b
    rrca
    ret c

    rra
    ld [hl], b
    rra
    or b
    ccf
    ld h, b
    add hl, bc
    db $dc, $01, $01
    add hl, bc
    ld a, d
    ld bc, $0904
    ret nc

    nop
    cp $08
    add hl, bc
    ld l, $0d
    nop
    db $fc
    rlca
    ld hl, sp+$0f
    add hl, bc
    ld b, d
    inc de
    ld c, $f8
    ld c, $f8
    rrca
    ccf
    ld h, b
    rra
    ld [hl], b
    add hl, bc
    ld d, d
    inc de
    ldh a, [$09]
    ld e, d
    db $10
    add hl, bc
    jr nc, jr_036_5df5

    add hl, bc
    add [hl]
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, jr_036_5dea

    nop
    db $10
    ld a, a
    db $10
    rst $38
    ld h, b
    rst $38
    inc b
    db $fd

jr_036_5dea:
    rlca
    cp $03
    cp $03
    rst $38
    rlca
    ld hl, sp+$1e
    ldh [$38], a

jr_036_5df5:
    ldh [rLCDC], a

jr_036_5df7:
    ld a, a
    nop
    rst $38
    nop

Jump_036_5dfb:
    rst $18
    nop
    push de
    add b
    or a
    ret nz

    and l
    ldh a, [$61]
    ld a, h
    jr @+$21

    db $fc
    rlca
    rst $38
    inc bc
    add hl, bc
    nop
    nop
    ld a, a
    nop
    rst $10
    nop
    ld a, l
    nop
    rla
    ld b, b
    ccf
    ldh [rIE], a
    ret nz

    add hl, bc
    nop
    nop
    cp $00
    db $eb
    nop
    cp [hl]
    nop
    add sp, $02
    cp $00
    rst $38
    nop
    ei
    nop
    xor e
    ld bc, $03ed
    and l
    rrca
    add [hl]
    ld a, $18
    ld hl, sp-$01
    jr nz, jr_036_5df7

    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    ldh [$1f], a
    ld a, b
    rlca
    inc e
    rlca
    ld [bc], a
    rst $08
    ld c, a
    cp $33
    cp $04
    add hl, bc
    and b
    ld bc, $ff09
    pop af
    ld c, $cf
    ld bc, $7101
    ld a, c
    db $eb
    or d
    rst $20
    inc h
    rst $38
    jr jr_036_5e67

    nop
    nop
    nop
    push de
    ret nz

    ld sp, hl
    db $fc
    cp $09

jr_036_5e67:
    add sp, $14
    rst $38
    nop
    nop
    ld l, e
    inc bc
    ld e, a
    ccf
    cp a
    add hl, bc
    or d
    ld [de], a
    add hl, bc
    nop
    nop
    ld [hl], b
    di
    add b
    add b
    adc [hl]
    sbc [hl]
    rst $10
    ld c, l
    add hl, bc
    ld hl, sp+$14
    di
    ld a, [c]
    ld a, a
    call z, Call_000_207f
    add hl, bc
    ld [hl], b
    ld bc, $0b09
    ld hl, $0240
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b

jr_036_5e97:
    dec a
    rrca
    add hl, hl
    ld bc, $05fc
    dec a
    ld b, $70
    rst $38
    adc b
    rst $38
    inc b
    ld sp, hl
    dec b
    dec a
    rrca
    jr z, jr_036_5e97

    inc c
    and c
    dec l
    add b
    cp a
    rst $38
    ld [bc], a
    ld sp, hl
    nop
    rst $38
    inc b
    dec b
    db $f4
    ld [bc], a
    ld a, a
    inc b
    ld a, a
    ld b, a
    rst $38
    ld [bc], a
    db $fc
    nop
    rst $18
    ld bc, $01af
    and a
    add hl, bc
    and l
    dec bc
    and c
    rrca
    rlca
    rst $08
    dec b
    ld a, h
    rrca
    rrca
    cp $03
    ld a, [$fc07]
    dec b
    dec [hl]
    inc de
    cp $03
    dec b
    dec a
    inc b
    ret nz

    rst $38
    and c
    rst $38
    pop hl
    xor l
    ld h, c
    db $ed
    ccf
    and b
    rra
    ret nc

    rla
    ret c

    rrca
    add sp, -$31
    add sp, $4f
    add sp, -$31
    ld l, b
    sbc a
    rst $18
    rst $18
    ret c

    rst $18
    ld d, b
    dec b
    ld h, d
    inc d
    rst $38
    ld [hl], b
    rst $38
    xor b
    dec b
    add b
    rrca
    dec bc
    rst $38
    ld bc, $03ff
    db $fc
    rrca
    db $f4
    rra
    add sp, $3f
    jp hl


    rst $28
    ld hl, sp-$61
    ld hl, sp+$2f
    db $ec
    ccf
    nop
    sbc $e1
    db $ed
    ld [de], a
    sub d
    rst $38
    rst $38
    ld c, h
    sbc $80
    dec b
    inc a
    ld bc, $bf30
    ret


    rst $08
    add hl, bc
    add hl, bc
    rst $00
    rst $00
    and a
    db $e4
    ld b, a
    call nz, $c407
    rrca
    ret z

    rst $38
    cp b
    rst $38
    xor b
    rst $08
    ld a, b
    ld a, a
    ldh a, [$df]
    ret nc

    dec b
    ld h, [hl]
    inc de
    dec b
    dec a
    rrca
    inc c
    sbc h
    rst $30
    cp $7e
    di
    rra
    ldh a, [rNR43]
    rst $38
    inc sp
    rst $38
    inc e
    dec b
    inc a
    nop
    dec b
    dec a
    ld bc, $c03e
    ret nz

    rst $38
    ccf
    dec b
    inc a
    ld [bc], a
    rrca
    adc b
    rra
    inc e
    inc sp
    ld [hl], $c3
    pop de
    rst $38
    inc sp
    rst $38
    ld c, $05
    inc a
    nop
    dec b
    ld h, h
    dec d
    jr nz, jr_036_5f78

    inc a
    rrca
    inc bc
    ld b, b
    ld [bc], a

jr_036_5f78:
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $11
    dec c
    ei
    jr c, @-$03

    ld b, d
    ccf
    ld bc, $80fe
    rst $38
    add b
    db $fd
    add d
    cp $80
    ld b, $12
    inc b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$09fe], sp
    db $fd
    db $10
    rst $38
    ldh a, [rIE]
    ld [$04ff], sp
    ld sp, hl
    nop
    rst $38
    ld [bc], a
    ld b, $a8
    inc bc
    ld b, $11
    rrca
    rlca
    ld b, $93
    nop
    ld [bc], a
    cp $80
    inc a
    inc bc
    call c, $e663
    add hl, sp
    ld hl, sp-$01
    rst $38
    rlca
    rst $38
    nop
    db $fc
    inc bc
    ld a, a
    and b
    rst $38
    and b
    ld a, a
    ret nc

    ccf
    rst $28
    rra
    ldh a, [rIE]
    ldh a, [$2f]
    ldh [$34], a
    ld [c], a
    ld hl, sp+$13
    ld hl, sp+$2f
    ldh a, [$5f]
    pop af
    sbc [hl]
    and b
    ld a, a
    rst $28
    ccf
    ld d, b
    ccf
    xor b
    rra
    ld sp, hl
    nop
    rst $30
    inc c
    rst $28
    dec de
    sbc a
    ld a, h
    ld l, a
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

    ld b, $12
    inc bc
    ld b, $8b
    ld [bc], a
    ld b, b
    ccf
    ld b, $89
    nop
    ld [bc], a
    rst $38
    ld bc, $1206
    ld a, [bc]
    db $fc
    inc bc
    add e
    cp a
    cp a
    dec a
    rst $38
    inc bc
    rst $38
    dec b
    ld b, $22
    db $10
    add hl, sp
    jp hl


    ld e, e
    ldh a, [$90]
    rst $10
    ld a, e
    rst $38
    cp $bf
    rst $38
    sub l
    rst $38
    add hl, bc
    cp $03
    adc h
    ccf
    dec bc
    ld a, a
    sub h
    rst $38
    ld a, a
    rst $38
    rst $38
    ei
    xor l
    rst $18
    push de
    rst $08
    xor a
    ld h, a
    ld a, l
    add c
    rlca
    cp $ff
    ld hl, sp-$41
    ldh a, [rIE]
    ld a, b
    rst $38
    ld d, b
    rst $38
    db $10
    ld b, $12
    rrca
    jr nz, jr_036_6051

    rst $38
    ld [bc], a
    rst $38

jr_036_6051:
    dec b
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    ld [hl], a
    ld a, $bf
    db $fc
    rst $30
    ldh a, [rTMA]
    ld [de], a
    rrca
    ld c, l
    ld b, $e0
    rra
    rla
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff

jr_036_6070:
    push af
    ld sp, hl
    ld a, [de]
    rst $30
    rlca
    ld a, [$0603]
    nop
    ld b, $06
    nop
    ld bc, $06c0
    nop
    dec b
    ld bc, $62fe
    db $fc
    push bc
    db $fc

jr_036_6087:
    db $cd, $ff, $00
    ei
    jr c, jr_036_6070

    ld [c], a
    pop af
    inc de

jr_036_6090:
    ld hl, sp-$37
    ld hl, sp-$78
    ld sp, hl
    sbc c
    jp hl


    db $eb
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    jr jr_036_6090

    cp h
    set 3, [hl]
    ld d, e
    or $53
    rst $30
    ld b, $10
    rlca
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $1006
    ld a, [bc]
    ccf
    ld [hl], c
    xor a
    sbc l
    di
    ld h, a
    call nc, $fb39
    ld [$07fe], sp
    ld sp, hl
    add hl, bc
    ld a, [$771a]
    ld e, a
    inc [hl]
    inc a
    sbc b
    sbc b
    rst $08
    rst $08
    jr c, jr_036_6087

    db $10
    ld [hl], e
    di
    scf
    call z, $49cf
    ld c, e
    ld a, [c]
    or [hl]
    ld a, [c]
    sub $b4
    db $fd
    sbc b
    ld_long a, $ff5f
    and b
    cp a
    ld h, b
    rst $38
    ld l, a
    rst $28
    ld d, b
    db $d3
    ld h, e
    rst $20
    ld b, l
    ld c, l
    adc c
    sbc c
    adc e
    sbc d
    ld [hl], e
    di
    inc d
    db $f4
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [rIE], a
    ld h, b
    rst $38
    jr nz, jr_036_6106

    inc e
    nop
    ccf
    ld b, $b9
    nop

jr_036_6106:
    ld b, $25
    ld bc, $2606
    ld bc, $ff02
    rlca
    db $fc
    inc b
    db $fc
    dec b
    db $fd
    rst $30
    rst $08
    adc $e7
    ld [hl], $f3
    ld a, [$7511]
    add sp, -$08
    call nz, $a3e7
    cp e
    cp [hl]
    rst $38
    and c
    rst $38
    db $db
    cp $b7
    db $fc
    rst $00
    ld a, e
    db $c4, $fb, $00
    rst $38
    and b
    rst $38
    rra
    ldh a, [$9f]
    ldh a, [$df]
    or b
    rst $38
    sbc b
    ld [hl], l
    sbc [hl]
    db $fd
    ld [hl+], a
    ld [$0bf9], sp
    ei
    add l
    ld a, l
    push bc
    dec a
    push hl
    dec e
    rst $20
    ld e, $e9
    rra
    ldh [$1f], a
    rra
    ret nc

    rst $18
    ldh a, [$7f]
    ld [hl], b
    ld a, a
    ld d, b
    ld b, $5c
    ld bc, $ff00
    add b
    rst $38
    inc c
    rst $38
    ld [$1006], sp
    ld [$7fd7], sp
    add sp, $3c
    db $e4
    or a
    di
    ld e, e
    db $fc
    ld a, h
    pop hl
    dec a
    cp $1e
    cp $0f
    ld b, l
    ld a, d
    ld c, a
    ld [hl], b
    ld c, d
    ld [hl], l
    rst $18
    cp b
    or a
    ret c

    rst $38
    jp Jump_000_253f


    ccf
    cp $fe
    ld h, c
    ld e, a
    ld hl, sp-$79
    db $fc
    sub e
    xor $bb
    rst $20
    inc e
    di
    ccf
    ld a, [c]
    rra
    ld a, [c]
    and $19
    ld l, [hl]
    or c
    ld e, [hl]
    pop hl
    sbc [hl]
    pop hl
    ccf
    jp nz, $837f

    rst $08
    dec [hl]
    add a
    ld a, [hl]
    rst $38
    add b
    ld b, $70
    dec d
    ld b, $11
    ld a, [bc]
    ld b, $21
    dec b
    ld b, $10
    ld a, [bc]
    db $d3
    xor $ff
    ld b, l
    rst $38
    ld b, h
    rst $38
    add hl, hl
    rst $08
    ld a, c
    add [hl]
    rst $38
    add a
    add [hl]
    adc [hl]
    adc d
    adc a
    rst $38
    rst $18
    xor b
    rst $38
    sub a
    ld a, a
    sub b
    adc a
    ld a, c
    rst $38
    sbc c
    ld l, a
    ld hl, sp-$11
    ld [$649f], sp
    cp a
    call nz, $cebb
    adc e
    db $fd
    sbc a
    ld l, c
    rst $38
    add hl, bc
    rst $38
    sub d
    rst $38
    sub d
    ld b, $7a
    rra
    inc b
    ld b, $d1
    rra
    rlca
    ld [hl], c
    ld b, $10
    ld a, [bc]
    rra
    rla
    ei
    xor $f1
    ld d, $f7
    db $10
    di
    db $10
    ld hl, sp+$08
    rst $38
    rlca
    rst $38
    nop
    ld h, e

Jump_036_61ff:
    cp [hl]
    inc hl
    ld [c], a
    rst $20
    inc h
    ld a, a
    ret c

    ld a, a
    ld b, $19
    ld [de], a
    ld b, $7b
    dec e
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    ld c, l
    ld a, [bc]
    ld e, a
    rrca
    ld c, l
    ld a, [bc]
    ld [hl], l
    rrca
    ld [bc], a
    rst $30
    rlca
    or $10
    pop af
    dec hl
    rst $28
    ld c, [hl]
    db $dd
    ld d, h
    rst $38
    inc bc
    cp $0e
    ld a, [c]
    ld [de], a
    add sp, -$58
    ldh a, [$f0]
    ld a, b
    ld [$066e], sp
    dec c
    ld h, l
    rst $38
    add b
    rst $38
    ldh [$9f], a
    sub b
    cpl
    dec hl
    ld e, $1e
    dec a
    ld hl, $c0ed
    ld h, c
    ld c, h
    ld a, [bc]
    db $76
    ld [bc], a
    rst $18
    ret nz

    rst $18
    db $10
    rra
    xor b
    rst $28
    db $e4
    ld [hl], a
    ld d, h
    ld a, [bc]
    db $76
    rrca
    nop

jr_036_6258:
    ld bc, $760a
    ld [$e5bc], sp
    cp $c4
    db $fc
    rlca
    cp $06
    db $fd
    dec b
    ld hl, sp+$08
    ld sp, hl
    add hl, bc
    db $fd
    dec c
    ld [$7ca8], sp
    ld a, h
    ld l, b
    add sp, $0c
    ld e, h
    ld d, $de
    rst $38
    ei
    ld [hl], l
    sub e
    or [hl]
    rra
    jr nz, jr_036_62a9

    ld a, h

jr_036_627f:
    ld a, h
    inc l
    cpl
    ld h, b
    ld [hl], h
    pop de
    rst $30
    cp $be
    ld e, l
    sub e
    db $db
    pop af
    ld a, e
    ld c, [hl]
    rst $38
    ld b, a
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ld b, b
    ccf
    jr nz, jr_036_62d8

    jr nz, jr_036_631a

    ld h, b
    ld a, [bc]
    db $76
    rrca
    dec c
    ld sp, hl
    add hl, bc
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    inc b
    db $fc

jr_036_62a9:
    inc b
    cp $06
    cp $02
    rst $38
    inc bc
    ld hl, sp-$75
    db $fc
    add a
    rst $18
    and a
    db $dd
    and $57
    ld l, e
    daa
    jr nc, jr_036_6258

    sbc h
    add l
    add [hl]
    ccf
    and e
    ld a, [hl]
    jp nz, $caf6

    db $76
    ld c, [hl]
    call nc, $c8ac
    jr jr_036_627f

    ld [hl], d
    ld b, e
    jp Jump_036_6a0a


    ld [de], a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38

jr_036_62d8:
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, [bc]
    db $76
    rrca
    dec c
    cp $03
    ld a, [bc]
    ldh a, [rNR10]
    rst $38
    inc bc
    rst $38
    rlca
    ld a, [bc]
    ld [hl+], a
    ld [de], a
    jp nz, Jump_036_51c3

    pop de
    inc [hl]
    or h
    ld a, l
    ld c, l
    rst $38
    add e
    ld a, [bc]
    db $76
    ld [bc], a
    add [hl]
    add a
    inc d
    rla
    ld e, b
    ld e, e
    ld a, l
    ld h, l
    rst $38
    add e
    ld a, [bc]
    ld [hl+], a
    inc de
    ld a, [bc]
    call $0a10
    call $c010
    ld a, [bc]
    db $76
    rrca
    inc bc
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    or $03

jr_036_631a:
    db $fc
    rlca
    ld hl, sp+$0b
    inc b
    nop
    rlca
    ret nz

    ccf
    ldh a, [rIF]
    xor b
    inc b
    nop
    rlca
    inc b
    ld hl, $220f
    ld hl, sp+$09
    rst $38
    rlca
    inc b
    nop
    dec b
    ld bc, $03fe
    rlca
    db $f4
    add a
    db $ec

jr_036_633b:
    rst $00
    ld a, h
    rst $00
    ld [hl], h
    rst $08
    ld a, b
    adc a
    add sp, $1f
    ret nc

    ccf
    and c
    inc b
    nop
    rlca
    ld bc, $f7fe
    dec c
    rst $38
    inc b
    nop
    dec b
    jr c, jr_036_633b

    db $ec
    ld d, e
    rst $30
    ld bc, $04fd
    jr nz, jr_036_6365

    add b
    ld a, a
    ldh [rDIV], a
    jr nz, jr_036_636e

    inc b
    inc c
    nop

jr_036_6365:
    ld sp, hl
    rrca
    pop af
    rla
    di
    ld e, $e3
    ld l, $e3

jr_036_636e:
    ld l, $e3
    ld h, $7e
    jp $87fc


    db $fc
    rrca
    ldh a, [$1f]
    ldh [rNR51], a
    ret nz

    ld e, l
    ret nz

    ld a, e
    add h
    sbc [hl]
    rlca
    cp $02
    rst $38
    ld [bc], a
    rst $38
    ld bc, $e504
    nop
    db $fd
    ld bc, $01ff
    ld sp, hl
    add c
    rst $30
    add b
    ei
    cp e
    ei
    db $dd
    and $d9
    db $fd
    ld a, a
    sub $4f
    db $db
    cp a
    call $f01f
    adc a
    ld hl, sp-$79
    cp h
    add a
    cp h
    inc hl
    cp $a3
    cp $93
    sbc $d3
    ld e, [hl]
    inc b
    jr nz, jr_036_63bf

    db $e3
    ld h, $f1
    inc de
    pop af
    ld de, $09f9
    cp $07
    db $fc
    inc b

jr_036_63bf:
    add hl, hl
    ld de, $bd84
    add h
    db $fc
    add d
    ld a, [$fa02]
    ld bc, $01f1
    pop af
    ld bc, $1ce1
    call c, $fd01
    inc b
    ld b, b
    ld de, $01bd
    sbc a
    ld bc, $001f
    ld e, $80
    cp a
    cp $b1
    cp a
    rst $28
    ld a, a
    ld d, a
    ld e, c
    ld a, a
    rst $18
    adc $2e
    ld sp, $afa1
    sbc [hl]
    sbc [hl]
    ld d, e
    sbc $d3
    sbc $d1
    ld e, a
    and c
    xor a
    and b
    xor a
    ret nz

    rst $00
    ld b, b
    ld b, a
    add b
    add a
    inc b
    and h
    ld b, $ff
    add b
    ld a, a
    ld b, b
    ccf
    ldh [rDIV], a
    ld a, [hl+]
    ld de, $fe05
    ld [bc], a
    cp $04
    db $e4
    nop
    nop
    rst $38
    nop
    inc bc
    cp a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    cp $00
    inc a
    add b
    add b
    ld hl, sp+$78
    add c
    add c
    add b
    cp a
    inc b
    and b
    ld de, $409f
    ld e, a
    ld b, b
    ld c, a
    ldh [$a7], a
    ldh [$e7], a
    ld b, c
    ld b, c
    ld b, a
    add $3f
    ld hl, sp+$27
    and h
    daa
    db $e4
    cpl
    add sp, $2f
    xor [hl]
    add hl, sp
    ld a, a
    ret nz

    jp Jump_036_43c0


    ldh [rNR44], a
    ldh a, [rNR11]
    db $fc
    inc e
    db $e4
    inc a
    ld a, [$f726]
    dec e
    rra
    or b
    rra
    ret nc

    rra
    ldh a, [$1f]

jr_036_645a:
    ldh a, [$1f]
    ret c

    ccf
    jr z, jr_036_64bf

    ld a, b
    rst $38
    sub b
    inc b
    jr nz, @+$0e

    sbc a
    sbc a
    adc h
    cp a
    di
    ld a, a
    rst $38
    ld c, $04
    nop
    inc b
    jr nz, jr_036_645a

    ldh a, [$f0]
    sbc a
    rst $28
    rst $08
    ld a, d
    di
    ccf
    rst $38
    inc c
    inc b
    nop
    nop
    ld h, a
    cp $ff
    call c, $70df
    ld a, a
    ldh [rIE], a
    add b
    inc b
    nop
    inc bc
    inc c
    rst $38
    inc bc
    inc b
    jr nz, jr_036_649c

    inc b
    xor a
    dec bc
    ld b, b
    ld [bc], a
    dec c
    rst $38
    nop
    rst $38

jr_036_649c:
    ld bc, $07fe
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh [$3f], a
    ldh [$3f], a
    rst $38
    nop
    rst $30
    ldh a, [rTIMA]
    db $f4
    ld bc, $08cd
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    rst $38
    dec c
    nop
    ld bc, $fc03
    inc b

jr_036_64bf:
    ld hl, sp-$65
    pop hl
    xor a
    ld b, d
    sbc $24
    ld a, l
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, c
    ld e, $fb
    add [hl]
    rst $38
    ld b, d
    rst $38
    inc h
    cp $ff
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $08
    ld b, b
    rst $18
    add b
    cp a
    add b
    rst $38
    add b
    dec c
    rra
    nop
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    add sp, -$40
    ld e, a
    ret nz

    ld a, a
    dec c
    ld c, d
    nop
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$3f], a
    ldh [$2f], a
    nop
    cp $0d
    rst $38
    ldh a, [$0d]
    ld [hl], d
    ld bc, $07f8
    rst $30
    jr @+$01

    xor h
    rst $38
    sbc b
    cp e
    ld d, b
    ld [hl], a
    ld h, c
    ld l, l
    ld b, e
    ld e, d
    ld h, c
    ld a, a
    ret nc

    rst $38
    ld a, b
    ld l, [hl]
    dec [hl]
    db $fd
    add hl, de
    ld sp, hl
    ld a, [bc]
    ld a, [$be86]
    jp nz, $86de

    xor $0b
    rst $28
    ld e, $77
    nop
    ld a, a
    nop
    ld a, a
    dec c
    rst $38
    ldh a, [$30]
    dec c
    ld b, e
    nop
    rst $38
    nop
    rst $38
    dec c
    rlca
    nop
    rrca
    add sp, $0d
    ld e, d
    nop
    rra
    ldh a, [$0d]
    rlca
    nop
    dec c
    or a
    nop
    dec c
    inc c
    nop
    ldh [$3f], a
    db $fc
    rra
    db $fc
    rlca
    db $fc
    rlca
    nop
    rst $38
    nop
    cp $0d

jr_036_6560:
    jp nc, Boot

    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $58f9
    ld e, l
    add b
    or a
    add b
    and [hl]
    ret nc

    rst $38
    jr nz, jr_036_6560

    jr nz, @-$13

    ldh [$e6], a
    db $10
    push af
    ld a, [de]
    cp e
    ld bc, $03ef
    cpl
    add hl, bc
    rst $38
    ld [$0b3b], sp
    db $db
    rrca
    ld a, h
    dec bc
    call c, $720d
    ld [bc], a
    add b
    rst $38
    ld b, b
    rst $38
    ld b, a

jr_036_6592:
    rst $38
    sbc e
    sbc h
    rst $28
    ld [hl], b
    dec c
    rlca
    nop
    ccf
    ld hl, sp+$3f
    ldh [$1f], a
    ret nc

    rst $18
    ldh a, [rIE]
    jr nc, @+$01

    ld [$03ff], sp
    db $fd
    ld c, $f7
    jr @-$01

    ld hl, $4cf5
    cpl
    jr jr_036_6592

    or b
    rst $38
    and b
    cp $ff
    db $e3
    inc e
    rst $38
    nop
    sbc a
    and b
    and b
    ccf
    ld sp, hl
    add hl, de
    or $17
    ldh a, [rNR13]
    sub b
    ld [hl], c
    adc b
    ld l, b
    sbc h
    ld a, h
    inc hl
    db $e3
    ld b, b
    ld b, e
    add b
    add e
    jr nc, jr_036_6607

    ld [$1989], sp
    cp $04
    rst $38
    ld [bc], a
    ccf
    add c
    sub c
    ld b, c
    call $ef21
    dec l
    rst $28
    ld [hl-], a
    cp $f8
    rlca
    ld bc, $7bff
    cp $87
    or h
    rlca
    call z, $fa03
    ld b, a
    pop hl
    ld e, [hl]
    ld c, [hl]
    ccf
    call nz, $d0c9
    rst $10
    ld a, [de]
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    add b
    rst $38

jr_036_6607:
    ret nz

    dec c
    ld c, e
    ld bc, $720d
    dec b
    ldh a, [rNR13]
    ld hl, sp+$0b
    db $fc
    inc b
    ld hl, sp+$0b
    ld hl, sp+$09
    ld hl, sp+$08
    ld hl, sp+$0b
    ldh a, [rNR11]
    inc d
    call nc, $d313
    jr nc, @-$0d

    jr z, jr_036_668e

    ld b, [hl]
    ld b, [hl]
    ld b, a
    push bc
    ld b, a
    call z, $fc27
    inc hl
    scf
    jp nz, Jump_036_59e6

    ei
    ld d, l
    rst $30
    ld d, l
    ld d, l
    ld [c], a
    or d
    ld a, [c]
    ld a, [de]
    cp $0c
    ret nc

    ret nc

    ld h, c
    ld h, c
    ld b, a
    ld b, [hl]
    ccf
    ld a, b
    ccf
    jr nz, jr_036_6688

    and b
    rra
    ret nc

    ccf
    sub b
    dec c
    add h
    jr jr_036_665f

    jp nc, $011f

    ldh a, [rNR12]
    ld_long a, $ff10
    rrca
    dec c
    add [hl]
    ld d, $27

jr_036_665f:
    ld l, h
    and e
    ld [hl], $c1
    rst $00
    pop hl
    rst $28
    db $e3
    dec h
    rst $20
    ld [hl-], a
    rst $38
    inc e
    rst $38
    nop
    cp $02
    rst $38
    ld bc, $d20d
    add hl, de
    jr nz, @+$01

    dec c
    xor d
    ld [bc], a
    dec c
    db $d3
    rra
    inc b
    ld b, b
    ld [bc], a
    inc d
    rst $38
    nop
    rst $38
    ld c, $ff
    add hl, de
    rst $38

jr_036_6688:
    dec d
    rst $38
    ld [hl], $e8
    rst $18
    rst $28

jr_036_668e:
    cp a
    rst $38
    cp a
    rst $38
    inc d
    rst $38
    ldh a, [$61]
    rst $38
    sub b
    rst $38
    dec sp
    db $fc
    xor h
    rst $38
    db $d3
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    inc b
    rst $38
    or $cd
    ld c, l
    push hl
    push hl
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    add b
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $18
    ld h, a
    ld h, h
    ld c, a
    ld c, a
    adc b
    adc b
    sub c
    sub c
    inc bc
    inc bc
    inc d
    db $10
    ld bc, $ff0d
    inc de
    rst $38
    cp b
    ld a, [hl]
    ld l, e
    rst $38
    sub a
    rst $38
    adc a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    ld d, b
    rst $38
    ret c

    cpl
    or $ef
    ld a, [$faff]
    cp $5e
    ld hl, sp+$0f
    ld hl, sp+$17
    ld hl, sp+$17
    ldh a, [$2f]
    inc d
    ld l, b
    ld bc, $fc1f
    sbc h
    ld hl, sp-$18
    db $fc
    ld e, h
    ldh [$60], a
    ret nz

    ld b, b
    or b
    or b
    ldh [$e0], a
    ld b, b
    ret nz

    inc d
    db $fc
    ldh a, [$0c]
    inc c
    ld e, $12
    dec a
    inc hl
    ld a, [hl]
    ld e, b
    ld l, [hl]
    ld e, h
    ld a, a
    ld l, e
    inc d
    db $fc
    ldh a, [$60]
    ld h, b
    ldh a, [$90]
    ld a, b
    adc b
    db $fc
    inc [hl]
    db $ec
    ld [hl], h
    db $fc
    xor h
    ld a, [hl]
    ld [hl], d
    ld a, $2f
    ld a, [hl]
    ld [hl], l
    ld c, $0d
    ld b, $05
    ld a, [de]
    dec de
    ld c, $0f
    inc b
    rlca
    rst $38
    db $f4
    ccf
    ldh [$3f], a
    ret nc

    ccf
    ret nc

    rra
    add sp, $14
    cp b
    ld bc, $f8f0
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $0fff
    rst $38
    ld de, $75ff
    rst $38
    sbc e
    rst $30
    rst $18
    add b
    add b
    ld bc, $3101
    ld sp, $6161
    ldh [$a0], a
    ret nz

    ld b, b
    ret nc

    ret nc

    ldh [$60], a
    rst $38
    sbc h
    rst $38
    rlca
    rst $38
    inc bc
    ld [hl], c
    adc a
    adc a
    rst $38
    ld a, d
    ld [hl], l
    dec l

Jump_036_6765:
    scf
    ccf
    scf
    cp $72
    rst $38
    pop bc
    rst $38
    add c
    dec e
    db $e3
    ld [c], a
    cp $bc
    ld e, h
    ld l, b
    ret c

    ld hl, sp-$28
    ld [bc], a
    inc bc
    ld bc, $1901
    add hl, de
    dec c

jr_036_677f:
    dec c
    rrca
    dec bc
    rlca
    dec b
    rla
    rla
    rrca
    dec c
    ccf
    ldh [rIE], a
    ret nz

    inc d
    ld d, b
    ld bc, $ff10
    ld e, h
    rst $38
    or d
    rst $18
    or $ef
    cp a
    rst $28
    ld a, [hl]
    db $fc
    sbc a
    db $fc
    xor a
    cp $73
    rst $38
    dec b
    rst $38
    ld [$18f7], sp
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, h
    call nz, $ec6c
    db $fc
    or h
    cp h
    ld h, h
    cp $42
    ccf
    ccf
    dec e
    rla
    inc e
    rra
    inc e
    jr jr_036_67da

    inc e
    rra
    rra
    rra
    rla
    rrca
    ld [$f8f8], sp
    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [rSVBK]
    jr nc, jr_036_677f

    ld [hl], b
    ldh a, [$f0]
    ldh a, [$d0]

jr_036_67d4:
    ldh [rNR41], a
    rrca
    add hl, bc
    rlca
    inc b

jr_036_67da:
    ld b, $05
    ld b, h
    ld b, a
    ld l, h
    ld l, a
    ld a, a
    ld e, e
    ld a, e
    ld c, h
    rst $38
    add h
    rst $28
    ld a, [$fcef]
    ld a, a
    ld a, [c]
    ld a, a
    ld [$9cff], a
    rst $38
    ld b, b
    rst $38
    jr nz, jr_036_67d4

jr_036_67f5:
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $30
    jr jr_036_67f5

    rrca
    db $fc
    rlca
    rst $38
    inc bc
    cp $3b
    cp $47
    cp [hl]
    jp nz, $82fe

    rst $38
    add c
    db $fc
    add e
    ld a, b

Call_036_680f:
    rst $00
    jr nz, @+$01

    rra
    rst $38
    ld a, $e3
    rlca
    inc b
    add e
    add e
    ret nz

    ret nz

    and b
    ldh [rNR32], a
    db $fc
    adc [hl]
    cp d
    rrca
    ld a, c
    rra
    ldh a, [$c0]
    ld b, b
    add d
    add d
    rlca
    rlca
    ld a, [bc]
    rrca
    ld [hl], b
    ld a, a
    ld [c], a
    cp e
    pop hl
    dec a
    ldh a, [$1f]
    ei
    add [hl]
    rst $38
    add d
    rst $38
    ld [bc], a
    ld a, [hl]
    add e
    inc a
    rst $00
    add hl, bc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$71
    inc d
    add b
    db $10
    rst $18
    jr nc, jr_036_688b

    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    cp b
    rst $38
    call nz, $a0ff
    rst $28
    ld a, [$b7ff]
    rst $38
    add hl, de
    rst $38
    ld bc, $01ff
    inc d
    stop
    inc a
    rst $20
    rst $38
    ld a, a
    and a
    ret c

    ld d, a
    pop af
    rst $38
    ld l, d
    rst $38
    xor [hl]
    rst $38
    ld de, $00ff
    ccf
    ldh [$3f], a
    ldh [$bf], a
    ld h, b
    rst $38
    jr nz, @+$01

    inc d
    reti


    stop
    rst $38
    nop
    ld hl, sp+$0f
    ld sp, hl
    rrca
    ei
    inc c
    rst $38
    add hl, bc

jr_036_688b:
    rst $38
    ld b, $ff
    ld [bc], a
    inc d
    ld [$7910], a
    adc $ff
    db $fc
    swap a
    push de
    rra
    rst $38
    xor l
    rst $38
    db $eb
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $28
    cp [hl]
    rst $38
    jp c, $30ff

    inc d
    db $10
    ld bc, $ff00
    nop
    ld b, b
    ld [bc], a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ldh a, [rSB]
    rst $38
    ld [bc], a
    cp $05
    ld a, [c]
    nop
    db $fd
    dec bc
    db $fd
    add hl, bc
    rst $38
    nop
    ld a, e
    ld a, h
    ld c, a
    ld l, $3f
    or b
    ld a, a
    ld b, b
    rst $38
    add b
    ld a, [bc]
    ld a, [de]
    ld bc, $ff0a
    ld a, [c]
    ld a, [bc]
    ld bc, $fe01
    rla
    add sp, $2f
    ld a, [bc]
    jr nz, jr_036_68e5

    nop
    rst $38
    ret nc

    cpl
    add sp, -$01
    nop

jr_036_68e5:
    cp l
    ld a, h
    push hl
    jp hl


    ld sp, hl
    ld a, [de]
    db $fc
    dec b
    cp $02
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, [bc]
    jr nz, jr_036_68f9

    add b
    rst $38
    ld b, b

jr_036_68f9:
    sbc a
    nop

jr_036_68fb:
    ld a, a
    and b
    ld a, a
    jr nz, jr_036_68fb

jr_036_6900:
    rrca
    ei
    dec bc
    ei
    dec bc
    db $fd
    dec b
    db $fd
    ld a, [bc]
    ld c, c
    nop
    ld bc, $00ff
    rst $38
    ret nz

jr_036_6910:
    rst $38
    ldh [$df], a
    sbc $d1
    ret


    rst $08
    ret nc

    db $e3
    db $e4
    ld a, b
    ld a, b
    rst $38
    rst $38
    db $e3
    scf
    rst $20
    db $ec
    sbc a
    cp b
    rst $28
    ldh a, [$f7]
    jr jr_036_6900

    jr c, jr_036_696a

    jr nz, @-$03

    call nz, $d88f
    rst $08
    ld l, [hl]
    di

jr_036_6933:
    ld a, [hl-]
    rst $28
    rra
    rst $18
    jr nc, jr_036_6910

    jr c, jr_036_6933

    ld [$47bf], sp
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    rst $30
    rla
    daa
    rst $20
    rla
    adc [hl]
    ld c, [hl]
    dec a
    dec a
    rst $38
    cp $bf
    ldh [$bf], a
    and b
    cp a
    and b
    ld a, a
    ld b, b
    ld a, [bc]
    jr jr_036_695a

    ld a, [bc]

jr_036_695a:
    ld hl, $0a07
    add $01
    ld a, [bc]
    rst $38
    ldh a, [$3e]
    rst $00
    ld [hl], l
    adc h
    jp hl


    inc c
    reti


    inc c

jr_036_696a:
    cp e
    daa
    dec a
    rst $00
    rst $30
    jp z, $fded

    jr nc, @+$01

    db $eb
    ld a, [hl]
    xor $b4
    db $dd
    cp c
    jp z, $fa49

    jr nc, jr_036_69f0

    sub b
    ldh a, [$7f]
    jr @+$01

    xor a
    db $fc
    rst $28
    ld e, d
    ld [hl], a
    ld a, [hl-]
    and a
    dec h
    cp a
    add hl, de
    dec e
    ld [de], a
    rra
    rst $38
    ld hl, sp-$39
    ld e, h
    ld h, e
    ld l, $61
    scf
    ld h, c
    cp e
    ret


    ld a, c
    rst $00
    sbc $a7
    ld l, [hl]
    ld a, [bc]
    jr nc, jr_036_69ad

    ld a, [bc]
    jp $0a04


    ld sp, $5f07
    ld d, b
    xor [hl]

jr_036_69ad:
    or c
    and l
    or e
    rst $28
    ld a, b
    sub $5d
    push de
    ld e, [hl]
    db $eb
    ld [hl], $65
    ld l, e
    sub b
    cp h
    ret nc

    jp nc, Jump_000_2cec

    di
    dec de
    ld d, b
    cp [hl]
    ld a, a
    rst $28
    ld hl, sp+$04
    sub c
    db $ed
    inc de
    ld a, d
    ld d, $97
    ld l, a
    ld l, c
    sbc a
    or b
    inc d
    ei
    db $fd
    xor $3f
    ld b, b
    inc de
    ld l, a
    push af
    dec d
    db $eb
    dec de
    ld c, e
    sbc d
    rst $28
    inc a
    rst $10
    ld [hl], h
    ld d, a
    db $f4
    xor a
    ret c

    ld c, a
    xor b
    ld a, [bc]
    db $10
    rra
    nop
    ld [bc], a
    db $fd

jr_036_69f0:
    ld b, $ff
    inc b
    db $fd
    ld b, $ff
    ld [bc], a
    cp $03
    rst $38
    ld bc, $106f
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    ld bc, $13ed
    ld [hl], d
    adc l
    ld d, c
    inc hl
    add a

Jump_036_6a0a:
    cp [hl]
    ld h, [hl]
    cp $d8
    dec sp
    db $fc
    inc bc
    rst $38
    nop
    cp a
    ld b, b
    ld e, d
    push af
    inc h
    rst $18
    add l
    sub e
    call Call_000_37fe
    cp b
    ld a, a
    add b
    cp $01
    ei
    dec b
    or h
    ld e, a
    ld c, c
    rst $30
    ld b, e
    sub e
    db $ed
    inc d
    db $fd
    ld bc, $807f
    ld a, a
    nop
    ld l, a
    sub b
    adc a
    ld [hl], b
    inc e
    db $e3
    nop
    ld e, [hl]
    ld a, [bc]
    ld d, d
    inc b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, [bc]
    jp c, $ff10

    nop
    rst $38
    inc bc
    cp $04
    db $fd
    add hl, bc
    rst $38
    ld c, $0a
    ld c, [hl]
    ld [bc], a
    pop bc
    ld c, l
    sbc c
    rst $20
    db $e3
    sbc $df
    ld e, h
    rst $38
    ldh [$0a], a
    ld e, $02
    pop af
    db $76
    rst $28
    cpl
    ld hl, sp+$18
    cp $06
    ld a, [bc]
    ld [hl+], a
    inc d
    rra
    db $dd
    xor $eb
    ld a, $33
    rst $38
    pop bc
    ld a, [bc]
    ld [hl+], a
    inc d
    ret nz

    ld a, [$d727]
    ld a, a
    add h
    ccf
    jp Jump_036_7c0d


    sbc $f2
    rst $38
    dec sp
    rst $38
    ld b, $0a
    ld e, $05
    ld a, [bc]
    push de
    db $10
    ret nz

jr_036_6a8c:
    rst $38
    nop
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    dec bc
    dec b
    ld [bc], a
    nop
    inc bc
    ld bc, $23fe
    db $fc
    ld l, a
    sub b
    rst $38
    nop
    ld l, a
    ld [bc], a
    nop
    inc bc
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh [$3f], a
    ldh [rSC], a
    nop
    rrca
    inc c
    ld [bc], a
    rst $38
    db $fc
    ld bc, $0dff
    or $1e
    db $f4
    inc e
    ld [c], a
    cpl
    pop bc
    ld c, a
    pop bc
    ld c, a
    ret nz

    rst $18
    ld b, b
    ld d, a
    nop
    ld e, l
    nop
    db $db
    nop
    di
    nop
    or l
    jr c, jr_036_6a8c

    ld a, h
    rst $08
    ld a, [hl]
    di
    ld a, a
    db $db
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    call nz, $afbb
    or c
    rst $38
    rlca
    rst $10
    rrca
    ld e, c
    sbc a
    push de
    ld [bc], a
    nop
    add hl, bc
    add b
    rst $38
    ld b, b
    ld [bc], a
    ld e, [hl]
    rrca
    nop
    ld bc, $03fe
    cp $03
    rst $38
    rrca
    rst $38
    add hl, bc
    db $fd
    rlca
    rst $38
    rlca
    nop

Call_036_6aff:
    rlca
    add b
    add l
    add b
    add c
    db $e3
    db $e3
    rst $10
    push af
    sbc a
    ld a, [$f763]
    ld [hl], a
    push de
    ld a, a
    pop bc
    ccf
    db $f4
    ld a, a
    ret nc

    rst $38
    and [hl]
    ei
    cp $f9
    adc $d5
    ld a, a
    ld sp, hl
    ccf
    rst $38
    ld [hl], b
    rst $38
    ld c, c
    rst $38
    sbc d
    cp $43
    ld a, [$e737]
    cp a
    xor $bb
    rst $38
    dec e
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    xor b
    rst $38
    jr c, @+$01

    inc h
    rst $28
    sub [hl]
    cpl
    push af
    ld [bc], a
    nop
    rlca
    ld h, b
    sbc a
    db $f4
    rra
    db $fc
    cp $0b
    db $fd
    dec bc
    db $fd
    rla
    ld hl, sp+$17
    db $fd
    dec de
    cp $1b
    rst $30
    ld e, $f7
    ld l, $be
    rst $30
    ld a, a
    sbc h
    ld l, e
    sbc h
    sub h
    rst $38
    rst $30
    ld h, e
    rst $38
    ld a, $d5
    ld a, a
    rst $38
    db $dd
    db $fd
    xor [hl]
    cp $5f
    db $fc
    ld d, a
    cp $87
    ld sp, hl
    ld c, a
    cp e
    ld l, [hl]
    rst $38
    inc a
    rst $38
    and b
    rst $38
    add d
    rst $38
    ld [hl+], a
    rst $38
    sub d
    cpl
    push af
    rst $18
    push af
    rst $08
    ld [hl], h
    rst $18
    ld l, b
    cp a
    ret z

    rst $28
    or $ff
    dec h
    rst $38
    db $ec
    rst $38
    ld d, d
    rst $38
    or $ff
    db $fc
    ld [bc], a
    nop
    nop
    rlca
    ld a, h
    adc a
    xor b
    adc a
    adc b
    rst $38
    ld [hl], b
    ld [bc], a
    nop
    inc b
    ei
    ld c, [hl]
    db $fd
    daa
    ld sp, hl
    rla
    db $e3
    rlca
    db $eb
    dec e
    db $fd
    ld a, [bc]
    rst $38
    ld [$0cff], sp
    rst $38
    db $e3
    rst $38
    ld e, l
    rst $38
    ld b, c
    rst $38
    ld [hl+], a
    rst $38
    inc e
    ld [bc], a
    ld [hl], $01
    ld b, b
    rst $38
    and c
    rst $38
    ld b, [hl]
    cp $0b
    cp $0f
    rst $38
    rlca
    ld [bc], a
    nop
    inc bc
    adc h
    rst $38
    ld d, d
    rst $38
    sub $bf
    call nc, $f8ff
    ld [bc], a
    ld b, b
    rrca
    inc d
    jr @+$01

    ld h, $ff
    add hl, sp
    rst $28
    dec a
    ei
    dec e
    rst $38
    ld b, $02
    nop
    ld bc, $ff30
    ret z

    rst $38
    jr c, @+$01

    ld a, b
    cp a
    ld h, b
    rst $38
    ret nz

    ld [bc], a
    ld b, b
    rrca
    inc e
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld bc, $ff03
    ld [bc], a
    rst $38
    ld [bc], a
    cp $03
    cp $03
    db $fc
    add hl, bc
    rst $38
    db $f4
    add b
    ld a, a
    ret nz

    sbc a
    nop
    ld a, a
    ld h, $b9
    rra
    add hl, bc
    nop
    inc bc
    ld bc, $03fe
    ld sp, hl
    nop
    cp $64
    sbc l
    ld hl, sp+$09
    nop
    ld bc, $ffc0
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    add hl, bc
    rst $38
    rst $38
    inc bc
    add hl, bc
    rst $38
    ld hl, sp+$01
    add hl, bc
    ld [hl], b
    ld [bc], a
    cp $07
    ld hl, sp+$0f
    pop af
    ccf
    pop bc
    ld a, a
    db $fc
    ld e, a
    or b
    ld a, a
    ret nz

    ld a, h
    jp $877b


    db $f4
    adc a
    add sp, $16
    ld hl, sp+$1d
    ldh a, [$3f]
    ld a, [$fe0d]
    inc bc
    ld a, $c3
    sbc $e1
    cpl
    pop af
    rla
    ld l, b
    rra
    cp b
    rrca
    rst $38
    add b
    add hl, bc
    and b
    ld [bc], a
    ld a, a
    ldh [$1f], a
    ldh a, [$8f]
    db $fc
    add e
    cp $09
    ld e, [hl]
    rrca
    dec b
    add hl, bc
    ld a, [de]
    nop
    db $fd
    rlca
    cp $07
    add b
    rst $38
    nop
    rst $38
    add [hl]
    rst $38
    ld bc, $0009
    ld bc, $ff0f
    db $10
    rst $18
    dec e
    pop af
    dec d
    ld sp, hl
    ld c, $f8
    rlca
    db $fc
    add e
    rst $38
    ld b, b
    rst $38
    jp nz, Jump_036_61ff

    db $fd
    cp b
    adc a
    xor b
    sbc a
    ld [hl], b
    rra
    ldh [$3f], a
    pop bc
    rst $38
    ld [bc], a
    rst $38
    ld b, e
    rst $38
    add [hl]
    cp a
    add hl, bc
    sub $00
    ld h, c
    rst $38
    add hl, bc
    ret nc

    nop
    nop
    rst $38
    ldh a, [rIE]
    ld [$09fb], sp
    inc h
    nop
    add hl, bc
    and h
    ld bc, $7fc0
    ret nz

    cp a
    ldh [$7f], a
    ldh [$fe], a
    ld [bc], a
    db $fc
    inc b
    db $fd
    dec b
    cp $02
    rst $38
    inc bc
    db $fd
    dec b
    db $fc
    inc b
    db $fc
    inc b
    nop
    cp a
    add hl, bc
    rst $38
    pop af
    ld a, [hl]
    ld bc, $417f
    ld a, l

jr_036_6cde:
    add c
    and c
    and e
    and e

jr_036_6ce2:
    jr jr_036_6ce2

    inc b
    add hl, bc
    ld d, $00
    add hl, bc
    ld [hl], b
    ld [bc], a
    cp a
    add d
    sub a
    jr @+$81

    jr nz, jr_036_6cfb

    ld b, [hl]
    nop
    add hl, bc
    and b
    ld [bc], a
    db $fd
    ld b, c
    jp hl


    nop

jr_036_6cfb:
    db $fd
    add hl, bc
    ld [hl-], a
    ld [de], a
    add b
    cp $82
    cp [hl]
    add c
    add l
    push bc
    push bc

jr_036_6d07:
    ld a, a
    ld b, b
    ccf
    jr nz, @-$3f

    and b
    ld a, a
    ld b, b
    rst $38

jr_036_6d10:
    ret nz

    cp a
    and b
    ccf
    jr nz, jr_036_6d55

    jr nz, jr_036_6d10

    inc c
    ld sp, hl
    dec c
    ld sp, hl
    rrca
    ld sp, hl
    dec bc
    db $fc
    rrca
    db $fc
    dec b
    cp $06
    rst $38
    inc bc
    db $fc
    db $fc
    nop
    nop
    db $10
    sub e
    jr nz, jr_036_6cde

    and b
    cp a
    and b
    cp a
    jr nc, jr_036_6d74

    jr nz, jr_036_6d76

    rst $38
    db $fd
    or $bf
    ld e, [hl]
    ld d, a
    ld a, [bc]
    rst $28
    add hl, bc
    ld b, h
    db $10
    ld [bc], a
    cp $82
    cp $ff
    cp a
    ld l, a
    db $fd
    ld a, d
    ld [$f750], a
    add hl, bc
    ld d, h
    db $10
    ld b, b
    ld a, a
    ld b, c
    ld a, a

jr_036_6d55:
    ccf
    ccf
    nop
    nop
    ld [$04c9], sp
    push af
    dec b
    db $fd
    dec b
    db $fd
    inc c
    db $fc
    inc b
    db $fc
    rra
    jr nc, jr_036_6d07

    or b
    sbc a
    ldh a, [$9f]
    ret nc

    ccf
    ldh a, [$3f]
    and b
    ld a, a
    ld h, b
    rst $38

jr_036_6d74:
    ret nz

    add hl, bc

jr_036_6d76:
    nop
    inc c
    jp hl


    rst $38
    ldh a, [$3f]
    ld hl, sp+$1b
    rst $20
    ccf
    cp $2b
    rst $38
    ld de, $0009
    nop
    ld [bc], a
    ld a, [$de06]
    add hl, sp
    ld a, a
    rst $28
    db $fd
    ld a, a
    ld [$50ff], a
    add hl, bc
    dec b
    db $10
    ld b, b
    ld e, a
    ld h, b
    ld a, e
    sbc h
    cp $f7
    cp a
    cp $57
    rst $38
    ld a, [bc]
    add hl, bc
    push de
    nop
    sub a
    rst $38
    rrca
    db $fc
    rra
    ret c

jr_036_6dab:
    rst $20
    db $fc
    ld a, a
    call nc, $88ff
    add hl, bc
    nop
    rrca
    ld bc, $0240
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, $df
    ld b, b
    rst $38
    jr nc, @+$01

    jr jr_036_6dab

    inc d
    rst $18
    ld [$75bf], a
    db $fc
    dec e

jr_036_6dcb:
    ld [$0500], sp
    ld b, b
    rst $38
    jr nz, @+$01

    jr nc, jr_036_6dcb

    sub b
    ld [$0f00], sp
    rrca
    ld [$0900], sp
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld c, $fb
    ld d, $f5
    cpl
    rst $28
    ld e, a
    ei
    sbc h
    ld l, a
    or d
    ei
    xor $d9
    ei
    rst $30
    dec l
    ei
    ld d, $fc
    dec bc
    cp $9d
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld l, a
    ld c, b
    rst $38
    ld c, h
    cp e
    ld l, d
    ei
    cp [hl]
    rst $18
    cp e
    ld sp, hl
    ld e, l
    xor c
    dec de
    jp Jump_000_0811


    nop
    ld bc, $ffc0
    and b
    rst $38
    ld d, b
    rst $38
    add sp, -$01
    inc d
    ei
    ld c, [hl]
    ld [$0f5e], sp
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    cp $04
    cp $05
    rst $38
    inc b
    db $fd
    ld b, $ff
    ld b, a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    ld [$00d6], sp
    rst $28
    rra
    rst $28
    rra
    pop af
    rst $30
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld [$00e4], sp
    rst $38
    rst $38
    rst $10
    adc l
    rst $30
    ld c, l
    ld a, a
    dec b
    db $db
    pop hl
    ld l, [hl]
    ldh a, [$de]
    or c
    push af
    jp z, $f0ed

    ld [hl], l
    rst $08
    cp l
    rst $20
    cp d
    rst $20
    jr c, jr_036_6ed7

    ld e, b
    push de
    ld d, b
    rst $18
    ld d, b
    ld e, a
    and b
    cp a
    ld [$0100], sp
    add b
    ld [$1714], sp
    ld [bc], a
    cp $03
    rst $38
    ld bc, $0008
    ld b, $d7
    ccf
    rrca
    jp $e13f


    cp a
    and b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    ld [$00e6], sp
    db $fc
    db $fc
    db $fd
    ld a, h
    push bc
    dec a
    db $f4
    inc c
    cp $02
    db $dd
    inc bc
    ld a, [$32f7]
    ld a, [hl-]
    sbc [hl]
    rra
    reti


    sbc c
    call nc, $a194
    ld hl, $5c5c
    db $eb
    rst $30
    and c
    rst $38
    ld d, c
    rst $38
    ld d, e
    ld a, [hl]
    sub e
    ld a, [$f497]
    cp a
    ld hl, sp-$41
    ldh [$7f], a
    ret nz

    ld [$0f00], sp
    dec c
    ld sp, hl
    ld [hl+], a
    cp $23
    db $fd
    inc hl
    db $fc
    inc de
    ld hl, sp+$0f
    rst $38
    rlca
    ld [$0000], sp
    xor $21
    ld [hl], e
    sub l
    adc l
    db $fd
    ld h, e
    rst $28
    inc e
    db $fd
    cp a
    ei

jr_036_6ed7:
    rst $08
    ld c, b
    ld a, a
    rst $30
    ret


    push af
    ld b, c
    reti


Jump_036_6edf:
    ld h, e
    ld a, e
    and e
    or e
    ld h, [hl]
    and $ee
    ld [$33ff], a
    rst $38
    nop
    ld a, a
    call c, $bebb
    ld d, a
    ld d, [hl]
    push af
    rst $30
    ld a, a
    ld e, [hl]
    rst $38
    ret nz

    cp a
    ld h, b
    cp a
    ldh [$08], a
    nop
    rrca
    dec c
    cp $0f
    rst $38
    rra
    ld hl, sp+$13
    ld a, [c]
    ld l, $ef
    ccf
    rst $38
    jr nc, jr_036_6f14

    nop
    nop
    jp c, Jump_036_5dfb

    db $dd
    rst $20
    rst $28

jr_036_6f14:
    rst $20
    or d
    ei
    ld e, $ff
    ld b, $08
    db $10
    ld [de], a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$0700], sp
    ld b, b
    ld [$0f00], sp
    dec bc
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    daa
    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    ld [bc], a
    nop
    add hl, bc
    inc bc
    rst $38
    inc bc
    ld [bc], a
    nop
    dec bc
    add b
    ld [bc], a
    nop
    rrca
    inc b
    ld bc, $03fe
    db $fd
    ld c, $fb
    inc c
    rst $38
    dec de
    ld [bc], a
    ld [hl], h
    nop
    rst $38
    ld bc, $c3ff
    rst $38
    ld [hl+], a
    cp $17
    ld a, a
    dec d
    ld a, l
    rla
    rst $38
    ret nz

    rst $38
    add b
    ld [bc], a
    sub d
    ld bc, $ffc0
    ret nz

    ld a, a
    pop hl
    ld a, a
    db $e3
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    cp $0f
    db $fd
    ld e, $fb
    ld a, h
    rst $30
    ei
    call $fffe
    add b
    ld a, a
    ldh [$bf], a
    ret nc

    rst $38
    db $10
    rst $38
    ld h, b
    cp a
    ret nc

    ld a, a
    sub b
    rst $38
    ld h, b
    ld [bc], a
    ld [hl], h
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc b
    ld [bc], a
    nop
    ld [bc], a
    rst $30
    dec e
    jp c, Jump_000_21df

    rst $28
    add a
    rst $38
    ld sp, hl
    ld a, c
    di
    inc de
    cp $1f
    cp $07
    ld a, a
    sub a
    cp a
    call z, $ceb9
    cp a
    sub $6f
    pop af
    ld a, e
    db $fd
    rst $20
    cp [hl]
    push hl
    or b
    rst $38
    db $e3
    rst $38
    ld h, a
    ld a, a
    daa
    rst $18
    ccf
    cp $1f
    rst $18
    rra
    cp $1f
    db $fd
    ccf
    sbc [hl]
    db $fd
    rst $20
    rst $38
    dec e
    cp $e7
    rst $38
    dec de
    db $fc
    db $ed
    cp $17
    ei
    ei
    cp $ff
    ret nz

    ld a, a
    and b
    cp a
    ld [bc], a
    dec a
    nop
    ld [bc], a
    sub e
    nop
    ld [bc], a
    rst $38
    rst $38
    nop
    db $fd
    rrca
    ei
    ld c, $fb
    ld c, $ff
    inc c
    ld [bc], a
    nop

jr_036_6fed:
    inc bc
    ld [hl], b
    rst $28
    jr nc, jr_036_6fed

    db $10
    rst $38
    rrca
    ld hl, sp+$08
    ei
    inc c
    pop af
    db $10
    and $38
    rst $08
    ret nz

    cp [hl]
    ld a, a
    ld a, e
    rst $38
    db $fc
    cp a
    rst $38
    rra
    ccf
    rra
    rst $18
    rra
    ld a, a
    cp [hl]
    ld a, a
    ld a, [hl]
    cpl
    db $f4
    rst $38
    ld hl, sp-$41
    ret nc

    ld [bc], a
    cp [hl]
    ld bc, $6102
    rrca
    rlca
    ld b, $fd
    dec b
    ld [bc], a
    inc [hl]
    ld de, $ff08
    nop
    xor a
    rst $18
    or b
    ld a, [bc]
    ei
    ldh [rIE], a
    db $fc
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    ld h, a
    sub b
    ei
    nop
    ld a, l
    ld bc, $07bf
    rst $38
    ld [bc], a
    xor b
    ld [de], a
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rSC], a
    ld a, $0b
    ld [bc], a
    rst $38
    rst $38
    dec d
    ld bc, $0002
    dec bc
    ldh a, [rSC]
    nop
    rrca
    jr z, jr_036_705d

jr_036_705d:
    rst $38
    nop
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $25
    rrca
    ld de, $fe01
    rlca
    ld sp, hl
    rra
    ld [c], a
    ccf
    call nz, $907f
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $08
    db $fc
    add e
    cp $01
    ld b, $24
    inc bc
    ld b, $24
    rlca
    add b
    ld a, a
    ret nz

    ld a, a
    ldh [rTMA], a
    inc h
    rrca
    nop
    ld c, $f9
    rla
    ld a, [c]
    add hl, hl
    call z, $de5e
    ld a, a
    cp [hl]
    rst $28
    ei
    rst $10
    rst $38
    ld bc, $07ff
    ld hl, sp+$1f
    ldh [$bf], a
    ld b, b
    rst $38
    ld b, a
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    inc d
    rst $38
    sub h
    rst $30
    ld [$2406], sp
    add hl, bc
    db $10
    rst $38
    db $10
    rst $18
    ccf
    pop af
    ld l, $ff
    ld de, $1fff
    cp $0f
    ld hl, sp-$79
    db $fc
    add e
    cp $83
    cp $ff
    ldh [rIE], a
    ldh a, [$ef]
    ld [$04f7], sp
    rst $38
    inc e
    rst $20
    inc l
    jp $c356


    ld l, [hl]
    ld a, [c]
    rst $20
    ld [$dcbf], a
    db $76
    db $fd
    ld l, a
    ei
    ld c, e
    rst $38
    dec b
    rst $38
    ld [$08ff], sp
    db $10
    rst $38
    add b
    rst $38
    adc $ff
    db $dd
    ld [hl], e
    rst $38
    db $ed
    or $9b
    xor $33
    db $fd
    inc hl
    ld [$08ff], sp
    ei
    inc b
    db $fc
    inc bc
    ld b, $24
    nop
    cp a
    nop
    ccf
    ld b, b
    ld e, a
    ldh [rIE], a
    ld hl, $11ff
    ld a, a
    adc d
    adc a
    ld a, d
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    call nz, $81ff
    db $fd
    ld bc, $00ff
    cp $00
    cp $00
    db $fc
    ld bc, $01fd
    ld sp, hl
    inc bc
    ld a, [c]
    db $e3
    ld a, [hl+]
    rst $30
    inc e
    rst $38
    cp b
    rst $38
    add b
    ld b, $e1
    ld bc, $f806
    ld bc, $2cf3
    ei
    inc l
    di
    inc l
    rst $28
    ld sp, $1df3
    db $fc
    rrca
    rst $38
    inc bc
    db $dd
    ld h, e
    ei
    ld b, a
    or $4f
    xor [hl]
    db $db
    rrca
    ld sp, hl
    ld a, a
    pop af
    cp $83
    cp $83
    ld b, c
    ld a, a
    add d
    sbc d
    ld b, a
    ld b, a
    ccf
    inc a
    rrca
    adc b
    rra
    ret nc

    ccf
    and b
    ccf
    jr nz, jr_036_7171

    ld [hl], l
    ld [bc], a
    ld [hl+], a
    rlca

jr_036_7171:
    dec b
    adc a
    adc b
    rst $38
    ld [hl], b
    ld b, $24
    ld [bc], a
    rlca
    db $e4
    rrca
    add sp, $0f
    ld l, b
    add a
    or h
    add a
    db $f4
    adc a
    cp b
    rst $08
    ld e, b
    rst $20
    inc l
    ld b, $64
    rrca
    db $10
    inc bc
    rst $38
    rlca
    ld hl, sp+$0a

jr_036_7192:
    rst $38
    rra
    ld b, $24
    ld [bc], a
    ld a, a
    ld b, b
    ccf
    jr nz, @+$01

    ldh [rIE], a
    ret nz

    ld b, $24
    rrca
    dec b
    rst $20
    inc l
    jp $ff5e


    ld a, a
    ldh [$2d], a
    ld_long a, $ff1e
    rlca
    ld b, $a0
    ld [$7606], sp
    inc d

jr_036_71b5:
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    add hl, de
    ld [bc], a
    db $fd
    dec b
    ld b, $00
    add hl, bc
    add b

jr_036_71c4:
    ld a, a
    ld b, b
    ld b, $00
    rrca
    ld c, $10
    rst $28
    jr c, jr_036_71b5

    inc a
    di
    ld e, $f1
    ld [hl], a
    ret z

    ld a, e
    db $e4
    dec a
    di
    rra
    ld b, $00
    dec b
    rlca
    ld hl, sp-$28
    jr nz, jr_036_71c4

    jr nc, jr_036_7253

    ld hl, sp+$08
    ldh a, [rNR12]
    ldh a, [rNR14]
    ldh [$2c], a
    ldh [$a8], a
    ld h, b
    ld l, c
    jr nz, jr_036_7192

    db $10
    call nc, Call_000_203f
    ccf
    jr nz, @+$21

    db $10
    rra
    db $10
    rra
    rla
    jr @+$1a

    jr nc, jr_036_7237

    jr nz, jr_036_722b

    ld b, $00
    dec b
    add c
    ld a, [hl]
    ld h, a
    jr jr_036_722a

    ld hl, $063d
    ld h, b
    nop
    rst $08
    ld a, b
    sbc a
    ldh a, [$1f]
    call c, $bc27
    ld c, a
    ld a, b
    sbc a
    ldh a, [$f8]
    dec sp
    and $3e
    pop af
    rra
    ld hl, sp+$0b
    cp $1e
    pop af
    rra
    db $fc
    inc c

jr_036_722a:
    rst $38

jr_036_722b:
    inc bc
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    db $10
    pop de
    inc a
    inc a
    db $db

jr_036_7237:
    rst $10
    ld a, [hl-]
    ld a, $c4
    push bc
    add hl, sp
    add hl, sp
    ld d, [hl]
    ld l, a
    ld a, e
    ld e, [hl]
    ld c, a
    ld sp, hl
    ld [hl], l
    ld a, e
    sbc d
    sub [hl]
    ld l, $f6
    ld [hl], $ae
    ret nz

    ret nc

    and b
    ld h, b
    ldh [$ac], a
    and b

jr_036_7253:
    ld h, a
    ret c

    ret c

    rlca
    scf
    ld [bc], a
    dec bc
    ld bc, $3685
    scf
    ld [$1f0e], sp
    rra
    jr nz, jr_036_728b

    ret c

    ld hl, sp+$57
    or a
    cp b
    ld a, a
    ld b, a
    rst $00
    ccf
    cp b
    rst $08
    ld hl, sp+$1f
    ldh a, [$3f]
    and b
    rst $38
    ldh a, [$1f]
    ret nc

    ld a, a
    ld h, b
    rst $38
    add b
    cp $03
    rst $38
    ld bc, $0006
    ld [$dd1c], sp
    db $fc
    db $e4
    db $fc
    inc b
    db $fd
    dec b

jr_036_728b:
    rst $38
    ld l, e
    rst $38
    sbc d
    rst $38
    ld l, e
    rst $38
    ld [de], a
    ld a, [hl-]
    ld a, [hl+]
    dec sp
    dec hl
    dec hl
    dec sp
    inc l
    ccf
    xor l
    xor [hl]
    db $eb
    db $ec
    db $dd
    cp [hl]
    ld a, d
    ei
    ld bc, $0181
    ld b, c
    ld bc, $8701
    add a
    ld h, a
    and $9f
    ld a, d
    or e
    ld a, a
    ld e, l
    sbc $f0
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    xor h
    rst $38
    or d
    rst $38
    xor h
    rst $18
    or b
    rst $38
    add b
    ld b, $00
    rrca
    inc c
    dec bc
    ei
    ld c, $f7
    inc e
    rst $38
    jr jr_036_72d7

    nop
    inc b
    db $ed
    xor l
    db $dd
    ld a, l

jr_036_72d7:
    ei
    ld l, e
    ei
    rst $08
    push af
    sbc a
    push af
    rra
    db $eb
    ccf
    or $7f
    rst $10
    rst $10
    ld e, a
    ld e, h
    ld e, e
    ld a, [hl]
    ld e, a
    db $76
    ld e, a
    ld a, [c]
    ld e, a
    ld a, [c]
    ld a, a
    ldh [$bf], a
    ldh [rIE], a
    and b
    cp a
    ldh [$df], a
    ld [hl], b
    rst $38
    jr nc, jr_036_7302

    nop
    rrca
    ld a, [de]
    ld b, $ff
    rst $30

jr_036_7302:
    cp $9b
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    ld b, $00

jr_036_730e:
    inc bc
    ret nz

    ld b, $c8
    rra
    dec de
    ld b, b
    ld [bc], a
    ld b, $ff
    nop
    rst $38
    inc c
    di
    ld [de], a
    rst $38
    ld e, $ff
    rlca
    rst $38
    scf
    adc $4e
    cp a
    cp a
    rst $38
    ld b, $ff
    ldh a, [rP1]
    rst $38
    jr nc, jr_036_730e

    ld d, b
    rst $38
    ldh a, [$7f]
    ld h, b
    rst $38
    ret nz

    ld b, $10
    ld bc, $fe01
    inc bc
    db $fc
    rrca
    ldh a, [rNR33]
    ldh [$2f], a
    ret nz

    rst $30
    ld b, $10
    inc bc
    add b
    ld a, a
    ldh [$1f], a
    ld [hl], b

jr_036_734c:
    rrca
    add sp, $07
    sbc $06
    db $10
    inc bc
    jr jr_036_734c

    dec d
    rst $38
    rra
    db $fc
    inc c
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    sub b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret c

    rst $20
    db $e4
    ei
    ld a, [$cfff]
    cp $9e
    rst $38
    ccf
    rst $28
    dec hl
    cp $33
    cp $03
    rst $38
    ld bc, $6c06
    ld bc, $7e83
    ld b, d
    cp l
    and l
    sbc $de
    ldh [$e0], a
    ld a, a
    rst $38
    cp a
    ld a, a
    nop
    ld e, a
    add b
    ld b, $34
    nop
    xor [hl]
    push bc
    rst $10
    ld c, e
    ld e, e
    ld l, l
    ld a, a
    or e
    or e
    ld bc, $03f5
    rst $38
    nop
    cp $03
    db $eb
    ld b, [hl]
    sub $a4
    or h
    ld l, l
    db $fd
    sbc e
    sbc e
    rst $38
    ld bc, $82fe
    db $fd
    add l
    ld a, e
    ld c, e
    or $f7
    ld c, $0f
    db $fd
    rst $38
    ei
    db $fd
    rst $38
    and $ff
    ld a, [c]
    rst $38
    ld hl, sp-$11
    xor b
    rst $38
    sbc b
    rst $38
    ld b, $82
    nop
    nop
    rst $38
    ld bc, $1006
    inc bc
    ld b, $c3
    inc bc
    nop
    add a
    ret c

    add c
    call c, $d480
    add [hl]
    rst $18
    adc [hl]
    sbc a
    adc $e5
    ld c, h
    rst $20
    ld b, b
    xor a
    xor h
    ld d, a
    jp c, $ce49

    ld sp, $607e
    ccf
    ld b, b
    ld a, b
    ld b, e
    ld b, e
    ld a, a
    ccf
    ld [$d46b], a
    or a
    inc h
    and $18
    db $fc
    dec c
    ld hl, sp+$05
    inc a
    add l
    add h
    db $fd
    ld hl, sp+$01
    jp $0237


    ld [hl], a
    ld [bc], a
    ld d, a
    jp nz, $e2f7

    di
    and $4f
    ld h, h
    rst $08
    inc b
    ld b, $c2
    ld a, [bc]
    ld b, $10
    ld e, $d8
    ld b, b
    rst $00
    ld b, b
    pop hl
    ld d, b
    db $fc
    ld b, b
    rst $08
    ld b, b
    db $e3
    ld b, c
    ld a, [$de42]
    ld b, d
    ld [hl], h
    inc [hl]
    ld d, e
    ld e, a
    ret z

    ld c, e
    adc a
    adc a
    adc a
    adc a
    rlca
    rlca
    nop
    jr nz, jr_036_7455

    nop
    ld e, h
    ld e, b
    sub l
    db $f4
    daa
    and h
    ld [c], a
    ld [c], a
    db $e3
    ld [c], a
    pop bc
    pop bc
    nop
    ld [$0008], sp
    scf
    inc b
    rst $00
    inc b
    rrca
    inc d
    ld a, a
    inc b
    rst $20
    inc b
    adc a
    inc b
    cp a
    add h
    rst $30

jr_036_7455:
    add h
    ld b, $10
    rra
    inc b
    inc e
    ei
    ld a, [bc]
    rst $38
    ld c, $fd
    dec b
    rst $38
    ccf
    add $46
    rst $30
    ld b, a
    rst $38
    ld b, a
    cp a
    rst $00
    ei
    adc e
    rst $30
    or a
    rst $08
    ld c, a
    sbc b
    sbc a
    jr nz, jr_036_7475

jr_036_7475:
    inc sp
    inc b
    rst $10
    ret nz

    rst $20
    ld hl, sp-$18
    rst $28
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    ld [$9900], sp
    ld b, c
    rst $10
    rlca
    rst $08
    ccf
    cpl
    rst $28
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    rst $00
    call nz, $c4df
    rst $38
    call nz, $c6fb
    cp a
    and d
    rst $18
    jp c, $e5e7

    inc sp
    di
    ld b, $10
    inc bc
    ld [hl], b
    cp a
    and b
    rst $38
    ldh [$7f], a
    ld b, b
    rst $38
    ld hl, sp-$12
    ld l, [hl]
    cp a
    cp a
    rst $38
    rst $08
    rst $38
    dec e
    rst $30
    inc d
    rst $38
    inc c
    ld b, $10
    nop
    ld [hl], a
    ld a, b
    cp $ff
    rst $38
    pop bc
    ld b, $d8
    db $10
    rst $38
    jr nz, jr_036_74d0

    stop
    adc a
    ld a, a
    rst $30
    rrca

jr_036_74d0:
    db $db
    db $e3
    rst $38
    inc sp
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $fce3
    sbc $e1
    or a
    adc a
    rst $38
    sbc b
    rst $38
    and b
    rst $38
    ret nz

    ld b, $ba
    nop
    call c, $ff3c
    rst $38
    rst $38
    rlca
    ei
    dec bc
    rst $38
    ld c, $ff
    ld [$1006], sp
    nop
    rst $28
    db $ec
    ei
    ld a, [$e6ff]
    rst $38
    ld [hl], b
    rst $18
    ld d, b
    rst $38
    ld h, b
    ld b, $cc
    nop
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    dec e
    rrca
    add hl, bc
    ld bc, $02fe
    inc b
    inc e
    ld bc, $fe03
    inc e
    push af
    ld [hl+], a
    rst $28
    ld d, b
    rst $38
    adc a

jr_036_7524:
    sub b
    ldh a, [rIE]
    nop
    rst $38
    ld a, b
    rst $28
    sbc [hl]
    db $fd
    inc sp
    or a
    rlca
    rst $20
    ld [$02fc], sp
    ld a, [c]
    adc l
    inc b
    inc e
    rlca
    ret nz

    cp a
    ld h, b
    rst $38
    ret nz

    inc b
    inc e
    rrca
    ld c, $07
    ei
    inc e
    rst $28
    jr nc, jr_036_7524

    ld l, e
    ld hl, sp+$47
    ldh [$5f], a
    ldh [$5f], a
    add $7e
    ld h, [hl]
    ld h, b
    sub d
    adc h
    or d
    adc b
    ld e, h
    ret nz

    ld [hl+], a
    ld [c], a
    ld e, $fe
    ld a, [de]
    jp c, Jump_036_6765

    ld a, h
    ld b, [hl]
    ld a, [hl]
    ld d, e
    ld a, a
    ld h, c
    ld a, a
    ld b, c
    cp a
    pop bc
    cp a
    pop bc
    sbc a
    and c
    sbc e
    call nz, $a03f
    ccf
    ld h, b
    ld a, a
    ldh [$7f], a
    ld b, b
    rst $38
    add b
    inc b
    and [hl]
    ld [bc], a
    inc b
    inc e
    rrca
    dec c
    rst $28
    add hl, sp
    rst $38
    jr @+$06

    ld a, d
    nop
    rst $38
    ld bc, $1c04
    ld [bc], a
    call nz, $c8c6
    adc $f1
    db $fd
    ld h, e
    ei
    adc a
    rst $38
    ld a, a
    di
    cp $02
    rst $38
    inc bc
    call nz, $e1fb
    db $eb
    cp $df
    cp $c2
    rst $38
    pop bc
    cp a
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    jr nz, jr_036_75f0

    ldh [$3f], a
    and b
    ld a, a
    ld b, b
    rst $38
    ret nz

    inc b
    ld h, [hl]
    inc de
    inc b
    dec e
    rrca
    rla
    inc bc
    db $fd
    dec c
    rst $38
    rra
    ld_long a, $ff06
    rlca
    db $fd
    dec b
    ld hl, sp+$08
    pop af
    ld sp, $caca
    ld [hl], a
    ld [hl], l
    rst $08
    ret z

    rst $38
    add c
    ld a, a
    add c
    rst $38
    ld bc, $82fe
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, d
    db $fc
    db $f4
    ld a, [$040a]
    ld l, b
    inc d
    ccf
    jr nc, jr_036_75f9

    ld [$6c6f], sp
    ld a, a
    ld e, [hl]
    inc b

jr_036_75f0:
    ld e, h
    rrca
    rrca
    rst $38
    inc bc
    rst $38
    rlca
    inc b
    inc e

jr_036_75f9:
    ld b, $3f
    jr nc, @+$01

    pop bc
    rst $38
    inc bc
    rst $38
    inc bc
    inc b
    inc e
    inc b
    rst $30
    ld [hl], a
    xor [hl]
    xor [hl]
    rst $38
    rst $30
    ld sp, hl
    add hl, bc
    rst $38
    ld c, $ff
    inc c
    inc b
    inc e
    ld bc, $0480
    ld [$0413], sp
    dec e
    rrca
    inc b
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $2b
    rrca
    rla
    inc bc
    db $fc
    inc c
    ldh a, [$d0]
    ld b, $2a
    rlca
    ld h, b
    sbc a
    sub b
    ld c, a
    ld c, b
    ld b, $2a
    rrca
    ld e, $01
    cp $02
    db $fc

jr_036_763d:
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld b, $d8
    ld [bc], a
    ld hl, $1021
    db $10
    db $10
    db $10
    ld [$0908], sp
    add hl, bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$8708], sp
    add h
    rst $20
    db $e4
    db $d3
    sub d
    rst $28
    rst $18
    di
    db $f4
    rst $38
    ld [bc], a
    rst $38

jr_036_7662:
    ld h, b
    rst $30
    sub b
    ld b, $2a
    dec b
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_036_763d

    ld b, $2b
    rrca
    ld c, $f8
    ld [$0afa], sp
    ld a, [$fc0a]
    inc b
    db $fd
    dec b
    cp $02
    cp $02
    rst $38
    rlca
    ld [$0808], sp
    ld [$1010], sp
    sub b
    sub b
    jr nz, jr_036_76ac

    jr nz, jr_036_76ae

    ld c, a
    ld c, a
    sub a
    sbc d
    ld d, l
    ld h, [hl]

jr_036_7694:
    dec sp
    scf
    ld c, $0d
    inc bc
    inc bc
    nop
    nop
    ld bc, $9f01
    sbc [hl]
    rst $28
    push af
    rst $30
    jr jr_036_7694

    jr jr_036_7662

    call z, $cc57
    rst $38
    db $f4

jr_036_76ac:
    rst $38
    inc c

jr_036_76ae:
    ld b, $2a
    rrca
    ld de, $18f8
    ld [c], a
    ld [hl+], a
    call $f24d
    ld [hl], d
    or $16
    rst $38
    dec de
    ld b, $2a
    nop
    ld e, d
    ld e, a
    and a
    cp a
    ld e, a
    ld h, b
    ld a, a
    ld e, e
    cp a
    ei
    rst $38
    cp e
    rst $30
    or e
    db $fd
    or c
    sub l
    rst $38
    cp $0f
    ld b, $06
    ld de, $ffc0
    add sp, -$02
    ld [$edfc], a
    ld b, $06
    db $10
    ld a, a
    ret nz

    rst $18
    ld h, b
    sbc a
    nop
    ccf
    ldh [rTMA], a
    jp z, $0610

    xor [hl]
    rrca
    ld [de], a
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc bc
    ld b, $2a
    nop
    xor $9c
    db $fd
    ld e, $bd
    db $e3
    ei
    ld e, [hl]
    rst $38
    ld d, l
    rst $38
    sbc [hl]
    ld b, $2a
    nop
    db $f4
    rst $10
    ldh [$2b], a

jr_036_770e:
    add c
    cp l
    rst $08
    xor $ff
    jr nc, jr_036_771b

    ld a, [hl+]
    ld [bc], a
    ld a, a
    ret nz

    rst $38
    add b

jr_036_771b:
    ld b, $2a
    rrca
    add hl, bc
    ld b, b
    ld [bc], a
    ld bc, $01ff
    rst $38
    rst $38
    ld c, l
    ld bc, $0f25
    ld [de], a
    cp $01

jr_036_772d:
    add l
    inc bc
    ld a, [$2501]
    rlca
    ld a, a
    nop
    cpl
    add b
    rrca
    add b
    ld bc, $0f60

jr_036_773c:
    dec d
    ld bc, $0482
    cp a
    nop
    rst $08
    nop
    rst $00
    db $10
    ld b, a
    db $10

jr_036_7748:
    inc de
    ld [$401b], sp
    ld e, c
    and h
    ld a, c
    add h
    ldh a, [rP1]
    ldh a, [rTIMA]
    and b
    rrca
    inc b
    ld c, e
    ld b, $79

jr_036_775a:
    inc hl
    ld d, b
    add hl, sp
    ld b, b
    sbc l
    jr nz, jr_036_7770

    and b
    add a
    jr nc, jr_036_773c

    jr nz, jr_036_775a

    ld [$08f2], sp
    sub b
    ld [$0a30], sp
    ld [hl], d
    inc c

jr_036_7770:
    rst $30
    nop
    rst $20
    nop
    rst $00
    db $10
    push bc
    db $10
    sub e
    jr z, jr_036_770e

    jr z, jr_036_778e

    ld l, b
    jr nc, jr_036_7748

    ld bc, $0c26
    db $fc
    nop
    ldh a, [$03]
    rst $20
    ld [$1cc0], sp
    add c
    jr nz, jr_036_772d

jr_036_778e:
    nop
    cp [hl]
    nop
    rst $38
    nop
    ld e, h
    and d
    sbc h
    ld b, e
    ld d, $29
    and l
    ld [de], a
    inc b
    ld h, d
    db $10
    inc b
    ldh [$0c], a
    jp Jump_000_1710


    nop
    add hl, bc
    ret nc

    adc h
    ld [hl], b
    cp $00
    sbc e
    ld h, h
    add hl, bc
    sub $04
    add hl, bc
    ld [hl], b
    inc b
    call nc, Call_000_3c09
    inc bc
    ld a, l
    ld [bc], a
    rst $38
    nop
    jp nc, $802d

    ld d, a
    nop
    db $c2, $1d, $00

    ld a, [c]
    inc c
    pop de
    ld h, $c0
    add hl, sp
    ld b, d
    sbc b
    ld b, c
    inc c
    ld d, c
    nop
    ld c, $60
    add a
    db $10
    ccf
    nop
    rra
    ret nz

    rst $08
    jr nz, jr_036_7801

    ret nc

    inc bc
    ld [$00f3], sp
    ei
    ld bc, $0f25
    nop
    rst $08
    nop
    rst $18
    ld bc, $0925
    ld bc, $1c7c
    cp a
    ld bc, $0b25
    rst $20
    nop
    rst $30
    ld bc, $0f25
    ld c, l
    ld bc, $1fdf
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a

jr_036_7801:
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    add hl, de
    rrca
    ld b, $de
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    ld [bc], a
    ld a, [de]
    dec b
    jr @+$01

    inc b
    rst $38
    add e
    rst $38
    rst $00
    ld [bc], a
    add b
    rlca
    jr nz, @+$01

    pop bc
    rst $38
    db $e3
    ld [bc], a
    ld a, [de]
    ld b, $7b
    db $fc
    db $fd
    db $fc
    cp $fe
    ld [bc], a
    ld a, [de]
    inc c
    cp $01
    rst $38
    ld [bc], a
    pop bc
    nop
    ld [bc], a
    add hl, de
    ld b, $ff
    rst $38
    rst $38
    rst $18
    ccf
    rst $38
    rrca
    rst $30
    rrca
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    ld a, [$fdff]
    rst $30
    rst $30
    rst $30
    ld [hl], e
    ld hl, sp+$38
    db $fc
    inc a
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $28
    rst $28
    rst $28
    adc $1f
    inc e
    ccf
    inc a
    ld [bc], a
    ret nc

    nop
    ei
    db $fc
    rst $38
    ldh a, [$ef]
    ldh a, [rIE]
    ld h, b
    rst $38
    jr nz, @+$01

    nop
    ld a, a
    add b
    rst $38
    ld [bc], a
    ld de, $0210
    add hl, de
    rrca
    rlca
    ld [bc], a
    pop bc
    inc c
    cp a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    ld h, b
    ld [bc], a
    jr nc, jr_036_789f

    db $fd
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    add [hl]
    ld [bc], a
    ld a, [de]
    nop
    db $fd
    inc bc
    ld [bc], a
    ld [de], a
    ld de, $1502

jr_036_789f:
    ld de, $78bf
    rst $38
    db $fc
    ld a, a
    adc h
    ld [bc], a
    ld a, [de]
    rrca
    dec l
    cp a
    add $fb
    ld a, h
    ld [bc], a
    ld a, [de]
    rrca
    ld c, l
    ld [bc], a
    ldh [$1f], a
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7c0d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_7d4b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_7d86:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_036_7eef:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7fa7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
