; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

    ld d, l
    rra
    ld b, b
    ld h, $40
    dec [hl]
    ld b, b
    inc a
    ld b, b
    ld b, e
    ld b, b
    ld [hl], h
    ld b, a
    sbc e
    ld b, a
    xor a
    ld b, a
    jp $d747


    ld b, a
    db $eb
    ld b, a
    rst $38
    ld b, a
    inc de
    ld c, b
    ld [hl], $49
    ld c, d
    ld c, e
    ld hl, $4070
    call Call_055_404a
    ret


    ld a, [$db89]
    and $03
    cp $03
    ret nz

    ld hl, $4074
    call Call_055_404a
    ret


    ld hl, $4078
    call Call_055_404a
    ret


    ld hl, $407c
    call Call_055_404a
    ret


    ld hl, $4080
    call Call_055_404a
    ret


Call_055_404a:
    ld a, [$c863]
    and $02
    ld b, a
    ld a, [$db88]
    and $04
    srl a
    xor b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$db8a]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    call Call_000_1b2c
    ret


    add h
    ld b, b
    ld h, d
    ld b, c
    ld b, b
    ld b, d
    ld e, $43
    db $fc
    ld b, e
    jp c, $b844

    ld b, l
    cp b
    ld b, l
    sub [hl]
    ld b, [hl]
    sub [hl]
    ld b, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    ld h, a
    ld h, l
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rst $38
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld h, a
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
    ld h, a
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
    rst $38
    rst $38
    ld h, l
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    rst $38
    rst $38
    rst $38
    ld h, a
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    rst $38
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    rst $38
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld l, e
    ld l, e
    ld h, l
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    rst $38
    rst $38
    rst $38
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    rst $38
    rst $38
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    rst $38
    ld l, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, e
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    rst $38
    ld l, e
    ld l, e
    ld l, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, e
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
    rst $38
    rst $38
    ld h, l
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld h, l
    ld l, l
    ld h, l
    ld l, e
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
    ld [hl], e
    ld [hl], e
    ld [hl], d
    add h
    ld [hl], e
    ld [hl], d
    rst $38
    ld [hl], d
    ld [hl], d
    rst $38
    rst $38
    ld [hl], d
    ld [hl], d
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
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    rst $38
    add h
    rst $38
    rst $38
    ld [hl], d
    ld [hl], d
    rst $38
    ld [hl], e
    ld [hl], e
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
    ld [hl], d
    ld [hl], d
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
    ld [hl], e
    ld [hl], d
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
    add d
    ld a, [hl]
    rst $38
    ld a, b
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
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
    ld [hl], c
    ld [hl], c
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    add [hl]
    add [hl]
    add l
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
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
    ld [hl], c
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
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
    rst $38

Jump_055_43c3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add l
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
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
    add d
    ld a, [hl]
    rst $38
    ld a, b
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    add l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    sbc h
    sbc h
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
    ld [hl], c
    ld [hl], c
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    add [hl]
    add [hl]
    add l
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    rst $38
    ld [hl], b
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
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    sbc h
    rst $38
    ld [hl], c
    rst $38
    ld [hl], d
    rst $38
    add l
    ld l, h
    rst $38
    rst $38
    ld [hl], b
    ld l, h
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
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
    ld l, h
    ld l, h
    rst $38
    ld l, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    add l
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    sbc h
    sbc h
    rst $38
    ld [hl], e
    ld [hl], e
    ld [hl], d
    add h
    rst $38
    rst $38
    rst $38
    ld [hl], d
    ld [hl], d
    rst $38
    rst $38
    ld [hl], d
    ld [hl], d
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
    ld l, h
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    sbc h
    add h
    rst $38
    rst $38
    ld [hl], d
    rst $38
    rst $38
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rst $38
    rst $38
    ld [hl], b
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
    ld [hl], e
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    ld [hl], c
    ld [hl], e
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    rst $38
    rst $38
    ld l, h
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
    ld l, h
    ld l, h
    rst $38
    ld l, h
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl], e
    rst $38
    rst $38
    ld l, h
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
    ld l, a
    ld l, a
    rst $38
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rst $38
    ld l, a
    ld l, a
    ld l, a
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
    ld l, a
    ld l, a
    ld l, a
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
    ld l, a
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
    ld l, a
    ld l, a
    ld l, a
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
    ld l, a
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
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rst $38
    rst $38
    rst $38
    ld l, a
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
    ld l, h
    ld l, h
    rst $38
    ld l, h
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
    rst $38
    ld [hl], e
    ld [hl], e
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
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $97c0
    ld de, $0601
    ld a, $01
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ld hl, $8800
    ld de, $0c01
    ld a, $09
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8850
    ld de, $1801
    ld a, $03
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8800
    ld de, $0501
    ld a, $04
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8800
    ld de, $0501
    ld a, $05
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8850
    ld de, $0601
    ld a, $06
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8800
    ld de, $0b01
    ld a, $02
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8860
    ld de, $0201
    ld a, $07
    ld [$c823], a
    ld a, $03
    ld [$c822], a
    call Call_055_4823
    ret


    ld hl, $8820
    ld de, $0701
    ld a, $0a
    ld [$c823], a
    ld a, $03
    ld [$c822], a

Call_055_4823:
    ld a, [$c827]
    ld c, a
    ld a, [$c828]
    ld b, a
    push bc
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    push bc
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    call Call_055_4863
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h

jr_055_484f:
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


    ret nz

    sub [hl]
    ret nz

    sub a
    nop
    adc b
    ld d, b
    adc b

Call_055_4863:
    ld de, $48a9
    call Call_055_486d
    call Call_000_0609
    ret


Call_055_486d:
    push de
    ld a, [$c827]
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    pop de
    call Call_055_4924
    ld a, e
    ld [$c82d], a
    ld a, d
    ld [$c82e], a
    ld a, e
    ld [$c831], a
    ld a, d
    ld [$c832], a
    ld a, $01
    ld [$c825], a
    ld a, $00
    ld [$c826], a
    xor a
    ld [$c839], a
    ret


    cp a
    ld c, b
    add $48
    bit 1, b
    pop de
    ld c, b
    and $48
    db $ec
    ld c, b
    db $f4
    ld c, b
    ld a, [$fd48]
    ld c, b
    dec c
    ld c, c
    ld a, [de]
    ld c, c
    inc sp
    jr c, jr_055_484f

    dec hl
    adc l
    ld d, b
    ldh a, [$33]
    dec [hl]
    jr c, jr_055_48fb

    ldh a, [rNR50]
    cpl
    ld l, $27
    ld [hl], $f0
    add hl, hl
    inc l
    ld a, [hl+]
    dec hl
    scf
    jr z, @+$32

    ld [hl], $35
    jr c, @+$33

    ld [hl-], a
    inc h
    inc sp
    cpl
    dec sp
    daa
    ld h, $63
    ld l, $f0
    inc h
    cpl
    ld l, $27

jr_055_48ea:
    ld [hl], $f0
    inc l
    adc l
    ld a, [hl-]
    ld d, l
    add hl, hl
    jr nc, @-$71

    ldh a, [$3a]
    dec hl
    ld [hl-], a
    add hl, hl
    jr z, jr_055_48ea

    ld a, [hl-]

jr_055_48fb:
    ld [hl-], a
    ldh a, [$33]
    add hl, hl
    ld h, $38
    adc l
    dec hl
    adc l
    ld l, $2b
    ld sp, $3a55
    inc l
    adc l
    ld d, b
    ldh a, [rNR50]
    cpl
    ld l, $27
    ld [hl], $29
    inc l
    ld a, [hl+]
    dec hl
    scf
    jr z, @+$32

    ldh a, [$3a]
    dec hl
    ld [hl-], a
    inc l
    ld sp, $3229
    ld [hl-], a
    ld l, $f0

Call_055_4924:
    ld a, [$4000]
    ld [$c824], a
    ld a, [$c823]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    ld hl, $9000
    ld de, $1007
    call Call_000_098f
    ld hl, $1709
    rst $10
    ld hl, $170a
    rst $10
    ld hl, $1708
    rst $10
    ld hl, wDebug_main_menu_option
    ld bc, $0010
    ld a, $00
    call Call_000_12c7
    xor a
    ld [wMenu_selection], a
    call Call_055_496c
    ld a, $00
    call Call_000_1ae1
    ld a, $03
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


Call_055_496c:
    ld a, [$c88b]
    rst $00
    ld a, h
    ld c, c
    sbc [hl]
    ld c, c
    ld [c], a
    ld c, c
    ld c, a
    ld c, d
    sbc [hl]
    ld c, d
    bit 1, d
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $8800
    ld a, $03
    ld [$c823], a
    call Call_055_4b22
    ld hl, $98a3
    ld bc, $1002
    ld a, $80			;load the ID of the first tile of "[ DEBUG MODE SELECT ]" into a
    jp Jump_055_4b33		;call the function that draws tiles to vram. It increments the tile number and vram address to draw the debug menu.


    xor a
    ld [$c822], a
    ld a, $05
    ld [$c823], a
    ld hl, $4102
    rst $10
    ld hl, $9120
    ld de, $1006
    ld a, $07
    ld [$c823], a
    call Call_055_4b1a
    ld hl, $8800
    ld a, $08
    ld [$c823], a
    call Call_055_4b22
    ld hl, wDebug_main_menu_option
    ld a, [$c8ad]
    ld [hl+], a
    ld a, [$c8ae]
    ld [hl+], a
    ld a, [$c8af]
    ld [hl+], a
    ld a, [$c8b0]
    ld [hl+], a
    ld hl, $9884
    ld bc, $1006
    ld a, $12
    jp Jump_055_4b33


    xor a
    ld [$c822], a
    ld a, $05
    ld [$c823], a
    ld hl, $4102
    rst $10
    ld de, $2f11
    ld hl, $8800
    call Call_000_14cf
    ld hl, $9800
    ld bc, $0400
    ld a, $00
    call Call_000_12c7
    ld hl, $9887
    ld a, $80
    ld b, $06
    call Call_055_4a47
    ld hl, $98a7
    ld b, $06
    call Call_055_4a47
    ld hl, $98c7
    ld b, $06
    call Call_055_4a47
    ld hl, $98e7
    ld b, $06
    call Call_055_4a47
    ld hl, $9907
    ld b, $06
    call Call_055_4a47
    ld hl, $9927
    ld b, $06
    call Call_055_4a47
    ld hl, $9967
    ld a, $a4
    ld b, $09
    call Call_055_4a47
    xor a
    ld [wMenu_selection], a
    call Call_055_4d44
    ret


Call_055_4a47:
jr_055_4a47:
    call Write_gfx_tile_and_inc_HL
    inc a
    dec b
    jr nz, jr_055_4a47

    ret


    xor a
    ld [$c822], a
    ld a, $05
    ld [$c823], a
    ld hl, $4102
    rst $10
    ld hl, $9120
    ld de, $0a0a
    ld a, $04
    ld [$c823], a
    call Call_055_4b1a
    ld hl, wDebug_main_menu_option
    ld a, [$c969]
    ld [hl+], a
    ld a, [$c968]
    ld [hl+], a
    ld a, [$ca8d]
    ld [hl+], a
    ld a, [$ca8e]
    ld [hl+], a
    ld a, [$ca8f]
    ld [hl+], a
    ld a, [$ca90]
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c8ab]
    ld [hl], a
    ld a, $1c
    ldh [$b7], a
    ld hl, $9885
    ld bc, $0a0a
    ld a, $12
    call Call_055_4b33
    jp Jump_055_4ed3


    xor a
    ld [$c822], a
    ld a, $05
    ld [$c823], a
    ld hl, $4102
    rst $10
    ld hl, $9120
    ld de, $1006
    ld a, $06
    ld [$c823], a
    call Call_055_4b1a
    xor a
    ld [wDebug_main_menu_option], a
    ld [$c0a1], a
    ld hl, $9884
    ld bc, $1006
    ld a, $12
    jp Jump_055_4b33


    xor a
    ld [$c822], a
    ld a, $05
    ld [$c823], a
    ld hl, $4102
    rst $10
    ld hl, $9120
    ld de, $0a0a
    ld a, $09
    ld [$c823], a
    call Call_055_4b1a
    ld hl, wDebug_main_menu_option
    ld a, [$da02]
    ld [hl+], a
    ld a, [$da03]
    ld [hl+], a
    ld a, [$da04]
    ld [hl+], a
    ld a, [$da05]
    ld [hl+], a
    ld a, [$da06]
    ld [hl+], a
    ld a, [$da07]
    ld [hl+], a
    ld a, [$da08]
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $24
    ldh [$b7], a
    ld hl, $9885
    ld bc, $0a0a
    ld a, $12
    call Call_055_4b33
    jp Jump_055_5232


Call_055_4b1a:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a

Call_055_4b22:
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    xor a
    ld [$c822], a
    ld hl, $4102
    rst $10
    ret


Call_055_4b33:
Jump_055_4b33:
jr_055_4b33:
    push hl
    ld d, b

jr_055_4b35:
    ld [hl+], a			     	;load tile ID into vram. 
    inc a
    dec b
    jr nz, jr_055_4b35

    ld b, d
    ld e, a
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    dec c
    jr nz, jr_055_4b33

    ret


    ld a, [wJoypad_current_frame]
    bit 2, a				
    jr z, jr_055_4b72			;if select was not pressed, jump over next code block

    xor a				;if select was pressed, rest a and put it in a bunch of addresses. 
    ld [$df0b], a
    ld [$df0c], a
    ld [$df02], a
    ld [$df03], a
    ld [$df00], a
    ld [$df01], a
    ld a, $0b
    ld [wGameMode], a			;load B into the current menu type (message debugger)
    xor a				;reset a
    ld [$c88b], a			;use a to reset current debug menu page (page 1)
    ld hl, $c88e			
    inc [hl]				;inc c88e to initiate the screen fade and change.
    reti				;ret and enable interrupts. 


jr_055_4b72:
    ld a, [$c88b]		;load current debug menu ID into a
    rst $00
    ;DATA BETWEEN COMMENTS IS NOT VALID CODE
    add d
    ld c, e
    db $f4
    ld c, e
    ld [bc], a
    ld c, l
    and h
    ld c, l
    and b
    ld c, a
    ld d, $51
    ;START OF DEBUG MENU DRAW FUNCTION. NO JUMP TO IT.
    ld a, [wJoypad_Current]		;poll joypad 
    and $90
    jr z, .check_up_and_left

    ld a, [wDebug_main_menu_option]
    inc a
    cp $06
    jr nz, jr_055_4ba6

    ld a, $00
    jr jr_055_4ba6

.check_up_and_left:
    ld a, [wJoypad_Current]
    and $60
    jr z, Prep_Debug_Menu_OAM_tile_ID

    ld a, [wDebug_main_menu_option]
    dec a
    cp $ff
    jr nz, jr_055_4ba6

    ld a, $05

jr_055_4ba6:
    ld [wDebug_main_menu_option], a
    ld a, $59
    call Call_000_1b2c

Prep_Debug_Menu_OAM_tile_ID:
    ld a, [wDebug_main_menu_option]
    swap a
    add $a0
    ld hl, $9922
    ld b, $10			;load number of tiles in debug menu text string into b

.OAM_draw_loop:
    call Write_gfx_tile_and_inc_HL
    inc a			;increase tile ID
    dec b			;decrease number of tiles left to draw
    jr nz, .OAM_draw_loop

    ld a, [wJoypad_current_frame]		;check pressed button (single frame)
    and $01			;check is A is pressed
    ret z			;if not, return

    ld a, $59			;if so, load $59 into a and jump to that thing I don't know what it does that doesn't have a $59 as a switch case. 
    call Call_000_1b2c
    ld a, [wDebug_main_menu_option]
    cp $05			;compares debug main menu option to "-  RETURN  -"
    jr z, jr_055_4bdc		;if A was pressed on this option, jump to 4bdc below

    inc a			;
    ld [$c88b], a		;c88b is the current debug menu ID
    ld hl, $c88e		;when c88e is incremented, the screen fades and loads the menu with the ID stored in c88b
    inc [hl]	
    ret


jr_055_4bdc:			;Likely inits data for the title screen 
    ld hl, wGameMode
    ld a, [$c8ad]
    ld [hl+], a
    ld a, [$c8ae]
    ld [hl+], a
    ld a, [$c8af]
    ld [hl+], a
    ld a, [$c8b0]
    ld [hl], a
    ld hl, $c88e
    inc [hl]
    ret

    ;ONCE IN THE GOTO PROGRAM MENU
    ld a, [wJoypad_current_frame]
    and $08				;checks if start is pressed
    jr z, jr_055_4c52			;if no, skip next code block and check other buttons. 

    ld a, $59				
    call Call_000_1b2c
    call Call_000_12d0
    ld a, [$c899]			;possible RNG? Otherwise just some timer. 
    inc a
    ld [$da03], a
    call Call_000_12d0
    ld a, [$c899]
    inc a
    ld [$da05], a
    call Call_000_12d0
    ld a, [$c899]
    inc a
    ld [$da07], a
    call Call_000_12d0
    ld a, [$c899]
    ld b, a
    ld a, $03
    call Call_000_1dfb
    ld [$da02], a
    ld a, $04
    call Call_000_1688
    ld hl, wDebug_main_menu_option
    ld a, [hl+]
    ld [wGameMode], a
    ld a, [hl+]
    ld [$c88b], a
    ld a, [hl+]
    ld [$c88c], a
    ld a, [hl+]
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]
    xor a
    ld [wGameState], a
    xor a
    ld [$c8ea], a
    ret


jr_055_4c52:
    ld a, [wJoypad_Current]
    bit 6, a			;check if up is pressed
    jr z, jr_055_4c5f

    ld a, [wMenu_selection]	
    dec a			;move option cursor up
    jr Menu_option_wrap_around

jr_055_4c5f:
    ld a, [wJoypad_Current]
    bit 7, a			;check if down pressed
    jr z, jr_055_4c74

    ld a, [wMenu_selection]
    inc a			;inc menu selection. In this menu, it goes down to the next option. 

Menu_option_wrap_around:
    and $03			;clever way of resetting to 0 (top of the menu) if selection is larger than $03
    ld [wMenu_selection], a
    ld a, $59
    call Call_000_1b2c		;loads a into c8b8. Unknown what this does yet. 

jr_055_4c74:
    ld a, [wMenu_selection]		
    ld c, a
    ld b, $00
    ld hl, wDebug_main_menu_option
    add hl, bc
    ld a, [wJoypad_Current]
    and $10			;check if right was pushed
    jr z, jr_055_4c88		;if not, skip the next code block

    inc [hl]			;if right was pressed, increment the selected menu option 
    jr jr_055_4c9b

jr_055_4c88:
    ld a, [wJoypad_Current]
    and $20			;check if left was pressed
    jr z, jr_055_4c92

    dec [hl]
    jr jr_055_4c9b

jr_055_4c92:
    ld a, [wJoypad_current_frame]
    and $01			;check if A was pressed
    jr z, Return_to_debug_main_menu

    xor a
    ld [hl], a

jr_055_4c9b:
    ld a, $59
    call Call_000_1b2c

Return_to_debug_main_menu:
    ld a, [wJoypad_current_frame]
    and $02			;check if B was pressed
    jr z, jr_055_4cb5

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]
    ret


jr_055_4cb5:
    ld de, wDebug_main_menu_option
    ld hl, $98cd
    ld b, $01
    ld c, $04

jr_055_4cbf:
    push de
    push hl
    push bc
    ld a, [wMenu_selection]
    add c
    cp $04
    jr nz, jr_055_4cda

    ld a, [$c8a4]
    bit 3, a
    jr nz, jr_055_4cda

    xor a
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    jr jr_055_4cde

jr_055_4cda:
    ld a, [de]
    call Call_055_5315

jr_055_4cde:
    pop bc
    pop hl
    pop de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc de
    dec c
    jr nz, jr_055_4cbf

    ld a, [wDebug_main_menu_option]
    add a
    add a
    add a
    add $80
    ld hl, $98c4
    ld b, $08

jr_055_4cfa:
    call Write_gfx_tile_and_inc_HL
    inc a
    dec b
    jr nz, jr_055_4cfa

    ret


    ld hl, $9988
    ld a, [wMenu_selection]
    ld b, $01
    ld c, $00
    call Call_055_5326
    ld a, [wJoypad_current_frame]
    and $02
    jr z, jr_055_4d24

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]
    ret


jr_055_4d24:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_055_4d31

    ld a, [wMenu_selection]
    dec a
    jr jr_055_4d3c

jr_055_4d31:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_055_4da3

    ld a, [wMenu_selection]
    inc a

jr_055_4d3c:
    ld [wMenu_selection], a
    ld a, $59
    call Call_000_1b2c

Call_055_4d44:
    ld a, [wMenu_selection]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $9f
    ld l, a
    ld a, h
    adc $2b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8800
    call Call_000_1577
    ld a, [wMenu_selection]
    ld [$c81e], a		;unknown if this is used by other things, but the debug screen monster id is stored here
    ld a, $04
    ld [$c81f], a
    ld hl, $0087
    ld a, l
    ld [$c820], a
    ld a, h
    ld [$c821], a
    ld hl, $1706
    rst $10
    ld hl, $1708
    rst $10
    ld a, [wMenu_selection]
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld hl, $0901
    ld a, l
    ld [$c829], a
    ld a, h
    ld [$c82a], a
    ld hl, $8a40
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld hl, $5605
    rst $10
    ld hl, $4102
    rst $10

jr_055_4da3:
    ret


    ld a, [wJoypad_current_frame]
    and $08
    jr z, jr_055_4e0a

    ld a, $04
    call Call_000_1688
    ld a, $01
    ld [wGameMode], a
    ld a, $00
    ld [$c88b], a

Jump_055_4dba:
    ld a, $59
    call Call_000_1b2c
    ld hl, wDebug_main_menu_option
    ld a, [hl+]
    ld [$c969], a
    ld a, [hl+]
    ld [$c968], a
    ld a, [hl+]
    ld [$ca8d], a
    ld a, [hl+]
    ld [$ca8e], a
    ld a, [hl+]
    ld [$ca8f], a
    ld a, [hl+]
    ld [$ca90], a
    ld a, [hl+]
    ldh [$d5], a
    ld a, [hl]
    ld [$c8ab], a
    ld a, [$c969]
    ld [$c8ea], a
    ld a, [$c969]
    ld [$c96c], a
    ld a, [$c968]
    ld [$c96d], a
    ld a, [$c969]
    ld [$c96e], a
    xor a
    ld [$c935], a
    ld hl, $c88e
    inc [hl]
    xor a
    ld [wGameState], a
    xor a
    ld [$d8d7], a
    ret


jr_055_4e0a:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_055_4e17

    ld a, [wMenu_selection]
    dec a
    jr jr_055_4e22

jr_055_4e17:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_055_4e2c

    ld a, [wMenu_selection]
    inc a

jr_055_4e22:
    and $07
    ld [wMenu_selection], a
    ld a, $59
    call Call_000_1b2c

jr_055_4e2c:
    ld a, [wMenu_selection]
    ld c, a
    ld b, $00
    ld hl, wDebug_main_menu_option
    add hl, bc
    ld a, [wJoypad_Current]
    and $10
    jr z, jr_055_4e40

    inc [hl]
    jr jr_055_4e53

jr_055_4e40:
    ld a, [wJoypad_Current]
    and $20
    jr z, jr_055_4e4a

    dec [hl]
    jr jr_055_4e53

jr_055_4e4a:
    ld a, [wJoypad_current_frame]
    and $01
    jr z, jr_055_4e85

    xor a
    ld [hl], a

jr_055_4e53:
    ld a, $59
    call Call_000_1b2c
    ld a, [wMenu_selection]
    ld b, $02
    cp $00
    call z, Call_055_4ed3
    ld b, $60
    cp $01
    call z, Call_055_4ed3
    ld b, $04
    cp $02
    call z, Call_055_4ed3
    ld b, $0a
    cp $03
    call z, Call_055_4ed3
    ld b, $0a
    cp $04
    call z, Call_055_4ed3
    ld b, $0a
    cp $05
    call z, Call_055_4ed3

jr_055_4e85:
    ld a, [wJoypad_current_frame]
    and $02
    jr z, jr_055_4e93

    xor a
    ld [$c88b], a
    jp Jump_055_4dba


jr_055_4e93:
    ld de, wDebug_main_menu_option
    ld hl, $98cc
    ld b, $01
    ld c, $08

jr_055_4e9d:
    push de
    push hl
    push bc
    ld a, [wMenu_selection]
    add c
    cp $08
    jr nz, jr_055_4ebb

    ld a, [$c8a4]
    bit 3, a
    jr nz, jr_055_4ebb

    xor a
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    jr jr_055_4ec3

jr_055_4ebb:
    ld a, [de]
    ld b, $01
    ld c, $00
    call Call_055_5366

jr_055_4ec3:
    pop bc
    pop hl
    pop de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc de
    dec c
    jr nz, jr_055_4e9d

    ret


Call_055_4ed3:
Jump_055_4ed3:
    push af
    ld a, [wMenu_selection]
    ld hl, wDebug_main_menu_option
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr nz, jr_055_4ee6

    ld [hl], $00

jr_055_4ee6:
    ld a, [hl]
    cp $ff
    jr nz, jr_055_4eed

    dec b
    ld [hl], b

jr_055_4eed:
    ld a, [wDebug_main_menu_option]
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $0701
    ld a, l
    ld [$c829], a
    ld a, h
    ld [$c82a], a
    ld hl, $8800
    call Call_055_4f8f
    ld a, [wDebug_main_menu_option]
    cp $00
    jr z, jr_055_4f14

    ld a, $03
    jr jr_055_4f19

jr_055_4f14:
    ld a, [$c0a1]
    add $04

jr_055_4f19:
    ld [$c823], a
    ld a, $01
    ld [$c822], a
    ld hl, $0701
    ld a, l
    ld [$c829], a
    ld a, h
    ld [$c82a], a
    ld hl, $8870
    call Call_055_4f8f
    ld a, $04
    ld [$c822], a
    ld a, [$c0a3]
    ld [$c823], a
    ld hl, $88e0
    call Call_055_4f8f
    ld a, [$c0a4]
    ld [$c823], a
    ld hl, $8950
    call Call_055_4f8f
    ld a, [$c0a5]
    ld [$c823], a
    ld hl, $89c0
    call Call_055_4f8f
    ld hl, $98d0
    ld a, $80
    ld b, $07
    call Call_055_4f87
    ld hl, $98f0
    ld b, $07
    call Call_055_4f87
    ld hl, $9930
    ld b, $07
    call Call_055_4f87
    ld hl, $9950
    ld b, $07
    call Call_055_4f87
    ld hl, $9970
    ld b, $07
    call Call_055_4f87
    pop af
    ret


Call_055_4f87:
jr_055_4f87:
    call Write_gfx_tile_and_inc_HL
    inc a
    dec b
    jr nz, jr_055_4f87

    ret


Call_055_4f8f:
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld hl, $5605
    rst $10
    ld hl, $4102
    rst $10
    ret


    ld a, [wJoypad_current_frame]
    and $08
    jr z, jr_055_4fd2

    ld a, [wMenu_selection]
    or a
    jr nz, jr_055_4fbe

    ld a, [wDebug_main_menu_option]
    ld hl, $50b4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_000_1ae1
    ret


jr_055_4fbe:
    call Call_000_3331
    ld a, [$c0a1]
    ld hl, $50d4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_000_1b2c
    ret


jr_055_4fd2:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_055_4fdf

    ld a, [wMenu_selection]
    dec a
    jr jr_055_4fea

jr_055_4fdf:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_055_4ff4

    ld a, [wMenu_selection]
    inc a

jr_055_4fea:
    and $01
    ld [wMenu_selection], a
    ld a, $59
    call Call_000_1b2c

jr_055_4ff4:
    ld a, [wMenu_selection]
    ld c, a
    ld b, $00
    ld hl, wDebug_main_menu_option
    add hl, bc
    ld a, [wJoypad_Current]
    and $10
    jr z, jr_055_5008

    inc [hl]
    jr jr_055_501b

jr_055_5008:
    ld a, [wJoypad_Current]
    and $20
    jr z, jr_055_5012

    dec [hl]
    jr jr_055_501b

jr_055_5012:
    ld a, [wJoypad_current_frame]
    and $01
    jr z, jr_055_5031

    xor a
    ld [hl], a

jr_055_501b:
    ld a, $59
    call Call_000_1b2c
    ld a, [wMenu_selection]
    ld b, $20
    cp $00
    call z, Call_055_5098
    ld b, $40
    cp $01
    call z, Call_055_5098

jr_055_5031:
    ld a, [wJoypad_current_frame]
    and $02
    jr z, jr_055_5046

    ld a, $59
    call Call_000_1b2c
    xor a
    ld [$c88b], a
    ld hl, $c88e
    inc [hl]
    ret


jr_055_5046:
    ld de, wDebug_main_menu_option
    ld hl, $98ca
    ld b, $01
    ld c, $02

jr_055_5050:
    push de
    push hl
    push bc
    ld a, [wMenu_selection]
    add c
    cp $02
    jr nz, jr_055_506b

    ld a, [$c8a4]
    bit 3, a
    jr nz, jr_055_506b

    xor a
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    jr jr_055_506f

jr_055_506b:
    ld a, [de]
    call Call_055_5315

jr_055_506f:
    pop bc
    push bc
    ld a, c
    ld bc, $50d4
    cp $02
    jr nz, jr_055_507c

    ld bc, $50b4

jr_055_507c:
    ld a, [de]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [bc]
    inc hl
    call Call_055_5315
    pop bc
    pop hl
    pop de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc de
    dec c
    jr nz, jr_055_5050

    ret


Call_055_5098:
    push af
    ld a, [wMenu_selection]
    ld hl, wDebug_main_menu_option
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr nz, jr_055_50ab

    ld [hl], $00

jr_055_50ab:
    ld a, [hl]
    cp $ff
    jr nz, jr_055_50b2

    dec b
    ld [hl], b

jr_055_50b2:
    pop af
    ret


    ld [bc], a
    ld b, $09
    inc c
    rrca
    ld [de], a
    dec d
    jr jr_055_50d8

    ld e, $21
    inc h
    daa
    dec hl
    ld l, $31
    inc [hl]
    scf
    ld a, [hl-]
    inc a
    ccf
    ld b, c
    ld b, h
    ld b, a
    ld c, c
    ld c, e
    ld c, l
    ld c, a
    sbc a
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e

jr_055_50d8:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, a
    ld h, b
    ld h, c
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    db $76
    ld a, b
    ld a, d
    ld a, e
    ld a, h
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    adc b
    adc c
    adc d
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc c
    sbc e
    sbc h
    sbc l
    nop
    nop
    ld a, [wJoypad_current_frame]
    and $08
    jr z, jr_055_5162

    ld a, $04
    call Call_000_1688
    ld a, $02
    ld [wGameMode], a
    ld a, $00
    ld [$c88b], a
    call Call_055_5379
    ld a, [$ca8d]
    or a
    jr nz, jr_055_5139

    ld hl, $ca8d
    inc [hl]

Jump_055_5139:
jr_055_5139:
    ld a, $59
    call Call_000_1b2c
    ld hl, wDebug_main_menu_option
    ld a, [hl+]
    ld [$da02], a
    ld a, [hl+]
    ld [$da03], a
    ld a, [hl+]
    ld [$da04], a
    ld a, [hl+]
    ld [$da05], a
    ld a, [hl+]
    ld [$da06], a
    ld a, [hl+]
    ld [$da07], a
    ld a, [hl+]
    ld [$da08], a
    ld hl, $c88e
    inc [hl]
    ret


jr_055_5162:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_055_516f

    ld a, [wMenu_selection]
    dec a
    jr jr_055_517a

jr_055_516f:
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_055_5184

    ld a, [wMenu_selection]
    inc a

jr_055_517a:
    and $07
    ld [wMenu_selection], a
    ld a, $59
    call Call_000_1b2c

jr_055_5184:
    ld a, [wMenu_selection]
    ld c, a
    ld b, $00
    ld hl, wDebug_main_menu_option
    add hl, bc
    ld a, [wJoypad_Current]
    and $10
    jr z, jr_055_5198

    inc [hl]
    jr jr_055_51ab

jr_055_5198:
    ld a, [wJoypad_Current]
    and $20
    jr z, jr_055_51a2

    dec [hl]
    jr jr_055_51ab

jr_055_51a2:
    ld a, [wJoypad_current_frame]
    and $01
    jr z, jr_055_51e4

    xor a
    ld [hl], a

jr_055_51ab:
    ld a, $59
    call Call_000_1b2c
    ld a, [wMenu_selection]
    ld b, $03
    cp $00
    call z, Call_055_5232
    ld b, $00
    cp $01
    call z, Call_055_5232
    ld b, $02
    cp $02
    call z, Call_055_5232
    ld b, $00
    cp $03
    call z, Call_055_5232
    ld b, $02
    cp $04
    call z, Call_055_5232
    ld b, $00
    cp $05
    call z, Call_055_5232
    ld b, $02
    cp $06
    call z, Call_055_5232

jr_055_51e4:
    ld a, [wJoypad_current_frame]
    and $02
    jr z, jr_055_51f2

    xor a
    ld [$c88b], a
    jp Jump_055_5139


jr_055_51f2:
    ld de, wDebug_main_menu_option
    ld hl, $98cb
    ld b, $01
    ld c, $08

jr_055_51fc:
    push de
    push hl
    push bc
    ld a, [wMenu_selection]
    add c
    cp $08
    jr nz, jr_055_521a

    ld a, [$c8a4]
    bit 3, a
    jr nz, jr_055_521a

    xor a
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile_and_inc_HL
    jr jr_055_5222

jr_055_521a:
    ld a, [de]
    ld b, $01
    ld c, $00
    call Call_055_5366

jr_055_5222:
    pop bc
    pop hl
    pop de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    inc de
    dec c
    jr nz, jr_055_51fc

    ret


Call_055_5232:
Jump_055_5232:
    push af
    ld a, [wMenu_selection]
    ld hl, wDebug_main_menu_option
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr nz, jr_055_5245

    ld [hl], $00

jr_055_5245:
    ld a, [hl]
    cp $ff
    jr nz, jr_055_524c

    dec b
    ld [hl], b

jr_055_524c:
    ld a, [$c0a1]
    ld [$da03], a
    ld a, [$c0a2]
    ld [$da04], a
    ld a, [$c0a3]
    ld [$da05], a
    ld a, [$c0a4]
    ld [$da06], a
    ld a, [$c0a5]
    ld [$da07], a
    ld a, [$c0a6]
    ld [$da08], a
    ld a, [$da03]
    ld l, a
    ld a, [$da04]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1400
    rst $10
    ld hl, $0901
    ld a, l
    ld [$c829], a
    ld a, h
    ld [$c82a], a
    ld a, $05
    ld [$c822], a
    ld a, [$da18]
    ld [$c823], a
    ld hl, $8800
    call Call_055_5304
    ld a, [$da05]
    ld l, a
    ld a, [$da06]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h

Jump_055_52ad:
    ld [$da13], a
    ld hl, $1400
    rst $10
    ld a, [$da18]
    ld [$c823], a
    ld hl, $8890
    call Call_055_5304
    ld a, [$da07]
    ld l, a
    ld a, [$da08]
    ld h, a
    ld a, l
    ld [$da12], a
    ld a, h
    ld [$da13], a
    ld hl, $1400
    rst $10
    ld a, [$da18]
    ld [$c823], a
    ld hl, $8920
    call Call_055_5304
    ld hl, $98ef
    ld a, $80
    ld b, $09
    call Call_055_52fc
    ld hl, $992f
    ld b, $09
    call Call_055_52fc
    ld hl, $996f
    ld b, $09
    call Call_055_52fc
    pop af
    ret


Call_055_52fc:
jr_055_52fc:
    call Write_gfx_tile_and_inc_HL
    inc a
    dec b
    jr nz, jr_055_52fc

    ret


Call_055_5304:
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld hl, $5605
    rst $10
    ld hl, $4102
    rst $10
    ret


Call_055_5315:
    ld c, a
    swap a
    and $0f
    inc a
    call Write_gfx_tile_and_inc_HL
    ld a, c
    and $0f
    inc a
    call Write_gfx_tile_and_inc_HL
    ret


Call_055_5326:
    cp $64
    jr nc, jr_055_5338

    call Call_055_535f
    inc hl
    cp $0a
    jr nc, jr_055_5341

    call Call_055_535f
    inc hl
    jr jr_055_534a

jr_055_5338:
    ld e, $64
    call Call_055_534f
    call Call_055_5357
    inc hl

jr_055_5341:
    ld e, $0a
    call Call_055_534f
    call Call_055_5357
    inc hl

jr_055_534a:
    ld d, a
    call Call_055_5357
    ret


Call_055_534f:
    ld d, $ff

jr_055_5351:
    inc d
    sub e
    jr nc, jr_055_5351

    add e
    ret


Call_055_5357:
    push af
    ld a, d
    add b
    call Write_gfx_tile
    pop af
    ret


Call_055_535f:
    push af
    ld a, c
    call Write_gfx_tile
    pop af
    ret


Call_055_5366:
    inc hl
    push af
    swap a
    and $0f
    ld d, a
    call Call_055_5357
    inc hl
    pop af
    and $0f
    ld d, a
    call Call_055_5357
    ret


Call_055_5379:
    ld a, $6e
    ld [$ca42], a
    ld a, $86
    ld [$ca43], a
    ld a, $9c
    ld [$ca44], a
    ld a, $f0
    ld [$ca45], a
    ld a, $03
    ld [$ca8d], a
    ld a, $00
    ld [$ca8e], a
    ld a, $01
    ld [$ca8f], a
    ld a, $02
    ld [$ca90], a
    ld b, $14
    ld c, $00

jr_055_53a5:
    push bc
    ld a, c
    call Call_055_53f6
    pop bc
    inc c
    dec b
    jr nz, jr_055_53a5

    ld a, $00
    ld [wCurrGoldLo], a
    ld a, $54
    ld [wCurrGoldMid], a
    ld a, $01
    ld [wCurrGoldHi], a
    ld a, $01
    ld [wInventory], a
    ld a, $02
    ld [$ca52], a
    ld a, $03
    ld [$ca53], a
    ld a, $04
    ld [$ca54], a
    ld a, $05
    ld [$ca55], a
    ld a, $06
    ld [$ca56], a
    ld a, $07
    ld [$ca57], a
    ld a, $08
    ld [$ca58], a
    ld a, $02
    ld [$cac1], a
    ld a, $02
    ld [$cb56], a
    ld a, $02
    ld [$cbeb], a
    ret


Call_055_53f6:
    push af
    ld [$da14], a
    call Call_000_12d0
    ld a, [$c899]
    and $3f
    inc a
    ld [$da12], a
    xor a
    ld [$da13], a
    ld hl, $1402
    rst $10
    pop af
    push af
    call Call_000_12d0
    and $7f
    ld [$da31], a
    ld hl, $cad6
    ld c, a
    pop af
    call Call_055_549c
    push af
    pop af
    push af
    call Call_000_12d0
    and $7f
    ld [$da31], a
    ld hl, $cad7
    ld c, a
    pop af
    call Call_055_549c
    push af
    pop af
    push af
    ld hl, $cacb
    call Call_000_223b
    ld a, [hl]
    ld c, a
    pop af
    ld hl, $cac2
    call Call_055_54ac
    push af
    call Call_000_12d0
    ld a, [$c899]
    and $07
    ld c, a
    pop af
    ld hl, $cad8
    call Call_055_54ac
    push af
    call Call_000_12d0
    ld a, [$c899]
    and $07
    ld c, a
    pop af
    ld hl, $cae1
    call Call_055_54ac
    push af
    ld hl, $cad6
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld c, a
    pop af
    ld hl, $cb44
    call Call_055_54ac
    push af
    ld hl, $cad7
    call Call_000_223b
    ld a, [hl]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld c, a
    pop af
    ld hl, $cb4d
    call Call_055_54ac
    ret


Call_055_549c:
    push af
    call Call_000_223b
    ld [hl], c
    pop af
    ret


    push af
    call Call_000_223b
    ld [hl], c
    inc hl
    ld [hl], b
    pop af
    ret


Call_055_54ac:
    push af
    push bc
    call Call_000_223b
    ld e, l
    ld d, h
    call Call_000_12d0
    ld a, [$c899]
    and $0f
    pop bc
    swap c
    or c
    ld l, a
    ld h, $03
    call Call_000_097a
    pop af
    ret


    rst $18
    ld b, $f8
    inc b
    ld hl, sp-$5f
    ld e, d
    ld bc, $814e
    ld e, [hl]
    sub [hl]
    ld [$28b8], sp
    ld de, $4624
    db $db
    ld bc, $8b37
    or b
    ld b, b
    dec l
    call Call_055_6484
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    rst $38
    add h
    nop
    rst $38
    nop
    rst $38
    ld de, $ff00
    rlca
    ld [hl], b
    rlca
    ld [hl], b
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    pop hl
    ld c, $e1
    ld c, $f0
    or $08
    ei
    inc b
    db $fc
    push bc
    or $25
    or $65
    ld [hl], $18
    inc hl
    jr nc, @-$70

    ld [hl], b
    ld [$10e1], sp
    inc bc
    and h
    ld b, $e8
    inc b
    cp d
    ld b, $69
    ld d, [hl]
    xor c
    dec de
    ld h, h
    db $76
    add c
    ldh [$0e], a
    ld b, b
    cp b
    ld b, b
    and e
    jp $c628


    ld sp, $21c6
    add h
    nop
    nop
    inc a
    inc c
    ld d, c
    jr @-$1d

    jr nc, @+$51

    ld [hl], h
    add hl, bc
    ld c, l
    jr nc, jr_055_556e

jr_055_556e:
    or a
    add hl, hl
    ld d, $22
    ld c, c
    jp c, $3c04

    add b
    or b
    ld c, a
    jr nz, @-$3c

    add b
    ld l, e
    cp c
    ld b, h
    adc c
    ld d, h
    ret c

    daa
    nop
    ld sp, hl
    ld d, c
    xor b
    sub e
    ld l, b
    ld [bc], a
    sub l
    rlca
    ld hl, sp-$4f
    ld c, $7d
    ld [bc], a
    ld h, b
    sbc a
    ldh [rNR13], a
    ret nz

    ld [hl+], a
    add b
    ld e, b
    db $10
    and [hl]
    ldh [$f1], a
    inc e
    add b
    ld e, a
    nop
    ld a, a
    ld b, b
    cp [hl]
    ld b, b
    sub b
    nop
    ld [hl], l
    ld bc, $4546
    xor d
    add $39
    inc bc
    cp b
    rlca
    jr jr_055_55e3

    rlca
    jr nz, jr_055_55fd

    jp $8c3c


    ld [hl], e
    ld b, c
    ld a, [hl-]
    ld b, $d9
    ld bc, $83d9
    ld [hl], d
    jr nz, @-$2e

    dec b
    di
    inc bc
    rst $30
    and h
    ld d, l
    nop
    ld b, c
    add b
    ld d, c
    rst $38
    inc e
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    cp e
    add d
    rst $38

jr_055_55e3:
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    cp e
    add d
    rst $38
    ld a, h
    rst $38
    cp $ff
    add d
    rst $38
    sbc h
    ei
    add d
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    ei
    add d
    rst $38

jr_055_55fd:
    db $fc
    rst $38
    ld a, h
    cp e
    add d
    rst $38
    sub d
    ei
    ld [c], a
    rst $38
    ld c, h
    cp a
    sbc $ff
    add d
    rst $38
    cp $30
    nop
    nop
    add c
    nop
    rrca
    ld a, a
    add c
    nop
    rrca
    rst $38
    db $10
    rst $08
    db $10
    rst $38
    db $10
    db $fc
    db $10
    ccf
    inc b
    nop
    add h
    inc bc
    rlca
    ld c, $0d
    ld [$0309], sp
    nop
    add e
    inc bc
    rlca
    dec c
    inc b
    ld a, [bc]
    add [hl]
    rra
    add hl, de
    rst $38
    rst $38
    nop
    rst $38
    inc c
    nop
    add h
    rst $38
    rst $38
    nop
    rst $38
    ld a, [bc]
    add hl, bc
    add d
    inc b
    inc bc
    inc b
    nop
    adc c
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, a
    inc bc
    ld a, [hl]
    cp b
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, a
    xor b
    ld d, a
    xor b
    ld d, a
    ld d, a
    add sp, -$15
    add sp, $77
    xor e
    xor e
    rla
    ld a, [$8747]
    ld a, e
    ld b, a
    ld a, [$9509]
    ld l, l
    push de
    ld c, c
    ld d, [hl]
    xor $d5
    xor l
    ld e, [hl]
    cp [hl]
    ld e, l
    xor l
    sub $5f
    ld e, a
    ld e, [hl]
    ld d, l
    ld c, d
    ld c, d
    ld d, [hl]
    ld l, l
    rst $10
    ld h, d
    ld c, c
    or [hl]
    call Call_000_063e
    ld a, [$0fff]
    rst $30
    adc e
    inc bc
    xor e
    ret


    ld d, a
    cp a
    ld c, a
    rst $30
    add a
    db $db
    ld h, a
    add a
    ei
    db $fd
    ld a, [c]
    ret


    db $fc
    jp nc, $ead2

    call $e5fb
    rst $18
    ld [c], a
    rst $28
    pop hl
    ret nc

    rst $28
    rst $38
    db $ec
    ld d, l
    sub [hl]
    sub [hl]
    ld d, b
    push de
    db $eb
    db $fd
    ld [$5a57], a
    or h
    ld l, h
    ld [$fe75], a
    pop af
    ld c, a
    or d
    add l
    or l
    ld a, d
    db $fd
    ldh a, [$ef]
    ld [hl], d
    xor a
    or d
    xor [hl]
    sub e
    ld l, h
    ld a, e
    or l
    ld a, e
    db $eb
    db $fd
    db $d3
    ld l, d
    xor e
    db $fd
    ld h, d
    rst $18
    ld h, d
    xor $ea
    ld h, [hl]
    db $dd
    dec b
    cp $87
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp $7e
    cp [hl]
    ld a, [hl]
    inc b
    cp $89
    nop
    ld bc, $0502
    dec bc
    rla
    cpl
    ld e, a
    ld a, a
    rlca
    rlca
    sub c
    nop
    rra
    cpl
    ld e, a
    ld a, h
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, a
    ld a, a
    nop
    inc bc
    rst $38
    adc l
    add [hl]
    ld hl, sp-$75
    xor e
    xor b
    ld l, e
    ld l, b
    rst $10
    rrca
    or $5f
    ld e, [hl]
    nop
    inc bc
    rst $38
    adc l
    sub a
    sub a
    ldh a, [rVBK]
    ld b, h
    ld sp, hl
    ld h, $ac
    rrca
    or $2d
    push af
    nop
    inc bc
    rst $38
    adc l
    rst $10
    ld l, e
    sub a
    res 5, e
    daa
    cpl
    rst $18
    rst $38
    rst $08
    ld d, [hl]
    ld l, c
    rlca
    inc bc
    rst $38
    adc l
    rst $30
    add sp, -$12
    ret c

    rst $28
    ret c

    ld_long $ffd9, a
    rrca
    rst $30
    adc e
    ldh [$03], a
    rst $38
    adc l
    ld [hl], a
    xor d
    sub l
    ld d, l
    ld e, c
    and l
    or d
    ld l, l
    ld a, [$eaf5]
    push de
    nop
    inc bc
    rst $38
    adc l
    cp $f1
    ld c, a
    ld [hl], d
    ld b, l
    ld [hl], l
    ld a, [$84fd]
    ld a, a
    add b
    ld a, c
    nop
    inc bc
    rst $38
    adc l
    ld a, e
    and l
    ld e, a
    ld [c], a
    rst $28
    pop hl
    ld d, b
    xor a
    ld [hl], l
    and l
    sub l
    ld d, l
    nop
    inc bc
    rst $38
    sub e
    cp $f1
    ld c, a
    ld [hl], d
    add l
    ld [hl], l
    ld a, [$fd7d]
    or $c9
    ld a, h
    nop
    ld hl, sp-$0c
    ld a, [$be7e]
    ld a, [hl]
    inc bc
    cp $a2
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, l
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, h
    ld e, a
    cpl
    rra
    nop
    rst $30
    ld e, [hl]
    ld e, l
    or $df
    ld l, $95
    ret


    add hl, hl
    dec h
    xor l
    sbc $03
    rst $38
    adc l
    nop
    dec l
    db $ed
    dec [hl]
    adc $ff
    rst $08
    ld d, h
    ld l, e
    ld l, b
    dec bc
    ld d, a
    cp a
    inc bc
    rst $38
    xor l
    nop
    nop
    ld bc, $0f07
    ld a, [de]
    rla
    rra
    rla
    ld e, $3f
    ld a, a
    rst $38
    db $f4
    ld l, e
    jr nc, jr_055_57d1

jr_055_57d1:
    nop
    db $fc
    xor d
    push af
    rst $38
    rst $38
    db $fd
    sbc $ef
    rst $38
    db $fd
    ld a, [$087c]
    ldh a, [rP1]
    ld l, d
    ld a, [bc]
    ld d, [hl]
    cp l
    rst $20
    dec de
    rst $30
    ld l, $5f
    ld e, l
    and [hl]
    jp c, $ff03

    add c
    nop
    inc bc
    xor e
    adc c
    ld d, a
    cp a
    ld e, a
    cp a
    cp a
    rst $18
    scf
    xor e
    or a
    inc bc
    rst $38
    add [hl]
    nop
    push de
    xor $ee
    sbc $ef
    inc b
    rst $10
    add e
    sub $d1
    xor $03
    rst $38
    adc l
    nop
    db $76
    adc l
    or h
    add l
    ldh a, [$ef]
    ld a, [c]
    rst $28
    ld a, [c]
    xor $53
    db $ec
    inc bc
    rst $38
    adc l
    nop
    call nc, $9554
    ld h, [hl]
    db $fd
    ld h, d
    rst $18
    ld h, d
    xor $ea
    ld h, [hl]
    db $dd
    inc bc
    rst $38
    adc c
    nop
    adc d
    sub d
    ld h, d
    call Call_055_7fff
    cp a
    ld a, a
    rlca
    rst $38
    add e
    nop
    cp [hl]
    ld a, [hl]
    ld a, [bc]
    cp $95
    ld a, [$f8f4]
    nop
    nop
    rra
    cpl
    ld e, a
    ld a, h
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    nop
    inc bc
    rst $38
    adc l
    add [hl]
    ld hl, sp-$75
    xor e
    xor b
    ld l, e
    ld l, b
    rst $10
    rlca
    ei
    ld b, h
    ld l, a
    nop
    inc bc
    rst $38
    adc l
    sub [hl]
    sub l
    pop af
    ld c, [hl]
    ld b, [hl]
    ld sp, hl
    dec h
    xor [hl]
    rst $18
    ld l, $97
    jp z, $0400

    rst $38
    adc h
    ld [hl], a
    ld c, e
    or a
    rst $08
    ccf
    rlca
    ei
    rra
    rst $28
    rrca
    or a
    nop
    inc b
    rst $38
    rst $38
    ldh [$ef], a
    ldh [$ef], a
    jp hl


    rst $28
    ldh [$f1], a
    xor $f1
    rst $18
    nop
    ld a, e
    ld l, a
    ld d, c
    jr c, jr_055_5918

    ld a, a
    sbc $ff
    rst $38
    rst $30
    ret nz

    ld l, b
    inc hl
    ld a, a
    ld a, a
    nop
    rst $30
    dec e
    adc e
    adc $e5
    cp l
    rst $38
    rst $38
    db $eb
    rst $38
    ld a, [hl+]
    rst $38
    push hl
    add e
    rst $38
    nop
    ld a, e
    ld [hl], a
    ld l, c
    ld a, b
    ld a, [hl]
    ld a, a
    ld a, a
    ld e, a
    ld a, $f7
    ldh [$83], a
    ld a, l
    ld a, a
    ld a, a
    ldh a, [$3d]
    ld c, $c3
    ld [hl], c
    rra
    add a
    pop hl
    ccf
    rst $38
    ccf
    sbc $fb
    ld a, a
    di
    db $dd
    rlca
    ld hl, sp-$0a
    ld hl, sp-$04
    adc [hl]
    cp $c2
    db $fc
    ld b, b
    ld a, a
    ld a, e
    ld a, a
    ld e, [hl]
    cpl
    ld e, a
    ldh [rNR31], a
    rlca
    ld h, l
    di
    di
    ld h, e
    inc bc
    inc sp
    ld a, e
    rst $38
    or a
    bit 7, l
    rlca
    rst $38
    nop
    ld a, e
    ld [hl], h
    ld l, c
    or d
    pop bc
    nop
    rst $38
    ld h, b
    ld e, l
    ld a, e
    ld [hl], e
    ld [hl], c
    ld l, c
    ld [hl], a
    ld a, e
    db $76
    rst $38
    ld a, e
    dec sp
    sub [hl]
    sbc e
    rst $00
    rst $38
    ld a, a
    cp $ff
    rst $38
    or a
    ret


    cp e
    add a
    db $fc
    nop
    inc a
    ld a, a
    rst $38

jr_055_5918:
    rst $38
    cp l
    ld b, e
    ld a, $4f
    ld a, a
    inc bc
    rst $38
    sub a
    add b
    ld b, b
    ld a, a
    nop
    cp a
    rst $38
    or a
    adc a
    add l
    ld [hl], d
    sbc a
    ld a, [bc]
    ld a, [c]
    ei
    cp $fd
    ld a, d
    ld [hl], c
    rst $38
    nop
    rst $38
    db $fc
    sub b
    inc bc
    ld a, a
    adc [hl]
    ccf
    ld e, a
    sbc l
    cp b
    cp b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    nop
    rst $38
    ld bc, $fc00
    inc bc
    cp $b5
    rst $30
    adc e
    dec e
    dec e
    rlc [hl]
    ei
    rst $38
    nop
    ld [hl], a
    ld e, b
    ld h, h
    jr z, jr_055_59ab

    ld d, c
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    xor a
    ld d, a
    ld hl, $007f
    rst $28
    dec de
    ld b, l
    sub e
    ld a, [bc]
    ld bc, $edc1
    db $ed
    pop af
    ld a, [$926d]
    pop hl
    rst $38
    nop
    ld a, a
    ld a, e
    ld l, h
    ld d, e
    ld l, a
    cpl
    ld b, e
    cp e
    ei
    db $fd
    ld a, e
    ccf
    inc bc
    ld a, a
    adc l
    nop
    rst $38
    rst $18
    scf
    set 6, a
    push af
    jp nz, $dfdd

    cp a
    sbc $fd
    inc bc
    rst $38
    add c
    nop
    inc bc
    rst $38
    adc l
    db $fd
    ld l, d
    ld d, l
    ld d, a
    ld d, a
    ld d, [hl]
    ld d, c
    xor [hl]
    pop af
    xor $f0
    ld l, e
    nop
    inc bc
    rst $38
    adc l
    ld a, e
    and l
    ld e, [hl]

jr_055_59ab:
    jp hl


    sbc $ea
    ld l, b
    rst $30
    ld a, [c]
    db $ed
    ld a, [c]
    ld l, c
    nop
    inc b
    rst $38
    adc h
    ldh a, [$ef]
    ret c

    ld l, d
    xor d
    xor d
    ld d, l
    xor a
    ld d, a
    sub h
    ld l, e
    nop
    inc bc
    rst $38
    sbc b
    ei
    db $e4
    ld e, a
    xor b
    sbc l
    and [hl]
    xor b
    ld l, a
    rst $38
    ld a, a
    cp a
    ld a, a
    nop
    ld hl, sp-$0c
    ld a, [$fefe]
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    inc b
    cp $05
    ld a, a
    sub a
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld e, a
    cpl
    rra
    nop
    ld d, l
    ld c, l
    ld e, [hl]
    ld e, h
    ld [hl], h
    adc e
    ld [$f685], a
    adc c
    xor b
    sub a
    inc bc
    rst $38
    adc l
    nop
    add hl, hl
    dec h
    xor [hl]
    rst $18
    ld b, a
    ei
    ld [$4cf7], sp
    push af
    ld d, [hl]
    ld hl, sp+$03
    rst $38
    adc l
    nop
    ld c, e
    xor e
    dec bc
    ld [hl], a
    rst $10
    ld l, e
    sub a
    res 5, e
    daa
    cpl
    rst $18
    inc bc
    rst $38
    adc l
    nop
    ld [c], a
    push af
    ld [$fbd5], a
    push hl
    sbc $e9
    sbc $ea
    add sp, -$09
    inc bc
    rst $38
    adc l
    nop
    call nc, Call_055_60da
    or a
    pop af
    xor $f0
    db $eb
    ld d, h
    sbc d
    and b
    ld [hl], a
    inc bc
    rst $38
    adc l
    nop
    sub l
    xor d
    and d
    ld c, l
    pop af
    xor $f1
    ld e, a
    and d
    or l
    xor d
    ld d, l
    inc bc
    rst $38
    adc l
    nop
    ld l, h
    sub e
    sub b
    ld l, a
    ldh a, [$ef]
    ld a, [c]
    ld l, a
    ld a, [c]
    xor $53
    xor h
    inc bc
    rst $38
    adc l
    nop
    rst $38
    rst $38
    ld a, a
    cp a
    db $fd
    ld h, d
    rst $18
    ld h, d
    xor $ea
    ld h, [hl]
    db $dd
    inc bc
    rst $38
    add c
    nop
    dec b
    cp $83
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    inc b
    cp $83
    ld a, [$f8f4]
    add hl, bc
    nop
    add hl, bc
    rst $38
    rrca
    add b
    add c
    rst $38
    rrca
    nop
    db $10
    ld hl, sp+$10
    rrca
    jr nz, @+$01

    inc b
    nop
    add h
    inc bc
    inc b
    add hl, bc
    dec bc
    ld [$030f], sp
    nop
    add e
    inc bc
    inc b
    dec bc
    inc b
    ld c, $86
    rra
    rla
    rst $38
    nop
    rst $38
    rst $38
    inc c
    nop
    add h
    rst $38
    nop
    rst $38
    rst $38
    add hl, bc
    rrca
    add e
    ld c, $07
    inc bc
    inc b
    nop
    add e
    ret nz

    ret nz

    pop bc
    inc b
    jp $c282


    ret nz

    inc bc
    pop bc
    adc c
    jp $c1c1


    ret nz

    ld e, a
    rst $38
    ld a, a
    cp b
    cp b
    inc bc
    rra
    xor h
    adc b
    call c, $f8dc
    db $fd
    ld hl, sp-$08
    db $fc
    ld hl, sp-$03
    rst $38
    ld a, e
    di
    ei
    rst $38
    db $eb
    ld de, $733b
    pop hl
    pop bc
    db $e3
    ld [hl], e
    add hl, sp
    ldh [$e0], a
    pop hl
    db $eb
    rst $38
    rst $38
    ei
    di
    inc a
    sbc l
    cp a
    ld sp, hl
    di
    pop bc
    ld sp, hl
    db $fd
    nop
    ldh a, [$f8]
    db $fc
    inc bc
    call c, $b88b
    ld b, b
    ldh a, [$f8]
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    ld [bc], a
    rrca
    inc b
    ccf
    add l
    scf
    ld a, $04
    ld e, $3f
    inc bc
    rra
    or d
    ccf
    rra
    nop
    inc de
    cp e
    ld sp, hl
    ld sp, hl
    cp a
    ld a, $1c
    ld [bc], a
    rla
    cp a
    cp a
    rst $38
    cp a
    dec a
    sbc e
    ld bc, $bf0f
    rst $38
    cp $ce
    add a
    inc bc
    rrca
    rra
    adc a
    rst $18
    rst $08
    rst $18
    rst $38
    sbc a
    add h
    adc $8c
    inc e
    ld e, $3e
    or a
    rst $30
    ld [bc], a
    sbc a
    ccf
    sbc a
    rra
    rra
    sbc a
    ld a, $05
    inc bc
    add a
    add e
    jp $0383


    add e
    jp Jump_000_0483


    inc bc
    adc d
    ld bc, $0703
    ld c, $1c

jr_055_5b53:
    jr c, jr_055_5bc5

    ldh [$fc], a
    db $fc
    ld b, $0c
    add h
    rra
    ccf
    ld [hl], b
    ldh [$03], a
    jp $c182


    pop bc
    inc bc
    jp $c181


jr_055_5b68:
    inc bc
    jp $ffdc


    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    rst $38
    call c, $9fdf
    sbc a
    jr c, jr_055_5b68

    ld sp, hl
    cp b
    cp c
    rst $38
    rst $38
    nop
    nop
    db $fc
    db $fc
    rst $38
    di
    ei
    rst $38
    ei
    ld [hl], e
    ldh a, [$f9]
    di
    ei
    rst $38
    rst $38
    nop
    nop
    inc a
    sub h
    ld hl, sp-$04
    db $fc
    ld hl, sp-$10
    ldh [rP1], a
    jr nc, jr_055_5b53

    sbc a
    db $fc
    db $fc
    nop
    nop
    ld [$1f1f], sp
    ccf
    rra
    ccf
    dec a
    ccf
    nop
    ldh a, [$f8]
    db $fc
    ccf
    ccf
    nop
    nop
    adc b
    db $dd
    ei
    cp e
    cp a
    db $db
    rst $08
    sbc [hl]
    dec b
    rrca
    rla
    dec sp
    rst $38
    rst $38
    nop
    nop
    ld bc, $bf0f
    cp a
    cp [hl]
    adc [hl]

jr_055_5bc5:
    rlca
    inc bc
    inc bc
    rst $38
    adc b
    add a
    rst $38
    rst $38
    nop
    nop
    add h
    sbc $bf
    inc bc
    rra
    sbc l
    cp a
    rst $18
    adc [hl]

jr_055_5bd8:
    sbc $fe
    cp [hl]
    rst $38
    rst $38
    nop
    nop
    ld bc, $bf0f
    cp a
    cp $8e
    rlca
    add e
    inc bc
    add hl, bc
    ccf
    cp a
    ld hl, sp-$04
    ld c, $07
    add e
    jp $0383


    inc bc
    add l
    add e
    jp Jump_055_43c3


    add e
    dec b
    jp $c082


    ret nz

    ld b, $c3
    call nc, $70e0
    ccf
    rra
    ld hl, sp-$47
    cp e
    ld sp, hl
    jr nz, @-$0d

    ei
    rst $38
    rst $38
    ei
    ld [hl], e
    pop hl
    nop

jr_055_5c13:
    nop
    rst $38
    rst $38
    di
    di
    ei
    pop af
    nop
    jr nc, jr_055_5bd8

    sbc a
    sbc a
    db $fc
    add sp, -$40
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0806
    rla
    inc e
    jr jr_055_5c49

    inc de
    jr nz, jr_055_5c71

    add [hl]
    adc a
    ld e, e
    jr nc, jr_055_5c36

jr_055_5c36:
    nop
    db $fc
    db $76
    dec de
    ld bc, $e701
    ld [c], a
    ld e, c
    ld a, c
    inc de
    ld [hl], $a4
    ld hl, sp-$10
    nop
    sbc a
    rst $38
    db $eb

jr_055_5c49:
    jp $fc18


    ld hl, sp-$0f
    pop hl
    db $e3
    ld a, e
    ccf
    nop
    nop
    rst $38
    rst $38
    inc bc
    call c, $b892
    ld b, b
    ldh [$c0], a
    ret nz

    ldh [$e8], a
    ld a, h
    ld a, b
    nop
    nop
    rst $38
    rst $38
    dec sp
    ld sp, $2131
    db $10
    inc b
    jr c, jr_055_5c13

    add hl, sp
    ccf
    rra

jr_055_5c71:
    nop
    nop
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    cp $0f
    rra
    rrca
    rra
    rrca
    rra
    cp a
    rra
    nop
    nop
    rst $38
    rst $38
    ccf
    cp a
    rst $38
    cp a
    ld [bc], a
    sbc a
    ccf
    sbc a
    rra
    rra
    sbc a
    ld a, $00
    nop
    inc b
    rst $38
    add [hl]
    cp a
    ld a, $00
    add b
    ret nz

    add b
    ld b, $00
    add h
    rst $38
    rst $38
    db $c3, $83, $0a


    inc bc
    adc b
    rlca
    ld c, $fc
    ld hl, sp+$1f
    ccf
    ld [hl], b
    ldh [$03], a
    jp $c182


    pop bc
    ld b, $c3
    and e
    ret nz

    rst $38
    rst $38
    nop
    nop
    ld sp, hl

jr_055_5cbc:
    rst $38
    rst $38
    call c, $9fdf
    sbc a
    jr c, jr_055_5cbc

    db $fc
    ei

jr_055_5cc6:
    di
    rst $38
    rst $38
    nop
    nop
    db $fd
    rst $38
    rst $38
    pop af
    ld sp, hl
    rst $38
    ei
    ld [hl], c
    jr nz, jr_055_5cc6

    ld hl, sp-$03
    rst $38
    rst $38
    inc bc
    nop
    adc a
    adc b
    cp h
    ld hl, sp-$10
    ret nz

    ld hl, sp-$04
    ldh [$f0], a
    ldh a, [$f8]
    rst $38
    rst $38
    nop
    nop
    ld [$bc3f], sp
    ld c, $1f
    ld c, $3f
    rst $38
    add a
    sbc h
    cp [hl]
    rst $20
    rst $18
    rst $38
    cp a
    sbc [hl]
    ret z

    cp a
    cp a
    rst $18
    rst $38
    sbc $ff
    rst $38
    ld hl, sp-$12
    db $76
    inc sp
    ei
    db $db
    rra
    rra
    scf
    db $e3
    rst $30
    cp $1e
    ld a, [hl]
    cp $ff
    add a
    adc h
    sbc [hl]
    sub a
    sub c
    sbc [hl]
    sbc a
    or a
    jp hl


    rst $08
    rra
    rst $38
    cp $80
    add b
    rst $38
    adc $f3
    dec a
    adc a
    ld [c], a
    ld a, d
    rst $18
    inc b
    rst $38
    adc e
    db $fc
    cp $8e
    cp [hl]
    rst $38
    rst $08
    rst $38
    rst $08
    add a
    di
    ei
    inc b
    rst $38
    pop bc
    call nz, $e5c7
    ld hl, sp-$41
    rst $38
    db $fc
    db $fc
    sbc [hl]
    ld c, $0e
    sbc [hl]
    cp $ff
    adc $85
    adc $ff
    cp $fc
    db $fc
    rst $38
    add a
    adc a
    sbc a
    rst $38
    cp $ff
    rst $38
    cp a
    cp a
    sbc [hl]
    sbc [hl]
    sbc a
    sbc a
    adc [hl]
    add a
    rst $38
    adc d
    sub $ef
    ld a, [hl]
    dec a
    inc a
    rst $00
    cp e
    ld c, l
    add l
    rst $08
    rst $38
    ld a, [hl]
    ld a, a
    db $fc
    rst $38
    rst $38
    jp $8191


    jp $ffff


    ldh a, [rIE]
    xor d
    sbc d
    dec b
    rst $38
    sbc e
    ldh [$50], a
    db $fc
    ld a, [$8ffe]
    ld h, l
    rst $30
    rst $38
    ld c, l
    xor e
    sbc e
    rst $30
    adc a
    rst $38
    rst $38
    rst $00
    cp a
    rst $38
    ldh a, [$9f]
    sub l
    rst $38
    rst $38
    db $eb
    rst $10
    rst $10
    inc bc
    rst $38
    cp [hl]
    add b
    rst $38
    cp $ff
    rst $38
    inc bc
    db $fd
    ld c, l
    dec e
    cp $f7
    db $e3
    db $e3
    rst $30
    rst $38
    db $fc
    nop
    rst $38
    adc a
    cp a
    cp e
    rst $30
    xor $ee
    ret nz

    rst $38
    or $df
    adc a
    rst $18
    rst $38
    rst $38
    cp a
    rst $38
    ldh a, [$fc]
    cp [hl]
    ld l, [hl]
    rst $30
    rst $38
    ccf
    rst $18
    rst $38
    sbc a
    rrca
    sbc [hl]
    rst $38
    rst $38
    ccf
    rst $38
    add b
    add a
    sbc a
    cp h
    or b
    ldh a, [$fc]
    add $86
    add d
    call nz, Call_000_03ff
    add b
    adc l
    rst $38
    nop
    ldh [$f8], a
    inc a
    inc c
    ld c, $3f
    ld h, e
    ld h, c
    ld b, c
    inc hl
    cp $03
    nop
    and d
    rst $38
    rst $38
    nop
    nop
    jp nz, $fad7

    ld hl, sp-$08
    ld sp, hl
    rst $38
    rst $18
    ld c, $1f
    rrca
    sbc a
    rst $38
    rst $38
    nop
    nop
    add h
    sbc $bf
    ld e, $3f
    dec e
    sbc a
    rrca
    dec c
    rra
    rrca
    sub [hl]
    rst $38
    rst $38
    inc bc
    nop
    and a
    rrca
    rra
    ccf
    cp l
    db $fd
    db $fd
    cp e
    ret nc

    ld hl, sp-$05
    sbc a
    rst $38
    rst $38
    nop
    nop
    inc b
    rra
    cp a
    rst $18
    rst $38
    rst $18
    rst $18
    sbc a
    nop
    add b
    ret nz

    add b
    ld hl, sp-$04
    ld c, $07
    inc bc
    inc bc
    add e
    add e
    jp $8383


    jp $0304


    dec b
    ret nz

    add h
    pop bc
    pop bc
    jp $03c1


    jp $e092


    ld [hl], b
    ccf
    rra
    ei
    di
    db $e3
    db $e3
    adc e
    rst $38
    rst $38
    ei
    ld sp, hl
    rst $38
    rst $18
    ei
    nop
    nop
    inc bc
    rst $38
    rst $28
    ei
    ld [hl], c
    ldh [$f8], a
    db $fc
    rst $38
    ei
    di
    ei
    ei
    rst $38
    nop
    nop
    rst $38
    rst $38
    db $fc
    call c, $f8fc
    inc a
    sub h
    ld hl, sp-$04
    db $fc
    ld hl, sp-$10
    ldh [rP1], a
    nop
    rst $38
    rst $38
    rra
    ld c, $1f
    dec sp
    inc b
    ld e, $3f
    ld e, $3f
    dec e
    rra
    rrca
    nop
    nop
    rst $38
    rst $38
    ccf
    dec a
    sbc a
    rst $08
    ld c, $1f
    rrca
    rra
    cp a
    db $fd
    rst $18
    adc a
    nop
    nop
    rst $38
    rst $38
    cp $f7
    rst $38
    cp [hl]
    ld c, $1f
    ld c, $bf
    rst $18
    adc $df
    cp e
    nop
    nop
    rst $38
    rst $38
    sbc a
    db $fc
    rst $38
    sbc a
    rrca
    rra
    rrca
    sbc a
    rrca
    rra
    cp a
    rst $18
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add b
    ret nz

    ld [bc], a
    sbc a
    ccf
    sbc a
    rra
    rra
    sbc a
    ld a, $00
    nop
    rst $38
    rst $38
    dec b
    inc bc
    add e
    add e
    jp Jump_000_0483


    inc bc
    add h
    rlca
    ld c, $fc
    ld hl, sp+$12
    nop
    nop
    ret nz

    nop
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    nop
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    jp z, $cacd

    call $cdca
    jp z, $cacd

    call $cdca
    jp z, $cacd

    call Call_055_5faf
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    db $10
    db $fc
    db $10
    ccf
    add c
    nop
    rrca
    ld a, a
    add c
    nop
    rrca
    rst $38
    db $10
    rst $08
    db $10
    rst $38
    add h
    rrca
    rra
    dec sp
    scf
    ld [$843f], sp
    scf
    dec sp
    rra
    rrca
    db $10
    rst $38
    inc b
    nop
    adc b
    ld bc, $1e0f
    dec de
    dec de
    ld e, $0f
    ld bc, $0008
    ld [$04ff], sp
    nop
    sub b
    ccf
    ld a, a
    rst $28
    rst $18
    cp $fd
    ei
    or $f6
    rst $30
    or $f1
    ldh a, [$f7]
    or $f7
    inc b
    rst $38
    adc h
    ld a, a
    cp a
    rst $18
    ld l, a
    ld l, a
    rst $28
    ld l, a
    adc a
    ccf
    rst $18
    ld l, a
    rst $18
    dec d
    rst $38
    adc b
    ld hl, sp-$09
    ld hl, sp-$05
    ld a, [$f7f9]
    ei
    inc bc
    push af
    inc b
    rst $38
    adc h
    ld a, b
    sub a
    add sp, -$67
    or [hl]
    cp c
    or d
    ld a, l
    db $fd
    ld a, [c]
    rst $38
    db $f4
    inc b
    rst $38
    adc h
    ccf
    rst $18
    cp a
    rst $18
    cpl
    xor a
    xor a
    rst $18
    rst $38
    sbc e
    ld h, l
    sub l
    dec c
    rst $38
    add a
    ccf
    ld e, a
    xor a
    db $fc
    cp $f7
    ei
    inc c
    rst $38
    sub [hl]
    or $f6
    rst $30
    ldh a, [rIE]
    push af
    rst $38
    ei
    db $fd
    rst $30
    ei
    push af
    rst $18

Call_055_5faf:
    rst $28
    ld a, a
    ccf
    ld l, a
    ld l, a
    rst $18
    ccf
    rst $38
    rst $10
    rrca
    rst $38
    add c
    ld a, a
    ld a, [bc]
    rst $38
    adc h
    push af
    push af
    db $f4
    ei
    rst $38
    ei
    db $fc
    rst $30
    db $fc
    db $f4
    db $f4
    ei
    inc b
    rst $38
    adc h
    db $f4
    cp c
    ld d, d
    cp l
    ld a, a
    db $fc
    sub e
    db $ec
    sub e
    sbc a
    inc c
    db $db
    inc b
    rst $38
    add d
    nop
    nop
    inc b
    rst $38
    adc h
    rst $20
    db $db
    cp l
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    jr @+$01

    rst $38
    nop
    nop
    ld c, $ff
    add d
    nop
    nop
    inc b
    rst $38
    adc h
    rst $30
    xor e
    ld e, l
    ld l, d
    jp nc, $aab2

    push de
    rst $38
    rst $38
    nop
    nop
    inc b
    rst $38
    adc h
    ei
    push af
    db $eb
    rst $10
    xor a
    rst $10
    db $eb
    push af
    rst $38
    rst $38
    nop
    nop
    inc b
    rst $38
    adc h
    add e
    ld a, l
    adc e
    sbc l
    ld h, d
    sbc d
    ld a, [hl+]
    db $dd
    rst $38
    rst $38
    nop
    nop
    ld c, $ff
    add a
    ccf
    ld a, a
    rst $28
    rst $18
    ld hl, sp-$09
    ld hl, sp+$03
    rst $38
    add [hl]
    ld hl, sp-$09
    rst $18
    rst $28
    ld a, a
    ccf
    inc b
    rst $38
    adc b
    rra
    rst $28
    inc l
    and e
    xor h
    and d
    ld l, $ee
    ld [$88ff], sp
    and c
    ld e, [hl]
    or c
    ld a, a
    cp a
    cp a
    or b
    cp a
    add hl, bc

jr_055_604a:
    rst $38
    add a
    db $dd
    and d
    xor a
    and d
    ld d, h
    cp b
    ld [hl], e
    ld [$88ff], sp
    ld e, [hl]
    xor c
    ld d, a
    ld a, [hl+]
    and h
    sub h
    cp c
    ld a, d
    ld [$88ff], sp
    db $fd
    ld a, d
    push de
    dec d
    and $19
    inc e
    db $eb
    ld [$88ff], sp
    db $fc
    cp e
    ld e, h
    ld e, e
    ld e, h
    ld e, e
    or h
    ld a, e
    ld [$88ff], sp
    ccf
    db $db
    cp h
    rst $10
    cp h
    or h
    call nc, Call_000_083b
    rst $38
    adc b
    ld a, [hl]
    db $fd
    sbc [hl]
    ld [$949f], a
    ld a, [bc]
    jp c, $ff04

    sbc d
    db $fc
    cp $f7
    ei
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $18
    xor a
    rst $18
    ei
    rst $30
    cp $fc
    rst $38
    rst $38
    inc bc
    ld a, l
    ld h, [hl]
    ld a, l
    ld h, [hl]
    ld h, [hl]
    ld a, l
    inc bc
    inc b
    rst $38
    ld a, [bc]
    nop
    adc b
    rst $38
    db $eb
    call z, $c8cf
    cp a
    cp a
    or b
    ld [$8b00], sp
    jp $00c3


    jp $ff00


    rst $38
    nop
    or b
    and b
    ldh [rDIV], a
    jr nz, jr_055_604a

    db $10
    ld [$0204], sp
    ld bc, $0004
    add d
    rst $38
    db $db
    inc b
    cp l
    add [hl]
    and l
    rst $38
    rst $38
    nop
    nop
    rst $38
    inc b
    nop

Call_055_60da:
    db $10
    rst $38
    add c
    ccf
    ld c, $3d
    add d
    ccf
    jr c, jr_055_60f2

    jr z, @-$5d

    jr c, jr_055_60e8

jr_055_60e8:
    ld bc, $0f07
    ld a, [de]
    rla
    rra
    rla
    ld e, $3f
    ld a, a

jr_055_60f2:
    rst $38
    db $f4
    ld l, e
    jr nc, jr_055_60f7

jr_055_60f7:
    nop
    db $fc
    xor d
    push af
    rst $38
    rst $38
    db $fd
    sbc $ef
    rst $38
    db $fd
    ld a, [$087c]
    ldh a, [rP1]
    ld c, $ff
    add d
    nop
    nop
    inc bc
    rst $38
    add a
    jp $c2bd


    push af
    cp e
    ld b, c
    cp [hl]
    inc b
    rst $38
    adc h
    nop
    nop
    rst $38
    rst $38
    rst $28
    sub a
    ld a, l
    and c
    ld c, [hl]
    ld b, c
    sub c
    xor [hl]
    inc b
    rst $38
    add l
    nop
    nop
    dec e
    inc hl
    ld b, c
    inc b
    ld a, a
    add c
    ld a, $04
    ld a, a
    add a
    ld b, c
    ld [hl+], a
    inc e
    nop
    ei
    inc c
    inc c
    add hl, bc
    rst $38
    add a
    sbc c
    sbc c
    rst $38
    nop
    cp [hl]
    ld h, c
    ld h, b
    add hl, bc
    rst $38
    adc c
    inc h
    inc h
    rst $38
    nop
    db $fc
    add h
    add h
    db $fc
    db $fc
    inc bc
    ld hl, sp-$7f
    ld a, b
    inc bc
    ld hl, sp-$70
    ret z

    ret z

    ld hl, sp+$00
    ld d, l
    call nc, $9a65
    rst $38
    ld a, [hl-]
    push de
    ld h, $ad
    xor e
    ld e, d
    cp l
    inc b
    rst $38
    adc h
    xor a
    cpl
    ld e, a
    rst $38
    ld a, a
    cp e
    push de
    and l
    dec h
    inc h
    and l
    ld e, d
    add hl, bc
    rst $38
    adc e
    ccf
    ld e, a
    xor a
    xor a
    cpl
    ld e, a
    rst $38
    ei
    rst $30
    cp $fc
    ld de, $a600
    and d
    rla
    rst $38
    cp $ff
    ld a, a
    cp a
    cp a
    db $fd
    rst $38
    sub a
    rst $38
    db $fd
    rst $18
    ld a, a
    add c
    inc bc
    inc bc
    and [hl]
    adc a
    db $fc
    ld a, a
    or a
    ret nz

    add l
    add hl, hl
    add e
    dec c
    rst $28
    rst $38
    ld hl, sp-$05
    or $ef
    cp l
    ei
    rst $08
    ld a, a
    ld [$aeff], sp
    cp $bf
    ld a, $3f
    cp a
    ld [hl], $3f
    ccf
    scf
    ld [hl], a
    rst $28
    db $db
    db $fd
    cp d
    ld h, e
    push af
    db $fc
    rst $38
    rst $28
    rst $38
    cp e
    rst $38
    cp a
    ld a, a
    ld [hl], $ff
    rst $38
    db $eb
    cp a
    rst $18
    ld a, a
    db $ed
    rst $38
    ld a, l
    rst $28
    ei
    ei
    or a
    cp $dd
    cp a
    rst $30
    sbc a
    cp a
    ld a, a
    cp a
    inc bc
    rst $38
    sbc l
    cp $eb
    push af
    db $db
    rst $18
    rst $30
    rst $38
    cp $d7
    cp a
    ld a, a
    rst $28
    ld e, a
    rst $28
    rst $38
    db $fd
    ei
    rst $30
    ld l, a
    sbc a
    rst $30
    cp $ff
    rst $38
    ei
    rst $30
    rst $18
    or a
    rst $28
    inc bc
    rst $38
    or b
    cp $fd
    cp a
    cp e
    db $fc
    ld [hl], a
    ld a, a
    xor $ff
    db $e3
    adc [hl]
    ld a, a
    rst $18
    rst $30
    ld l, a
    cp a
    rst $18
    rst $28
    ld [hl], a
    cp a
    db $db
    db $fd
    rst $28
    rst $30
    rst $28
    rst $38
    rst $38
    ld a, c
    rst $30
    rst $28
    cp e
    cpl
    rst $28
    ei
    rst $38
    sbc l
    rst $38
    or $f8
    cp $fd
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    inc bc
    ccf
    sbc [hl]
    cp a
    cp a
    ccf
    dec a
    scf
    cp $df
    db $fd
    ei
    and a
    db $ed
    ld [hl], a
    ld e, l
    ld a, c
    rst $38
    rst $28
    rst $38
    cpl
    ld l, a
    rst $18
    cp a
    xor a
    cp $ee
    rst $30
    rst $38
    db $fd
    cp $ff
    ld a, a
    inc b
    rst $38
    add e
    ld a, a
    rst $38
    cp [hl]
    ld b, $ff
    adc l
    rst $30
    ld e, e
    rst $38
    db $fd
    rst $38
    rst $38
    cp $fe
    db $fc
    rst $20
    rst $38
    rst $30
    ei
    inc b
    rst $38
    sub c
    scf
    rst $28
    rst $28
    rst $38
    ld sp, hl
    or $ff
    ei
    xor h
    rst $38
    ld a, a
    cp $df
    rst $38
    rst $38
    rst $18
    or e
    ld a, [bc]
    nop
    and d
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    nop
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    cp $7f
    ccf
    rra
    rrca
    rlca
    inc bc
    ld bc, $ff00
    ld hl, sp-$20
    ret nz

    add b
    inc bc
    inc bc
    ld bc, $0080
    nop
    jr c, @+$05

    db $fc
    add l
    ldh [rSB], a
    nop
    nop
    inc e
    inc bc
    ccf
    xor h
    rlca
    rst $38
    rra
    rlca
    inc bc
    ld de, $e0d0
    and h
    add b
    ret nz

    ldh a, [$fc]
    ldh a, [$e0]
    ldh [$f0], a
    ld bc, $0e03
    nop
    nop
    inc c
    inc e
    inc a
    add b
    ret nz

    ld [hl], b
    nop
    nop
    jr nc, @+$3a

    inc a
    dec h
    dec de
    rrca
    ccf
    rrca
    rlca
    rlca
    rrca
    rst $38
    rst $00
    add e
    add hl, bc
    cp $87
    add d
    call nz, $e3f9
    rst $38
    push bc
    push bc
    ld [$88fd], sp
    rst $38
    jp nz, $fec2

    ret nz

    rst $38
    rst $00
    add e
    inc b
    cp $8c
    sbc h
    db $fd
    ld sp, hl
    di
    rst $38
    add d
    add d
    cp $80
    rst $38
    rst $00
    add e
    inc bc
    cp $83
    db $fc
    db $fd
    rst $38
    inc bc
    cp $87
    add d
    call nz, $e3f9
    rst $38
    sub l
    sub l
    dec b
    db $fd
    add c
    rst $38
    inc bc
    cp $89
    sub h
    push af
    db $fd
    pop af
    rst $38
    add d
    add d
    cp $f0
    inc bc
    rst $38
    inc b
    cp $87
    add d
    call nz, $e3f9
    rst $38
    rst $00
    add e
    inc bc
    cp $82
    db $fc
    rst $38
    inc b
    cp $97
    add d
    call nz, $e3f9
    rst $38
    add d
    add d
    cp $9e
    cp $fc
    db $fd
    db $fd
    ld sp, hl
    ei
    ei
    set 1, e
    ei
    jp $c7ff


    add e
    inc bc
    cp $83
    db $fc
    db $fd
    rst $38
    inc bc
    cp $87
    add d
    call nz, $e3f9
    rst $38
    rst $00
    add e
    add hl, bc
    cp $84
    add d
    call nz, $e3f9
    ld [$0a00], sp
    rst $38
    adc b
    add e
    ld a, l
    adc e
    sbc l
    ld h, d
    sbc d
    ld a, [hl+]
    db $dd
    inc b
    rst $38
    add d
    nop
    nop
    ld a, [bc]
    rst $38
    sub b
    ei
    rst $30
    cp $fc
    nop
    nop
    rst $38
    rst $38
    rst $00
    cp e
    rst $00
    ld a, l
    adc e
    rst $10
    xor c
    ld d, [hl]
    inc b
    rst $38
    ld a, [bc]
    nop
    ld a, [bc]
    rst $38
    ld d, $00
    rlca
    rst $38
    add c
    ei
    ld [$0700], sp
    rst $38
    add [hl]
    cp $fb
    adc a
    adc b
    adc h
    adc a
    inc bc
    adc h
    add [hl]
    rst $38
    add b
    sbc a
    cp a
    rst $18
    cp a
    inc b
    rst $38
    add e
    inc bc
    inc bc
    rst $38
    inc bc
    ld [bc], a
    add d
    rst $38
    nop
    ld b, $ff
    add h
    adc b
    adc h
    rst $38
    add b
    rlca
    sbc a

jr_055_63b8:
    adc c
    cp a
    rst $18
    cp a
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    inc c
    rst $38
    cp a
    db $fc
    adc h
    adc a
    adc h
    adc h
    adc a

jr_055_63cb:
    adc h
    adc h
    ccf
    jr z, jr_055_63cb

    ld a, [hl-]
    ld a, [bc]
    ei
    ld a, [bc]
    ld a, [bc]
    db $fc
    inc d
    rst $18
    ld e, h
    ld d, b
    rst $18
    ld d, b
    ld d, b
    ccf
    ld sp, $31f1
    ld sp, $31f1
    ld sp, $8c8f
    adc h
    adc a
    adc h
    adc h
    adc a
    rst $38
    ei
    inc b
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $18
    jr nz, jr_055_63b8

    rst $38
    nop
    nop
    rst $38
    rst $38
    pop af
    ld sp, $f131
    ld sp, $f131
    inc bc
    rst $38
    adc h
    ei
    adc b
    adc a
    adc h
    adc h
    adc a
    adc h
    adc h
    adc a
    adc h
    adc h
    adc a
    dec b
    rst $38
    adc d
    nop
    rst $38
    nop
    inc bc
    rst $38
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld b, $ff
    adc d
    nop
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    dec b
    rst $38
    adc [hl]
    rst $18
    ld de, $31f1
    ld sp, $31f1
    ld sp, $31f1
    ld sp, $fff1
    rst $38
    ld [$0400], sp
    rst $38
    add h
    add b
    add b
    sbc a
    sbc a
    ld [$8800], sp
    rst $38
    rst $38
    cp $ff
    nop
    nop
    rst $38
    rst $38
    ld [$8800], sp
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld [$0400], sp
    rst $38
    add h
    ld bc, $f901
    ld sp, hl
    rlca
    sbc a
    add a
    cp a
    sbc a
    rst $18
    sbc a
    cp a
    rst $18
    cp a
    ld [hl+], a
    rst $38
    rlca
    ld sp, hl
    adc d
    db $fd
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    ei
    db $fd
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    add a
    dec c
    ld a, l

Call_055_6484:
    di
    rst $38
    di
    ld a, l
    dec c
    inc bc
    rlca
    add c
    inc bc
    inc b
    nop
    adc c
    inc e
    rra
    rra
    ld c, $0d
    ld c, $1f
    rra
    inc e
    ld [$8c00], sp
    inc e
    ccf
    dec sp
    rra
    rrca
    rlca
    dec c
    rrca
    rlca
    ld [bc], a
    nop
    nop
    ld [$09ff], sp
    nop
    rlca
    ld a, a
    add c
    nop
    rlca
    rst $38
    add c
    nop
    rlca
    ld a, a
    add c
    nop
    rlca
    rst $38
    add c
    nop
    rlca
    ld a, a
    add c
    nop
    rlca
    rst $38
    add c
    nop
    rlca
    rst $38
    add c
    nop
    ld [$81ff], sp
    add b
    inc bc
    cp a
    adc l
    cp h
    cp l
    cp l
    rst $38
    ld bc, $ffff
    rst $30
    scf
    rst $30
    rst $30
    rst $38
    add b
    ld b, $bf
    add h
    rst $38
    ld bc, $ffff
    inc b
    rst $30
    add d
    rst $38
    add b
    inc bc
    cp a
    adc l
    cp b
    cp a
    cp a
    rst $38
    ld bc, $ffff
    rst $30
    scf
    rst $30
    rst $30
    rst $38
    add b
    inc bc
    cp a
    add e
    cp b
    cp a
    cp a
    dec b
    rst $30
    add e
    rst $20
    rst $38
    rst $38
    ld [$087f], sp
    rst $38
    ld [$087f], sp
    rst $38
    ld [$187f], sp
    rst $38
    inc bc
    cp l
    add l
    cp a
    cp a
    cp b
    cp a
    rst $38
    dec b
    rst $30
    add e
    rlca
    rst $38
    rst $38
    rlca
    cp a
    add c
    rst $38
    dec b
    rst $30
    sub l
    rst $20
    rst $38
    rst $38
    cp a
    cp h
    cp l
    cp a
    cp a
    cp b
    cp a
    rst $38
    rst $30
    rlca
    rst $38
    rst $38
    rst $30
    rlca
    rst $38
    rst $38
    cp a
    cp [hl]
    inc bc
    cp a
    add l
    cp b
    cp a
    rst $38
    rst $30
    scf
    inc bc
    rst $30
    add c
    rlca
    inc bc
    rst $38
    add e
    add b
    cp a
    cp a
    inc bc
    cp l
    add l
    cp a
    rst $38
    ld bc, $ffff
    inc b
    rst $30
    add d
    rst $38
    add b
    inc bc
    cp a
    adc l
    cp h
    cp l
    cp a
    rst $38
    ld bc, $ffff
    rst $30
    rlca
    rst $38
    rst $38
    cp d
    ld a, l
    inc b
    rst $38
    add e
    ld a, l
    ld a, [hl-]
    rst $28
    ld b, $ff
    add c
    rst $28
    dec bc
    rst $38
    add l
    db $fc
    ldh a, [$e3]
    db $e4
    push hl
    inc bc
    rst $38
    add h
    nop
    nop
    rst $38
    nop
    inc b
    rst $38
    add h
    rrca
    rlca
    push bc
    dec h
    dec bc
    push hl
    add [hl]
    db $e3
    ldh [$f0], a
    rst $38
    ld hl, sp-$01
    inc bc
    push hl
    sbc a
    dec b
    dec bc
    rst $30
    rrca
    rst $38
    push hl
    and l
    and l
    ret


    pop de
    and c
    and c
    jp hl


    jr c, jr_055_65b4

    nop
    ld bc, $1202
    ld a, [hl+]
    ld b, $0c
    nop
    adc h
    ld [$4300], sp
    dec bc
    ld d, $bf
    cp b

jr_055_65b4:
    dec b
    cp a
    add e
    rst $38
    rst $30
    scf
    inc bc
    rst $30
    add l
    rst $20
    rst $38
    rst $38
    cp a
    cp b
    inc bc
    cp a
    add l
    cp b
    cp a
    rst $38
    rst $38
    add b
    inc bc
    cp a
    add e
    cp b
    cp a
    cp a
    dec b
    rst $38
    sbc l
    or $fb
    db $fd
    rst $38
    rst $38
    rst $18
    rst $30
    ei
    rra
    db $ed
    rst $38
    rst $38
    inc l
    rst $18
    rst $30
    db $eb
    or $f9
    cp $ff
    db $fd
    cp $fb
    push af
    db $db
    rst $20
    ccf
    rst $38
    rst $00
    inc b
    and e
    add c
    rst $00
    inc c
    rst $38
    add a
    ei
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    cp e
    inc b
    rst $38
    and $bb
    rst $38
    rst $38
    sbc c
    rst $20
    db $10
    adc b
    rlca
    nop
    rst $38
    rst $38
    db $fd
    push bc
    push bc
    call $81fd
    rst $38
    ld e, $3c
    ld a, $bb
    or a
    cpl
    inc a
    dec de
    ld c, a
    rst $38
    ei
    db $fd
    ld a, [hl]
    ld e, a
    cp $af
    rlca
    nop
    add a
    inc c
    ld [$0520], sp
    inc bc
    nop
    inc bc
    add hl, hl
    sub d
    daa
    ld d, a
    rst $08
    xor a
    inc e
    nop
    db $eb
    rst $38
    cp $f7
    rst $38
    ld a, a
    jr nz, jr_055_663d

jr_055_663d:
    ld l, e
    or [hl]
    sbc $fe
    cp a
    rst $38
    rlca
    nop
    sub c
    nop
    ld b, e
    res 6, a
    ld c, [hl]
    stop
    ld h, d
    push de
    rst $00
    rst $18
    xor $ff
    nop
    ld a, $ff
    db $ed
    cp a
    rst $28
    cp a
    ld a, a
    jr nc, jr_055_665d

jr_055_665d:
    cp a
    rst $38
    ld a, [hl]
    or a
    db $dd
    ld [$271e], a
    ccf
    dec sp
    inc b
    ccf
    add e
    rst $38
    rst $18
    cp a
    inc bc
    rst $38
    add [hl]
    ld l, a
    ld a, a
    rst $08
    db $fd
    rst $38
    cp $04
    rst $38
    ld hl, sp-$03
    ld e, e
    cp [hl]
    push af
    rst $38
    db $ed
    ei
    db $dd
    or l
    ld a, [hl]
    ei
    ei
    rst $38
    cp a
    ld a, l
    rst $38
    ld a, e
    rst $38
    db $dd
    di
    ld a, [hl]
    sbc a
    ld a, a
    rst $30
    cp a
    ld l, e
    db $dd
    cp a
    sub $6f
    rst $18
    cp e
    cp a
    db $76
    rst $38
    db $dd
    rst $38
    ld l, [hl]
    ld a, a
    rst $30
    ld c, a
    db $fd
    rst $30
    rst $28
    rst $18
    ei
    cp $77
    rst $38
    or $5f
    rst $38
    rst $30
    ld a, l
    rst $28
    cp $fa
    rst $38
    rst $30
    rst $38
    rst $38
    or a
    ld a, e
    rst $08
    rst $38
    rst $38
    cp a
    rst $30
    ei
    ld a, a
    db $ed
    cp [hl]
    rst $38
    db $db
    rst $30
    cp d
    db $fd
    rst $18
    rst $30
    db $dd
    ld a, c
    rst $38
    rst $38
    db $fd
    and a
    rst $38
    xor l
    di
    rst $38
    xor a
    rst $18
    cp a
    rst $30
    rst $38
    cp a
    ld a, a
    rst $28
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    cp a
    ei
    dec a
    ccf
    dec sp
    ld a, $be
    cp a
    dec sp
    cp a
    rst $18
    ld d, a
    sbc a
    ccf
    sbc [hl]
    cpl
    ld e, [hl]
    ld sp, hl
    ld [$e1ff], sp
    di
    or $db
    db $ed
    rst $30
    db $fc
    db $fd
    cp a
    cp [hl]
    db $fd
    or a
    ld l, a
    cp $e7
    db $db
    db $dd
    rst $18
    rst $38
    cp e
    sbc [hl]
    rst $38
    ld a, c
    rst $18
    cp e
    ld l, a
    rst $30
    ld l, a
    ld a, $ef
    call $f6ff
    xor a
    sbc $b1
    ccf
    rst $38
    db $db
    cp a
    push de
    ccf
    rst $30
    ld a, a
    rst $28
    cp a
    rst $28
    ret c

    ld e, a
    rst $18
    rst $38
    db $fc
    rst $38
    db $dd
    rst $18
    ld e, $ff
    cp l
    ccf
    ld a, $37
    rra
    add hl, sp
    dec sp
    ccf
    rst $28
    cp e
    ld l, a
    ld [hl], a
    db $db
    rst $10
    ld a, l
    sbc $7f
    db $db
    or a
    rst $38
    db $fd
    rst $18

jr_055_6742:
    db $fc
    jr nc, jr_055_6742

    cp a
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fb
    rst $30
    xor $fd
    rst $28
    inc b
    rst $38
    adc h
    adc l
    pop de
    add b
    ei
    rst $38
    rst $38
    cp a
    rst $30
    db $fd
    ccf
    rst $20
    rst $28
    inc bc
    rst $38
    cp b
    di
    rst $18
    db $fd
    set 7, e
    rst $28
    db $dd
    cp e
    cp $fd
    ld l, e
    db $fd
    ei
    ld b, a
    ld [$b717], sp
    rst $38
    or c
    ld a, a
    scf
    dec a
    ccf
    ld [hl], $25
    ld c, e
    ld c, $3f
    ld a, e
    rst $38
    ld a, a
    rst $08
    sbc a
    rst $38
    cp a
    rst $18
    rst $38
    rst $18
    rst $28
    ld a, a
    rst $38
    rst $30
    rst $08
    rst $38
    ret nc

    db $fc
    cp a
    rst $20
    db $fd
    rst $38
    ei
    rst $30
    ld e, a
    rst $18
    rst $38
    cp a
    inc bc
    rst $38
    adc e
    cp $ff
    rst $38
    cp $ff
    db $fd
    cp $ff
    rst $28
    ld a, $3f
    inc bc
    cp a
    inc bc
    ccf
    add sp, -$09

jr_055_67b3:
    rst $28
    db $fc
    cp $fd
    ld a, e
    rst $38
    rst $08
    ld a, h
    db $dd
    db $ec
    rst $30
    cp $ff
    ei
    cp a
    rst $38
    scf
    sbc e
    ccf
    rlca
    adc l
    ld b, d
    add c
    rst $38
    db $fd
    xor $77
    rst $38
    cp $d0
    ld b, d
    add e
    ld d, [hl]
    db $fc
    ld hl, sp-$50
    ld [c], a
    nop
    add hl, sp
    add a
    rlca
    dec hl
    xor e
    ld [de], a
    add l
    and h
    adc h
    ret nc

    ld b, b
    sub d
    ld a, [hl+]
    sbc d
    jr nc, jr_055_6839

    ld [c], a
    rst $38
    jp nc, $ceee

    xor e
    dec c
    or l
    ccf
    rst $38
    cp $7f
    ld a, a
    ld a, b
    rst $38
    db $fd
    ld a, [hl]
    dec sp
    scf
    dec a
    ccf
    ld a, $3f
    cp a
    cp a
    db $f4
    ld a, a
    rst $28
    cp e
    rst $10
    db $ed
    ld a, e
    rst $38
    cp $ff
    ld a, l
    or [hl]
    ld l, a
    db $fd
    db $eb
    rst $38
    db $fd
    sbc e
    cp $ff
    db $fd
    rst $18
    ei
    xor $61
    rst $38
    rrca
    add b
    add c
    rst $38
    rrca
    nop
    db $10
    ld hl, sp+$11
    rrca
    add e
    rra
    inc a
    jr c, jr_055_6833

    jr nc, jr_055_67b3

    jr c, @+$3e

    rra
    rrca
    rst $38
    rst $38

jr_055_6833:
    inc c
    nop
    add d
    rst $38
    rst $38
    inc b

jr_055_6839:
    nop
    adc b
    inc bc
    rrca
    rra
    inc e
    inc e
    rra
    rrca
    inc bc
    ld [$8200], sp
    rst $38
    rst $38
    inc b
    nop
    add d
    rst $38
    rst $38
    inc b
    nop
    add a
    ld a, a
    rst $38
    ldh a, [$e0]
    pop bc
    jp Jump_000_04c7


    rst $08
    add c
    adc $04
    rst $08
    add a
    rst $38
    rst $38
    nop
    nop
    add b
    ret nz

    ldh [rDIV], a
    ldh a, [$87]
    ld [hl], b
    ret nz

    ldh [$f0], a
    ldh [rIE], a
    rst $38
    ld b, $00
    add c
    dec b
    rlca
    nop
    add d
    rst $38
    rst $38
    inc bc
    nop
    adc b
    rlca
    rrca

jr_055_687d:
    rlca
    ld b, a
    rlca
    rlca
    rrca
    inc b
    inc bc
    ld c, $88
    rst $38
    rst $38
    nop
    nop
    add a
    rst $28
    rst $30
    rst $20
    inc bc
    rst $08
    add d
    add e
    ld [bc], a
    inc bc
    rrca
    adc b
    rst $38
    rst $38
    nop
    nop
    ret nz

    ldh [$c0], a
    ldh [$03], a
    ldh a, [$87]
    ldh [rP1], a
    ld h, h
    cp $6e
    rst $38
    rst $38
    dec bc
    nop
    add a
    ret nz

    ldh [rSVBK], a
    cp $ff
    rrca
    rlca
    inc c
    inc bc
    inc b
    rst $08
    sub d
    ret nz

    rst $08
    jp z, $c6cc

    jp z, $cece

    ldh [$f0], a
    rst $38
    ld a, a
    ldh a, [$f0]
    ldh [$c0], a
    nop
    ei
    inc bc
    xor d
    adc b
    cp e
    xor d
    xor d
    nop
    nop
    rst $38
    rst $38
    dec b
    inc b
    nop
    or h
    ldh a, [$a0]
    and b
    and l
    jr nz, jr_055_687d

    and b
    nop
    nop
    rst $38
    rst $38
    ld c, [hl]
    ld c, $0f
    rlca
    nop
    inc b
    rlca
    rrca
    ld c, a
    rrca
    rrca
    rlca
    nop
    nop
    rst $38
    rst $38
    rrca
    ld c, a
    rst $28
    jp $8380


    rst $28
    rst $38
    db $ec
    ldh [$f3], a
    rst $20
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    jr jr_055_6946

    ld a, [hl]
    inc b
    rst $38
    add c
    rst $20
    inc b
    nop
    add d
    rst $38
    rst $38
    ld b, $00
    add c
    ld d, h
    rlca
    nop
    add a
    rst $38
    rst $38
    nop
    nop
    ld [$fe5c], sp
    inc bc
    rst $38
    add d
    rst $30
    ld l, [hl]
    inc b
    nop
    adc h
    rst $38
    rst $38
    nop
    nop
    inc b
    ld c, $1c
    jr c, jr_055_69a3

    jr c, jr_055_6951

    ld c, $04
    nop
    adc b
    rst $38
    rst $38
    nop
    nop
    ld a, h
    cp $7c
    ld a, [hl]
    inc bc
    rst $38
    add c
    ld a, $04

jr_055_6946:
    nop
    add d
    rst $38
    rst $38
    inc c
    nop
    add a
    ccf
    ld a, a
    ldh a, [$e0]

jr_055_6951:
    rst $00
    rst $08
    rst $00
    inc bc
    ret nz

    sub h
    rst $00
    rst $08
    ldh [$f0], a
    ld a, a
    ccf
    rst $38
    rst $38
    nop
    nop
    ldh [$f0], a
    di
    ld a, a
    ld a, a
    ld a, l
    pop af
    pop af
    nop
    nop
    inc b
    rst $38
    adc h
    nop
    nop
    ld a, [hl]
    rst $28
    adc $80
    ret nz

    ret nz

    rst $08
    rst $08
    nop
    nop
    inc b
    rst $38
    inc bc
    nop
    add c
    ld [hl+], a
    inc bc
    ld a, a
    add l
    rst $28
    rst $08
    adc a
    nop
    nop
    inc b
    rst $38
    adc h
    nop
    nop
    pop af
    ld d, a
    rst $28
    rst $30
    rst $38
    rst $28
    rst $08
    adc l
    nop
    nop
    inc b
    rst $38
    adc h
    nop
    nop
    ld [bc], a
    add a
    xor $ee
    rst $38
    and $e3

jr_055_69a3:
    rst $30
    nop
    nop
    inc b
    rst $38
    adc h
    nop
    nop
    inc bc
    ld b, a
    db $e3
    rst $20
    db $e3
    rst $20
    rst $08
    add a
    nop
    nop
    inc b
    rst $38
    adc h
    nop
    nop
    ret nz

    db $e4
    rst $00
    rst $28
    rst $08
    rst $08
    rst $28
    rst $00
    nop
    nop
    inc b
    rst $38
    xor h
    nop
    nop
    add c
    add e
    db $e3
    rst $30
    rst $20

jr_055_69ce:
    rst $28
    db $fd
    db $ed
    nop
    nop
    rst $38
    rst $38
    db $fc
    cp $0f
    rlca
    inc bc
    add e
    inc bc
    inc bc
    add e
    and e
    di
    db $e3
    rlca
    rrca
    cp $fc
    nop
    nop
    db $fc
    cp $ff
    cp $ff
    rst $38
    cp $fc
    nop
    nop
    rst $38
    rst $38
    ld a, [bc]
    nop
    adc b
    rst $38
    sbc h
    cp a
    cp a
    cp b
    rst $38
    ldh [$ef], a
    ld [$8b00], sp
    jp $c300


    jp $ff00


    nop
    rst $38
    rst $28
    rst $38
    rst $38
    inc b
    ccf
    add l
    rra
    rrca
    rlca
    inc bc
    ld bc, $0004
    add [hl]
    rst $38
    and l
    jp $dbdb


    jp $ff06


    inc b
    nop
    add c
    rst $38
    ld c, $81
    add d
    rst $38
    ccf
    ld c, $27
    add c
    ccf
    db $10
    jr c, jr_055_69ce

    nop
    ld bc, $0806
    rla
    inc e
    jr jr_055_6a52

    inc de
    jr nz, jr_055_6a7a

    add [hl]
    adc a
    ld e, e
    jr nc, jr_055_6a3f

jr_055_6a3f:
    nop
    db $fc
    db $76
    dec de
    ld bc, $e701
    ld [c], a
    ld e, c
    ld a, c
    inc de
    ld [hl], $a4
    ld hl, sp-$10
    rlca
    nop
    add c
    ld d, h

jr_055_6a52:
    dec b
    nop
    add d
    rst $38
    rst $38
    dec b
    nop
    adc e
    inc a
    ld a, [hl]
    ccf
    ld c, $44
    cp $7f
    nop
    nop
    rst $38
    rst $38
    inc b
    nop
    sub c
    db $10
    ld a, b
    cp $7e
    rst $38
    cp $fe
    rst $18
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec e
    ccf
    ld a, a
    inc bc

jr_055_6a7a:
    ld c, c
    add e
    ld c, a
    inc hl
    ld a, c
    inc bc
    ld c, c
    adc b
    ld a, a
    ccf
    rra
    ld c, $fb
    rst $38
    rst $38
    add hl, bc
    inc bc
    sbc c
    add d
    sbc b
    sbc b
    inc bc
    sbc c
    inc bc
    rst $38
    add h
    ld a, a
    cp [hl]
    rst $38
    rst $38
    inc b
    inc h
    add d
    jr nz, jr_055_6abe

    inc bc
    inc h
    inc b
    rst $38
    add [hl]
    db $fc
    cp $fe
    add [hl]
    adc $ce
    ld b, $cc
    inc b
    db $fc
    and b
    xor $ef
    rst $38
    rst $20
    nop
    push bc
    rst $28
    rst $38
    ld a, a
    ld a, a
    rst $28
    add $00
    nop
    rst $38
    rst $38
    ld [hl], b

jr_055_6abe:
    ldh a, [$a0]
    nop
    add b
    call nz, $feee
    cp $ff
    ld a, a
    rst $20
    nop
    nop
    rst $38
    rst $38
    dec b
    inc bc
    adc e
    jp Jump_055_73e3


    ld [hl], e
    di
    and e
    inc bc
    rlca
    rrca
    rst $38
    cp $10
    nop
    and a
    rst $38
    ld e, l
    rst $28
    rst $38
    rst $38
    nop
    add b
    ret nz

    ld b, b
    cp $fe
    rst $28
    inc bc
    inc bc
    ccf
    rst $38
    ld a, [hl]
    db $fc
    db $fc
    ld e, c
    ldh a, [rIE]
    rst $38
    rst $08
    ccf
    ld a, d
    sub $7c
    di
    rra
    rst $38
    rst $38
    rlca
    rrca
    ld e, $7e
    db $fc
    ldh a, [$80]
    ld [$9900], sp
    ld bc, $41c0
    pop bc
    jp $cc4f


    rst $08
    rst $08
    rst $28
    rst $38
    rst $30
    or a
    ld l, l
    cp $fe
    rst $38
    rst $30
    rst $30
    rst $20
    rst $00
    nop
    ld [hl], c
    or b
    ld sp, hl
    inc bc
    rst $30
    sub d
    ret nz

    jr nc, @-$66

    sbc a
    adc a
    add e
    di
    db $fc
    inc e
    ld a, b
    pop af
    ld [c], a
    ret nz

    add sp, $70
    ld [hl], b
    ldh [$c0], a
    inc bc
    nop
    ret


    rrca
    dec e
    dec de
    ld [hl], $24
    ld [$0100], sp
    cp $ef
    rst $28
    rst $18
    cp l
    ld a, h
    call z, Call_000_068f
    ld c, $9c
    ld hl, sp-$08
    pop af
    pop af
    rst $38
    inc b
    inc c
    jr c, @+$7a

    ldh a, [$e0]
    ret nz

    add b
    pop bc
    jp $c7c3


    add a
    adc l
    adc d
    dec d
    rst $38
    rst $38
    pop af
    ldh [$e0], a
    xor h
    ret c

    ldh a, [$e0]
    ldh a, [$f8]
    ld a, b
    dec a
    rra
    rra
    rrca
    rra
    ccf
    ld a, a
    cp $f8
    db $f4
    db $ec
    ld hl, sp-$10
    db $fc
    db $fc
    ld a, [hl]
    ld e, $0f
    rlca
    ld bc, $0403
    ld bc, $008c
    ld bc, $c000
    ret nz

    ld b, b
    ret nz

    ret nz

jr_055_6b8d:
    ld b, b
    ld b, d
    rst $08
    rra
    inc bc
    ccf
    sub l
    ld a, h
    ld a, e
    sbc $ae
    rst $38
    rst $38
    sub b
    jr nc, jr_055_6b8d

    ret c

    or b
    ld h, b

jr_055_6ba0:
    rst $18
    rst $38
    rra
    rrca
    rlca
    inc bc
    ld bc, $8000
    inc b
    nop
    add e
    add b
    add b
    ld b, c
    ld b, $00
    and d
    ld [$01fc], sp
    ld [bc], a
    nop
    nop
    ld bc, $0301
    rra
    rrca
    rrca
    ld b, $00
    nop
    ld bc, $c901
    sbc a
    rra
    ccf
    ld a, a
    ld sp, hl
    ldh a, [$e4]
    rst $18
    ld bc, $8181
    ldh [$e0], a
    ld [hl], b
    jr c, jr_055_6ba0

    add hl, bc
    nop
    and e
    add b
    ld b, b
    jr nz, @+$12

    ld [$0204], sp
    add b
    ld b, b
    jr nz, jr_055_6bf2

    ld [$0204], sp
    ld bc, $4080
    jr nz, @+$12

    ld [$0204], sp
    ld bc, $f8ff
    ldh [$c0], a

jr_055_6bf2:
    add b
    inc bc
    inc bc
    ld bc, $0080
    nop
    jr c, @+$05

    db $fc
    add l
    ldh [rSB], a
    nop
    nop
    inc e
    inc bc
    ccf
    xor h
    rlca
    rst $38
    rra
    rlca
    inc bc
    ld de, $e0d0
    and h
    add b
    ret nz

    ldh a, [$fc]
    ldh a, [$e0]
    ldh [$f0], a
    ld bc, $0e03
    nop
    nop
    inc c
    inc e
    inc a
    add b
    ret nz

    ld [hl], b
    nop
    nop
    jr nc, jr_055_6c5d

    inc a
    dec h
    dec de
    rrca
    ccf
    rrca
    rlca
    rlca
    rrca
    jr c, jr_055_6cac

    cp $09
    sub e
    adc c
    rst $38
    ld a, a
    ld a, $1c
    inc a
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld h, [hl]
    ld b, $26
    add c
    ld h, [hl]
    inc bc
    ld a, a
    add h
    ccf
    jr c, jr_055_6cc3

    cp $03
    sub e
    add [hl]
    di
    ld [hl], a
    ld h, $4e
    ld e, h
    sbc [hl]
    inc bc
    rst $38
    adc d
    ld a, a
    jr c, jr_055_6cd3

    cp $93
    sub e
    di
    ld b, a
    ld b, [hl]

jr_055_6c5d:
    ld a, [c]
    inc bc
    sub e
    add a
    rst $38
    ld a, a
    ld a, $1c
    db $fc
    cp $fe
    ld b, $96
    sub b
    add e
    add e
    rst $30
    ld a, a
    ld e, $1e
    ld c, $fe
    rst $38
    rst $38
    sbc a
    sbc a
    sbc b
    add h
    add d
    di
    inc bc
    sub e
    adc h
    rst $38
    ld a, a
    ld a, $1c
    jr c, jr_055_6d00

    cp $93
    sub e
    sbc a
    add a
    add d
    inc b
    sub e
    sub b
    rst $38
    ld a, a
    ld a, $1c
    cp $ff
    rst $38
    di
    ld [hl], e
    inc hl
    daa
    ld h, $46
    ld c, [hl]
    ld c, h
    ld c, h
    inc bc
    ld a, h
    add h
    inc a
    jr c, jr_055_6d1f

    cp $03
    sub e
    add e
    ld b, a
    ld b, [hl]
    sub d
    inc bc
    sub e

jr_055_6cac:
    add a
    rst $38
    ld a, a
    ld a, $1c
    jr c, jr_055_6d2f

    cp $03
    sub e
    add e
    add e
    ld b, e
    di
    inc bc
    sub e
    add h
    rst $38
    ld a, a
    ld a, $1c
    ld [de], a
    nop

jr_055_6cc3:
    add h
    ld a, h
    cp $7c
    ld a, [hl]
    inc bc
    rst $38
    add a
    ld a, $00
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [bc]

jr_055_6cd3:
    inc bc
    add h
    rlca
    rrca
    rst $38
    cp $04
    nop
    adc h
    jr c, jr_055_6d5a

jr_055_6cde:
    jr c, jr_055_6cde

    ld a, h
    jr c, jr_055_6d61

    rst $28
    nop
    nop
    rst $38
    rst $38
    ld de, $0300
    rst $38
    inc e
    nop
    add d
    rst $38
    adc h
    dec c
    nop
    adc b
    inc bc
    cp $03
    adc h
    rst $38
    ei
    db $fc
    rst $38
    inc bc
    db $fc
    adc l
    rst $38

jr_055_6d00:
    add b
    sbc a
    cp a
    rst $18
    cp a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    cp $03
    inc bc
    add d
    rst $38
    nop
    ld b, $ff
    add h
    ei
    db $fc
    rst $38
    add b
    rlca
    sbc a
    add e
    cp a
    rst $18
    cp a
    inc bc

jr_055_6d1f:
    rst $38
    add e
    inc bc
    rst $38
    nop
    inc c
    rst $38
    xor [hl]
    adc h
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc

jr_055_6d2f:
    jr z, jr_055_6d70

    ei
    ld a, $0e
    rst $38
    ld c, $0e
    inc d
    db $fc
    rst $18
    ld a, h
    ld [hl], b
    rst $38
    ld [hl], b
    ld [hl], b
    ld sp, $ff3f
    ccf
    ccf
    rst $38
    ccf
    ccf
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    adc a
    rst $38
    rst $38
    rlca
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    add l
    ldh [$c0], a

jr_055_6d5a:
    rst $38
    nop
    nop
    inc bc
    rst $38
    sub l
    ccf

jr_055_6d61:
    ccf
    rst $38
    ccf
    ccf
    pop af
    rst $38
    rst $38
    adc b
    adc h
    ei
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc

jr_055_6d70:
    db $fc
    rst $38
    db $fc
    db $fc
    adc a
    inc bc
    rst $38
    adc h
    nop
    nop
    rst $38
    rst $38
    nop
    inc bc
    cp $02
    inc bc
    rst $38
    inc bc
    inc bc
    inc b
    rst $38
    adc h
    nop
    nop
    rst $38
    rst $38
    nop
    ret nz

    ld a, a
    ld b, b
    ret nz

    rst $38
    ret nz

    ret nz

    inc b
    rst $38
    adc a
    ld de, $df31
    rst $38
    ccf
    ccf
    rst $38
    ccf
    ccf
    rst $38
    ccf
    ccf
    pop af
    rst $38
    rst $38
    dec bc
    nop
    add l
    rst $38
    rst $38
    add b
    sbc a
    sbc a
    ld [$8800], sp
    inc bc
    ld [bc], a
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld [$8800], sp
    ret nz

    ld b, b
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    rst $38
    dec bc
    nop
    add l
    rst $38
    rst $38
    ld bc, $f9f9
    rlca
    sbc a
    add a
    cp a
    sbc a
    rst $18
    sbc a
    cp a
    rst $18
    cp a
    ld [hl+], a
    rst $38
    rlca
    ld sp, hl
    adc d
    db $fd
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    ei
    db $fd
    rst $38
    rst $38
    ld bc, $0203
    add a
    ld b, $0e
    ld a, h
    add b
    ld a, h
    ld c, $06
    inc bc
    ld [bc], a
    add c
    ld bc, $0005
    add a
    inc c
    dec bc
    dec b
    ld b, $05
    dec bc
    inc c
    ld a, [bc]
    nop
    adc b
    inc e
    rla
    ld [$0204], sp
    ld b, $05
    ld [bc], a
    inc bc
    nop
    ld [$08ff], sp
    nop
    add c
    rst $38
    rlca
    add b
    add c
    rst $38
    rlca
    nop
    ld de, $03ff
    add b
    dec b
    rst $38
    inc bc
    nop
    dec b
    rst $38
    rlca
    add b
    add c
    rst $38
    inc bc
    nop
    inc b
    add b
    add e
    rst $38
    rst $38
    ret nz

    inc bc
    rst $08
    adc h
    adc $ce
    rst $38
    rst $38
    ld bc, $f9f1
    ld sp, hl
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    ld b, $c0
    add h
    rst $38
    rst $38
    ld bc, $0431
    add hl, sp
    sbc b
    rst $38
    rst $38
    ret nz

    rst $08
    rst $08
    rst $00
    ret nz

    rst $08
    rst $38
    rst $38
    ld bc, $f9f1
    ld sp, hl
    add hl, sp
    ld sp, hl
    rst $38
    rst $38
    ret nz

    rst $08
    rst $08
    rst $00
    ret nz

    jp Jump_000_3905


    add e
    add hl, de
    ld bc, $08ff
    add b
    ld [$1400], sp
    rst $38
    inc b
    add b
    inc b
    rst $38
    inc b
    nop
    inc b
    add b
    inc b
    nop
    ld [$0380], sp
    adc $85
    rst $08
    rst $08
    rst $00
    ret nz

    rst $38
    inc bc
    add hl, sp
    inc bc
    ld sp, hl
    add d
    ld bc, $07ff
    ret nz

    add c
    rst $38
    dec b
    add hl, sp
    sbc [hl]
    add hl, de
    ld bc, $cfff
    rst $08
    adc $cf
    rst $08
    rst $00
    ret nz

    rst $38
    ld sp, hl
    ld sp, hl
    ld bc, $f9f1
    ld sp, hl
    ld bc, $c3ff
    pop bc
    ret nz

    rst $08
    rst $08
    rst $00
    ret nz

    rst $38
    ld sp, hl
    ld sp, hl
    add hl, sp
    inc bc
    ld sp, hl
    add c
    ld bc, $ff03
    add d
    ret nz

    call z, $ce03
    add l
    rst $08
    rst $38
    rst $38
    ld bc, $0331
    add hl, sp
    add h
    ld sp, hl
    rst $38
    rst $38
    ret nz

    inc bc
    rst $08
    sub h
    adc $cf
    rst $38
    rst $38
    ld bc, $f9f1
    ld sp, hl
    ld bc, $7df1
    rst $00
    sub d
    sbc [hl]
    sbc [hl]
    sub d
    rst $00
    ld a, l
    rst $38
    jr jr_055_6edc

    ld c, h
    sbc c
    jr @+$01

jr_055_6edc:
    rst $30
    ld c, l
    push bc
    push bc
    ret


    ret


    ld c, l
    ei
    nop
    nop
    rrca
    inc de
    inc l
    dec sp
    scf
    ld [hl], $00
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    nop
    add l
    ldh a, [$f8]
    db $fc
    or $f6
    dec bc
    ld [hl], $a8
    dec sp
    cpl
    db $10
    rrca
    rlca
    nop
    ld [hl], $36
    sub $f6
    inc c
    ld hl, sp-$10
    nop
    adc e
    db $d3
    db $d3
    and l
    adc e
    db $d3
    call $b885
    ldh a, [rIE]
    cp [hl]
    cp l
    dec l
    sub l
    add hl, sp
    dec l
    ld [de], a
    ld [hl], e
    rst $30
    rst $38
    cp h
    db $f4
    jp hl


    rst $08
    rst $00
    dec b
    ret nz

    add e
    rst $38
    ld sp, hl
    ld sp, hl
    inc bc
    add hl, sp
    adc d
    add hl, de
    ld bc, $cfff
    rst $00
    ret nz

    rst $08
    rst $08
    rst $00
    ret nz

    inc bc
    rst $38
    add a
    ret nz

    rst $08
    rst $08
    rst $00
    ret nz

    ret nz

    nop
    inc bc
    ld bc, $199e
    dec l
    ld b, [hl]
    add e
    nop
    ldh [$38], a
    inc c
    and $f2
    dec de
    add hl, bc
    rst $20
    rst $30
    ld [hl-], a
    add hl, de
    inc e
    rrca
    rlca
    ld bc, $0b09
    inc de
    and $0e
    inc a
    ld hl, sp-$40
    jr c, jr_055_6fe0

    inc b
    adc $94
    ld a, h
    jr c, jr_055_6f6a

jr_055_6f6a:
    ld b, d
    inc h
    jr jr_055_6f86

    inc h
    ld b, d
    nop
    cp $82
    sbc h
    add d
    ld [hl], d
    ld [hl], d
    add d
    db $fc
    ld a, h
    add d
    inc b
    sub d
    or $82
    ld a, h
    rst $38
    ld h, [hl]
    ld [$5126], sp
    ret z

jr_055_6f86:
    scf
    rst $38
    rst $38
    add e
    add c
    sbc c
    sub c
    add c
    pop bc
    rst $38
    and c
    jp $8741


    rst $08
    ld e, [hl]
    ld e, a
    rst $38
    or b
    nop
    db $fc
    cp $87
    db $e3
    add c
    ld d, b
    add a
    dec bc
    ld a, b
    di
    rst $30
    rst $18
    ld a, [$edfc]
    rst $00
    rst $10
    ld l, l
    ret c

    xor b
    jr nc, jr_055_7001

    ld e, a
    rst $28
    sub a
    adc a
    dec e
    jr c, jr_055_701d

    adc h
    and d
    add c
    sub a
    rst $08
    db $ed
    ld h, c
    ld [hl], b
    db $76
    rst $00
    add h
    ld l, [hl]
    rst $38
    cp h
    scf
    ld c, a
    cp a
    sbc d
    or c
    sbc l
    dec hl
    dec sp
    rst $20
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    di
    ret nz

    db $10
    ld h, b
    ret nz

    or a
    rst $28
    pop bc
    pop hl
    pop af
    ld a, b
    dec sp
    dec e

jr_055_6fe0:
    rst $38
    db $db
    add $c5
    jp $c0c0


    ld b, c
    and b
    ld h, b
    ret nz

    add b
    nop
    nop
    sub b
    sub b
    dec a
    ld [bc], a
    inc b
    ld bc, $0004
    ld hl, sp+$63
    rst $20
    rst $00
    ld c, $0c
    rra
    rra
    ld a, $ce
    add a

jr_055_7001:
    rlca
    rlca
    jp $a3c3


    ret nz

    rst $20
    di
    db $e3
    cp l
    jp hl


    ldh a, [$e0]
    ret z

    ld a, a
    rst $30
    db $e3
    pop de
    jp hl


    ret c

    or b
    ld h, h
    ld a, [hl]
    rst $38
    db $e3
    di
    pop hl
    reti


jr_055_701d:
    or b
    ld l, h
    or b
    inc bc
    rrca
    ld e, $3c
    dec a
    ei
    cp $03
    ld sp, hl
    cp b
    inc c
    adc [hl]
    add d
    db $10
    and c
    dec e
    rra
    rrca
    nop
    inc bc
    ld a, c
    db $fc
    db $fc
    ldh [$c0], a
    ret nz

    jr c, jr_055_7059

    add c
    rra
    ld a, a
    inc e
    ccf
    inc a
    ld a, a
    ld a, [hl]
    ld l, h
    jr jr_055_7085

    cp a
    dec de
    ld a, $3b
    ld a, [hl]
    ld l, l
    ld e, e
    ld e, $80
    ld d, b
    or b
    ld h, b
    ret z

    sub b
    ld h, c
    db $c3, $1c, $0c


jr_055_7059:
    inc c
    ld c, $06
    ld b, $c6
    add $43
    jp $47c7


    rst $00
    add a
    ld b, a
    jp $b830


    ld a, b
    ret c

    ld a, a
    rst $18
    cp a
    cp $07
    nop
    sub h
    ld bc, $3b3d
    inc a
    rra
    rrca
    inc bc
    inc bc
    rst $00
    pop bc
    ld b, e
    rst $08
    sbc a
    rst $38
    rst $38
    and $e2
    jr nc, jr_055_70e5

jr_055_7085:
    call z, $ff03
    add l
    inc a
    ld a, h
    ret c

    jr c, @-$06

    inc bc
    rst $38
    db $d3
    inc e
    rrca
    ld e, b
    ld sp, $ff7f
    cp $fc
    ld a, b
    ld a, $c7
    rrca
    adc a
    sbc a
    rst $08
    rst $18
    rst $20
    ldh [$e2], a
    ld [c], a
    db $e3
    pop hl
    db $e3
    pop hl
    pop hl
    nop
    jp $cf47


    ret c

    ldh [$c6], a
    rst $00
    jp $c7ff


    ldh a, [$f8]
    inc a
    ld l, $83
    pop hl
    add e
    rst $20
    ld a, a
    rrca
    rra
    inc a
    dec sp
    rst $38
    jp $80c0


    add b
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a
    nop
    nop
    ld bc, $0f07
    rra
    ld e, $18
    nop
    nop
    rst $38
    rst $38
    di
    ld l, $7f
    inc b
    nop
    nop
    ret nz

    ld hl, sp-$02
    rst $38
    rra
    db $10
    inc bc

jr_055_70e5:
    nop
    cp b
    rrca
    ccf
    cp $f4
    rlca
    rra
    ld a, $7c
    ld sp, hl
    ld a, [c]
    push af
    inc bc
    db $fc
    cp [hl]
    rst $30
    add sp, $78
    db $fc
    adc $80
    rst $08
    rst $08
    rst $18
    ei
    cp a
    db $fd
    or e
    ld b, a
    add a
    add c
    and b
    ld a, b
    ldh a, [$a0]
    ld b, b
    ldh [$c1], a
    ldh [$f0], a
    ldh a, [$78]
    jr c, jr_055_7142

    nop
    rst $28
    ei
    ld a, a
    rra
    inc bc
    nop
    rlca
    rrca
    ldh [$e0], a
    ret nz

    ret nz

    inc bc
    nop
    sbc l
    ld bc, $0000
    ld bc, $0301
    ld bc, $f000
    pop bc
    ld b, b
    ret nz

    add b
    ret nz

    ld b, b
    pop bc
    ld b, e
    ld hl, sp+$1c
    inc bc
    ld bc, $fc02
    rst $38
    rst $38
    ei
    cp $9f
    ld c, $03
    rlca
    reti


jr_055_7142:
    jp $f820


    ld a, h
    rst $18
    rst $38
    ld [hl], e
    cp l
    cp $1c
    ld e, $1f
    adc a
    rst $38
    rst $38
    cpl
    cp l
    ld a, h
    xor c
    inc bc
    rlca
    rst $08
    dec e
    rst $38
    add $78
    ld hl, sp-$2c
    ld d, h
    db $ed
    ld a, d
    ld e, e
    ld [hl], e
    cpl
    cp a
    ld l, l
    push de
    ld h, l
    rst $08
    xor a
    dec e
    inc bc
    cpl
    rla
    scf
    ld d, a
    di
    ld c, e
    jp Boot


    add b
    add b
    add a
    add c
    add e
    add c
    rst $08
    set 0, e
    pop bc
    ld b, c
    nop
    add b
    ret nz

    ei
    cp a
    sbc a
    sub $ec
    ei
    rst $38
    ld [hl], a
    rst $38
    rst $38
    add e
    ld l, c
    ret nc

    db $e3
    rst $30
    rst $30
    ld c, $fc
    pop af
    pop hl
    inc bc
    db $e3
    rst $20
    rst $30
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld d, l
    nop
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    jp z, $cacd

    call $cdca
    jp z, $cacd

    call $cdca
    jp z, $cacd

    call Call_055_5faf
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    db $10
    db $fc
    db $10
    ccf
    add c
    nop
    rrca
    ld a, a
    add c
    nop
    rrca
    rst $38
    db $10
    rst $08
    db $10
    rst $38
    add h
    nop
    rra
    cpl

jr_055_71f8:
    ld e, a
    inc c
    ld a, a
    add c
    rlca
    inc bc
    rst $38
    adc l
    rst $20
    db $db
    cp l
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    jr jr_055_71f8

    sub a
    ld a, e
    and a
    ldh [$03], a
    rst $38
    adc l
    push de
    dec d
    cp $11
    sub e
    ld d, l
    ld d, d
    sub d
    rst $00
    cp e
    jp $009d


    inc bc
    rst $38
    adc b
    add c
    ld a, [hl]
    ld b, d
    add d
    dec a
    push bc
    res 6, a
    inc bc
    rst $38
    add d
    rst $18
    nop
    inc bc
    rst $38
    adc l
    rra
    db $ed
    ld a, [de]
    ld a, [$f5fa]
    dec bc
    rst $30
    jp $cbbd


    cp l
    nop
    inc bc
    rst $38
    adc l
    push af
    ret nz

    ld a, $c9
    rla
    rst $10
    jp hl


    or $ff
    or e
    ld d, l
    ld e, d
    nop
    dec bc
    rst $38
    add l
    rst $30
    xor e
    ld e, l
    ld l, d
    nop
    dec bc
    rst $38
    add l
    ei
    push af
    db $eb
    rst $10
    nop
    dec bc
    rst $38
    adc b
    add e
    ld a, l
    adc e
    sbc l
    nop
    ld hl, sp-$0c
    ld a, [$fe0c]
    inc c
    ld a, a
    sub b
    ld e, a
    cpl
    rra
    nop
    ld a, c
    xor d
    and d
    db $dd
    rst $38
    jp $c2bd


    push af
    cp e
    ld b, c
    cp [hl]
    inc bc
    rst $38
    adc l
    nop
    ld h, d
    sbc d
    push bc
    cp e
    cp a
    ld e, l
    ld d, d
    xor l
    or e
    ld c, a
    ld b, c
    cp [hl]
    inc bc
    rst $38
    add c
    nop
    inc bc
    rst $38
    adc c
    cp l
    push af
    jp c, $f225

    ld a, [hl+]
    ld c, c
    adc e
    scf
    inc bc
    rst $38
    adc l
    nop
    res 7, e
    ld c, l
    or e
    push af
    ret nz

    ld a, $c9
    rla
    rst $10
    jp hl


    or $03
    rst $38
    adc l
    nop
    ld e, d
    ld b, d
    ld d, l
    xor a
    rst $28
    sub a
    ld a, l
    adc c
    cp [hl]
    add l
    ld b, e
    cp l
    inc bc
    rst $38
    adc l
    nop
    jp nc, $aab2

    push de
    jp $cbbd


    cp l
    res 7, e
    ld c, l
    or e
    inc bc
    rst $38
    adc l
    nop
    xor a
    rst $10
    db $eb
    push af
    rst $30
    adc c
    ld a, [hl]
    adc c
    cp e
    xor e
    sbc e
    ld [hl], a
    inc bc
    rst $38
    add l
    nop
    ld h, d
    sbc d
    ld a, [hl+]
    db $dd
    dec bc
    rst $38
    add c
    nop
    inc c
    cp $88
    ld a, [$f8f4]
    nop
    nop
    rra
    cpl
    ld e, a
    inc c
    ld a, a
    add c
    nop
    inc bc
    rst $38
    adc l
    inc bc
    db $fd
    jp Jump_000_06fd


    cp $86
    ld a, l
    ld [$aad5], a
    ld d, l
    nop
    inc bc
    rst $38
    add e
    rst $00
    cp e
    ld c, l
    inc bc
    rst $10
    add a
    ld h, l
    cp e
    ld de, $02fe
    push hl
    nop
    inc bc
    rst $38
    add e
    add c
    ld a, [hl]
    add d
    inc bc
    ld a, [$8287]
    ld a, [hl]
    rst $10
    sub a
    ld d, a
    ld d, l
    nop
    inc bc
    rst $38
    adc l
    ld a, [$cbf5]
    scf
    sra e
    db $eb
    db $eb
    push af
    jp c, $f225

    nop
    inc bc
    rst $38
    adc l
    rra
    db $ed
    ld a, [de]
    ld a, [$f5fa]
    dec bc
    rst $30
    rst $20
    db $db
    cp e
    db $db
    nop
    inc bc
    rst $38
    adc l
    push af
    jp nz, $c2bd

    push af
    cp e

jr_055_7351:
    ld b, c
    cp [hl]
    jp $cbbd


    cp l
    rlca
    inc bc
    rst $38
    adc l
    cp a
    ld e, l
    ld d, d
    xor l
    or e
    ld c, a
    ld b, c
    cp [hl]
    rst $38
    or e
    ld d, l
    ld e, d
    ldh [rDIV], a
    rst $38
    add a
    and c
    ld e, [hl]
    ld b, c
    ld e, a
    ld b, a
    ld c, c
    or [hl]
    inc b
    rst $38
    add h
    nop
    ld hl, sp-$0c
    ld a, [$fe0c]
    inc c
    ld a, a
    sub b
    ld e, a
    cpl
    rra
    nop
    ld d, l
    cp d
    cp d
    ld a, d
    rst $30
    xor e
    ld e, l
    ld l, d
    jp nc, $aab2

    push de
    inc bc
    rst $38
    adc l
    nop
    db $db
    dec [hl]
    jp nc, $fb15

    push af
    db $eb
    rst $10

jr_055_739a:
    xor a
    rst $10
    db $eb
    push af
    inc bc
    rst $38
    adc l
    nop
    ld d, d
    ld d, d
    ld d, l
    sbc e
    rst $00
    cp e
    jp Jump_055_52ad


    ld l, d
    add d
    db $dd
    inc bc
    rst $38
    add hl, bc
    nop
    adc b
    rst $38
    db $eb
    call z, $c8cf
    cp a
    cp a
    or b
    ld [$8b00], sp
    jp $00c3


    jp $ff00


    rst $38
    nop
    or b
    and b
    ldh [rDIV], a
    jr nz, jr_055_7351

    db $10
    ld [$0204], sp
    ld bc, $0004
    add d
    rst $38
    db $db
    inc b
    cp l
    add [hl]
    and l
    rst $38
    rst $38
    nop
    nop
    rst $38
    inc b
    nop
    db $10
    rst $38

Jump_055_73e3:
    add c
    ccf
    ld c, $3d
    add d
    ccf
    jr c, jr_055_73f9

    jr z, jr_055_739a

    jr c, jr_055_73ef

jr_055_73ef:
    ld bc, $0f07
    ld a, [de]
    rla
    rra
    rla
    ld e, $3f
    ld a, a

jr_055_73f9:
    rst $38
    db $f4
    ld l, e
    jr nc, jr_055_73fe

jr_055_73fe:
    nop
    db $fc
    xor d
    push af
    rst $38
    rst $38
    db $fd
    sbc $ef
    rst $38
    db $fd
    ld a, [$087c]
    ldh a, [rP1]
    ld a, [hl+]
    ld c, c
    adc e
    scf
    di
    xor l
    ld d, l
    push de
    ld h, l
    ld d, l
    push de
    ld e, d
    inc bc
    rst $38
    add c
    nop
    inc bc
    db $db
    adc c
    cp l
    jp $cbbd


    cp l
    res 7, e
    ld c, l
    or e
    inc bc
    rst $38
    adc l
    nop
    res 7, e
    ld c, l
    or e
    rst $30
    adc c
    ld a, [hl]
    adc c
    cp e
    xor e
    sbc e
    ld [hl], a
    inc bc
    rst $38
    add l
    nop
    ld e, d
    ld b, d
    ld d, l
    xor a
    dec bc
    rst $38
    add c
    nop
    rrca
    rst $38
    add c
    nop
    inc c
    cp $95
    ld a, [$f8f4]
    nop
    nop
    rra
    cpl
    ld e, a
    ld a, a
    ld a, e
    ld [hl], h
    ld a, l
    db $76
    ld [hl], l
    ld a, l
    ld [hl], h
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    nop
    inc b
    rst $38
    adc h
    inc a
    jp nc, $a42f

    and h
    ld a, [hl+]
    db $d3
    dec e
    pop bc
    ld l, a
    pop bc
    nop
    inc bc
    rst $38
    adc l
    ld a, a
    cp a
    ld e, a
    ld l, $a9
    sub [hl]
    cp b
    ld a, l
    ld e, b
    ld d, a
    db $e4
    jr jr_055_7481

jr_055_7481:
    inc bc
    rst $38
    adc l
    cp $f9
    rst $30
    ld a, d
    or h
    ld d, h
    ld e, c
    cp d
    ld de, $21ee
    cpl
    nop
    inc bc
    rst $38
    adc l
    ei
    ld [hl], l
    push de
    ld a, [de]
    db $eb
    inc d
    inc d
    db $eb
    cp $d9
    and a
    xor d
    nop
    inc b
    rst $38
    adc h
    call c, $dc2b
    ccf
    ei
    inc d
    db $eb
    db $fd
    ld a, [hl-]
    db $db
    ld d, $00
    inc bc
    rst $38
    adc l
    cp $39
    sub $29
    ld d, e
    cp h
    ld [de], a
    db $ed
    db $db
    dec h
    and l
    dec d
    nop
    inc bc
    rst $38
    cp b
    ccf
    call c, $3cb3
    pop de
    dec l
    ld l, $df
    rst $38
    db $fc
    di
    db $fc
    nop
    ld hl, sp-$0c
    ld a, [$0e5e]
    xor $9e
    ld a, [hl]
    ld a, [hl]
    sbc [hl]
    ld l, [hl]
    sbc [hl]
    ld l, [hl]
    sbc $be
    db $76
    db $76
    ld [hl], a
    ld [hl], b
    ld a, a
    ld a, h
    ld a, e
    ld a, h
    ld a, a
    ld a, e
    ld [hl], h
    ld a, e
    ld e, a
    cpl
    rra
    nop
    ld l, c
    ld h, l
    push bc
    add hl, de
    cp $39
    rst $10
    ld a, [hl+]
    ld d, h
    or h
    add hl, de
    ld_long $ff03, a
    adc l
    nop
    inc sp
    ld e, h
    inc l
    dec hl
    db $fc
    ld a, e
    call c, $e817
    dec e
    ld a, [de]
    push hl
    inc bc
    rst $38
    adc l
    nop
    rst $18
    ld e, a
    or b
    ld a, a
    ld a, a
    cp h
    ld [hl], e
    call c, Call_055_7db1
    sbc [hl]
    ld l, a
    inc bc
    rst $38
    adc l
    nop
    and a
    ld e, c
    cp d
    ld a, e
    sbc a
    ld l, a
    sbc $bd
    ld a, d
    ld a, l
    sbc [hl]
    ld l, a
    inc bc
    rst $38
    adc l
    ld a, [hl]
    ld l, e
    sub [hl]
    ld a, [de]
    and $be
    ld e, c
    or a
    ld a, d

jr_055_7537:
    db $f4
    ld [hl], h
    or l
    ld e, d
    inc bc
    rst $38
    adc l
    nop
    push de
    dec h
    and h
    ld e, e
    ld e, [hl]
    add hl, hl
    rst $10
    jr jr_055_7537

    dec de
    inc d
    db $eb
    inc bc
    rst $38
    adc l
    nop
    pop af
    cp l
    ld e, [hl]
    cp a
    rst $38
    dec sp
    push de
    or l
    ld d, l
    ld d, h
    dec [hl]
    jp c, $ff03

    sbc c
    nop
    ld a, [hl]
    ld a, [hl]
    sbc [hl]
    ld l, [hl]
    cp $3e
    ld e, [hl]
    xor [hl]
    xor [hl]
    ld l, $5e
    cp $fa
    db $f4
    ld hl, sp+$00
    nop
    ld bc, $0502
    dec bc
    rla
    cpl
    ccf
    ld [$2007], sp
    nop
    ld h, c
    rst $38
    rrca
    add b
    add c
    rst $38
    rrca
    nop
    db $10
    ld hl, sp+$10
    rrca
    add h
    rra
    ccf
    ld [hl], b
    ldh [$0c], a
    ret nz

    add a
    db $fc
    db $fc
    nop
    nop
    jr jr_055_75d1

    ld a, [hl]
    inc b
    rst $38
    sbc d
    rst $20
    db $10
    ld a, b
    db $fc
    ld a, b
    ccf
    ccf
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $7c
    cp $ff
    rst $38
    jr c, jr_055_7628

    inc a
    ld a, [hl]
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    inc bc
    rst $38
    xor d
    cp $3e
    inc a
    ld a, b
    nop
    jr jr_055_75f5

    jr c, @+$01

    rst $38
    nop
    nop
    ldh [$f2], a
    rst $20
    rlca
    rlca
    ld c, $fc
    ld hl, sp+$3c
    ld a, [hl]
    inc a
    ld a, [hl]
    rst $38
    rst $38
    nop

jr_055_75d1:
    nop
    rrca

jr_055_75d3:
    ccf
    rst $38
    cp $f8
    jr c, jr_055_75f7

    rrca
    nop
    ld c, h
    xor $e7
    rst $38
    rst $38
    ld a, [bc]
    nop
    add e
    ld [$fe5c], sp
    inc bc
    rst $38
    ld a, [bc]
    nop
    add [hl]
    inc b
    ld c, $1c
    jr c, @+$01

    rst $38
    ld a, [bc]
    nop
    adc b
    ld a, h

jr_055_75f5:
    cp $7c

jr_055_75f7:
    ld a, [hl]
    ld hl, sp-$04
    ld c, $07
    inc c
    inc bc
    inc c
    ret nz

    sub d
    ldh [rSVBK], a
    ccf
    rra
    cp $77
    ld a, a
    ld a, $00
    inc a
    ld a, [hl]
    ccf
    ld c, $44
    cp $7f
    nop
    nop
    inc bc
    rst $38
    adc a
    ld h, a
    ld a, $7c
    ld b, b
    ld [c], a
    rst $28
    ld a, [hl]
    ld a, h
    ldh a, [$fe]
    ld a, a
    nop
    nop
    rst $38
    rst $38
    inc bc
    jr jr_055_75d3

jr_055_7628:
    ld a, [hl]
    rrca
    dec h
    cp $ff
    rst $38
    cp $fc
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    inc a
    ld a, h
    cp $7c
    rrca
    ccf
    rst $38
    cp $f8
    jr c, jr_055_765e

    rrca
    nop
    nop
    rst $38
    rst $38
    rst $20
    rst $38
    ld a, [$1070]
    ld a, b
    cp $7e
    ld a, a
    ld a, [hl]
    db $fc
    ld a, [hl]
    nop
    nop
    inc b
    rst $38
    sub [hl]
    rst $30
    ld l, [hl]
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    ld a, h

jr_055_765e:
    cp $7c
    nop
    nop
    rst $38
    rst $38
    ld [hl], b
    jr c, jr_055_7683

    ld c, $08
    ld a, [hl]
    rst $38
    ld a, [hl]
    inc bc
    ld a, h
    add e
    ld hl, sp+$00
    nop
    dec b
    rst $38
    add c
    ld a, $0a
    nop
    add d
    rst $38
    rst $38
    inc c
    inc bc
    adc b
    rlca
    ld c, $fc
    ld hl, sp+$1f

jr_055_7683:
    ccf
    ld [hl], b
    ldh [$0c], a
    ret nz

    sub a
    rst $38
    rst $38
    nop
    nop
    db $fc
    cp $fc
    cp $ff
    rlca
    rst $38
    cp $17
    ccf
    ld e, a
    xor $ff
    rst $38
    nop
    nop
    jr c, @+$7e

    cp $03
    xor $8d
    cp $7c
    cp $ff
    rst $38
    ld e, $ff
    rst $38
    nop
    nop
    ld a, [hl]
    rst $38
    ld a, a
    inc bc
    rlca
    sub l
    ld a, a
    rst $38
    jr c, @+$7a

    ld hl, sp-$06
    rst $38
    rst $38
    nop
    nop
    rlca
    ld c, $3c
    ld hl, sp-$04
    call c, Call_000_1c1c
    rrca
    dec h
    cp $03
    rst $38
    or b
    nop
    nop
    ldh [$f2], a
    rst $20
    rlca
    rlca
    ld c, $fc
    ld hl, sp+$18
    inc a
    ld a, h
    inc a
    rst $38
    rst $38
    nop
    nop
    rrca
    dec a
    ld a, [hl]
    ccf
    ld c, $44
    cp $7f
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    db $fc
    db $fc
    nop
    nop
    ld b, b
    ld [c], a
    rst $28
    ld a, [hl]
    ld a, h
    ldh a, [$fe]
    ld a, a
    nop
    ld c, h
    xor $e7
    ccf
    ccf
    inc bc
    nop
    add a
    ld e, [hl]
    rst $38
    cp $e0
    ld hl, sp-$02
    ld l, a
    inc b
    nop
    add h
    ld hl, sp-$04
    ld c, $07
    inc c
    inc bc
    inc c
    ret nz

    adc e
    ldh [rSVBK], a
    ccf
    rra
    xor $c7
    rst $00
    add a
    ld [$fe5c], sp
    inc bc
    rst $38
    sub h
    rst $30
    ld l, [hl]
    nop
    nop
    rst $38
    rst $38
    inc a

jr_055_7726:
    cp $ff
    ld a, [$0e04]
    inc e
    jr c, @+$72

    jr c, jr_055_774c

    ld c, $00
    nop
    inc b
    rst $38
    adc [hl]
    cp $fc
    jr c, jr_055_77b6

    inc a
    ld a, [hl]
    rst $38
    rst $30
    ld a, a
    ld a, $00
    nop
    rst $38
    rst $38
    ld [$8800], sp
    rst $38
    sbc h
    cp a
    cp a
    cp b

jr_055_774c:
    rst $38
    ldh [$ef], a
    ld [$8b00], sp
    jp $c300


    jp $ff00


    nop
    rst $38
    rst $28
    rst $38
    rst $38
    inc b
    ccf
    add l
    rra
    rrca
    rlca
    inc bc
    ld bc, $0004
    add [hl]
    rst $38
    and l
    jp $dbdb


    jp $ff06


    inc b
    nop
    add c
    rst $38
    ld c, $81
    add d
    rst $38
    ccf
    ld c, $27
    add c
    ccf
    db $10
    jr c, jr_055_7726

    nop
    ld bc, $0806
    rla
    inc e
    jr jr_055_77a3

    inc de
    jr nz, jr_055_77cb

    add [hl]
    adc a
    ld e, e
    jr nc, jr_055_7790

jr_055_7790:
    nop
    db $fc
    db $76
    dec de
    ld bc, $e701
    ld [c], a
    ld e, c
    ld a, c
    inc de
    ld [hl], $a4
    ld hl, sp-$10
    nop
    rst $38
    cp $fc

jr_055_77a3:
    ld hl, sp+$0c
    ld e, [hl]
    inc bc
    cp $87
    xor $ee
    rst $20
    nop
    nop
    rst $38
    rst $38
    inc bc
    inc a
    sub l
    ld a, [hl]
    inc a
    ld a, [hl]

jr_055_77b6:
    inc a
    ld a, [hl]
    inc a
    ld a, h
    cp $7c
    nop
    nop
    rst $38
    rst $38
    inc a
    ld a, h
    cp $7c
    ld [$ff7e], sp
    ld a, [hl]
    inc bc
    ld a, h
    adc c

jr_055_77cb:
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    rst $20
    rst $38
    ld a, [$0a70]
    nop
    add d
    rst $38
    rst $38
    ld c, $00
    add d
    rst $38
    rst $38
    inc c
    inc bc
    adc d
    rlca
    ld c, $fc
    ld hl, sp+$1f
    ccf
    ld [hl], b
    ldh [$c0], a
    call nz, $cf03
    add h
    adc $ce
    rst $08
    rst $00
    inc bc
    rst $08
    add d
    rst $38
    rst $38
    inc bc
    nop
    adc b
    jp $ffef


    ld a, a
    ld a, a
    db $fd
    rst $28
    db $e3
    dec b
    rst $38
    or b
    nop
    nop
    add b
    ret nz

    ldh [$f1], a
    rst $30
    rst $28
    rst $00
    add e
    rst $30
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    nop
    nop
    ld bc, $0f07
    add a
    rst $08
    rst $28
    rst $28
    call $ffee
    cp $f0
    rst $38
    rst $38
    nop
    nop
    inc b
    adc [hl]
    xor $e7
    rst $30
    rst $28
    rst $28
    rst $30
    ld bc, $7f27
    ld [hl], a
    rst $38
    rst $38
    inc bc
    nop
    xor a
    inc hl
    rst $30
    db $e3
    ret nz

    inc b
    rst $28
    rst $30
    ld [bc], a
    rst $00
    rst $20
    rst $28
    rst $38
    rst $38
    nop
    nop
    ld bc, $efc7
    rst $30
    rst $28
    ld c, a
    db $ed
    di
    inc h
    cp $fe
    xor $ff
    rst $38
    nop
    nop
    ret nz

    db $e3
    rst $08
    rst $08
    rst $28
    di
    pop af
    ldh [rP1], a
    inc bc
    rrca
    rrca
    ld hl, sp-$04
    ld c, $07
    inc bc
    di
    adc c
    db $e3
    add e
    add e
    db $e3
    di
    ld h, e
    di
    db $e3
    jp $cf04


    rst $38
    ret nz

    jp $c3c7


    ret nz

    call nz, $c7cf
    ldh [rSVBK], a
    ccf
    rra
    rst $30
    rst $38
    rst $38
    rst $28
    ld bc, $efc7
    rst $30
    rst $28
    ld c, a
    rst $28
    db $fd
    nop
    nop
    rst $38
    rst $38
    rst $08
    db $e3
    di
    rst $30
    inc bc
    add a
    db $e3
    rst $28
    rst $30
    db $e3
    rst $20
    cp $00
    nop
    rst $38
    rst $38
    ldh [$e0], a
    rst $08
    adc a
    add b
    jp $ef8f


    rst $08
    add e
    pop hl
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ld a, a
    rst $20
    rst $00
    add a
    ld h, b
    ldh a, [$e1]
    jp $8387


    pop hl
    ldh a, [rP1]
    nop
    jp $f7c3


    rst $28
    rst $28
    rst $38
    ld b, c
    rst $20
    rst $08
    add a
    rrca
    adc a
    rst $08
    db $ed
    nop
    nop
    rst $38
    rst $38
    xor $fe
    ld a, a
    rst $20
    pop af
    rst $10
    rst $28
    rst $20
    ldh a, [$e4]
    rst $28
    rst $30
    nop
    nop
    rst $38
    rst $38
    rrca
    ld b, e
    pop hl
    ret nz

    nop
    call nz, $ceee
    xor $ef
    rst $08
    rst $20
    nop
    nop
    rst $38
    rst $38
    add e
    add e
    db $e3
    sub [hl]
    di
    inc bc
    jp Jump_055_73e3


    ld [hl], e
    di
    and e
    inc bc
    rlca
    ld c, $fc
    ld hl, sp+$01
    inc bc
    rlca
    ld c, $1c
    jr c, jr_055_797a

    ld a, h
    ld a, h
    rlca
    inc c
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_055_797a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_055_7db1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_055_7fff:
    nop
