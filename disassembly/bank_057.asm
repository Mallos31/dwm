; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

    ld d, a
    ld c, $6e
    ld b, h
    ld a, h
    inc de
    ld b, b
    adc d
    ld b, b
    ld [hl], $41
    sub d
    ld b, c
    xor $41
    ld c, d
    ld b, d
    and [hl]
    ld b, d
    ld a, [$db88]
    ld b, a
    ld a, [$db89]
    ld c, a
    push bc
    ld a, [$db88]
    and $04
    xor $04
    ld d, a
    ld [$db4d], a
    ld bc, $0400

jr_057_402a:
    ld a, d
    call Call_000_2fa5
    jr c, jr_057_4031

    inc c

jr_057_4031:
    inc d
    dec b
    jr nz, jr_057_402a

    ld a, c
    add a
    ld d, a
    add a
    add a
    add d
    ld [$db4e], a
    ld a, [$db4c]
    ld [$db88], a
    ld b, $04

jr_057_4046:
    push bc
    ld a, [$db4d]
    ld [$db89], a
    ld hl, $5205
    rst $10
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, [$db4e]
    call Call_000_1de6
    push hl
    ld a, [$db4c]
    call Call_000_2fe8
    pop bc
    call Call_000_2f45
    pop bc
    jr nc, jr_057_407b

    ld hl, $db4d
    inc [hl]
    dec b
    jr nz, jr_057_4046

    ld a, $00
    ld [$db4e], a
    jr jr_057_4080

jr_057_407b:
    ld a, $01
    ld [$db4e], a

jr_057_4080:
    pop bc
    ld a, b
    ld [$db88], a
    ld a, c
    ld [$db89], a
    ret


    ld a, [$db88]
    ld b, a
    ld a, [$db89]
    ld c, a
    push bc
    ld a, [$db4c]
    and $03
    ld hl, $db58
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db4f], a
    ld a, h
    ld [$db50], a
    ld a, $00
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$db4c]
    ld [$db89], a
    ld a, [$db4c]
    and $04
    xor $04
    ld [$db88], a
    ld a, $00
    ld [$db4d], a
    ld a, $04
    ld [$db4e], a

jr_057_40ca:
    ld a, [$db88]
    call Call_000_2fa5
    jr c, jr_057_40fb

    ld hl, $db4d
    inc [hl]
    ld hl, $5205
    rst $10
    ld a, [$db4f]
    ld l, a
    ld a, [$db50]
    ld h, a
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [$db4f]
    ld c, a
    ld a, [$db50]
    ld b, a
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a

jr_057_40fb:
    ld hl, $db88
    inc [hl]
    ld a, [$db4e]
    dec a
    ld [$db4e], a
    jr nz, jr_057_40ca

    ld a, [$db4c]
    call Call_000_2fda
    push hl
    ld a, [$db4f]
    ld l, a
    ld a, [$db50]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    call Call_000_2f4b
    push hl
    ld a, [$db4f]
    ld l, a
    ld a, [$db50]
    ld h, a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    pop bc
    ld a, b
    ld [$db88], a
    ld a, c
    ld [$db89], a
    ret


    ld a, [$dd72]
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_416a

    ld a, b
    cp $03
    jr c, jr_057_416a

    and $03
    cp $03
    jr z, jr_057_417a

Call_057_414b:
    ld a, b
    sub $04
    ld hl, $da03
    call Call_057_4567

jr_057_4154:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da1d]
    ld c, a
    ld a, [$da1e]
    ld b, a
    jr jr_057_4189

jr_057_416a:
    ld a, b
    and $03
    cp $03
    jr z, jr_057_417a

    ld a, b
    ld hl, $cb13
    call Call_000_224f
    jr jr_057_4189

jr_057_417a:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_057_4154

jr_057_4189:
    ld a, c
    ld [$dd72], a
    ld a, b
    ld [$dd73], a
    ret


    ld a, [$dd72]
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_41c6

    ld a, b
    cp $03
    jr c, jr_057_41c6

    and $03
    cp $03
    jr z, jr_057_41d6

    ld a, b
    sub $04
    ld hl, $da03
    call Call_057_4567

jr_057_41b0:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da1f]
    ld c, a
    ld a, [$da20]
    ld b, a
    jr jr_057_41e5

jr_057_41c6:
    ld a, b
    and $03
    cp $03
    jr z, jr_057_41d6

    ld a, b
    ld hl, $cb17
    call Call_000_224f
    jr jr_057_41e5

jr_057_41d6:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_057_41b0

jr_057_41e5:
    ld a, c
    ld [$dd72], a
    ld a, b
    ld [$dd73], a
    ret


    ld a, [$dd72]
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_4222

    ld a, b
    cp $03
    jr c, jr_057_4222

    and $03
    cp $03
    jr z, jr_057_4232

    ld a, b
    sub $04
    ld hl, $da03
    call Call_057_4567

jr_057_420c:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da21]
    ld c, a
    ld a, [$da22]
    ld b, a
    jr jr_057_4241

jr_057_4222:
    ld a, b
    and $03
    cp $03
    jr z, jr_057_4232

    ld a, b
    ld hl, $cb19
    call Call_000_224f
    jr jr_057_4241

jr_057_4232:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_057_420c

jr_057_4241:
    ld a, c
    ld [$dd72], a
    ld a, b
    ld [$dd73], a
    ret


    ld a, [$dd72]
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_427e

    ld a, b
    cp $03
    jr c, jr_057_427e

    and $03
    cp $03
    jr z, jr_057_428e

    ld a, b
    sub $04
    ld hl, $da03
    call Call_057_4567

jr_057_4268:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da23]
    ld c, a
    ld a, [$da24]
    ld b, a
    jr jr_057_429d

jr_057_427e:
    ld a, b
    and $03
    cp $03
    jr z, jr_057_428e

    ld a, b
    ld hl, $cb1b
    call Call_000_224f
    jr jr_057_429d

jr_057_428e:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_057_4268

jr_057_429d:
    ld a, c
    ld [$dd72], a
    ld a, b
    ld [$dd73], a
    ret


    ld a, [$dd72]
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_42da

    ld a, b
    cp $03
    jr c, jr_057_42da

    and $03
    cp $03
    jr z, jr_057_42ea

    ld a, b
    sub $04
    ld hl, $da03
    call Call_057_4567

jr_057_42c4:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da25]
    ld c, a
    ld a, [$da26]
    ld b, a
    jr jr_057_42f9

jr_057_42da:
    ld a, b
    and $03
    cp $03
    jr z, jr_057_42ea

    ld a, b
    ld hl, $cb1d
    call Call_000_224f
    jr jr_057_42f9

jr_057_42ea:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_057_42c4

jr_057_42f9:
    ld a, c
    ld [$dd72], a
    ld a, b
    ld [$dd73], a
    ret


    ld [$5843], sp
    ld b, e
    inc b
    ld b, h
    add h
    ld h, a
    ld a, [c]
    ld b, l
    ld [bc], a
    ld b, a
    dec h
    ld b, a
    ld b, l
    ld b, a
    add l
    ld b, a
    or $4a
    dec a
    ld c, e
    inc de
    ld c, h
    ld c, l
    ld e, l
    push hl
    ld e, [hl]
    rra
    ld e, a
    sub c
    ld e, a
    ld h, a
    ld h, d
    ld b, h
    ld h, h
    ei
    ld h, h
    ld c, b
    ld l, b
    dec c
    ld l, d
    ld h, a
    ld l, d
    ld h, d
    ld l, h
    adc [hl]
    ld e, l
    adc h
    ld c, e
    sub [hl]
    ld h, l
    add hl, de
    ld h, [hl]
    call z, Call_057_414b
    ld c, h
    ld d, [hl]
    ld c, l
    ld sp, hl
    ld c, l
    jr jr_057_4390

    ld [hl], $4e
    db $76
    ld c, [hl]
    ld d, h
    ld d, h
    xor [hl]
    ld e, e
    db $fd
    ld e, a
    add b
    ld h, c
    ei
    ld h, [hl]
    db $10
    ld l, b
    adc c
    ld l, e
    adc h
    ld l, h
    nop
    nop
    add h
    ld h, a
    ld a, [c]
    ld b, l
    add l
    ld b, [hl]
    ld [bc], a
    ld b, a
    dec h
    ld b, a
    ld b, l
    ld b, a
    add l
    ld b, a
    reti


    ld b, a
    push af
    ld b, a
    ld hl, $4348
    ld c, b
    ld h, l
    ld c, b
    sub b
    ld c, b
    ld [bc], a
    ld c, c
    sub h
    ld c, d
    call z, $f64a
    ld c, d
    dec a
    ld c, e
    inc de
    ld c, h
    sub e
    ld d, h
    inc [hl]
    ld e, e
    ld c, d
    ld e, e
    call $f55b
    ld e, e
    dec h
    ld e, h
    ld e, l
    ld e, h
    ret z

    ld e, h
    ld c, l
    ld e, l

jr_057_4390:
    ldh [$5d], a
    ld a, [$105d]
    ld e, [hl]
    ld a, $5e
    ld a, [hl]
    ld e, [hl]
    and h
    ld e, [hl]
    cp e
    ld e, [hl]
    push hl
    ld e, [hl]
    rra
    ld e, a
    sub c
    ld e, a
    ld h, a
    ld h, d
    xor b
    ld h, d
    add d
    ld h, e
    or b
    ld h, e
    db $e3
    ld h, e
    inc d
    ld h, h
    ld b, h
    ld h, h
    ld [hl], h
    ld h, h
    sbc l
    ld h, h
    call z, Call_057_7b64
    ld h, [hl]
    ld d, a
    ld h, a
    ld e, [hl]
    ld l, c
    ld [hl], l
    ld l, c
    dec c
    ld l, d
    or h
    ld l, d
    push af
    ld l, d
    bit 5, e
    rrca
    ld l, h
    call nz, $d655
    ld d, l
    ld h, d
    ld l, h
    ret nz

    ld l, h
    sub [hl]
    ld h, l
    add hl, de
    ld h, [hl]
    bit 5, c
    call z, $be4b
    ld d, h
    db $e4
    ld d, h
    dec de
    ld d, l
    or $55
    ld h, b
    ld d, [hl]
    add hl, sp
    ld d, a
    db $fc
    ld d, a
    ld b, d
    ld e, b
    dec a
    ld e, c
    rst $30
    ld e, c
    db $fd
    ld e, a
    ld c, d
    ld h, b
    adc [hl]
    ld h, b
    ret z

    ld h, b
    rlca
    ld h, c
    ld b, h
    ld h, c
    add b
    ld h, c
    cp h
    ld h, c
    pop af
    ld h, c
    inc l
    ld h, d
    nop
    nop
    add h
    ld h, a
    ld a, [c]
    ld b, l
    ld l, c
    ld c, c
    add e
    ld c, c
    sbc l
    ld c, c
    or a
    ld c, c
    ld e, h
    ld c, d
    sub h
    ld c, d
    dec h
    ld e, h
    ld d, $5d
    ld c, l
    ld e, l
    rra
    ld e, a
    sub c
    ld e, a
    ei
    ld h, h
    ld a, e
    ld h, [hl]
    call nc, $b166
    ld h, a
    add l
    ld b, a
    cp c
    ld c, [hl]
    db $e4
    ld c, [hl]
    ld l, $4f
    ld h, c
    ld c, a
    sub h
    ld c, a
    or e
    ld c, a
    jp nc, $2c4f

    ld d, b
    cp h
    ld d, b
    inc de
    ld d, c
    ld c, c
    ld d, c
    jp c, $dc51

    ld d, d
    ld l, d
    ld d, e
    or [hl]
    ld d, e
    db $dd
    ld d, e
    ld de, $3454
    ld d, h
    or $55
    ld c, h
    ld e, d
    rst $28
    ld e, d
    push de
    ld h, a
    nop
    nop

Call_057_4456:
jr_057_4456:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_445f

    ld a, [hl]
    and e
    ret z

jr_057_445f:
    inc c
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_057_4456

    ld a, $ff
    ld [$dd27], a
    ret


Call_057_4471:
jr_057_4471:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4489

    ld a, [hl+]
    ld e, [hl]
    ld d, a
    dec de
    ld a, d
    or e
    ret nz

jr_057_447e:
    inc hl
    inc c
    dec b
    jr nz, jr_057_4471

    ld a, $ff
    ld [$dd27], a
    ret


jr_057_4489:
    inc hl
    jr jr_057_447e

Call_057_448c:
jr_057_448c:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4495

    ld a, [hl]
    and e
    ret nz

jr_057_4495:
    inc c
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_057_448c

    ld a, $ff
    ld [$dd27], a
    ret


Call_057_44a7:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_44ca

    ld a, c
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da31], a
    push bc
    ld hl, $0301
    rst $10
    pop bc
    ld a, [$da33]
    ld hl, $db4c
    cp [hl]
    jr z, jr_057_44cf

jr_057_44ca:
    inc c
    dec b
    jr nz, jr_057_44ca

    ret


jr_057_44cf:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


Call_057_44d8:
jr_057_44d8:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_44e2

    ld a, [hl]
    and d
    jr nz, jr_057_44ef

jr_057_44e2:
    inc c
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_057_44d8

    ret


jr_057_44ef:
    ld hl, $dd26
    ld b, e
    call Call_057_455f
    ret


Call_057_44f7:
    xor a
    ld [$db56], a
    xor a
    ld [$db57], a
    xor a
    ld [$db4c], a

jr_057_4503:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_452b

    ld a, [$db4c]
    inc a
    ld [$db4c], a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db56]
    ld e, a
    ld a, [$db57]
    ld d, a
    ld a, e
    add l
    ld e, a
    ld a, d
    adc h
    ld d, a
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a
    pop hl

jr_057_452b:
    inc hl
    inc hl
    inc c
    dec b
    jr nz, jr_057_4503

    ret


Call_057_4532:
    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $05
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    and $03
    ld e, a
    ld a, [$db4c]
    rrca
    rrca
    and $0f
    ld d, a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ret


Call_057_455f:
    ld a, [hl]
    add b
    ld [hl], a
    ret nc

    ld a, $ff
    ld [hl], a
    ret


Call_057_4567:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_057_4572:
    ld a, c
    ld hl, $db08
    call Call_000_2f6c
    ld a, [hl]
    and $08
    ret


Call_057_457d:
    push hl
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_45b2

    ld a, b
    cp $03
    jr c, jr_057_45b8

    and $03
    cp $03
    jr z, jr_057_45c0

    ld a, b
    sub $04
    ld hl, $da03
    call Call_057_45ea
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_057_459c:
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1401
    rst $10
    ld a, [$da25]
    ld c, a
    ld a, [$da26]
    ld b, a
    jr jr_057_45cf

jr_057_45b2:
    and $03
    cp $03
    jr z, jr_057_45c0

jr_057_45b8:
    ld hl, $cb1d
    call Call_000_224f
    jr jr_057_45cf

jr_057_45c0:
    ld a, b
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $01
    jr jr_057_459c

jr_057_45cf:
    pop hl
    ret


Call_057_45d1:
    ld a, h
    or a
    jr nz, jr_057_45df

    ld a, l
    or a
    jr z, jr_057_45dd

    cp $01
    jr nz, jr_057_45df

jr_057_45dd:
    scf
    ret


jr_057_45df:
    ld a, $02
    cp $01
    ret


Call_057_45e4:
    ld a, $ff
    ld [$dd27], a
    ret


Call_057_45ea:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $04
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    or a
    jr z, jr_057_461d

    ld c, a
    ld b, $00
    ld a, [$db88]
    call Call_000_2fef
    call Call_000_2f45
    jr nc, jr_057_461d

    call Call_057_45e4

jr_057_461d:
    ld a, [$dd6b]
    bit 6, a
    jr z, jr_057_4634

    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    jr z, jr_057_4634

    call Call_057_45e4

jr_057_4634:
    ld a, [$dd6b]
    bit 5, a
    jr z, jr_057_464b

    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    bit 6, [hl]
    jr z, jr_057_464b

    call Call_057_45e4

jr_057_464b:
    ld a, [$dd6b]
    bit 4, a
    jr z, jr_057_4662

    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    bit 7, [hl]
    jr z, jr_057_4662

    call Call_057_45e4

jr_057_4662:
    ld a, [$db8a]
    cp $83
    jr z, jr_057_466f

    ld a, [$dd6b]
    bit 6, a
    ret z

jr_057_466f:
    ld a, [$db88]
    cp $04
    jr c, jr_057_467b

    ld hl, $db01
    jr jr_057_467e

jr_057_467b:
    ld hl, $db00

jr_057_467e:
    bit 3, [hl]
    ret z

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $41
    jr nz, jr_057_469d

    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr z, jr_057_469d

    call Call_057_45e4

jr_057_469d:
    ld a, [$db8a]
    cp $54
    jr nz, jr_057_46b5

    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    jr z, jr_057_46b5

    call Call_057_45e4

jr_057_46b5:
    ld a, [$db8a]
    cp $8f
    jr nz, jr_057_46cc

    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    bit 1, [hl]
    jr z, jr_057_46cc

    call Call_057_45e4

jr_057_46cc:
    ld a, [$db8a]
    cp $27
    jr z, jr_057_46d7

    cp $28
    jr nz, jr_057_46e8

jr_057_46d7:
    ld a, [$db88]
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    and $22
    jr z, jr_057_46e8

    call Call_057_45e4

jr_057_46e8:
    ld a, [$db8a]
    cp $24
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db04
    call Call_000_2f6c
    ld e, $04
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $6e
    ret nc

    cp $67
    jr z, jr_057_470f

    cp $6c
    ret c

jr_057_470f:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld e, $02
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $67
    jr z, jr_057_472f

    cp $6c
    ret nz

jr_057_472f:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld e, $03
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $15
    ret c

    cp $17
    jr c, jr_057_476f

    cp $2a
    jr z, jr_057_476f

    cp $68
    jr z, jr_057_476f

    cp $6a
    jr z, jr_057_476f

    cp $70
    ret c

    cp $71
    ret z

    cp $74
    jr c, jr_057_476f

    cp $78
    ret c

    cp $7e
    jr c, jr_057_476f

    cp $dc
    ret nz

jr_057_476f:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld e, $8c
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $15
    ret c

    cp $1a
    jr c, jr_057_47c3

    cp $1c
    ret c

    cp $29
    ret z

    cp $2b
    jr c, jr_057_47c3

    cp $68
    ret c

    cp $6c
    jr c, jr_057_47c3

    cp $6e
    jr z, jr_057_47c3

    cp $70
    ret c

    cp $71
    ret z

    cp $74
    jr c, jr_057_47c3

    cp $77
    ret c

    cp $81
    jr c, jr_057_47c3

    cp $88
    ret c

    cp $93
    jr c, jr_057_47c3

    cp $da
    jr c, jr_057_47c3

    cp $dc
    ret nz

jr_057_47c3:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld e, $40
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $18
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db03
    call Call_000_2f6c
    ld e, $02
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $19
    jr z, jr_057_480b

    cp $2a
    jr z, jr_057_480b

    cp $6e
    jr z, jr_057_480b

    cp $da
    jr z, jr_057_480b

    cp $dc
    ret nz

jr_057_480b:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld e, $10
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $1c
    jr z, jr_057_482b

    cp $1d
    ret nz

jr_057_482b:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $dbf3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_057_4471
    ret


    ld a, [$db8a]
    cp $20
    jr z, jr_057_484d

    cp $21
    ret nz

jr_057_484d:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_057_4471
    ret


    ld a, [$db8a]
    cp $2a
    jr z, jr_057_487a

    cp $70
    jr z, jr_057_487a

    cp $78
    ret c

    cp $7e
    jr c, jr_057_487a

    cp $dc
    ret nz

jr_057_487a:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db05
    call Call_000_2f6c
    ld e, $3f
    call Call_057_4456
    ret


    ld a, [$db8a]
    cp $1e
    jr z, jr_057_489a

    cp $1f
    ret nz

jr_057_489a:
    ld a, [$db88]
    and $04
    ld [$db4c], a
    ld b, $03

jr_057_48a4:
    push bc
    ld a, [$db4c]
    call Call_000_2fa5
    jr c, jr_057_48f6

    ld a, [$db4c]
    push hl
    ld [$dd72], a
    ld hl, $5707
    rst $10
    ld a, [$dd72]
    ld c, a
    ld a, [$dd73]
    ld b, a
    pop hl
    ld a, [$db4c]
    call Call_000_2fd3
    ld a, [$c86c]
    or a
    jr z, jr_057_48d8

    ld a, [$db4c]
    and $03
    cp $03
    jr z, jr_057_48e3

    jr jr_057_48df

jr_057_48d8:
    ld a, [$db4c]
    cp $03
    jr nc, jr_057_48e3

jr_057_48df:
    sla c
    rl b

jr_057_48e3:
    sla c
    rl b
    call Call_000_2f45
    jr nc, jr_057_48f6

    ld bc, $03e7
    call Call_000_2f45
    jr nc, jr_057_48f6

    pop bc
    ret


jr_057_48f6:
    ld hl, $db4c
    inc [hl]
    pop bc
    dec b
    jr nz, jr_057_48a4

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $22
    jr z, jr_057_490c

    cp $23
    ret nz

jr_057_490c:
    ld a, [$db88]
    and $04
    ld [$db4c], a
    ld b, $03

jr_057_4916:
    push bc
    ld a, [$db4c]
    call Call_000_2fa5
    jr c, jr_057_495d

    ld a, [$db4c]
    call Call_057_457d
    ld a, [$db4c]
    ld hl, $dc03
    call Call_057_4567
    ld a, [$c86c]
    or a
    jr z, jr_057_493f

    ld a, [$db4c]
    and $03
    cp $03
    jr z, jr_057_494a

    jr jr_057_4946

jr_057_493f:
    ld a, [$db4c]
    cp $03
    jr nc, jr_057_494a

jr_057_4946:
    sla c
    rl b

jr_057_494a:
    sla c
    rl b
    call Call_000_2f45
    jr nc, jr_057_495d

    ld bc, $01ff
    call Call_000_2f45
    jr nc, jr_057_495d

    pop bc
    ret


jr_057_495d:
    ld hl, $db4c
    inc [hl]
    pop bc
    dec b
    jr nz, jr_057_4916

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $34
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld hl, $db02
    call Call_000_2f6c
    ld b, $03
    ld e, $c0
    call Call_057_448c
    ret


    ld a, [$db8a]
    cp $35
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld hl, $db02
    call Call_000_2f6c
    ld b, $03
    ld e, $10
    call Call_057_448c
    ret


    ld a, [$db8a]
    cp $36
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld hl, $db02
    call Call_000_2f6c
    ld b, $03
    ld e, $20
    call Call_057_448c
    ret


    ld a, [$db8a]
    cp $2b
    ret c

    cp $93
    jr z, jr_057_4a2b

    cp $94
    jr z, jr_057_49c8

    cp $30
    ret nc

jr_057_49c8:
    ld b, $03
    ld a, [$db88]
    and $04
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a

jr_057_49f5:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_49ff

    call Call_057_7ac4
    ret nc

jr_057_49ff:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    inc c
    dec b
    jr nz, jr_057_49f5

jr_057_4a27:
    call Call_057_45e4
    ret


jr_057_4a2b:
    ld a, [$db88]
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, c
    call Call_057_7ac4
    jr c, jr_057_4a27

    ret


    ret


    ld a, [$db8a]
    cp $14
    jr z, jr_057_4a6a

    cp $32
    jr z, jr_057_4a6a

    cp $96
    ret nz

jr_057_4a6a:
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    ld b, $03
    ld e, $00

jr_057_4a75:
    ld a, c
    cp d
    jr z, jr_057_4a89

    call Call_000_2fa5
    jr c, jr_057_4a89

    inc e
    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 6, [hl]
    ret z

jr_057_4a89:
    inc c
    dec b
    jr nz, jr_057_4a75

    ld a, e
    or a
    ret z

    call Call_057_45e4
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $24
    jr z, jr_057_4aae

    cp $8a
    jr z, jr_057_4aae

    cp $8b
    jr z, jr_057_4aae

    cp $8f
    jr z, jr_057_4aae

    cp $92
    ret nz

jr_057_4aae:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld d, $10

jr_057_4aba:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4ac4

    call Call_057_7b7d
    ret z

jr_057_4ac4:
    inc c
    dec b
    jr nz, jr_057_4aba

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $43
    ret nz

    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08

jr_057_4ae2:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_4af2

    cp $5c
    jr c, jr_057_4aee

    cp $64
    ret c

jr_057_4aee:
    inc hl
    dec b
    jr nz, jr_057_4ae2

jr_057_4af2:
    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $03
    ret c

    cp $12
    ret z

    cp $15
    ret z

    cp $1d
    jr z, jr_057_4b11

    cp $21
    jr z, jr_057_4b11

    cp $da
    jr z, jr_057_4b11

    cp $1a
    ret nc

jr_057_4b11:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db04
    call Call_000_2f6c

jr_057_4b21:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4b2c

    ld a, [hl]
    and $22
    jr nz, jr_057_4b39

jr_057_4b2c:
    inc c
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_057_4b21

    ret


jr_057_4b39:
    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $5c
    ret c

    cp $64
    jr c, jr_057_4b4d

    cp $6e
    ret nc

    cp $6a
    ret c

jr_057_4b4d:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, c
    srl a
    srl a
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $60
    jr nz, jr_057_4b88

jr_057_4b6a:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4b83

    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    and $48
    jr nz, jr_057_4b88

    bit 1, [hl]
    jr nz, jr_057_4b88

jr_057_4b83:
    inc c
    dec b
    jr nz, jr_057_4b6a

    ret


jr_057_4b88:
    call Call_057_45e4
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$dd6b]
    bit 7, a
    ret z

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db08
    call Call_000_2f6c

jr_057_4ba6:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4bb6

    bit 5, [hl]
    jr nz, jr_057_4bc3

    inc hl
    ld a, [hl]
    and $05
    jr nz, jr_057_4bc3

jr_057_4bb6:
    inc c
    ld a, $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_057_4ba6

    ret


jr_057_4bc3:
    ld hl, $dd27
    ld b, $14
    call Call_057_455f
    ret


    call Call_057_4532
    ld a, [$db4c]
    or a
    ret z

    xor a
    ld hl, $db54
    ld [hl+], a
    ld [hl], a

jr_057_4bda:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4bfe

    ld hl, $db55
    inc [hl]
    ld a, c
    ld [$db89], a
    ld a, d
    ld [$db4c], a
    push de
    push bc
    ld hl, $5206
    rst $10
    pop bc
    pop de
    call Call_057_7aa6
    and $03
    ld hl, $db54
    add [hl]
    ld [hl], a

jr_057_4bfe:
    inc c
    dec b
    jr nz, jr_057_4bda

    ld a, [$db55]
    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    call Call_057_4532

jr_057_4c16:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4c34

    ld a, c
    ld [$db89], a
    ld a, d
    ld [$db4c], a
    push de
    push bc
    ld hl, $5206
    rst $10
    pop bc
    pop de
    call Call_057_7aa6
    and $03
    cp $03
    ret nz

jr_057_4c34:
    inc c
    dec b
    jr nz, jr_057_4c16

    ld hl, $db54
    add [hl]
    ld [hl], a
    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $3f
    ret c

    cp $41
    jp c, Jump_057_4d29

    cp $48
    ret c

    cp $50
    jr c, jr_057_4c62

    cp $d6
    ret c

    cp $d9
    ret nc

    ld a, [$db8a]
    sub $d6
    add $08
    jr jr_057_4c67

jr_057_4c62:
    ld a, [$db8a]
    sub $48

jr_057_4c67:
    rst $00
    add hl, hl
    ld c, l
    sub c
    ld c, h
    and h
    ld c, h
    or a
    ld c, h
    ldh a, [$4c]
    inc bc
    ld c, l
    ld d, $4d
    inc bc
    ld c, l
    ld a, [hl]
    ld c, h
    jp z, $dd4c

    ld c, h
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $00
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $01
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $02
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $03
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $05
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $04
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $06
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $07
    ld [$db4c], a
    call Call_057_44a7
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $08
    ld [$db4c], a
    call Call_057_44a7
    ret


Jump_057_4d29:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_4d33:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4d47

    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    jr nz, jr_057_4d4c

jr_057_4d47:
    inc c
    dec b
    jr nz, jr_057_4d33

    ret


jr_057_4d4c:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ret


    call Call_057_7c7e
    ret nc

    call Call_057_7dbe
    ld a, [$db88]
    call Call_000_2fcc
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    jr c, jr_057_4d78

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f

jr_057_4d78:
    ld a, $ff
    ld hl, $db56
    ld [hl+], a
    ld [hl], a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4d99

    ld a, c
    call Call_000_2fd3
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_057_4d99:
    inc c
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4dbb

    ld a, c
    call Call_000_2fd3
    push bc
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    pop bc
    jr nc, jr_057_4dbb

    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_057_4dbb:
    inc c
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_4ddd

    ld a, c
    call Call_000_2fd3
    push bc
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    pop bc
    jr nc, jr_057_4ddd

    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_057_4ddd:
    ld a, [$db88]
    call Call_000_2fcc
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    ret c

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ret


    call Call_057_7cb5
    ret nc

    call Call_057_7cff
    jr c, jr_057_4e0a

    ld hl, $dd26
    ld b, $05
    call Call_057_455f

jr_057_4e0a:
    call Call_057_7d37
    ret nc

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ret


    call Call_057_7ce0
    ret nc

    call Call_057_7d1d
    jr nc, jr_057_4e29

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f

jr_057_4e29:
    call Call_057_7d37
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $03
    ret c

    cp $12
    jr z, jr_057_4e51

    cp $14
    jr c, jr_057_4e51

    cp $4f
    jr z, jr_057_4e51

    cp $57
    ret c

    cp $58
    ret z

    cp $67
    ret nc

jr_057_4e51:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld e, $00

jr_057_4e5d:
    push de
    ld a, c
    call Call_000_2fa5
    pop de
    jr c, jr_057_4e66

    inc e

jr_057_4e66:
    dec b
    jr nz, jr_057_4e5d

    ld a, e
    cp $02
    ret c

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $3f
    jr z, jr_057_4e80

    cp $40
    ret nz

jr_057_4e80:
    ld a, [$db88]
    and $04
    xor $04
    ld e, a
    ld d, $03
    call Call_000_2fcc
    add hl, hl
    ld c, l
    ld b, h

jr_057_4e90:
    ld a, e
    call Call_000_2fa5
    jr c, jr_057_4eab

    ld a, e
    ld hl, $dbf3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    jr c, jr_057_4eab

    jr nc, jr_057_4eb0

jr_057_4eab:
    inc e
    dec d
    jr nz, jr_057_4e90

    ret


jr_057_4eb0:
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $95
    jr z, jr_057_4ec6

    cp $30
    ret c

    cp $32
    ret nc

jr_057_4ec6:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_4ece:
    ld a, c
    call Call_000_2fa5
    jr z, jr_057_4ed6

    jr c, jr_057_4edb

jr_057_4ed6:
    inc c
    dec b
    jr nz, jr_057_4ece

    ret


jr_057_4edb:
    ld hl, $dd26
    ld b, $2d
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $32
    jr z, jr_057_4eee

    cp $96
    ret nz

jr_057_4eee:
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    jr z, jr_057_4efc

    ld a, [$db75]
    jr jr_057_4eff

jr_057_4efc:
    ld a, [$db74]

jr_057_4eff:
    cp $01
    ret z

    ld b, a

jr_057_4f03:
    ld a, c
    cp d
    jr z, jr_057_4f0b

    call Call_000_2fa5
    ret nc

jr_057_4f0b:
    inc c
    dec b
    jr nz, jr_057_4f03

    ld a, d
    call Call_000_2fe8
    push hl
    ld a, d
    ld hl, $dbb3
    call Call_057_4567
    ld a, $05
    call Call_000_1e0d
    pop bc
    call Call_000_2f45
    ret c

    ld hl, $dd26
    ld b, $64
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $33
    jr z, jr_057_4f38

    cp $81
    ret nz

jr_057_4f38:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld de, $010f
    call Call_057_44d8
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld de, $020f
    call Call_057_44d8
    ret


    ld a, [$db8a]
    cp $34
    jr z, jr_057_4f6b

    cp $81
    ret nz

jr_057_4f6b:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld de, $400f
    call Call_057_44d8
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld de, $8c0f
    call Call_057_44d8
    ret


    ld a, [$db8a]
    cp $35
    jr z, jr_057_4f9e

    cp $81
    ret nz

jr_057_4f9e:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld de, $100f
    call Call_057_44d8
    ret


    ld a, [$db8a]
    cp $36
    jr z, jr_057_4fbd

    cp $81
    ret nz

jr_057_4fbd:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $db02
    call Call_000_2f6c
    ld de, $200f
    call Call_057_44d8
    ret


    ld a, [$db8a]
    cp $93
    jr z, jr_057_4fe3

    cp $94
    jr z, jr_057_4fe3

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_4fe3:
    xor a
    ld [$db61], a
    ld a, [$db88]
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, c
    call Call_057_7ac4
    ret c

    ld a, $01
    ld [$db61], a
    ld a, [$db8a]
    cp $2d
    ret z

    cp $2f
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $93
    jr z, jr_057_503d

    cp $94
    jr z, jr_057_503d

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_503d:
    xor a
    ld [$db63], a
    ld a, [$db88]
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, c
    call Call_057_7b01
    ret c

    ld a, $01
    ld [$db63], a
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    xor a
    ld [$db65], a
    ld a, [$db88]
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, c
    call Call_057_7b35
    ret c

    ld a, $01
    ld [$db65], a
    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $93
    jr z, jr_057_50cd

    cp $94
    jr z, jr_057_50cd

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_50cd:
    xor a
    ld [$db67], a
    ld a, [$db88]
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, c
    call Call_057_7b59
    ret c

    ld a, $01
    ld [$db67], a
    ld a, [$db8a]
    cp $2e
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $93
    jr z, jr_057_5124

    cp $94
    jr z, jr_057_5124

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_5124:
    xor a
    ld [$db69], a
    ld a, [$db88]
    ld c, a
    call Call_000_2fe8
    cp $01
    ret nz

    ld a, h
    or a
    ret nz

    ld a, $01
    ld [$db69], a
    ld a, [$db8a]
    cp $2e
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $94
    jr z, jr_057_5156

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_5156:
    call Call_057_6371
    xor a
    ld [$db62], a
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a

jr_057_5189:
    ld a, c
    cp d
    jr z, jr_057_519b

    call Call_000_2fa5
    jr c, jr_057_519b

    call Call_057_7ac4
    jr c, jr_057_519b

    ld hl, $db62
    inc [hl]

jr_057_519b:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    inc c
    dec b
    jr nz, jr_057_5189

    ld a, [$db8a]
    cp $2d
    ret z

    cp $2f
    ret z

    ld a, [$db62]
    or a
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $94
    jr z, jr_057_51e7

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_51e7:
    call Call_057_6371
    xor a
    ld [$db64], a
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a

jr_057_521a:
    ld a, c
    cp d
    jr z, jr_057_522c

    call Call_000_2fa5
    jr c, jr_057_522c

    call Call_057_7b01
    jr c, jr_057_522c

    ld hl, $db64
    inc [hl]

jr_057_522c:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    inc c
    dec b
    jr nz, jr_057_521a

    ld a, [$db64]
    or a
    ret z

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    call Call_057_6371
    xor a
    ld [$db66], a
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a

jr_057_5294:
    ld a, c
    cp d
    jr z, jr_057_52a6

    call Call_000_2fa5
    jr c, jr_057_52a6

    call Call_057_7b35
    jr c, jr_057_52a6

    ld hl, $db66
    inc [hl]

jr_057_52a6:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    inc c
    dec b
    jr nz, jr_057_5294

    ld a, [$db66]
    or a
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $94
    jr z, jr_057_52e9

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_52e9:
    call Call_057_6371
    xor a
    ld [$db68], a
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a

jr_057_531c:
    ld a, c
    cp d
    jr z, jr_057_532e

    call Call_000_2fa5
    jr c, jr_057_532e

    call Call_057_7b59
    jr c, jr_057_532e

    ld hl, $db68
    inc [hl]

jr_057_532e:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    inc c
    dec b
    jr nz, jr_057_531c

    ld a, [$db68]
    or a
    ret z

    ld a, [$db8a]
    cp $2e
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $94
    jr z, jr_057_5377

    cp $2b
    ret c

    cp $30
    ret nc

jr_057_5377:
    call Call_057_6371
    xor a
    ld [$db6a], a
    ld a, [$db88]
    ld d, a
    and $04
    ld c, a

jr_057_5385:
    ld a, c
    cp d
    jr z, jr_057_539e

    call Call_000_2fa5
    jr c, jr_057_539e

    ld a, c
    call Call_000_2fe8
    cp $01
    jr nz, jr_057_539e

    ld a, h
    or a
    jr nz, jr_057_539e

    ld hl, $db6a
    inc [hl]

jr_057_539e:
    inc c
    dec b
    jr nz, jr_057_5385

    ld a, [$db6a]
    or a
    ret z

    ld a, [$db8a]
    cp $2e
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $94
    jr z, jr_057_53c3

    cp $2e
    ret c

    cp $30
    ret nc

jr_057_53c3:
    ld a, [$db61]
    ld b, a
    ld a, [$db62]
    add b
    cp $02
    ret c

    ld a, [$db8a]
    cp $2f
    ret z

    ld hl, $dd26
    ld b, $05
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $94
    jr z, jr_057_53ea

    cp $2e
    ret c

    cp $30
    ret nc

jr_057_53ea:
    ld a, [$db63]
    ld b, a
    ld a, [$db64]
    add b
    cp $02
    ret c

    ld hl, $dd26
    ld b, $0f
    call Call_057_455f
    ld a, [$db65]
    ld b, a
    ld a, [$db66]
    add b
    cp $02
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $2e
    ret c

    cp $30
    ret nc

    ld a, [$db67]
    ld b, a
    ld a, [$db68]
    add b
    cp $02
    ret c

    ld a, [$db8a]
    cp $2e
    ret z

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $2f
    ret nz

    ld a, [$db69]
    ld b, a
    ld a, [$db6a]
    add b
    cp $02
    ret c

    ld a, [$db8a]
    cp $2e
    ret z

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $4f
    ret z

    cp $44
    ret c

    cp $52
    jr c, jr_057_5476

    cp $d9
    ret nc

    cp $d6
    jr nc, jr_057_5476

    cp $6a
    ret nc

    cp $67
    jr nc, jr_057_5476

    cp $55
    jr z, jr_057_5476

    cp $57
    ret nz

jr_057_5476:
    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl-]
    and $03
    jr nz, jr_057_548a

    dec hl
    dec hl
    ld a, [hl]
    and $0c
    ret z

jr_057_548a:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $25
    jr z, jr_057_549d

    cp $41
    ret nz

jr_057_549d:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_54a5:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_54b6

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    ret z

jr_057_54b6:
    inc c
    dec b
    jr nz, jr_057_54a5

    call Call_057_45e4
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $25
    jr z, jr_057_54d0

    cp $7a
    jr z, jr_057_54d0

    cp $41
    ret nz

jr_057_54d0:
    ld a, [$db88]
    ld e, a
    call Call_057_62e0
    call Call_057_6321
    ret c

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $7a
    jr z, jr_057_54fd

    cp $82
    jr z, jr_057_54fd

    cp $25
    jr z, jr_057_54fd

    cp $1c
    ret c

    cp $1e
    ret nc

jr_057_54fd:
    call Call_057_62e0
    ld a, [$db88]
    and $04
    ld e, a
    ld d, $03

jr_057_5508:
    call Call_057_6321
    jr nc, jr_057_5512

    inc e
    dec d
    jr nz, jr_057_5508

    ret


jr_057_5512:
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $18
    jr z, jr_057_5537

    cp $1e
    ret c

    cp $20
    jr c, jr_057_5537

    cp $72
    ret c

    cp $74
    jr c, jr_057_5537

    cp $77
    ret nz

jr_057_5537:
    xor a
    ld [$db6c], a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    xor a
    ld [$db56], a
    ld [$db57], a

jr_057_554c:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_557f

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    jr nz, jr_057_5566

    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $03
    jr z, jr_057_557f

jr_057_5566:
    ld a, [$db56]
    ld e, a
    ld a, [$db57]
    ld d, a
    ld a, c
    call Call_000_2fcc
    add hl, de
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld hl, $db6c
    inc [hl]

jr_057_557f:
    inc c
    dec b
    jr nz, jr_057_554c

    ld a, [$db6c]
    or a
    ret z

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_000_1e0d
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, [$db88]
    and $04
    call Call_057_7dc5
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    sla l
    rl h
    ld a, [$db58]
    ld c, a
    ld a, [$db59]
    ld b, a
    call Call_000_2f45
    ret nc

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $24
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    call Call_057_634c
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $26
    jr z, jr_057_55e8

    cp $7f
    jr z, jr_057_55e8

    cp $43
    ret nz

jr_057_55e8:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    call Call_057_634c
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $17
    jr z, jr_057_560b

    cp $26
    ret c

    cp $7f
    jr z, jr_057_560b

    cp $29
    ret nc

jr_057_560b:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5615:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5652

    ld a, c
    ld hl, $dc64
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_5629:
    ld a, [hl+]
    or a
    jr z, jr_057_5652

    cp $01
    jr nz, jr_057_564e

    ld a, [hl]
    cp $02
    jr z, jr_057_5657

    cp $05
    jr z, jr_057_5657

    cp $08
    jr z, jr_057_5657

    cp $0b
    jr z, jr_057_5657

    cp $0e
    jr z, jr_057_5657

    cp $11
    jr c, jr_057_564e

    cp $14
    jr c, jr_057_5657

jr_057_564e:
    inc hl
    dec d
    jr nz, jr_057_5629

jr_057_5652:
    inc c
    dec b
    jr nz, jr_057_5615

    ret


jr_057_5657:
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $20
    ret c

    cp $24
    ret nc

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_057_44f7
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db4c]
    call Call_000_1e0d
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db88]
    and $04
    ld e, a
    ld d, $03
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a

jr_057_56b4:
    ld a, e
    call Call_000_2fa5
    jr c, jr_057_56c4

    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2f45
    pop hl
    jr c, jr_057_56cc

jr_057_56c4:
    inc hl
    inc hl
    inc e
    dec d
    jr nz, jr_057_56b4

    jr jr_057_56d4

jr_057_56cc:
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f

jr_057_56d4:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_057_44f7
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db4c]
    call Call_000_1e0d
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_057_44f7
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [$db4c]
    call Call_000_1e0d
    ld a, [$db58]
    ld c, a
    ld a, [$db59]
    ld b, a
    call Call_000_2f45
    ret nc

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $29
    ret nz

    call Call_057_7c6e
    ret nz

    ld a, [$db88]
    ld hl, $dbb3
    add a
    ld e, a
    call Call_057_4567
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, e
    call Call_000_2fe1
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, e
    call Call_000_2fcc
    ld a, l
    ld [$db5a], a
    ld a, h
    ld [$db5b], a
    ld a, e
    call Call_000_2fd3
    ld a, l
    ld [$db5c], a
    ld a, h
    ld [$db5d], a
    ld a, [$db88]
    and $04
    xor $04
    ld e, a
    ld d, $03
    xor a
    ld [$db4c], a

Jump_057_5788:
    ld a, e
    call Call_000_2fa5
    jp c, Jump_057_57ed

    ld a, e
    ld hl, $dbb3
    call Call_057_4567
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    jr c, jr_057_57a7

    ld hl, $db4c
    inc [hl]

jr_057_57a7:
    ld a, e
    call Call_000_2fe1
    ld a, [$db58]
    ld c, a
    ld a, [$db59]
    ld b, a
    call Call_000_2f45
    jr jr_057_57bc

    ld hl, $db4c
    inc [hl]

jr_057_57bc:
    ld a, e
    call Call_000_2fcc
    ld a, [$db5a]
    ld c, a
    ld a, [$db5b]
    ld b, a
    call Call_000_2f45
    jr c, jr_057_57d1

    ld hl, $db4c
    inc [hl]

jr_057_57d1:
    ld a, e
    call Call_000_2fd3
    ld a, [$db5c]
    ld c, a
    ld a, [$db5d]
    ld b, a
    call Call_000_2f45
    jr c, jr_057_57e6

    ld hl, $db4c
    inc [hl]

jr_057_57e6:
    ld a, [$db4c]
    cp $03
    jr nc, jr_057_57f3

Jump_057_57ed:
    inc e
    dec d
    jp nz, Jump_057_5788

    ret


jr_057_57f3:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $76
    jr z, jr_057_580d

    cp $1a
    ret c

    cp $1c
    ret nc

jr_057_580d:
    ld a, [$db88]
    add a
    ld d, a
    ld hl, $dbc3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, d
    ld hl, $dbd3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    call Call_057_7b59
    ret nc

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $80
    ret nz

    call Call_057_7c6e
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld hl, $db03
    call Call_000_2f6c
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    xor a
    ld [$db4c], a

Jump_057_5868:
    ld a, c
    call Call_000_2fa5
    jp c, Jump_057_590e

    ld a, [hl]
    and $3f
    jr z, jr_057_5892

    bit 0, [hl]
    call nz, Call_057_592c
    bit 1, [hl]
    call nz, Call_057_592c
    bit 2, [hl]
    call nz, Call_057_592c
    bit 3, [hl]
    call nz, Call_057_592c
    bit 4, [hl]
    call nz, Call_057_592c
    bit 5, [hl]
    call nz, Call_057_592c

jr_057_5892:
    inc hl
    ld a, [hl]
    and $7f
    jr z, jr_057_58bb

    bit 0, [hl]
    call nz, Call_057_592c
    bit 1, [hl]
    call nz, Call_057_592c
    bit 2, [hl]
    call nz, Call_057_592c
    bit 3, [hl]
    call nz, Call_057_592c
    bit 4, [hl]
    call nz, Call_057_592c
    bit 5, [hl]
    call nz, Call_057_592c
    bit 6, [hl]
    call nz, Call_057_592c

jr_057_58bb:
    inc hl
    ld a, [hl]
    and $c0
    jr z, jr_057_58cb

    bit 6, [hl]
    call nz, Call_057_592c
    bit 7, [hl]
    call nz, Call_057_592c

jr_057_58cb:
    inc hl
    inc hl
    ld a, [hl]
    and $cc
    jr z, jr_057_58dd

    and $c0
    call nz, Call_057_592c
    ld a, [hl]
    and $0c
    call nz, Call_057_592c

jr_057_58dd:
    inc hl
    bit 6, [hl]
    call nz, Call_057_592c
    ld a, [$db88]
    rrca
    rrca
    and $01
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $2c
    jr z, jr_057_5907

    bit 2, [hl]
    call nz, Call_057_592c
    bit 3, [hl]
    call nz, Call_057_592c
    bit 5, [hl]
    call nz, Call_057_592c

jr_057_5907:
    ld a, [$db4c]
    cp $03
    jr nc, jr_057_5934

Jump_057_590e:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    inc c
    dec b
    jp nz, Jump_057_5868

    ret


Call_057_592c:
    ld a, [$db4c]
    inc a
    ld [$db4c], a
    ret


jr_057_5934:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $83
    ret nz

    call Call_057_7c6e
    ret nz

    xor a
    ld [$db4c], a
    ld [$db4d], a
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_5956:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5991

    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4d]
    inc a
    ld [$db4d], a
    ld d, $08

jr_057_5971:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_5991

    cp $3a
    jr c, jr_057_5986

    cp $d5
    jr z, jr_057_5986

    cp $da
    jr z, jr_057_5986

    cp $dc
    jr nz, jr_057_598d

jr_057_5986:
    ld a, [$db4c]
    inc a
    ld [$db4c], a

jr_057_598d:
    inc hl
    dec d
    jr nz, jr_057_5971

jr_057_5991:
    inc c
    dec b
    jr nz, jr_057_5956

    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    cp c
    ret c

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld d, $00

jr_057_59aa:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_59e9

    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, $08

jr_057_59be:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_59e5

    cp $02
    jr z, jr_057_59df

    cp $05
    jr z, jr_057_59df

    cp $08
    jr z, jr_057_59df

    cp $0b
    jr z, jr_057_59df

    cp $0e
    jr z, jr_057_59df

    cp $11
    jr c, jr_057_59e5

    cp $14
    jr nc, jr_057_59e5

jr_057_59df:
    inc d
    ld a, d
    cp $02
    jr nc, jr_057_59ee

jr_057_59e5:
    inc hl
    dec e
    jr nz, jr_057_59be

jr_057_59e9:
    inc c
    dec b
    jr nz, jr_057_59aa

    ret


jr_057_59ee:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $26
    jr z, jr_057_5a05

    cp $7f
    ret nz

jr_057_5a05:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5a0f:
    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, $08

jr_057_5a1d:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_5a43

    cp $4f
    jr z, jr_057_5a43

    cp $59
    jr z, jr_057_5a43

    cp $5b
    jr z, jr_057_5a43

    cp $64
    jr z, jr_057_5a43

    cp $65
    jr z, jr_057_5a43

    cp $d9
    jr z, jr_057_5a43

    inc hl
    dec e
    jr nz, jr_057_5a1d

    inc c
    dec b
    jr nz, jr_057_5a0f

    ret


jr_057_5a43:
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $8f
    jr z, jr_057_5a59

    cp $88
    ret c

    cp $8a
    ret nc

jr_057_5a59:
    ld a, [$db88]
    ld d, a
    ld a, d
    call Call_000_2fe8
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, d
    ld hl, $dbb3
    call Call_057_4567
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, $0a
    call Call_000_1e0d
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    add hl, bc
    ld a, [$db58]
    ld c, a
    ld a, [$db59]
    ld b, a
    call Call_000_2f45
    ret c

    ld a, [$db88]
    ld d, a
    and $04
    ld c, a
    ld b, $03
    xor a
    ld [$db4c], a

jr_057_5a9f:
    ld a, c
    cp d
    jr z, jr_057_5abd

    call Call_000_2fa5
    jr c, jr_057_5abd

    ld a, c
    call Call_000_2fe8
    call Call_057_5acf
    push bc
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    pop bc
    ret nc

jr_057_5abd:
    inc c
    dec b
    jr nz, jr_057_5a9f

    ld a, [$db4c]
    or a
    ret z

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


Call_057_5acf:
    push de
    push bc
    push hl
    ld a, c
    call Call_000_2fda
    ld a, $0a
    call Call_000_1e0d
    ld a, l
    or h
    jr nz, jr_057_5ae0

    inc hl

jr_057_5ae0:
    pop bc
    push bc
    call Call_000_2f45
    jr c, jr_057_5aeb

    ld hl, $db4c
    inc [hl]

jr_057_5aeb:
    pop hl
    pop bc
    pop de
    ret


    ld a, [$db8a]
    cp $8d
    ret z

    cp $8f
    ret z

    cp $8c
    ret c

    cp $91
    ret nc

    ld a, [$db88]
    ld hl, $dba3
    add a
    ld c, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, c
    call Call_057_7b59
    ret c

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $41
    ret nz

    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    bit 2, [hl]
    ret z

    call Call_057_45e4
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $27
    ret c

    cp $29
    ret nc

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

Jump_057_5b61:
    ld a, c
    call Call_000_2fa5
    jp c, Jump_057_5ba3

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_057_5ba3

    ld d, $08
    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_057_5b81:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_5ba3

    cp $1b
    jr c, jr_057_5b9e

    cp $1c
    jr z, jr_057_5b9e

    cp $1d
    jr z, jr_057_5b9e

    cp $20
    jr z, jr_057_5b9e

    cp $21
    jr z, jr_057_5b9e

    cp $da
    jr nz, jr_057_5b9f

jr_057_5b9e:
    ret


jr_057_5b9f:
    inc hl
    dec d
    jr nz, jr_057_5b81

Jump_057_5ba3:
jr_057_5ba3:
    inc c
    dec b
    jp nz, Jump_057_5b61

    call Call_057_45e4
    ret


    ret


    ret


    ld a, [$db8a]
    cp $5c
    ret c

    cp $64
    ret nc

    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $30
    ret z

    ld hl, $dd26
    ld b, $1e
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $6f
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5bdd:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5bed

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    bit 5, [hl]
    ret z

jr_057_5bed:
    inc c
    dec b
    jr nz, jr_057_5bdd

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $17
    jr z, jr_057_5c03

    cp $27
    jr z, jr_057_5c03

    cp $28
    ret nz

jr_057_5c03:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5c0d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5c1d

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    ret z

jr_057_5c1d:
    inc c
    dec b
    jr nz, jr_057_5c0d

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $24
    jr z, jr_057_5c3b

    cp $8a
    jr z, jr_057_5c3b

    cp $8b
    jr z, jr_057_5c3b

    cp $8f
    jr z, jr_057_5c3b

    cp $92
    ret nz

jr_057_5c3b:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5c45:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5c55

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 7, [hl]
    ret z

jr_057_5c55:
    inc c
    dec b
    jr nz, jr_057_5c45

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $91
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    push bc

jr_057_5c6e:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5c7f

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 6, [hl]
    jr z, jr_057_5c86

jr_057_5c7f:
    inc c
    dec b
    jr nz, jr_057_5c6e

    pop bc
    jr jr_057_5cc4

jr_057_5c86:
    pop bc
    call Call_057_7c6e
    ret nz

jr_057_5c8b:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5cc0

    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_5c9f:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_5cc0

    cp $6e
    ret z

    cp $71
    ret z

    cp $75
    jr c, jr_057_5cc0

    cp $79
    ret c

    cp $91
    ret z

    cp $94
    ret z

    cp $96
    ret z

    inc hl
    dec d
    jr nz, jr_057_5c9f

    jr jr_057_5cc4

jr_057_5cc0:
    inc c
    dec b
    jr nz, jr_057_5c8b

jr_057_5cc4:
    call Call_057_45e4
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $17
    jr z, jr_057_5cda

    cp $27
    jr z, jr_057_5cda

    cp $28
    ret nz

jr_057_5cda:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5ce4:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5d0d

    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_5cf8:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_5d0d

    cp $3a
    ret c

    cp $d5
    ret z

    cp $da
    ret z

    cp $dc
    ret z

    inc hl
    dec d
    jr nz, jr_057_5cf8

jr_057_5d0d:
    inc c
    dec b
    jr nz, jr_057_5ce4

    call Call_057_45e4
    ret


    ret


    ld a, [$db8a]
    cp $81
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_5d24:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5d45

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    or a
    ret nz

    ld a, [hl+]
    and $c3
    ret nz

    inc hl
    ld a, [hl+]
    and $80
    ret nz

    inc hl
    ld a, [hl+]
    and $03
    ret nz

    bit 7, [hl]
    ret nz

jr_057_5d45:
    inc c
    dec b
    jr nz, jr_057_5d24

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $14
    jr z, jr_057_5d6b

    cp $30
    ret c

    cp $33
    ret z

    cp $36
    jr c, jr_057_5d6b

    cp $88
    ret c

    cp $8a
    jr c, jr_057_5d6b

    cp $95
    ret c

    cp $97
    ret nc

jr_057_5d6b:
    ld a, [$db88]
    and $04
    ld hl, $dd1b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $03
    ld d, $00

jr_057_5d7d:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_5d83

    inc d

jr_057_5d83:
    dec b
    jr nz, jr_057_5d7d

    ld a, d
    cp $02
    ret nc

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $03
    ret c

    cp $12
    jr c, jr_057_5db1

    cp $13
    jr z, jr_057_5db1

    cp $14
    jr z, jr_057_5db1

    cp $4f
    jr z, jr_057_5db1

    cp $58
    ret z

    cp $57
    ret c

    cp $67
    jr c, jr_057_5db1

    cp $71
    ret nz

jr_057_5db1:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld d, $00

jr_057_5dbd:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5dc4

    inc d

jr_057_5dc4:
    inc c
    dec b
    jr nz, jr_057_5dbd

    ld a, d
    cp $01
    ret nz

    ld a, [$db8a]
    cp $57
    jr z, jr_057_5ddc

    ld hl, $dd27
    ld b, $14
    call Call_057_455f
    ret


jr_057_5ddc:
    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $8a
    ret c

    cp $8c
    ret nc

    ld a, [$db88]
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    and $48
    ret z

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $1b
    ret nz

    ld a, [$db88]
    ld hl, $db04
    call Call_000_2f6c
    bit 0, [hl]
    ret z

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $7b
    ret c

    cp $7d
    ret nc

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5e23:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5e36

    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 4, [hl]
    ret z

jr_057_5e36:
    inc c
    dec b
    jr nz, jr_057_5e23

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $74
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5e4e:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5e76

    ld a, c
    ld [$db89], a
    ld a, $02
    ld [$db4c], a
    push bc
    ld hl, $5206
    rst $10
    pop bc
    ld a, [$db4c]
    and $30
    cp $30
    jr z, jr_057_5e76

    ld a, c
    ld hl, $db05
    call Call_000_2f6c
    bit 7, [hl]
    ret z

jr_057_5e76:
    inc c
    dec b
    jr nz, jr_057_5e4e

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $26
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_5e8c:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5e9c

    ld a, c
    ld hl, $db05
    call Call_000_2f6c
    bit 6, [hl]
    ret z

jr_057_5e9c:
    inc c
    dec b
    jr nz, jr_057_5e8c

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $77
    ret nz

    ld a, [$db88]
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    ret z

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $72
    ret c

    cp $74
    ret nc

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_5ecc:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5edd

    ld a, c
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $03
    ret z

jr_057_5edd:
    inc c
    dec b
    jr nz, jr_057_5ecc

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $1a
    jr c, jr_057_5efc

    cp $1c
    ret c

    cp $1e
    ret z

    cp $1f
    ret z

    cp $da
    jr z, jr_057_5efc

    cp $22
    ret nc

jr_057_5efc:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5f06:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5f17

    ld a, c
    ld hl, $db04
    call Call_000_2f6c
    ld a, [hl]
    and $22
    ret z

jr_057_5f17:
    inc c
    dec b
    jr nz, jr_057_5f06

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $1a
    jr c, jr_057_5f6e

    cp $1c
    ret c

    cp $1e
    jr c, jr_057_5f6e

    cp $20
    ret c

    cp $22
    jr c, jr_057_5f6e

    cp $2a
    jr z, jr_057_5f6e

    cp $3b
    ret c

    cp $41
    jr c, jr_057_5f6e

    cp $44
    jr z, jr_057_5f6e

    cp $53
    jr z, jr_057_5f6e

    cp $55
    ret c

    cp $80
    jr c, jr_057_5f6e

    cp $82
    jr z, jr_057_5f6e

    cp $88
    ret c

    cp $8a
    jr c, jr_057_5f6e

    cp $8c
    ret c

    cp $93
    jr c, jr_057_5f6e

    cp $d6
    ret c

    cp $db
    jr c, jr_057_5f6e

    cp $dc
    jr c, jr_057_5f6e

    cp $dd
    ret nz

jr_057_5f6e:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5f78:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_5f89

    ld a, c
    ld hl, $db07
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    ret z

jr_057_5f89:
    inc c
    dec b
    jr nz, jr_057_5f78

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $15
    ret c

    cp $17
    jr c, jr_057_5fe6

    cp $19
    jr z, jr_057_5fe6

    cp $2a
    jr z, jr_057_5fe6

    cp $6a
    ret c

    cp $6c
    jr c, jr_057_5fe6

    cp $6e
    jr z, jr_057_5fe6

    cp $70
    jr z, jr_057_5fe6

    cp $72
    ret c

    cp $74
    jr c, jr_057_5fe6

    cp $77
    ret c

    cp $79
    jr c, jr_057_5fe6

    cp $7a
    ret c

    cp $7e
    jr c, jr_057_5fe6

    cp $80
    ret c

    cp $83
    jr c, jr_057_5fe6

    cp $88
    ret c

    cp $8a
    jr c, jr_057_5fe6

    cp $8c
    ret c

    cp $8d
    ret z

    cp $da
    jr z, jr_057_5fe6

    cp $dc
    jr z, jr_057_5fe6

    cp $91
    ret nc

jr_057_5fe6:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_5ff0:
    ld a, c
    call Call_000_2f76
    ret nc

    inc c
    dec b
    jr nz, jr_057_5ff0

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $15
    ret c

    cp $17
    jr c, jr_057_6027

    cp $19
    jr z, jr_057_6027

    cp $68
    ret c

    cp $6c
    jr c, jr_057_6027

    cp $6e
    jr z, jr_057_6027

    cp $70
    jr z, jr_057_6027

    cp $78
    ret c

    cp $7a
    ret z

    cp $7e
    jr c, jr_057_6027

    cp $da
    ret nz

jr_057_6027:
    call Call_057_7d4d

jr_057_602a:
    ld a, c
    call Call_000_2f76
    jr c, jr_057_6033

    call Call_057_7d54

jr_057_6033:
    inc c
    dec b
    jr nz, jr_057_602a

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $18
    jr z, jr_057_6057

    cp $72
    ret c

    cp $74
    ret nc

jr_057_6057:
    call Call_057_7d4d

jr_057_605a:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6077

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    jr nz, jr_057_6077

    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $03
    jr nz, jr_057_6077

    call Call_057_7d54

jr_057_6077:
    inc c
    dec b
    jr nz, jr_057_605a

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $17
    ret nz

    call Call_057_7d4d

jr_057_6097:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_60b1

    ld a, c
    call Call_057_7e94
    jr c, jr_057_60b1

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_057_60b1

    call Call_057_7d54

jr_057_60b1:
    inc c
    dec b
    jr nz, jr_057_6097

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $1e
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $17
    jr z, jr_057_60d5

    cp $75
    ret c

    cp $77
    ret nc

jr_057_60d5:
    call Call_057_7d4d

jr_057_60d8:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_60f0

    ld a, c
    ld hl, $dbc3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    or [hl]
    jr z, jr_057_60f0

    call Call_057_7d54

jr_057_60f0:
    inc c
    dec b
    jr nz, jr_057_60d8

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $7a
    jr z, jr_057_6114

    cp $1c
    ret c

    cp $1e
    ret nc

jr_057_6114:
    call Call_057_7d4d

jr_057_6117:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_612d

    ld a, c
    call Call_000_2fd3
    ld a, l
    cp $02
    jr nc, jr_057_612a

    ld a, h
    or a
    jr z, jr_057_612d

jr_057_612a:
    call Call_057_7d54

jr_057_612d:
    inc c
    dec b
    jr nz, jr_057_6117

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $20
    ret c

    cp $22
    ret nc

    call Call_057_7d4d

jr_057_6150:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6169

    ld a, c
    ld hl, $dc03
    call Call_057_4567
    ld a, l
    cp $02
    jr nc, jr_057_6166

    ld a, h
    or a
    jr z, jr_057_6169

jr_057_6166:
    call Call_057_7d54

jr_057_6169:
    inc c
    dec b
    jr nz, jr_057_6150

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $67
    jr z, jr_057_618d

    cp $6c
    ret c

    cp $6e
    ret nc

jr_057_618d:
    call Call_057_7d4d

jr_057_6190:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_61a5

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr nz, jr_057_61a5

    call Call_057_7d54

jr_057_61a5:
    inc c
    dec b
    jr nz, jr_057_6190

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $6f
    ret nz

    call Call_057_7d4d

jr_057_61c5:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_61da

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $20
    jr nz, jr_057_61da

    call Call_057_7d54

jr_057_61da:
    inc c
    dec b
    jr nz, jr_057_61c5

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $91
    ret nz

    call Call_057_7d4d

jr_057_61fa:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6215

    ld a, c
    call Call_057_7ef4
    jr c, jr_057_6215

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl]
    and $40
    jr nz, jr_057_6215

    call Call_057_7d54

jr_057_6215:
    inc c
    dec b
    jr nz, jr_057_61fa

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $92
    ret nz

    call Call_057_7d4d

jr_057_6235:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6250

    ld a, c
    call Call_057_7ec0
    jr c, jr_057_6250

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl]
    and $80
    jr nz, jr_057_6250

    call Call_057_7d54

jr_057_6250:
    inc c
    dec b
    jr nz, jr_057_6235

    ld a, [$db55]
    or a
    ret z

    ld hl, $db54
    cp [hl]
    ret c

    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $15
    ret c

    cp $17
    jr c, jr_057_6291

    cp $19
    jr z, jr_057_6291

    cp $68
    ret c

    cp $6c
    jr c, jr_057_6291

    cp $6e
    jr z, jr_057_6291

    cp $70
    jr z, jr_057_6291

    cp $78
    ret c

    cp $7a
    ret z

    cp $7e
    jr c, jr_057_6291

    cp $da
    ret nz

jr_057_6291:
    call Call_057_7d73

jr_057_6294:
    ld a, c
    call Call_000_2f76
    jr c, jr_057_62a0

    call Call_057_7da4
    cp $03
    ret nz

jr_057_62a0:
    inc c
    dec b
    jr nz, jr_057_6294

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $18
    jr z, jr_057_62b5

    cp $72
    ret c

    cp $74
    ret nc

jr_057_62b5:
    call Call_057_7d73

jr_057_62b8:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_62d8

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    jr nz, jr_057_62d8

    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $03
    jr nz, jr_057_62d8

    call Call_057_7da4
    cp $03
    ret nz

jr_057_62d8:
    inc c
    dec b
    jr nz, jr_057_62b8

    call Call_057_45e4
    ret


Call_057_62e0:
    ld a, [$db88]
    and $04
    xor $04
    ld e, a
    ld hl, $0000
    call Call_000_2fa5
    jr c, jr_057_62f3

    call Call_000_2fd3

jr_057_62f3:
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    inc e
    ld d, $02

jr_057_62fe:
    ld a, e
    call Call_000_2fa5
    jr c, jr_057_631c

    call Call_000_2fd3
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    call Call_000_2f45
    jr nc, jr_057_631c

    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a

jr_057_631c:
    inc e
    dec d
    jr nz, jr_057_62fe

    ret


Call_057_6321:
    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    srl b
    rr c
    ld a, e
    call Call_000_2fcc
    call Call_000_2f45
    jr c, jr_057_634a

    ld a, [$db56]
    ld c, a
    ld a, [$db57]
    ld b, a
    srl h
    rr l
    call Call_000_2f45
    jr nc, jr_057_634a

    xor a
    or a
    ret


jr_057_634a:
    scf
    ret


Call_057_634c:
jr_057_634c:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6369

    ld a, c
    ld [$db89], a
    ld a, $04
    ld [$db4c], a
    push bc
    ld hl, $5206
    rst $10
    pop bc
    ld a, [$db4c]
    and $3c
    cp $3c
    ret nz

jr_057_6369:
    inc c
    dec b
    jr nz, jr_057_634c

    call Call_057_45e4
    ret


Call_057_6371:
    ld a, [$db88]
    cp $04
    jr nc, jr_057_637d

    ld a, [$db74]
    jr jr_057_6380

jr_057_637d:
    ld a, [$db75]

jr_057_6380:
    ld b, a
    ret


    ld a, [$db8a]
    cp $17
    ret nz

    call Call_057_7d73

jr_057_638b:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_63a8

    ld a, c
    call Call_057_7e94
    jr c, jr_057_63a8

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_057_63a8

    call Call_057_7da4
    cp $03
    ret nz

jr_057_63a8:
    inc c
    dec b
    jr nz, jr_057_638b

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $1a
    jr z, jr_057_63bd

    cp $75
    ret c

    cp $77
    ret nc

jr_057_63bd:
    call Call_057_7d73

jr_057_63c0:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_63db

    ld a, c
    ld hl, $dbc3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    or [hl]
    jr z, jr_057_63db

    call Call_057_7da4
    cp $03
    ret nz

jr_057_63db:
    inc c
    dec b
    jr nz, jr_057_63c0

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $1c
    ret c

    cp $1e
    jr c, jr_057_63f0

    cp $7a
    ret nz

jr_057_63f0:
    call Call_057_7d73

jr_057_63f3:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_640c

    ld a, c
    call Call_000_2fd3
    ld a, l
    cp $02
    jr nc, jr_057_6406

    ld a, h
    or a
    jr z, jr_057_640c

jr_057_6406:
    call Call_057_7da4
    cp $03
    ret nz

jr_057_640c:
    inc c
    dec b
    jr nz, jr_057_63f3

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $20
    ret c

    cp $22
    ret nc

    call Call_057_7d73

jr_057_6420:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_643c

    ld a, c
    ld hl, $dc03
    call Call_057_4567
    ld a, l
    cp $02
    jr nc, jr_057_6436

    ld a, h
    or a
    jr z, jr_057_643c

jr_057_6436:
    call Call_057_7da4
    cp $03
    ret nz

jr_057_643c:
    inc c
    dec b
    jr nz, jr_057_6420

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $67
    jr z, jr_057_6451

    cp $6c
    ret c

    cp $6e
    ret nc

jr_057_6451:
    call Call_057_7d73

jr_057_6454:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_646c

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $03
    jr nz, jr_057_646c

    call Call_057_7da4
    cp $03
    ret nz

jr_057_646c:
    inc c
    dec b
    jr nz, jr_057_6454

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $6f
    ret nz

    call Call_057_7d73

jr_057_647d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6495

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $20
    jr nz, jr_057_6495

    call Call_057_7da4
    cp $03
    ret nz

jr_057_6495:
    inc c
    dec b
    jr nz, jr_057_647d

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $91
    ret nz

    call Call_057_7d73

jr_057_64a6:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_64c4

    ld a, c
    call Call_057_7ef4
    jr c, jr_057_64c4

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl]
    and $40
    jr nz, jr_057_64c4

    call Call_057_7da4
    cp $03
    ret nz

jr_057_64c4:
    inc c
    dec b
    jr nz, jr_057_64a6

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $92
    ret nz

    call Call_057_7d73

jr_057_64d5:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_64f3

    ld a, c
    call Call_057_7ec0
    jr c, jr_057_64f3

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl]
    and $80
    jr nz, jr_057_64f3

    call Call_057_7da4
    cp $03
    ret nz

jr_057_64f3:
    inc c
    dec b
    jr nz, jr_057_64d5

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $14
    jr z, jr_057_6509

    cp $32
    jr z, jr_057_6509

    cp $96
    ret nz

jr_057_6509:
    xor a
    ld [$db66], a
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_6515:
    push bc
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6594

    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, c
    ld hl, $dbb3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, h
    or a
    jr nz, jr_057_6574

    ld a, e
    rrca
    rrca
    and $3f
    or a
    jr z, jr_057_6570

    ld e, a
    jr jr_057_657c

jr_057_6570:
    ld e, $01
    jr jr_057_657c

jr_057_6574:
    sra h
    rr l
    sra h
    rr l

jr_057_657c:
    pop bc
    call Call_000_2f45
    jr c, jr_057_6594

    ld hl, $db66
    inc [hl]
    pop bc
    inc c
    dec b
    jr nz, jr_057_6515

    ld a, [$db66]
    or a
    ret z

    call Call_057_45e4
    ret


jr_057_6594:
    pop bc
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $03
    ret c

    cp $12
    ret z

    cp $15
    ret z

    cp $1a
    jr c, jr_057_65f6

    cp $1d
    jr z, jr_057_65f6

    cp $21
    jr z, jr_057_65f6

    cp $3c
    ret c

    cp $3d
    ret z

    cp $3f
    jr c, jr_057_65f6

    cp $4f
    ret c

    jr z, jr_057_65f6

    cp $52
    ret c

    jr z, jr_057_65f6

    cp $53
    jr z, jr_057_65f6

    cp $57
    ret c

    jr z, jr_057_65f6

    cp $59
    ret c

    cp $67
    jr c, jr_057_65f6

    cp $6a
    ret c

    cp $70
    ret z

    cp $72
    jr c, jr_057_65f6

    cp $7c
    ret c

    cp $7e
    jr c, jr_057_65f6

    cp $d5
    jr z, jr_057_65f6

    cp $d9
    jr z, jr_057_65f6

    cp $da
    jr z, jr_057_65f6

    cp $dc
    ret nz

jr_057_65f6:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6600:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_660b

    call Call_057_4572
    jr nz, jr_057_6610

jr_057_660b:
    inc c
    dec b
    jr nz, jr_057_6600

    ret


jr_057_6610:
    ld hl, $dd27
    ld b, $1e
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $1b
    ret z

    cp $1e
    jr c, jr_057_665a

    cp $20
    ret c

    cp $22
    jr c, jr_057_665a

    cp $3b
    ret c

    cp $41
    ret z

    cp $43
    ret z

    cp $54
    ret z

    cp $77
    ret z

    cp $7e
    jr c, jr_057_665a

    cp $82
    jr z, jr_057_665a

    cp $91
    ret c

    cp $93
    jr c, jr_057_665a

    cp $d5
    ret c

    cp $da
    jr z, jr_057_665a

    cp $dc
    jr z, jr_057_665a

    cp $da
    ret nc

jr_057_665a:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6664:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_666e

    call Call_057_4572
    ret z

jr_057_666e:
    inc c
    dec b
    jr nz, jr_057_6664

    ld hl, $dd27
    ld b, $14
    call Call_057_455f
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $17
    jr z, jr_057_66ae

    cp $1a
    jr z, jr_057_66ae

    cp $1b
    jr z, jr_057_66ae

    cp $24
    jr z, jr_057_66ae

    cp $26
    ret c

    cp $29
    jr c, jr_057_66ae

    cp $75
    ret c

    cp $77
    jr c, jr_057_66ae

    cp $8a
    ret c

    cp $8c
    jr c, jr_057_66ae

    cp $8f
    jr z, jr_057_66ae

    cp $92
    ret nz

jr_057_66ae:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_66b8:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_66cc

    ld a, c
    ld hl, $dbc3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    or [hl]
    ret nz

jr_057_66cc:
    inc c
    dec b
    jr nz, jr_057_66b8

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $33
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_66e2:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_66f3

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $03
    ret nz

jr_057_66f3:
    inc c
    dec b
    jr nz, jr_057_66e2

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $3c
    jr z, jr_057_6705

    cp $3e
    ret nz

jr_057_6705:
    ld a, [$db88]
    call Call_000_2fe8
    ld b, h
    ld c, l
    srl b
    rr c
    add hl, bc
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6724:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6749

    push bc
    ld a, c
    ld hl, $dba3
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_000_2f45
    pop bc
    jr z, jr_057_6749

    jr c, jr_057_674e

jr_057_6749:
    inc c
    dec b
    jr nz, jr_057_6724

    ret


jr_057_674e:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $84
    ret c

    cp $88
    ret nc

    ld a, [$db88]
    and $04
    srl a
    srl a
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 2, [hl]
    ret z

    ld a, [$db88]
    and $04
    add $03
    call Call_000_2fa5
    ret c

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $2a
    jr z, jr_057_67a7

    cp $55
    ret c

    cp $57
    jr c, jr_057_67a7

    cp $7f
    jr z, jr_057_67a7

    cp $88
    ret c

    cp $8a
    jr c, jr_057_67a7

    cp $8c
    ret c

    cp $91
    jr c, jr_057_67a7

    cp $dc
    ret nz

jr_057_67a7:
    ld a, [$d9ed]
    cp $15
    ret c

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $95
    jr z, jr_057_67be

    cp $30
    ret c

    cp $32
    ret nc

jr_057_67be:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_67c6:
    ld a, c
    call Call_000_2fa5
    jr z, jr_057_67cd

    ret c

jr_057_67cd:
    inc c
    dec b
    jr nz, jr_057_67c6

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $81
    ret nz

    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03

jr_057_67e3:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6802

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl+]
    and $c3
    jr nz, jr_057_6807

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    and $03
    jr nz, jr_057_6807

    ld a, [hl]
    and $80
    jr nz, jr_057_6807

jr_057_6802:
    inc c
    dec b
    jr nz, jr_057_67e3

    ret


jr_057_6807:
    ld hl, $dd26
    ld b, $0f
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $14
    jr c, jr_057_6821

    cp $4f
    jr z, jr_057_6821

    cp $58
    ret c

    cp $67
    ret nc

jr_057_6821:
    ld a, [$db88]
    call Call_000_2fa5
    ret c

    ld a, [$db88]
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl+]
    and $02
    jr nz, jr_057_683f

    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $03
    jr nz, jr_057_683f

    ret


jr_057_683f:
    ld hl, $dd26
    ld b, $0a
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $48
    ret c

    cp $4f
    jr c, jr_057_685c

    cp $d6
    ret c

    cp $d9
    ret nc

    sub $cf
    jr jr_057_685e

jr_057_685c:
    sub $48

jr_057_685e:
    rst $00
    ld [hl], e
    ld l, b
    sub a
    ld l, b
    rst $08
    ld l, b
    ldh [rBCPS], a
    pop af
    ld l, b
    ld [bc], a
    ld l, c
    inc de
    ld l, c
    inc h
    ld l, c
    ld [hl], $69
    ld c, b
    ld l, c
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_687d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6890

    ld a, c
    ld hl, $db8b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 0, [hl]
    ret nz

jr_057_6890:
    inc c
    dec b
    jr nz, jr_057_687d

    jp Jump_057_695a


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $01
    ld [$db4c], a

Jump_057_68a6:
jr_057_68a6:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_68c8

    ld a, c
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da31], a
    push bc
    ld hl, $0301
    rst $10
    pop bc
    ld a, [$da33]
    ld hl, $db4c
    cp [hl]
    ret z

jr_057_68c8:
    inc c
    dec b
    jr nz, jr_057_68a6

    jp Jump_057_695a


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $02
    ld [$db4c], a
    jr jr_057_68a6

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $03
    ld [$db4c], a
    jr jr_057_68a6

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $06
    ld [$db4c], a
    jr jr_057_68a6

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $07
    ld [$db4c], a
    jr jr_057_68a6

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $08
    ld [$db4c], a
    jr jr_057_68a6

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $00
    ld [$db4c], a
    jp Jump_057_68a6


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $05
    ld [$db4c], a
    jp Jump_057_68a6


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld a, $04
    ld [$db4c], a
    jp Jump_057_68a6


Jump_057_695a:
    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $43
    ret nz

    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $30
    ret z

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $82
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6985:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_69c3

    ld a, c
    ld [$db89], a
    ld a, $02
    ld [$db4c], a
    push bc
    ld hl, $5206
    rst $10
    pop bc
    ld a, [$db4c]
    and $30
    cp $30
    jr z, jr_057_69c3

    ld a, c
    ld hl, $dc03
    call Call_057_4567
    call Call_057_45d1
    ret nc

    ld a, c
    ld hl, $dbf3
    call Call_057_4567
    call Call_057_45d1
    ret nc

    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    bit 1, [hl]
    ret z

jr_057_69c3:
    inc c
    dec b
    jr nz, jr_057_6985

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $80
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_69db:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6a08

    ld a, c
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl+]
    ld a, [hl+]
    and $c2
    jr nz, jr_057_69ff

    ld a, [hl+]
    and $10
    jr nz, jr_057_69ff

    ld a, [hl+]
    inc hl
    ld a, [hl+]
    and $03
    jr nz, jr_057_69ff

    ld a, [hl]
    and $80
    jr z, jr_057_6a08

jr_057_69ff:
    ld hl, $dd27
    ld b, $14
    call Call_057_455f
    ret


jr_057_6a08:
    inc c
    dec b
    jr nz, jr_057_69db

    ret


    ld a, [$db8a]
    cp $3b
    ret c

    cp $41
    jr c, jr_057_6a44

    cp $44
    ret c

    cp $4f
    jr c, jr_057_6a44

    cp $50
    ret c

    cp $54
    jr c, jr_057_6a44

    cp $55
    ret c

    cp $58
    jr c, jr_057_6a44

    cp $67
    ret c

    cp $6a
    jr c, jr_057_6a44

    cp $70
    jr z, jr_057_6a44

    cp $79
    ret c

    cp $7d
    jr c, jr_057_6a44

    cp $d6
    ret c

    cp $da
    ret nc

jr_057_6a44:
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6a4e:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6a5f

    ld a, c
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    ret z

jr_057_6a5f:
    inc c
    dec b
    jr nz, jr_057_6a4e

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $55
    ret nz

    ld a, [$db88]
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    add hl, bc
    add hl, bc
    ld a, $0a
    call Call_000_1e0d
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6a90:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6aac

    push bc
    push hl
    ld a, c
    ld hl, $dc03
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    call Call_000_2f45
    pop bc
    ret c

jr_057_6aac:
    inc c
    dec b
    jr nz, jr_057_6a90

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $1a
    jr z, jr_057_6ac2

    cp $1b
    jr z, jr_057_6ac2

    cp $76
    ret nz

jr_057_6ac2:
    ld a, [$db88]
    add a
    ld hl, $dbc3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db88]
    add a
    ld hl, $dbd3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    ld d, h
    ld e, l
    srl h
    rr l
    add hl, de
    call Call_000_2f45
    ret nc

    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $83
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6b05:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6b42

    ld a, c
    ld hl, $dc64
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_6b19:
    ld a, [hl+]
    or a
    jr z, jr_057_6b42

    cp $01
    jr nz, jr_057_6b3e

    ld a, [hl]
    cp $02
    jr z, jr_057_6b48

    cp $05
    jr z, jr_057_6b48

    cp $08
    jr z, jr_057_6b48

    cp $0b
    jr z, jr_057_6b48

    cp $0e
    jr z, jr_057_6b48

    cp $11
    jr c, jr_057_6b3e

    cp $14
    jr c, jr_057_6b48

jr_057_6b3e:
    inc hl
    dec d
    jr nz, jr_057_6b19

jr_057_6b42:
    inc c
    dec b
    jr nz, jr_057_6b05

    jr jr_057_6b85

jr_057_6b48:
    ld a, [$db88]
    and $04
    ld c, a
    ld b, $03
    ld e, $00

jr_057_6b52:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6b7a

    ld a, c
    ld hl, $dc64
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_6b66:
    ld a, [hl+]
    or a
    jr z, jr_057_6b7a

    cp $01
    jr nz, jr_057_6b76

    cp $2b
    jr c, jr_057_6b76

    cp $33
    jr c, jr_057_6b7f

jr_057_6b76:
    inc hl
    dec d
    jr nz, jr_057_6b66

jr_057_6b7a:
    inc c
    dec b
    jr nz, jr_057_6b52

    ret


jr_057_6b7f:
    inc e
    ld e, a
    cp $02
    jr c, jr_057_6b76

jr_057_6b85:
    call Call_057_45e4
    ret


    ld a, [$db8a]
    cp $3b
    jr z, jr_057_6b93

    cp $3d
    ret nz

jr_057_6b93:
    ld a, [$db88]
    add a
    ld hl, $dba3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db88]
    add a
    ld hl, $dbb3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    ld d, h
    ld e, l
    srl h
    rr l
    add hl, de
    call Call_000_2f45
    ret c

    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $80
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    srl a
    srl a
    ld hl, $db00
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $2c
    ret nz

    ld b, $03

jr_057_6bec:
    ld a, c
    ld hl, $db03
    call Call_000_2f6c
    ld a, [hl+]
    and $3c
    ret nz

    ld a, [hl+]
    and $6f
    ret nz

    ld a, [hl+]
    and $40
    ret nz

    inc hl
    ld a, [hl+]
    and $cc
    ret nz

    ld a, [hl+]
    and $40
    ret nz

    dec b
    jr nz, jr_057_6bec

    call Call_057_45e4
    ret


    call Call_057_7c6e
    ret nz

    ld a, [$db8a]
    cp $26
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6c23:
    ld e, $08
    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_057_6c31:
    ld a, [hl]
    cp $ff
    jr z, jr_057_6c5a

    ld a, [hl+]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $06
    ld [$db4e], a
    push af
    push bc
    push de
    push hl
    ld hl, $5400
    rst $10
    pop hl
    pop de
    pop bc
    pop af
    ld a, [$db4c]
    cp $00
    ret nz

    inc hl
    dec e
    jr nz, jr_057_6c31

jr_057_6c5a:
    inc c
    dec b
    jr nz, jr_057_6c23

    call Call_057_45e4
    ret


    ld a, [$c86c]
    or a
    ret nz

    ld a, [$db88]
    cp $04
    ret nc

    ld a, [$db73]
    cp $01
    ret nz

    ld a, [$db8a]
    cp $12
    ret c

    cp $15
    jr c, jr_057_6c88

    cp $69
    jr z, jr_057_6c88

    cp $6b
    jr z, jr_057_6c88

    cp $71
    ret nz

jr_057_6c88:
    call Call_057_45e4
    ret


    ld a, [$c86c]
    or a
    ret nz

    ld a, [$db88]
    cp $04
    ret c

    cp $07
    ret z

    ld a, [$db8a]
    cp $15
    jr c, jr_057_6cb7

    cp $3b
    ret c

    cp $41
    ret z

    cp $43
    ret z

    cp $54
    ret z

    cp $6a
    jr c, jr_057_6cb7

    cp $d6
    ret c

    cp $da
    ret nc

jr_057_6cb7:
    ld hl, $dd26
    ld b, $14
    call Call_057_455f
    ret


    ld a, [$db8a]
    cp $24
    ret nz

    call Call_057_7c6e
    ret nz

    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03

jr_057_6cd4:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_6cdf

    call Call_057_6ce8
    jr c, jr_057_6ce7

jr_057_6cdf:
    inc c
    dec b
    jr nz, jr_057_6cd4

    call Call_057_45e4
    ret


jr_057_6ce7:
    ret


Call_057_6ce8:
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_6cf5:
    ld a, [hl+]
    call Call_057_6d00
    ret c

    inc hl
    dec d
    jr nz, jr_057_6cf5

    or a
    ret


Call_057_6d00:
    cp $5c
    jr c, jr_057_6d07

    cp $64
    ret c

jr_057_6d07:
    or a
    ret


Call_057_6d09:
    cp $03
    jr nc, jr_057_6d27

Call_057_6d0d:
jr_057_6d0d:
    push hl
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    pop hl
    push hl
    call Call_000_0c80
    pop hl

jr_057_6d1c:
    ld a, [hl]
    cp $f0
    ret z

    inc hl
    jr jr_057_6d1c

jr_057_6d23:
    ld a, b
    pop bc
    jr jr_057_6d0d

jr_057_6d27:
    push bc
    ld b, a
    and $03
    cp $03
    ld a, b
    pop bc
    jr z, jr_057_6d50

    push bc
    ld b, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_6d23

    push hl
    ld a, b
    and $03
    ld hl, $c1ca
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    cp $ff
    jr nz, jr_057_6d4d

    ld a, b

jr_057_6d4d:
    pop bc
    jr nz, jr_057_6d78

jr_057_6d50:
    push af
    call Call_057_6d5a
    pop af
    ld hl, $5104
    rst $10
    ret


Call_057_6d5a:
    ld [$db60], a
    push hl
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld l, a
    ld h, $05
    pop de
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    call Call_000_097a
    ret


jr_057_6d78:
    call Call_057_6d0d
    ld a, $2f
    ld [hl+], a
    ld a, $46
    ld [hl+], a
    ld a, $48
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld [hl], $f0
    push hl
    ld hl, $c1ca
    ld a, [$db50]
    and $03
    cp $01
    jr z, jr_057_6da4

    cp $02
    jr z, jr_057_6dae

    ld a, [hl+]
    cp [hl]
    jr z, jr_057_6dca

    inc hl
    cp [hl]
    jr z, jr_057_6dca

    jr jr_057_6dd9

jr_057_6da4:
    ld a, [hl+]
    cp [hl]
    jr z, jr_057_6dcf

    ld a, [hl+]
    cp [hl]
    jr z, jr_057_6dca

    jr jr_057_6dd9

jr_057_6dae:
    ld d, $00
    inc hl
    inc hl
    ld a, [hl-]
    dec hl
    cp [hl]
    jr nz, jr_057_6db8

    inc d

jr_057_6db8:
    inc hl
    cp [hl]
    jr nz, jr_057_6dbd

    inc d

jr_057_6dbd:
    ld a, d
    or a
    jr z, jr_057_6dd9

    cp $01
    jr z, jr_057_6dcf

    pop hl
    ld a, $03
    jr jr_057_6dd2

jr_057_6dca:
    pop hl
    ld a, $01
    jr jr_057_6dd2

jr_057_6dcf:
    pop hl
    ld a, $02

jr_057_6dd2:
    ld [$db4d], a
    ld [hl+], a
    ld [hl], $f0
    ret


jr_057_6dd9:
    pop hl
    xor a
    ld [$db4d], a
    ret


    ld hl, $c1a0
    jr jr_057_6de7

    ld hl, $c180

jr_057_6de7:
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db89]
    ld [$db50], a
    call Call_057_6d09
    ret


    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    ld [$db50], a
    call Call_057_6d09
    ret


    ld a, [$d9ee]
    rst $00
    ld a, [hl+]
    ld l, [hl]
    add hl, hl
    ld [hl], c
    cp c
    ld [hl], e
    add hl, hl
    ld [hl], l
    add hl, sp
    ld [hl], h
    and d
    ld [hl], l
    ld e, c
    ld a, b
    ld h, l
    ld a, b

jr_057_6e22:
    ld a, $06
    ld [$d9ee], a
    jp Jump_057_7859


    ld a, [$d9ed]
    cp $16
    jr c, jr_057_6e50

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld a, [$db88]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01

jr_057_6e50:
    ld hl, $dce4
    ld bc, $0008
    xor a
    call Call_000_12c7
    ld a, [$db88]
    ld hl, $dd13
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_057_6e22

    ld hl, $dcfc
    ld bc, $0007
    xor a
    call Call_000_12c7
    xor a
    ld [$db50], a
    ld [$db51], a
    ld [$db52], a
    ld a, [$db88]
    call Call_000_2f76
    jr c, jr_057_6eb9

    ld a, [$db88]
    ld hl, $db02
    call Call_000_2f6c
    bit 4, [hl]
    jr nz, jr_057_6eb9

    ld a, [$db88]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 6, [hl]
    jr z, jr_057_6ec1

    ld a, [$db88]
    cp $03
    jr c, jr_057_6f1f

    jr z, jr_057_6eb9

    cp $07
    jr z, jr_057_6eb9

    ld a, [$c86c]
    or a
    jr z, jr_057_6eb9

    jr jr_057_6f1f

jr_057_6eb9:
    ld hl, $d9ee
    inc [hl]
    jp Jump_057_7129


    ret


jr_057_6ec1:
    ld a, [$c86c]
    or a
    jr nz, jr_057_6ecc

    ld a, [$c8da]
    jr jr_057_6edb

jr_057_6ecc:
    ld a, [$db88]
    cp $04
    jr nc, jr_057_6ed8

    ld a, [$c1d5]
    jr jr_057_6edb

jr_057_6ed8:
    ld a, [$c1d6]

jr_057_6edb:
    ld [$dd72], a
    ld a, [hl]
    call Call_057_78d4
    call Call_057_7905
    call Call_057_791a
    call Call_057_7a03
    call Call_057_7a16
    call Call_057_7a5d
    jp nc, Jump_057_6f8c

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld a, [$db88]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    set 6, [hl]
    ld a, [$dd72]
    cp $81
    jp nz, Jump_057_7129

    ld hl, $d9ee
    inc [hl]

jr_057_6f1f:
    ld a, [$d9ed]
    cp $01
    jr nz, jr_057_6f64

    ld a, [$db88]
    call Call_000_2fa5
    jp c, Jump_057_7129

    ld a, [$db88]
    ld hl, $db02
    call Call_000_2f6c
    ld a, [hl]
    and $dc
    jp nz, Jump_057_7129

    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $1f
    jp nz, Jump_057_7129

    inc hl
    bit 2, [hl]
    jp nz, Jump_057_7129

    inc hl
    ld a, [hl]
    and $d0
    jp nz, Jump_057_7129

    call Call_057_7e82
    ld a, $b4
    ld [$c823], a
    xor a
    ld [$c822], a
    ld hl, $4c00
    rst $10

jr_057_6f64:
    ld a, $06
    ld [$d9ee], a
    ld a, [$db88]
    ld hl, $db06
    call Call_000_2f6c
    ld a, [hl]
    and $0c
    ld [hl+], a
    ld a, [hl]
    and $cf
    ld [hl], a
    call Call_057_7f5f
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], b
    ret


Jump_057_6f8c:
    ld a, [$db88]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    cp $03
    jr nz, jr_057_6fbc

    ld a, [$dd72]
    cp $81
    jr z, jr_057_6fd2

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $3a
    ld a, $06
    ld [$d9ee], a
    jp Jump_057_7859


jr_057_6fbc:
    ld hl, $db50
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$dd72]
    cp $81
    jr z, jr_057_6fd0

    ld [hl], $14
    jr jr_057_6fd2

jr_057_6fd0:
    ld [hl], $2d

jr_057_6fd2:
    ld a, [$d9ec]
    cp $05
    jr z, jr_057_6fe0

    ld hl, $d9ee
    inc [hl]
    jp Jump_057_7129


jr_057_6fe0:
    ld a, [$c86c]
    or a
    jp nz, Jump_057_7129

    ld a, [$dd72]
    cp $81
    jp nz, Jump_057_7129

    ld a, [$db88]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jr z, jr_057_7017

    cp $02
    jr z, jr_057_7012

    cp $01
    jr z, jr_057_700d

    ld hl, $70a9
    jr jr_057_701a

jr_057_700d:
    ld hl, $70c9
    jr jr_057_701a

jr_057_7012:
    ld hl, $70e9
    jr jr_057_701a

jr_057_7017:
    ld hl, $7109

jr_057_701a:
    ld de, $0000
    ld a, [$db88]
    ld bc, $dc5c
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $97
    jr c, jr_057_7030

    ld d, $10

jr_057_7030:
    ld a, [$db88]
    ld bc, $db9b
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    cp $0a
    jr c, jr_057_7050

    cp $14
    jr c, jr_057_704b

    cp $1e
    jr c, jr_057_704a

    inc e

jr_057_704a:
    inc e

jr_057_704b:
    inc e
    ld a, e
    add a
    add a
    ld e, a

jr_057_7050:
    ld a, d
    add e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db88]
    ld bc, $dc44
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_057_7092
    inc hl
    ld a, $08
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_057_7092
    inc hl
    ld a, $08
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_057_7092
    inc hl
    ld a, $08
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    call Call_057_7092
    ld hl, $d9ee
    inc [hl]
    jp Jump_057_7129


Call_057_7092:
    bit 7, [hl]
    jr nz, jr_057_709e

    ld a, [bc]
    add [hl]
    jr nc, jr_057_70a7

    ld a, $ff
    jr jr_057_70a7

jr_057_709e:
    ld a, [hl]
    cpl
    inc a
    ld d, a
    ld a, [bc]
    sub d
    jr nc, jr_057_70a7

    xor a

jr_057_70a7:
    ld [bc], a
    ret


    rlca
    rst $38
    nop
    inc bc
    dec b
    rst $38
    nop
    ld [bc], a
    inc bc
    rst $38
    nop
    ld bc, $ff02
    nop
    ld bc, $ff0a
    nop
    inc b
    rlca
    rst $38
    nop
    inc bc
    dec b
    rst $38
    nop
    ld [bc], a
    dec b
    nop
    nop
    ld bc, $0700
    cp $03
    nop
    dec b
    cp $02
    nop
    inc b
    rst $38
    ld bc, $0300
    rst $38
    ld bc, $0a00
    db $fd
    inc b
    nop
    rlca
    cp $03
    nop
    dec b
    rst $38
    ld [bc], a
    nop
    dec b
    nop
    ld bc, $00fe
    rlca
    inc bc
    cp $00
    dec b
    ld [bc], a
    rst $38
    nop
    inc b
    ld bc, $00ff
    inc bc
    ld bc, $00fe
    ld a, [bc]
    inc b
    cp $00
    rlca
    inc bc
    rst $38
    nop
    dec b
    ld [bc], a
    nop
    nop
    dec b
    ld bc, $0000
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    rst $38

Jump_057_7129:
    ld a, [$c86c]
    or a
    jr z, jr_057_7140

    ld a, [$db88]
    cp $04
    jr nc, jr_057_713b

    ld a, [$c1d5]
    jr jr_057_7143

jr_057_713b:
    ld a, [$c1d6]
    jr jr_057_7143

jr_057_7140:
    ld a, [$c8da]

jr_057_7143:
    cp $81
    jr nz, jr_057_7160

    ld a, [$db88]
    cp $03
    jr z, jr_057_7160

    cp $07
    jr z, jr_057_7160

    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jr z, jr_057_718c

jr_057_7160:
    call Call_057_71b9
    ld a, [$db76]
    or a
    call z, Call_057_719b
    call Call_057_7322
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_057_7184

    ld hl, $d9ee
    inc [hl]
    jp Jump_057_73b9


jr_057_7184:
    ld a, $05
    ld [$d9ee], a
    jp Jump_057_75a2


jr_057_718c:
    ld a, $06
    ld [$d9ee], a
    jp Jump_057_7859


    call Call_057_7f2c
    ld a, [$c899]
    ret


Call_057_719b:
    ld a, [$db88]
    cp $04
    jr nc, jr_057_71a8

    ld a, [$c8da]
    cp $81
    ret z

jr_057_71a8:
    ld a, [$dcfe]
    cp $1e
    jr nc, jr_057_71b3

    ld a, $00
    jr jr_057_71b5

jr_057_71b3:
    sub $1e

jr_057_71b5:
    ld [$dcfe], a
    ret


Call_057_71b9:
    ld c, $00
    ld d, c
    ld a, [$c86c]
    or a
    jr nz, jr_057_71c9

    ld a, [$db88]
    cp $03
    jr nc, jr_057_71cf

jr_057_71c9:
    ld d, $01
    ld a, [$db50]
    ld c, a

jr_057_71cf:
    ld a, [$db88]
    ld hl, $dc44
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld hl, $dcfc
    call Call_057_72ce
    ld a, d
    or a
    jr nz, jr_057_71e8

    jr jr_057_7206

jr_057_71e8:
    ld a, [$c86c]
    or a
    jr nz, jr_057_71f3

    ld a, [$c8da]
    jr jr_057_7202

jr_057_71f3:
    ld a, [$c863]
    bit 1, a
    jr nz, jr_057_71ff

    ld a, [$c1d5]
    jr jr_057_7202

jr_057_71ff:
    ld a, [$c1d6]

jr_057_7202:
    cp $81
    jr z, jr_057_7228

jr_057_7206:
    ld a, [$db88]
    ld hl, $db03
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    and $0c
    jr nz, jr_057_7221

    inc hl
    inc hl
    ld a, [hl]
    and $33
    jr z, jr_057_7228

jr_057_7221:
    ld a, $1e
    ld hl, $dcfc
    add [hl]
    ld [hl], a

jr_057_7228:
    ld a, [$db51]
    ld c, a
    ld a, [$db88]
    ld hl, $dc4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld hl, $dcfd
    call Call_057_72ce
    ld a, [$db52]
    ld c, a
    ld a, [$db88]
    ld hl, $dc54
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld hl, $dcfe
    call Call_057_72ce
    ld a, [$db88]
    ld d, a
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    ret nz

    ld a, [$db88]
    cp $04
    jr c, jr_057_7273

    ld a, [$db75]
    jr jr_057_7276

jr_057_7273:
    ld a, [$db74]

jr_057_7276:
    ld b, a
    ld a, [$db88]
    and $04
    ld c, a

jr_057_727d:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_7298

    push bc
    call Call_000_2fda
    push hl
    ld a, c
    call Call_000_2fe8
    add hl, hl
    ld b, h
    ld c, l
    add hl, bc
    add hl, bc
    pop bc
    call Call_000_2f45
    pop bc
    jr c, jr_057_729d

jr_057_7298:
    inc c
    dec b
    jr nz, jr_057_727d

    ret


jr_057_729d:
    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08

jr_057_72ad:
    ld a, [hl+]
    cp $ff
    ret z

    cp $2b
    jr c, jr_057_72c1

    cp $30
    jr c, jr_057_72c6

    cp $93
    jr z, jr_057_72c6

    cp $94
    jr z, jr_057_72c6

jr_057_72c1:
    inc hl
    dec b
    jr nz, jr_057_72ad

    ret


jr_057_72c6:
    ld a, $1e
    ld hl, $dcfe
    add [hl]
    ld [hl], a
    ret


Call_057_72ce:
    push hl
    push de
    ld a, b
    ld [$dd72], a
    call Call_057_78ce
    ld a, c
    add b
    ld b, a
    call Call_057_7f2c
    push bc
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, [$c86c]
    or a
    jr nz, jr_057_7316

    ld a, [$db88]
    cp $03
    jr c, jr_057_7316

    ld a, [$dd72]
    cp $32
    jr c, jr_057_730a

    cp $64
    jr c, jr_057_730e

    cp $96
    jr c, jr_057_7312

    cp $c8
    jr c, jr_057_7316

    ld a, $0a
    jr jr_057_7318

jr_057_730a:
    ld a, $1e
    jr jr_057_7318

jr_057_730e:
    ld a, $19
    jr jr_057_7318

jr_057_7312:
    ld a, $14
    jr jr_057_7318

jr_057_7316:
    ld a, $0a

jr_057_7318:
    call Call_000_1e0d
    pop bc
    pop de
    add b
    ld b, a
    pop hl
    ld [hl], b
    ret


Call_057_7322:
    ld a, $01
    ld [$dcff], a
    ld a, $02
    ld [$dd00], a
    ld a, $03
    ld [$dd01], a
    ld a, [$dcfc]
    ld l, a
    ld a, [$dcfd]
    ld c, a
    xor a
    ld h, a
    ld b, a
    call Call_000_2f45
    jr nc, jr_057_734d

    ld l, c
    ld h, b
    ld a, $02
    ld [$dcff], a
    ld a, $01
    ld [$dd00], a

jr_057_734d:
    ld a, [$dcfe]
    ld c, a
    ld b, $00
    call Call_000_2f45
    jr nc, jr_057_7366

    ld a, [$dcff]
    ld b, a
    ld a, [$dd01]
    ld [$dcff], a
    ld a, b
    ld [$dd01], a

jr_057_7366:
    call Call_057_73a5
    call z, Call_057_73b1
    ld a, [$dd01]
    dec a
    ld hl, $dcfc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld a, [$dd00]
    dec a
    ld hl, $dcfc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    call Call_000_2f45
    jr nc, jr_057_739f

    ld a, [$dd00]
    ld b, a
    ld a, [$dd01]
    ld [$dd00], a
    ld a, b
    ld [$dd01], a

jr_057_739f:
    ld a, $03
    ld [$dd02], a
    ret


Call_057_73a5:
    ld a, [$dd00]
    cp $01
    ret z

    ld a, [$dd01]
    cp $01
    ret


Call_057_73b1:
    ld hl, $dcfc
    ld a, $1e
    add [hl]
    ld [hl], a
    ret


Jump_057_73b9:
    ld a, [$dd02]
    cp $06
    jr z, jr_057_73ed

    cp $04
    jr z, jr_057_73f1

    cp $03
    jr z, jr_057_73d9

    ld b, a
    dec a
    ld hl, $dcfc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_057_73ed

    ld a, b

jr_057_73d9:
    ld hl, $dcfc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$dd6a], a
    ld hl, $d9ee
    inc [hl]
    jp Jump_057_7529


jr_057_73ed:
    ld c, $3a
    jr jr_057_7418

jr_057_73f1:
    ld a, [$dcff]
    cp $01
    jr z, jr_057_73ed

    cp $03
    ld a, [$dd02]
    jr nz, jr_057_73d9

    ld a, [$d9ed]
    cp $15
    ld a, [$dd02]
    jr nc, jr_057_73ed

    call Call_057_77a4
    ld a, [$dd02]
    jr nz, jr_057_73d9

    call Call_057_77b4
    jr nc, jr_057_73ed

    ld c, $8d

jr_057_7418:
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    ld hl, $d9ee
    inc [hl]
    ld hl, $d9ee
    inc [hl]
    ld hl, $d9ee
    inc [hl]
    ld hl, $d9ee
    inc [hl]
    jp Jump_057_7859


Jump_057_7439:
    ld a, [$c1fe]
    ld l, a
    ld a, [$c1ff]
    ld h, a

Jump_057_7441:
    ld a, [hl]
    or a
    jp z, Jump_057_74ca

    ld a, [$dd6a]
    cp [hl]
    jr nz, jr_057_7487

    xor a
    ld [$dd26], a
    ld [$dd27], a
    inc hl
    ld a, [hl]
    ld [$db8a], a
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $07
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    ld [$dd6b], a
    ld a, [$dd6a]
    dec a
    ld hl, $4302
    call Call_057_4567
    ld a, l
    ld [$c1fa], a
    ld a, h
    ld [$c1fb], a
    ld a, $07
    ld [$d9ee], a
    ret


jr_057_7487:
    ld a, [$c1fc]
    ld hl, $dce4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld [$dd26], a
    ld [$dd27], a

Jump_057_749b:
    ld a, [$c1fe]
    ld l, a
    ld a, [$c1ff]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$c1fe], a
    ld a, h
    ld [$c1ff], a
    ld a, [$c1fc]
    ld c, a
    ld a, [$c1fd]
    ld b, a
    inc c
    dec b
    ld a, c
    ld [$c1fc], a
    ld a, b
    ld [$c1fd], a
    jp nz, Jump_057_7441

jr_057_74c2:
    ld a, $05
    ld [$d9ee], a
    jp Jump_057_75a2


Jump_057_74ca:
    ld a, [$c1fc]
    ld hl, $dce4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a

jr_057_74d7:
    ld [hl+], a
    dec b
    jr nz, jr_057_74d7

    jr jr_057_74c2

    push hl
    push de
    push bc
    ld a, [hl]
    ld [$db8a], a
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $07
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    ld [$dd6b], a
    ld a, [$dd6a]
    dec a
    ld hl, $4302
    call Call_057_4567
    call Call_057_750c
    pop bc
    pop de
    pop hl
    ret


Call_057_750c:
jr_057_750c:
    ld a, [hl+]
    ld d, a
    ld a, [hl-]
    or d
    jr z, jr_057_7524

    push hl
    call Call_057_7525
    pop hl
    ld a, [$dd27]
    cp $ff
    jr z, jr_057_7524

    inc hl
    inc hl
    push hl
    pop hl
    jr jr_057_750c

jr_057_7524:
    ret


Call_057_7525:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_057_7529:
    ld bc, $0800
    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_057_753a:
    ld a, [hl]
    cp $ff
    jr z, jr_057_7574

    push hl
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $03
    ld [$db4e], a
    push bc
    ld hl, $5400
    rst $10
    pop bc
    ld a, c
    ld hl, $dce4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$db4c]
    add [hl]
    ld [hl], a
    jr nc, jr_057_7566

    ld [hl], $ff

jr_057_7566:
    push hl
    ld a, $10
    call Call_057_7a93
    pop hl
    add [hl]
    ld [hl], a
    jr nc, jr_057_7573

    ld [hl], $ff

jr_057_7573:
    pop hl

jr_057_7574:
    inc hl
    inc hl
    inc c
    dec b
    jr nz, jr_057_753a

    ld hl, $d9ee
    inc [hl]
    ld bc, $0800
    ld a, c
    ld [$c1fc], a
    ld a, b
    ld [$c1fd], a
    ld a, [$db88]
    ld hl, $dc64
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$c1fe], a
    ld a, h
    ld [$c1ff], a
    jp Jump_057_7439


Jump_057_75a2:
    ld a, [$db88]
    ld hl, $db02
    call Call_000_2f6c
    bit 4, [hl]
    jp nz, Jump_057_76bd

    inc hl
    inc hl
    inc hl
    inc hl
    bit 2, [hl]
    jp nz, Jump_057_76b5

    inc hl
    bit 4, [hl]
    jp nz, Jump_057_76c5

    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp z, Jump_057_76df

    ld hl, $dce4
    ld bc, $0701
    ld d, [hl]
    inc hl
    ld e, $00

jr_057_75da:
    ld a, d
    or a
    jr nz, jr_057_75ec

    ld a, [hl+]
    ld d, a
    inc e
    inc c
    dec b
    jr nz, jr_057_75da

    ld a, d
    or a
    jp z, Jump_057_76a9

    jr jr_057_75fa

jr_057_75ec:
    ld a, [hl]
    cp d
    jp z, Jump_057_769b

    jr c, jr_057_75f5

Jump_057_75f3:
    ld d, [hl]
    ld e, c

Jump_057_75f5:
jr_057_75f5:
    inc hl
    inc c
    dec b
    jr nz, jr_057_75ec

jr_057_75fa:
    ld a, [$dd02]
    ld hl, $dcfc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_057_7650

    cp $02
    jr z, jr_057_762e

    ld a, d
    cp $14
    jr nc, jr_057_7632

    ld a, [$d9ed]
    cp $15
    jp nc, Jump_057_76a9

    call Call_057_77a4
    jp nz, Jump_057_76a9

    call Call_057_77b4
    jp nc, Jump_057_7686

    call Call_057_76cd
    ld [hl], $8d
    ret


jr_057_762e:
    ld a, d
    or a
    jr z, jr_057_76a9

jr_057_7632:
    call Call_057_76cd
    push hl
    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ld [hl], a
    ret


jr_057_7650:
    push de
    ld hl, $580b
    rst $10
    ld a, [$dd26]
    pop de
    cp d
    jr nc, jr_057_7686

    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    cp $ff
    jr nz, jr_057_7695

Jump_057_7686:
jr_057_7686:
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $3a

jr_057_7695:
    ld [hl], a
    ld hl, $d9ee
    inc [hl]
    ret


Jump_057_769b:
    call Call_057_7f2c
    ld a, [$c899]
    bit 0, a
    jp z, Jump_057_75f5

    jp Jump_057_75f3


Jump_057_76a9:
jr_057_76a9:
    ld hl, $dd02
    inc [hl]
    ld a, $02
    ld [$d9ee], a
    jp Jump_057_73b9


Jump_057_76b5:
    call Call_057_76cd
    ld [hl], $42
    jp Jump_057_7859


Jump_057_76bd:
    call Call_057_76cd
    ld [hl], $3a
    jp Jump_057_7859


Jump_057_76c5:
    call Call_057_76cd
    ld [hl], $95
    jp Jump_057_7859


Call_057_76cd:
    ld hl, $d9ee
    inc [hl]
    ld a, [$db88]
    ld hl, $dcec
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


Jump_057_76df:
    ld b, $0a
    ld hl, $db61
    xor a

jr_057_76e5:
    ld [hl+], a
    dec b
    jr nz, jr_057_76e5

jr_057_76e9:
    ld a, [$dd02]
    ld hl, $dcfc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, [hl]
    ld e, $00
    ld hl, $dc64
    ld a, [$db88]
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld bc, $0800

jr_057_7709:
    ld a, [hl+]
    cp d
    jr nz, jr_057_7724

    push hl
    call Call_057_7f2c
    ld hl, $db61
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c899]
    and $07
    inc a
    ld [hl], a
    pop hl
    inc e

jr_057_7724:
    inc hl
    inc c
    dec b
    jr nz, jr_057_7709

    call Call_057_7f2c
    ld a, d
    cp $02
    jr z, jr_057_7741

    ld hl, $db69
    cp $01
    jr z, jr_057_7739

    inc hl

jr_057_7739:
    ld a, [$c89a]
    and $07
    inc a
    ld [hl], a
    inc e

jr_057_7741:
    ld a, e
    or a
    jr nz, jr_057_7761

    ld a, d
    cp $02
    jr nz, jr_057_7750

    ld hl, $dd02
    inc [hl]
    jr jr_057_76e9

jr_057_7750:
    cp $03
    jr z, jr_057_7758

jr_057_7754:
    ld b, $3a
    jr jr_057_77a0

jr_057_7758:
    call Call_057_77a4
    jr nz, jr_057_7754

    ld b, $8d
    jr jr_057_77a0

jr_057_7761:
    ld bc, $0a00
    ld hl, $db61

jr_057_7767:
    ld a, [hl+]
    or a
    jr nz, jr_057_7773

    inc c
    dec b
    jr nz, jr_057_7767

    ld b, $3a
    jr jr_057_77a0

jr_057_7773:
    ld d, a
    ld e, c
    inc c

jr_057_7776:
    ld a, [hl+]
    cp d
    jr c, jr_057_777c

    ld d, a
    ld e, c

jr_057_777c:
    inc c
    dec b
    jr nz, jr_057_7776

    ld a, e
    cp $09
    jr nc, jr_057_7758

    cp $08
    jr z, jr_057_7754

    ld a, [$db88]
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, e
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]

jr_057_77a0:
    call Call_057_76cd
    ld [hl], b

Call_057_77a4:
    ld a, [$db88]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    ret


Call_057_77b4:
    ld a, [$db88]
    ld c, a
    and $03
    cp $03
    jr z, jr_057_77f2

    ld a, [$c86c]
    or a
    jr nz, jr_057_77c8

    bit 2, c
    jr nz, jr_057_77f2

jr_057_77c8:
    ld a, c
    xor $04
    and $04
    ld c, a
    call Call_057_77f5
    jr nc, jr_057_77f0

    inc c
    call Call_057_77f5
    jr nc, jr_057_77f0

    inc c
    call Call_057_77f5
    jr nc, jr_057_77f0

    call Call_057_7828
    jr nc, jr_057_77f2

    dec c
    call Call_057_7828
    jr nc, jr_057_77f2

    dec c
    call Call_057_7828
    jr nc, jr_057_77f2

jr_057_77f0:
    scf
    ret


jr_057_77f2:
    scf
    ccf
    ret


Call_057_77f5:
    ld a, c
    call Call_000_2fa5
    ret c

    push bc
    ld a, c
    ld hl, $dbe3
    call Call_057_4567
    push hl
    ld a, [$db88]
    ld hl, $dba3
    call Call_057_4567
    srl h
    rr l
    push hl
    ld a, [$db88]
    ld hl, $dbf3
    call Call_057_4567
    srl h
    rr l
    pop bc
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    call Call_000_2f45
    pop bc
    ret


Call_057_7828:
    ld a, c
    call Call_000_2fa5
    ret c

    push bc
    ld a, [$db88]
    ld hl, $dbe3
    call Call_057_4567
    push hl
    ld a, c
    ld hl, $dbb3
    call Call_057_4567
    srl h
    rr l
    push hl
    ld a, c
    ld hl, $dbf3
    call Call_057_4567
    srl h
    rr l
    pop bc
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    call Call_000_2f45
    pop bc
    ret


Jump_057_7859:
    ld a, [$db88]
    xor a
    ld [$d9ee], a
    ld hl, $d9ed
    inc [hl]
    ret


    ld a, [$c1fa]
    ld l, a
    ld a, [$c1fb]
    ld h, a

jr_057_786d:
    ld a, [hl+]
    ld d, a
    ld a, [hl-]
    or d
    jr z, jr_057_78a2

    push hl
    call Call_057_78ca
    pop hl
    ld a, [$dd27]
    cp $ff
    jr z, jr_057_788b

    inc hl
    inc hl
    ld a, l
    ld [$c1fa], a
    ld a, h
    ld [$c1fb], a
    jr jr_057_786d

jr_057_788b:
    xor a
    ld [$dd26], a
    ld [$dd27], a
    ld a, [$c1fc]
    ld hl, $dce4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $00
    jr jr_057_78c1

jr_057_78a2:
    ld a, [$c1fc]
    ld hl, $dce4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$dd27]
    cp $ff
    jr z, jr_057_788b

    ld e, a
    ld a, [$dd26]
    sub e
    jr c, jr_057_788b

    ld [$dd26], a
    add [hl]
    ld [hl], a

jr_057_78c1:
    ld a, $04
    ld [$d9ee], a
    jp Jump_057_749b


    ret


Call_057_78ca:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_057_78ce:
    ld a, $0a
    call Call_000_1dfb
    ret


Call_057_78d4:
    cp $03
    jr z, jr_057_78e5

    cp $02
    jr z, jr_057_78f0

    cp $01
    jr z, jr_057_78eb

    ld hl, $dc44
    jr jr_057_78f3

jr_057_78e5:
    ld a, $00
    ld [$db4c], a
    ret


jr_057_78eb:
    ld hl, $dc4c
    jr jr_057_78f3

jr_057_78f0:
    ld hl, $dc54

jr_057_78f3:
    ld a, [$db88]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    call Call_057_78ce
    ld a, b
    ld [$db4c], a
    ret


Call_057_7905:
    ld a, [$db88]
    ld hl, $dc5c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    call Call_057_78ce
    ld a, b
    ld [$db4d], a
    ret


Call_057_791a:
    ld b, $00
    ld a, [$db88]
    ld hl, $dc44
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $c0
    jr nc, jr_057_7937

    cp $40
    jr nc, jr_057_7935

    ld b, $12
    jr jr_057_7937

jr_057_7935:
    ld b, $09

jr_057_7937:
    ld a, [$db88]
    ld hl, $dc54
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $c0
    jr nc, jr_057_7954

    cp $40
    jr nc, jr_057_7950

    ld a, $06
    jr jr_057_7952

jr_057_7950:
    ld a, $03

jr_057_7952:
    add b
    ld b, a

jr_057_7954:
    ld a, [$db88]
    ld hl, $dc4c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $c0
    jr nc, jr_057_7970

    cp $40
    jr nc, jr_057_796f

    inc b
    inc b
    ld a, $02
    jr jr_057_7970

jr_057_796f:
    inc b

jr_057_7970:
    ld a, [$db88]
    ld hl, $dd03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]

jr_057_797d:
    ld a, c
    or a
    jr z, jr_057_7988

    ld a, $1b
    add b
    ld b, a
    dec c
    jr jr_057_797d

jr_057_7988:
    add b
    ld hl, $7997
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$db53], a
    ret


    add hl, de
    add hl, de
    add hl, de
    inc d
    inc d
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc d
    rrca
    ld a, [bc]
    inc d
    inc d
    inc d
    inc d
    rrca
    inc d
    dec b
    rrca
    ld a, [bc]
    inc d
    ld a, [bc]
    ld a, [bc]
    inc d
    dec b
    dec b
    inc d
    ld a, [bc]
    dec b
    inc d
    dec b
    ld a, [bc]
    rrca
    ld a, [bc]
    dec b
    add hl, de
    inc d
    add hl, de
    add hl, de
    rrca
    inc d
    inc d
    inc d
    ld a, [bc]
    add hl, de
    rrca
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    add hl, de
    rrca
    dec b
    inc d
    dec b
    dec b
    inc d
    dec b
    ld a, [bc]
    dec b
    rrca
    dec b
    add hl, de
    inc d
    add hl, de
    add hl, de
    inc d
    inc d
    inc d
    ld a, [bc]
    ld a, [bc]
    add hl, de
    inc d
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    add hl, de
    dec b
    inc d
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    dec b
    dec b
    dec b
    add hl, de
    rrca
    ld a, [bc]
    add hl, de
    inc d
    ld a, [bc]
    dec b
    dec b
    dec b
    add hl, de
    inc d
    rrca
    inc d
    inc d
    add hl, de
    inc d
    add hl, de
    dec b

Call_057_7a03:
    ld a, [$db88]
    ld hl, $dc23
    call Call_057_45ea
    ld b, [hl]
    srl b
    srl b
    ld a, b
    ld [$db4e], a
    ret


Call_057_7a16:
    ld a, [$db88]
    ld hl, $dc23
    call Call_057_45ea
    ld a, [hl]
    cp $20
    jr c, jr_057_7a38

    cp $40
    jr c, jr_057_7a3c

    cp $60
    jr c, jr_057_7a40

    cp $90
    jr c, jr_057_7a44

    cp $c0
    jr c, jr_057_7a48

    ld b, $0f
    jr jr_057_7a4a

jr_057_7a38:
    ld b, $05
    jr jr_057_7a4a

jr_057_7a3c:
    ld b, $07
    jr jr_057_7a4a

jr_057_7a40:
    ld b, $09
    jr jr_057_7a4a

jr_057_7a44:
    ld b, $0b
    jr jr_057_7a4a

jr_057_7a48:
    ld b, $0d

jr_057_7a4a:
    call Call_057_7f2c
    ld a, [$c899]
    and $3f

jr_057_7a52:
    cp b
    jr c, jr_057_7a59

    sub b
    jr nz, jr_057_7a52

    ld a, b

jr_057_7a59:
    ld [$db4f], a
    ret


Call_057_7a5d:
    ld a, [$db88]
    add a
    ld hl, $dc23
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_057_7a8e

    cp $15
    jr c, jr_057_7a8e

    cp $f0
    jr nc, jr_057_7a91

    ld a, [$db4e]
    ld b, a
    ld a, [$db4f]
    add b
    ld b, a
    ld a, [$db4c]
    ld c, a
    ld a, [$db4d]
    add c
    ld c, a
    ld a, [$db53]
    add c
    sub b
    ret


jr_057_7a8e:
    scf
    ccf
    ret


jr_057_7a91:
    scf
    ret


Call_057_7a93:
    push bc
    push af
    call Call_057_7f2c
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    pop af
    call Call_000_1e0d
    pop bc
    ret


Call_057_7aa6:
    ld a, [$db4c]
    ld h, a
    ld a, e
    or a
    jr z, jr_057_7ab8

    cp $01
    jr z, jr_057_7abc

    cp $02
    jr z, jr_057_7ac0

    ld a, h
    ret


jr_057_7ab8:
    ld a, h
    rlca
    rlca
    ret


jr_057_7abc:
    ld a, h
    swap a
    ret


jr_057_7ac0:
    ld a, h
    rrca
    rrca
    ret


Call_057_7ac4:
    push bc
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or a
    jr nz, jr_057_7aef

    ld a, l
    rrca
    rrca
    and $3f
    or a
    jr z, jr_057_7aeb

    ld l, a
    jr jr_057_7af7

jr_057_7aeb:
    ld l, $01
    jr jr_057_7afb

jr_057_7aef:
    sra h
    rr l
    sra h
    rr l

jr_057_7af7:
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc

jr_057_7afb:
    pop bc
    call Call_000_2f45
    pop bc
    ret


Call_057_7b01:
    push bc
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or a
    jr nz, jr_057_7b2b

    ld a, l
    rrca
    and $7f
    or a
    jr z, jr_057_7b27

    ld l, a
    jr jr_057_7b2f

jr_057_7b27:
    ld l, $01
    jr jr_057_7b2f

jr_057_7b2b:
    sra h
    rr l

jr_057_7b2f:
    pop bc
    call Call_000_2f45
    pop bc
    ret


Call_057_7b35:
    push bc
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    push bc
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0004
    call Call_000_2f4b
    pop bc
    call Call_000_2f45
    pop bc
    ret


Call_057_7b59:
    push bc
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    ld a, [hl+]
    ld b, [hl]

Call_057_7b64:
    ld c, a
    push bc
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $000a
    call Call_000_2f4b
    pop bc
    call Call_000_2f45
    pop bc
    ret


Call_057_7b7d:
    ld a, c
    ld hl, $dc65
    swap a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, $08

jr_057_7b8b:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_7ba4

    cp $5c
    jr c, jr_057_7ba0

    cp $64
    jr c, jr_057_7ba8

    cp $6a
    jr c, jr_057_7ba0

    cp $6e
    jr c, jr_057_7ba8

jr_057_7ba0:
    inc hl
    dec d
    jr nz, jr_057_7b8b

jr_057_7ba4:
    ld a, $01
    or a
    ret


jr_057_7ba8:
    xor a
    ret


    cp $03
    jr nc, jr_057_7bbc

    push hl
    ld hl, $cac2
    call Call_000_2229
    ld e, l
    ld d, h
    pop hl
    call Call_000_0c80
    ret


jr_057_7bbc:
    push af
    ld [$db60], a
    push hl
    ld hl, $dc3c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld l, a
    ld h, $05
    pop de
    ld a, e
    ld [$db5e], a
    ld a, d
    ld [$db5f], a
    call Call_000_097a
    pop af
    ld hl, $5104
    rst $10
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$db88]
    ld hl, $db05
    call Call_000_2f6c
    ld a, [hl]
    and $c0
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, [hl]
    and $0c
    jr z, jr_057_7c0f

    cp $04
    jr z, jr_057_7c0b

    cp $08
    jr z, jr_057_7c07

    ld b, $60
    jr jr_057_7c11

jr_057_7c07:
    ld b, $a0
    jr jr_057_7c11

jr_057_7c0b:
    ld b, $e0
    jr jr_057_7c11

jr_057_7c0f:
    ld b, $ff

jr_057_7c11:
    ld a, [$c899]
    cp b
    jr z, jr_057_7c33

    jr c, jr_057_7c33

    ld a, [hl]
    and $f3
    ld b, a
    ld a, [hl]
    and $0c
    dec a
    push bc
    push af
    pop bc
    bit 5, c
    pop bc
    jr nz, jr_057_7c2d

    and $0c
    jr jr_057_7c2e

jr_057_7c2d:
    xor a

jr_057_7c2e:
    or b
    ld [hl], a
    ld a, $0f
    ret


jr_057_7c33:
    ld a, [hl]
    and $73
    ld [hl], a
    ld a, [$db88]
    ld [$db89], a
    ld hl, $5004
    rst $10
    ld a, $db
    ret


    ld a, [$db88]
    ld hl, $db08
    call Call_000_2f6c
    bit 0, [hl]
    jr nz, jr_057_7c52

    ret


jr_057_7c52:
    ld a, [$db8a]
    cp $52
    jr z, jr_057_7c62

    cp $53
    jr z, jr_057_7c62

    cp $ab
    jr z, jr_057_7c66

    ret


jr_057_7c62:
    ld a, $03
    jr jr_057_7c68

jr_057_7c66:
    ld a, $08

jr_057_7c68:
    ld [$dd6d], a
    res 0, [hl]
    ret


Call_057_7c6e:
    ld a, [$db88]
    ld hl, $dd0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $02
    ret


Call_057_7c7e:
    ld a, [$db8a]
    cp $3b
    jr z, jr_057_7cb3

    cp $3d
    jr z, jr_057_7cb3

    cp $42
    jr z, jr_057_7cb3

    cp $44
    jr c, jr_057_7cb1

    cp $4f
    jr z, jr_057_7cb1

    cp $52
    jr c, jr_057_7cb3

    cp $55
    jr c, jr_057_7cb1

    cp $58
    jr c, jr_057_7cb3

    cp $67
    jr c, jr_057_7cb1

    cp $6a
    jr c, jr_057_7cb3

    cp $d6
    jr c, jr_057_7cb1

    cp $d9
    jr c, jr_057_7cb3

jr_057_7cb1:
    xor a
    ret


jr_057_7cb3:
    scf
    ret


Call_057_7cb5:
    ld a, [$db8a]
    cp $3b
    jr z, jr_057_7cde

    cp $3d
    jr z, jr_057_7cde

    cp $3f
    jr z, jr_057_7cde

    cp $40
    jr z, jr_057_7cde

    cp $42
    jr z, jr_057_7cde

    cp $50
    jr z, jr_057_7cde

    cp $51
    jr z, jr_057_7cde

    cp $55
    jr c, jr_057_7cdc

    cp $58
    jr c, jr_057_7cde

jr_057_7cdc:
    xor a
    ret


jr_057_7cde:
    scf
    ret


Call_057_7ce0:
    ld a, [$db8a]
    cp $14
    jr c, jr_057_7cfd

    cp $4f
    jr z, jr_057_7cfd

    cp $52
    jr z, jr_057_7cfd

    cp $53
    jr z, jr_057_7cfd

    cp $58
    jr c, jr_057_7cfb

    cp $66
    jr c, jr_057_7cfd

jr_057_7cfb:
    xor a
    ret


jr_057_7cfd:
    scf
    ret


Call_057_7cff:
    ld a, [$db88]
    ld hl, $dba3
    call Call_057_4567
    ld b, h
    ld c, l
    add hl, bc
    add hl, bc
    push hl
    ld a, [$db88]
    ld hl, $dbb3
    call Call_057_4567
    add hl, hl
    pop bc
    call Call_000_2f45
    ret


    ret


Call_057_7d1d:
    ld a, [$db88]
    ld hl, $dbd3
    call Call_057_45ea
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    srl b
    rr c
    ld a, [$db88]
    call Call_000_2fef
    call Call_000_2f45
    ret


Call_057_7d37:
    ld a, [$db88]
    ld hl, $dbb3
    call Call_057_45ea
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$db88]
    call Call_000_2fe1
    call Call_000_2f45
    ret


Call_057_7d4d:
    call Call_057_7d73
    xor a
    ld [$db54], a

Call_057_7d54:
    ld hl, $db55
    inc [hl]
    ld a, c
    ld [$db89], a
    ld a, d
    ld [$db4c], a
    push de
    push bc
    ld hl, $5206
    rst $10
    pop bc
    pop de
    call Call_057_7aa6
    and $03
    ld hl, $db54
    add [hl]
    ld [hl], a
    ret


Call_057_7d73:
    ld a, [$db8a]
    ld [$db4c], a
    ld a, $00
    ld [$db4d], a
    ld a, $05
    ld [$db4e], a
    ld hl, $5400
    rst $10
    ld a, [$db4c]
    and $03
    ld e, a
    ld a, [$db4c]
    rrca
    rrca
    and $0f
    ld d, a
    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    xor a
    ld [$db55], a
    ret


Call_057_7da4:
    ld hl, $db55
    inc [hl]
    ld a, c
    ld [$db89], a
    ld a, d
    ld [$db4c], a
    push de
    push bc
    ld hl, $5206
    rst $10
    pop bc
    pop de
    call Call_057_7aa6
    and $03
    ret


Call_057_7dbe:
    ld a, [$db88]
    and $04
    xor $04

Call_057_7dc5:
    ld c, a
    ld b, $03
    ld de, $0000
    ld a, e
    ld [$db56], a
    ld a, d
    ld [$db57], a

jr_057_7dd3:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_7deb

    ld a, c
    ld hl, $dbf3
    call Call_057_45ea
    ld a, [$db56]
    add [hl]
    ld [hl+], a
    ld a, [$db57]
    adc [hl]
    ld [hl], a
    inc d

jr_057_7deb:
    inc c
    dec b
    jr nz, jr_057_7dd3

    ld a, d
    cp $01
    ret z

    cp $02
    jr z, jr_057_7e0b

    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    call Call_000_1e0d
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


jr_057_7e0b:
    ld a, [$db56]
    ld l, a
    ld a, [$db57]
    ld h, a
    sra h
    rr l
    ld a, l
    ld [$db56], a
    ld a, h
    ld [$db57], a
    ret


    ld a, [$db88]
    and $04
    xor $04
    ld c, a
    ld b, $03
    ld de, $0000
    ld a, e
    ld [$db58], a
    ld a, d
    ld [$db59], a

jr_057_7e35:
    ld a, c
    call Call_000_2fa5
    jr c, jr_057_7e4d

    ld a, c
    ld hl, $dbf3
    call Call_057_45ea
    ld a, [$db58]
    add [hl]
    ld [hl+], a
    ld a, [$db59]
    adc [hl]
    ld [hl], a
    inc d

jr_057_7e4d:
    inc c
    dec b
    jr nz, jr_057_7e35

    ld a, d
    cp $01
    ret z

    cp $02
    jr z, jr_057_7e6d

    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    call Call_000_1e0d
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ret


jr_057_7e6d:
    ld a, [$db58]
    ld l, a
    ld a, [$db59]
    ld h, a
    sra h
    rr l
    ld a, l
    ld [$db58], a
    ld a, h
    ld [$db59], a
    ret


Call_057_7e82:
    ld hl, $c180
    ld a, l
    ld [$db4e], a
    ld a, h
    ld [$db4f], a
    ld a, [$db88]
    call Call_057_6d09
    ret


Call_057_7e94:
    push bc
    push hl
    ld hl, $dc65
    call Call_057_7fca
    ld b, $08

jr_057_7e9e:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_7eb7

    cp $3a
    jr c, jr_057_7ebb

    cp $d5
    jr z, jr_057_7ebb

    cp $da
    jr z, jr_057_7ebb

    cp $dc
    jr z, jr_057_7ebb

    inc hl
    dec b
    jr nz, jr_057_7e9e

jr_057_7eb7:
    pop hl
    pop bc
    scf
    ret


jr_057_7ebb:
    pop hl
    pop bc
    xor a
    or a
    ret


Call_057_7ec0:
    push bc
    push hl
    ld hl, $dc65
    call Call_057_7fca
    ld b, $08

jr_057_7eca:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_7eeb

    cp $43
    jr z, jr_057_7eef

    cp $5c
    jr c, jr_057_7ee7

    cp $64
    jr c, jr_057_7eef

    cp $6a
    jr c, jr_057_7ee7

    cp $6e
    jr c, jr_057_7eef

    cp $8f
    jr z, jr_057_7eef

jr_057_7ee7:
    inc hl
    dec b
    jr nz, jr_057_7eca

jr_057_7eeb:
    pop hl
    pop bc
    scf
    ret


jr_057_7eef:
    pop hl
    pop bc
    xor a
    or a
    ret


Call_057_7ef4:
    push bc
    push hl
    ld hl, $dc65
    call Call_057_7fca
    ld b, $08

jr_057_7efe:
    ld a, [hl+]
    cp $ff
    jr z, jr_057_7f23

    cp $6e
    jr z, jr_057_7f27

    cp $71
    jr z, jr_057_7f27

    cp $75
    jr c, jr_057_7f1f

    cp $79
    jr c, jr_057_7f27

    cp $91
    jr z, jr_057_7f27

    cp $94
    jr z, jr_057_7f27

    cp $96
    jr z, jr_057_7f27

jr_057_7f1f:
    inc hl
    dec b
    jr nz, jr_057_7efe

jr_057_7f23:
    pop hl
    pop bc
    scf
    ret


jr_057_7f27:
    pop hl
    pop bc
    xor a
    or a
    ret


Call_057_7f2c:
    push bc
    ld a, [$c86c]
    or a
    jr nz, jr_057_7f38

    call Call_000_12d0
    jr jr_057_7f5d

jr_057_7f38:
    push hl
    ld a, [$c1ed]
    ld l, a
    ld a, [$c1ee]
    ld h, a
    ld a, l
    ld [$c899], a
    ld a, h
    ld [$c89a], a
    call Call_000_12d0
    ld a, [$c899]
    ld l, a
    ld a, [$c89a]
    ld h, a
    ld a, l
    ld [$c1ed], a
    ld a, h
    ld [$c1ee], a
    pop hl

jr_057_7f5d:
    pop bc
    ret


Call_057_7f5f:
    ld hl, $db4c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$db88]
    ld hl, $dc44
    call Call_057_7fc2
    ld [$db4d], a
    cp $3f
    jr c, jr_057_7f7c

    ld a, $01
    ld [$db4c], a

jr_057_7f7c:
    ld a, [$db88]
    ld hl, $dc4c
    call Call_057_7fc2
    ld [$db4e], a
    cp $3f
    jr c, jr_057_7f91

    ld hl, $db4c
    set 1, [hl]

jr_057_7f91:
    ld a, [$db88]
    ld hl, $dc54
    call Call_057_7fc2
    ld [$db4f], a
    cp $3f
    jr c, jr_057_7fa6

    ld hl, $db4c
    set 2, [hl]

jr_057_7fa6:
    ld b, $98
    ld a, [$db4c]
    or a
    ret z

    ld b, $3a
    bit 0, a
    jr z, jr_057_7fbf

    ld a, [$db4d]
    ld hl, $db4e
    cp [hl]
    jr c, jr_057_7fbf

    inc hl
    cp [hl]
    ret nc

jr_057_7fbf:
    ld b, $8d
    ret


Call_057_7fc2:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


Call_057_7fca:
    add a
    add a
    add a
    call Call_057_45ea
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
