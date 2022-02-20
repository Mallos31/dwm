; Disassembly of "game.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    db $56 ;rom bank 
    db $01, $49, $08, $49, $0f, $49, $16, $49, $46, $4a, $85, $44, $c7, $44, $3f
    db $40, $64, $40, $67, $68, $82, $68, $a3, $68, $c6, $68, $71, $6a, $c7, $6b, $a8
    db $6c, $0f, $6d, $7d, $6d, $de, $6d, $30, $6e, $96, $6e, $d6, $6e, $25, $6f, $8a
    db $6f, $da, $6f, $0c, $70, $5e, $70, $c1, $70, $37, $71, $b0, $71, $18, $72

    xor a
    ld hl, $9800
    ld de, $4085

jr_056_4046:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, h
    cp $9b
    jr nz, jr_056_4046

    ld a, l
    cp $ff
    jr nz, jr_056_4046

    ld a, [de]
    ld [hl], a
    ld a, $43
    ld [$c8a1], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


    ld a, [$c842]
    and $01
    cp $01
    jr nz, jr_056_4084

    ld hl, $c8ad
    ld a, [hl+]
    ld [wGameMode], a
    ld a, [hl+]
    ld [$c88b], a
    ld a, [hl+]
    ld [$c88c], a
    ld a, [hl]
    ld [$c88d], a
    ld hl, $c88e
    inc [hl]

jr_056_4084:
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rst $38
    rst $38

jr_056_4097:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_056_40c8

    ld a, [de]
    dec de

jr_056_40b1:
    inc e
    dec e
    ld e, $1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_056_40e8

    ld [hl+], a

jr_056_40c8:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_40f8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_056_4118

    ld [hl-], a

jr_056_40e8:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_4128

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    rst $38
    rst $38

jr_056_40f8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rst $38
    rst $38
    rst $38

jr_056_4118:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    ld d, c
    ld d, d

jr_056_4128:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
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
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_056_4485:
    ld hl, $c829	
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [$c827]	;loads address to start of which vram bank to load to into hl and 
    ld l, a
    ld a, [$c828]
    ld h, a
    ld a, [$c82a]
    ld c, a

jr_056_4497:
    ld a, [$c829]
    ld b, a

jr_056_449b:
    push bc
    ld b, $10
    ld de, $44b7

jr_056_44a1:
    di

jr_056_44a2:		;copy blank tile from rom to vram when in vblank
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_056_44a2

    ld a, [de]			;load byte of 2bpp tile into vram
    ld [hl+], a			;
    ei
    inc de
    dec b
    jr nz, jr_056_44a1

    pop bc
    dec b
    jr nz, jr_056_449b

    dec c
    jr nz, jr_056_4497

    ret


    INCBIN "gfx/image_056_44b7.2bpp"	;blank tile

    ld a, d
    ld [$c83a], a
    sub $e0
    rst $00

    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld c, $45
    ld de, $1f45
    ld b, l
    ld d, h
    ld b, l

    db $5e, $45

    ld l, c
    ld b, l
    ld [hl], h
    ld b, l
    and a
    ld b, l

    db $ad, $45, $40, $46, $fe, $46, $2b, $47

    ld c, a
    ld b, a
    ld e, b
    ld b, a
    ld [hl], c
    ld b, a
    ld a, h
    ld b, a

    db $82, $47, $b4, $47

    cp a
    ld b, a

    db $ce, $47, $1b, $48

    ld hl, $3548
    ld c, b
    ld c, c
    ld c, b
    ld c, a
    ld c, b
    ld d, l
    ld c, b
    jp Jump_056_4855


    call Call_056_4855
    ld a, $01
    ld [$c83c], a
    ld a, $ff
    ld [$c83a], a
    ret


    call Call_000_0954
    ld d, $00
    call Call_000_0d78
    ld e, a
    call Call_000_0954
    call Call_000_0d78
    ld c, a
    ld a, [$c82a]
    call Call_000_1dbe
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


    call Call_000_0954
    call Call_000_0d78
    call PlaySoundEffect
    ret


    ld hl, $c826
    set 0, [hl]
    ld a, $5b
    ld [$c840], a
    ret


    ld hl, $c826
    set 0, [hl]
    ld a, $5a
    ld [$c840], a
    ret


    ld hl, $c826
    res 7, [hl]
    ld a, [wTextSpeed]
    cp $07
    jr z, jr_056_4593

    ld hl, $45a0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c836], a
    ld hl, $c825
    set 7, [hl]
    ret


jr_056_4593:
    ld hl, $c826
    res 7, [hl]
    ld hl, $c825
    set 2, [hl]
    set 5, [hl]
    ret


    ld b, $0c
    inc d
    ld a, [de]
    jr nz, @+$2a

    jr nc, jr_056_45c9

    ld h, $c8
    set 7, [hl]
    ret


    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a

jr_056_45c9:
    ld a, [$c82a]
    ld b, a
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a
    push bc

jr_056_45d6:
    ld a, e
    call Write_gfx_tile
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_056_45d6

    ld hl, $0020
    call Call_000_0cfd
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call Call_000_0d34
    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    push de
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    pop de

jr_056_4609:
    ld a, $ff
    call Write_gfx_tile_and_inc_HL
    xor a
    call Write_gfx_tile_and_inc_HL
    dec bc
    dec bc
    ld a, b
    or c
    jr nz, jr_056_4609

    pop bc
    ld hl, $0040
    call Call_000_0cfd

jr_056_461f:
    ld a, e
    call Write_gfx_tile
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_056_461f

    ld a, [$c82f]
    ld l, a
    ld a, [$c830]
    ld h, a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld hl, $c825
    res 1, [hl]
    ret


    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    add hl, de
    ld a, [$c82f]
    ld e, a
    ld a, [$c830]
    ld d, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or e
    jr z, jr_056_4679

    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    call Call_000_0954
    ret


jr_056_4679:
    ld a, [$c83e]
    ld l, a
    ld a, [$c83f]
    ld h, a
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call Call_000_0d34
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    ld hl, $0020
    call Call_000_0cfd
    ld a, e
    add b
    ld e, a

jr_056_46b5:
    ld a, e
    call Write_gfx_tile
    call Call_000_0cee
    inc e
    dec b
    jr nz, jr_056_46b5

    ld hl, $0040
    call Call_000_0cfd
    ld a, [$c829]
    ld c, a
    ld a, [$c82a]
    ld b, a
    call Call_000_0d34
    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c827]
    ld e, a
    ld a, [$c828]
    ld d, a
    ld c, l
    ld b, h
    add hl, de

jr_056_46e6:
    di
    call Call_000_1aa6
    ld a, [hl+]
    ei
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_056_46e6

    ld hl, $c825
    set 7, [hl]
    ld a, $04
    ld [$c836], a
    ret


    ld a, [$c825]
    bit 4, a
    jp z, Jump_056_4722

    ld a, [$c825]
    res 4, a
    ld [$c825], a
    call Call_000_0864
    ld a, [$c831]
    ld l, a
    ld a, [$c832]
    ld h, a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


Jump_056_4722:
    xor a
    ld [$c825], a
    xor a
    ld [$c826], a
    ret


    ld a, [$c82a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c82f]
    ld e, a
    ld a, [$c830]
    ld d, a
    add hl, de
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    ld a, l
    ld [$c82f], a
    ld a, h
    ld [$c830], a
    ret


    call Call_000_0864
    call Call_056_4771
    call Call_056_4485
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
    ret


Call_056_4771:
    ld hl, $c826
    res 7, [hl]
    ld hl, $c825
    res 1, [hl]
    ret


    ld hl, $c825
    set 1, [hl]
    ret


    ld hl, $ca42
    ld de, $c0c8
    ld b, $08

jr_056_478a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_056_478a

    ld a, $f0
    ld [de], a
    ld hl, $c825
    set 4, [hl]
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, l
    ld [$c831], a
    ld a, h
    ld [$c832], a
    ld hl, $c0c8
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


    ld hl, $c825
    set 2, [hl]
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c825
    set 3, [hl]
    call Call_000_0954
    call Call_000_0d78
    ld [$c833], a
    ret


    ld hl, $c825
    set 4, [hl]
    ld a, [$c82d]
    ld l, a
    ld a, [$c82e]
    ld h, a
    ld a, l
    ld [$c831], a
    ld a, h
    ld [$c832], a
    ld a, [$c831]
    add $01
    ld [$c831], a
    ld a, [$c832]
    adc $00
    ld [$c832], a
    ld a, [wGameMode]
    cp $0b
    jr nz, jr_056_4806

    ld hl, $0d8a		;ptr to text "MSGBUF"
    ld a, l			;
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


jr_056_4806:
    call Call_000_0d78
    ld de, $c180
    add e
    ld l, a
    ld a, $00
    adc d
    ld h, a
    ld a, l
    ld [$c82d], a
    ld a, h
    ld [$c82e], a
    ret


    ld hl, $c825
    set 5, [hl]
    ret


    ld hl, $c825
    set 6, [hl]
    call Call_000_0954
    call Call_000_0d78
    ld [$c835], a
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c825
    set 7, [hl]
    call Call_000_0954
    call Call_000_0d78
    ld [$c836], a
    ld hl, $c826
    res 7, [hl]
    ret


    ld hl, $c826
    set 0, [hl]
    ret


    ld hl, $c826
    res 0, [hl]
    ret


Call_056_4855:
Jump_056_4855:
    ld hl, $c826
    res 7, [hl]
    ld a, $5c
    call PlaySoundEffect
    ld hl, $0000
    call Call_000_0d11
    ld de, $c500
    ld c, $12

jr_056_486a:
    ld b, $20
    push hl

jr_056_486d:
    di
    call Call_000_1aa6
    ld a, [hl]
    ei
    ld [de], a
    ld a, l
    and $e0
    push af
    ld a, l
    inc a
    and $1f
    ld l, a
    pop af
    or l
    ld l, a
    inc de
    dec b
    jr nz, jr_056_486d

    pop hl
    push bc
    ld bc, $0020
    add hl, bc
    ld a, h
    and $03
    or $98
    ld h, a
    pop bc
    dec c
    jr nz, jr_056_486a

    call Call_056_48a1
    ld hl, $c825
    set 2, [hl]
    xor a
    ld [$c83c], a
    ret


Call_056_48a1:
    ld de, $560a
    ld hl, $8e50
    call Call_000_1577
    ld hl, $0100
    call Call_000_0d11
    ld b, $0e
    call Call_000_0ce7
    ld de, $48de

jr_056_48b8:
    push hl

jr_056_48b9:
    ld a, [de]
    inc de
    cp $d9
    jr z, jr_056_48dc

    cp $d8
    jr nz, jr_056_48d4

    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    jr jr_056_48b8

jr_056_48d4:
    call Write_gfx_tile
    call Call_000_0cee
    jr jr_056_48b9

jr_056_48dc:
    pop hl
    ret


    ld a, [$efef]
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    call nc, $d6d5
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push hl
    and $e0
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


Call_056_4901:
    ld de, $664b
    call Call_000_05b6
    ret


    ld de, $664b
    call Call_000_05f6
    ret


Call_056_490f:
    call Call_056_4901
    call Call_000_0609
    ret


    ld hl, $9000
    ld de, $1207
    call Call_000_098f
    ld hl, wDebug_main_menu_option
    ld bc, $0010
    ld a, $00
    call FillNBytesWithRegA
    ld hl, $9c00
    ld bc, $0400
    ld a, $1f
    call FillNBytesWithRegA
    ld hl, $9c00
    ld bc, $1204
    ld a, $80
    call Call_056_4a0a
    xor a
    ld [$c8da], a
    xor a
    ldh [rVBK], a
    call Call_056_4996
    ld a, $00
    call SetBGM
    ld a, $0a
    ld [$df08], a
    xor a
    ld [$df03], a
    ld a, $98
    ld [$df04], a
    ld a, $8e
    ld [$df05], a
    ld a, $64
    ldh [$b6], a
    ld a, $07
    ldh [$b5], a
    ld h, $98
    ld l, $8e
    ld a, [hl+]
    ld [$df06], a
    ld a, [hl]
    ld [$df07], a
    ld a, $1f
    ld [$c83b], a
    ld a, $7f
    ld [$c83d], a
    xor a
    ld [$df0b], a
    ld [$df0c], a
    ld a, $43
    ld [$c8a1], a
    ld a, $63
    ld [$c8a1], a
    ld a, $01
    jp Jump_000_11cb


Call_056_4996:
    ld hl, $c817
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $0801
    rst $10
    ld hl, $9100
    ld a, $00
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld de, $1002
    call Call_056_49e2
    ld hl, $9300
    ld a, [$c88b]
    inc a
    ld [$c823], a
    ld de, $1004
    call Call_056_49e2
    call Call_056_4a23
    ld hl, $9823
    ld bc, $1002
    ld a, $10
    call Call_056_4a0a
    ld hl, $9883
    ld bc, $1004
    ld a, $30
    call Call_056_4a0a
    call Call_056_4a2f
    ret


Call_056_49e2:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    call Call_056_490f
    ret


Call_056_49f6:
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    call Call_056_4901
    ret


Call_056_4a0a:
jr_056_4a0a:
    push hl
    ld d, b

jr_056_4a0c:
    call Write_gfx_tile_and_inc_HL
    inc a
    dec b
    jr nz, jr_056_4a0c

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
    jr nz, jr_056_4a0a

    ret


Call_056_4a23:
    ld hl, $9800
    ld bc, $0400
    ld a, $1f
    call FillNBytesWithRegA
    ret


Call_056_4a2f:
    ld b, $04
    ld hl, $988e
    ld c, $6f

jr_056_4a36:
    ld a, $70
    ld [hl+], a
    ld [hl-], a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_056_4a36

    ret


    call Call_056_4a50
    call Call_056_4d7a
    call Call_056_4dba
    ret


Call_056_4a50:
    ld a, [wJoypad_current_frame]
    bit 6, a
    jr z, jr_056_4aa6

    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df06]
    call Write_gfx_tile_and_inc_HL
    ld a, [$df07]
    call Write_gfx_tile
    ld a, [$df03]
    dec a
    cp $ff
    jr nz, jr_056_4a75

    ld a, $03

jr_056_4a75:
    ld [$df03], a
    ld c, a
    ld a, [$df02]
    add c
    ld [$df00], a
    ld a, [$df03]
    ld c, $20
    call Call_000_1dbe
    ld a, l
    add $8e
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    ld [$df04], a
    ld a, l
    ld [$df05], a
    call Call_000_1aa6
    ld a, [hl+]
    ld [$df06], a
    call Call_000_1aa6
    ld a, [hl]
    ld [$df07], a

jr_056_4aa6:
    ld a, [wJoypad_current_frame]	;check if down is pressed
    bit 7, a
    jr z, jr_056_4afb

    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df06]
    call Write_gfx_tile_and_inc_HL
    ld a, [$df07]
    call Write_gfx_tile
    ld a, [$df03]
    inc a
    cp $04
    jr nz, jr_056_4aca

    xor a

jr_056_4aca:
    ld [$df03], a
    ld c, a
    ld a, [$df02]
    add c
    ld [$df00], a
    ld a, [$df03]
    ld c, $20
    call Call_000_1dbe
    ld a, l
    add $8e
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    ld [$df04], a
    ld a, l
    ld [$df05], a
    call Call_000_1aa6
    ld a, [hl+]
    ld [$df06], a
    call Call_000_1aa6
    ld a, [hl]
    ld [$df07], a

jr_056_4afb:
    ld a, [$c842]
    bit 4, a
    jp z, Jump_056_4b36

    ld a, [$df0b]
    inc a
    and $07
    ld [$df0b], a
    jr z, jr_056_4b0f

    ret


jr_056_4b0f:
    ld a, [$df07]
    inc a
    cp $80
    jr nz, jr_056_4b2b

    ld a, $70
    ld [$df07], a
    ld a, [$df06]
    inc a
    cp $80
    jr nz, jr_056_4b26

    ld a, $70

jr_056_4b26:
    ld [$df06], a
    jr Increment_msgdebug_option

jr_056_4b2b:
    ld [$df07], a

Increment_msgdebug_option:		
    ld a, [$df01]	
    inc a
    ld [$df01], a
    ret


Jump_056_4b36:
    ld a, [$c842]
    bit 5, a
    jp z, Jump_056_4b71

    ld a, [$df0c]
    inc a
    and $07
    ld [$df0c], a
    jr z, jr_056_4b4a

    ret


jr_056_4b4a:
    ld a, [$df07]
    dec a
    cp $6f
    jr nz, jr_056_4b66

    ld a, $7f
    ld [$df07], a
    ld a, [$df06]
    dec a
    cp $6f
    jr nz, jr_056_4b61

    ld a, $7f

jr_056_4b61:
    ld [$df06], a
    jr jr_056_4b69

jr_056_4b66:
    ld [$df07], a		;tile ID in Message Debug menu option. Current row stored in either df00 or df03. Option itself is stored in df01

jr_056_4b69:;decrese msg debug option
    ld a, [$df01]
    dec a
    ld [$df01], a
    ret


Jump_056_4b71:
    ld a, [wJoypad_current_frame]	;check if the B button is pressed
    bit 2, a				
    jr z, jr_056_4b9e			;if not, skip to the check for the A button

    ld a, [$c88b]			;load msg debug page into a and increment.
    inc a
    cp $0a			
    jr nz, jr_056_4b82			;if it reaches page $0a, skip the jump and reset it to $00

    ld a, $00

jr_056_4b82:
    ld [$c88b], a			;if the next page was not $0a, store the incremented value into the current page number
    ld hl, $c88e			;inc this to change the page
    inc [hl]				;see?
    ld a, [$c88b]
    ld c, $04
    call Call_000_1dbe
    ld a, l
    ld [$df02], a
    ld [$df00], a
    ld a, $0c
    call PlaySoundEffect
    ret


jr_056_4b9e:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jp z, Jump_056_4d63

    ld a, [$df01]
    ld b, a
    ld a, [$df00]
    ld hl, $4e24
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub b
    jr nc, jr_056_4bce

    ld a, $00
    ld [$c822], a
    ld a, $0b
    ld [$c823], a
    ld de, $1204
    ld hl, $8800
    call Call_056_49f6
    ret


jr_056_4bce:
    ld a, [$df01]
    ld [$c823], a
    ld a, [$df00]
    ld hl, $4dd4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c822], a
    ld hl, $4dfc
    ld a, [$df00]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$df0a], a
    ld de, $1204
    ld hl, $8800
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, [$df0a]
    rst $00

    ld l, $4c
    inc sp
    ld c, h

    db $52, $4c

    ld [hl], c
    ld c, h
    sub b
    ld c, h
    sub l
    ld c, h
    or h
    ld c, h
    db $d3
    ld c, h
    ld a, [c]
    ld c, h
    inc c
    ld c, l
    dec hl
    ld c, l
    ld c, d
    ld c, l
    ld c, a
    ld c, l

    db $54, $4d

    ld e, c
    ld c, l
    ld e, [hl]
    ld c, l
    ld hl, $4100
    rst $10
    ret


    ld a, [$c822]
    cp $00
    jr nz, jr_056_4c4d

    ld a, [$c823]
    cp $e2
    jr c, jr_056_4c4d

    sub $e2
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c52

jr_056_4c4d:
    ld hl, $4200
    rst $10
    ret


jr_056_4c52:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4c6c

    ld a, [$c823]
    cp $98
    jr c, jr_056_4c6c

    sub $98
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c71

jr_056_4c6c:
    ld hl, $4300
    rst $10
    ret


jr_056_4c71:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4c8b

    ld a, [$c823]
    cp $44
    jr c, jr_056_4c8b

    sub $44
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4c90

jr_056_4c8b:
    ld hl, $4400
    rst $10
    ret


jr_056_4c90:
    ld hl, $4500
    rst $10
    ret


    ld a, [$c822]
    cp $00
    jr nz, jr_056_4caf

    ld a, [$c823]
    cp $c8
    jr c, jr_056_4caf

    sub $c8
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cb4

jr_056_4caf:
    ld hl, $4600
    rst $10
    ret


jr_056_4cb4:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4cce

    ld a, [$c823]
    cp $74
    jr c, jr_056_4cce

    sub $74
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cd3

jr_056_4cce:
    ld hl, $4700
    rst $10
    ret


jr_056_4cd3:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4ced

    ld a, [$c823]
    cp $12
    jr c, jr_056_4ced

    sub $12
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4cf2

jr_056_4ced:
    ld hl, $4800
    rst $10
    ret


jr_056_4cf2:
    ld a, [$c823]
    add $12
    cp $e0
    jr c, jr_056_4d07

    sub $e0
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d0c

jr_056_4d07:
    ld hl, $4900
    rst $10
    ret


jr_056_4d0c:
    ld a, [$c822]
    cp $02
    jr nz, jr_056_4d26

    ld a, [$c823]
    cp $c0
    jr c, jr_056_4d26

    sub $c0
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d2b

jr_056_4d26:
    ld hl, $4a00
    rst $10
    ret


jr_056_4d2b:
    ld a, [$c822]
    cp $01
    jr nz, jr_056_4d45

    ld a, [$c823]
    cp $68
    jr c, jr_056_4d45

    sub $68
    ld [$c823], a
    ld a, $00
    ld [$c822], a
    jr jr_056_4d54

jr_056_4d45:
    ld hl, $4b00
    rst $10
    ret


    ld hl, $4c00
    rst $10
    ret


    ld hl, $4d00
    rst $10
    ret


jr_056_4d54:
    ld hl, $4e00
    rst $10
    ret


    ld hl, $5906
    rst $10
    ret


    ld hl, $5600
    rst $10
    ret


Jump_056_4d63:
    ld a, [$c842]	;checks if start has been pressed. If it has, exit the function
    and $08
    cp $08
    jr nz, jr_056_4d79

    ld a, $07		;7, the ID for the debug main menu is loaded into the current screen byte.
    ld [wGameMode], a
    xor a
    ld [$c88b], a	;and it is reset to the first page. 
    ld hl, $c88e
    inc [hl]		;and inc c88e to change the screen. 

jr_056_4d79:
    ret


Call_056_4d7a:		;function for blinking the msg debug selection
    ld a, [$df08]
    cp $00
    jr nz, jr_056_4db5

    ld a, $0a
    ld [$df08], a
    ld a, [$df04]
    ld h, a
    ld a, [$df05]
    ld l, a
    ld a, [$df09]	;msg_debug selection blink flag
    cp $00
    jr nz, jr_056_4da3	

    ld a, $1f
    call Write_gfx_tile_and_inc_HL
    call Write_gfx_tile
    ld a, $01
    ld [$df09], a
    ret


jr_056_4da3:
    ld a, [$df06]
    call Write_gfx_tile_and_inc_HL
    ld a, [$df07]
    call Write_gfx_tile
    ld a, $00
    ld [$df09], a
    ret


jr_056_4db5:
    dec a
    ld [$df08], a
    ret


Call_056_4dba:
    ld a, [$df06]
    sub $70
    rlca
    rlca
    rlca
    rlca
    ld [$df01], a	;
    ld a, [$df07]
    sub $70
    ld c, a
    ld a, [$df01]
    add c
    ld [$df01], a
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00

    db $01

    ld bc, $0100
    ld bc, $0201
    db $01

    db $01

    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    ld bc, $0001
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $01

    db $02

    inc bc
    dec b
    ld b, $07
    add hl, bc
    add hl, bc
    ld a, [bc]

    db $0d

    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    rrca
    ld c, $0e
    ld c, $0e
    add hl, bc
    ld e, a
    ld l, a
    sbc a
    ld a, [bc]
    rst $38
    rst $38
    sub $2b
    dec hl
    daa
    inc h
    ld bc, $0b2f
    rst $38

    db $ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    db $ff

    db $fd
    ld [de], a
    ld b, $08
    inc bc
    inc d
    inc d
    nop
    rst $38
    sub $ff
    ld b, $02
    dec c
    nop

   ;@TEXT msgdebug page 1
   
   ;[ MESSEGE
   ;     DEBUG ]
   ;  TESTMES
   ;DEBUGNAME
   ;   SYSMES
   ; MNAMEMES
   
    db $96, $62, $30, $28, $36, $36, $28, $2a, $28, $f1, $62, $62, $62, $62, $62, $27
    db $28, $25, $38, $2a, $62, $97, $f1, $62, $62, $37, $28, $36, $37, $30, $28, $36
    db $f1, $27, $28, $25, $38, $2a, $31, $24, $30, $28, $f1, $62, $62, $62, $36, $3c
    db $36, $30, $28, $36, $f1, $62, $30, $31, $24, $30, $28, $30, $28, $36, $f1
   
   ;@TEXT msgdebug hex digits
   ;0123456789ABCDEF
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $24, $25, $26, $27, $28, $29
   
   ;@TEXT msgdebug page 2
   
   ; KEITOUMES
   ;SYUZOKUMES
   ;TOKUGINAME
   ;   SYUNAME
   
    db $62, $2E, $28, $2C, $37, $32, $38, $30, $28, $36, $F1, $36, $3C, $38, $3D, $32
    db $2E, $38, $30, $28, $36, $F1, $37, $32, $2E, $38, $2A, $2C, $31, $24, $30, $28
    db $F1, $62, $62, $62, $36, $3C, $38, $31, $24, $30, $28, $F0
   
   ;@TEXT msgdebug page 3
   
   ;  ITEMNAME
   ;   ITEMMES
   ;SEIKAKUMES
   ; BTLWINMES
   
    db $62, $62, $2C, $37, $28, $30, $31, $24, $30, $28, $F1, $62, $62, $62, $2C, $37
    db $28, $30, $30, $28, $36, $F1, $36, $28, $2C, $2E, $24, $2E, $38, $30, $28, $36
    db $F1, $62, $25, $37, $2F, $3A, $2C, $31, $30, $28, $36, $F0
   
   ;@TEXT msgdebug page 4 
   
   ; BATTLEMES
   ;  ITEMMES2
   ;TOKUGUMES2
   ;KAIWAMES00
   
    db $62, $25, $24, $37, $37, $2F, $28, $30, $28, $36, $F1, $62, $62, $2C, $37, $28
    db $30, $30, $28, $36, $02, $F1, $37, $32, $2E, $38, $2A, $38, $30, $28, $36, $02
    db $F1, $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $00, $F0
   
   ;@TEXT msgdebug page 5
   
   ;KAIWAMES01
   ;KAIWAMES02
   ;KAIWAMES03
   ;KAIWAMES04
   
    db $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $01, $F1, $2E, $24, $2C, $3A, $24
    db $30, $28, $36, $00, $02, $F1, $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $03
    db $F1, $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $04, $F0
   
   ;@TEXT msgdebug page 6
   
   ;KAIWAMES05
   ;KAIWAMES06
   ;KAIWAMES07
   ;KAIWAMES08
   
    db $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $05, $F1, $2E, $24, $2C, $3A, $24
    db $30, $28, $36, $00, $06, $F1, $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $07
    db $F1, $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $08, $F0
   
   ;@TEXT msgdebug page 7

   ;KAIWAMES09
   ;    BTLMES
   ;   BTLMES1
   ;   BTLMES2
   
    db $2E, $24, $2C, $3A, $24, $30, $28, $36, $00, $09, $F1, $62, $62, $62, $62, $25
    db $37, $2F, $30, $28, $36, $F1, $62, $62, $62, $25, $37, $2F, $30, $28, $36, $01
    db $F1, $62, $62, $62, $25, $37, $2F, $30, $28, $36, $02, $F0

   ;@TEXT msgdebug page 8
   
   ;   BTLCMD
   ;  BTLMES4
   ;STAFFMES0
   ;STAFFMES1
   
    db $62, $62, $62, $25, $37, $2f, $26, $30, $27, $f1, $62, $62, $25, $37, $2f, $30
    db $28, $36, $04, $f1, $36, $37, $24, $29, $29, $30, $28, $36, $00, $f1, $36, $37
    db $24, $29, $29, $30, $28, $36, $01, $f0
    
   ;@TEXT msgdebug page 9

   ;ENDINGMES
   ;MONHAIMES
   ;MONINFMES
   ;TOKUGIMES
   
    db $28, $31, $27, $2c, $31, $2a, $30, $28, $36, $f1, $30, $32, $31, $2b, $24, $2c
    db $30, $28, $36, $f1, $30, $32, $31, $2c, $31, $29, $30, $28, $36, $f1, $37, $32
    db $2e, $38, $2a, $2c, $30, $28, $36, $f0
    
   ;@TEXT msgdebug page 10

   ; DEMOMES00
   ;DEMONAME00
   ; BOOKMES00
   ; OBJTMES00
   
    db $62, $27, $28, $30, $32, $30, $28, $36, $00, $00, $f1, $27, $28, $30, $32, $31
    db $24, $30, $28, $00, $00, $f1, $62, $25, $32, $32, $2e, $30, $28, $36, $00, $00
    db $f1, $62, $32, $25, $2d, $37, $30, $28, $36, $00, $00, $f0
    
   ;@TEXT msgdebug error

   ;INVALID NUMBER!
   
    db $2c, $31, $39, $24, $2f, $2c, $27, $62, $31, $38, $30, $25, $28, $35, $63
    
    db $f0
    
   ;@TEXT Skill descriptions 
    db $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $f1
    db $54, $46, $51, $45, $62, $3e, $62, $50, $4a, $3e, $49, $49, $62, $43, $46, $4f
    db $42, $f1, $3f, $3e, $49, $49, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50, $62
    db $41, $3e, $4a, $3e, $44, $42, $f1, $54, $46, $51, $45, $62, $3e, $62, $44, $46
    db $3e, $4b, $51, $f1, $43, $46, $4f, $42, $62, $3f, $3e, $49, $49, $f0, $2c, $4b
    db $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $f1, $54, $46
    db $51, $45, $62, $4d, $46, $49, $49, $3e, $4f, $50, $62, $4c, $43, $f1, $43, $46
    db $4f, $42, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e
    db $44, $42, $62, $51, $4c, $f1, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42
    db $50, $62, $54, $46, $51, $45, $f1, $3e, $62, $50, $4a, $3e, $49, $49, $62, $3f
    db $49, $3e, $57, $42, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e
    db $4a, $3e, $44, $42, $62, $51, $4c, $f1, $3e, $49, $49, $62, $42, $4b, $42, $4a
    db $46, $42, $50, $62, $54, $46, $51, $45, $f1, $3e, $62, $45, $52, $44, $42, $62
    db $3f, $49, $3e, $57, $42, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41
    db $3e, $4a, $3e, $44, $42, $62, $51, $4c, $f1, $3e, $49, $49, $62, $51, $45, $42
    db $62, $42, $4b, $42, $4a, $46, $42, $50, $f1, $54, $46, $51, $45, $62, $3e, $62
    db $3f, $46, $44, $62, $3f, $49, $3e, $57, $42, $f0, $2c, $4b, $43, $49, $46, $40
    db $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $f1, $3e, $49, $49
    db $62, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $f1, $3e, $4b
    db $62, $42, $55, $4d, $49, $4c, $50, $46, $4c, $4b, $f0, $2c, $4b, $43, $49, $46
    db $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $f1, $3e, $49
    db $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $f1, $42
    db $55, $4d, $49, $4c, $50, $46, $4c, $4b, $50, $f0, $2c, $4b, $43, $49, $46, $40
    db $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $f1, $3e, $49, $49
    db $62, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $f1, $3e, $62
    db $2b, $38, $2a, $28, $62, $42, $55, $4d, $49, $4c, $50, $46, $4c, $4b, $f0, $2c
    db $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $50, $f1
    db $51, $4c, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1, $54
    db $46, $51, $45, $62, $3e, $62, $54, $45, $46, $4f, $49, $54, $46, $4b, $41, $f0
    db $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $50
    db $f1, $51, $4c, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1
    db $54, $46, $51, $45, $62, $3e, $62, $51, $4c, $4f, $4b, $3e, $41, $4c, $f0, $2c
    db $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $50, $f1
    db $51, $4c, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1, $54
    db $46, $51, $45, $62, $3e, $62, $45, $52, $4f, $4f, $46, $40, $3e, $4b, $42, $f0
    db $29, $4f, $42, $42, $57, $42, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a
    db $46, $42, $50, $62, $54, $46, $51, $45, $62, $46, $40, $42, $f0, $37, $52, $4f
    db $4b, $50, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1, $46
    db $4b, $51, $4c, $62, $46, $40, $42, $f0, $24, $51, $51, $3e, $40, $48, $50, $62
    db $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45
    db $62, $3e, $f1, $43, $4f, $46, $44, $46, $41, $62, $3f, $49, $46, $57, $57, $3e
    db $4f, $41, $f0, $36, $51, $4f, $46, $48, $42, $50, $62, $3e, $49, $49, $f1, $42
    db $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $f1, $49, $46, $44, $45
    db $51, $4b, $46, $4b, $44, $f0, $36, $51, $4f, $46, $48, $42, $50, $62, $3e, $49
    db $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $f1, $3e
    db $62, $51, $45, $52, $4b, $41, $42, $4f, $3f, $4c, $49, $51, $f0, $36, $51, $4f
    db $46, $48, $42, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50
    db $62, $54, $46, $51, $45, $f1, $51, $45, $52, $4b, $41, $42, $4f, $3f, $4c, $49
    db $51, $50, $f0, $2c, $4b, $50, $51, $3e, $4b, $51, $49, $56, $62, $48, $4b, $4c
    db $40, $48, $50, $f1, $4c, $52, $51, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56
    db $f0, $2c, $4b, $50, $51, $3e, $4b, $51, $49, $56, $62, $48, $4b, $4c, $40, $48
    db $50, $f1, $4c, $52, $51, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42
    db $50, $f0, $2e, $4b, $4c, $40, $48, $50, $62, $4c, $52, $51, $62, $51, $45, $42
    db $f1, $40, $3e, $50, $51, $42, $4f, $62, $3e, $4b, $41, $f1, $3e, $49, $49, $62
    db $42, $4b, $42, $4a, $46, $42, $50, $f0, $33, $52, $51, $50, $62, $3e, $4b, $62
    db $42, $4b, $42, $4a, $56, $f1, $51, $4c, $62, $50, $49, $42, $42, $4d, $f0, $33
    db $52, $51, $50, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1
    db $51, $4c, $62, $50, $49, $42, $42, $4d, $f0, $36, $52, $50, $4d, $42, $4b, $41
    db $50, $62, $3e, $49, $49, $62, $51, $45, $42, $f1, $42, $4b, $42, $4a, $46, $42
    db $50, $62, $43, $4f, $4c, $4a, $f1, $40, $3e, $50, $51, $46, $4b, $44, $62, $50
    db $4d, $42, $49, $49, $50, $f0, $28, $4b, $44, $52, $49, $43, $50, $62, $3e, $49
    db $49, $62, $51, $45, $42, $f1, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46
    db $51, $45, $62, $3e, $4b, $f1, $46, $49, $49, $52, $50, $46, $4c, $4b, $f0, $26
    db $4c, $4b, $43, $52, $50, $42, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a
    db $46, $42, $50, $f0, $36, $51, $42, $3e, $49, $50, $62, $42, $4b, $42, $4a, $56
    db $68, $62, $30, $33, $f0, $24, $3f, $50, $4c, $4f, $3f, $50, $62, $51, $45, $42
    db $62, $30, $33, $62, $4c, $43, $f1, $3e, $62, $50, $4d, $42, $49, $49, $62, $40
    db $3e, $50, $51, $62, $3f, $56, $f1, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $f0
    db $2f, $4c, $54, $42, $4f, $50, $62, $3e, $4b, $f1, $42, $4b, $42, $4a, $56, $68
    db $62, $27, $28, $29, $28, $31, $36, $28, $f0, $2f, $4c, $54, $42, $4f, $50, $62
    db $3e, $49, $49, $62, $51, $45, $42, $f1, $42, $4b, $42, $4a, $46, $42, $50, $5c
    db $62, $27, $28, $29, $28, $31, $36, $28, $f0, $2c, $4b, $40, $4f, $42, $3e, $50
    db $42, $50, $62, $27, $28, $29, $28, $31, $36, $28, $f1, $43, $4c, $4f, $62, $3e
    db $4b, $62, $3e, $49, $49, $56, $f0, $2c, $4b, $40, $4f, $42, $3e, $50, $42, $50
    db $62, $27, $28, $29, $28, $31, $36, $28, $f1, $43, $4c, $4f, $62, $3e, $49, $49
    db $62, $3e, $49, $49, $46, $42, $50, $f0, $27, $42, $40, $4f, $42, $3e, $50, $42
    db $50, $62, $24, $2a, $2c, $2f, $2c, $37, $3c, $f1, $4c, $43, $62, $3e, $4b, $62
    db $42, $4b, $42, $4a, $56, $f0, $27, $42, $40, $4f, $42, $3e, $50, $42, $50, $62
    db $24, $2a, $2c, $2f, $2c, $37, $3c, $f1, $4c, $43, $62, $3e, $49, $49, $62, $42
    db $4b, $42, $4a, $46, $42, $50, $f0, $2c, $4b, $40, $4f, $42, $3e, $50, $42, $50
    db $62, $24, $2a, $2c, $2f, $2c, $37, $3c, $f1, $43, $4c, $4f, $62, $3e, $4b, $62
    db $3e, $49, $49, $56, $f0, $2c, $4b, $40, $4f, $42, $3e, $50, $42, $50, $62, $24
    db $2a, $2c, $2f, $2c, $37, $3c, $f1, $43, $4c, $4f, $62, $3e, $49, $49, $62, $3e
    db $49, $49, $46, $42, $50, $f0, $24, $49, $49, $62, $3e, $49, $49, $46, $42, $50
    db $62, $3f, $42, $40, $4c, $4a, $42, $f1, $4a, $4c, $4f, $42, $62, $4f, $42, $50
    db $46, $50, $51, $3e, $4b, $51, $62, $51, $4c, $f1, $3f, $4f, $42, $3e, $51, $45
    db $62, $3e, $51, $51, $3e, $40, $48, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51
    db $50, $62, $41, $4c, $52, $3f, $49, $42, $f1, $51, $45, $42, $62, $41, $3e, $4a
    db $3e, $44, $42, $62, $51, $4c, $f1, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $f0
    db $2c, $4b, $40, $4f, $42, $3e, $50, $42, $50, $f1, $4f, $42, $50, $46, $50, $51
    db $3e, $4b, $40, $42, $62, $51, $4c, $f1, $51, $45, $42, $62, $42, $4b, $42, $4a
    db $56, $62, $50, $4d, $42, $49, $49, $50, $f0, $35, $42, $43, $49, $42, $40, $51
    db $50, $62, $51, $45, $42, $62, $4a, $3e, $44, $46, $40, $f1, $40, $3e, $50, $51
    db $62, $3f, $56, $62, $51, $45, $42, $62, $42, $4b, $42, $4a, $56, $f1, $43, $4c
    db $4f, $62, $4c, $4b, $42, $62, $51, $52, $4f, $4b, $f0, $35, $42, $43, $49, $42
    db $40, $51, $50, $62, $51, $45, $42, $62, $42, $4b, $42, $4a, $56, $f1, $50, $4d
    db $42, $49, $49, $50, $62, $51, $45, $3e, $51, $62, $51, $45, $42, $f1, $40, $3e
    db $50, $51, $42, $4f, $62, $4f, $42, $40, $42, $46, $53, $42, $50, $f0, $37, $4f
    db $3e, $4b, $50, $43, $4c, $4f, $4a, $62, $46, $4b, $51, $4c, $f1, $51, $45, $42
    db $62, $50, $3e, $4a, $42, $62, $50, $4d, $42, $40, $46, $42, $50, $f1, $3e, $50
    db $62, $51, $45, $42, $62, $42, $4b, $42, $4a, $56, $f0, $37, $52, $4f, $4b, $50
    db $62, $3e, $49, $49, $62, $3e, $49, $49, $46, $42, $50, $f1, $46, $4b, $51, $4c
    db $62, $3e, $62, $4d, $4f, $4c, $51, $42, $40, $51, $46, $53, $42, $f1, $49, $52
    db $4a, $4d, $62, $4c, $43, $62, $46, $4f, $4c, $4b, $f0, $2b, $42, $3e, $49, $50
    db $62, $3f, $42, $51, $54, $42, $42, $4b, $f1, $03, $00, $62, $51, $4c, $62, $04
    db $00, $62, $2b, $33, $62, $43, $4c, $4f, $62, $3e, $4b, $f1, $3e, $49, $49, $56
    db $f0, $2b, $42, $3e, $49, $50, $62, $3f, $42, $51, $54, $42, $42, $4b, $f1, $07
    db $05, $62, $3e, $4b, $41, $62, $09, $00, $62, $2b, $33, $62, $43, $4c, $4f, $f1
    db $3e, $49, $49, $62, $3e, $49, $49, $46, $42, $50, $f0, $2b, $42, $3e, $49, $50
    db $62, $2b, $33, $62, $51, $4c, $62, $4a, $3e, $55, $f1, $43, $4c, $4f, $62, $3e
    db $4b, $62, $3e, $49, $49, $56, $f0, $2b, $42, $3e, $49, $50, $62, $3f, $42, $51
    db $54, $42, $42, $4b, $f1, $09, $00, $62, $51, $4c, $62, $01, $02, $00, $62, $2b
    db $33, $62, $43, $4c, $4f, $f1, $3e, $49, $49, $62, $3e, $49, $49, $46, $42, $50
    db $f0, $2b, $42, $3e, $49, $50, $62, $2b, $33, $62, $51, $4c, $62, $4a, $3e, $55
    db $f1, $43, $4c, $4f, $62, $3e, $49, $49, $62, $3e, $49, $49, $46, $42, $50, $f0
    db $35, $42, $53, $46, $53, $42, $50, $62, $3e, $4b, $62, $3e, $49, $49, $56, $f0
    db $35, $42, $53, $46, $53, $42, $50, $62, $3e, $4b, $62, $3e, $49, $49, $56, $f0
    db $35, $42, $53, $46, $53, $42, $50, $62, $3e, $49, $49, $62, $4c, $51, $45, $42
    db $4f, $f1, $3e, $49, $49, $46, $42, $50, $62, $3f, $52, $51, $62, $51, $45, $42
    db $f1, $40, $3e, $50, $51, $42, $4f, $62, $40, $4c, $49, $49, $3e, $4d, $50, $42
    db $50, $f0, $26, $52, $4f, $42, $50, $62, $4d, $4c, $46, $50, $4c, $4b, $f0, $26
    db $52, $4f, $42, $50, $62, $4d, $3e, $4f, $3e, $49, $56, $50, $46, $50, $f1, $4c
    db $4f, $62, $54, $3e, $48, $42, $50, $62, $52, $4d, $f1, $3e, $4b, $62, $3e, $49
    db $49, $56, $f0, $26, $52, $4f, $42, $50, $62, $40, $4c, $4b, $43, $52, $50, $46
    db $4c, $4b, $f0, $25, $4f, $42, $3e, $48, $50, $62, $3e, $62, $40, $52, $4f, $50
    db $42, $f0, $33, $4f, $4c, $51, $42, $40, $51, $50, $62, $43, $4f, $4c, $4a, $f1
    db $49, $3e, $4b, $41, $62, $45, $3e, $57, $3e, $4f, $41, $50, $f1, $54, $45, $46
    db $49, $42, $62, $51, $4f, $3e, $53, $42, $49, $46, $4b, $44, $f0, $35, $42, $53
    db $42, $3e, $49, $50, $62, $51, $45, $42, $62, $42, $4b, $51, $46, $4f, $42, $f1
    db $4a, $3e, $4d, $62, $4c, $43, $62, $51, $45, $42, $f1, $49, $3e, $4b, $41, $50
    db $40, $3e, $4d, $42, $f0, $24, $62, $4f, $3e, $4b, $41, $4c, $4a, $62, $50, $4d
    db $42, $49, $49, $5e, $f1, $40, $3e, $4b, $62, $3f, $42, $62, $44, $4c, $4c, $41
    db $62, $4c, $4f, $62, $3f, $3e, $41, $f0, $f0, $29, $42, $3e, $4f, $49, $42, $50
    db $50, $62, $3e, $51, $51, $3e, $40, $48, $f0, $24, $51, $51, $3e, $40, $48, $50
    db $62, $49, $46, $48, $42, $62, $3e, $62, $4f, $3e, $4a, $f1, $54, $46, $51, $45
    db $62, $46, $51, $50, $62, $51, $4f, $52, $42, $f1, $46, $4b, $4b, $42, $4f, $62
    db $50, $51, $4f, $42, $4b, $44, $51, $45, $f0, $24, $51, $51, $3e, $40, $48, $50
    db $62, $49, $46, $48, $42, $62, $51, $45, $42, $4f, $42, $f1, $46, $50, $62, $4b
    db $4c, $62, $51, $4c, $4a, $4c, $4f, $4f, $4c, $54, $f0, $24, $62, $50, $52, $46
    db $40, $46, $41, $42, $62, $3e, $51, $51, $3e, $40, $48, $f1, $51, $4c, $62, $48
    db $4b, $4c, $40, $48, $62, $4c, $52, $51, $62, $51, $45, $42, $f1, $42, $4b, $42
    db $4a, $56, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $44, $4f, $42, $3e
    db $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $62, $3e, $4b, $62, $3e
    db $49, $49, $56, $f1, $4c, $4f, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $f0
    db $24, $51, $51, $3e, $40, $48, $50, $62, $49, $46, $48, $42, $62, $3e, $f1, $4f
    db $52, $51, $45, $49, $42, $50, $50, $62, $41, $42, $4a, $4c, $4b, $f0, $2c, $4b
    db $43, $49, $46, $40, $51, $50, $62, $45, $52, $44, $42, $f1, $41, $3e, $4a, $3e
    db $44, $42, $62, $51, $4c, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $f1, $4c
    db $4b, $62, $51, $45, $42, $62, $4b, $42, $55, $51, $62, $51, $52, $4f, $4b, $f0
    db $2d, $52, $4a, $4d, $50, $62, $46, $4b, $51, $4c, $62, $51, $45, $42, $62, $3e
    db $46, $4f, $f1, $3e, $4b, $41, $62, $3e, $51, $51, $3e, $40, $48, $50, $62, $4c
    db $4b, $f1, $51, $45, $42, $62, $4b, $42, $55, $51, $62, $51, $52, $4f, $4b, $f0
    db $36, $52, $40, $48, $50, $62, $46, $4b, $62, $3e, $46, $4f, $62, $4d, $4c, $54
    db $42, $4f, $f1, $51, $4c, $62, $46, $4b, $43, $49, $46, $40, $51, $62, $41, $3e
    db $4a, $3e, $44, $42, $f1, $4c, $4b, $62, $51, $45, $42, $62, $4b, $42, $55, $51
    db $62, $51, $52, $4f, $4b, $f0, $25, $52, $4f, $4b, $46, $4b, $44, $62, $3f, $49
    db $3e, $41, $42, $f1, $50, $54, $4c, $4f, $41, $62, $3e, $51, $51, $3e, $40, $48
    db $f0, $37, $45, $52, $4b, $41, $42, $4f, $3f, $4c, $49, $51, $f1, $50, $54, $4c
    db $4f, $41, $62, $3e, $51, $51, $3e, $40, $48, $f0, $3a, $45, $46, $4f, $49, $46
    db $4b, $44, $62, $53, $3e, $40, $52, $52, $4a, $f1, $50, $54, $4c, $4f, $41, $62
    db $3e, $51, $51, $3e, $40, $48, $f0, $29, $4f, $42, $42, $57, $46, $4b, $44, $62
    db $46, $40, $42, $f1, $50, $54, $4c, $4f, $41, $62, $3e, $51, $51, $3e, $40, $48
    db $f0, $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $44, $4f, $42, $3e, $51, $f1
    db $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $62, $4a, $42, $51, $3e, $49, $f1
    db $42, $4b, $42, $4a, $46, $42, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50
    db $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c
    db $62, $41, $4f, $3e, $44, $4c, $4b, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51
    db $50, $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51
    db $4c, $62, $3f, $42, $3e, $50, $51, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51
    db $50, $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51
    db $4c, $62, $3f, $46, $4f, $41, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50
    db $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $4c, $4b
    db $62, $41, $42, $53, $46, $49, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51, $62
    db $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $62
    db $57, $4c, $4a, $3f, $46, $42, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51, $50
    db $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c
    db $f1, $4a, $3e, $51, $42, $4f, $46, $3e, $49, $50, $f0, $2c, $4b, $43, $49, $46
    db $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $f1, $51, $4c, $62, $3e, $49
    db $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1, $54, $46, $51, $45, $62, $4a
    db $3e, $4b, $56, $62, $40, $52, $51, $50, $f0, $24, $51, $51, $3e, $40, $48, $50
    db $62, $51, $54, $46, $40, $42, $62, $46, $4b, $f1, $4c, $4b, $42, $62, $51, $52
    db $4f, $4b, $f0, $24, $51, $51, $3e, $40, $48, $50, $62, $04, $62, $51, $46, $4a
    db $42, $50, $f1, $46, $4b, $62, $4c, $4b, $42, $62, $51, $52, $4f, $4b, $f0, $26
    db $3e, $49, $49, $50, $62, $43, $4c, $4f, $62, $3e, $62, $3f, $3e, $40, $48, $52
    db $4d, $f0, $26, $3e, $49, $49, $50, $62, $3e, $62, $44, $4f, $4c, $52, $4d, $62
    db $4c, $43, $f1, $4a, $4c, $4b, $50, $51, $42, $4f, $50, $62, $43, $4c, $4f, $62
    db $45, $42, $49, $4d, $f0, $37, $54, $4c, $62, $3e, $51, $51, $3e, $40, $48, $50
    db $f1, $4c, $4b, $62, $51, $45, $42, $62, $4b, $42, $55, $51, $f1, $51, $52, $4f
    db $4b, $f0, $24, $49, $49, $4c, $54, $50, $62, $56, $4c, $52, $62, $51, $4c, $f1
    db $3e, $51, $51, $3e, $40, $48, $62, $43, $46, $4f, $50, $51, $f1, $46, $4b, $62
    db $51, $45, $42, $62, $51, $52, $4f, $4b, $f0, $2c, $4b, $43, $49, $46, $40, $51
    db $50, $62, $2a, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51
    db $4c, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $f1, $3e, $51, $62, $51, $45
    db $42, $62, $49, $3e, $50, $51, $62, $51, $52, $4f, $4b, $f0, $24, $51, $51, $3e
    db $40, $48, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $62
    db $46, $4b, $62, $4c, $4b, $42, $f1, $3e, $51, $51, $3e, $40, $48, $f0, $24, $51
    db $51, $3e, $40, $48, $50, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $f1, $54
    db $46, $51, $45, $62, $3e, $62, $53, $46, $4c, $49, $42, $4b, $51, $f1, $54, $45
    db $46, $4f, $49, $54, $46, $4b, $41, $f0, $24, $51, $51, $3e, $40, $48, $50, $62
    db $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45
    db $62, $3e, $f1, $44, $46, $3e, $4b, $51, $62, $53, $3e, $40, $52, $52, $4a, $f0
    db $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $62
    db $4c, $4b, $f1, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $62, $54
    db $46, $51, $45, $f1, $49, $46, $44, $45, $51, $4b, $46, $4b, $44, $f0, $37, $45
    db $4f, $4c, $54, $50, $62, $3e, $62, $45, $52, $44, $42, $62, $4f, $4c, $40, $48
    db $f1, $4c, $4b, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f0
    db $25, $4f, $42, $3e, $51, $45, $42, $50, $62, $4c, $52, $51, $62, $43, $46, $4f
    db $42, $f1, $51, $4c, $62, $46, $4b, $43, $49, $46, $40, $51, $62, $41, $3e, $4a
    db $3e, $44, $42, $f1, $4c, $4b, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46
    db $42, $50, $f0, $25, $49, $4c, $54, $50, $62, $4c, $52, $51, $62, $3e, $62, $3f
    db $49, $3e, $57, $42, $f1, $51, $4c, $62, $46, $4b, $43, $49, $46, $40, $51, $62
    db $41, $3e, $4a, $3e, $44, $42, $f1, $4c, $4b, $62, $3e, $49, $49, $62, $42, $4b
    db $42, $4a, $46, $42, $50, $f0, $25, $52, $4f, $4b, $50, $62, $3e, $49, $49, $62
    db $42, $4b, $42, $4a, $46, $42, $50, $f1, $54, $46, $51, $45, $62, $3e, $62, $41
    db $42, $53, $3e, $50, $51, $3e, $51, $46, $4b, $44, $f1, $43, $49, $3e, $4a, $42
    db $f0, $24, $51, $51, $3e, $40, $48, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42
    db $4a, $46, $42, $50, $62, $54, $46, $51, $45, $62, $3e, $4b, $f1, $52, $4b, $46
    db $4a, $3e, $44, $46, $4b, $3e, $3f, $49, $42, $62, $3f, $49, $3e, $57, $42, $f0
    db $2c, $4b, $43, $49, $46, $40, $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $62
    db $51, $4c, $f1, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $62, $54
    db $46, $51, $45, $f1, $46, $51, $50, $62, $43, $4f, $46, $44, $46, $41, $62, $3f
    db $4f, $42, $3e, $51, $45, $f0, $29, $4f, $42, $42, $57, $42, $50, $62, $3e, $49
    db $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $f0, $2c, $4b, $43, $49, $46, $40
    db $51, $50, $62, $41, $3e, $4a, $3e, $44, $42, $62, $51, $4c, $f1, $3e, $49, $49
    db $62, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $62, $3e, $f1
    db $53, $46, $4c, $49, $42, $4b, $51, $62, $46, $40, $42, $62, $50, $51, $4c, $4f
    db $4a, $f0, $24, $51, $51, $3e, $40, $48, $50, $62, $3e, $49, $49, $f1, $42, $4b
    db $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $62, $3e, $4b, $f1, $46, $4b
    db $40, $3e, $4b, $41, $42, $50, $40, $42, $4b, $51, $62, $3e, $46, $4f, $f0, $2b
    db $42, $49, $49, $62, $4d, $4c, $54, $42, $4f, $42, $41, $f1, $49, $46, $44, $45
    db $51, $4b, $46, $4b, $44, $62, $3f, $49, $3e, $50, $51, $f1, $3e, $51, $51, $3e
    db $40, $48, $50, $62, $3e, $49, $49, $62, $43, $4c, $42, $50, $f0, $26, $4f, $42
    db $3e, $51, $42, $50, $62, $3e, $62, $45, $52, $44, $42, $f1, $42, $55, $4d, $49
    db $4c, $50, $46, $4c, $4b, $62, $51, $4c, $f1, $3e, $51, $51, $3e, $40, $48, $62
    db $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f0, $37, $45, $42, $62
    db $4a, $4c, $50, $51, $62, $4d, $4c, $54, $42, $4f, $43, $52, $49, $f1, $50, $4d
    db $42, $49, $49, $62, $51, $45, $3e, $51, $62, $3e, $43, $43, $42, $40, $51, $50
    db $f1, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f0, $33, $4c, $46
    db $50, $4c, $4b, $50, $62, $51, $45, $42, $62, $42, $4b, $42, $4a, $56, $f1, $51
    db $45, $3e, $51, $62, $3e, $51, $51, $3e, $40, $48, $42, $41, $62, $51, $45, $42
    db $f1, $3e, $49, $49, $56, $f0, $36, $42, $4b, $41, $50, $62, $51, $45, $42, $62
    db $42, $4b, $42, $4a, $56, $f1, $51, $45, $3e, $51, $62, $3e, $51, $51, $3e, $40
    db $48, $42, $41, $f1, $51, $45, $42, $62, $3e, $49, $49, $56, $62, $51, $4c, $62
    db $50, $49, $42, $42, $4d, $f0, $33, $3e, $4f, $3e, $49, $56, $57, $42, $50, $62
    db $51, $45, $42, $f1, $42, $4b, $42, $4a, $56, $62, $51, $45, $3e, $51, $f1, $3e
    db $51, $51, $3e, $40, $48, $42, $41, $62, $51, $45, $42, $62, $3e, $49, $49, $56
    db $f0, $36, $42, $4b, $41, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42
    db $50, $f1, $51, $4c, $62, $50, $49, $42, $42, $4d, $f0, $33, $3e, $4f, $3e, $49
    db $56, $57, $42, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50
    db $f0, $33, $4c, $46, $50, $4c, $4b, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42
    db $4a, $46, $42, $50, $f0, $36, $42, $53, $42, $4f, $49, $56, $62, $4d, $4c, $46
    db $50, $4c, $4b, $50, $f1, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50
    db $f0, $26, $4c, $4b, $43, $52, $50, $42, $50, $62, $3e, $49, $49, $f1, $42, $4b
    db $42, $4a, $46, $42, $50, $f0, $26, $52, $4f, $50, $42, $50, $62, $3e, $49, $49
    db $62, $42, $4b, $42, $4a, $46, $42, $50, $f0, $30, $3e, $48, $42, $50, $62, $56
    db $4c, $52, $62, $43, $42, $42, $49, $f1, $45, $3e, $4d, $4d, $56, $f0, $2c, $4b
    db $50, $51, $3e, $4b, $51, $49, $56, $62, $48, $4b, $4c, $40, $48, $50, $f1, $4c
    db $52, $51, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f0, $24
    db $51, $51, $3e, $40, $48, $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46
    db $42, $50, $62, $54, $46, $51, $45, $f1, $3e, $62, $50, $3e, $4b, $41, $50, $51
    db $4c, $4f, $4a, $f0, $25, $49, $46, $4b, $41, $50, $62, $3e, $49, $49, $62, $42
    db $4b, $42, $4a, $46, $42, $50, $f1, $54, $46, $51, $45, $62, $46, $51, $50, $62
    db $3f, $4f, $46, $44, $45, $51, $f1, $49, $46, $44, $45, $51, $f0, $30, $3e, $48
    db $42, $50, $62, $3e, $49, $49, $62, $42, $4b, $42, $4a, $46, $42, $50, $f1, $49
    db $42, $50, $50, $62, $4f, $42, $50, $46, $50, $51, $3e, $4b, $51, $f1, $51, $4c
    db $62, $4a, $3e, $44, $46, $40, $62, $50, $4d, $42, $49, $49, $50, $f0, $27, $4f
    db $4c, $4d, $50, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $68, $f1, $30, $33
    db $62, $54, $46, $51, $45, $62, $46, $51, $50, $62, $4c, $41, $41, $f1, $41, $3e
    db $4b, $40, $46, $4b, $44, $62, $50, $51, $42, $4d, $50, $f0, $36, $51, $42, $3e
    db $49, $50, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $68, $f1, $30, $33, $62
    db $54, $46, $51, $45, $62, $46, $51, $50, $f1, $4a, $42, $50, $4a, $42, $4f, $46
    db $57, $46, $4b, $44, $62, $41, $3e, $4b, $40, $42, $f0, $36, $46, $41, $42, $50
    db $51, $42, $4d, $50, $62, $3e, $4b, $f1, $3e, $51, $51, $3e, $40, $48, $f0, $2f
    db $52, $4f, $42, $50, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $62, $51, $4c
    db $f1, $3e, $62, $51, $4f, $3e, $4d, $62, $54, $46, $51, $45, $62, $46, $51, $50
    db $f1, $41, $3e, $4b, $40, $42, $f0, $2f, $46, $40, $48, $50, $62, $3e, $4b, $62
    db $42, $4b, $42, $4a, $56, $f1, $51, $4c, $62, $50, $51, $4c, $4d, $62, $46, $51
    db $62, $43, $4f, $4c, $4a, $f1, $3e, $51, $51, $3e, $40, $48, $46, $4b, $44, $f0
    db $2f, $4c, $54, $42, $4f, $50, $62, $27, $28, $29, $28, $31, $36, $28, $f1, $3f
    db $56, $62, $44, $46, $53, $46, $4b, $44, $62, $3e, $4b, $62, $42, $4b, $42, $4a
    db $56, $f1, $3e, $62, $50, $46, $40, $48, $49, $56, $62, $49, $46, $40, $48, $f0
    db $37, $4f, $46, $4d, $50, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56, $62, $3f
    db $56, $f1, $50, $54, $42, $42, $4d, $46, $4b, $44, $62, $46, $51, $50, $62, $49
    db $42, $44, $50, $f0, $37, $4f, $46, $4d, $50, $62, $3e, $49, $49, $62, $42, $4b
    db $42, $4a, $46, $42, $50, $f0, $29, $4f, $42, $42, $57, $42, $50, $62, $3e, $49
    db $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $62, $54, $46, $51, $45, $62, $3e
    db $f1, $53, $42, $4f, $56, $62, $49, $4c, $52, $41, $62, $4f, $4c, $3e, $4f, $f0
    db $36, $52, $4a, $4a, $4c, $4b, $50, $62, $4a, $4c, $4b, $50, $51, $42, $4f, $50
    db $f0, $2c, $4a, $46, $51, $3e, $51, $42, $50, $62, $51, $45, $42, $f1, $42, $4b
    db $42, $4a, $56, $68, $62, $3e, $51, $51, $3e, $40, $48, $f0, $27, $46, $50, $4d
    db $42, $49, $50, $62, $4a, $3e, $44, $46, $40, $f1, $42, $43, $43, $42, $40, $51
    db $50, $62, $4c, $4b, $62, $3e, $49, $49, $f1, $3e, $49, $49, $46, $42, $50, $f0
    db $26, $52, $4f, $42, $50, $62, $3e, $4b, $56, $62, $3e, $46, $49, $4a, $42, $4b
    db $51, $50, $f1, $43, $4c, $4f, $62, $3e, $49, $49, $62, $3e, $49, $49, $46, $42
    db $50, $f0, $2a, $4f, $42, $3e, $51, $49, $56, $62, $54, $42, $3e, $48, $42, $4b
    db $50, $f1, $51, $45, $42, $62, $42, $4b, $42, $4a, $56, $f0, $26, $4f, $42, $3e
    db $51, $42, $50, $62, $3e, $62, $51, $45, $46, $40, $48, $f1, $43, $4c, $44, $62
    db $51, $4c, $62, $50, $52, $50, $4d, $42, $4b, $41, $f1, $4a, $3e, $44, $46, $40
    db $62, $50, $4d, $42, $49, $49, $50, $f0, $36, $52, $4a, $4a, $4c, $4b, $50, $62
    db $37, $3e, $51, $50, $52, $f1, $4a, $4c, $4b, $50, $51, $42, $4f, $50, $62, $51
    db $4c, $62, $3e, $51, $51, $3e, $40, $48, $f1, $51, $45, $42, $62, $42, $4b, $42
    db $4a, $56, $f0, $36, $52, $4a, $4a, $4c, $4b, $50, $62, $27, $46, $3e, $44, $4c
    db $f1, $4a, $4c, $4b, $50, $51, $42, $4f, $50, $62, $51, $4c, $62, $3e, $51, $51
    db $3e, $40, $48, $f1, $51, $45, $42, $62, $42, $4b, $42, $4a, $56, $f0, $36, $52
    db $4a, $4a, $4c, $4b, $50, $62, $36, $3e, $4a, $50, $46, $f1, $4a, $4c, $4b, $50
    db $51, $42, $4f, $50, $62, $51, $4c, $62, $3e, $51, $51, $3e, $40, $48, $f1, $51
    db $45, $42, $62, $42, $4b, $42, $4a, $56, $f0, $36, $52, $4a, $4a, $4c, $4b, $50
    db $62, $25, $3e, $57, $4c, $4c, $f1, $4a, $4c, $4b, $50, $51, $42, $4f, $50, $62
    db $51, $4c, $62, $3e, $51, $51, $3e, $40, $48, $f1, $51, $45, $42, $62, $42, $4b
    db $42, $4a, $56, $f0, $37, $45, $4f, $4c, $54, $50, $62, $46, $51, $50, $42, $49
    db $43, $62, $46, $4b, $f1, $43, $4f, $4c, $4b, $51, $62, $4c, $43, $62, $51, $45
    db $42, $f1, $3e, $51, $51, $3e, $40, $48, $62, $43, $4c, $4f, $62, $3e, $4b, $62
    db $3e, $49, $49, $56, $f0, $37, $3e, $48, $42, $50, $62, $3e, $49, $49, $62, $51
    db $45, $42, $f1, $3e, $51, $51, $3e, $40, $48, $50, $62, $43, $4f, $4c, $4a, $62
    db $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $f0, $35, $42, $43, $49
    db $42, $40, $51, $50, $62, $3f, $3e, $40, $48, $62, $24, $46, $4f, $f1, $3e, $51
    db $51, $3e, $40, $48, $62, $51, $4c, $62, $3e, $4b, $62, $42, $4b, $42, $4a, $56
    db $f0, $35, $42, $43, $49, $42, $40, $51, $50, $62, $3f, $3e, $40, $48, $62, $24
    db $46, $4f, $f1, $3e, $51, $51, $3e, $40, $48, $50, $62, $51, $4c, $62, $3e, $49
    db $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $f0, $27, $4c, $41, $44, $42, $50
    db $62, $3e, $4b, $62, $3e, $51, $51, $3e, $40, $48, $f0, $33, $4f, $42, $4d, $3e
    db $4f, $42, $50, $62, $51, $4c, $62, $41, $42, $43, $42, $4b, $41, $f1, $46, $51
    db $50, $42, $49, $43, $62, $43, $4c, $4f, $62, $3e, $4b, $f1, $42, $4b, $42, $4a
    db $56, $62, $3e, $51, $51, $3e, $40, $48, $f0, $33, $4f, $42, $4d, $3e, $4f, $42
    db $50, $62, $3e, $62, $50, $51, $4f, $4c, $4b, $44, $f1, $41, $42, $43, $42, $4b
    db $50, $42, $62, $3e, $44, $3e, $46, $4b, $50, $51, $f1, $3e, $4b, $56, $62, $3e
    db $51, $51, $3e, $40, $48, $f0, $36, $52, $40, $48, $50, $62, $3e, $49, $49, $62
    db $51, $45, $42, $62, $3e, $46, $4f, $f1, $51, $4c, $62, $46, $4b, $43, $49, $46
    db $40, $51, $62, $41, $3e, $4a, $3e, $44, $42, $f1, $4c, $4b, $62, $3e, $49, $49
    db $62, $42, $4b, $42, $4a, $46, $42, $50, $f0, $27, $42, $43, $42, $4b, $41, $50
    db $62, $3e, $44, $3e, $46, $4b, $50, $51, $f1, $3e, $62, $40, $4c, $52, $4b, $51
    db $42, $4f, $3e, $51, $51, $3e, $40, $48, $f0, $36, $52, $50, $4d, $42, $4b, $41
    db $50, $62, $3e, $49, $49, $f1, $42, $4b, $42, $4a, $46, $42, $50, $5c, $62, $27
    db $3e, $4b, $40, $42, $f1, $3e, $51, $51, $3e, $40, $48, $50, $f0, $36, $52, $50
    db $4d, $42, $4b, $41, $50, $62, $3e, $4b, $f1, $42, $4b, $42, $4a, $56, $68, $62
    db $24, $46, $4f, $f1, $3e, $51, $51, $3e, $40, $48, $f0, $35, $42, $50, $51, $4c
    db $4f, $42, $50, $62, $05, $00, $00, $62, $2b, $33, $f1, $3f, $56, $62, $4a, $42
    db $41, $46, $51, $3e, $51, $46, $4c, $4b, $f0, $35, $42, $50, $51, $4c, $4f, $42
    db $50, $62, $3f, $42, $51, $54, $42, $42, $4b, $f1, $07, $00, $62, $51, $4c, $62
    db $08, $00, $62, $2b, $33, $62, $51, $4c, $62, $3e, $49, $49, $f1, $3e, $49, $49
    db $46, $42, $50, $f0, $35, $42, $53, $46, $53, $42, $50, $62, $3e, $49, $49, $62
    db $3e, $49, $49, $46, $42, $50, $f0, $35, $42, $53, $46, $53, $42, $50, $62, $3e
    db $49, $49, $62, $3e, $49, $49, $46, $42, $50, $f0, $f0, $26, $3e, $50, $51, $42
    db $4f, $62, $51, $4f, $3e, $4b, $50, $43, $4c, $4f, $4a, $50, $f1, $46, $4b, $51
    db $4c, $62, $3e, $62, $41, $4f, $3e, $44, $4c, $4b, $f0, $2c, $4b, $43, $49, $46
    db $40, $51, $50, $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42
    db $62, $51, $4c, $62, $50, $49, $46, $4a, $42, $50, $f0, $2c, $4b, $43, $49, $46
    db $40, $51, $50, $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42
    db $62, $51, $4c, $62, $3f, $52, $44, $50, $f0, $2c, $4b, $43, $49, $46, $40, $51
    db $50, $62, $44, $4f, $42, $3e, $51, $f1, $41, $3e, $4a, $3e, $44, $42, $62, $51
    db $4c, $62, $4d, $49, $3e, $4b, $51, $50, $f0, $30, $4c, $50, $51, $62, $41, $42
    db $50, $51, $4f, $52, $40, $51, $46, $53, $42, $f1, $50, $54, $4c, $4f, $41, $62
    db $3e, $51, $51, $3e, $40, $48, $f0, $30, $3e, $48, $42, $50, $62, $56, $4c, $52
    db $62, $43, $42, $42, $49, $f1, $50, $46, $40, $48
   ;Everything below here is graphics, but they are either corrupted, or in a format I do not yet understand.
    ldh a, [$f0]

    db $4f, $66

    ld h, a
    ld h, [hl]

    db $4c, $4e, $63, $4e, $9b, $4e, $c7, $4e, $f3, $4e, $1f, $4f, $4b, $4f, $77, $4f

    and e
    ld c, a
    bit 1, a
    di
    ld c, a
    rra
    ld d, b
    cpl
    ld d, b
    ld d, [hl]
    ld d, b
    ld a, l
    ld d, b
    and d
    ld d, b
    call nc, Call_000_0550
    ld d, c
    add hl, sp
    ld d, c
    ld l, d
    ld d, c
    sbc c
    ld d, c
    adc $51
    rst $38
    ld d, c
    ld l, $52
    ld e, a
    ld d, d
    ld a, h
    ld d, d
    sub a
    ld d, d
    jp nz, $e552

    ld d, d
    inc c
    ld d, e
    ld [hl-], a
    ld d, e
    ld d, b
    ld d, e
    ld [hl], c
    ld d, e
    sub a
    ld d, e
    xor [hl]
    ld d, e
    ret z

    ld d, e
    push af
    ld d, e
    ld e, $54
    inc sp
    ld d, h
    ld b, h
    ld d, h
    ld l, a
    ld d, h
    adc b
    ld d, h
    xor b
    ld d, h
    add $54
    rst $20
    ld d, h
    dec b
    ld d, l
    ld h, $55
    ld b, h
    ld d, l
    ld h, l
    ld d, l
    sbc b
    ld d, l
    cp a
    ld d, l
    add sp, $55
    ld a, [de]
    ld d, [hl]
    ld c, l
    ld d, [hl]
    ld a, d
    ld d, [hl]
    xor d
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld a, [$1656]
    ld d, a
    ld b, b
    ld d, a
    ld e, a
    ld d, a
    ld l, a
    ld d, a
    ld a, a
    ld d, a
    or c
    ld d, a
    cp [hl]
    ld d, a
    ld [c], a
    ld d, a
    ld a, [c]
    ld d, a
    ld bc, $2c58
    ld e, b
    ld d, h
    ld e, b
    ld [hl], a
    ld e, b
    ld a, b
    ld e, b
    adc b
    ld e, b
    cp b
    ld e, b
    jp c, $0258

    ld e, c
    cpl
    ld e, c
    ld c, l
    ld e, c
    ld a, a
    ld e, c
    xor a
    ld e, c
    push hl
    ld e, c
    nop
    ld e, d
    add hl, de
    ld e, d
    ld [hl], $5a
    ld d, b
    ld e, d
    ld [hl], a
    ld e, d
    sbc b
    ld e, d
    cp b
    ld e, d
    rst $10
    ld e, d
    rst $30
    ld e, d
    rla
    ld e, e
    ld a, [hl-]
    ld e, e
    ld l, b
    ld e, e
    add d
    ld e, e
    sbc [hl]
    ld e, e
    or c
    ld e, e
    call nc, $f15b
    ld e, e
    jr jr_056_6771

    ld c, e
    ld e, h
    ld l, l
    ld e, h
    sub a
    ld e, h
    cp a
    ld e, h
    db $ed
    ld e, h
    rrca
    ld e, l
    ld b, d
    ld e, l
    ld [hl], l
    ld e, l
    and b
    ld e, l
    rst $08
    ld e, l
    dec b
    ld e, [hl]
    add hl, de
    ld e, [hl]
    ld d, c
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    xor h
    ld e, [hl]
    db $db
    ld e, [hl]
    inc c
    ld e, a
    dec [hl]
    ld e, a
    ld h, l
    ld e, a
    sub b
    ld e, a
    xor d
    ld e, a
    ret nz

    ld e, a
    call nc, $f05f
    ld e, a
    dec b
    ld h, b
    jr jr_056_67a9

    dec l
    ld h, b
    ld c, [hl]
    ld h, b
    ld [hl], e
    ld h, b
    sbc h
    ld h, b
    call $fb60
    ld h, b
    ld a, [hl+]
    ld h, c
    ld a, $61
    ld h, [hl]
    ld h, c
    adc a
    ld h, c
    cp a
    ld h, c
    db $e3
    ld h, c
    push af
    ld h, c
    rra
    ld h, d
    jr nc, jr_056_67c9

    ld c, e
    ld h, d
    ld l, a
    ld h, d
    sub c
    ld h, d
    xor e
    ld h, d
    rst $10
    ld h, d

jr_056_6771:
    ld [bc], a
    ld h, e
    dec l
    ld h, e
    ld e, b
    ld h, e
    add e
    ld h, e
    or h
    ld h, e
    db $db
    ld h, e
    nop
    ld h, h
    add hl, hl
    ld h, h
    ld a, [hl-]
    ld h, h
    ld l, b
    ld h, h
    sub l
    ld h, h
    ret z

    ld h, h
    add sp, $64
    inc c
    ld h, l
    ld a, [hl+]
    ld h, l
    ld c, b
    ld h, l
    ld [hl], e
    ld h, l
    add [hl]
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l

jr_056_67a9:
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l

jr_056_67c9:
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc d
    ld h, l
    cp d
    ld h, l
    jp c, $f865

    ld h, l
    jr jr_056_6881

    ld [hl], $66
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld c, d
    ld h, [hl]
    jr nz, jr_056_6869

jr_056_6869:
    ld bc, $00ff
    rst $38
    add $01
    ld [bc], a
    ld bc, $01fe
    ld [bc], a
    inc bc
    ld bc, $0001
    xor $ff
    xor $ff
    cp $ff
    sub $01
    ld [bc], a

jr_056_6881:
    nop
    jr nz, jr_056_6884

jr_056_6884:
    ld bc, $82ff
    rst $38
    jp nz, $a2ff

    rst $38
    sub d
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    add d
    ld bc, $0114
    ld b, h
    rst $38
    jr c, @+$01

    nop
    jr nz, jr_056_68a5

jr_056_68a5:
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub d
    rst $38
    ld d, h
    rst $38
    jr c, @+$01

    ld d, h
    rst $38
    sub d
    rst $38
    stop
    dec b
    dec b
    dec b
    rst $38
    db $fc
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld a, h
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    dec b
    ld e, $01
    add b
    add b
    dec b
    rst $38
    db $f4
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    dec b
    rst $38
    or $f8
    ld hl, sp+$1c
    dec b
    ld b, b
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, $05
    ld d, h
    rlca
    dec b
    ld e, $00
    dec b
    rst $38
    ld hl, sp-$40
    ret nz

    ld hl, sp-$08
    cp $fe
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff05
    db $f4
    add c
    add c
    add e
    add e
    jp $c3c3


    jp $0707


    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    dec b
    inc h
    nop
    dec b
    ld e, $00
    inc bc
    inc bc
    dec b
    ld h, h
    ld a, [bc]
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    dec b
    ld d, h
    nop
    ld b, $06
    ld bc, $0701
    rlca
    dec b
    ld d, d
    nop
    rrca
    rrca
    rlca
    rlca
    dec b
    and h
    nop
    dec b
    ld h, b
    ld b, $c0
    ret nz

    db $fc
    db $fc
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    dec b
    ld h, [hl]
    ld [$ffff], sp
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    ccf
    ccf
    rrca
    rrca
    dec b
    ld a, [hl]
    nop
    dec b
    ld h, d
    inc b
    add b
    add b
    dec b
    ld h, b
    ld [bc], a
    dec b
    ld [hl-], a
    ld b, $05
    jr nc, jr_056_697a

    dec b
    ld b, b

jr_056_697a:
    ld a, [bc]
    nop
    nop
    dec b
    ld d, h
    ld [$0e0e], sp
    dec b
    rst $38
    ld hl, sp+$05
    ld h, b
    ld [bc], a
    ld bc, $0501
    ld a, b
    nop
    rrca
    rrca
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jp $83c3


    add e
    add c
    add c
    dec b
    rst $38
    or $05
    sbc d
    nop
    dec b
    or d
    nop
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rlca
    rlca
    dec b
    rst $38
    or $03
    inc bc
    dec b
    ld h, b
    ld [bc], a
    dec b
    ld d, h
    nop
    inc e
    inc e
    ld a, b
    ld a, b
    dec b
    sub [hl]
    nop
    dec b
    rst $38
    ld a, [$5005]
    nop
    nop
    nop
    dec b
    ld a, h
    ld d, $05
    ld a, [bc]
    inc d
    ld a, [hl]
    ld a, [hl]
    dec b
    ret z

    nop
    rra
    rra
    dec b
    ld e, b
    db $10
    dec b
    rst $38
    ld a, [c]
    jr nz, jr_056_69e0

    call nc, $0515
    rst $38
    ld a, [c]

jr_056_69e0:
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld d, $16
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec b
    add d
    inc d
    dec b
    ld a, h
    nop
    dec b
    ld a, h
    ld b, $05
    inc h
    ld b, $05
    rst $38
    ld a, [c]
    ldh a, [$f0]
    add b
    add b
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    dec b
    rst $38
    ld a, [c]
    inc e
    inc e
    ld [de], a
    ld [de], a
    dec b
    inc h
    jr nz, jr_056_6a13

    db $ec
    inc d
    ld bc, $0201

jr_056_6a13:
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    inc d
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    dec b
    rst $38
    ld a, [c]
    jr nc, jr_056_6a5a

    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    jr nc, jr_056_6a62

    dec b
    rst $38
    ld a, [c]
    ld c, $0e
    inc b
    dec b
    ld h, [hl]
    inc hl
    dec b
    ld a, [bc]
    inc b
    dec b
    or $1a
    dec b
    ld hl, sp+$18
    dec b
    ret nc

    ld d, $c0
    ret nz

    dec b
    sbc d
    inc d
    inc a
    inc a
    jr nz, jr_056_6a70

    jr c, jr_056_6a8a

    jr nz, jr_056_6a74

    inc a
    inc a
    dec b
    and b
    rst $38
    ld c, l

jr_056_6a5a:
    dec b
    dec c
    ccf
    ld c, l
    dec b
    ld l, l
    ccf
    ld c, l

jr_056_6a62:
    dec b
    call $4d3f
    dec b
    dec l
    ld c, a
    ld c, l
    dec b
    adc l
    ld c, a
    ld c, l
    dec b
    db $ed

jr_056_6a70:
    ld c, [hl]
    ld b, b
    ld [bc], a
    inc b

jr_056_6a74:
    inc b
    rst $38
    db $fc
    ld bc, $0f01
    rrca
    ccf
    ccf
    ld a, h
    ld a, h
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    inc b
    ld e, $01
    add b

jr_056_6a8a:
    add b
    inc b
    rst $38
    db $f4
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    inc b
    rst $38
    or $f8
    ld hl, sp+$1c
    inc b
    ld b, b
    dec bc
    rrca
    rrca
    rrca
    rrca
    ld c, $04
    ld d, h
    rlca
    inc b
    ld e, $00
    inc b
    rst $38
    ld hl, sp-$40
    ret nz

    ld hl, sp-$08
    cp $fe
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $ff04
    db $f4
    add c
    add c
    add e
    add e
    jp $c3c3


    jp $0707


    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    inc b
    inc h
    nop
    inc b
    ld e, $00
    inc bc
    inc bc
    inc b
    ld h, h
    ld a, [bc]
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    inc b
    ld d, h
    nop
    ld b, $06
    ld bc, $0701
    rlca
    inc b
    ld d, d
    nop
    rrca
    rrca
    rlca
    rlca
    inc b
    and h
    nop
    inc b
    ld h, b
    ld b, $c0
    ret nz

    db $fc
    db $fc
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    inc b
    ld h, [hl]
    ld [$ffff], sp
    ldh [$e0], a
    ldh a, [$f0]
    ld a, h
    ld a, h
    ccf
    ccf
    rrca
    rrca
    inc b
    ld a, [hl]
    nop
    inc b
    ld h, d
    inc b
    add b
    add b
    inc b
    ld h, b
    ld [bc], a
    inc b
    ld [hl-], a
    ld b, $04
    jr nc, jr_056_6b25

    inc b
    ld b, b

jr_056_6b25:
    ld a, [bc]
    nop
    nop
    inc b
    ld d, h
    ld [$0e0e], sp
    inc b
    rst $38
    ld hl, sp+$04
    ld h, b
    ld [bc], a
    ld bc, $0401
    ld a, b
    nop
    rrca
    rrca
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jp $83c3


    add e
    add c
    add c
    inc b
    rst $38
    or $04
    sbc d
    nop
    inc b
    or d
    nop
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rlca
    rlca
    inc b
    rst $38
    or $03
    inc bc
    inc b
    ld h, b
    ld [bc], a
    inc b
    ld d, h
    nop
    inc e
    inc e
    ld a, b
    ld a, b
    inc b
    sub [hl]
    nop
    inc b
    rst $38
    ld a, [$5004]
    nop
    nop
    nop
    inc b
    ld a, h
    ld d, $04
    ld a, [bc]
    inc d
    ld a, [hl]
    ld a, [hl]
    inc b
    ret z

    nop
    rra
    rra
    inc b
    ld e, b
    db $10
    inc b
    rst $38
    ld a, [c]
    jr nz, jr_056_6b8a

    call nc, $0415
    rst $38

jr_056_6b8a:
    ld a, [c]
    ld [de], a
    ld [de], a
    ld a, [de]
    ld a, [de]
    ld d, $16
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc b
    add d
    inc d
    inc b
    ld a, h
    nop
    inc b
    ld a, h
    ld b, $04
    inc h
    ld b, $04
    rst $38
    ld a, [c]
    ldh a, [$f0]
    add b
    add b
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    inc b
    rst $38
    ld a, [c]
    inc e
    inc e
    ld [de], a
    ld [de], a
    inc b
    inc h
    jr nz, @+$06

    db $ec
    inc d
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld bc, $01ff
    rst $38
    cp $18
    ld bc, $0712
    rra
    rst $38
    nop
    rst $38
    inc a
    ld bc, $0712
    inc a
    rst $38
    nop
    rst $38
    ld [hl], c
    rst $38
    reti


    rst $38
    pop bc
    ld bc, $0136
    reti


    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    di
    rst $38
    add e
    rst $38
    add e
    ld bc, $0542
    nop
    rst $38
    inc hl
    rst $38
    ld h, $ff
    and a
    rst $38
    and e
    rst $38
    ld h, c
    rst $38
    ld h, h
    rst $38
    daa
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ld c, h
    rst $38
    inc c
    rst $38
    adc a
    rst $38
    call z, $ccff
    rst $38
    adc a
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    sbc e
    ld bc, $0174
    sbc [hl]
    ld bc, $0f00
    nop
    ld a, c
    rst $38
    ld h, l
    rst $38
    ld h, h
    rst $38
    ld a, b
    rst $38
    ld h, h
    ld bc, $0196
    nop
    rst $38
    ld [$98ff], sp
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    ld h, b
    ld bc, $01aa
    nop
    rst $38
    inc bc
    ld bc, $09b2
    nop
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    and e
    rst $38
    and e
    rst $38
    ld h, e
    rst $38
    ld h, e
    ld bc, $015e
    sbc c
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    dec e
    ld bc, $0174
    sbc c
    rst $38
    nop
    rst $38
    ccf
    rst $38
    inc c
    ld bc, $07e4
    nop
    rst $38
    ld a, $ff
    jr nc, @+$01

    jr nc, jr_056_6c72

    ld a, [c]

jr_056_6c72:
    dec b
    nop
    ld bc, $019a
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    reti


    ld bc, $1514
    ldh a, [rIE]
    nop
    rst $38
    ldh [rIE], a
    or b
    ld bc, $1524
    ldh [rSB], a
    and b
    rst $38
    ld c, l
    ld bc, $1f8f
    ld c, l
    ld bc, $1fef
    ld c, l
    ld bc, $2f4f
    ld c, l
    ld bc, $2faf
    dec a
    sub b
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    ld bc, $0502
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    nop
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, [hl]
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, h
    ld bc, $013a
    ld bc, $0631
    call nz, $3c01
    dec b
    ld bc, $023b
    ld bc, $064b
    ld h, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld c, h
    ld bc, $033c
    jr c, @+$01

    ld b, h
    rst $38
    ld b, b
    rst $38
    ld e, [hl]
    rst $38
    ld b, h
    rst $38
    ld c, h
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0302
    ld d, b
    rst $38
    ld d, b
    rst $38
    jr nz, jr_056_6d20

    nop

jr_056_6d20:
    rlca
    ld bc, $0003
    adc a
    rst $38
    nop
    rst $38
    ld [$2201], sp
    rlca
    ld bc, $001f
    ld [bc], a
    rst $38
    dec b
    ld bc, HeaderTitle
    rrca
    rst $38
    ld [$88ff], sp
    rst $38
    nop
    rst $38
    rlca
    ld bc, $0122
    dec bc
    rst $38
    adc b
    rst $38
    adc c
    rst $38
    add [hl]
    ld bc, $0140
    add h
    rst $38
    inc b
    rst $38
    rst $00
    rst $38
    add h
    rst $38
    add h
    rst $38
    add a
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    inc b
    ld bc, $0156
    dec b
    rst $38
    inc b
    rst $38
    db $c4, $ff, $00
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    ld bc, $0370
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ld hl, sp-$01
    jr nz, jr_056_6d88

    inc b

jr_056_6d88:
    rlca
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0114
    ld hl, sp-$01
    adc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add b
    ld bc, $0722
    ld hl, sp-$01
    nop
    rst $38
    add a
    ld bc, $011c
    add a
    rst $38
    add b
    ld bc, $0136
    nop
    rst $38
    ld [$8dff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    ld bc, $011c
    ld [$00ff], sp
    rst $38
    add d
    rst $38
    add l
    ld bc, $0154
    adc a
    ld bc, $031c
    ld [$0cff], sp
    ld bc, HeaderSGBFlag
    adc c
    ld bc, $0f1c
    nop
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    adc b
    ld bc, $010a
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    ld bc, $0e01
    ld [hl], b
    ld bc, $030a
    ld bc, $000b
    ld [hl], b
    rst $38
    nop
    rst $38
    ldh a, [rSB]
    ld a, [bc]
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    jr nz, jr_056_6e17

    ld d, d

jr_056_6e17:
    add hl, bc
    ld bc, $0e11
    ld bc, $0033
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$3c01], sp
    inc bc
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    ld bc, $0502
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0512
    nop
    ld bc, HeaderLogo
    adc b
    rst $38
    xor b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    adc b
    rst $38
    nop
    rst $38
    add h
    ld bc, $0732
    add a
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld [$4401], sp
    dec b
    rst $08
    ld bc, $0140
    ld bc, $0005
    adc a
    ld bc, HeaderLogo
    rrca
    rst $38
    nop
    rst $38
    adc a
    ld bc, $0144
    adc a
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    ld bc, $012e
    nop
    ld bc, $0114
    ld bc, $f0ff
    ld bc, $0073
    nop
    rst $38
    jr @+$01

    jr jr_056_6e92

    ld [hl], b

jr_056_6e92:
    ld bc, $8301
    ld bc, $0090
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    add b
    ld bc, $010a
    nop
    rst $38
    ld hl, sp+$01
    ld a, [bc]
    ld bc, $1301
    inc b
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0124
    ld hl, sp+$01
    inc b
    ld bc, $ff00
    ld [hl], b
    rst $38
    adc b
    ld bc, $030a
    adc b
    rst $38
    ld [hl], b
    ld bc, $0f10
    nop
    ld bc, $0f51
    dec e
    jr @+$01

    jr jr_056_6ed5

    ld a, [hl]

jr_056_6ed5:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    ld bc, $0502
    ld bc, $0601
    and b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0124
    ld hl, sp+$01
    inc b
    ld bc, $0100
    inc b
    ld bc, $0501
    nop
    ld bc, $0025
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0542
    ld bc, $0e11
    ld bc, $0237
    jr nz, jr_056_6f18

    ld l, b

jr_056_6f18:
    inc bc
    ld bc, $f0ff
    ld bc, $0a71
    jr @+$01

    jr jr_056_6f24

    ld a, [hl]

jr_056_6f24:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    jr nz, jr_056_6f40

    inc d

jr_056_6f40:
    rlca
    nop
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    sub b
    rst $38
    adc b
    ld bc, $0110
    add b
    rst $38
    add b
    ld bc, $0532
    nop
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    sbc b
    ld bc, $0124
    ld bc, $0401
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    ld bc, $0f10
    nop
    ld bc, $0025
    adc b
    rst $38
    ld hl, sp+$01
    ld [hl], d
    inc bc
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, HeaderLogo
    ld hl, sp-$01
    adc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    sbc b
    ld bc, $030c
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld bc, $0532
    nop
    rst $38
    ldh a, [rSB]
    inc c
    ld bc, $fff0
    and b
    rst $38
    sub b
    ld bc, $010e
    ld bc, $0f51
    dec e
    jr @+$01

    jr jr_056_6fd9

    ld a, [hl]

jr_056_6fd9:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    ld [$0201], sp
    inc bc
    adc b
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld [hl], b
    ld bc, $010a
    ld bc, $0215
    ld bc, $000f
    ld bc, $000b
    ld d, b
    rst $38
    jr nz, @+$03

    jr z, jr_056_7002

    ld bc, $f0ff

jr_056_7002:
    ld bc, $0f31
    dec sp
    jr @+$01

    jr jr_056_700b

    ld a, [hl]

jr_056_700b:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0102
    xor b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    adc b
    rst $38
    nop
    rst $38
    jr nz, jr_056_7023

    ld [de], a

jr_056_7023:
    add hl, bc
    nop
    rst $38
    ld [hl], b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sub b
    ld bc, $0302
    sub b
    rst $38
    ldh [rSB], a
    jr nz, jr_056_7045

    ld bc, $0445

jr_056_7045:
    ld bc, $002f
    adc b
    rst $38
    ret c

    ld bc, $0108
    ld bc, $0203
    ld bc, $f0ff
    ld bc, $0f61
    dec bc
    jr @+$01

    jr jr_056_705d

    ld a, [hl]

jr_056_705d:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    adc b
    ld bc, $0102
    ld hl, sp+$01
    ld [bc], a
    inc bc
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    ld bc, $0114
    ld bc, $0209
    nop
    rst $38
    ldh a, [rSB]
    ld [bc], a
    ld bc, $fff0
    add b
    ld bc, $012a
    ld bc, $0e21
    adc b
    rst $38
    adc h
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc c
    ld bc, $030c
    adc a
    ld bc, $0102
    ld bc, $0453
    nop
    rst $38
    add a
    rst $38
    ld [$08ff], sp
    rst $38
    add a
    rst $38
    nop
    ld bc, $0366
    ld c, $ff
    sub c
    rst $38
    db $10
    rst $38
    ld c, $ff
    add c
    rst $38
    sub c
    rst $38
    ld c, $ff
    nop
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    ei
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc hl
    ld bc, $0304
    nop
    rst $38
    db $e4
    rst $38
    ld b, $ff
    dec b
    rst $38
    push hl
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    ld c, a
    rst $38
    ld c, b
    ld bc, $012a
    nop
    rst $38
    rra
    rst $38
    add h
    rst $38
    add h
    ld bc, $011a
    ld bc, $001b
    nop
    rst $38
    ld [$14ff], sp
    ld bc, $0144
    ld a, $01
    inc b
    ld bc, $ff00
    ld a, h
    rst $38
    db $10
    ld bc, $0754
    nop
    rst $38
    ld b, a
    ld bc, $032a
    ld bc, $002b
    ld b, a
    rst $38
    nop
    rst $38
    ld de, $99ff
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    add b
    ld bc, $0302
    add c
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    and c
    ld bc, $0114
    pop af
    rst $38
    ld de, $11ff
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    ld de, $10ff
    rst $38
    ldh [rIE], a
    db $10
    ld bc, $0126
    nop
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    and d
    rst $38
    ld b, e
    rst $38
    ld b, d
    ld bc, $013a
    nop
    rst $38
    pop bc
    rst $38
    ld hl, $21ff
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    ld hl, $00ff
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    adc a
    rst $38
    add d
    ld bc, $0764
    nop
    rst $38
    sub c
    ld bc, $011c
    rra
    ld bc, $011c
    ld bc, $001f
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    sub b
    nop
    ld bc, $00ff
    rst $38
    add hl, bc
    ld bc, $0302
    adc c
    rst $38
    adc c
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    inc de
    rst $38
    ld [de], a
    ld bc, $0514
    db $e3
    rst $38
    nop
    rst $38
    add e
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    dec h
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    add e
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld c, l
    rst $38
    ld a, [bc]
    rst $38
    ld [$48ff], a
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    sub b
    ld bc, $0542
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld h, $ff
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    db $10
    ld bc, $0764
    ld bc, $f0ff
    ld bc, $0a71
    jr @+$01

    jr jr_056_7217

    ld a, [hl]

jr_056_7217:
    ld b, $90
    nop
    ld bc, $00ff
    rst $38
    pop af
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    pop af
    rst $38
    and c
    rst $38
    sub c
    rst $38
    adc c
    rst $38
    nop
    rst $38
    di
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld bc, $0312
    ld a, [c]
    rst $38
    nop
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    call nz, $2401
    ld bc, $ff07
    nop
    rst $38
    rrca
    rst $38
    ld [$08ff], sp
    ld bc, $0332
    rst $08
    rst $38
    nop
    rst $38
    adc [hl]
    rst $38
    ld de, $10ff
    rst $38
    sub b
    rst $38
    ld de, $11ff
    rst $38
    adc [hl]
    rst $38
    nop
    rst $38
    ld a, $01
    inc [hl]
    ld bc, $5501
    inc b
    nop
    rst $38
    ld b, a
    rst $38
    ld c, b
    ld bc, $0564
    ld b, a
    rst $38
    nop
    rst $38
    ld de, $99ff
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    ld de, $00ff
    rst $38
    jr @+$01

    jr @+$01

    ld bc, $f0ff
    ld bc, $0183
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
