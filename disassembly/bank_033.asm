; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    inc sp
    ld d, c
    ld b, b
    sbc h
    ld b, c
    ld [$4242], a
    ld b, h
    ld b, [hl]
    ld b, l
    ld a, l
    ld b, [hl]
    dec de
    ld c, b
    db $f4
    ld c, b
    rst $10
    ld c, c
    add hl, bc
    ld c, e
    ld [de], a
    ld c, h
    rlca
    ld c, [hl]
    ld h, l
    ld c, a
    push bc
    ld d, b
    sbc h
    ld d, d
    add [hl]
    ld d, h
    inc de
    ld d, l
    ld [hl], h
    ld d, [hl]
    ld l, $57
    ld a, [$6557]
    ld e, c
    ld [hl], a
    ld e, d
    ld h, b
    ld e, e
    or d
    ld e, h
    ld [hl-], a
    ld e, [hl]
    ld [bc], a
    ld e, a
    inc [hl]
    ld h, b
    jr z, jr_033_409b

    ld [$c364], sp
    ld h, h
    cp b
    ld h, l
    ld l, l
    ld h, a
    ld l, d
    ld l, b
    ld d, [hl]
    ld l, c
    and b
    ld l, d
    jp hl


    ld l, e
    db $dd
    ld l, h
    ldh a, [$6d]
    cp [hl]
    ld l, a
    ld [hl-], a
    ld [hl], c
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec bc
    ld [hl], b
    dec b
    nop
    add hl, bc
    ld bc, $02ff
    dec b
    nop
    add hl, bc
    ret nz

    cp a
    ld h, b
    dec b
    nop
    add hl, bc
    rlca
    rst $38
    ld a, [bc]
    dec b
    nop
    dec bc
    ret nz

    dec b
    inc l
    ld bc, $0503
    nop
    rlca
    xor b
    rst $38
    ld hl, sp-$51
    db $fc
    rst $18
    push af
    cp a
    rst $38
    ei
    ld a, l
    rst $10
    ld a, [hl]
    cp $7b
    rst $38
    rlca
    rst $38
    inc b
    db $fd
    ld a, a
    cp $cb
    ei
    rst $18
    db $fc
    or a
    rst $38
    rst $10
    db $fd
    sbc [hl]
    rst $38
    ldh a, [$bf]
    ret nc

    rst $38

jr_033_409b:
    rst $38
    rst $18
    ld a, [hl-]
    rst $30
    ei
    sub a
    db $fd
    sub a
    db $fd
    rst $38
    ld a, c
    rst $38
    rrca
    ld a, [$fd1f]
    scf
    cp $ff
    rst $38
    ld c, a
    db $fd
    or a
    ei
    cpl
    rst $28
    cp [hl]
    rst $38
    and b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    dec b
    nop
    rrca
    nop
    dec sp
    cp $1b
    rst $38
    dec bc
    rst $38
    rrca
    dec b
    nop
    inc b
    rst $30
    ld c, a
    cp l
    db $fd
    or $ce
    db $e3
    rst $20
    sbc a
    add a
    db $fc
    ei
    rst $18
    ld h, c
    rst $18
    ld h, [hl]
    rst $30
    ei
    ld d, a
    ld e, e
    or a
    cp a
    rst $28
    rst $38
    sbc $f1
    ld a, a
    rst $38
    db $fd
    and e
    rst $38
    cp a
    ld c, a
    db $fc
    scf
    db $fc
    rst $30
    call c, $d4ff
    rst $38
    sub h
    rst $38
    sbc b
    dec b
    nop
    rrca
    inc c
    dec b
    rst $38
    cp $05
    dec l
    nop
    jr c, @-$0f

    scf
    rst $38
    dec a
    rst $28
    dec [hl]
    rst $38
    ld a, l
    cp a
    push de
    rst $38
    adc l
    rst $20
    ld e, l
    ei
    sub [hl]
    rst $38
    sbc $ff
    ld e, a
    rst $38
    db $76
    rst $38
    ld c, e
    rst $38
    sub l
    xor a
    ld sp, hl
    di
    cp $05
    or h
    nop
    rst $38
    add b
    dec b
    nop
    ld bc, $ff80
    dec b
    cp c
    nop
    dec b
    rst $38
    rst $38
    inc c
    cp $06
    rst $38
    rlca
    cp $0a
    cp $13
    rst $38
    dec c
    dec b
    ld a, [hl+]
    ld bc, $ef03
    ld a, l
    rst $38
    rst $10
    ld a, a
    ret nc

    rst $38
    ld hl, sp+$1f
    db $fc
    rst $28
    or $9f
    ld a, [c]
    rst $38
    db $cc, $f7, $1e
    rst $38
    dec bc
    cp $0b
    rst $38
    rrca
    cp $0b
    rst $38
    inc bc
    cp $03
    rst $38
    rlca
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [$7f]
    ld [hl], b
    rst $38
    jr nz, @+$01

    dec b
    ccf
    ld a, [bc]
    dec b
    add hl, hl
    rra
    inc bc
    dec b
    rst $38
    ld a, [$05f0]
    cp h
    dec bc
    rlca
    db $fd
    ld c, $f9
    dec bc
    cp $07
    dec b
    ldh a, [$15]
    ret nz

    rst $38
    ldh a, [rIE]
    inc l
    ld a, a
    sbc $bf
    cp $ff
    ld a, h
    dec b
    nop
    rrca
    ld bc, $0240
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    ld c, l
    db $10
    ld e, a
    rrca
    ld c, l
    db $10

jr_033_41a9:
    ld l, l
    ld [$fe01], sp
    inc bc
    db $10
    ld l, h
    rlca
    ld [hl], e
    adc $db
    ld h, $6f
    db $10
    add $05
    ld [bc], a
    cp $03
    db $fc
    add l
    adc b
    adc c
    db $10
    ld l, h
    dec b
    add b
    rst $38
    add c
    ld a, [hl]
    ld b, e
    ld [hl+], a
    and e
    db $10
    ld l, h
    rlca
    sbc h
    rst $20
    or a
    ret z

    db $ed
    db $10
    ld l, h
    dec bc
    add b
    db $fd
    dec b
    ld a, [$fa0f]
    ld c, $f9
    add hl, bc
    di
    inc de
    db $f4
    dec d
    db $fc
    inc a
    db $e3
    daa
    or d
    or [hl]
    ld c, e
    ei
    ld b, [hl]
    sbc $28
    xor c
    jr nc, jr_033_4263

    and b
    and [hl]
    ld b, c
    push bc
    jp Jump_000_28c7


    add hl, bc
    ld [hl], h
    dec h
    inc hl
    rlca
    nop
    adc a
    nop
    rst $38
    ret nz

    db $dd
    ldh a, [$f6]
    ld hl, sp-$06
    jr z, jr_033_41a9

    ld e, l
    ld c, c
    adc b
    pop bc
    nop
    db $e3
    nop
    rst $38
    ld b, $76
    rra
    rst $18
    ccf
    cp a
    sbc e
    db $db
    and h
    xor a
    call nz, Call_000_29de
    ei
    add hl, de
    db $fd
    ld a, [bc]
    ld a, [$7d04]
    add a
    rst $18
    ld a, a
    ld b, b
    cp a
    ldh [$bf], a
    ldh [$3f], a
    ld h, b
    sbc a
    or b
    ld e, a
    ldh a, [$7f]
    ld hl, sp-$71
    ret c

    and b
    cpl
    ret nz

    ld c, e
    ret nz

    ld c, [hl]
    ret nz

    ld b, a
    ret nz

    ld b, e
    pop bc
    ld b, c
    and c
    ld hl, $21e1
    ld hl, $30e5
    or $48
    ei
    add h
    db $fc
    add d
    cp [hl]
    ld bc, $010f

jr_033_4253:
    rlca
    nop
    rlca
    db $fc
    rst $38
    ldh a, [$f6]
    ld bc, $02fd
    rst $38
    ret nz

    rst $38
    push af
    ccf
    ld a, a

jr_033_4263:
    xor d
    ld [$7fbf], a
    rst $38
    ld e, $de
    nop
    ld a, a
    add b
    cp $06
    cp $5f
    ld sp, hl
    db $fd
    xor e
    xor [hl]
    ld a, [$5908]
    jr jr_033_4253

    inc h
    and [hl]
    ld b, d
    ld e, a
    add d
    cp a
    ld bc, HeaderManufacturerCode
    ld a, a
    ld bc, $0bff
    ld hl, sp+$07
    cp h
    rlca
    db $fc
    rlca
    db $ec
    rlca
    cp h
    rlca
    db $f4
    dec bc
    ret c

    rrca
    ld a, b
    pop af
    ld de, $11f1
    ld sp, hl
    add hl, bc
    rst $38
    rlca
    rst $38
    ld bc, $6c10
    ld [bc], a
    ldh [$e3], a
    jr jr_033_4302

    inc c
    dec l
    ld [bc], a
    ld a, [de]
    pop hl
    rst $20
    rst $38
    ld e, $10
    ld l, h
    nop
    or l
    push af
    ld a, a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    cp a
    add b
    db $10
    ld l, h
    nop
    ld e, d
    ld e, a
    db $fc
    dec c
    db $fc
    rlca
    db $fc
    rlca
    db $fd
    rlca
    ei
    ld [bc], a
    db $10
    ld l, h
    nop
    rrca
    rst $38
    ld sp, $61f7
    rst $28
    add c
    cp l
    rrca
    rst $28
    rst $38
    ldh a, [rNR10]
    ld l, h
    nop
    rra
    ret nc

    rra
    ldh a, [$3f]
    ld h, b
    rst $38
    ret nz

    db $10
    ld l, h
    inc b
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    add hl, de
    inc bc
    db $fd
    ld b, $04
    nop
    add hl, bc
    add b
    rst $38
    ret nz

    inc b
    ld a, [bc]
    rrca
    ld de, $01ff

jr_033_4301:
    rst $38

jr_033_4302:
    ld bc, $3204
    add hl, bc
    ld h, b
    rst $38
    add hl, de
    cp a
    rst $00
    rst $08
    ld [hl], c
    rst $20
    jr c, jr_033_4301

    ld a, $fb
    inc c
    ei
    dec c
    rst $38
    ld a, [bc]
    rst $38
    ld hl, sp-$31
    ld l, b
    rst $10
    ld e, [hl]
    rst $10
    sbc $cb
    ld c, l
    rst $38
    and b
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ccf
    rst $20
    dec a
    rst $30
    db $dd
    rst $30
    db $dd
    rst $20
    dec a
    inc b
    nop
    dec b
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$04
    nop
    rrca
    ld [$fe01], sp
    ld [bc], a
    cp $02
    db $ec
    cpl
    ld a, [c]
    inc de
    ld sp, hl
    add hl, de
    xor $3e
    rst $18
    pop af
    cp a
    ldh a, [rIE]
    ldh a, [$1f]
    db $10
    db $ed
    ld l, $7b
    sbc e
    cp a
    rst $00
    ld c, a
    ld [hl], e
    scf
    add hl, sp
    adc c
    adc [hl]
    add $4f
    pop bc
    ld b, a
    rst $20
    ld a, l
    xor a
    cp c
    cp $b3
    db $fc
    ld b, a
    ld sp, hl
    rst $38
    jp $777e


    cp h
    cp a
    call z, $f80f
    rra
    ldh a, [$3f]
    ldh a, [$ef]
    ld hl, sp-$01
    inc d
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    rlca
    inc b
    inc e
    ld c, $04
    call z, $0400
    ld h, [hl]
    ld b, $3f
    jr nz, @+$61

    ld d, b
    ld e, a
    ld d, b
    ccf
    jr nc, @+$01

    ldh [rDIV], a
    ld h, [hl]
    ld bc, $e301
    daa
    rst $38
    inc e
    rst $38
    dec a
    rst $00
    ld b, h
    add e
    add a
    nop
    rlca
    ret nz

    rst $08
    jr c, @+$01

    rst $08
    db $f4
    rst $30
    ld a, e
    ei
    ld a, h
    add $7f
    add e
    rst $38
    inc bc
    cp $07
    rst $38
    ld a, [hl-]
    cp $f8
    dec bc
    ld hl, sp+$1b
    db $fc
    push hl
    cp $9b
    rst $20
    ld l, l
    add e
    and $83
    or d
    add e
    sbc d
    rst $38
    add b
    ld a, a
    ret nz

    inc b
    ld [hl], d
    ld [de], a
    rst $38
    add b
    inc b
    ld a, d
    ld de, $ff04
    db $fc
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rlca
    db $fd
    ld b, $ff
    inc bc
    rst $38
    rlca
    ld hl, sp+$19
    ldh [$27], a
    ld a, a
    rst $00
    rst $38
    ldh [$bf], a
    ldh [rIE], a
    ld h, b
    sbc a
    ret nc

    rrca
    add sp, $1f
    ld hl, sp+$7f
    ldh [rIE], a
    push bc
    rst $38
    inc b
    dec h
    db $10
    ld bc, $06ff
    ei
    ld c, $f9
    rrca
    db $fd
    ld c, $47
    ld c, l
    cp $fb
    rst $38
    ld c, a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jr nz, jr_033_441d

    ld a, h
    rra
    ld [bc], a
    inc b

jr_033_441d:
    rst $38
    ld hl, sp+$3f
    inc b
    nop
    dec bc
    inc b
    ld a, a
    dec de
    ei
    dec bc
    ldh a, [rNR13]
    ldh a, [rNR21]
    ldh [$27], a
    ld hl, sp+$3b
    inc b
    ld c, $13
    ldh [$7f], a
    ret nz

    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    rst $38
    db $fc
    inc b
    nop
    rrca
    ld bc, $0240
    inc b
    rst $38
    inc b

Call_033_4447:
    rst $38
    rst $38
    ld c, l
    inc b
    rlca
    inc bc
    ei
    inc bc
    inc b
    ld [$f70a], sp
    ldh a, [$7d]
    ld a, h
    rst $18
    rra
    rst $18
    rra
    inc b
    ld [$7f08], sp
    ld [bc], a
    cp e

Call_033_4460:
    add d
    inc b
    ld [$fd08], sp
    add c
    cp e
    add e
    inc b
    ld [$df04], sp
    rra
    ld a, l
    ld a, h
    rst $30
    ldh a, [$f7]
    ldh a, [rDIV]
    ld [$bf04], sp
    add b
    inc b
    ld [$030f], sp
    cp a
    ccf
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    rst $30
    rlca
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $c7df
    rst $38
    rst $20
    ld sp, hl

Call_033_4491:
    db $fd
    db $fd
    rst $38
    inc b
    rst $20
    inc b
    rst $30
    rst $00
    rst $38
    rst $08
    ccf
    ld a, a
    ld a, a
    inc b
    rst $20
    dec b
    ei
    ld hl, sp-$21
    ret nz

    cp a
    add b
    cp a
    add b
    rst $18
    ret nz

    inc b
    adc b
    ld bc, $0704
    rrca

jr_033_44b1:
    add hl, bc
    ld bc, $02ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    cp $06
    db $fd
    inc c
    db $db
    jr jr_033_44b1

    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    rst $38
    rst $38
    ld a, a
    inc b
    ld b, d
    ld [de], a
    cp a
    ccf
    rst $38
    ccf
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_033_44de:
    ei
    ld hl, sp-$01
    ld hl, sp-$05
    ld hl, sp-$01

Call_033_44e5:
Jump_033_44e5:
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld h, b
    or a

Call_033_44ed:
Jump_033_44ed:
    jr nc, jr_033_44de

    rrca
    rst $38
    ld c, $ff
    dec bc
    inc b
    ld [$0409], sp
    cp c
    nop
    ld [bc], a
    inc b
    ld [$a00b], sp

Call_033_44ff:
    inc b
    ld a, h

Call_033_4501:
    ld de, $8304
    ld b, $ff
    cp a
    sbc a
    rst $38
    rrca
    rst $38

Call_033_450b:
Jump_033_450b:
    rlca
    ld hl, sp+$00
    rst $38
    inc bc
    cp $04
    db $db

Call_033_4513:
Jump_033_4513:
    nop
    cp $fb
    ld a, [c]
    rst $38
    ldh [rIE], a
    ret nz

    ccf
    nop

Jump_033_451d:
    rst $38
    ldh [$1f], a
    inc b
    dec sp
    db $10
    ld a, [bc]
    inc b
    add b
    dec de

Jump_033_4527:
    inc b
    cp c
    rrca
    inc b
    inc b
    ld [$050f], sp
    cp $01

Jump_033_4531:
    cp $00
    db $fc
    inc bc
    db $fc
    inc b
    rlca
    dec b
    rra
    ldh [$3f], a
    nop
    ccf
    ret nz

    inc b
    ld c, $1f
    ld a, [bc]
    inc b
    rlca
    add hl, bc
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    ld c, l
    ld b, $1f
    rrca
    dec bc
    inc bc
    ld b, $7c
    nop
    db $fd
    ld e, $f5
    ld l, $d9
    db $76

Jump_033_455c:
    db $ed
    ld [hl], $e6
    ld a, a
    reti


    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $18
    cp h
    ld e, a
    xor d
    ld a, e
    sub [hl]
    rst $10
    xor l
    db $fd
    cp e
    call $8f06
    nop
    ld b, $1f
    ld [$06e0], sp
    ld e, $0f
    dec c
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $30
    rla
    add sp, $2b
    ret nc

    rla
    ld l, b
    ld a, a
    inc h
    ld a, $28
    ccf
    sbc e
    sbc a
    ld e, b
    ld e, a
    ld d, h
    ld e, [hl]
    push de
    rst $18
    ld c, l
    rst $08
    dec bc
    cp a
    ld [de], a
    ld a, [hl]
    ld a, [hl+]
    sbc $7c
    xor h
    xor l
    db $dd
    dec d
    cp l
    push de
    db $fd
    reti


    ld sp, hl
    rra
    db $10
    rrca
    ld [$080f], sp
    add a
    add h
    rlca
    inc b
    ld [hl], a
    ld [hl], h
    adc e
    cp d
    dec b
    ld a, h
    ld b, $1e
    rrca
    dec c
    push af
    ccf
    push de
    rra
    push af
    dec e
    cp $1f
    ld hl, sp+$1b
    add sp, $2a
    rst $28
    cpl
    rst $28
    jr z, jr_033_463d

    rst $28
    ld d, a
    rst $30
    call nc, $e2d7
    db $e3
    add c
    add c
    add b
    add b
    pop hl
    pop hl
    rst $38
    ld a, [hl]
    ld e, e
    dec de
    push af
    or a
    ld d, l
    dec d
    ld h, e
    inc hl
    ld b, b
    nop
    ret nz

    ret nz

    jp $ffc3


    ccf
    ld d, a
    db $fc
    ld d, a
    cp $d7
    call c, $b8bf
    adc a
    cp b
    adc a
    xor b
    rst $38
    ldh a, [rTMA]
    ld e, $0f
    db $10
    db $10
    rst $38
    inc bc
    db $fc
    inc b
    cp $0e
    rst $38
    rra
    ld b, $98
    ld de, $9f0f
    sbc [hl]
    ld bc, $0001
    nop
    add b
    add b
    ld hl, sp-$08
    cp $e6
    rst $38
    add c
    rst $38
    ret nz

    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    ld [bc], a
    ld [bc], a
    rrca
    rrca
    rst $38
    di
    ld b, $1e
    ld bc, $7f80
    ld h, b
    rra
    db $10
    rst $38
    ld hl, sp-$01
    db $fc
    rst $20
    xor $ef
    ld hl, sp-$61
    or b

jr_033_463d:
    ld b, $1e
    rrca
    ld c, $07
    rst $38
    dec b
    ld b, $7c
    nop
    db $fc
    dec c
    ld sp, hl
    dec bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    ldh a, [rIF]
    jr c, jr_033_4667

    ld hl, sp+$7f
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    dec c
    ld hl, sp+$0b

jr_033_4667:
    ld hl, sp+$08
    ld b, $fc
    ld de, $3f00
    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$4f
    ld l, b
    ld b, $6c
    rra
    ld bc, $0240
    dec b
    rst $38
    dec b
    rst $38
    rst $30
    db $fc
    nop
    ld_long a, $ff05
    rst $30
    ld sp, hl
    nop
    ld a, d
    dec b
    dec c
    add hl, bc
    dec b
    jr nz, jr_033_46a2

    rrca
    di
    nop
    db $ed
    dec b
    rra
    dec bc
    rst $00
    nop
    ld sp, hl
    nop
    rst $38
    nop
    cp $00

jr_033_46a2:
    db $fc
    ld bc, $05fc
    rst $38
    pop af
    cp $00
    add d
    nop
    cp d
    inc b
    ld b, l
    ld a, [hl-]
    adc b
    nop
    ld b, a
    db $10
    rst $08
    nop
    rst $38
    nop
    ld a, a
    dec b
    ld a, e
    ld bc, $003f
    ld e, a
    add b
    cpl
    dec bc
    call z, $e01f
    dec bc
    ldh a, [rNR21]
    dec b
    ld l, d
    ld [bc], a
    db $fd
    nop
    ld a, [$18e9]
    db $fc
    inc bc
    add sp, $07
    or h
    pop de
    nop
    ld l, $00
    ld [hl], c
    adc [hl]
    adc b
    ld h, b
    dec d
    nop
    ld a, [$0500]
    ld l, b
    nop
    db $eb
    nop
    ld [hl], e
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    rst $10
    nop
    rst $10
    nop
    rst $00
    db $10
    db $fc
    ld bc, $00f6
    rst $20
    dec b
    cp c
    inc bc
    rst $28
    dec b
    ld a, e
    ld [bc], a
    rrca
    ldh a, [rSVBK]
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR32]
    or c
    cp h
    ld d, e
    ld e, l
    sub c
    sbc h
    and b
    cp h
    jr nz, jr_033_4757

    ld b, b
    ld a, c
    add b
    rst $38
    rlca
    inc e
    ld b, [hl]
    ld e, $e5
    ld e, l
    ld b, h
    inc e
    ld [bc], a
    ld e, $02
    cp [hl]
    ld bc, $00cf
    ld a, a
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rlca
    dec b
    sub $00
    ld bc, $0301
    ld [bc], a
    add a
    add h
    dec b
    call z, $ff00
    nop
    rst $38
    add b
    rst $18
    add b
    rst $18
    nop
    xor a
    nop
    adc a
    jr nz, @+$07

    jr nz, jr_033_475a

    ld hl, sp+$08
    or $06
    di
    rlca
    ld a, [c]
    ld b, $ea

jr_033_4757:
    rlca
    ld [c], a
    rlca

jr_033_475a:
    db $ec
    rlca
    push de
    rrca
    add h
    db $fc
    adc b
    ret c

    adc h
    rst $18
    ld b, b
    ld l, [hl]
    ld a, b
    ei
    ld b, a
    rst $00
    add $c6
    add hl, sp
    rst $38
    db $10
    rra
    ld [$180d], sp
    db $fd
    ld bc, $0f3b
    rst $28
    pop af
    pop af
    ld sp, $4e31
    ld a, a
    adc a
    adc b
    or a
    or b
    rst $20
    ldh a, [$27]
    jr nc, @+$2d

    ldh a, [rNR44]
    ldh a, [$9b]
    ldh a, [rHDMA5]
    ld hl, sp-$21
    dec b
    rra
    dec bc
    dec b
    ld h, h
    nop
    cp $05
    ld h, c
    ld bc, $8405
    db $10
    rst $38
    nop
    call z, Call_000_3307
    rrca
    ld b, d
    add d
    inc d
    inc h
    ld h, a
    adc a
    ld [hl], e
    add h
    jr @+$22

    jp nz, $1004

    rst $38
    db $e4
    xor $28
    dec a
    add hl, sp
    inc a
    add hl, bc
    inc c
    db $fc
    cp $3e
    ld b, d
    ld [bc], a
    add b
    add h
    db $fd
    inc de
    cp e
    adc d
    ld e, [hl]
    adc $1e
    ld c, b
    sbc b
    sbc a
    ccf
    cp h
    jr nz, jr_033_47f0

    add b
    add hl, de
    ldh a, [$e6]
    ld hl, sp+$21
    jr nz, jr_033_47e9

    ld [de], a
    ld [hl], e
    ld a, b
    and a
    sub b
    inc c
    add d
    ld h, c
    db $10
    cp a
    nop
    rra
    ld b, b
    ccf
    add b
    ld a, a
    nop
    ccf
    add b
    dec b

jr_033_47e9:
    call nc, $0510
    jr nz, jr_033_47fc

    ld hl, sp+$05

jr_033_47f0:
    ld a, l
    rla
    dec b
    nop
    nop
    ld d, h
    nop
    adc b
    ld hl, $5124
    add [hl]

jr_033_47fc:
    add hl, bc
    ld l, c
    ld [bc], a
    call nz, Call_033_7905
    ld bc, $0094
    add b
    ld c, b
    adc a
    ld d, b
    or b
    ld c, b
    rst $00
    jr nz, jr_033_482d

    dec b
    rst $38
    pop af
    rrca
    dec b
    add c
    nop
    add b

jr_033_4816:
    ccf
    dec b
    rra
    rrca
    ld b, $40
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    inc d
    cp $00
    db $fd
    nop
    ei
    nop
    rst $30
    ld [bc], a
    rst $38
    di

jr_033_482d:
    ld a, a
    nop
    rst $38
    nop
    rrca
    nop
    rst $30
    nop
    dec de
    ld [bc], a
    rst $38
    rst $38
    ld d, $02
    ld a, [de]
    inc c
    ld [bc], a
    halt
    db $fd
    nop
    db $fc
    nop
    sub $00
    xor l
    nop
    cp d
    nop
    cp c
    nop
    ld a, l
    nop
    cp $00
    ld a, a
    nop
    jp c, $eb24

    nop
    db $ed
    nop
    push af
    nop
    or l
    nop
    ld [hl], $00
    cp d
    nop
    ld a, d
    nop
    ld a, [$3f02]
    rrca
    ld e, $fd
    ld [bc], a
    ld [hl], l
    ld bc, $0002
    ld b, $c3
    jr jr_033_4816

    nop
    sbc c
    ld b, d
    ld b, d
    nop
    dec h
    nop
    jp c, $e500

    nop
    ei
    nop
    ld [hl], $00
    ld [hl], l
    nop
    ld l, l
    nop
    db $db
    nop
    or a
    nop
    ld l, a
    nop
    rst $18
    nop
    jr c, jr_033_4890

    rst $38
    ei

jr_033_4890:
    ld [bc], a
    ld [hl], $00
    ld [bc], a
    ld b, b
    rrca
    dec de
    or $00
    db $ed
    nop
    ld [$e900], a
    nop
    rst $28
    nop
    call z, $be00
    nop
    ld h, e
    nop
    rst $20
    nop
    sbc h
    nop
    ld [hl], e
    nop
    rst $08
    nop
    ccf
    nop
    rst $38
    nop
    ld a, h
    nop
    add e
    nop
    cp a
    nop
    rst $18
    nop
    ld l, a
    nop
    xor a
    nop
    xor a
    ld [bc], a
    ld sp, hl
    ld bc, $02bf
    ld d, l
    rrca
    inc d
    ld [bc], a
    call nc, $dc06
    nop
    cp a
    nop
    cp a
    nop
    rst $08
    nop
    ld [hl], c
    nop
    sbc [hl]
    nop
    ldh [rSC], a
    dec h
    ld bc, $0201
    cpl
    dec b
    ccf
    nop
    rra
    ld [bc], a
    dec c
    rra
    jr nz, jr_033_48e9

    inc d
    rrca

jr_033_48e9:
    inc bc
    ld [bc], a
    nop
    inc b
    sbc a
    nop
    cp a
    ld [bc], a
    dec c
    rra
    ld a, [de]
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec sp
    ldh [rTIMA], a
    nop

Call_033_48ff:
    rrca
    inc e
    ld bc, $7405
    ld [$1efe], sp
    db $e4
    rst $38
    rst $38
    inc bc
    rst $38
    inc b
    dec b
    nop
    inc bc
    ret nz

jr_033_4911:
    cp a
    cp a
    ld d, b
    rla
    rst $18
    ldh a, [$ef]
    jr c, jr_033_4911

    inc e
    rst $30
    inc e
    rst $20
    inc [hl]
    rst $00
    db $f4
    rrca
    ret c

    rrca
    xor b
    dec b
    nop
    rrca
    dec c
    cp $07
    ld hl, sp+$0f
    ldh a, [$1f]
    pop hl
    ccf
    ld [c], a
    ld l, $d3
    ld e, a
    pop hl
    ld c, e
    bit 3, d
    ld [$38ff], sp
    rst $38
    ret


    rst $38
    add hl, bc
    ld a, a
    push hl
    rst $38
    add c
    ccf
    nop
    ld a, a
    add b
    rst $38
    ld l, b
    cp $d8
    cp b
    add h
    rrca
    db $f4
    cp $94
    sbc h
    add h
    inc l
    ld hl, sp-$62
    ld l, b
    rst $38
    rra
    jr nc, jr_033_497b

    ret nc

    ccf
    jr nz, jr_033_49df

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    dec b
    nop
    rrca
    dec c
    reti


    ld a, c
    jp hl


    ld l, c
    jp z, $e91a

    ld a, [bc]
    di
    inc de
    cp $0e
    cp $02

jr_033_497b:
    rst $38
    ld bc, $7fc8
    ret nc

    rst $38
    ret nc

    ld e, a
    and b
    cp a
    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld l, a
    ret z

    jp c, $bf90

    ld h, b
    db $eb
    ld [hl+], a
    xor $21
    db $ec
    jr nz, @-$17

    inc de
    di
    dec d
    or [hl]
    sub h
    call nc, $c07f
    ld a, a
    ld h, b
    cp a
    ldh [$3f], a
    jr nz, @+$01

    ret nz

    ld a, a

jr_033_49a8:
    ret nz

jr_033_49a9:
    ld a, a
    ld b, b
    rst $38
    ret nz

    dec b
    nop
    rrca
    dec e
    push bc
    ld b, b
    rst $08
    ld e, a
    rst $28
    jr nz, jr_033_49a8

    rla
    rst $38
    rrca

jr_033_49bb:
    dec b
    nop
    ld [bc], a
    dec d
    ld d, $93
    db $d3
    cp a
    ld l, $05
    ld [$0511], sp
    rst $38
    pop af
    ld a, a
    ret nz

    dec b
    cp b
    inc d
    dec b
    ret z

    rra
    ld c, l
    dec b
    nop
    rrca
    inc bc
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff
    rst $38
    dec de

jr_033_49df:
    rlca
    ld b, $00
    dec bc
    ret nz

    ld b, $00
    rrca

jr_033_49e7:
    inc e
    ld b, $ff
    ldh a, [$03]
    db $fc
    rlca
    ld hl, sp+$0f
    ld b, $76
    ld bc, $fc0b

jr_033_49f5:
    dec b
    ld hl, sp+$0f

jr_033_49f8:
    ldh a, [$dc]
    jr nc, jr_033_49bb

    jr nz, jr_033_49f5

    jr nz, jr_033_49f8

    jr nz, jr_033_49a9

    inc l
    rst $38
    add hl, hl
    db $ed
    ccf
    ldh [$1f], a
    ld [hl], a
    jr jr_033_49e7

    ld [$08bf], sp
    ld a, a
    ld [$68eb], sp
    rst $38
    jr z, jr_033_4a84

    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    and b
    ccf
    jr nz, jr_033_4aa4

    ld b, b
    ld b, $00
    rrca
    dec c
    cp $02
    cp $02
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fc
    rla
    ld hl, sp+$2f
    cp $2f
    daa
    rst $30
    jr nz, jr_033_4aad

    db $10
    ld a, $0f
    rra
    nop
    ld c, b
    nop
    inc sp
    nop
    ret


    nop
    ldh a, [$e8]
    ld sp, hl
    ld [$116a], sp
    rst $10
    pop hl
    rst $28
    ld bc, $003d
    reti


    nop
    and a
    nop
    ld e, [hl]
    rst $38
    add b
    rst $38
    add b
    ld b, $00
    ld bc, $7f80
    ret nc

    ccf
    add sp, -$01
    add sp, $06
    nop
    rrca
    ld [bc], a
    ld b, $d5
    nop
    ld b, $ff
    di
    rst $28
    ld b, l
    rst $20
    sub a
    add $7e
    rst $28
    xor c
    rst $38
    call nc, $2bef
    db $fc

Jump_033_4a7f:
    dec b
    ld hl, sp+$0a
    nop
    ccf

jr_033_4a84:
    add b
    add [hl]
    ld b, b
    ld b, c
    pop hl
    jp hl


    ldh a, [rNR13]
    ldh a, [$f7]
    db $10
    db $10
    db $10
    di
    inc bc
    cp e
    dec b
    ld h, l
    ld a, h
    db $fc
    pop bc
    pop de
    nop
    rst $08
    nop
    inc bc
    nop
    ld a, l
    nop
    add d
    rst $28
    ld b, h

jr_033_4aa4:
    rst $08
    jp nc, $fdc7

    rst $28
    dec hl
    rst $38
    sub $2f

jr_033_4aad:
    xor b
    ld b, $a6
    nop
    ld b, $00
    rrca
    dec c
    ldh a, [rNR22]
    pop af
    rla
    pop af
    rla
    ldh a, [rNR13]
    ld hl, sp+$08
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    rst $38
    db $e3
    ld a, [hl-]
    pop hl
    dec l
    ld hl, sp-$08
    inc c
    inc c
    ccf
    inc sp
    rst $38
    ret nz

    rst $38
    inc bc
    nop
    ld h, $80
    sub e
    ret nz

    ld d, e
    add b
    add [hl]
    ld b, b
    ld b, b
    cp a
    cp a
    rst $08
    ld e, b
    adc a
    xor b
    ccf
    and b

jr_033_4ae7:
    ccf
    and b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld b, $02
    inc de
    ld b, $41
    rrca
    ld e, $fc
    dec b
    ld b, $9a
    ld [de], a
    ld b, $00
    inc b
    rra
    ld d, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    ld b, $c7
    rra
    inc d
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec h
    ld bc, $03fe
    rst $38
    dec b
    dec sp
    nop
    dec b
    rst $38
    db $f4
    rrca
    rst $38
    cp a
    ldh a, [$f7]
    rst $08
    ret nc

    dec b
    nop
    inc b
    cp a
    add b
    rst $18
    ret nz

    ld l, a
    ld h, b
    sbc a
    ld d, b
    dec b
    nop
    rrca
    inc c
    dec b
    ccf
    ld b, $05
    rst $38
    ldh a, [$7c]
    add e
    rst $38
    dec b
    inc a
    nop
    cp $06
    cp $06
    rst $38
    rlca
    db $fd
    rlca
    rst $38
    ld c, $fd
    dec bc

jr_033_4b49:
    sbc h
    and b
    ld [hl], e
    nop
    rst $08
    nop
    cp a
    nop
    ld a, a
    dec b
    rst $38
    di
    ld d, a
    jr nc, jr_033_4ae7

    jr jr_033_4b49

    ld [$08ff], sp
    rst $30
    dec b
    rst $38
    rst $38
    inc b
    db $fc
    rrca
    db $fc

jr_033_4b65:
    inc e
    dec b
    ld a, [hl]
    ld [$f400], sp
    nop
    db $10
    sub b
    sbc d
    rst $20
    ld h, a
    jp hl


    ld l, $f4
    jr c, @-$0b

    inc [hl]
    db $eb
    dec hl
    rst $38
    adc c
    ld a, a
    ret


    rst $10
    rst $10
    dec d
    rst $10
    sub l
    rla
    inc [hl]
    or l
    ret c

    db $ed
    ld a, b
    call $0005
    rlca
    add b
    dec b
    ld a, [bc]
    ld de, $ff05
    rst $38
    dec d
    jr nc, jr_033_4b65

    ld a, b
    add a
    db $fd
    and e
    cp a
    db $ec
    cpl
    ldh a, [$3f]
    ldh [$3d], a
    ret nz

    ld a, l
    add b
    db $fd
    add c
    ei
    ld bc, $01fb
    rst $10
    ld hl, sp-$71
    or b
    or $d0
    or $d0
    db $fc
    call nc, $e2fc
    xor $a3
    rst $20
    and c
    rst $20
    dec b
    ld a, [bc]
    inc de
    dec b
    dec bc
    rra
    rlca
    ld bc, $8005
    inc de
    dec b
    rst $38
    di
    ld h, c
    ld l, a
    pop hl
    xor a
    pop hl
    daa

Call_033_4bcf:
    pop af
    inc de
    ld sp, hl
    add hl, bc
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld bc, $01ef
    rst $38
    inc bc
    rst $38
    dec c
    db $fd
    ld bc, $80bf
    sbc a
    add b
    add a
    nop
    nop
    and c
    rst $20
    ld b, c
    rst $10
    pop bc
    db $dd
    ld b, c
    db $fd
    add c
    ld sp, hl
    inc bc
    ld a, [c]
    inc bc
    add d
    rlca
    inc b
    dec b
    ld [$1f0f], sp
    dec b
    nop
    ld a, [bc]
    add b
    add b
    ldh [$60], a
    rst $38
    rra
    dec b
    nop
    ld b, $0f
    ld [$707f], sp
    dec b
    ld c, $1f
    jr jr_033_4c12

jr_033_4c12:
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    inc bc
    rra
    ldh [$3f], a
    ldh [$3f], a
    pop hl
    ccf
    pop hl
    ccf
    dec b
    nop
    ld bc, $ff07
    jp $f13f


    rrca
    rst $38
    adc a
    cp $72
    ld a, a
    dec b
    nop
    ld bc, $ffe3
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    cp a
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $f4
    rst $38
    ld a, [$f6ff]
    ld a, h
    rst $38
    rrca
    rst $38
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    db $10
    cp a
    ld d, b
    ccf
    ret nc

    ccf
    ldh [rIE], a
    ret nz

    rst $38
    jr jr_033_4c65

    nop
    add hl, bc
    ld bc, $01ff

jr_033_4c65:
    ld a, [c]
    ld e, $f2
    ld e, $f6
    ld e, $f9
    ld a, c
    ld hl, sp-$68
    cp $86
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld [hl+], a
    ccf
    ld de, $101f
    ld de, $0b08
    adc h
    adc a
    ld sp, hl
    ei
    adc d
    jp z, $fa12

    cp a
    ld e, a
    ld a, a
    xor a
    cp a
    db $ed
    ld a, a
    pop hl
    ld e, a
    db $f4
    ld a, a
    reti


    cp $bf
    ld a, a
    ld a, l
    rst $38
    dec b
    and b
    ld bc, $dfef
    jp z, $b377

    rst $08
    cp $fe
    inc b
    call c, Call_033_7ce7
    add a
    db $fc
    rst $00
    db $fc
    rst $08
    ld hl, sp+$3f
    ld hl, sp-$01
    call z, $f2bf
    ld l, a
    ld a, d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    dec b
    call nz, $0801
    rst $38
    ld [$11fe], sp
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    rra
    jp nz, $873f

    ld a, a
    ld c, $f9
    rla
    rst $30
    ld [hl], c
    pop af
    add h
    db $ec
    add l
    db $fd
    add hl, hl
    ld sp, hl
    ld l, c
    ld sp, hl
    or $d6
    ret c

    cp b
    ret nc

    or b
    xor b
    ld hl, sp+$7f
    ld e, l
    ld a, $23
    cp h
    cp a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld d, a
    ld e, a
    ld l, a
    ld e, e
    ld l, h
    xor a
    rst $38
    add hl, bc
    ret


    ld l, d
    ld [$dd9d], a
    inc d
    db $fc
    ld h, [hl]
    cp $e5
    cp a
    db $e3
    cp a
    ld h, b
    ld a, a
    rst $18
    ld a, [$747f]
    cp a
    or h

Call_033_4d07:
    ccf
    inc [hl]
    ld a, a
    ld l, b
    cp a
    add sp, $7f
    ret nc

    ld a, a
    ret nc

    db $fc
    inc de
    ld sp, hl
    daa
    rst $30
    ld l, $ef
    ld e, b
    rst $18
    ld [hl], b
    cp a
    pop hl
    cp $c3
    db $fd
    add a
    or $97
    ld hl, sp+$1f
    pop hl
    ccf
    adc $7f
    sbc d
    ei
    ld l, d
    db $eb
    and l
    and l
    inc h
    inc l
    ld e, a
    rst $38
    ldh [$e0], a
    ld e, a
    rst $18
    ld h, b
    rst $38
    ret nz

    rst $38
    or b
    rst $38
    ld a, b
    rst $28
    push af
    rst $20
    jp nc, Jump_000_39fe

    ccf
    call nc, Call_000_33df
    rst $38
    ld a, [de]
    cp $6a
    cp $f5
    cp l
    ld a, c
    add hl, sp
    ld h, e
    ld a, a
    rst $38
    db $fc
    ccf
    di
    ld c, $05
    ld b, a
    db $10
    cp a
    ld l, $2f
    daa
    and l
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$9f]
    ldh a, [$fe]
    ld b, $fc
    inc c
    ei
    dec bc
    rst $30
    inc d
    rst $38
    add hl, de
    rst $38
    ld de, $03ff
    rst $38
    inc bc
    ld [hl+], a
    ld a, $e1
    rst $38
    ldh [$7b], a
    sub d
    sbc $32
    cp [hl]
    add hl, sp
    xor a
    ld hl, sp-$11
    db $fc
    rst $00
    ret c

    rst $18
    add a
    cp a
    adc b
    ld hl, sp-$69
    rst $30
    ld e, b
    ld a, a
    jr nz, jr_033_4ddb

    xor b
    cp a
    ld [hl], b
    rst $38
    jp c, $0cdb

    rst $28
    adc b
    cp $4a
    ld a, e
    jp nc, Jump_000_24f2

    db $e4
    xor b
    add sp, $71
    pop af
    cpl
    add sp, $3f
    ldh a, [$7f]
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $18
    ld [hl], b
    rst $38
    jr nc, @+$01

    db $10
    dec b
    nop
    rrca
    inc b
    nop
    rst $38
    nop
    db $fc
    rlca
    cp $03
    dec b
    ld l, h

jr_033_4dd3:
    nop
    cp $03
    db $fc
    rlca
    rst $38
    rlca
    rst $38

jr_033_4ddb:
    rlca
    ld l, b
    rst $28
    ld l, a
    rst $38
    scf
    rst $38
    jr c, jr_033_4dd3

    ld a, a
    rst $00
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add b
    and d
    and d
    xor a
    db $ed
    ld e, a
    ret nc

    cp a
    and b
    rst $38
    ldh [rIE], a
    dec b
    ld e, e
    nop
    nop
    ccf
    ld [hl], b
    adc a
    cp b
    rst $38
    db $fc
    rst $38
    ld a, h
    dec b
    sub $1f
    dec b
    ld b, b
    ld [bc], a
    dec bc
    rst $38
    dec bc
    rst $38
    rst $38
    add hl, de
    ld [bc], a
    rst $38
    rra
    dec bc
    nop
    dec bc
    jr nz, jr_033_4e22

    nop
    rrca
    ld a, [de]
    dec bc
    rst $38
    db $f4
    ld bc, $07ff
    cp $03

jr_033_4e22:
    rst $38
    ld bc, $03fe
    rst $38
    rlca
    push hl
    ld h, a
    push de
    rst $30
    ld c, c
    ld a, a

jr_033_4e2e:
    add b
    sbc a

jr_033_4e30:
    add hl, bc
    rst $20
    add [hl]
    cp a
    jr jr_033_4e30

    db $e4
    pop af
    rst $38
    ldh [rIE], a
    and c
    cp $43
    db $fc
    ld b, a
    db $fc
    call nz, Call_000_3bfa
    ld h, c
    and a
    pop af
    db $d3
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_033_4e2e

    jr nc, jr_033_4e70

    db $10
    rst $38
    jr nc, jr_033_4eb4

    ldh a, [rIE]
    ld h, b
    dec bc
    nop
    rrca
    rrca
    cp $00
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rNR21]
    ldh a, [$3e]
    db $fc
    rrca
    ld a, [$820a]
    ld [$fb89], a
    ld e, l
    ld a, [hl]

jr_033_4e70:
    jr nc, jr_033_4eb0

    ld a, d
    ld e, e
    dec l
    cpl
    rlca
    rlca
    dec b
    rst $00
    ld sp, hl
    xor a
    ld sp, hl
    cp e
    and d
    ld [hl+], a
    ld [c], a
    and d
    jp nc, $ff72

    rst $28
    rst $38
    ld [$daf3], a
    rst $38
    ld b, b
    rst $38
    ldh [$5f], a
    ldh a, [rVBK]
    ld hl, sp+$2f
    db $ec
    rst $18
    db $f4
    rst $28
    ld [$fadf], a
    dec bc
    nop
    rrca
    dec c
    ld sp, hl
    add hl, bc
    ld a, [c]
    ld [de], a
    ldh a, [rNR10]
    dec bc
    inc [hl]
    db $10
    db $f4
    inc d
    dec bc
    ld a, [hl-]
    db $10
    ld h, d
    di
    sbc a
    sbc a

jr_033_4eb0:
    ld bc, $1f7f
    cp a

jr_033_4eb4:
    daa
    ld a, $5f
    ld h, c
    adc a
    di
    adc [hl]
    jp nc, $e22b

    rst $00
    jp nz, $d287

    ld c, e
    inc bc
    ld d, h
    dec b
    ld a, h
    dec a
    pop bc
    ret nz

    ccf
    ccf
    rst $18
    ld a, [$fadf]
    db $db
    cp $af
    db $fc
    xor a
    db $fc
    rst $18
    cp h
    rst $10
    or h
    di
    ld d, $0b
    nop
    rrca
    dec c
    db $f4
    inc d
    push af
    dec d
    dec bc
    sub d
    ld [de], a
    ld sp, hl
    add hl, de
    ld sp, hl
    cp c
    pop af
    pop af
    rst $00
    rst $38
    ld b, a
    cp $27
    cp [hl]
    ld e, $bd
    ld c, $b5
    ld a, [bc]
    or l
    ld a, [bc]
    cp l
    inc b
    rst $30
    rst $00
    call Call_033_4d07
    daa
    adc l
    cpl
    jp z, Jump_033_5a2f

    cpl
    ld e, d
    ccf
    ld c, d
    ld a, $4a
    di
    ld d, $f3
    ld d, $b3
    ld d, $fb
    ld c, [hl]
    ld a, c
    ld c, a
    cp b
    adc e
    cp $8f
    rst $18
    dec b
    dec bc
    nop
    rlca
    add b
    ld a, a
    ldh [rIE], a
    add b
    rst $38
    inc bc
    cp $06
    rst $38
    ld bc, $000b
    ld b, $11
    ld de, $0101
    add e
    add e
    rst $38
    ld a, h
    rst $18
    pop bc
    dec bc
    nop
    ld [bc], a
    ld c, $f7
    ld a, [bc]
    ld a, [c]
    adc b
    or $e8
    push af
    ld l, a
    cpl
    rst $28
    dec bc
    ccf
    ld bc, $4a3f
    rra
    ld [$eb1f], a
    ccf
    call nc, $f4fd
    rst $38
    inc d
    rst $38
    ld [$00ff], sp
    sbc a
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    ret nz

    dec bc
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
    add hl, de
    rlca
    rst $38
    dec bc
    inc b
    nop
    add hl, bc
    ret nz

    rst $38
    ldh [rDIV], a
    nop
    rlca
    inc bc
    db $fc
    rra
    jp hl


    ld [hl-], a
    inc b
    nop
    rlca
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    inc b
    nop
    rrca
    inc c
    ld bc, $0cfc
    ld hl, sp+$1b
    ldh a, [$1f]
    rst $28
    rrca
    or $19
    rst $38
    ld [hl], $cf
    ld b, [hl]
    adc a
    jp hl


    ld a, a
    ld h, b
    ccf
    or b
    rra
    ldh a, [$ef]

jr_033_4fa2:
    ldh [$df], a
    jr nc, @+$01

    ret c

    rst $20
    call nz, $2fe3
    db $eb
    inc [hl]
    db $e3
    jr z, jr_033_4fa2

    dec e
    di
    dec d
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    db $fd
    dec bc
    db $fd
    dec bc
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    inc b
    nop
    rrca
    rlca
    cp $03
    inc b
    ret nc

    ld [bc], a
    db $fc
    dec b
    db $fd
    rlca
    ld_long a, $ff03
    ld [bc], a
    inc c
    ld l, a
    dec hl
    xor a
    ld e, a
    db $db
    ld c, h
    ld l, e
    ld b, a
    call nz, $e363
    db $fc
    db $fc
    ldh a, [$f0]
    ld h, b
    db $ed
    xor a
    rst $28
    db $f4
    or l
    ld h, a
    and a
    call nz, $8d45
    adc a
    ld a, [hl]
    ld a, a
    rra
    ld e, $ff
    adc d
    rst $38
    ld [$ea3f], a
    rst $38
    jp z, Jump_033_4a7f

    ld a, a
    jp z, $caff

    rst $38
    sbc [hl]
    inc b
    nop
    rrca
    dec c
    db $fd
    inc c
    or $18
    push af
    ld h, e
    pop de
    add a
    rst $00
    and [hl]
    xor a
    sbc b
    rst $18
    ld e, b
    rst $38
    add hl, hl
    ldh a, [$b0]
    ld hl, sp-$68
    rst $38
    inc a
    db $e3
    daa
    ldh [$2b], a
    ret nz

    ld c, h
    add b
    sub a
    ld b, h
    ld e, [hl]
    rra
    ld a, [de]
    ld a, $32
    rst $38
    ld a, c
    adc a
    reti


    rrca
    ld hl, sp+$07
    ld l, h
    inc bc
    adc $07
    rra
    ld h, e
    ld [hl], l
    inc hl
    push af
    ld h, e
    xor l
    rra
    sbc $f3
    cp $ef
    ld sp, $35e3
    db $e3
    dec sp
    inc b
    or [hl]
    rrca

jr_033_5049:
    ld [$ff00], sp
    ld bc, $01ff
    cp $02
    cp $02
    rst $38
    rlca
    cp h
    dec a
    jp $81c3


    inc b
    sbc d
    ld de, $ff7c
    rst $38
    db $e3
    rst $38
    and b
    rst $18
    ld d, b
    sbc a
    sub b
    ccf
    jr z, jr_033_5049

    ld hl, sp+$6f
    ld hl, sp+$49
    db $eb
    ld a, h
    db $fd
    cp $82
    cp $06
    ld a, [$f90e]
    rrca
    ei
    inc c
    ei
    inc e
    rst $38
    inc e
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    inc b
    inc a
    nop
    cp a
    ld h, b
    ld a, a
    ret nz

    inc b
    ld l, [hl]
    ld c, $fe
    inc b
    rst $38
    ld sp, hl
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp d
    jr c, jr_033_50a0

jr_033_509c:
    nop
    inc b
    rst $30
    sbc h

jr_033_50a0:
    xor e
    xor b
    ld d, a
    db $fc
    xor a
    xor b
    inc b
    ld hl, sp+$15
    jr jr_033_509c

    rra
    rst $20
    jr c, jr_033_50a0

    ld a, $fc
    rrca
    rst $38
    inc bc
    inc b
    nop
    nop
    inc b
    or b
    ld bc, $ff40
    jr nz, @+$01

    db $10
    rst $38
    ldh a, [rDIV]
    nop
    rrca
    ld bc, $0240
    inc b
    rst $38
    nop
    rst $38
    ld e, $bf
    ld hl, $7e7f
    rst $38
    ld bc, $04ff
    rst $38
    ldh a, [rSB]
    rst $38
    nop
    cp $02
    db $fd
    adc h
    rst $38
    ld [hl], h
    ei
    xor b
    di
    ld d, [hl]
    rst $20
    xor a
    ret z

    ld e, [hl]
    inc b
    ld a, [bc]
    ld bc, $2104
    ld b, $80
    rst $38
    nop
    cp $04
    ld hl, $0106
    cp $02
    inc b
    inc l
    nop
    ld a, a
    ld h, e
    rst $38
    ld e, h
    cp a
    dec hl
    sbc a
    call nc, $eacf
    daa
    push af
    rst $38
    nop
    rst $38
    ldh a, [$fb]
    ld [$fcfd], sp
    inc b
    jr nz, jr_033_5116

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b

jr_033_5116:
    rst $38
    dec b
    db $db
    rrca
    cp h
    cpl
    di
    ld a, a
    pop hl
    cp e
    ld hl, sp-$62
    ld hl, sp-$74
    rst $30
    rra
    db $e3
    ld a, [hl-]
    db $e3
    ld [hl-], a
    rst $38
    sbc [hl]
    rst $38
    inc d
    rst $38
    sub a
    rst $38
    add b
    rst $38
    add c
    ld a, [hl]
    ld b, e
    rst $38
    jp Jump_000_07fc


    cp $09
    cp $09
    ldh a, [$9f]
    cp $02
    cp $02
    db $fd
    add l
    rst $38
    add [hl]
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    di
    ccf
    ld a, [c]
    ccf
    ld h, d
    rst $18
    pop af
    adc a
    cp c
    adc a
    sbc c
    cp $f3
    rst $38
    ld d, c
    rst $38
    db $d3
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    or a
    ldh [$7b], a

jr_033_516b:
    add sp, -$61
    db $fc
    rrca
    cp d
    ld [c], a
    or a
    db $f4
    or h
    db $ed
    xor l
    rst $38
    or e
    rst $38
    and b
    rst $38
    ld d, b
    rst $38

jr_033_517d:
    ld d, b
    rst $38
    jr z, jr_033_517d

    sub [hl]
    cp $8b
    db $fd
    ld h, a
    cp $9f
    ld a, [$fe77]
    rrca
    rst $38
    ld bc, $03fe
    ld h, b
    ld a, a
    dec a
    dec a
    rra
    sub [hl]
    dec bc
    call $f80f
    ld [$0bfb], sp
    rst $38
    sbc h
    ei
    inc c
    db $fc
    ld a, b
    ld a, c
    pop af
    db $d3
    and b
    ld h, a
    ldh [$3f], a
    jr nz, jr_033_516b

    and c
    rst $38
    ld [hl], d
    cp a
    ld a, [hl]
    db $d3
    cp $a2
    ld a, a
    call $f3ff
    cp a
    call c, $e0ff
    inc b
    inc l
    nop
    adc a
    jp c, $5a5f

    ld l, a
    ld l, d
    rst $38
    sbc d
    rst $38
    ld a, [bc]
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    jr z, @+$01

    dec hl
    db $fd
    rla
    ei
    rrca
    db $f4
    ld e, $fc
    ld e, $fc
    ld b, $ff
    inc bc
    inc b
    ld e, [hl]
    ld bc, $df35
    ld a, [$ea4f]
    ld c, a
    call z, Call_033_787f
    cp a
    and b
    rst $38
    ld h, b
    rst $30
    db $ec
    and e
    rst $00
    call nc, $de4d
    ld a, d
    and $23
    and $3e
    jp nz, $c167

    ld [hl], e
    rst $18
    ld l, [hl]
    adc a
    jp $6457


    rst $38
    or h
    rst $08
    adc b
    rst $18
    add sp, -$71
    call nz, $841f
    rst $38
    add c
    rst $38
    ld e, c
    rst $30
    cp a
    db $e4
    xor [hl]
    db $e4
    ld h, [hl]
    db $fc
    inc a
    ei
    dec bc
    rst $38
    inc c
    rst $38
    xor b
    ld a, a
    ret nc

    cp a
    ldh [$5f], a
    ldh a, [$7f]
    ldh a, [$7f]
    ret nz

    inc b
    ld l, $00
    inc b
    ld a, [hl]
    rra
    nop
    rlca
    ei
    inc c
    db $fd
    add hl, bc
    cp $05
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $02
    di
    db $fc
    sbc $3e
    inc b
    ld a, [bc]
    ld [de], a
    ld e, a
    ld b, b
    cp a
    ldh [$1f], a
    ret nc

    rst $38
    jr @-$0f

    db $f4
    rst $30
    ld a, [de]
    ei
    dec c
    rst $38
    ld b, $fd
    ld b, $ff
    dec c
    ei
    dec bc
    inc b
    ld h, $07
    add b
    rst $38
    add b
    ld a, a
    ret nz

    inc b
    ld a, [hl]
    rra
    ld [bc], a
    inc b
    ld hl, $0108
    rst $38
    rlca
    ld hl, sp+$09
    rst $38
    rrca
    inc b
    jr nz, @+$06

    rra
    ld [hl], b
    adc a
    ld hl, sp+$1f
    ret c

    inc b
    ld a, [bc]
    ld de, $2104
    ld bc, $13f0
    ldh a, [rNR22]
    pop af
    dec d
    ldh [$27], a
    ldh [$2f], a
    rst $38
    rra
    inc b
    ld a, [bc]
    nop
    inc b
    ld a, d
    ld de, $7f80
    ld h, b
    rra
    ldh a, [rIE]
    ldh a, [rDIV]
    ld a, [hl]
    rra
    ld bc, $0240
    inc c
    rst $38
    inc c
    rst $38
    db $f4
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    rrca
    db $f4
    dec sp
    push af
    ld c, e
    di
    adc d
    db $e3
    ld [bc], a
    jp $8103


    ld bc, $e2e3
    rst $38
    add b
    rst $38
    add b
    inc c

jr_033_52bf:
    nop
    dec b
    inc c
    rlca
    nop
    nop
    rst $38
    jr jr_033_52bf

    rla
    ld a, [$fe0e]
    ld c, $f9
    rrca
    push af
    rra
    db $fc
    rra
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nc

    cpl

jr_033_52dc:
    jr z, @-$5f

    sbc b
    ld c, a
    call z, $8a8b
    inc c
    inc h
    rlca
    inc c
    rst $38
    ld a, [c]
    dec b
    rst $38
    ld b, $bf
    dec b
    cp $43
    ld a, a
    ld b, h
    db $fd
    push bc
    rst $38
    and l
    rst $38
    and e
    rst $20
    inc h
    rst $38
    jr c, jr_033_52dc

    ldh a, [$3f]
    ldh [rIE], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    cp a
    db $e3
    cp $03
    db $fc
    rlca
    ld a, [$fbcb]
    cp d
    di
    ld d, [hl]
    ld a, [c]
    ld a, $ee
    rst $28
    ld h, $28
    cp $83
    ld a, l
    rst $00
    cp a
    and a
    cp a
    cp d
    sbc a
    call nc, $f89f
    rst $28
    xor $c9
    add hl, hl
    rrca
    call z, $fc17
    rst $30
    rst $28
    cp b
    rst $38
    rst $38
    ld c, [hl]
    db $fd
    rrca
    db $fd
    rlca
    ei
    adc a
    inc c
    nop
    nop
    ei
    nop
    rst $38
    add h
    db $fd
    ld b, h
    ld a, a
    ld c, d
    rst $10
    ld e, d
    and a
    cp d
    rst $38
    and d
    rst $18
    or c
    db $eb
    sbc c
    rst $20
    ld e, h
    rst $30
    ld c, h
    rst $30
    inc l
    ei
    ld h, $fb

jr_033_5356:
    ld d, $9c
    ld [hl], h
    ret c

    ld a, [hl-]
    add sp, $29
    ret z

    rst $28
    rst $00
    ld [hl], a
    ld hl, sp+$3c
    cp $07
    db $fd
    ld b, $07
    xor a
    rlca
    ld l, l
    jr nz, jr_033_5356

    db $e4
    rst $08
    call nc, $8f9c
    call z, $9f84
    add e
    cp a
    ret nz

    ld [$6cc0], a
    ld [$4e2f], sp
    rst $20
    ld d, a
    ld [hl], e
    ld [c], a
    ld h, [hl]
    ld b, d
    di
    add e
    ld a, [$5c73]
    scf
    cp c
    cpl
    add hl, hl
    daa
    xor $c7
    call c, $783f
    rst $38
    ret nz

    ld a, a
    ret nz

    rst $30
    sbc d
    rst $30
    ld a, [de]
    rst $28
    ld [hl-], a
    rst $28
    inc [hl]
    rst $18
    ld h, h
    rst $18
    ld l, b
    cp a
    ret z

    cp a
    ret nc

    db $fd
    inc de
    db $fd
    dec bc

jr_033_53ab:
    cp $0b
    rst $38
    dec b
    db $fd
    inc b
    cp $04
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp-$61
    rst $38
    jp hl


    ld [hl], l
    rst $08
    and a
    rst $38
    rst $38
    ld a, l
    ld a, [hl]
    db $d3
    db $fd
    rst $30
    add b
    cp [hl]
    add b
    cp [hl]
    jr nz, jr_033_53ab

    ld hl, sp-$1a
    cp [hl]
    ld e, b
    ld l, a
    xor [hl]
    bit 1, a
    adc d
    xor a
    inc bc
    ld a, [$fb02]
    add hl, bc
    rst $30
    ccf
    rst $08
    ei
    dec [hl]
    db $ed
    db $eb
    and a
    db $e4
    and e
    db $eb
    rst $38
    ld b, c
    ccf
    di
    cp $2f
    ld e, l
    rst $20
    set 7, [hl]
    cp $7c
    db $fd
    sub a
    ld a, a
    sbc $7f
    sub b
    ld a, a
    and b
    rst $38
    and b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    inc c
    ld d, b
    dec c
    nop
    cp $06
    db $fd
    dec b
    ld hl, sp+$09
    ldh a, [rNR13]
    di
    rra
    pop af
    dec e
    di
    inc de
    rst $38
    dec e
    ld a, [bc]
    ld a, a
    ld c, $db
    adc a
    jp z, $eacf

    rst $08
    ld a, d
    rst $28
    ld a, d
    rst $38
    ld e, c
    rst $38
    inc d
    and b
    db $fc
    pop hl
    or a
    db $e3
    or a
    rst $20
    xor l
    rst $20
    cp l
    push hl
    cp l
    rst $38
    ld a, [hl-]
    db $fd
    ld b, [hl]
    rst $38
    ldh [$1f], a
    db $10
    rrca
    ld l, b
    adc a
    cp b
    rrca
    ld a, b
    rra
    ldh a, [rIE]
    ldh [$bf], a
    ld l, b
    inc c
    ld a, [hl]
    ld e, $0c
    ld b, $01
    inc c
    push hl
    inc d
    nop
    cp $11
    db $fc
    adc e
    ld sp, hl
    sbc a
    and $66
    add b
    add a
    inc bc
    rst $38

jr_033_545f:
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    add e
    inc c
    jr nz, jr_033_5468

jr_033_5468:
    ld a, a
    inc c
    ld [hl], a
    db $10
    inc c
    inc hl
    ld [bc], a
    add [hl]
    ld sp, hl
    dec bc
    db $fc
    rrca
    rst $38
    inc bc
    inc c
    nop
    inc b
    ld a, a
    ret c

    cp a
    or h
    rlca
    db $fc
    inc c
    db $fc
    ld de, $290c
    cpl
    ld [bc], a
    ld b, b
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    daa
    rrca
    inc de
    rra
    ldh [rNR52], a
    ret c

    rrca
    ldh a, [$1f]
    ldh [$3e], a
    ld a, a
    ld b, b
    cp a
    jr nz, jr_033_545f

    ldh [$37], a
    ldh [$6f], a
    ret z

    dec hl
    ld a, [$fc06]
    ld [bc], a
    cp d
    inc b
    ld h, $0b
    add b
    inc b
    ld h, $0f
    dec e
    ldh [$3e], a
    ld h, b
    inc a
    add b
    cp c
    ret nz

    ld a, a
    ret nz

    ld a, l
    ldh [$3c], a
    ld h, b
    dec a
    add b
    cp a
    nop
    cp l
    ld bc, $039f
    adc $03
    ld a, [hl]
    ld bc, $015f
    rra
    inc bc
    ld e, [hl]
    ld bc, $04ff
    xor [hl]
    rrca
    rra
    inc b
    jp nc, Jump_033_7f0b

    cp $1f
    rst $38
    ld bc, $03fa
    db $fd
    ld bc, $00ff
    cp $00
    rst $38
    ld bc, $fe07
    rra
    ld hl, sp+$3f
    ldh [$2f], a
    ldh [$1f], a
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$7f], a
    ret nz

    inc b
    ld h, $0f
    ld l, $01
    cp $04
    daa
    add hl, bc
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    cp a
    inc b
    daa
    rrca
    ld c, l
    inc b
    rst $18
    rra
    inc d
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    inc de
    ld bc, $02fe
    db $fd
    rlca
    ld sp, hl
    rrca
    di
    ccf
    dec b
    nop
    dec b
    add b
    dec b
    nop
    ld bc, $0520
    nop
    rrca
    inc d
    dec b
    ld de, $050f
    rrca
    db $e3
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$3f
    db $fc
    rra
    db $fc
    rra
    cp $0f
    cp $cf
    dec a
    rst $20
    rst $18
    ret nc

    ccf
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    ld a, a
    add sp, $17
    db $f4
    ld a, a
    ld hl, sp+$05
    jr c, jr_033_5559

    dec b
    rst $38
    db $f4

jr_033_5559:
    inc c
    di
    ld [de], a
    dec b
    db $10
    rrca
    dec b
    rst $38
    ld bc, $03fe
    cp $03
    db $fd
    rlca
    pop af
    ccf
    rst $08
    ld a, a
    cp a
    di
    ld a, h
    rst $08
    ld [hl], e
    rst $18
    rst $28
    cp h
    rst $18
    ldh a, [$bf]
    ldh [$df], a
    or $df
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    dec b
    nop
    dec b
    ld c, $f1
    ld sp, $4ccc
    sbc [hl]
    sub d
    cp a
    and e
    rst $38
    call nz, Call_033_44ff
    rst $38
    ld [hl+], a
    pop hl
    ld hl, $21e1
    db $e3
    db $e3
    rra
    ld e, $3f
    ld [hl+], a
    rst $38
    push bc
    rst $38
    ld a, [bc]
    rst $38
    scf
    dec b
    nop
    ld bc, $ef10
    ld l, b
    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    db $fd
    rlca
    dec b
    jr nz, jr_033_55c5

    db $fc
    rlca
    rst $38
    inc bc
    dec b
    nop
    ld [bc], a
    cp a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    adc h
    rst $38

jr_033_55c5:
    ld d, $f9
    add hl, hl
    ld sp, hl
    add hl, hl
    rst $38
    scf
    rst $38
    jr @+$01

    inc h
    rst $38
    inc h
    rst $38
    jr jr_033_55da

    jp nz, $ff04

    rla
    rst $38

jr_033_55da:
    ld [$17ff], sp
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    pop af
    nop
    db $ed
    inc b
    rst $08
    call z, Call_033_4bcf
    rst $38
    db $fc
    rst $18
    jr c, @-$17

    inc e
    di
    ld c, $93
    ld c, $99
    rlca
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld [hl], b
    rst $28
    jr z, @+$01

    db $10
    dec b
    nop
    rrca
    inc b
    ld e, c
    rst $38
    ld c, [hl]
    rst $38
    jr c, @+$01

    ld bc, $0005
    ld bc, $af70
    ld hl, sp-$01
    ld [bc], a
    cp $02
    cp $84
    ld a, a
    call nz, $84fd
    db $fd
    inc b
    rst $38
    dec de
    push af
    dec l
    daa
    nop
    ld l, a
    ld b, e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    sbc $ff
    db $fc
    sbc a
    sub b
    cpl
    jr nc, @-$05

    rlca
    dec b
    ret nz

    inc d
    pop af
    rrca
    db $e3
    ld e, $c3
    ld a, $05
    or [hl]
    rrca
    ld bc, $9605

jr_033_5643:
    inc de
    dec b
    rst $38
    pop af
    ld [hl], a
    call c, $cefb
    ld a, a
    ld h, [hl]
    cp e
    cp [hl]
    rst $10
    call c, Call_000_38ff
    dec b
    nop
    nop
    push hl
    dec a
    ld hl, sp+$18
    ld hl, sp+$08
    rst $38
    rlca
    dec b
    nop
    inc b
    ld c, [hl]
    ld [hl], c
    ld b, b
    ld a, a
    rst $38
    cp a
    dec b
    nop
    ld b, $07
    db $fc
    ccf
    ld hl, sp+$05
    and $07
    dec b
    rst $38
    db $fd
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rla
    rrca
    rst $30
    jr c, jr_033_5643

    ld a, h
    ld [bc], a
    nop
    add hl, bc
    add b
    rst $38
    add b
    ld [bc], a
    nop
    rrca
    jr jr_033_568e

    rst $38
    ld a, [c]

jr_033_568e:
    ld bc, $01ff
    ld [bc], a
    ld l, [hl]
    inc bc
    ld [bc], a
    ld [hl], c
    ld bc, $c08f
    dec sp
    add l
    cp c
    pop af
    rst $38
    ret nc

    dec hl
    db $e3
    sbc e
    and [hl]
    dec sp
    jp nc, $f1fd

    ld [bc], a
    ld a, $01
    ret nz

    cp a
    ld h, b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    add $ff
    sbc h
    ld [bc], a
    ld b, b
    rrca
    ld e, $02
    rst $38
    ei
    ei
    ld [hl], h
    rst $38
    ld [hl], a
    jp hl


    ld a, a
    ei
    ld l, h
    ld a, [$d76f]
    ei
    or a
    sbc $f7
    ld a, h
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    and b
    rst $38
    ret nz

    ld [bc], a
    ld a, $0f
    jr nz, jr_033_56db

    rst $38
    db $f4

jr_033_56db:
    rlca
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    db $fd
    rlca
    db $fd
    rlca

jr_033_56e6:
    cp $03
    rst $28
    inc a
    rst $28
    ld a, b
    rst $38
    sbc $ff
    call nc, Call_033_58ff
    rst $18
    ld l, b
    rst $38
    jr c, jr_033_56e6

    cp h
    ld [bc], a
    and b
    rrca
    dec l
    ld [bc], a
    ld [hl], d
    ld bc, $ff02
    ld hl, sp+$14
    rst $30
    ld a, [de]
    rst $38
    ld a, [bc]
    ei
    dec c
    db $fd
    ld b, $fe
    inc bc
    ld [bc], a
    sub b
    add hl, de
    add b
    rst $38
    ld b, b
    ld a, a
    and b
    cp a
    ret c

    ld [bc], a
    ld d, b
    rra
    ld l, $02
    rst $38
    ei
    rst $18
    ld h, a
    rst $30
    add hl, sp
    rst $38
    ld c, $02
    nop
    rlca
    ldh a, [rIE]
    ret nz

    ld [bc], a
    nop
    rrca
    add hl, bc
    ld b, b
    ld [bc], a
    ld b, $ff
    ld b, $ff

jr_033_5734:
    rst $38
    ld c, l
    ld b, $3d
    rrca
    add hl, hl
    db $10
    rst $38
    jr jr_033_5744

    inc a
    rrca
    inc [hl]
    ld bc, $02fe

jr_033_5744:
    cp $02
    xor $22
    cp $52
    rst $38
    jr jr_033_5734

    inc h
    rst $00
    call nz, $0203
    inc bc
    ld [hl-], a
    inc bc
    ld a, d
    inc bc
    ld a, [$f447]
    ld b, $3c
    ld [bc], a
    xor a
    ld [hl], b
    rst $38
    ld d, b
    xor a
    ld [hl], b
    rst $38
    nop
    rst $28
    jr nz, jr_033_576e

    inc a
    rrca
    ld [de], a
    inc b
    rst $38
    inc c

jr_033_576e:
    rst $38
    inc c
    ei
    ld c, $ff
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld d, a
    ei
    ld c, h
    rst $20
    jr c, @+$01

    db $10
    rst $38
    db $10
    rst $30
    inc l
    rst $38
    ld e, h
    cp $ad
    rrca
    ld l, h
    di
    cp $f9
    ld b, a
    ld d, b
    rst $28
    add h
    ld a, e
    ld a, c
    add a
    pop hl
    rst $38
    sbc a
    push af
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    ld b, $3c
    rrca
    inc de
    db $fd
    dec bc
    cp $04
    cp $05
    rst $38
    ld [bc], a
    rst $38
    ld bc, $9806
    ld de, $ff00
    ld c, e
    cp l
    adc d
    db $fd
    sbc c
    ld a, a
    jp hl


    rst $28
    db $dd
    cp $b4
    rst $18
    ld d, h
    rst $38
    inc [hl]
    sbc a
    db $76
    adc e
    ld a, a
    ld [de], a
    rst $30
    pop af
    ld e, a
    inc de
    ld e, [hl]
    and a
    xor h
    rlca
    ld e, [hl]
    dec c
    cp e
    rst $38
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    ld b, $04
    ld d, $06
    inc a
    rrca
    dec e
    rst $30
    inc b
    ei
    ld c, $fd
    dec bc
    ei
    ld d, $f3
    ld e, $ff
    inc c
    ld b, $3c
    nop
    sbc c
    ld [hl], a
    sub e
    ld a, [hl]
    di
    cp $ef
    inc e
    ld b, $3c
    rrca
    dec d
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    ld hl, sp+$01
    cp $03
    dec b
    nop
    dec b
    ld [hl], b
    adc a
    ld hl, sp+$07
    call z, $ba03
    dec b
    nop
    rrca
    ld b, $05
    rst $38
    ldh a, [$80]
    ld a, a
    pop bc
    dec b
    nop
    add hl, bc
    ret nz

    rst $38
    jr nz, jr_033_5824

    nop
    add hl, bc
    nop
    rst $38
    nop

jr_033_5824:
    cp $03
    db $fc
    rlca
    db $fc
    ld b, $fc
    ld b, $f8
    rrca
    dec b
    ld l, b
    ld [bc], a
    inc bc
    ld a, a
    ld [bc], a
    ld a, a
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $38
    dec b
    ld a, b
    ld [bc], a
    db $fc
    rlca
    db $fc
    add $fe
    inc sp
    ld a, a
    adc a
    rst $38
    add b
    dec b
    adc b
    dec b
    ld bc, $c6ff
    rst $38
    ld sp, hl

Call_033_5850:
    rst $38
    rlca
    dec b
    nop
    inc bc
    and b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    dec b
    ld c, d
    inc bc
    db $10
    dec b
    ld d, b
    dec bc
    ld b, b
    ld hl, sp+$0f
    db $fc
    rlca
    dec b
    jp nz, $fe00

    inc bc
    cp $03
    rst $38
    ld bc, $00ff
    rrca
    rst $38
    rlca
    rst $10
    inc bc
    db $db
    ld [bc], a
    rst $08
    inc bc
    rst $20
    inc bc
    di
    rlca
    db $fd
    adc a
    ld hl, sp-$02
    add c
    ld l, a
    sbc a
    or a
    ld a, b
    rst $08
    ldh a, [$bf]
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    cp a
    pop bc
    rst $38
    ldh a, [rIE]
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld h, c
    cp a
    sub c
    ld a, a
    ld c, c
    rst $38
    add hl, bc
    db $fd
    sub e
    rst $38
    ld [$0bff], sp
    rst $38
    inc e
    rst $38
    ld bc, $06ff
    rst $38
    ld bc, $04ff
    rst $38
    inc bc
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ldh [rIE], a
    db $10
    rst $38
    adc b
    rst $38
    ld [hl], b
    dec b
    xor [hl]
    dec c
    nop
    rst $38
    ld [hl], b
    dec b
    ld d, b
    ld a, [bc]
    cp a
    ret nz

    rst $18
    ld h, b

jr_033_58ce:
    rst $18
    ld h, b
    rst $28
    jr nc, jr_033_58ce

    inc a
    rst $00
    ld e, a
    jp z, $927e

    rst $30
    ei
    and $c7
    ld a, h
    rst $38
    jr c, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    add d
    rst $38
    db $fc
    ld l, a
    db $fc
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    dec c
    ei
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    xor d
    cp $aa
    db $fd
    xor c
    rst $38
    adc b
    rst $38
    ld a, b
    rst $38

Call_033_58ff:
    jr nz, @+$01

    sub b
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    ld [hl], b
    dec b
    ld c, [hl]
    ld c, $05
    inc c
    nop
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    add e
    rst $38
    rst $38
    ld a, h
    rst $38
    nop
    ld [de], a
    rst $38
    ld [hl+], a
    rst $28
    inc h
    rst $38
    ld b, a
    rst $38
    rst $08
    ld hl, sp+$05
    jr nc, jr_033_5939

    ld a, a
    push de
    ld a, a
    push bc
    rst $38
    adc c
    rst $38
    add hl, bc
    cp $12
    rst $38
    ld [de], a
    db $fd
    inc h
    rst $38
    ld b, h
    ld a, a
    add hl, hl

jr_033_5939:
    ld a, d
    jr z, @+$01

    inc l
    rst $18
    ld c, h
    rst $38
    ld c, l
    rst $38
    ld c, d
    rst $38
    ld c, b
    rst $38
    sub b
    ld a, a
    jr nz, @+$01

    and b
    rst $38
    ret nz

    dec b
    and [hl]
    ld bc, $d905
    rra
    dec d
    ld bc, $0005
    add hl, bc
    adc h
    rst $38
    inc d
    rst $38
    rst $20
    dec b
    nop
    rlca
    ldh [rTIMA], a
    sub $1f
    dec bc
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    dec de
    rrca
    rlca
    ld a, $e1
    ccf
    ldh a, [$1f]
    rst $38
    rlca
    ld a, [$e91a]
    add hl, hl
    rst $00
    ld b, a
    db $e4
    daa
    ei
    rra
    or $9e
    ld a, b
    adc $ff
    ldh a, [$2f]
    inc l
    ld c, e
    ld c, d
    pop af
    pop af
    inc de
    ld a, [c]
    rst $28
    db $fc
    or a
    inc a
    rrca
    add hl, sp
    dec b
    ld [hl], b
    ld [$fec3], sp
    rlca
    db $fc
    dec b
    ld a, [de]
    rrca
    dec c
    cp $1f
    pop af
    ld de, $d205
    nop
    ld sp, hl
    add hl, bc
    dec b
    ret c

    nop
    ld hl, sp+$08
    dec a
    db $ed
    sbc d
    ld hl, sp+$57
    ld [hl], d
    ld a, d
    ld a, b
    ld d, l
    ld e, l
    ld d, c
    ld e, l
    ld hl, $a123
    and e
    ld e, [hl]
    db $db
    xor h
    adc a
    ld [hl], l
    daa
    xor a
    adc a
    ld d, l
    ld e, l
    ld b, l
    ld e, l
    ld b, d
    ld h, d
    ld b, d
    ld h, d
    ccf
    db $fc
    rst $00
    call nz, Call_033_4447
    ld b, a
    ld b, h
    ld c, a
    ld c, b
    dec b
    ld [$8f10], sp
    adc b
    dec b
    ld a, [de]
    rrca
    dec c
    db $fc
    inc b
    dec b
    jr nc, @+$12

    rst $38
    rlca
    rst $38
    inc b
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    and d
    and [hl]
    ld h, d
    ld l, [hl]
    ld [hl+], a
    ld a, $44
    ld a, h
    ret z

    ld hl, sp+$48
    ld e, b
    cp $f6
    sbc a
    pop hl
    ld [hl+], a
    ld [hl-], a
    inc hl
    dec sp
    ld [hl+], a
    ld a, $11
    rra
    add hl, bc
    rrca
    add hl, bc
    dec c
    ccf
    scf
    db $fc
    jp $909f


    rra
    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    sub b
    ld a, a
    ld l, b
    rst $38
    xor b
    rst $38
    add sp, $05
    ld a, [de]
    rrca
    ld c, $04
    rst $38
    inc bc
    dec b
    ld a, [de]
    ld [$c0be], sp
    and b
    pop bc

Jump_033_5a2f:
    adc [hl]
    adc $9b
    reti


    sbc l
    jp c, $cd8c

    jp $c063


    ld a, b
    ld a, $81
    ld [bc], a
    pop bc
    jr c, jr_033_5a7a

    db $ec
    call $ad5c
    sbc b
    ld e, c
    pop hl
    db $e3
    ld bc, $ff0f
    sub b
    rst $38
    ldh [rIE], a
    add b
    dec b
    db $c4, $13, $05
    dec de
    rrca
    jr nz, @-$1e

    ccf
    ld sp, hl
    add hl, de
    cp $06
    cp $02
    rst $38
    inc bc
    rst $38
    ld bc, $1a05
    nop
    inc bc
    cp $cf
    call z, Call_000_303f
    ccf
    jr nz, jr_033_5aef

    ld h, b
    rst $38
    ret nz

    dec b
    ld a, [de]
    rrca
    ld de, $0240
    inc b

jr_033_5a7a:
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    ld e, a
    rrca
    ld c, l
    inc b
    ld [hl], a
    rrca
    inc bc
    ld b, $ff
    inc bc
    rst $38
    ld bc, $7604
    add hl, bc
    add c
    ld a, a
    pop hl
    sbc a
    cp e
    db $cc, $5f, $04
    db $76
    inc bc
    add b
    ld a, a
    ret nz

    ld a, a
    jp $ee7c


    add hl, de
    add hl, de
    inc b
    db $76
    inc bc
    jr nc, @+$01

    ldh [$7f], a
    ret nz

    rst $38
    add b
    inc b
    db $76
    rrca
    db $10
    inc b
    reti


    ld [bc], a
    ld [bc], a
    rst $38
    ld c, $f9
    rrca
    ld hl, sp+$1b
    db $fc
    dec b
    ldh [rIE], a
    jr nc, @+$01

    ret nz

    rst $38
    pop bc
    ld a, a
    add b
    rst $38
    add h
    rst $38
    ld a, [bc]
    rst $38
    rrca
    ei
    inc bc
    inc bc

jr_033_5ace:
    ld b, $06
    add c
    add c
    ld b, c
    pop bc
    nop
    nop
    db $10
    db $10
    jr z, jr_033_5b12

    ld a, b
    ld l, b
    rst $38
    ldh [$7f], a
    ld b, b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    cp b
    rst $08
    ret z

    rrca
    inc c
    rra
    db $10
    inc b
    db $76
    rrca

jr_033_5aef:
    dec c
    cp $02
    cp $07
    ld a, [$f20f]
    rla
    rst $38
    rrca
    rst $38
    inc bc
    cp $03
    db $fc
    rlca
    ld b, $ff
    nop
    rst $38
    rlca
    rst $38
    add l
    db $fc
    rlca
    rst $38
    ld [bc], a
    cp $21
    cp a
    ld c, b
    ld a, a
    jr nc, jr_033_5b42

jr_033_5b12:
    nop
    nop
    ldh a, [$f0]
    ret nc

    db $10
    ld [hl], b
    ld [hl], b
    jr nz, @+$22

    jp nz, $09c2

    add hl, bc
    ccf
    jr nz, jr_033_5b62

    jr nc, jr_033_5b54

    jr z, jr_033_5ace

    and h
    ld a, a
    ld a, b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_033_5ace

    sub b
    inc b
    db $76
    rrca
    ld c, $07
    inc b
    db $76
    ld a, [bc]
    adc d
    cp [hl]
    call z, $b0cc
    ldh a, [$8c]
    db $fc
    sbc a
    di

jr_033_5b42:
    rst $38
    ld h, b
    inc b
    halt
    jr z, @+$2a

    add hl, de
    add hl, de
    ld b, $07
    jr jr_033_5b6e

    db $fc
    rst $20
    rst $38
    inc bc
    inc b

jr_033_5b54:
    db $76
    ld bc, $fff0
    add b
    inc b
    ld [hl+], a
    inc hl
    inc b
    ld [hl], a
    rrca
    ld [bc], a
    ld b, b
    ld [bc], a

jr_033_5b62:
    ld [$08ff], sp
    rst $38
    rst $38
    ld c, l
    ld [$0f1d], sp
    add hl, bc
    db $10
    rst $38

jr_033_5b6e:
    inc sp
    ld [$031c], sp
    jr nc, @+$01

    dec e
    ld_long a, $ff0f
    rlca
    rst $38
    rst $28
    ld [$031c], sp
    ld b, $ff
    call c, Call_033_78af
    rst $38
    ld [hl], b
    rst $38
    ld a, e
    ld [$091c], sp
    inc b
    rst $38
    and $08
    inc e
    rrca
    ld b, $01
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld sp, $38ef
    rst $30
    ld e, h
    db $eb
    cp a
    rst $18
    db $76
    cp [hl]
    and l
    cp a
    push hl
    ld a, l
    bit 7, e
    sub [hl]
    rst $18
    push hl
    xor d
    ei
    or b
    ld a, a
    ld b, c
    ret nz

    add e
    db $fc
    rlca
    ld hl, sp+$0f
    nop
    ld l, a
    or h
    db $fd
    db $d3
    ld l, d
    xor a
    or $0f
    push hl
    ld bc, $37c8
    sub b
    ld l, a
    jr nz, jr_033_5bc8

jr_033_5bc8:
    ld a, a
    add $fb
    adc [hl]
    rst $30
    sbc l
    db $eb
    ld a, [hl]
    ld a, l
    or a
    cp [hl]
    jp nc, $d37e

    ld e, a
    ld l, c
    ld [$031c], sp
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    and b
    ld a, a
    ldh [rIE], a
    dec b
    ld [$1520], sp
    ld b, $08
    ld a, [hl+]
    db $10
    ld a, [hl]
    ld c, a
    ld a, d
    sub $7f
    rst $18
    ld a, h
    call nc, $d67f
    rst $38
    call nc, $54ff
    rst $38
    ld d, h
    ld e, $e1
    inc a
    nop
    rst $38
    add a
    ldh a, [rP1]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld [$001c], sp
    nop
    rst $38
    ld [$1151], sp
    ld [$1258], sp
    ccf
    ld sp, hl
    cpl
    dec [hl]
    rst $38
    db $fd
    rra
    dec d
    rst $38
    push af
    rst $18
    push de
    cp a
    or l
    ld a, a
    ld [hl], l
    ld a, a
    ld d, b
    ld a, a
    ret nc

    ld [$1272], sp
    rst $38
    or b
    rst $38
    jr nc, @+$01

    jr nc, jr_033_5c3d

    ld a, [hl+]
    ld de, $cb08
    nop
    ld [$041d], sp

jr_033_5c3d:
    dec d
    rst $38
    rla
    ei
    rla
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec b
    cp $07
    rst $38
    ld [bc], a
    ld [$1458], sp
    rst $38
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $fe
    db $fd
    db $fd
    ei
    ei
    rst $30
    or $ef
    db $ed
    sbc $db
    cp a
    or c
    ld a, a
    ld h, e
    rst $38
    call nc, $94ff
    rst $28
    inc [hl]
    rst $38
    jr z, @+$01

    add sp, -$01
    ld d, b
    cp a
    ldh a, [$7f]
    and b
    ld [$117c], sp
    jr nz, @+$01

    jr nz, @+$0a

    or b
    rrca
    ld [$c308], sp
    inc b
    rlca
    ld [$001c], sp
    cp [hl]
    ld a, [hl]
    db $ed
    adc l
    rst $30
    ld a, a
    call Call_033_7ff8
    cp a
    rst $38
    ret nz

    ld [$001c], sp
    cp $c7
    ei
    adc b
    rst $30
    rst $38
    reti


    adc a
    rst $38
    cp $08
    ldh a, [rNR13]
    ld b, b
    rst $38
    add b
    ld [$1014], sp
    ld a, a
    ret nz

    rst $38
    ldh a, [$08]
    inc e
    rrca
    ld bc, $0240
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    ld c, l
    inc b
    ld de, $0f0c
    ldh a, [$30]
    cp $1e
    ldh [rNR41], a
    ld sp, hl
    add hl, de
    di
    ld [hl-], a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    rra
    jr c, jr_033_5d42

    ld [hl], h
    rst $38
    or e
    rst $38
    ld b, e
    db $e4
    sbc l
    ret z

    cp l
    inc b
    db $10
    rlca
    ret nz

    ccf
    ld h, b
    ccf
    ld h, c
    inc b
    db $10
    rlca
    ld a, c
    add a
    cp $7c
    ld hl, sp+$04
    db $10
    dec b
    ld [hl], b
    rst $18
    sub b
    ccf
    jr nz, jr_033_5d74

    ret nz

    inc b
    db $10
    ld bc, $ff01
    ld [bc], a
    rst $38
    ld [bc], a
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    ld sp, $cdff
    cp $03
    db $e3
    dec e
    add c
    ld a, a
    ld bc, $61ff
    rst $38
    ld a, [c]
    rst $38
    or e
    ld [hl], a
    ld a, a
    rst $18
    ccf
    rst $38
    adc a
    rst $38
    ret nz

    ld a, a
    ld [hl], c

jr_033_5d1f:
    cp $3f
    rst $38
    rra
    rst $38
    cp $e3
    db $dd
    rst $38
    rst $38
    rst $20
    rst $28
    cp h
    db $fc
    jr nc, jr_033_5d1f

    ld h, e
    db $e3
    adc a
    adc [hl]
    ld e, $f8
    pop hl
    db $e3
    add a
    add [hl]
    rra
    add hl, de
    add hl, sp
    ld hl, $c1e1
    pop bc
    nop
    nop

jr_033_5d42:
    cp b
    cp b
    rst $38
    add b
    inc b
    db $10
    db $10
    ld a, a
    ret nz

    inc b
    ld d, $10
    cp a
    ldh [$bf], a
    ldh [rDIV], a
    jp nz, $0401

    inc hl
    ld [de], a
    inc b
    ld de, $ed01
    sbc [hl]
    ret


    ld a, $fc
    rst $38
    rst $38
    jp $e49f


    adc c
    rst $38
    jp z, $bc7f

    cp a
    rst $08
    ld a, h
    db $fc
    or b
    ldh a, [$a3]
    di
    rst $18
    db $fd

jr_033_5d74:
    sbc $39
    xor $79
    rst $28
    db $d3
    cp $1d
    dec a
    ld [hl-], a
    cp $f7
    rst $18
    xor $3f
    ld a, [$faff]
    ld a, a
    rst $28
    rst $38
    xor d
    ld a, d
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    or b
    ldh a, [$a8]
    ld hl, sp-$58
    ld hl, sp+$68
    ld hl, sp-$0f
    pop af
    sub c
    pop af
    inc b
    inc e
    db $10
    inc b
    ld [hl], b
    inc d
    inc b
    ld d, $10
    inc b
    ld h, $15
    inc bc
    inc b
    add $00
    rst $38
    ld [bc], a
    ld l, e
    ld a, e
    ld h, [hl]
    ld a, a
    cp $df
    pop af
    adc a
    pop bc
    rst $38
    db $e3
    ld a, a
    cp a
    ld a, h
    sbc e
    ld a, [hl]
    push hl
    ld a, $f8
    rra
    ld b, c
    cp a
    inc b
    inc hl
    db $10
    add e
    rst $38
    rst $38
    ld a, h
    rst $38
    ld bc, $f969
    ld sp, hl
    cp c
    ld a, b
    adc b
    ld h, $de
    rra
    ld sp, hl
    rst $38
    pop af
    adc l
    di
    ld c, $f2
    ld [hl], c
    ld [hl], c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    dec bc
    ld c, $0b
    ld c, $17
    inc e
    ld a, a
    ret nz

    inc b
    db $10
    ld de, $1104
    ld b, $04
    inc hl
    ld [de], a
    ld b, $fe
    add hl, bc
    rst $38
    rrca
    inc b
    stop
    jp $c33e


    ld a, $c3
    cp $a3
    ld a, [hl]
    rla
    cp $ff
    db $fc
    inc b
    ret nz

    ld [bc], a
    cp $03
    cp $03
    db $fd
    rlca
    rst $38
    rlca
    inc b
    db $10
    ld [bc], a
    dec bc
    rst $30
    inc e
    rst $38
    cpl
    rst $30
    ld b, a
    ld sp, hl

jr_033_5e21:
    rst $38
    rst $38
    inc b
    db $10
    ld [bc], a
    rst $28
    ld hl, sp+$1f
    ldh a, [rIE]
    inc b
    rra
    db $10
    inc b
    ld de, $040f
    ld b, b
    ld [bc], a
    ld bc, $01ff
    rst $38
    rst $38
    ld c, l
    ld bc, $0f5f
    ld c, l
    ld bc, $0f89
    dec d
    inc bc
    db $fd
    ld b, $ff
    ld [hl], h
    xor a
    call c, $8801
    rlca
    sbc b
    rst $28
    or h
    rst $18
    db $e4
    ld bc, $0fb2
    dec h
    rst $38
    inc b
    cp $05
    db $fc
    rlca
    ld sp, hl
    inc bc
    rst $30
    sbc h
    push de
    or a
    ldh [$ea], a
    add b
    ld e, d
    jr nz, jr_033_5e21

    ret nz

    call c, $bff1
    ld a, d
    ld e, $bf
    db $e4
    cpl
    inc [hl]
    scf
    cp a
    set 4, h
    dec b
    ld l, [hl]
    dec c
    cp $38
    di
    ld e, l
    ld [hl], c
    ld bc, $0388
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ccf
    add b
    ld bc, $0f88
    dec c
    db $fd
    ld bc, $118f
    ld hl, sp+$04
    ldh [rNR12], a
    add c
    ld c, b
    inc h
    add d
    ld c, l
    db $10
    ld a, d
    rra
    db $f4
    rra
    sbc b
    ld d, a
    ld a, [hl-]
    cpl
    ld l, $3b
    inc d
    sbc a
    jr nc, jr_033_5f18

    ld d, b
    rst $28
    dec a
    ret nc

    cp l
    ret nc

    and l
    add sp, -$10
    or b
    ld [hl], b
    ret nc

    ld de, $b8f2
    db $ec
    xor l
    or $7f
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    ld b, b
    rrca
    sub b
    inc bc
    inc h
    ld c, c
    add d
    ld h, l
    db $10
    ld bc, $0f88
    dec c
    ld c, h
    ld de, $4826
    sub c
    ld [hl+], a
    call nz, $f308
    ld bc, $0389
    cp c
    ld [hl], a
    ld l, $5f
    add a
    ld [$8071], sp
    rrca
    db $10
    ldh [rSB], a
    adc c
    ld bc, $dd3a
    add sp, -$0c
    jp $9c20


    ld [bc], a
    pop hl
    db $10
    rrca
    ld bc, $0189
    ld h, l
    db $10
    ret


    inc h
    inc de
    adc b
    ld h, a
    ld bc, $0f89
    ld b, $40
    ld [bc], a
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    add hl, de
    inc bc
    db $fc
    rlca
    inc b
    nop
    add hl, bc
    ld h, b
    sbc a
    ldh a, [rDIV]
    nop
    rrca
    ld a, [de]
    inc b

jr_033_5f18:
    rst $38
    cp $01
    rst $38
    inc bc
    db $fd
    rlca
    rst $38
    rlca
    db $fc
    rlca
    rst $38
    rrca
    ld sp, hl
    add hl, sp
    call nz, $8257
    cp e
    ld a, a
    ld h, b
    ld e, a
    ldh a, [rIE]
    ldh a, [$1f]
    ldh a, [rIE]
    ld hl, sp+$4f
    adc $91
    push af
    jr nz, jr_033_5fa9

    inc b
    nop
    dec bc
    ret nz

    inc b
    nop
    rrca
    dec c
    cp $03
    rst $38
    ld bc, $0004
    rlca
    rlca
    sub $d7
    add d
    cp e
    push bc
    ld d, a
    ld_long a, $ff3b
    rra
    cp $02
    db $fc
    ld a, h
    adc e
    rst $38
    dec [hl]
    push af
    and b
    xor $51
    push af
    cpl
    xor $ff
    db $fc
    ccf
    jr nz, jr_033_5f87

    rra
    add sp, -$01
    cp a
    ldh [rDIV], a
    xor [hl]
    add hl, bc
    inc b
    ccf
    rrca
    ld c, $f8
    rra
    db $fc
    ccf
    jp $fc7f


    ld a, a
    db $e3
    inc hl
    ldh [$2e], a
    pop af
    ld de, $0eff
    dec b
    rst $38
    dec sp

jr_033_5f87:
    rst $38
    call nz, Call_033_44ff
    push de
    add $c7
    db $fd
    cp a
    db $e4
    cpl
    and $3f
    ld d, b
    rst $38
    xor $ff
    ld de, $11ff
    push de
    ld sp, $dff1
    cp $13
    ld a, [$fe33]
    rrca
    db $fc
    rra
    cp $e1

jr_033_5fa9:
    rst $38
    rra
    rst $38
    db $e3
    ld [c], a
    add e
    cp d
    rst $00
    ld b, h
    rst $38
    jr c, jr_033_5fb9

    nop
    rrca
    dec c
    pop af

jr_033_5fb9:
    rra
    ld_long $ff3f, a
    rra
    rst $38
    rrca
    ldh a, [$1f]
    rst $38
    rra
    ld hl, sp+$08
    rst $38
    rlca
    ret


    ld a, c
    add c
    ld sp, hl
    ld b, $ff
    ld hl, sp-$01
    ccf
    rst $38
    ret nz

    rst $38
    ccf
    ccf
    add c
    add c
    ld c, c
    rst $08
    ld b, b
    rst $08
    jr nc, @+$01

    rrca
    rst $38
    cp $ff
    ld bc, $feff
    cp $c0
    ret nz

    rst $00
    ld a, h
    xor e
    cp $7f
    db $fc
    rst $38
    ld hl, sp+$07
    db $fc
    rst $38
    db $fc
    rrca
    ld [$0e04], sp
    rra
    rrca
    db $fd
    rlca
    db $fd
    rlca
    cp $02
    inc b
    jp nc, $0103

    rst $38
    nop
    ld a, a
    rst $38
    dec hl
    cp $ab
    ld a, [$7477]
    rst $38
    ld hl, sp-$61
    ldh a, [rDIV]
    ld c, $11
    ld a, a
    ld [$ea3f], a
    cpl
    rst $30
    rla
    rst $38
    rrca
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    nop
    ld e, a
    ldh a, [$5f]
    ldh a, [$bf]
    and b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    inc b
    xor [hl]
    rrca
    ld bc, $0240
    db $10
    rst $38
    db $10
    rst $38
    ld a, [c]
    ldh [rIE], a
    inc a
    rst $38
    rra
    di
    inc de
    ld hl, sp+$08
    stop
    inc bc
    db $10
    rst $38
    ldh a, [$c0]
    rst $38
    ld [hl], $fd
    rl b
    db $10
    rlca
    db $10
    ld hl, $010f
    ccf
    db $10
    db $10
    rlca
    rlca
    rst $38
    reti


    cp [hl]
    ld h, [hl]
    stop
    inc bc
    ld c, $ff

jr_033_6064:
    ld a, b
    rst $38
    ldh a, [$9f]
    sub b
    ccf
    jr nz, jr_033_6064

    ld [$04fc], sp
    db $fc
    inc b
    cp $02
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $3634
    ld [de], a
    ld [de], a
    dec bc
    dec bc
    ld d, $17
    ld [hl+], a
    daa
    ld h, c
    ld l, a
    pop hl
    cp a
    ldh [rIE], a
    rst $38
    add b
    rst $38
    add c
    rst $38
    add e
    cp $85
    cp $87
    ld a, l
    rst $00
    ld a, h
    adc $bf
    ei
    ret


    rst $38
    db $fd
    ld c, e
    dec hl
    xor $aa
    xor e
    ld e, [hl]
    ld e, [hl]
    cp a
    or a
    ld a, l
    ld h, a
    cp e
    cp a
    ret c

    ret c

    ld d, b
    ret nc

    ld h, b
    ldh [$90], a
    ldh a, [$f2]
    or d
    ld d, e
    di
    res 7, e
    ld a, l
    rst $38
    ccf
    jr nz, jr_033_613d

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    db $10
    or [hl]
    inc bc
    ret nz

    rst $38
    rlca
    rst $38
    ld a, [bc]
    ld a, [$ea1f]
    ld a, [hl-]
    rst $28
    cpl
    rst $38
    inc a
    rst $28
    ld a, b
    rst $38
    ld e, b
    jr nz, @+$01

    ldh [$7f], a
    or b
    rst $18
    or b
    cp a
    xor b
    cp a
    rst $28
    ld l, a
    db $eb
    ld l, $f3
    ld [de], a
    cp h
    xor $7f
    db $eb
    ld a, h
    xor $7f
    db $eb
    db $f4
    xor [hl]
    ei
    rla
    adc c
    ld a, a
    ld bc, $6bdf
    ld a, a
    xor l
    cp l
    ld l, l
    ld l, l
    xor [hl]
    xor a
    ld c, [hl]
    ld l, a
    sub l
    rst $10
    dec h
    and a
    dec b
    add a
    call Call_033_7dbf
    rst $38
    xor c
    cp a
    sbc c
    sbc a
    adc c
    res 0, h
    and [hl]
    inc b
    push de
    rlca
    rst $20
    db $10
    or d
    nop
    db $10
    db $10
    ld [de], a
    rst $38
    db $fc
    rla
    db $fc
    rra
    ret c

    rst $18
    sub b
    sbc a
    ret nc

    rst $38
    ldh a, [$bf]
    ldh [$bf], a
    ldh [rIE], a
    ret nz

    db $10
    or [hl]
    ld bc, $ff0c
    dec c
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    ld de, $19f6

jr_033_613d:
    db $fc
    dec c
    cp $0e
    pop hl
    db $eb
    rst $18
    ccf
    db $e4
    ld a, a
    db $e4
    ld l, [hl]
    ld [bc], a
    add [hl]
    add e
    add e
    adc h
    call z, Call_033_5850
    ld a, [bc]
    adc a
    db $fc
    rst $38
    ld l, a
    ld e, a
    ld c, l
    ld a, l
    add e
    db $e3
    add e
    add e
    ld h, d
    ld h, d
    inc d
    inc d
    inc a
    db $fc
    ld b, h
    db $fc
    sub a
    cp a
    inc b
    or a
    ld b, $c7
    rlca
    rst $38
    add e
    rst $38
    add c
    rst $38
    cp a
    or b
    cp a
    and b
    cp a
    and b
    sbc a
    sub b
    ld e, a
    ret nc

    cpl
    add sp, -$61
    ret c

    rst $08
    ret z

    db $10
    ld l, h
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    db $10
    add [hl]
    db $10
    cp $03
    rst $38
    ld bc, $31f9
    ld hl, sp-$3c
    pop af
    cpl
    and [hl]
    ld a, [hl]
    inc e
    call c, $9202
    ld [bc], a
    ld [hl-], a
    and e
    db $d3
    jr nz, jr_033_61d1

    and b
    or b
    and b
    and b
    ret nc

    ret nc

    ld a, b
    ld a, b
    ld a, a
    ld c, a
    rst $38
    ret nz

    cp a
    and b
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld d, $16
    inc a
    inc a
    db $fc
    db $e4
    cp $06
    ei
    dec bc
    ld b, c
    ld a, a
    jr nz, @+$01

    jr nz, @+$80

    ret nc

    ld hl, sp+$78
    ld a, b
    xor b
    ret c

    and a
    rst $10
    and e
    db $d3
    rst $38
    or b

jr_033_61d1:
    rst $38
    ret nz

    ld a, a
    ld h, b
    ccf
    jr nz, jr_033_6217

    jr nz, jr_033_61ea

    ld a, [hl+]
    ld de, $ff10
    ld a, [c]
    ld bc, $02ff
    cp $05
    rst $38
    rrca
    stop
    nop
    and [hl]

jr_033_61ea:
    sub $f9
    rst $38
    adc c
    ld l, l
    add a
    rst $00
    ld e, a
    ld e, a
    rst $38
    ldh [rNR10], a
    nop
    nop
    ld e, a
    ld d, b
    rst $38
    ldh a, [rIE]
    add b
    ld a, a
    ld b, b
    rst $38
    ret nz

    stop
    ld [bc], a
    db $f4
    inc d
    rst $38
    rra
    rst $38
    inc bc
    db $fd
    rlca
    rst $38
    rlca
    stop
    ld [bc], a
    db $c3, $c2, $3f

    cp $29

jr_033_6217:
    and l
    add $da
    or $fd
    db $10
    ld [$1012], a
    nop
    inc bc
    db $10
    dec b
    jr nz, jr_033_6236

    ei
    ld de, $0240
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    or $01
    cp $0f
    pop af
    dec e
    add hl, bc
    nop

jr_033_6236:
    rlca
    ldh a, [rIF]
    db $fc
    rst $28
    ld hl, sp+$09
    nop
    rlca
    add hl, bc
    rlca
    ld bc, $2009
    dec bc
    add hl, bc
    rst $38
    ld hl, sp+$1f
    ldh [$7f], a
    rst $28
    ccf
    add hl, bc
    jr nz, jr_033_6259

    ldh [$1f], a
    ld [hl], b
    xor $3e
    ret nc

    ld [hl], b
    ldh [$e1], a

jr_033_6259:
    ldh a, [rNR13]
    ld hl, sp+$3e
    cp $07
    cp $03
    rst $38
    inc bc
    ld e, a
    ld [hl], b
    ld e, a
    ldh a, [rVBK]
    ret z

    ccf
    ld a, [hl]
    ld hl, $40e1
    ret nz

    ld b, b
    ret nz

    add b
    add b
    rst $38
    ld bc, $32ff
    rst $38
    ld a, [hl+]
    rst $28
    rst $20
    call c, $729c
    ld d, [hl]
    pop af
    db $fd
    push hl
    xor a
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    xor b
    rst $28
    adc $77
    ld [hl], e
    sbc h
    call nc, Call_033_7e1e
    ld c, [hl]
    ld [$1cf4], a
    db $f4
    ld e, $e4
    daa
    ld hl, sp-$03
    ld [$050e], sp
    rlca
    ld b, $07
    inc bc
    inc bc
    rst $28
    ld hl, sp+$17
    inc e
    rrca
    ld c, $3f
    or b
    ccf
    ld hl, sp-$01
    ldh [$df], a
    ret nc

    sbc a
    sbc b
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ld d, b
    ret nc

    ld d, b
    nop
    nop
    ld [$1008], sp
    db $10
    inc de
    inc de
    inc d
    rla
    jr c, jr_033_630e

    ld hl, sp-$01
    jr @+$1d

    ld b, e
    ld e, e
    ld l, c
    ld l, c
    ld e, h
    ld [hl], a
    call z, Call_000_2bdd
    db $eb
    ld de, $23f1
    db $e3
    ld b, h
    call nz, $b484
    inc l
    inc l
    ld [hl], h
    call c, $7767
    adc c
    db $eb
    ld sp, $c337
    rst $00
    dec b
    dec e
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    db $e4
    db $e4
    sbc b
    sbc b
    ldh a, [rSVBK]
    ret nc

    ret nc

    ld c, b
    ld c, b
    ld c, b
    ld c, b
    sub a
    sbc h
    ld c, a
    ld c, h
    rrca
    inc c
    rrca
    inc c
    dec bc
    ld c, $07

jr_033_630e:
    ld b, $09
    ld a, [de]
    db $10
    sub b
    sub b
    sbc b
    sbc b
    xor b
    cp b
    call nc, $cef4
    ld [$f1bf], a
    sbc a
    rst $10
    ld hl, sp+$78
    ld [$0708], sp
    rlca
    rrca
    rrca
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    adc c
    adc c
    ret


    ret


    rst $00
    rst $00
    ld b, a
    ld b, a
    set 1, e
    inc l
    inc l
    jp hl


    jp hl


    ld e, a
    ld e, a
    ld a, b
    ld a, a
    rst $38
    rst $38
    ld b, b
    ld a, a
    db $fd
    db $fd
    call nz, $1ec4
    ld e, $21
    ld hl, $bfa0
    ld h, c
    rst $38
    cp $ff
    nop
    rst $38
    cpl
    cpl
    adc b
    adc b
    rla
    rla
    ei
    ld a, [$e969]
    adc c
    jp hl


    add hl, de
    ld sp, hl
    jr z, @-$06

    rlca
    inc b
    rst $38
    db $fc
    rst $28
    jr c, @+$01

    jr jr_033_6374

    nop
    inc bc
    add b
    jp $8fc3


    adc l
    rst $18
    ld d, c

jr_033_6374:
    rst $38
    ld [hl], c
    rst $38
    ld de, $10ff
    rst $38
    ld [$01ff], sp
    rst $20
    push hl
    ld e, $1f
    ld d, $1f
    ld de, $0c17
    rrca
    adc d
    adc e
    push bc
    push bc
    inc bc
    inc bc
    add b
    rst $38
    ld h, b
    rst $38
    rra
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    jr nc, @+$41

    nop
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    add hl, bc
    or b
    inc d
    rlca
    rst $38
    ret z

    ld hl, sp+$18
    ld hl, sp+$29
    ld sp, hl
    ld c, d
    ei
    sub c
    pop af
    ld [de], a
    db $d3
    add sp, -$16
    ld e, l
    ld e, l
    rst $38
    add b
    add hl, bc
    ret nc

    db $10
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld h, b
    cp a
    ldh [$7f], a
    ldh [$fe], a
    ld [bc], a
    rst $38
    dec b
    db $fd
    dec bc
    rst $38
    rrca
    add hl, bc
    ld l, $04
    ldh a, [$f0]
    ld c, [hl]
    ld c, [hl]
    jp hl


    xor c
    cp l
    ld [hl], l
    rst $30
    xor $ff
    jr c, jr_033_63e9

    nop
    nop
    rst $08
    rst $08
    jr nc, jr_033_6416

    rst $38
    rst $28
    cp a

jr_033_63e9:
    ld h, b
    rst $38
    and b
    rst $38
    ld h, b
    add hl, bc
    nop
    nop
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    add hl, bc
    rra
    rlca
    cp e
    or [hl]
    rst $38
    ld sp, hl
    rst $38
    ld b, $09
    nop
    rlca
    ret nz

    rst $38
    add b
    add hl, bc
    jr nz, jr_033_6410

    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l

jr_033_6410:
    ld [bc], a
    inc sp
    rrca
    rra
    rra
    ei

jr_033_6416:
    inc c
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $01ff
    ld [bc], a
    ld [hl-], a
    inc bc
    ret nz

    rst $38
    jr nc, jr_033_64a5

    adc b
    ccf
    call nz, $e21f
    adc a
    pop af
    ld [bc], a
    ld [hl-], a
    rrca
    jr c, jr_033_6434

    sbc e
    nop

jr_033_6434:
    ld bc, $f987
    add a
    ld hl, sp-$7d
    db $fc
    ld [bc], a
    inc b
    db $10
    inc bc
    ld [bc], a
    add hl, bc
    ld de, $00ff
    rst $38
    add b
    ld [bc], a
    ld [de], a
    ld de, $0240
    jr jr_033_6460

    ld [bc], a
    push af
    rlca
    ld [bc], a
    sbc d
    dec b
    ldh a, [rIF]
    ld [$484f], sp
    ld c, a
    ld c, h
    ld d, a
    ld d, a
    inc d
    inc d
    ld [bc], a
    ld [hl-], a

jr_033_6460:
    inc bc
    ld a, h
    add e
    add d
    add e
    add d
    sbc a
    sbc a
    and [hl]
    and a
    cp $03
    cp $03
    db $fc
    ccf
    call nz, $817f
    rst $38
    sbc c
    rst $38
    add l
    rst $38
    ld c, c
    rst $38
    ld b, e
    call c, $4c43
    and a
    xor b
    ld h, a
    add sp, $2f
    pop hl
    sbc a
    pop hl
    rst $38
    ld b, d
    rst $38
    and h
    rst $38
    ld b, b
    ld [bc], a
    ld [de], a
    inc de
    ld [bc], a
    inc sp
    rrca
    inc b
    db $fc
    db $fc
    rst $38
    ld [bc], a
    sbc c
    ld [bc], a
    ld [bc], a
    sbc e
    inc bc
    xor b
    xor a
    xor b
    xor a
    daa
    inc h
    rra
    rra
    rlca

jr_033_64a5:
    inc b
    rlca
    inc b
    rst $38
    ld hl, sp-$01
    nop
    ld sp, $0fff
    ld [bc], a
    xor a
    nop
    ld bc, $feff
    ld [bc], a
    ld [hl-], a
    inc bc
    ret c

    rst $38
    ld h, b
    ld [bc], a
    ld [hl], h
    rra
    add hl, bc
    ld [bc], a
    sbc $1f
    ld c, l
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    add hl, sp
    rrca
    dec h
    ld [bc], a
    rst $38
    ld b, $fb
    ld a, [de]
    ld sp, hl
    ld hl, $3805
    rrca
    ld c, $1f
    db $fc
    rrca
    rst $38
    inc bc
    dec b
    jr c, jr_033_64eb

    ldh [$7f], a
    sbc b
    rst $10
    xor $ed
    inc sp
    di
    inc e

jr_033_64eb:
    ld hl, sp+$0f
    db $fc
    rlca
    dec b
    jr c, jr_033_64f5

    rlca
    cp $9e

jr_033_64f5:
    ld h, c
    rst $38
    and b
    ld a, a
    ld d, e
    cp a
    rst $28
    ld sp, $1ff9
    rst $28
    ld a, $f7
    db $fc
    ccf
    inc c
    rst $00
    jp nz, $f939

    add $fe
    dec b
    jr c, @+$09

    jr nz, @+$01

    ld [hl-], a
    db $ed
    xor a
    dec b
    jr c, @+$0b

    ld h, b
    cp a
    ldh [rTIMA], a
    jr c, jr_033_6528

    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    ld bc, $3805
    inc b
    scf

jr_033_6528:
    call c, $ec16
    rlca
    db $fc

jr_033_652d:
    rlca
    rst $38
    add b
    rst $38
    add b
    rst $38
    jp $fd7f


    inc a
    pop bc
    ld a, a
    ret nz

    ld a, a
    sub b
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $18
    and e
    cp h
    ld h, e
    inc a
    rst $00
    ld a, b
    add sp, -$11
    ld h, [hl]
    rst $38
    cpl
    ld sp, hl
    rra
    ldh a, [$1f]
    ldh a, [$df]
    ld sp, $7f9e
    jr nc, @+$01

    ccf
    ldh [$df], a
    ldh a, [$ef]
    jr c, jr_033_652d

    ld a, b
    rst $28
    jr c, @-$0f

    ld a, b
    sbc a
    ldh a, [$5f]
    ldh a, [rTIMA]
    jr c, jr_033_6579

    ld [bc], a
    inc bc
    cp $04
    cp $04
    rst $38
    ld [bc], a
    dec b
    ld [hl], $11
    add hl, de
    cp $07
    ei

jr_033_6579:
    rst $38
    dec l
    ccf
    inc l
    ccf
    inc de
    rra
    adc h
    rrca
    ei
    add e
    adc [hl]
    pop af
    rra
    rst $28
    rst $38
    ldh a, [rIE]
    add b
    ld a, a
    ldh a, [$df]
    ld hl, sp+$17
    db $f4
    db $e3
    ld [c], a
    db $eb
    rst $38
    sbc a
    db $f4
    rst $18
    ld d, b
    rst $38
    jr nc, @+$01

    db $10
    dec b
    jr c, @+$05

    or b
    dec b
    jr c, jr_033_65b4

    inc e
    ld a, b
    rst $38
    dec b
    rst $18
    inc b
    dec b
    add hl, sp
    ld bc, $0183
    rst $38
    add c
    rst $38
    ld a, [hl]

jr_033_65b4:
    dec b
    jr c, jr_033_65c6

    rla
    ld b, b
    ld [bc], a
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld b, $fb
    ld c, $ff
    inc d
    rst $38
    inc d
    rst $30

jr_033_65c6:
    inc l
    rst $30
    inc l
    rst $30
    ld c, h
    rst $38
    nop
    inc c
    db $10
    dec b
    ld [$4cff], sp
    rst $38
    ld a, d
    inc c
    db $10
    rlca
    inc c
    ld hl, $220f
    rst $20
    ld e, l
    rst $28
    ld e, b
    rst $28
    ld e, b
    rst $28
    sbc b
    rst $08
    cp e
    adc $ba
    rst $08
    cp c
    rst $18
    or c
    ei
    jp nc, $9edf

    rst $38
    ld [hl], c
    cp $0b
    db $fc
    rlca
    rst $38
    rst $20
    jr jr_033_6675

    ld hl, $ff2f
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ei
    inc b
    db $fd
    ld hl, sp-$05
    ld d, b
    ld d, e
    inc c
    db $10
    dec b
    inc c
    add e
    nop
    rst $38
    ld [$0cff], sp
    db $10
    inc bc
    ld bc, $02fe
    db $fd
    push hl
    add hl, de
    dec de
    sub e
    or $0c
    db $10
    ld bc, $0c80
    or h
    ld bc, $110c
    ld bc, $b0df
    inc c
    ret nz

    ld [$98ef], sp
    pop bc
    rst $18
    jp nz, $82fe

    cp [hl]
    add h
    sbc l
    add h
    adc l
    db $fc
    ld a, l
    db $fc

jr_033_663f:
    dec l
    db $fc
    inc l
    ld d, e
    ld d, e
    or a
    or a
    cp [hl]
    cp [hl]
    ld e, [hl]
    sbc $5f
    rst $18
    cpl
    rst $28
    jr z, jr_033_663f

    inc d
    rst $30
    ret z

    rst $38
    add sp, -$01
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ldh a, [rIE]
    ldh [$f9], a
    ld b, $f6
    ld b, $f6
    add e
    xor $47
    cp $45
    rst $38
    ld b, c
    rst $38
    ld hl, $23ff
    cp $2f
    cp $3f
    push af
    inc c
    jr nz, jr_033_6681

jr_033_6675:
    inc c
    ld h, d
    ld bc, $ff58
    ld c, b
    rst $38
    cpl
    ld sp, hl
    cpl
    ld sp, hl
    cpl

jr_033_6681:
    db $db
    ld a, a
    db $fc
    ld d, h
    cp $52
    rst $38
    ld [hl], c
    sbc a
    or b
    rra
    ld [hl], b
    rra
    ld hl, sp+$27
    rst $30
    ld h, h
    db $e4
    ld a, [bc]
    ei
    dec b
    ld a, l
    ld a, [hl-]
    ld a, [hl-]
    pop af
    pop af
    ld hl, sp+$78
    db $fc
    inc a
    rst $20
    rst $38
    ld a, a
    ld a, b
    nop
    ld sp, hl
    ldh [rIE], a
    ld a, b
    ld a, a
    sbc a
    sbc a
    ld h, e
    ld h, d
    ccf
    inc a
    rst $38
    rst $20
    cp $1e
    ccf
    ld [c], a
    ld a, a
    jp $83ff


    rst $38
    inc bc
    rst $38
    dec de
    rst $20
    ld l, a
    and a
    and l
    ld a, a
    ld a, e
    rst $38
    adc b
    rst $38
    ld a, b
    cp a
    ld hl, sp+$3f
    add sp, $3f
    db $f4
    ccf
    db $e4
    sbc a

jr_033_66d0:
    ld a, [c]
    sbc a
    cp $c5
    ld a, l
    ld sp, hl
    ld a, e
    pop af
    inc de
    cp $0e
    rst $38
    ld bc, $100c
    inc bc
    sbc a
    rst $30
    sub h
    ld a, a
    ld c, a
    ld [hl], d
    ld e, a
    pop hl
    xor a
    pop hl
    cpl
    ld a, [c]
    ld [hl-], a
    call $c74f
    rst $08
    ldh a, [$7f]
    sub b
    rst $30
    ld a, b
    ei
    rst $38
    add a
    inc c
    add b
    ld bc, $e320
    rst $38
    rrca
    cp $09
    rst $38
    ld e, $ff
    rst $38
    pop hl
    cp $02
    inc c
    adc b
    db $10
    db $ed
    xor l
    rst $18
    ld d, e
    rst $38
    pop af
    ld c, a
    ld hl, sp-$79
    cp [hl]
    add l
    cp l
    rst $08
    adc $ff
    jr c, jr_033_66d0

    ld a, [c]
    rst $08
    call z, $f0bf
    rst $38
    ldh [rIE], a
    ld b, b
    inc c
    ret c

    ld de, $0c20
    jr nz, jr_033_6739

    cp $3f
    rst $38
    ld bc, $03ff
    db $fd

jr_033_6734:
    dec c
    ldh a, [rNR10]
    rst $38
    rrca

jr_033_6739:
    inc c
    sub h
    ld [bc], a
    ld a, a
    ret nz

    rst $38
    ldh [$df], a
    ret c

jr_033_6742:
    rlca
    inc b
    rst $38
    ld hl, sp+$0c
    jr nz, @+$0b

    inc bc
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $28
    jr c, jr_033_6742

    jr c, jr_033_6734

    ld [hl], b
    rst $38
    ld hl, sp+$77
    db $76
    ld bc, $ff01
    cp $ff
    nop
    rst $38
    jr nz, @+$01

    jr c, @+$01

    ld c, b
    rst $38
    jr nc, @+$01

    ld [$100c], sp
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
    rlca
    ld hl, sp+$0f
    di
    dec de
    ld [bc], a
    ld a, d
    inc bc
    rrca
    ldh a, [$3f]
    rst $08
    ld a, a
    cp a
    rst $38
    ld a, l
    rst $38
    ld [bc], a
    ld a, d
    inc bc
    ld hl, sp+$07
    cp $f9
    rst $38
    cp [hl]
    rst $38
    ld a, a
    cp a
    ld [bc], a
    ld a, d
    add hl, bc
    add b
    ld a, a
    ret nz

    ld [bc], a
    ld a, d
    rrca
    dec c
    rst $30
    dec e
    rst $30
    dec d
    rst $30
    inc d
    di
    ld a, [de]
    ei
    rrca
    ld a, [$fe0f]
    rlca
    ld a, [$7d0f]
    ld sp, hl
    ld a, b
    or $bc
    di
    rst $08
    rst $38
    jr nc, @+$01

    rrca
    rst $38
    nop
    cp $00
    rst $38
    rst $28
    rst $30
    ei
    rst $38
    ld e, $df
    pop af
    rst $38
    ld c, $fe
    ldh a, [$f0]
    nop
    nop
    nop
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    adc [hl]
    pop af
    cp a
    ld c, h
    ld c, a
    cp [hl]
    or e
    ld a, $33
    ld l, [hl]
    ld l, d
    ld [bc], a
    inc b
    ld d, $02
    ld a, b
    inc de
    ld [bc], a
    ld a, e
    dec bc
    ei
    rrca
    or $1f
    db $f4
    dec e
    push af
    rra
    push af
    rra
    db $fd
    rra
    db $fd
    rrca
    ei
    rrca
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld c, a
    rst $38
    ld b, h
    ld a, a
    ld c, d
    ld a, a
    sub l
    cp a
    sub l
    rst $38
    nop
    ldh [$03], a
    db $e3
    inc c
    db $ec
    ldh a, [$f0]
    ld [$14e8], sp
    db $f4
    ld a, [hl+]
    ld [$ea2a], a
    call $cdcd
    call $b2b3
    xor a
    xor h
    or a
    or h
    ld l, a
    ld l, h
    ld a, a
    ld a, b
    ld l, a
    ld l, b
    ld [bc], a
    ld a, d
    rrca
    dec c
    db $fd
    rlca
    cp $07
    cp $03
    rst $38
    ld bc, $7a02
    inc b
    adc d
    rst $38
    call nz, $bffe
    rst $38
    xor d
    cp d
    ld [$faea], a
    ld a, [hl-]
    rst $38
    rlca
    rst $38
    nop
    inc d
    sub h
    add hl, bc
    add hl, bc
    cp $fe
    xor d
    xor d
    xor e
    xor e
    xor a
    xor [hl]
    rst $38
    ldh a, [rIE]
    nop
    ld e, a
    ld d, b
    cp a
    or b
    cp a
    and b
    rst $38
    ret nz

    ld [bc], a
    ld a, [hl]
    ld e, $02
    ld a, d
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
    dec de
    rrca
    rlca
    ld bc, $07ff
    rst $38
    ld [$1a02], sp
    dec b
    rst $28
    ld sp, hl
    ld d, $37
    rst $08
    rrca
    ld hl, sp+$02
    ld a, [de]
    inc bc
    inc a
    rst $38
    ld b, e
    rst $20
    sbc c
    jp $c3bd


    cp l
    ld [bc], a
    ld a, [de]
    dec b
    ret nz

    rst $38
    jr nz, jr_033_6917

    and b
    cp a
    ld [bc], a
    adc a
    inc b
    ld [bc], a
    dec de
    rrca
    ld b, $f8
    rla
    ld hl, sp+$17
    ei
    scf
    rst $28
    ld e, h
    call z, $ccbb
    cp e
    ret c

    or a
    ret c

    or a
    ld l, l
    ld a, [$97f8]
    ldh a, [$bc]
    add b
    ld a, b
    nop
    ld hl, sp+$00
    ldh [rTMA], a
    add $e5
    pop hl
    pop bc
    cp $e0
    ccf
    ld h, d
    cp a
    ld b, c
    ld b, a
    nop
    inc bc
    nop
    inc bc
    or b
    or c
    rst $10
    rst $00
    rst $38
    ld b, h
    rst $18
    ld h, [hl]
    rst $08
    ld [hl], l
    sbc c
    cp $0d
    or $0d
    or $19
    xor $03
    db $fd
    ld [bc], a

jr_033_68e2:
    ld a, [de]
    inc bc
    add b
    ld [bc], a
    ld d, $13
    ld [bc], a
    dec de
    dec c
    ld sp, hl
    ld d, a
    ld sp, hl
    scf
    ld sp, hl
    ld d, a
    db $ec
    ld e, e
    cp $49
    db $fc
    scf
    cp $0b
    db $fc
    dec bc
    dec de
    db $fc
    inc h
    cp h
    ld b, $ee
    push bc
    push bc
    jr @-$26

    ld bc, $03c1
    ld [c], a
    ld e, $fd
    ld [$109d], a
    jr jr_033_6948

    jr nc, jr_033_68e2

    ret c

    ld a, [bc]
    dec c
    add a
    adc a

jr_033_6917:
    db $c3, $4f, $03


    db $fd
    adc a
    cp $1f
    pop af
    rra
    push af
    dec bc
    db $fd
    add a
    ld sp, hl
    rrca
    or $0f
    db $f4
    rra
    db $e4
    ld [bc], a
    ld a, [de]
    rrca
    ld c, $04
    rst $38
    inc bc
    ld [bc], a
    ld a, [de]
    ld [$ef32], sp
    or b
    ld l, a
    rst $38
    ldh [rIE], a
    rra
    ld [bc], a
    ld a, [de]
    inc b
    inc bc
    db $fd
    ld b, a
    cp c
    rst $38
    ld b, d
    rst $38
    cp h

jr_033_6948:
    ld [bc], a
    ld a, [de]
    dec b
    jr @+$01

    ldh [rSC], a
    ld a, [de]
    rrca
    ld c, l
    ld [bc], a
    ldh [$1f], a
    add hl, bc
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a
    add hl, de
    rrca
    dec b
    inc c
    di
    ld e, $e1
    ccf
    pop bc
    ld [hl], e
    ld [bc], a
    jr jr_033_697b

    ld l, $38
    rst $00
    ld a, [hl]
    di
    rst $30
    adc d
    db $eb
    adc l
    db $ed
    sbc c
    sbc c
    cp $66
    rst $38

jr_033_697b:
    rrca
    push bc
    ld b, l
    ei
    dec sp
    db $fd
    dec e
    pop af
    pop af
    ld d, c
    ld d, c
    ld c, a
    ld c, a
    add e
    add e
    dec e
    dec e
    ld [bc], a
    jr jr_033_6992

    inc e
    db $eb
    ld a, [hl]

jr_033_6992:
    or e
    cp [hl]
    inc hl
    ld l, $63
    ld l, [hl]
    ld [bc], a
    jr @+$0d

    inc bc
    ld [bc], a
    jr jr_033_69a8

    ld [hl], b
    rst $08
    add sp, $02
    jr @+$0e

    ld hl, sp+$18
    db $e4

jr_033_69a8:
    inc [hl]
    push bc
    ld [hl], l
    add l
    push hl
    rst $28
    rst $28
    sbc h
    call c, $d49c
    sbc [hl]
    sub [hl]
    ld l, c
    ld l, c
    adc b
    adc b
    ld de, $3111
    ld sp, $f3f3
    ld [hl], d
    ld [hl], d

jr_033_69c1:
    dec sp
    dec sp
    cpl
    cpl
    db $d3
    jp nc, $acbf

    rst $38
    ldh [$3f], a
    jr nz, jr_033_6a4d

    ld b, b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ccf
    ld h, b
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR34]
    pop af
    add hl, de
    rst $30
    scf
    cp $3e
    pop af
    scf
    db $fc
    ld a, h
    ld a, a
    ld a, [hl]
    ld d, e
    ld e, d
    db $db
    db $db
    or [hl]
    or [hl]
    ld [c], a
    ld [c], a
    cpl
    cpl
    pop af
    ld sp, hl
    ld b, a
    ld d, a
    ld [bc], a
    jr jr_033_69f9

    add b

jr_033_69f9:
    ld [bc], a
    ld [hl], h
    inc d
    ld a, a
    ld h, b
    rst $38
    ld h, e
    rst $38
    ld bc, $03ff
    db $fd
    rlca
    db $fd
    dec b
    rst $38
    rlca
    ld a, [$f20e]
    ld e, d
    ld sp, hl
    ld sp, hl
    ld [bc], a
    inc a
    db $10
    inc h
    inc h
    inc h
    inc h
    and l
    and l
    rst $38
    rst $38
    ld c, c
    ld c, c
    ccf
    ld h, b
    rra
    jr nc, jr_033_69c1

    or b
    sbc a
    sub l
    set 1, e
    rst $38
    rst $38
    ld [de], a
    inc de
    ld a, $3e
    rst $28
    ld l, e
    db $eb
    ld l, c
    sbc l
    call c, $b737
    ld d, l
    ld e, l
    rst $30
    rst $30
    ld e, a
    ld sp, hl
    ccf
    ld h, b
    rst $38
    ei

jr_033_6a3f:
    ld e, d
    ld d, d
    or $46
    rst $38
    rst $38
    and l
    and l
    scf
    ld [hl], a
    ld [$b3eb], a
    or a

jr_033_6a4d:
    ld e, a
    ld d, b
    ld a, a
    db $f4
    db $db
    jp c, $bcb7

    rra
    jr jr_033_6a3f

    db $e4
    ld a, a
    ld a, [hl]
    rst $38
    sub b
    and e
    or e
    cp $ff
    db $e4
    inc h
    db $db
    ld e, a
    rst $38
    pop hl
    ld [bc], a
    jr jr_033_6a6c

    push af
    db $fd

jr_033_6a6c:
    ld h, [hl]
    db $76
    and $e6
    xor c
    rst $28
    rst $38
    or b
    rst $38
    jr nz, jr_033_6a79

    jr jr_033_6a79

jr_033_6a79:
    jp hl


    rst $28
    ld e, b
    rst $18
    scf
    cp a
    add sp, -$06
    rst $38
    rlca
    ld [bc], a
    jr @+$04

    ccf
    jr nz, @+$01

    call z, $1af3
    rst $38
    adc h
    ld [bc], a
    jr @+$07

    ld c, [hl]
    rst $30
    inc d
    rst $38
    ld [$1802], sp
    ld b, $ef
    jr z, @+$01

    db $10
    ld [bc], a
    jr jr_033_6aa8

    ld b, b
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l

jr_033_6aa8:
    ld [bc], a
    add hl, de
    rrca
    dec b
    inc c
    rst $38
    ld [de], a
    rst $38
    ld hl, $4df3
    ld [bc], a
    jr jr_033_6ac5

    ld l, $38
    rst $38
    ld b, [hl]
    rst $30
    ei
    db $eb
    sbc [hl]
    db $ed
    sbc a
    sbc c
    rst $38
    cp $67
    rst $38

jr_033_6ac5:
    rrca
    push bc
    ld a, a
    ei
    ccf
    db $fd
    rra
    pop af
    rst $38
    ld d, c
    rst $38
    ld c, a
    rst $38
    add e
    rst $38
    dec e
    rst $38
    ld [bc], a
    jr jr_033_6adc

    inc e
    rst $38
    ld l, d

jr_033_6adc:
    cp a
    ld a, [c]
    cpl
    ld a, [c]
    ld l, a
    ld a, [c]
    ld [bc], a
    jr @+$0d

    inc bc
    ld [bc], a
    jr jr_033_6af2

    ld [hl], b
    rst $28
    ret c

    ld [bc], a
    jr @+$0e

    ld hl, sp+$1f
    db $f4

jr_033_6af2:
    cpl
    push af
    ld c, a
    push hl
    sbc a
    rst $28
    rst $38
    call c, $dcbf
    or a
    sbc [hl]
    rst $30
    ld l, c
    rst $38
    adc b
    rst $38
    ld de, $31ff
    rst $38
    di
    rst $38
    ld [hl], d
    rst $38
    dec sp
    rst $38
    cpl
    rst $38
    db $d3
    cp $bf
    db $ec
    rst $38
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    and b
    rst $38
    inc b
    rst $38
    ld [$11fe], sp
    ld sp, hl
    rla
    rst $30
    ccf
    cp $3f
    rst $30
    add hl, sp
    db $fc
    ld a, a
    ld a, a
    cp $5b
    or $db
    rst $38
    or [hl]
    rst $38
    ld [c], a
    rst $38
    cpl
    rst $38
    ld sp, hl
    rst $30
    ld d, a
    rst $28
    ld [bc], a
    jr jr_033_6b43

    add b

jr_033_6b43:
    ld [bc], a
    ld [hl], h
    inc d
    ld a, a
    ldh [rIE], a
    ld h, e
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    db $fd
    rlca
    rst $38
    rlca
    cp $0b
    ld a, [$f957]
    ld [bc], a
    dec sp
    ld de, $ff24
    inc h
    rst $38
    and l
    rst $38
    rst $38
    rst $38
    ld c, c
    rst $38
    ld a, a
    and b
    ccf
    ret nc

    cp a
    ret nc

    sbc a
    push af
    set 7, a
    rst $38
    rst $38
    inc de
    cp $3e
    rst $38
    rst $28
    ld a, e
    db $eb
    ld a, c
    db $dd
    cp h
    or a
    ld a, a
    ld e, l
    rst $30
    rst $30
    rst $38
    rst $38
    ld e, c
    ld a, a
    and b
    rst $38
    ei
    ld e, d
    ld d, e
    or $47
    rst $38
    rst $38
    and l
    rst $38
    ld [hl], a
    cp a
    db $eb
    cp $b7
    ei
    ld e, a
    ldh a, [rIE]
    ld [hl], h
    db $db
    cp $bf
    db $f4
    rra
    ld hl, sp-$19
    db $fc
    ld a, a
    cp $ff
    sub b
    or e
    rst $28
    rst $38
    cp $e4
    ccf
    rst $38
    ld a, e
    rst $38
    pop hl
    ld [bc], a
    jr jr_033_6bb5

    db $fd
    rst $30

jr_033_6bb5:
    db $76
    rst $28
    and $ff
    rst $28
    cp c
    rst $38
    or b
    rst $38
    jr nz, jr_033_6bc2

    jr jr_033_6bc2

jr_033_6bc2:
    rst $28
    ld sp, hl
    rst $18
    ld a, b
    cp a
    ld [hl], a
    ld_long a, $ffed
    rlca
    ld [bc], a
    jr @+$04

    ccf
    ldh [rIE], a
    call z, $16fb
    rst $38
    adc h
    ld [bc], a
    jr @+$07

    ld c, [hl]
    rst $30
    inc e
    rst $38
    ld [$1802], sp
    ld b, $ef
    jr c, @+$01

    db $10
    ld [bc], a
    jr jr_033_6bf1

    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l

jr_033_6bf1:
    dec b
    ld e, a
    rrca
    ld c, l
    dec b
    ld a, c
    rrca
    dec b
    ld bc, $03ff
    db $fc
    rlca
    ld hl, sp+$0c
    dec b
    sub $01
    ld b, $f8
    ccf
    ret nz

    rst $38
    ldh [$df], a
    jr nc, @-$0f

    add hl, de
    ld [hl], $ff
    inc a
    rst $00
    ei
    add e
    ld a, h
    ldh a, [rIF]
    ld l, c
    or [hl]
    ld e, a
    or c
    ld a, a
    add [hl]
    rst $38
    inc a
    dec b
    ld a, b
    ld bc, $ffc0
    jr nz, @+$01

    ld [hl], b
    rst $18
    sub b
    rst $38
    ret nc

    rst $38
    ldh [rTIMA], a
    ld a, b
    rrca
    dec c
    ld hl, sp+$0c
    dec b
    jr nc, jr_033_6c45

    db $fc
    ld b, $fc
    ld b, $fe
    inc bc
    cp $03
    rst $38
    ld bc, $190f
    ld b, $0e
    rlca
    dec e

jr_033_6c45:
    rra
    dec sp
    daa
    ld [hl], a
    ld e, [hl]
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $00
    rst $38
    scf
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $20
    rst $20
    ld l, a
    ld a, a
    cp a
    cp a
    ld sp, hl
    ld sp, hl
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    ret nc

    cp a
    db $10
    rst $38
    jr @+$07

    cp b
    rrca
    db $10
    ld bc, $01ff
    cp $02
    cp $02
    dec b
    ld a, [hl-]
    ld [de], a
    ld e, a
    rst $38
    daa
    ld a, [hl]
    ld e, c
    call c, $8c8f
    ld d, e
    rst $18
    inc hl
    db $76
    inc bc
    ld b, $03
    add [hl]
    call nz, $e2c4
    and d
    ld [hl], d
    sub d
    jp hl


    ld sp, hl
    jp hl


    add hl, bc
    add hl, bc
    jp hl


    add hl, bc
    jp hl


    ld [$ffe8], sp
    add sp, -$01
    adc b
    ld e, a
    ld l, b
    ld e, a
    ld l, b
    ld a, a
    ld d, b
    ld a, a
    ld d, b
    ccf
    jr nc, jr_033_6ceb

    jr nc, @+$07

    ld a, b
    rrca
    dec e
    add e
    add $c6
    ld a, l
    rst $30
    inc a
    rst $38
    dec c
    rst $38
    ld b, $05
    ld a, b
    ld [bc], a
    ld [$28e8], sp
    ret c

    db $fc
    inc a
    db $fc
    call nz, $02fe
    rst $38
    ld bc, $7805
    nop
    rra
    db $10
    rrca
    ld [$0407], sp
    dec b
    inc h
    jr nz, jr_033_6ce6

    ld [$f0ff], sp
    dec b
    ld a, b
    ld c, $40
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld c, l
    ld [bc], a

jr_033_6ce6:
    dec h
    rrca
    ld de, $fc07

jr_033_6ceb:
    dec bc
    ld a, [$fa0c]
    db $10
    ld hl, sp+$12
    ld hl, sp+$3a
    ld [bc], a
    inc h
    ld bc, $7f80
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ret nz

    ld a, a
    jp $fc7f


    ld [bc], a
    inc h
    add hl, bc
    ldh [$1f], a
    ld hl, sp+$02
    ld h, d
    rrca
    ld de, $1cfb
    xor $31
    ld sp, hl
    ld h, $f3
    ld l, h
    ret nc

    ld [hl], e
    ret nc

    db $76
    jp hl


    push hl
    ld c, b
    rst $10
    ld d, c
    ld sp, hl
    db $ed
    ld e, a
    jp nc, Jump_000_224f

    db $e3
    inc e
    ld e, a
    nop
    ld a, l
    call c, $d3a7
    xor [hl]
    sub l
    ld l, e
    rlca
    sub c
    ld bc, $03d3
    ld e, d
    inc bc
    ld c, d
    rlca
    ld l, h
    rst $30
    inc c
    scf
    or $fb
    set 7, c
    rrca
    ei
    add hl, bc
    db $fd
    dec b
    db $fd
    rlca
    db $fd
    rlca
    ld [bc], a
    inc h
    rrca
    dec c
    call z, $cf6c
    ld e, e
    rst $08
    ld a, b
    rst $18
    ld [hl], b
    rst $18
    ld d, b
    rst $38
    ld [hl], b
    sbc a
    ret nc

    sbc a
    di
    nop
    sub l
    nop
    and l
    add b
    adc h
    ldh [rPCM12], a
    rst $38
    ccf
    rst $18
    ld e, a
    pop hl
    ld a, [$d210]
    rrca
    jr z, jr_033_6d8e

    or b
    ccf
    and c
    ld a, a
    pop hl
    rst $18
    ldh a, [$3f]
    ld hl, sp-$29
    ld l, h
    db $d3
    xor [hl]
    ei
    ccf
    push de
    ei
    ld sp, hl
    ld [hl], l
    rst $38
    sbc a
    push af
    dec e
    db $fd
    cpl
    db $ed
    dec a
    rst $38
    ld [hl], $02
    inc h

jr_033_6d8e:
    inc bc
    add b
    ld a, a
    ret nz

    cp a
    and b
    cp a
    ldh [rIE], a
    ld b, b
    ld [bc], a
    inc h
    inc bc
    ld bc, $8602
    inc de
    nop
    rst $38
    xor h
    or b
    rst $38
    rst $20
    ld hl, sp-$0f
    ld h, e
    ccf
    cp [hl]
    db $e3
    ld a, d
    or c
    ei
    ret c

    sbc [hl]
    rst $08
    ccf
    rra
    db $10
    ld a, a
    ldh [rIE], a
    add b
    ld [bc], a
    ld [hl], b
    inc d
    sbc e
    add $cf
    ld b, c
    pop hl
    inc hl
    rst $38
    ld e, $ef
    ld l, $e7
    ld a, h
    rst $18
    ld a, h
    di
    ld l, $02
    inc h
    rrca
    dec e
    db $fd
    ld a, a
    cp $06
    db $fc
    add hl, bc
    pop af
    add hl, de
    pop af
    dec de
    rst $38
    ld c, $02
    inc h
    nop
    ld [bc], a
    sub [hl]
    nop
    ld [bc], a
    and [hl]
    dec d
    nop
    rst $38
    nop
    rst $30
    ld a, [de]
    ld [bc], a
    ld a, [$0212]
    inc h
    rrca
    dec d
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    dec b
    rrca
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    dec b
    inc e
    nop
    ldh [rIE], a
    inc l
    rst $38
    inc hl
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$1f
    ld hl, sp+$6f
    add sp, -$61
    sbc a
    dec b
    nop
    rrca
    ld b, $05
    rst $38
    ld hl, sp+$03
    db $fc
    rlca
    db $fc
    rrca
    push af
    rra
    push af
    rra
    db $e4
    ld a, $e4
    ld a, a
    call nz, Call_033_48ff
    rst $38
    ld a, b
    rst $38
    ld b, a
    rst $38
    ret nz

    rst $38
    jr nz, jr_033_6e7d

    ldh [rIE], a
    ld h, l
    rst $38
    ld d, e
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    push af
    push af
    sub e
    rst $38
    adc b
    rst $38
    ld [hl], a
    rst $38
    ld l, c
    ld l, c
    sub c
    sub c
    ld [hl], d
    ld [hl], d
    ld a, [c]
    ld a, [c]
    ld d, b
    ld d, c
    sub b
    sub e
    inc a
    ccf
    db $e3
    db $e3
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $e4
    daa
    db $e4
    daa
    db $e4
    ld b, a
    db $e4
    set 1, d
    dec b
    nop
    inc c
    ld [c], a
    ld a, [hl-]
    jp hl


    add hl, sp
    db $e4
    inc a
    rst $30
    rra
    db $ec
    inc a

jr_033_6e7d:
    rst $20
    ccf
    and $3e
    push af
    dec e

jr_033_6e83:
    and b
    cp a
    pop af
    rst $38
    or b
    cp a
    ld hl, sp-$31
    rst $38
    rst $00
    ld a, h
    ld b, h
    ld a, h
    ld c, a
    ld a, [c]
    sbc a
    ld c, $fe
    add c
    db $fd
    ld [hl], b
    db $fd
    ld e, $ff
    db $10
    db $fc
    ldh a, [$fc]
    rrca
    rrca
    jr nz, jr_033_6e83

    jr nz, @+$22

    ld hl, sp-$08
    rlca
    rlca
    inc b
    inc b
    ld [hl], h
    ld [hl], h
    ld c, a
    ld c, a
    ld b, b
    ld b, b
    rst $38
    rst $38
    cp c
    cp c
    adc b
    adc b
    sub b
    sub d
    ld [hl], d
    ld [hl], a
    dec d
    rla
    ld a, [$7ceb]
    ld b, a
    db $fc
    add a
    dec b
    jr nc, jr_033_6ec7

    ld b, b

jr_033_6ec7:
    ld a, a
    ld [hl], b
    adc a
    ld hl, sp+$07
    db $f4
    ei
    ld a, [$ea4b]
    rst $38
    rrca
    dec b
    nop
    ld a, [bc]
    pop af
    rra
    ld a, [c]
    rra
    pop af
    rra
    ld hl, sp+$0f
    or $1f
    db $e3
    ccf
    push bc
    ld a, l
    sbc h
    db $fc
    add hl, de
    ld sp, hl
    add $f6
    inc [hl]
    db $f4

jr_033_6eec:
    rst $08
    rst $38
    jr nc, jr_033_6eec

    adc a
    rst $38
    ld b, h
    ld [hl], h
    db $e4
    db $e4
    set 1, e
    dec [hl]
    dec [hl]
    ret


    ret


    inc sp
    inc sp
    db $d2, $d2, $14

    inc d
    ld a, [de]
    ld a, [de]

jr_033_6f04:
    ld [hl], c
    ld [hl], c
    ld sp, hl
    rrca
    ld hl, sp+$0f
    di
    rra
    db $fc
    rra
    ldh a, [$bf]
    ld c, h
    ld l, a
    ld d, e
    ld e, a
    or d
    ei
    rst $20
    and $17
    sub $ab
    xor d
    ld c, a
    call z, Call_000_2427
    rra
    jr jr_033_6f42

    jr jr_033_6f04

    ret nc

    rst $38
    ld bc, $05fe
    ld h, l
    nop
    rlca
    db $fc
    rlca
    cp $03
    cp $03
    db $fd
    rrca
    ld [$19fa], a
    reti


    rlca
    add $7f
    rst $38
    ld de, $16f1
    or $7a

jr_033_6f42:
    ld a, [$e343]
    rst $38
    dec b
    ccf
    ld b, $80
    rst $38
    ret nz

    ccf
    jr nz, @-$04

    adc d
    rst $38
    rrca
    pop af
    rra
    di
    ccf
    ret z

    ld a, b
    and $7e
    pop de
    ld a, a
    call z, $ba7f
    cp e
    rst $28
    rst $28
    and l
    rst $20
    ld e, h
    ld e, h
    rst $20
    rst $20
    cp a
    cp c
    rst $20
    db $e4
    rra
    ld e, $7f
    ld [hl], b
    ld e, a
    ld d, b
    sbc a
    sub b
    rst $38
    ldh a, [$3f]
    jr nz, @+$01

    ret nz

    dec b
    nop
    nop
    ldh a, [$3f]
    ret nz

    ld a, a
    db $fc
    ld a, a
    jp $c07f


    ld a, a
    db $fc
    ccf
    rst $38
    inc bc
    rst $38
    nop
    db $fc
    db $fc
    ld bc, $06ff
    cp $f8
    ld hl, sp+$13
    di
    rra
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    ld a, a
    ld h, b
    cp a
    and b
    dec b
    ret c

    inc d
    dec b
    nop
    nop
    db $e3
    ccf
    ld sp, hl
    rra
    db $fd
    rlca
    dec b
    db $ec
    db $10
    dec b
    ld a, [bc]
    inc hl
    ld [c], a
    inc bc
    ld [bc], a
    rra
    inc e
    rst $38
    ldh [rTIMA], a
    nop
    rrca
    dec b
    ld b, b
    ld [bc], a
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    rst $38
    ld hl, $0901
    inc [hl]
    inc bc
    add hl, bc
    rst $38
    ldh a, [$78]
    rst $38
    add h
    rst $38
    ld d, d
    ld a, a
    push de
    push de
    rst $38
    dec hl
    db $eb
    rst $38
    db $fd
    db $e3
    ld a, h
    add hl, bc
    nop
    dec bc
    add b
    add hl, bc
    nop
    rrca
    ld c, $03
    db $fd
    ld c, $fb
    dec d
    rst $30
    ld d, $ed
    inc l
    ld a, [$ed2e]
    dec sp
    ei
    ld a, [de]
    rst $38
    add b
    ld a, a
    ldh [$bf], a
    ld d, b
    rst $18
    pop de
    ld l, a
    ld l, e
    cp a
    db $ed
    ld l, [hl]
    cp e
    rst $38
    ld a, [$5ee1]
    pop hl
    ld e, [hl]
    pop hl
    cp [hl]
    pop de
    ccf
    add c
    ld a, a
    add c
    ld [hl], a
    add e
    adc $83
    ld a, [hl]
    rst $38
    add b
    add hl, bc
    or b
    ld bc, $6f09
    rrca
    nop
    rst $38
    inc b
    ei
    rrca
    ei
    inc c
    add hl, bc
    jr nc, @+$05

    ld [bc], a
    rst $38
    call nz, $a5ff
    db $fd
    cp e
    rst $38
    ld [hl], d
    rst $38
    dec d
    rst $38
    ld a, $ff
    pop bc
    rst $38
    ld [bc], a
    cp $83
    ei
    rlca
    ld a, l
    rrca
    db $d3
    ld a, $ff
    sub d
    db $fd
    ld d, $ff
    inc l
    db $fc
    cpl
    ld a, a
    rst $10
    cp $93
    xor $33
    cp a
    ld h, c
    add a
    ld a, h
    ld c, a
    ld hl, sp-$61
    ldh a, [$bf]
    and b
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    add hl, bc
    nop
    inc c
    ei
    rrca
    ld sp, hl
    ld c, $fd
    rlca
    db $fd

jr_033_7068:
    ld b, $ff
    rlca
    rst $38
    ld [bc], a
    add hl, bc
    ld a, [hl-]
    nop
    cp d
    xor a
    ei
    ld l, a
    xor c
    cp a
    jp hl


    ld a, a
    jp Jump_000_06ff


    rst $38
    sbc a
    ei
    rst $38
    ld h, d
    ld l, a
    db $f4
    sbc a
    add sp, $7e
    or c
    push af
    rst $08
    adc a
    ld a, [hl]
    ld a, a
    ld hl, sp-$01
    pop de
    rst $38
    sub c
    rst $38
    ld c, e
    rst $08
    inc a
    ccf
    ld hl, sp-$01
    jp nc, $b4df

    rst $28
    or l
    db $eb
    dec a
    db $eb
    ld a, $ff
    ldh [rIE], a
    db $10
    rst $38
    ld [$08ff], sp
    rst $30
    db $ec
    ccf
    db $fc
    dec hl
    cp $3d
    rst $38
    add hl, bc
    nop
    rrca
    ld c, $05
    rst $38
    dec b
    ei
    inc c
    rst $38
    rrca
    ld hl, sp+$0f
    cp $11
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [hl+], a
    rst $38
    inc l
    rst $38
    jr nz, jr_033_7068

    pop hl
    ld h, c
    rst $38
    ld e, $ff
    rra
    rst $38
    jr z, @+$01

    xor e
    ld a, [hl]
    bit 7, [hl]
    ld d, [hl]
    db $fd
    or [hl]
    db $fd
    ld d, $dd
    ld a, [hl]
    ld a, c
    sbc [hl]
    ld sp, hl
    ld a, h
    db $eb
    and $ff
    ld h, e
    rst $38
    inc hl
    cp $23
    cp $47
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$09]
    or d
    rrca
    inc b
    add hl, bc
    rst $38
    push af
    or $19
    ld hl, sp+$0f
    cp $07
    rst $38
    rrca
    ld a, [$f41f]
    rra
    db $fd
    rrca
    rst $38
    inc bc
    ld b, a
    rst $38
    rlca
    db $fc
    inc bc
    cp $e1
    rst $38
    ld bc, $87ff
    cp $2f
    ld hl, sp-$01
    ldh a, [$fc]
    adc e
    db $fc
    dec bc
    cp $05
    rst $38
    inc bc
    add hl, bc
    nop
    inc b
    rra
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [rIE], a
    add hl, bc
    rrca
    dec e
    add hl, bc
    nop
    inc b
    ld b, b
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    rst $38
    ld c, l
    dec b
    dec l
    rrca
    add hl, de
    ld bc, $3ffe
    dec b
    inc l
    add hl, bc
    ldh a, [rIF]
    db $fc
    dec b
    inc l
    rrca
    jr nz, jr_033_714f

    db $fc
    rrca
    di

jr_033_714f:
    rla
    db $f4
    dec e
    push hl
    scf
    ei
    ccf
    xor $7f
    rst $08
    rst $38
    jr nc, @+$01

    call z, $73ff
    rst $38

jr_033_7160:
    sbc h
    cp a
    ld h, c
    ld a, a
    add b
    rst $38
    jr jr_033_7160

    add e
    rst $38

jr_033_716a:
    ld h, b
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld sp, hl
    rst $38
    rlca
    rst $38
    ld bc, $ffff
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ldh a, [$af]
    ld hl, sp+$67
    db $fc
    inc hl
    cp $93
    cp $05
    ld a, d
    rrca
    ld bc, $2205
    jr jr_033_716a

    rst $38
    sub h
    rst $38
    inc [hl]
    ld a, a
    ld l, b
    db $eb
    dec b
    ld [hl], $11
    ld l, d
    ld sp, hl
    ei
    ld h, b
    rst $20
    nop
    rst $38
    ld b, b
    rst $38
    add b
    cp a
    ld [hl], b
    or $7d
    db $ed
    dec sp
    db $e3
    nop
    ld h, c
    dec b
    dec l
    nop
    inc b
    rst $38
    ld [bc], a
    ei
    inc e
    rst $18
    ld a, h
    ld l, a
    cp c
    adc a
    ld bc, $530d
    cp $4b
    cp $2f
    cp $2b
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    ei
    add hl, bc
    ei
    add hl, hl
    ei
    dec b
    ld [de], a
    rra
    inc b
    dec b
    dec l
    dec b
    db $fc
    rst $38
    call nc, $d4d5
    call nc, $f6f6
    cp $7e
    ei
    dec sp
    db $fd
    dec a
    db $fc
    inc a
    ldh [rIE], a
    ld a, a
    ld a, a
    ccf
    or h
    rra
    ld e, e
    ld b, a
    ld [hl], a
    jr nc, jr_033_722e

    adc h
    adc h
    db $c3, $c3, $0e


    cp $fc
    db $fd
    ld hl, sp-$2d
    ld [hl], b
    or a
    ret nz

    db $db
    nop
    db $e4
    ld h, c
    ld h, c
    add $c6
    add hl, sp
    rst $38
    dec hl
    cp $2b
    xor $53
    jp c, $7477

    rst $20
    db $e4
    rst $08
    ret z

    sbc a
    sbc b
    dec b
    inc l
    rrca
    ld c, $1f
    rst $38
    rrca
    rst $38
    inc bc
    dec b
    inc l
    ld b, $61
    ld h, c
    rst $18
    rst $18
    adc a
    adc a
    pop hl
    pop hl
    rst $38
    ld a, a
    rst $38
    rra
    dec b
    inc l
    nop

jr_033_722e:
    add c
    add c
    cp $fe
    rra
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rTIMA], a
    inc l
    nop
    ccf
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    dec b
    inc l
    rrca
    rlca
    ld l, h
    ld [hl], d
    ld a, $04
    call Call_033_4460
    ld hl, $ff96
    ld a, [hl]
    and a
    jr z, jr_033_7257

    dec [hl]
    ret


jr_033_7257:
    ld l, $80
    ld a, [hl]
    xor $10
    ld [hl], a
    ldh a, [$a9]
    rra
    ret c

    ldh a, [$8e]
    cp $f0
    jp nz, Jump_033_44ed

    xor a
    ldh [$80], a
    ret


    ld b, $08
    nop
    ld [$a2f0], sp
    ld b, a
    ldh a, [$85]
    add $0c
    sub b
    ld b, a
    jr jr_033_7282

    ldh a, [$a2]
    ld b, a
    ldh a, [$85]
    sub b
    ld b, a

jr_033_7282:
    ldh a, [$a0]
    ld e, a
    ldh a, [$83]
    sub e
    ld e, a
    ld c, $f6
    ld d, $05
    ld hl, $cc00
    ld a, [$c600]
    add l
    ld l, a
    ldh a, [$fe]
    and a
    jr nz, jr_033_72bd

    ld a, e
    sub $40
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    sub $50
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    sub $60
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, l
    ld [$c600], a
    ret


jr_033_72bd:
    dec l
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $40
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $50
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $60
    ld [hl], a
    ld a, l
    ld [$c600], a
    ret


    ldh a, [$a0]
    ld b, a
    ldh a, [$83]
    add $10
    sub b
    ld e, a
    ldh a, [$a2]
    ld b, a
    ldh a, [$85]
    add $04
    sub b
    ld b, a
    ld c, $e2
    ld d, $05
    ld hl, $cc00
    ld a, [$c600]
    add l
    ld l, a
    ldh a, [$fe]
    and a
    jr nz, jr_033_7331

    ld a, e
    sub $40
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    sub $50
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    sub $60
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    sub $70
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, l
    ld [$c600], a
    ret


jr_033_7331:
    dec l
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $40
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $50
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $60
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld a, c
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld a, e
    sub $70
    ld [hl], a
    ld a, l
    ld [$c600], a
    ret


    ldh a, [$9a]
    and $0f
    dec a
    dec a
    ret nz

    ld b, $03
    ld d, $01
    ld e, $5f
    ld h, $00
    ld l, $0e
    ld c, $6a
    call $1763
    ld a, $aa
    ld [c], a
    inc c
    ld a, $ff
    ld [c], a
    ld a, b
    ld [c], a
    ld a, e
    ld [c], a
    ld a, d
    ld [c], a
    ld a, l
    ld [c], a
    ld a, h
    ld [c], a
    ret


    ld b, $7c
    ld d, $7f
    ld e, $5a
    ld h, $14
    ld l, $00
    ld c, $6a
    call $1763
    ld a, $aa
    ld [c], a
    inc c
    ld a, $1f
    ld [c], a
    ld a, b
    ld [c], a
    ld a, e
    ld [c], a
    ld a, d
    ld [c], a
    ld a, l
    ld [c], a
    ld a, h
    ld [c], a
    ret


    dec b
    stop
    db $10
    inc b
    stop
    stop
    ld [$1001], sp
    ld [bc], a
    inc b
    inc bc
    jr nz, @+$04

    ld [bc], a
    ld bc, $0002
    jr nz, jr_033_73c3

    ld [$0804], sp
    rlca

jr_033_73c3:
    db $10
    ld [$0720], sp
    db $10
    inc b
    ld [$0804], sp
    dec b
    ld [$0805], sp
    add hl, bc
    db $10
    ld a, [bc]
    db $10
    add hl, bc
    db $10
    dec b
    ld [$0805], sp
    ld [bc], a
    jr nz, jr_033_73de

    inc b

jr_033_73de:
    nop
    db $10
    ld b, $20
    ld bc, $0010
    jr nz, jr_033_73f2

    jr nz, jr_033_73e9

jr_033_73e9:
    jr nz, @+$0e

    jr nz, jr_033_73ed

jr_033_73ed:
    jr nz, @+$10

    dec bc
    dec c
    dec bc

jr_033_73f2:
    ld a, $81
    ldh [$9c], a
    ld a, [$c70c]
    and a
    ret z

    ld [$c71e], a
    ld hl, $ff9f
    ld a, $74
    ld [hl-], a
    ld a, $22
    ld [hl-], a
    ld l, $8d
    ld a, $07
    ld [hl-], a
    ld a, $f8
    ld [hl-], a
    ld a, $06
    ld [hl-], a
    ldh a, [$9a]
    ld [$c129], a
    ld a, $01
    ld [$c69a], a
    ld a, $19
    ld [$c69b], a
    ret


    ld a, $81
    ldh [$9c], a
    ldh a, [$8f]
    ld b, a
    and $1f
    jr nz, jr_033_7431

    ld a, $a7
    ldh [$ac], a

jr_033_7431:
    ld a, b
    cp $58
    jp nz, Jump_033_4513

    ld a, $02
    ld hl, $ff96
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c71e], a
    ld a, $1b
    ldh [$90], a
    ld l, $9f
    ld a, $74
    ld [hl-], a
    ld a, $51
    ld [hl-], a
    ret


    ld a, $81
    ldh [$9c], a
    ld hl, $ff9a
    ld a, [$c660]
    cp $41
    jr c, jr_033_7467

    cp $70
    jr nc, jr_033_746d

    ld a, $1b
    jr jr_033_7471

jr_033_7467:
    res 7, [hl]
    ld a, $1a
    jr jr_033_7471

jr_033_746d:
    set 7, [hl]
    ld a, $1c

jr_033_7471:
    ldh [$90], a
    ld bc, $42e0
    ld l, $99
    ld a, [hl]
    add c
    ld c, a
    ld a, [bc]
    cp $80
    jr nz, jr_033_7490

    ldh a, [$96]
    and a
    jr z, jr_033_74a2

    dec a
    ldh [$96], a
    ld c, $e0
    ld a, [bc]
    ld c, $01
    ld [hl], c
    jr jr_033_7491

jr_033_7490:
    inc [hl]

jr_033_7491:
    ld l, $83
    cp $80
    ld c, [hl]
    jr nc, jr_033_749d

    add c
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_033_749d:
    add c
    ld [hl+], a
    ret c

    dec [hl]
    ret


jr_033_74a2:
    xor a
    ldh [$99], a
    ld a, $02
    ldh [$90], a
    ld a, $04
    ldh [$94], a
    ld a, $01
    ldh [$96], a
    ld l, $9f
    ld a, $75
    ld [hl-], a
    ld a, $a0
    ld [hl-], a
    ret


    call Call_033_7942
    ldh a, [$a9]
    and $1f
    jr nz, jr_033_74c7

    ld a, $a7
    ldh [$ac], a

jr_033_74c7:
    ldh a, [$8e]
    cp $38
    jr z, jr_033_74d3

    call Call_033_44ed
    jp Jump_033_7832


jr_033_74d3:
    ldh a, [$8f]
    cp $58
    jr z, jr_033_74ea

    ldh a, [$9a]
    rlca
    jr c, jr_033_74e4

    call Call_033_4513
    jp Jump_033_7832


jr_033_74e4:
    call Call_033_450b
    jp Jump_033_7832


jr_033_74ea:
    ld hl, $ff96
    dec [hl]
    jp nz, Jump_033_7832

    ld a, $02
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $8b
    ld a, $00
    ld [hl-], a
    dec l
    ld a, [hl]
    and $c0
    or $1c
    ld [hl-], a
    xor a
    ld [hl], a
    ld l, $91
    ld a, $06
    ld [hl], a
    ld l, $9f
    ld a, $76
    ld [hl-], a
    ld a, $c6
    ld [hl-], a
    ld l, $80
    res 3, [hl]
    ret


jr_033_7518:
    ld l, $90
    ld a, [hl]
    and $fe
    jr z, jr_033_7527

    cp $04
    jr z, jr_033_752b

    ld a, $09
    jr jr_033_752d

jr_033_7527:
    ld a, $07
    jr jr_033_752d

jr_033_752b:
    ld a, $0b

jr_033_752d:
    ld [hl], a
    ld l, $9b
    ld a, [hl]
    cp $34
    jr z, jr_033_753b

    ld bc, $4ce1
    jp Jump_000_37d5


jr_033_753b:
    ld bc, $4cf6
    jp Jump_000_37d5


Jump_033_7541:
    ld a, $34
    jr jr_033_7559

jr_033_7545:
    call Call_033_7832
    ldh a, [$8f]
    and $fe
    cp $a0
    jp c, Jump_033_451d

    ld l, $9a
    res 7, [hl]
    jr jr_033_757b

jr_033_7557:
    ld a, $35

jr_033_7559:
    ld [hl-], a
    ld a, [hl]
    and $0f
    dec a
    ret z

    dec [hl]
    ld a, [hl]
    ld [$c129], a
    and $0f
    cp $04
    ret nz

    jr jr_033_7518

jr_033_756b:
    call Call_033_7832
    ldh a, [$8f]
    and $fe
    cp $12
    jp nc, Jump_033_4527

    ld l, $9a
    set 7, [hl]

jr_033_757b:
    inc l
    xor a
    ld [hl-], a
    ld a, [hl]
    and $0f
    cp $04
    jr z, jr_033_758f

    ld l, $91
    ld a, $06
    ld [hl], a
    ld a, $04
    ldh [$96], a
    ret


jr_033_758f:
    ld l, $9f
    ld a, $74
    ld [hl-], a
    ld a, $ba
    ld [hl-], a
    ld a, $08
    ldh [$90], a
    ld a, $1e
    ldh [$96], a
    ret


    ld a, [$c678]
    and a
    jr nz, jr_033_75b0

    ld hl, $ff9f
    ld a, $79
    ld [hl-], a
    ld a, $51
    ld [hl-], a
    ret


jr_033_75b0:
    ld hl, $ff9b
    ld a, [hl]
    and a
    jr z, jr_033_75ca

    cp $34
    jr z, jr_033_7545

    cp $35
    jr z, jr_033_756b

    cp $04
    jp z, Jump_033_7541

    cp $05
    jr z, jr_033_7557

    xor a
    ld [hl], a

jr_033_75ca:
    ld l, $88
    ld a, [hl]
    and a
    jr z, jr_033_75d5

    cp $01
    jr z, jr_033_7611

    ret


jr_033_75d5:
    ld a, $04
    call Call_033_4491
    call Call_033_7607
    ldh a, [$8e]
    cp $74
    jp nz, Jump_033_44e5

    ld a, $01
    ldh [$88], a
    xor a
    ldh [$99], a
    ld l, $9a
    ld a, [$c660]
    add $2a
    ld b, a
    ldh a, [$8f]
    add $2a
    cp b
    jr c, jr_033_7600

    res 7, [hl]
    ld a, $00
    jr jr_033_7604

jr_033_7600:
    set 7, [hl]
    ld a, $04

jr_033_7604:
    ldh [$90], a
    ret


Call_033_7607:
    ldh a, [$a9]
    and $03
    ret nz

    ld a, $22
    ldh [$ac], a
    ret


jr_033_7611:
    ld a, $04
    call Call_033_4491
    call Call_033_7607
    ld l, $96
    ld a, [hl]
    and a
    jr nz, jr_033_7675

    ldh a, [$8f]
    ld l, $9a
    bit 7, [hl]
    jr nz, jr_033_7630

    cp $30
    jr z, jr_033_7664

    call Call_033_4513
    jr jr_033_7637

jr_033_7630:
    cp $80
    jr z, jr_033_7668

    call Call_033_450b

jr_033_7637:
    ld bc, $4340
    ld hl, $ff99
    ld a, [hl]
    add c
    ld c, a
    ld a, [bc]
    cp $80
    jr nz, jr_033_764d

    ld c, $40
    ld a, [bc]
    ld c, $01
    ld [hl], c
    jr jr_033_764e

jr_033_764d:
    inc [hl]

jr_033_764e:
    ld l, $83
    cp $80
    ld c, [hl]
    jr nc, jr_033_765c

    add c
    ld [hl+], a
    jr nc, jr_033_7661

    inc [hl]
    jr jr_033_7661

jr_033_765c:
    add c
    ld [hl+], a
    jr c, jr_033_7661

    dec [hl]

jr_033_7661:
    jp Jump_033_7854


jr_033_7664:
    set 7, [hl]
    jr jr_033_766a

jr_033_7668:
    res 7, [hl]

jr_033_766a:
    ld a, $04
    ldh [$96], a
    ld a, $02
    ldh [$90], a
    jp Jump_033_7854


jr_033_7675:
    dec [hl]
    jp nz, Jump_033_7854

    ldh a, [$9a]
    rlca
    jr c, jr_033_7682

    ld a, $00
    jr jr_033_7684

jr_033_7682:
    ld a, $04

jr_033_7684:
    ldh [$90], a
    jp Jump_033_7854


jr_033_7689:
    ld a, $58
    ld [hl-], a
    ld a, [hl]
    and $0f
    dec a
    jr z, jr_033_769d

    dec [hl]
    ld a, [hl]
    ld [$c129], a
    and $0f
    dec a
    jp z, Jump_033_7e0c

jr_033_769d:
    ld a, $3c
    ldh [$96], a
    ld l, $90
    inc [hl]

jr_033_76a4:
    call Call_033_78cc
    ld hl, $ff96
    dec [hl]
    ret nz

    ld l, $90
    dec [hl]
    ld l, $80
    res 3, [hl]
    xor a
    ldh [$9b], a
    ldh a, [$98]
    and a
    ret z

    ld l, $9a
    cp $80
    jr nc, jr_033_76c3

    res 7, [hl]
    ret


jr_033_76c3:
    set 7, [hl]
    ret


    call Call_033_7942
    ld hl, $ff9c
    ld a, $81
    ld [hl-], a
    ld a, [hl]
    and a
    jr z, jr_033_76df

    and $fe
    cp $58
    jr z, jr_033_76a4

    cp $28
    jr z, jr_033_7689

    xor a
    ld [hl], a

jr_033_76df:
    ld l, $88
    ld a, [hl]
    and a
    jr nz, jr_033_76eb

    call Call_033_76f4
    jp Jump_033_78cc


jr_033_76eb:
    cp $01
    ret nz

    call Call_033_776c
    jp Jump_033_78cc


Call_033_76f4:
    ld l, $9a
    ld a, [$c660]
    cp $41
    jr c, jr_033_7705

    cp $70
    jr nc, jr_033_770b

    ld a, $08
    jr jr_033_770f

jr_033_7705:
    res 7, [hl]
    ld a, $06
    jr jr_033_770f

jr_033_770b:
    set 7, [hl]
    ld a, $0a

jr_033_770f:
    ldh [$90], a
    ld bc, $42e0
    ld hl, $ff99
    ld a, [hl]
    add c
    ld c, a
    ld a, [bc]
    cp $80
    jr nz, jr_033_7736

    ld e, $00
    ld c, $30
    call Call_033_77bf
    dec e
    jr nz, jr_033_7750

    ldh a, [$b6]
    and a
    jr nz, jr_033_7748

    ld c, $e0
    ld a, [bc]
    ld c, $01
    ld [hl], c
    jr jr_033_7737

jr_033_7736:
    inc [hl]

jr_033_7737:
    ld l, $83
    cp $80
    ld c, [hl]
    jr nc, jr_033_7743

    add c
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_033_7743:
    add c
    ld [hl+], a
    ret c

    dec [hl]
    ret


jr_033_7748:
    ld a, $01
    ldh [$88], a
    xor a
    ldh [$96], a
    ret


jr_033_7750:
    ld hl, $ff96
    dec [hl]
    ret nz

    ld a, $02
    ld [hl-], a
    ld a, $91
    ldh [$ac], a
    ldh a, [rDIV]
    rra
    jr c, jr_033_7766

    ld bc, $49b2
    jr jr_033_7769

jr_033_7766:
    ld bc, $49c9

jr_033_7769:
    jp Jump_000_37c1


Call_033_776c:
    ld hl, $ff96
    ld a, [hl]
    and a
    jr nz, jr_033_77ad

    ld l, $98
    ld a, [hl]
    and a
    jr nz, jr_033_7783

    ld e, $00
    ld c, $30
    call Call_033_77bf
    dec e
    jr nz, jr_033_77b3

jr_033_7783:
    ldh a, [$9a]
    rlca
    jr c, jr_033_7795

    ld a, [hl]
    cp $c0
    jr z, jr_033_77a2

    dec [hl]
    ld a, $06
    ldh [$90], a
    jp Jump_033_4513


jr_033_7795:
    ld a, [hl]
    cp $40
    jr z, jr_033_77a2

    inc [hl]
    ld a, $0a
    ldh [$90], a
    jp Jump_033_450b


jr_033_77a2:
    ld l, $9a
    ld a, [hl]
    xor $80
    ld [hl], a
    ld a, $08
    ldh [$96], a
    ret


jr_033_77ad:
    dec [hl]
    ld a, $08
    ldh [$90], a
    ret


jr_033_77b3:
    ld a, $00
    ldh [$88], a
    ld a, $02
    ldh [$96], a
    xor a
    ldh [$99], a
    ret


Call_033_77bf:
    ld e, $00
    ld a, [$c000]
    rra
    jr nc, jr_033_77cf

    ld a, [$c007]
    cp c
    jr nz, jr_033_77cf

    inc e
    ret


jr_033_77cf:
    ld a, [$c020]
    rra
    jr nc, jr_033_77dd

    ld a, [$c027]
    cp c
    jr nz, jr_033_77dd

    inc e
    ret


jr_033_77dd:
    ld a, [$c040]
    rra
    jr nc, jr_033_77eb

    ld a, [$c047]
    cp c
    jr nz, jr_033_77eb

    inc e
    ret


jr_033_77eb:
    ld a, [$c060]
    rra
    jr nc, jr_033_77f9

    ld a, [$c067]
    cp c
    jr nz, jr_033_77f9

    inc e
    ret


jr_033_77f9:
    ld a, [$c080]
    rra
    jr nc, jr_033_7807

    ld a, [$c087]
    cp c
    jr nz, jr_033_7807

    inc e
    ret


jr_033_7807:
    ld a, [wDebug_main_menu_option]
    rra
    jr nc, jr_033_7815

    ld a, [$c0a7]
    cp c
    jr nz, jr_033_7815

    inc e
    ret


jr_033_7815:
    ld a, [$c0c0]
    rra
    jr nc, jr_033_7823

    ld a, [$c0c7]
    cp c
    jr nz, jr_033_7823

    inc e
    ret


jr_033_7823:
    ld a, [$c0e0]
    rra
    jr nc, jr_033_7831

    ld a, [$c0e7]
    cp c
    jr nz, jr_033_7831

    inc e
    ret


jr_033_7831:
    ret


Call_033_7832:
Jump_033_7832:
    ld a, $81
    ldh [$9c], a
    ldh a, [$a9]
    and $03
    ret nz

    ld hl, $ff91
    ldh a, [$fe]
    and a
    ld a, [hl]
    jr z, jr_033_7850

    cp $06
    jr z, jr_033_784c

    ld a, $06
    jr jr_033_7852

jr_033_784c:
    ld a, $10
    jr jr_033_7852

jr_033_7850:
    xor $10

jr_033_7852:
    ld [hl], a
    ret


Jump_033_7854:
    ldh a, [$9a]
    and $0f
    cp $07
    ret z

    ldh a, [$a0]
    ld b, a
    ldh a, [$83]
    sub $10
    sub b
    ld e, a
    ldh a, [$a2]
    ld b, a
    ldh a, [$85]
    add $06
    sub b
    ld b, a
    ld c, $ec
    ld d, $06
    ldh a, [$fe]
    and a
    jr nz, jr_033_789d

    ld hl, $cc00
    ld a, [$c600]
    add l
    ld l, a
    ld a, e

Call_033_787f:
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ldh a, [$9a]
    and $0f
    cp $06
    jr z, jr_033_7898

    ld a, e
    ld [hl+], a
    ld a, b
    sub $08
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a

jr_033_7898:
    ld a, l
    ld [$c600], a
    ret


jr_033_789d:
    ld hl, $c134
    ldh a, [$9a]
    and $0f
    cp $06
    jr z, jr_033_78bc

    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e

Call_033_78af:
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    sub $08
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], a
    ret


jr_033_78bc:
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_033_78cc:
Jump_033_78cc:
    ldh a, [$9a]
    and $0f
    cp $04
    ret z

    ldh a, [$a0]
    ld b, a
    ldh a, [$83]
    sub b
    ld e, a
    ldh a, [$a2]
    ld b, a
    ldh a, [$85]
    add $06
    sub b
    ld b, a
    ld c, $ec
    ld d, $06
    ldh a, [$fe]
    and a
    jr nz, jr_033_7913

    ld hl, $cc00
    ld a, [$c600]
    add l
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ldh a, [$9a]
    and $0f
    cp $03
    jr z, jr_033_790e

    ld a, e

Call_033_7905:
    ld [hl+], a
    ld a, b
    sub $08
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl+], a

jr_033_790e:
    ld a, l
    ld [$c600], a
    ret


jr_033_7913:
    ld hl, $c134
    ldh a, [$9a]
    and $0f
    cp $03
    jr z, jr_033_7932

    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    sub $08
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], a
    ret


jr_033_7932:
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_033_7942:
    ld a, [$c678]
    and a
    ret nz

    ld hl, $ff9f
    ld a, $79
    ld [hl-], a
    ld a, $51
    ld [hl-], a
    ret


    ld a, $81
    ldh [$9c], a
    ld hl, $ff80
    set 3, [hl]
    bit 1, [hl]
    jp nz, Jump_033_4531

    xor a
    ld [hl], a
    ret


    ld hl, $ff96
    dec [hl]
    jp nz, Jump_033_44e5

    ld l, $9f
    ld a, $79
    ld [hl-], a
    ld a, $8c
    ld [hl-], a
    ret


jr_033_7972:
    xor a
    ld [hl], a
    ret


jr_033_7975:
    ld a, $81
    ldh [$9c], a
    xor a
    ldh [$b6], a
    ld hl, $ff9b
    ld a, $58
    ld [hl-], a
    ld a, $10
    ldh [$96], a
    ld bc, $49f7
    jp Jump_000_37c1


    ld hl, $ff80
    bit 1, [hl]
    jr z, jr_033_7972

    ld l, $88
    ld a, [hl]
    and a
    jr z, jr_033_79cf

    dec [hl]
    jr z, jr_033_7975

    cp $78
    jr nc, jr_033_79cf

    ldh a, [$a9]
    and $03
    jr nz, jr_033_79c1

    ld l, $91
    ldh a, [$fe]
    and a
    ld a, [hl]
    jr z, jr_033_79ba

    cp $05
    jr z, jr_033_79b6

    ld a, $05
    jr jr_033_79bc

jr_033_79b6:
    ld a, $10
    jr jr_033_79bc

jr_033_79ba:
    xor $10

jr_033_79bc:
    ld [hl], a
    ld a, $a8
    ldh [$ac], a

jr_033_79c1:
    ld l, $94
    dec [hl]
    jr nz, jr_033_79cf

    ld a, $06
    ld [hl], a
    ld l, $90
    ld a, [hl]
    xor $01
    ld [hl], a

jr_033_79cf:
    ldh a, [$9b]
    rst $28
    ld a, l
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    ld [c], a
    ld a, e
    ld [$847b], a
    ld a, h
    sub a
    ld a, h
    cp $7b
    ld [$297c], sp
    ld a, h
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    ccf
    ld a, h
    adc a
    ld a, e
    ld c, [hl]
    ld a, h
    ld e, b
    ld a, h
    ld h, d
    ld a, h
    ld [hl], e
    ld a, h
    xor d
    ld a, h
    cp h
    ld a, h
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    srl b
    push hl
    jr c, @+$01

    jr c, jr_033_7a32

    add hl, sp
    inc sp
    add hl, sp
    ld c, l
    add hl, sp
    ld h, a
    add hl, sp
    ld [hl], h
    add hl, sp
    pop bc
    ld a, e
    pop bc
    ld a, e
    inc hl
    ld a, e
    adc h
    ld a, d
    adc a
    ld a, e
    db $d3
    ld a, d
    dec bc
    ld a, e
    adc a
    ld a, e

jr_033_7a32:
    adc a
    ld a, e
    ret nz

    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    ld b, h
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    sub h
    ld a, h
    and a
    ld a, h
    ld h, $39
    inc c
    add hl, sp
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    ld c, e
    ld a, h
    adc a
    ld a, e
    call c, $e939
    add hl, sp
    ld h, [hl]
    ld a, h
    ld [hl], a
    ld a, h
    or e
    ld a, h
    push bc
    ld a, h
    sub d

jr_033_7a67:
    ld a, [hl-]
    sbc a
    ld a, [hl-]
    adc $7c
    ldh [$7c], a
    ld a, [c]
    ld a, h
    inc b
    ld a, l
    ret c

    jr c, jr_033_7a67

    jr c, jr_033_7a83

    add hl, sp
    ld h, $39
    ld b, b
    add hl, sp
    ld e, d
    add hl, sp
    call c, $e939
    add hl, sp
    push de

jr_033_7a83:
    ld a, e
    adc a
    ld a, e
    ld c, b
    ld a, e
    xor e
    ld a, d
    adc a
    ld a, e

Jump_033_7a8c:
    ld a, $aa
    ldh [$ac], a
    ld hl, $ff9b
    ld a, $5b
    ld [hl-], a
    ld a, $09
    ldh [$94], a
    ld a, [$c660]
    ld b, a
    ldh [$97], a
    ldh a, [$8f]
    sub b
    jr nc, jr_033_7aa8

    set 7, [hl]
    ret


jr_033_7aa8:
    res 7, [hl]
    ret


    call Call_033_7e7e
    ldh a, [$97]
    and $fc
    ld b, a
    ldh a, [$8f]
    and $fc
    cp b
    jr z, jr_033_7acb

    ldh a, [$9a]
    rlca
    jr c, jr_033_7ac5

    ld bc, $4300
    jp Jump_033_455c


jr_033_7ac5:
    ld bc, $4310
    jp Jump_033_455c


jr_033_7acb:
    ld a, $2d
    ldh [$9b], a
    xor a
    ldh [$99], a
    ret


    call Call_033_7e7e
    ld hl, $ff83
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$a7], a
    db $cd, $0f, $14
    and a
    jr nz, jr_033_7af1

    ld bc, $40d0
    jp $453b


jr_033_7af1:
    ld hl, $ff83
    ldh a, [$a6]
    ld [hl+], a
    ldh a, [$a5]
    ld [hl], a
    ld a, $2e
    ldh [$9b], a
    ld a, $3c
    ldh [$96], a
    ld a, $46
    ldh [$ac], a
    ld b, $20
    jp Jump_000_2853


    call Call_033_7e7e
    ld hl, $ff96
    ld a, [hl]
    and a
    jr z, jr_033_7b17

    dec [hl]
    ret


jr_033_7b17:
    ldh a, [$8e]
    and $fe
    cp $58
    jp z, Jump_033_7a8c

    jp $44f7


    ld hl, $ff9b
    ld a, $5a
    ld [hl-], a
    dec l
    ld a, [$c129]
    and $0f
    cp $04
    jr z, jr_033_7b3b

    ldh a, [rDIV]
    ld b, a
    ldh a, [$a9]
    add b
    jr jr_033_7b3c

jr_033_7b3b:
    xor a

jr_033_7b3c:
    ld [hl-], a
    xor a
    ld [hl-], a
    dec l
    ld a, $48
    ld [hl-], a
    dec l
    ld a, $09
    ld [hl-], a
    ret


    call Call_033_7e7e
    ld l, $96
    ld a, [hl]
    and a
    jr z, jr_033_7b6c

    dec [hl]
    cp $21
    ret nc

    ldh a, [$99]
    cp $39
    jr c, jr_033_7b64

    cp $a3
    jr c, jr_033_7b69

    ldh a, [$a9]
    rra
    jr c, jr_033_7b69

jr_033_7b64:
    call Call_033_4501
    jr jr_033_7b6c

jr_033_7b69:
    call Call_033_44e5

jr_033_7b6c:
    ldh a, [$9a]
    rlca
    jr c, jr_033_7b77

    ld bc, $42a0
    jp Jump_033_455c


jr_033_7b77:
    ld bc, $42c0
    jp Jump_033_455c


    ld a, [$c129]
    and $0f
    cp $03
    jr c, jr_033_7b8a

    ld a, $2a
    jr jr_033_7b8c

jr_033_7b8a:
    ld a, $2b

jr_033_7b8c:
    ldh [$9b], a
    ret


    ld a, $31
    ldh [$9b], a
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
    jr z, jr_033_7bb6

    ld hl, $ff89
    set 6, [hl]
    ld l, $83
    ldh a, [$a6]
    ld [hl+], a
    ldh a, [$a5]
    ld [hl], a
    ret


jr_033_7bb6:
    ld hl, $ff89
    res 6, [hl]
    ld a, $12
    ldh [$9b], a
    ret


    ret


    ld a, $81
    ldh [$9c], a
    ld hl, $ff9b
    ld a, $58
    ld [hl-], a
    ld a, $10
    ldh [$96], a
    ld bc, $49e0
    jp Jump_000_37c1


    ld a, $81
    ldh [$9c], a
    ld hl, $ff96
    dec [hl]
    ret nz

    xor a
    ldh [$80], a
    ret


    ld hl, $ff9b
    ld a, $34
    ld [hl-], a
    jr jr_033_7bf0

    ld hl, $ff9b
    ld a, $35
    ld [hl-], a

jr_033_7bf0:
    ld a, [hl]
    and $f0
    ld [hl-], a
    xor a
    ld [hl-], a
    ld a, $03
    ld [hl-], a
    ld a, $81
    ldh [$9c], a
    ret


    ld hl, $ff9c
    ld a, $8f
    ld [hl-], a
    ld a, $38
    jr jr_033_7c10

    ld hl, $ff9c
    ld a, $8f
    ld [hl-], a
    ld a, $39

jr_033_7c10:
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ld a, $02
    ld [hl-], a
    dec l
    ld a, $04
    ld [hl-], a
    ld l, $89
    ld a, [hl]
    and $c0
    or $00
    ld [hl-], a
    dec [hl]
    ld a, $0e
    ldh [$90], a
    ret


    ld a, [$c660]
    add c
    ld b, a
    ldh a, [$8f]
    add c
    sub b
    ld hl, $ff9b
    jr c, jr_033_7c3b

    ld a, $38
    jr jr_033_7c10

jr_033_7c3b:
    ld a, $39
    jr jr_033_7c10

    ld hl, $ff9c
    ld a, $9f
    ld [hl-], a
    ld a, $42
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    jp Jump_000_3a85


    ld hl, $ff9b
    ld a, $44
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ret


    ld hl, $ff9b
    ld a, $45
    ld [hl-], a
    dec l
    xor a
    ld [hl-], a
    ret


    ld a, $46
    ldh [$9b], a
    ld hl, $ff98
    ld a, [hl]
    and a
    jp nz, Jump_000_39c2

    ld a, $01
    ldh [$9b], a
    ret


    ld a, $47
    ldh [$9b], a
    ld hl, $ff98
    ld a, [hl]
    and a
    jp nz, Jump_000_39cf

    ld a, $01
    ldh [$9b], a
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
    jp Jump_000_3a5e


jr_033_7caa:
    ld a, $48
    ldh [$9b], a
    ld hl, $ff80
    set 2, [hl]
    ld a, [$d53e]
    and a
    jr nz, jr_033_7cbc

    jp Jump_000_3a78


jr_033_7cbc:
    ld a, $49
    ldh [$9b], a
    ld hl, $ff80
    set 2, [hl]
    ld a, [$d53e]
    and a
    jr z, jr_033_7caa

    jp Jump_000_3a6b


    call Call_000_3ac6
    ld hl, $ff9b
    ld a, [hl]
    cp $4c
    ret z

    ld a, $05
    ld [hl], a
    ld a, $20
    ldh [$ac], a
    ret


    call Call_000_3ad3
    ld hl, $ff9b
    ld a, [hl]

Call_033_7ce7:
    cp $4d
    ret z

    ld a, $04
    ld [hl], a
    ld a, $20
    ldh [$ac], a
    ret


    call Call_000_3aac
    ld hl, $ff9b
    ld a, [hl]
    cp $4e
    ret z

    ld a, $05
    ld [hl], a
    ld a, $20
    ldh [$ac], a
    ret


    call Call_000_3ab9
    ld hl, $ff9b
    ld a, [hl]
    cp $4f
    ret z

    ld a, $04
    ld [hl], a
    ld a, $20
    ldh [$ac], a
    ret


    ld hl, $ff80
    set 3, [hl]
    ld l, $94
    dec [hl]
    jr nz, jr_033_7d29

    ld a, $04
    ld [hl], a
    ld l, $90
    ld a, [hl]
    xor $01
    ld [hl], a

jr_033_7d29:
    ld l, $96
    inc [hl]
    ld a, [hl]
    cp $08
    jr z, jr_033_7d44

    cp $10
    jr z, jr_033_7d51

    cp $18
    jr z, jr_033_7d44

    cp $20
    jr z, jr_033_7d66

    cp $28
    ret nz

    xor a
    ldh [$80], a
    ret


jr_033_7d44:
    ld a, $a9
    ldh [$ac], a
    ld l, $85
    ld a, [hl]
    add $10
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_033_7d51:
    ld a, $a9
    ldh [$ac], a
    ld l, $83
    ld a, [hl]
    add $08
    ld [hl+], a
    jr nc, jr_033_7d5e

    inc [hl]

jr_033_7d5e:
    inc l
    ld a, [hl]
    sub $10
    ld [hl+], a
    ret nc

    dec [hl]
    ret


jr_033_7d66:
    ld a, $a9
    ldh [$ac], a
    ld l, $83
    ld a, [hl]
    add $04
    ld [hl+], a
    jr nc, jr_033_7d73

    inc [hl]

jr_033_7d73:
    inc l
    ld a, [hl]
    sub $08
    ld [hl+], a
    ret nc

    dec [hl]
    ret


    ld hl, $ff80
    set 3, [hl]
    ld l, $94
    dec [hl]
    jr nz, jr_033_7d8e

    ld a, $04
    ld [hl], a
    ld l, $90
    ld a, [hl]
    xor $01
    ld [hl], a

jr_033_7d8e:
    ld l, $96
    inc [hl]
    ld a, [hl]
    cp $08
    jr z, jr_033_7da9

    cp $10
    jr z, jr_033_7db6

    cp $18
    jr z, jr_033_7dc3

    cp $20
    jr z, jr_033_7dd0

    cp $28
    ret nz

    xor a
    ldh [$80], a
    ret


jr_033_7da9:
    ld a, $a9
    ldh [$ac], a
    ld l, $85
    ld a, [hl]
    add $10
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_033_7db6:
    ld a, $a9
    ldh [$ac], a
    ld l, $85
    ld a, [hl]
    sub $20

Call_033_7dbf:
    ld [hl+], a
    ret nc

    dec [hl]
    ret


jr_033_7dc3:
    ld a, $a9
    ldh [$ac], a
    ld l, $85
    ld a, [hl]
    add $30
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_033_7dd0:
    ld a, $a9
    ldh [$ac], a
    ld l, $85
    ld a, [hl]
    sub $40
    ld [hl+], a
    ret nc

    dec [hl]
    ret


    ld a, $81
    ldh [$9c], a
    ld hl, $ff80
    set 3, [hl]
    ld l, $96
    ld a, [hl]
    and a
    jr z, jr_033_7df1

    dec [hl]
    ld a, $07
    ldh [$ac], a

jr_033_7df1:
    ld l, $94
    dec [hl]
    jr nz, jr_033_7e03

    ld a, $04
    ld [hl+], a
    dec [hl]
    jr nz, jr_033_7e00

    xor a
    ldh [$80], a
    ret


jr_033_7e00:
    ld l, $90
    inc [hl]

jr_033_7e03:
    ldh a, [$9a]
    rlca
    jp c, Jump_000_3a44

    jp Jump_000_3a2a


Jump_033_7e0c:
    ld l, $9f
    ld a, $7e
    ld [hl-], a
    ld a, $37
    ld [hl-], a
    ld a, $1d
    ldh [$90], a
    ld l, $9a
    ld a, [hl]
    and $f0
    ld [hl-], a

Call_033_7e1e:
    xor a
    ld [hl-], a
    ld a, $02
    ld [hl-], a
    dec l
    ld a, $4b
    ld [hl-], a
    ld a, $32
    ld [$c6a7], a
    ld a, $f4
    ld [$c610], a
    ld a, $01
    ld [$c611], a
    ret


    ld a, $81
    ldh [$9c], a
    ld hl, $ff96
    ld a, [hl]
    and a
    jp z, Jump_000_3a44

    dec [hl]
    cp $28
    jr nz, jr_033_7e4e

    ld bc, $4a0e
    jp Jump_000_37c1


jr_033_7e4e:
    cp $01
    ret nz

    ld a, $17
    ldh [$90], a
    ld bc, $4d0b
    jp Jump_000_37d5


    ld a, $81
    ldh [$9c], a
    ld a, $06
    call Call_033_4491
    ld l, $80
    set 3, [hl]
    ld l, $96
    ld a, [hl]
    and a
    jr z, jr_033_7e75

    dec [hl]
    ret nz

    ld a, $d0
    ldh [$ac], a
    ret


jr_033_7e75:
    call Call_033_4513
    ld bc, $4320
    jp $453b


Call_033_7e7e:
    ld hl, $ff94
    dec [hl]
    ret nz

    ld a, $09
    ld [hl], a
    ld l, $90
    ld a, [hl]
    xor $01
    ld [hl], a
    rra
    ret nc

    ld a, $ab
    ldh [$ac], a
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

Jump_033_7f0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_033_7ff8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
