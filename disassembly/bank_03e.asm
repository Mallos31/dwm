; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    ld a, $9d
    ld b, b
    call nz, $f940
    ld b, b
    ld c, h
    ld b, c
    adc c
    ld b, c
    add $41
    sbc $41
    db $10
    ld b, d
    jr c, jr_03e_4055

    ld d, a
    ld b, d
    ld [hl], d
    ld b, d
    cp c
    ld b, d
    db $fc
    ld b, d
    ccf
    ld b, e
    adc l
    ld b, e
    call nz, $e443
    ld b, e
    inc h
    ld b, h
    ld a, b
    ld b, h
    sbc l
    ld b, h
    sbc $44
    inc bc
    ld b, l
    jr nc, jr_03e_4074

    ld a, e
    ld b, l
    sbc a
    ld b, l
    reti


    ld b, l
    daa
    ld b, [hl]
    ld d, e
    ld b, [hl]
    sub b
    ld b, [hl]
    add $46
    and $46
    dec e
    ld b, a
    ld l, d
    ld b, a
    xor a
    ld b, a
    call c, $2347
    ld c, b
    ld e, e
    ld c, b
    sbc c
    ld c, b
    push bc
    ld c, b
    ldh a, [rOBP0]
    ld a, [hl+]
    ld c, c
    add b
    ld c, c

jr_03e_4055:
    or b
    ld c, c
    db $ec
    ld c, c
    ld de, $394a
    ld c, d
    ld h, [hl]
    ld c, d
    xor c
    ld c, d
    jp hl


    ld c, d
    dec a
    ld c, e
    ld l, d
    ld c, e
    or e
    ld c, e
    db $eb
    ld c, e
    ld hl, $6b4c
    ld c, h
    sbc e
    ld c, h
    push hl
    ld c, h
    dec e

jr_03e_4074:
    ld c, l
    ld h, a
    ld c, l
    or [hl]
    ld c, l
    push hl
    ld c, l
    ld h, $4e
    ld h, d
    ld c, [hl]
    sbc e
    ld c, [hl]
    call c, $0e4e
    ld c, a
    ld c, e
    ld c, a
    ld a, a
    ld c, a
    sbc a
    ld c, a
    jp z, $f24f

    ld c, a
    inc sp
    ld d, b
    ld e, h
    ld d, b
    add a
    ld d, b
    xor [hl]
    ld d, b
    ldh a, [$50]
    jr @+$53

    ld d, e
    ld d, c
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    ld b, l
    ld bc, $f0ff
    ld bc, $0162
    ld bc, $0f5b
    inc b
    inc sp
    ld bc, $f3fe
    ld bc, $0f7a
    rlca
    ld bc, $0b04
    ld bc, $0ca3
    ld bc, $0f03
    ld a, [hl+]
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc bc
    ld bc, $0401
    inc sp
    inc sp
    ld bc, $0f1a
    dec bc
    nop
    ld bc, $0f39
    dec bc
    nop
    ld bc, $0f58
    inc c
    ld bc, $0f47
    dec c
    ld bc, $0f27
    ld c, $01
    jr z, @+$11

    dec b
    ld [hl+], a
    ld bc, $0401
    ld [hl+], a
    ld bc, $fffa
    inc bc
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc bc
    inc sp
    nop
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    inc sp
    inc sp
    ld bc, $0f1a
    dec b
    ld bc, $0026
    ld bc, $0f36
    add hl, bc
    ld bc, $001f
    ld bc, HeaderCGBFlag
    ld bc, $0f5b
    inc bc
    ld bc, $0220
    ld bc, $0627
    ld bc, $0d81
    ld bc, $0129
    ld bc, $0040
    ld bc, $0f9b
    dec b
    ld bc, $0167
    ld bc, $0798
    ld bc, $0fc3
    nop
    ld bc, $02c2
    ld bc, $0fdc
    ld bc, $0100
    ld bc, $0133
    nop
    inc b
    ld de, $fa01
    rst $38
    rlca
    ld bc, $f1ff
    ld bc, $0f19
    add hl, bc
    ld bc, $f0fd
    ld bc, $0f39
    dec bc
    ld bc, $0341
    ld bc, $0f5e
    ld [bc], a
    ld bc, $f3ff
    ld bc, $0f7a
    dec b
    ld bc, $f3fd
    ld [hl+], a
    ld bc, $0b9a
    ld bc, $0809
    ld bc, $f0ff
    ld bc, $0fb9
    add hl, bc
    ld bc, $0f05
    ld [$0100], sp
    ld bc, $0133
    nop
    dec b
    ld bc, $fffa
    ld c, d
    nop
    ld bc, $0f58
    rlca
    ld bc, $f2ff
    nop
    ld bc, $0f79
    ld b, $01
    ld [bc], a
    rrca
    inc c
    ld bc, $f3ff
    ld bc, $0588
    ld bc, $0bc1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld bc, $00e0
    ld bc, $f2fa
    ld de, $1111
    ld de, $3333
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    ld b, e
    ld bc, $0501
    ld bc, $0f59
    inc h
    ld [hl+], a
    ld bc, $0f01
    ld c, h
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    inc bc
    ld bc, $0208
    inc sp
    ld bc, $0124
    ld bc, $0f1c
    inc bc
    ld bc, $0106
    ld bc, $0717
    ld bc, $0f42
    ld bc, $4501
    nop
    ld bc, $0f5a
    ld a, [bc]
    ld bc, $0c57
    ld bc, $0f87
    ld c, l
    ld bc, $0507
    nop
    ld bc, $3301
    ld bc, $0400
    ld de, $fa01
    rst $38
    dec bc
    nop
    inc sp
    ld bc, $0f1a
    add hl, bc
    nop
    ld bc, $0f37
    inc c
    inc sp
    nop
    ld bc, $0f58
    dec hl
    ld bc, $0f46
    ld l, $01
    ld h, h
    ld bc, $dc01
    rrca
    ld bc, $0100
    ld bc, $0133
    nop
    dec b
    ld bc, $fffa
    ld b, [hl]
    nop
    ld bc, $0161
    ld bc, $0f59
    daa
    ld bc, $0f03
    inc sp
    ld [hl+], a
    ld bc, $fbfa
    ld de, $a001
    ld a, [c]
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f7a
    inc bc
    ld [hl+], a
    ld bc, $0b71
    ld de, $7101
    dec bc
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    nop
    inc sp
    ld bc, $0f1a
    dec b
    ld bc, $0441
    ld bc, $0f3a
    inc bc
    ld bc, $0541
    ld bc, $0f59
    add hl, bc
    ld bc, $0322
    ld bc, $0f7c
    ld bc, $0122
    inc hl
    inc bc
    ld bc, $0948
    ld bc, $08a5
    ld bc, $0485
    ld bc, $0fb9
    dec b
    ld bc, $0f41
    inc c
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $001d
    ld bc, $0020
    ld bc, $0f19
    dec h
    inc sp
    ld bc, $0022
    ld bc, $0064
    ld bc, $0f5a
    dec b
    inc sp
    ld bc, $0f73
    dec c
    ld bc, $0269
    ld [hl+], a
    ld bc, $0b9a
    ld bc, $0559
    ld bc, $0367
    ld bc, $0fb9
    add hl, bc
    ld bc, $0064
    ld bc, $0fd9
    inc b
    nop
    ld bc, $3301
    ld bc, $0400
    ld de, $fa01
    rst $38
    dec bc
    nop
    ld bc, $0f19
    inc c
    ld bc, $0f08
    dec c
    inc sp
    inc sp
    ld bc, $0f5a
    ld a, [hl+]
    nop
    inc sp
    ld [hl+], a
    ld bc, $0b9a
    ld bc, $0909
    nop
    ld bc, $0b27
    ld bc, $06c6
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0309
    ld de, $1111
    ld de, $3333
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    ld a, [bc]
    nop
    ld bc, $0f18
    ld a, [bc]
    nop
    nop
    ld bc, $0f37
    ld b, $01
    ld b, $04
    ld bc, $0f58
    ld [$7c01], sp
    rlca
    ld bc, $0e7e
    ld [hl+], a
    ld bc, $045c
    ld bc, $0409
    ld bc, $0fa1
    nop
    ld bc, $0904
    ld bc, $0cc1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $01a0
    nop
    nop
    ld de, $1111
    ld de, $3333
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    inc sp
    nop
    inc sp
    ld bc, $001f
    nop
    inc sp
    ld bc, $0f1a
    dec b
    ld bc, $0026
    ld bc, $0223
    ld bc, $0f3c
    ld b, $01
    dec e
    ld [bc], a
    ld bc, $0f5b
    dec b
    ld bc, $0145
    ld bc, $0f78
    ld a, [bc]
    ld bc, $0280
    ld bc, $0f9b
    ld b, d
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0420
    ld bc, $0f19
    dec l
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $0f1a
    inc a
    ld bc, $0309
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0520
    ld bc, $0f1a
    daa
    ld bc, $045e
    ld bc, $0f5c
    inc b
    ld bc, $077c
    ld bc, $0f7e
    ld bc, $9e01
    ld b, $01
    sbc h
    rrca
    ld [bc], a
    ld bc, $055e
    ld bc, $0fba
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld bc, $00e0
    ld bc, $f6fa
    inc sp
    inc sp
    ld bc, $0606
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    nop
    nop
    nop
    inc sp
    nop
    inc sp
    inc sp
    ld bc, $0021
    ld bc, $0f1d
    ld bc, $2401
    nop
    nop
    inc sp
    ld bc, $0042
    ld bc, $0f3b
    ld [bc], a
    inc sp
    ld bc, $0327
    ld bc, $0428
    ld bc, $0e60
    ld bc, $0223
    ld bc, $0658
    ld bc, $0a82
    ld [hl+], a
    ld bc, $0224
    ld bc, $0a47
    ld bc, $08a5
    ld bc, $01a5
    ld bc, $0181
    ld bc, $0fbb
    ld b, $01
    pop hl
    ld [bc], a
    ld bc, $0fda
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0420
    ld bc, $0f19
    dec l
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $0f1a
    inc hl
    ld [hl+], a
    ld bc, $0b21
    ld de, $2101
    dec bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0421
    ld bc, $0f1a
    add hl, bc
    nop
    ld bc, $0f37
    ld b, $01
    ld h, $02
    ld bc, $0626
    ld bc, $0f60
    nop
    ld bc, $055d
    ld bc, $0f7c
    ld bc, $0122
    ld b, e
    inc bc
    ld bc, $0828
    ld bc, $0ca4
    ld bc, $0f24
    rrca
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    ld bc, $0b1a
    ld bc, $0309
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0520
    ld bc, $0f1a
    ld c, l
    ld bc, $0f7a
    ld b, e
    ld [hl+], a
    ld bc, $0480
    ld [hl+], a
    ld bc, $f3fa
    ld bc, $0480
    ld bc, $0309
    nop
    ld bc, $3301
    ld bc, $0500
    ld bc, $fffa
    ld c, l
    ld bc, $0f3a
    add hl, hl
    nop
    ld bc, $00a5
    ld bc, $0f9b
    inc b
    ld bc, $01bf
    nop
    ld bc, $0fb8
    dec b
    ld [hl+], a
    ld bc, $05e0
    ld bc, $023a
    ld de, $f001
    dec b
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0120
    ld bc, $001f
    ld bc, $0f1a
    add hl, bc
    ld bc, $0025
    ld bc, $0f3a
    ld [$0100], sp
    ld d, [hl]
    rrca
    add hl, bc
    ld bc, $001d
    ld bc, $0826
    ld bc, $0d82
    ld bc, $0440
    ld bc, $0f9b
    inc b
    ld bc, $04c0
    ld bc, $0fba
    inc bc
    ld [hl+], a
    ld bc, $05e0
    ld bc, $f6fa
    ld bc, $02f0
    ld bc, $f2a0
    nop
    ld bc, $3301
    ld bc, $0400
    ld de, $fa01
    rst $38
    ld c, h
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $fffa
    inc hl
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0309
    ld de, $f001
    dec b
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    ld b, e
    ld bc, $0403
    ld bc, $0f58
    inc c
    inc sp
    nop
    ld bc, $0f79
    inc b
    ld [hl+], a
    ld bc, $005f
    ld bc, $015f
    ld bc, $f3fa
    ld bc, $0ca1
    ld bc, $0287
    ld bc, $0fb7
    rlca
    ld [hl+], a
    ld bc, $04e1
    ld bc, $f3fa
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc bc
    ld bc, $0201
    nop
    inc sp
    nop
    ld bc, $0f19
    add hl, bc
    nop
    inc sp
    nop
    ld bc, $0918
    ld bc, $0b45
    ld bc, $0045
    nop
    inc sp
    ld bc, $0f5a
    ld b, $01
    ld h, h
    ld [bc], a
    ld bc, $0f79
    ld b, $01
    ld h, h
    inc bc
    ld [hl+], a
    ld bc, $0b9a
    ld bc, $0619
    ld bc, $0266
    ld bc, $0fb9
    inc b
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0409
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc c
    inc sp
    ld bc, $0f1a
    inc hl
    ld bc, $0521
    ld bc, $0f59
    inc h
    ld [hl+], a
    ld bc, $0f21
    inc l
    ld de, $0122
    pop hl
    inc b
    ld bc, $f3fa
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc bc
    ld bc, $0401
    inc sp
    inc sp
    ld bc, $0f1a
    ld b, a
    ld bc, $021f
    ld bc, $0f7a
    dec b
    nop
    inc sp
    ld bc, $037e
    ld bc, $0f9b
    inc bc
    ld bc, $00a2
    ld bc, $00bf
    ld bc, $0fb9
    inc b
    ld [hl+], a
    ld bc, $05e0
    ld bc, $f3fa
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    ld [$0100], sp
    ld d, $0f
    dec bc
    nop
    nop
    ld bc, $0025
    ld bc, $0f3a
    rlca
    ld bc, $0243
    ld bc, $0f5a
    ld [$2301], sp
    ld bc, $7a01
    rrca
    ld a, [bc]
    inc sp
    nop
    ld bc, $0f99
    inc c
    ld bc, $0f08
    ld a, [bc]
    ld bc, $0f05
    ld [$0100], sp
    ld bc, $1111
    ld de, $3311
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0421
    ld bc, $0f1a
    ld c, l
    ld bc, $0f7a
    ld c, l
    ld bc, $0f9a
    inc bc
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    dec bc
    nop
    ld bc, $0f19
    dec b
    nop
    ld bc, $0223
    ld bc, $0508
    ld bc, $0d41
    nop
    nop
    ld bc, $0045
    nop
    inc sp
    ld bc, $0f5a
    dec h
    ld bc, $0342
    ld [hl+], a
    ld bc, $0f3a
    inc b
    ld bc, $0f21
    dec c
    ld bc, $0f01
    inc c
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    inc b
    nop
    ld bc, $0f12
    inc c
    inc sp
    ld bc, $0421
    ld bc, $0f3a
    inc b
    ld bc, $0f21
    dec c
    nop
    nop
    ld bc, $0321
    ld bc, $0f7a
    dec b
    ld bc, $0441
    ld bc, $0f9a
    dec b
    ld bc, $0181
    nop
    nop
    ld bc, $0fb9
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f3fa
    ld de, $1111
    inc sp
    inc sp
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $f0fc
    ld bc, $0124
    ld bc, $0f1e
    inc b
    inc sp
    inc sp
    nop
    ld bc, $0223
    ld bc, $0f3e
    inc b
    nop
    ld bc, $0f56
    inc c
    ld bc, $0242
    ld bc, $0f7b
    add hl, bc
    ld bc, $0d37
    ld bc, $0f38
    ld a, [de]
    ld bc, $0021
    ld [hl+], a
    ld bc, $0b7a
    ld bc, $0309
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc c
    inc sp
    ld bc, $0f1a
    ld c, l
    ld bc, $0f7a
    ld b, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f3fa
    ld de, $1111
    inc sp
    inc sp
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc b
    nop
    ld bc, $0401
    ld bc, $0f1a
    dec b
    nop
    inc sp
    inc sp
    ld bc, $0121
    ld bc, $0f3a
    dec b
    inc sp
    nop
    nop
    ld bc, $0144
    ld bc, $0f5a
    inc b
    ld bc, $0043
    ld bc, $0845
    ld bc, $0c81
    ld bc, $0041
    ld bc, $0c35
    ld bc, $0f25
    ld a, [bc]
    ld bc, $0b22
    ld bc, $0401
    ld [hl+], a
    ld bc, $fffa
    inc bc
    nop
    ld bc, $3301
    ld bc, $0400
    ld de, $fa01
    rst $38
    inc b
    ld bc, $f4ff
    ld bc, $0f19
    dec b
    ld bc, $0420
    ld bc, $0f39
    dec b
    ld bc, $f4fd
    ld bc, $0f59
    dec b
    inc sp
    ld bc, $031f
    ld bc, $0f79
    ld b, $01
    jr nz, jr_03e_4852

    ld bc, $0f99

jr_03e_4852:
    rlca
    ld bc, $0f03
    dec bc
    ld bc, $0f01
    inc c
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0420
    ld bc, $0f19
    inc c
    nop
    ld bc, $0f39
    dec bc
    nop
    ld bc, $0b28
    ld bc, $0b67
    nop
    ld bc, $0b47
    ld bc, $0a86
    nop
    nop
    ld bc, $0a66
    ld bc, $0ba4
    ld bc, $f3fa
    ld bc, $0fba
    ld b, $01
    inc hl
    rrca
    ld a, [bc]
    nop
    ld bc, $3301
    ld bc, $0400
    ld de, $fa01
    rst $38
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f7a
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0379
    ld de, $1111
    ld de, $3333
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc h
    nop
    ld bc, $0f32
    dec bc
    inc sp
    nop
    ld bc, $0341
    ld bc, $0f59
    dec b
    ld bc, $0460
    ld bc, $0f79
    inc b
    ld [hl+], a
    ld bc, $0f41
    inc c
    ld bc, $0f00
    dec l
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0420
    ld bc, $0f19
    rlca
    ld bc, $021c
    ld bc, $0f39
    ld [$6101], sp
    ld bc, $5901
    rrca
    ld [$4401], sp
    rrca
    inc c
    ld bc, $0f23
    dec c
    ld bc, $0f23
    ld a, [bc]
    ld [hl+], a
    ld bc, $0b21
    ld de, $2101
    dec bc
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc bc
    inc sp
    nop
    ld bc, $0201
    nop
    ld bc, $0f19
    ld b, $01
    ld hl, $0001
    ld bc, $0618
    ld bc, $0b42
    ld bc, $0440
    ld bc, $0f59
    ld b, $01
    ld b, b
    ld bc, $0100
    ld a, b
    rrca
    ld [$0133], sp
    ei
    ld a, [c]
    ld bc, $0f9a
    rlca
    ld bc, $01a2
    ld bc, $0fb9
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0409
    ld de, $1111
    inc sp
    inc sp
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc bc
    ld bc, $0401
    ld bc, $0f18
    rlca
    ld bc, $031b
    ld bc, $0f39
    rlca
    inc sp
    ld bc, $0160
    ld bc, $0f59
    daa
    ld bc, $0f43
    inc c
    ld bc, $0f12
    dec bc
    ld [hl+], a
    ld bc, $0f01
    inc c
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    inc sp
    ld bc, $011d
    inc sp
    ld bc, $0120
    ld bc, $0f1d
    ld bc, $3f01
    nop
    ld bc, $0f35
    add hl, bc
    ld bc, $0560
    ld bc, $0f5a
    add hl, hl
    ld bc, $0024
    ld bc, $0f9a
    ld [$3e01], sp
    ld [bc], a
    ld bc, $0fbb
    ld [bc], a
    ld [hl+], a
    ld bc, $05e0
    ld bc, $fffa
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0420
    ld bc, $0f19
    dec l
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $0f1a
    inc hl
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0f09
    inc b
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0421
    ld bc, $0f1a
    inc hl
    ld bc, $0521
    ld bc, $0f59
    inc h
    ld [hl+], a
    ld bc, $0f21
    inc l
    ld de, $0122
    pop hl
    inc b
    ld bc, $fffa
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    inc h
    ld bc, $0421
    inc sp
    inc sp
    ld bc, $0f5a
    inc hl
    ld [hl+], a
    ld bc, $0421
    ld [hl+], a
    ld bc, $0f1a
    inc h
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0f09
    inc b
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0421
    ld bc, $0f1a
    ld b, $00
    ld bc, $0126
    ld bc, $0f39
    ld b, $00
    ld bc, $0042
    ld bc, $0064
    ld bc, $0f5b
    inc bc
    nop
    nop
    ld bc, $0248
    ld bc, $0f79
    ld b, $01
    add hl, hl
    nop
    ld bc, $0876
    ld bc, $0ca2
    ld bc, $0282
    ld bc, $0fb8
    ld b, $01
    ld hl, $0c0f
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0021
    nop
    inc sp
    inc sp
    ld bc, $0f19
    ld [$3300], sp
    ld bc, $f0fd
    ld bc, $0f3a
    ld b, $00
    ld bc, $0124
    ld bc, $0045
    ld bc, $0f5d
    inc bc
    ld bc, $0223
    ld bc, $0f79
    ld [$4401], sp
    ld bc, $0122
    ld a, [hl-]
    rrca
    rlca
    ld bc, $0121
    ld bc, $0fb9
    inc h
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    inc sp
    nop
    inc sp
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0f1a
    dec b
    nop
    ld bc, $0129
    ld bc, $0f38
    ld b, $01
    ld b, [hl]
    ld bc, $2601
    rlca
    ld bc, $0c61
    ld bc, $0122
    ld bc, $0045
    ld bc, $0f7a
    ld b, $01
    dec h
    nop
    ld bc, $0847
    ld bc, $0ca3
    ld bc, $0227
    ld bc, $0fb9
    dec b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $f6fa
    inc sp
    inc sp
    ld bc, $0606
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    dec l
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $0f1a
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0709
    inc sp
    inc sp
    ld bc, $0606
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    nop
    inc sp
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    ld bc, $0022
    ld bc, $0f1d
    ld bc, $0033
    inc sp
    ld bc, $0125
    ld bc, $0f39
    dec b
    ld bc, $0021
    ld bc, $0f55
    ld a, [bc]
    ld bc, $0461
    ld bc, $0f7a
    inc b
    ld bc, $0027
    ld bc, $0945
    ld bc, $0ea2
    ld bc, $02c1
    ld bc, $0fba
    inc c
    ld [hl+], a
    ld bc, $0bba
    ld bc, $0309
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    nop
    inc sp
    ld bc, $0222
    ld bc, $0f19
    dec b
    inc sp
    ld bc, $003e
    ld bc, $0f36
    dec bc
    ld bc, $0121
    ld bc, $0f59
    dec h
    ld bc, $0362
    ld bc, $0f98
    ld b, $01
    jr nz, @+$06

    ld bc, $0fb9
    ld b, $01
    ld [hl-], a
    inc c
    ld bc, $0a22
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $0120
    ld bc, $f0fd
    ld bc, $0f1a
    add hl, bc
    inc sp
    ld bc, $0f37
    dec c
    inc sp
    ld bc, $0f58
    dec l
    inc sp
    ld bc, $0f99
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0709
    inc sp
    inc sp
    ld bc, $0606
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $f1fc
    ld bc, $0f1a
    ld [$2301], sp
    nop
    ld bc, $0f39
    inc b
    inc sp
    nop
    nop
    ld bc, $0222
    ld bc, $0f59
    rlca
    ld bc, $005e
    inc sp
    ld bc, $0f78
    dec b
    ld [hl+], a
    ld bc, $045a
    ld bc, $0409
    ld bc, $0fa1
    nop
    ld bc, $0023
    inc sp
    ld bc, $0fb9
    dec b
    ld bc, $0241
    inc sp
    ld bc, $0fd8
    dec b
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    inc h
    ld bc, $0421
    ld bc, $0f58
    dec h
    ld [hl+], a
    ld bc, $0f21
    inc l
    ld de, $2222
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0709
    inc sp
    inc sp
    ld bc, $0606
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    ld bc, $001f
    ld bc, $0024
    ld bc, $0f19
    dec b
    inc sp
    ld bc, $031a
    ld bc, $0f39
    ld b, $01
    ld [hl+], a
    nop
    nop
    inc sp
    nop
    ld bc, $0f59
    rlca
    ld bc, $0020
    ld bc, $0857
    ld bc, $0d83
    ld bc, $0120
    ld bc, $0f99
    add hl, bc
    ld bc, $0041
    ld bc, $0fb9
    inc b
    ld [hl+], a
    ld bc, $02c0
    ld bc, $0527
    ld de, $e101
    dec bc
    nop
    ld bc, $1101
    inc sp
    ld bc, $0401
    ld bc, $fffa
    ld b, h
    nop
    nop
    nop
    ld bc, $0f54
    ld a, [bc]
    inc sp
    nop
    inc sp
    ld bc, $0262
    ld bc, $0f7a
    rlca
    ld bc, $0283
    ld bc, $0f9a
    ld [$8301], sp
    ld bc, $ba01
    rrca
    inc b
    ld [hl+], a
    ld bc, $04e1
    ld bc, $f3fa
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0421
    ld bc, $0f1a
    dec b
    nop
    ld bc, $0f33
    inc c
    inc sp
    nop
    nop
    inc sp
    ld bc, $0041
    ld bc, $0f5a
    ld b, $01
    daa
    nop
    ld bc, $0b27
    ld bc, $0c86
    ld bc, $0c76
    ld bc, $0da6
    inc sp
    nop
    ld bc, $0fb9
    dec b
    ld [hl+], a
    ld bc, $04e1
    ld bc, $f6fa
    ld bc, $02f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc b
    nop
    ld bc, $0f12
    inc c
    inc sp
    ld bc, $0321
    ld bc, $0f39
    ld b, $33
    ld bc, $f0fc
    inc sp
    ld bc, $0261
    ld bc, $0f5e
    inc bc
    ld bc, $0201
    ld bc, $0f7a
    inc b
    nop
    ld bc, $0062
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    ld bc, $0b9a
    ld bc, $0519
    ld bc, $0165
    ld bc, $0fb7
    rlca
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0409
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    dec l
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $0f1a
    inc h
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0709
    ld bc, $02f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    dec bc
    nop
    inc sp
    ld bc, $0f1a
    dec bc
    inc sp
    ld bc, $0f39
    ld a, [bc]
    nop
    ld bc, $0b27
    ld bc, $0966
    nop
    ld bc, $0066
    ld bc, $0748
    ld bc, $0c83
    ld bc, $0185
    ld bc, $0f98
    add hl, bc
    ld bc, $0f44
    ld a, [bc]
    ld [hl+], a
    ld bc, $04e1
    ld bc, $f3fa
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $3301
    ld bc, $0400
    ld de, $fa01
    rst $38
    dec bc
    nop
    ld bc, $0f19
    ld a, [hl+]
    nop
    nop
    ld bc, $0f58
    ld a, [bc]
    nop
    inc sp
    nop
    ld bc, $0908
    ld bc, $0b85
    ld bc, $0085
    ld bc, $0f98
    ld [$fb01], sp
    ld a, [c]
    ld bc, $0fb9
    inc b
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0309
    ld de, $f001
    dec b
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc bc
    inc sp
    nop
    inc sp
    ld bc, $0022
    nop
    nop
    ld bc, $0f19
    dec b
    ld bc, $0340
    ld bc, $0f38
    dec c
    inc sp
    ld bc, $0f59
    ld c, h
    ld bc, $0f38
    dec b
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0709
    ld bc, $02f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    ld b, e
    inc sp
    inc sp
    inc sp
    ld bc, $005f
    ld bc, $0f57
    rlca
    ld bc, $007e
    ld bc, $0062
    ld bc, $0f79
    inc b
    ld [hl+], a
    ld bc, $0061
    ld bc, $005e
    ld bc, $0609
    ld bc, $0ca3
    ld bc, $0983
    ld bc, $0dc0
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0409
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    inc h
    ld bc, $0421
    ld bc, $0f58
    dec h
    ld [hl+], a
    ld bc, $0f21
    inc l
    ld de, $0122
    pop hl
    inc bc
    ld bc, $0709
    ld bc, $02f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc bc
    inc sp
    nop
    nop
    inc sp
    inc sp
    inc sp
    ld bc, $f0fd
    ld bc, $0f1a
    add hl, bc
    inc sp
    nop
    ld bc, $0a18
    ld bc, $0746
    ld bc, $0440
    ld bc, $0f59
    ld b, $01
    ld [de], a
    dec bc
    ld bc, $0f81
    inc a
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0409
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    dec b
    nop
    ld bc, $0f13
    inc c
    ld bc, $0121
    nop
    ld bc, $0f38
    rlca
    ld bc, $0243
    ld bc, $0f58
    daa
    ld bc, $0263
    nop
    ld bc, $0f99
    add hl, bc
    ld bc, $0a45
    ld bc, $0fc3
    ld bc, $0701
    rrca
    ld b, $00
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    ld c, l
    ld bc, $0f79
    ld c, l
    ld bc, $0f99
    inc b
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    ld c, l
    ld bc, $0f5a
    ld c, l
    ld bc, $0f7a
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0479
    ld de, $1111
    inc sp
    inc sp
    ld bc, $00f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    ld c, l
    ld bc, $0f79
    ld b, l
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0f09
    inc b
    nop
    ld bc, $1101
    inc sp
    ld bc, $0301
    ld de, $fa01
    rst $38
    inc h
    nop
    ld bc, $0f32
    inc c
    inc sp
    nop
    ld bc, $0241
    ld bc, $0f59
    dec b
    ld bc, $f0fc
    ld bc, $0f75
    ld a, [bc]
    inc sp
    ld bc, $0261
    ld bc, $0f99
    dec b
    ld bc, $0001
    ld bc, $057c
    ld bc, $0fbe
    nop
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0409
    ld bc, $05f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld de, $1111
    inc sp
    inc sp
    ld bc, $0000
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    ld c, l
    ld bc, $0f79
    ld b, l
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0709
    ld bc, $02f0
    ld bc, $f2a0
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0221
    nop
    ld bc, $0f19
    dec bc
    nop
    inc sp
    ld bc, $0f39
    ld a, [hl+]
    nop
    inc sp
    ld bc, $0f78
    dec bc
    ld bc, $0f46
    ld c, $01
    sub a
    inc c
    ld bc, $0fc7
    ld d, $00
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    ld c, l
    ld bc, $0f79
    ld b, l
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0709
    inc sp
    inc sp
    ld bc, $0606
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc bc
    inc sp
    inc sp
    nop
    inc sp
    ld bc, $0020
    nop
    ld bc, $0f19
    ld b, $01
    ld hl, $0103
    add hl, sp
    rrca
    ld [$2201], sp
    nop
    ld bc, $0f58
    add hl, bc
    ld bc, $0065
    ld bc, $0f78
    ld [$6201], sp
    ld [bc], a
    ld bc, $0f99
    ld [$6201], sp
    ld bc, $b901
    rrca
    inc b
    ld [hl+], a
    ld bc, $04e0
    ld bc, $0f09
    inc b
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    inc h
    ld bc, $0421
    ld bc, $0f58
    dec h
    ld [hl+], a
    ld bc, $0f21
    inc l
    ld de, $0122
    pop hl
    inc bc
    ld bc, $0f09
    inc b
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    nop
    nop
    inc sp
    ld bc, $0223
    ld bc, $0f1a
    dec b
    ld bc, $0323
    ld bc, $0f39
    dec b
    ld bc, $0442
    ld bc, $0f59
    dec b
    ld bc, $0f41
    dec c
    nop
    ld bc, $0421
    ld bc, $0f9a
    dec b
    ld bc, $0f42
    inc c
    ld [hl+], a
    ld bc, $04e1
    ld bc, $fffa
    inc bc
    nop
    ld bc, $1101
    ld bc, $0500
    ld bc, $fffa
    inc b
    inc sp
    ld bc, $0321
    ld bc, $0f19
    dec l
    inc sp
    ld bc, $0f5a
    inc l
    ld [hl+], a
    ld bc, $0f1a
    inc h
    ld [hl+], a
    ld bc, $03e1
    ld bc, $0f09
    inc b
    rst $38
    ld a, a
    rst $38
    ld d, $00
    jr z, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5185

jr_03e_5185:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    bit 2, d
    nop
    ld b, b
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld bc, $1400
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_51b4

jr_03e_51b4:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    db $ed
    ld d, h
    inc bc
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    ld d, e
    ld b, h
    ld e, l
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld a, e
    ld l, a
    dec [hl]
    ld bc, $0000
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rst $38
    inc bc
    ld e, a
    ld [bc], a
    dec b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    cp h
    ld d, h
    cp h
    ld d, e
    ld [$4287], sp
    sub c
    ld b, d
    ccf
    ld b, h
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    adc c
    ld b, l
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld h, b
    inc c
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$0020], sp
    ld b, b
    sbc [hl]
    ld d, [hl]
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    ldh [$7f], a
    ccf
    ld bc, $0c60
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    bit 2, d
    ld l, e
    ld e, a
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    ld d, a
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld bc, $1400
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld b, b
    add hl, hl
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    ld l, e
    ld e, a
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    ld d, a
    ld b, l
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld b, b
    add hl, hl
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    ld h, [hl]
    ld e, b
    ld h, e
    ld d, d
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    rla
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    inc de
    ld a, e
    ccf
    ld e, c
    inc b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    sbc e
    ld b, d
    and l
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    bit 2, d
    ld [hl], a
    ld e, b
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    ccf
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    adc c
    ld b, l
    sub e
    ld b, l
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    ret c

    ld c, l
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $28
    ld b, e
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld sp, hl
    ld b, c
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $d742


    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_53d7

jr_03e_53d7:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    ld c, b
    ld e, d
    ld a, [bc]
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    adc a
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    ld [bc], a
    dec c
    jr nc, @+$01

    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    cp l
    ld d, e
    ld e, a
    inc bc
    ld h, b
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    ret c

    ld c, l
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $28
    ld b, e
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    jr nz, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5439

jr_03e_5439:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld d, a
    ld e, d
    nop
    ld b, b
    inc c
    add a
    ld b, d
    sub c
    ld b, d
    xor l
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    db $ed
    ld a, a
    ldh [$7d], a
    nop
    ld c, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5468

jr_03e_5468:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    db $10
    ld e, h
    nop
    ld b, b
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    or a
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ret z

    ld e, c
    inc b
    inc c
    rst $38
    ld a, a
    rst $38
    inc hl
    ld e, d
    ld bc, $2800
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5497

jr_03e_5497:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ret


    ld e, l
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    ld bc, $1400
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_54c6

jr_03e_54c6:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld d, a
    ld e, d
    ld [hl], a
    ld e, b
    inc c
    add a
    ld b, d
    sub c
    ld b, d
    xor l
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    db $ed
    ld a, a
    ldh [$7d], a
    nop
    ld c, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    add hl, hl
    ld c, a
    nop
    ld b, b
    inc b
    add a
    ld b, d
    sub c
    ld b, d
    ld hl, $d744
    ld b, d
    sbc l
    ld b, l
    and a
    ld b, l
    or c
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld a, a
    ld [hl], e
    rra
    inc a
    inc b
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc a
    stop
    inc d
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5528

jr_03e_5528:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    sub d
    ld e, a
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    inc c
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5557

jr_03e_5557:
    jr nz, @+$01

    ld a, a
    ld e, a
    inc bc
    ldh [$7f], a
    nop
    ld a, h
    ld e, l
    ld c, b
    nop
    ld b, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    sbc a
    ld b, e
    xor c
    ld b, e
    rst $10
    ld b, d
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    inc hl
    dec bc
    jr @+$07

    jr c, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_558c

jr_03e_558c:
    jr nz, @+$01

    ld a, a
    rst $38
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, jr_03e_55f1

    ld h, c
    jp nz, TimerOverflowInterrupt

    add a
    ld b, d
    sub c
    ld b, d
    dec c
    ld b, h
    ld de, $1b45
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    nop
    jr nz, @+$01

    ld a, a
    cp l
    ld d, e
    ldh [$57], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld sp, hl
    ld b, c
    ld de, $005c
    add a
    ld b, d
    sub c
    ld b, d
    jp Jump_000_2542


    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ld d, d
    ld a, [hl]

jr_03e_55f1:
    add $40
    nop
    nop
    add e
    ld b, l
    cp d
    ld e, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld b, e
    ld b, l
    ld c, l
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ld a, [$e07f]
    ld a, a
    nop
    jr nz, @+$01

    ld a, a
    rst $38
    ld a, a
    and b
    ld a, [hl]
    nop
    nop
    nop
    ld b, b
    ld [hl], b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    and e
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rst $38
    ld a, a
    rla
    ld [hl], b
    nop
    jr z, @+$01

    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    db $10
    ld e, h
    ld [hl], a
    ld e, b
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    or a
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ret z

    ld e, c
    inc b
    inc c
    rst $38
    ld a, a
    rst $38
    inc hl
    ld e, d
    ld bc, $2800
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    inc c
    ld h, e
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    rst $10
    ld b, d
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    sbc l
    ld b, l
    or c
    ld b, l
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_56b0

jr_03e_56b0:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld a, [$7750]
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rra
    ld a, h
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld h, [hl]
    ld e, b
    ld [hl], a
    ld e, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    inc de
    ld a, e
    ccf
    ld e, c
    inc b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld a, [$0050]
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rra
    ld a, h
    nop
    jr nz, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5739

jr_03e_5739:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    bit 2, d
    ld h, e
    ld d, d
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    rla
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld bc, $1400
    rst $38
    ld a, a
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld e, l
    ld c, b
    ld [hl], a
    ld e, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a

jr_03e_5794:
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, @+$5f

    ld c, b
    ld c, l
    ld c, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    daa
    ld b, e
    inc de
    ld b, e
    dec e
    ld b, e
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    rst $18
    nop
    inc b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, jr_03e_5794

    ld d, h
    nop
    ld b, b
    ld [$4287], sp
    sub c
    ld b, d
    rst $10
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld h, b
    inc c
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5803

jr_03e_5803:
    jr nz, @+$01

    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$bc20], sp
    ld d, h
    ld [hl], a
    ld e, b
    ld [$4287], sp
    sub c
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld h, b
    inc c
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$f920], sp
    ld b, c
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $cd42


    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    xor c
    ld a, [hl]
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld c, e
    jp nz, TimerOverflowInterrupt

    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    dec c
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    sub $18
    nop
    jr nz, @+$01

    ld a, a
    cp l
    ld d, e
    ldh [$57], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld e, l
    ld c, b
    db $ed
    ld d, h
    inc bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc a
    ld b, e
    ld d, e
    ld b, h
    ld e, l
    ld b, h
    xor c
    ld b, e
    ld bc, $7d46
    ld b, d
    rst $38
    ld a, a
    ld a, e
    ld l, a
    dec [hl]
    ld bc, $0000
    rst $38
    ld a, a
    rst $38
    inc hl
    dec bc
    jr jr_03e_58c8

    jr c, @+$01

    ld a, a
    rst $38
    inc bc

jr_03e_58c8:
    ld e, a
    ld [bc], a
    dec b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    ldh [$7f], a
    ldh [$34], a
    ld sp, hl
    ld b, c
    ld [hl], b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $a342


    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    rst $38
    ld a, a
    rla
    ld [hl], b
    nop
    jr z, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    add hl, hl
    ld c, a
    ld [hl], a
    ld e, b
    inc b
    add a
    ld b, d
    sub c
    ld b, d
    ld hl, $7d44
    ld b, d
    rst $38
    ld a, a
    ld a, a
    ld [hl], e
    rra
    inc a
    inc b
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc a
    stop
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    rst $10
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_595a

jr_03e_595a:
    jr nz, @+$01

    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    ld e, l
    ld c, b
    pop hl
    ld b, c
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $eb
    ld b, d
    sbc a
    ld b, e
    xor c
    ld b, e
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    inc hl
    dec bc
    jr jr_03e_5988

    jr c, @+$01

    ld a, a
    rst $38
    ld a, a

jr_03e_5988:
    rst $18
    nop
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld h, [hl]
    ld e, b
    sbc [hl]
    ld d, [hl]
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    inc de
    ld a, e
    ccf
    ld e, c
    inc b
    nop
    rst $38
    ld a, a
    ldh [$7f], a
    ccf
    ld bc, $0c60
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld sp, hl
    ld b, c
    jp nz, TimerOverflowInterrupt

    add a
    ld b, d
    sub c
    ld b, d
    db $c3, $42, $0d


    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    cp l
    ld d, e
    ldh [$57], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld e, e
    ld h, c
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $10
    ld b, d
    sbc l
    ld b, l
    and a
    ld b, l
    ld de, $1b45
    ld b, l
    or c
    ld b, l
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    nop
    jr nz, @+$01

    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5a20

jr_03e_5a20:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    db $10
    ld e, h
    cp h
    ld d, e
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    or a
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ret z

    ld e, c
    inc b
    inc c
    rst $38
    ld a, a
    rst $38
    inc hl
    ld e, d
    ld bc, $2800
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    xor l
    ld d, [hl]
    ld [hl], a
    ld e, b
    rlca
    add a
    ld b, d
    sub c
    ld b, d
    ld a, e
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    sbc a
    ld a, [hl]
    rra
    ld d, h
    ld a, [bc]
    inc e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, $00
    jr z, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    inc c
    ld h, e
    ld [hl], b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    and e
    ld b, h
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rla
    ld [hl], b
    nop
    jr z, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld e, l
    ld c, b
    cp h
    ld d, e
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rst $38

jr_03e_5aec:
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, jr_03e_5aec

    ld d, b
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rra
    ld a, h
    nop
    jr nz, @+$01

    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    cp h
    ld h, b
    dec c
    add a
    ld b, d
    sub c
    ld b, d
    rst $30
    ld b, l
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    sbc h
    ld a, a
    ld b, b
    ld c, d
    nop
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    rst $38
    ld c, e
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    sub $18
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld d, a
    ld e, d
    cp h
    ld d, e
    inc c
    add a
    ld b, d
    sub c
    ld b, d
    xor l
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    db $ed
    ld a, a
    ldh [$7d], a
    nop
    ld c, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    add hl, hl
    ld a, [hl]
    nop
    jr z, @+$01

    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    xor l
    ld d, [hl]
    cp h
    ld d, e
    rlca
    add a
    ld b, d
    sub c
    ld b, d
    ld a, e
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    sbc a
    ld a, [hl]
    rra
    ld d, h
    ld a, [bc]
    inc e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, $00
    jr z, @+$01

    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    inc c
    ld h, e
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld sp, hl
    ld b, c
    cp h
    ld d, e
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    db $c3, $42, $3f


    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ret z

    ld e, c
    inc b
    inc c
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    inc c
    ld h, e
    ld c, l
    ld c, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    dec e
    ld b, e
    daa
    ld b, e
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    rst $18
    nop
    inc b
    nop
    rst $38
    ld a, a
    ld d, [hl]
    ld e, [hl]
    adc l
    dec h
    ld bc, $9214
    ld e, a
    sbc [hl]
    ld d, [hl]
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    inc c
    rst $38
    ld a, a
    ldh [$7f], a
    ccf
    ld bc, $0c60
    rst $38
    ld a, a
    ld e, a
    inc bc
    ldh [$7f], a
    nop
    ld a, h
    ret


    ld e, l
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    ld bc, $1400
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    sub d
    ld e, a
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    inc c
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ld e, a
    inc bc
    ldh [$7f], a
    nop
    ld a, h
    ld h, [hl]
    ld e, b
    nop
    ld b, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ld [$f67f], a
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    inc de
    ld a, e
    ccf
    ld e, c
    inc b
    nop
    rst $38
    ld a, a
    ld a, [$1f7f]
    jr jr_03e_5d3c

jr_03e_5d3c:
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld sp, hl
    ld b, c
    dec h
    ld h, d
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp Jump_03e_7d42


    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    cp h
    ld d, h
    ld c, l
    ld c, b
    ld [$4287], sp
    sub c
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    add c
    ld b, e
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld h, b
    inc c
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    rst $18
    nop
    inc b
    nop
    rst $38
    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$9220], sp
    ld e, a
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    inc c
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    ld e, a
    inc bc
    ldh [$7f], a
    nop
    ld a, h
    ret


    ld e, l
    ld [hl], b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    and e
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    ld bc, $1400
    rst $38
    ld a, a
    rst $38
    ld a, a
    rla
    ld [hl], b
    nop
    jr z, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    cp l
    ld h, h
    sub [hl]
    ld h, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ldh [$03], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    jp nz, TimerOverflowInterrupt

    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    dec c
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    and l
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    cp l
    ld d, e
    ldh [$57], a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    rst $38
    ld c, e
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    sub $18
    nop
    jr nz, @+$01

    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    inc c
    ld h, e
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    ccf
    ld b, h
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld a, $66
    cp h
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ccf
    ld b, h
    ld l, a
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    rlca
    ld b, l
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ldh [$7f], a
    rst $18
    nop
    dec b
    nop
    rst $38
    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$3e20], sp
    ld h, [hl]
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld l, a
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    di
    ld b, h
    rlca
    ld b, l
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$cb20], sp
    ld d, d
    ld h, e
    ld b, l
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    ld e, e
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    and b
    ld a, [hl]
    nop
    nop
    cp h
    ld d, h
    sbc [hl]
    ld d, [hl]
    ld [$4287], sp
    sub c
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    ld h, b
    inc c
    rst $38
    ld a, a
    ldh [$7f], a
    ccf
    ld bc, $0c60
    rst $38
    ld a, a
    cp a
    ld a, a
    dec d
    ld d, h
    ld [$d720], sp
    ld h, a
    pop hl
    ld b, c
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $eb
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    nop
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld l, $4a
    rrca
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop de
    ld b, e
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld a, [$0f50]
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rra
    ld a, h
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    sub d
    ld e, a
    rrca
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    nop
    inc c
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    ld e, a
    inc bc
    ldh [$7f], a
    nop
    ld a, h
    nop
    ld b, b
    rrca
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    sbc e
    ld b, d
    and l
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    ret


    ld e, l
    rrca
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld d, e
    rst $18
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ret


    ld e, l
    rrca
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld sp, hl
    ld b, c
    jp nz, TimerOverflowInterrupt

    add a
    ld b, d
    sub c
    ld b, d
    jp $cd42


    ld b, d
    xor a
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    sub l
    ld l, e
    ld e, a
    ld a, [hl+]
    nop
    jr nz, @+$01

    ld a, a
    xor c
    ld a, [hl]
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    nop
    ld b, b
    ld [hl], a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    sbc e
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    cp c
    ld b, d
    and l
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    cp l
    ld h, h
    sub [hl]
    ld h, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    add a
    ld b, d
    dec a
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ldh [$03], a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    sub c
    ld h, c
    cp d
    ld h, c
    db $eb
    ld h, c
    inc d
    ld h, d
    dec a
    ld h, d
    ld l, b
    ld h, d
    sub l
    ld h, d
    cp [hl]
    ld h, d
    rst $20
    ld h, d
    db $10
    ld h, e
    add hl, sp
    ld h, e
    ld h, d
    ld h, e
    nop
    ld b, b
    ld b, $87
    ld b, d
    adc e
    ld b, e
    ld a, l
    ld b, d
    rst $38
    ld a, a
    ccf
    ld a, a
    rla
    ld e, h
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    ldh [$03], a
    rst $30
    inc bc
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ret


    ld b, h
    nop
    add a
    ld b, d
    sub c
    ld b, d
    sbc e
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    cp c
    ld b, d
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    cp l
    ld e, e
    rra
    ld bc, $1400
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld c, d
    ld e, c
    nop
    nop
    ld b, d
    ld c, d
    nop
    add a
    ld b, d
    add l
    ld b, h
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    inc bc
    inc d
    ld a, h
    nop
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    inc b
    dec a
    db $10
    ld b, d
    jp hl


    ld l, a
    add e
    ld c, a
    ld c, $87
    ld b, d
    ld l, e
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    rra
    nop
    inc b
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $10
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    ccf
    ld bc, $0000
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ld a, h
    ccf
    ld bc, $54dc
    ld [bc], a
    add a
    ld b, d
    push bc
    ld b, l
    rst $08
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    cp e
    ld a, a
    push de
    dec l
    nop
    jr nc, @+$01

    ld a, a
    ld a, [$207f]
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld [$f57f], a
    dec [hl]
    nop
    ld b, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    db $ed
    ld e, c
    ld a, [bc]
    add a
    ld b, d
    reti


    ld b, l
    db $e3
    ld b, l
    db $ed
    ld b, l
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    ld [bc], a
    dec c
    jr nc, @+$01

    ld a, a
    ldh a, [$7f]
    ld e, a
    ld [bc], a
    ld b, b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc a
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    rra
    ld c, e
    dec d
    ld bc, $0000
    sbc $5e
    nop
    add a
    ld b, d
    dec d
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    db $10
    ld a, [hl]
    dec b
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld e, a
    ld h, e
    nop
    add a
    ld b, d
    rra
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld [$427d], sp
    nop
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    rst $38
    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    ld c, b
    ld l, b
    nop
    add a
    ld b, d
    add hl, hl
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rra
    ld a, h
    ld e, d
    ld a, a
    nop
    inc d
    rst $38
    ld a, a
    ld e, a
    ld a, a
    sbc a
    ld l, $00
    jr nz, @+$01

    ld a, a
    rra
    nop
    ld a, $00
    nop
    ld a, h
    add hl, sp
    ld l, l
    nop
    add a
    ld b, d
    inc sp
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    ldh [$03], a
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rra
    ld b, d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    cp a
    ld bc, $001f
    ld c, d
    ld [hl], d
    nop
    add a
    ld b, d
    ld d, c
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    ld [$ff7d], sp
    ld a, a
    rst $38
    ld a, a
    db $10
    ld l, [hl]
    nop
    inc d
    rst $38
    ld a, a
    rst $38
    inc bc
    cp a
    ld bc, $001f
    ld a, e
    ld [hl], a
    nop
    add a
    ld b, d
    ld a, c
    ld b, [hl]
    add e
    ld b, [hl]
    ld a, l
    ld b, d
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    add hl, hl
    ld [bc], a
    inc d
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    cp a
    ld bc, $001f
    rst $38
    ld a, a
    sbc a
    inc bc
    ccf
    ld bc, $4000
    adc l
    ld h, h
    sub [hl]
    ld h, h
    xor c
    ld h, h
    cp d
    ld h, h
    ret


    ld h, h
    call c, $ed64
    ld h, h
    ld a, [$0f64]
    ld h, l
    jr nz, jr_03e_6406

    cpl
    ld h, l
    ld b, h
    ld h, l
    ld d, l
    ld h, l
    ld l, d
    ld h, l
    ld a, c
    ld h, l
    adc b
    ld h, l
    sub a
    ld h, l
    xor h
    ld h, l
    pop bc
    ld h, l
    sub $65
    push hl
    ld h, l
    ld hl, sp+$65
    rlca
    ld h, [hl]
    inc e
    ld h, [hl]
    add hl, hl
    ld h, [hl]
    ld a, $66
    ld c, e
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld l, l
    ld h, [hl]
    ld a, h
    ld h, [hl]
    adc e
    ld h, [hl]
    sbc d
    ld h, [hl]
    xor c
    ld h, [hl]
    or [hl]
    ld h, [hl]
    bit 4, [hl]
    jp c, $ef66

    ld h, [hl]
    nop
    ld h, a
    rrca
    ld h, a
    ld e, $67
    ld sp, $3e67
    ld h, a
    ld d, e
    ld h, a
    ld h, b
    ld h, a
    ld l, l
    ld h, a
    ld a, h
    ld h, a
    adc e
    ld h, a
    sbc h
    ld h, a
    or c
    ld h, a
    add $67
    reti


    ld h, a
    add sp, $67
    ld sp, hl
    ld h, a
    ld c, $68
    dec e
    ld l, b
    ld a, [hl+]
    ld l, b
    dec a
    ld l, b
    ld c, [hl]
    ld l, b
    ld e, a
    ld l, b
    ld l, [hl]
    ld l, b
    add e

jr_03e_6406:
    ld l, b
    sub [hl]
    ld l, b
    and e
    ld l, b
    or [hl]
    ld l, b
    bit 5, b
    sbc $68
    pop af
    ld l, b
    nop
    ld l, c
    inc de
    ld l, c
    ld h, $69
    scf
    ld l, c
    ld c, d
    ld l, c
    ld e, a
    ld l, c
    ld [hl], b
    ld l, c
    add e
    ld l, c
    sub b
    ld l, c
    sbc a
    ld l, c
    xor h
    ld l, c
    pop bc
    ld l, c
    call nc, $e369
    ld l, c
    ld a, [c]
    ld l, c
    rlca
    ld l, d
    inc e
    ld l, d
    cpl
    ld l, d
    ld b, h
    ld l, d
    ld e, c
    ld l, d
    ld l, b
    ld l, d
    ld a, l
    ld l, d
    adc d
    ld l, d
    sub a
    ld l, d
    and h
    ld l, d
    or c
    ld l, d
    add $6a
    db $d3
    ld l, d
    sbc $6a
    rst $28
    ld l, d
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    inc b
    ld l, e
    nop
    ld b, b
    pop hl
    ld b, c
    nop
    sub c
    ld b, d
    ld a, l
    ld b, d
    nop
    ld b, b
    pop hl
    ld b, c
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $eb
    ld b, d
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    nop
    ld b, b
    ld l, e
    ld b, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    push af
    ld b, d
    cp c
    ld b, d
    ld e, e
    ld b, [hl]
    ld a, l
    ld b, d
    jp z, $0043

    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop hl
    ld b, d
    rst $10
    ld b, d
    ld a, l
    ld b, d
    nop
    ld b, b
    ld d, l
    ld c, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    inc de
    ld b, e
    dec e
    ld b, e
    daa
    ld b, e
    ld a, l
    ld b, d
    ld h, a
    ld c, h
    ld d, l
    ld c, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    add c
    ld b, e
    ld a, l
    ld b, d
    ld b, h
    ld b, a
    sbc a
    ld e, b
    ld [bc], a
    add a
    ld b, d
    sub c
    ld b, d
    ld [hl], a
    ld b, e
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    rst $08
    ld c, e
    inc bc
    add a
    ld b, d
    sub c
    ld b, d
    sub l
    ld b, e
    ld bc, $9f46
    ld b, e
    xor c
    ld b, e
    or e
    ld b, e
    cp l
    ld b, e
    ld l, [hl]
    ld c, d
    add b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop de
    ld b, e
    rst $00
    ld b, e
    and e
    ld b, h
    ld a, l
    ld b, d
    jr nz, jr_03e_6570

    ld [c], a
    ld d, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $28
    ld b, e
    dec c
    ld b, h
    ld a, l
    ld b, d
    add e
    ld b, l
    or $49
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld sp, $3b43
    ld b, e
    ld e, c
    ld b, e
    ld h, e
    ld b, e
    ld b, l
    ld b, e
    ld c, a
    ld b, e
    ld sp, hl
    ld b, c
    ld c, c
    ld c, a
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld sp, hl
    ld b, e
    jp $0342


    ld b, h
    ld a, l
    ld b, d
    nop
    ld b, b
    adc e
    ld d, d
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    rla
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    dec bc
    ld b, [hl]
    ld a, l
    ld b, d
    ld a, c
    ld c, a
    adc e
    ld d, d
    inc b
    add a

jr_03e_6570:
    ld b, d
    sub c
    ld b, d
    ld hl, $1744
    ld b, h
    ld a, l
    ld b, d
    dec e
    ld d, a
    nop
    ld b, b
    rlca
    add a
    ld b, d
    sub c
    ld b, d
    ld a, e
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    inc hl
    ld d, e
    nop
    ld b, b
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    nop
    ld b, b
    dec d
    ld d, l
    inc bc
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    ld d, e
    ld b, h
    ld e, l
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    inc h
    ld d, l
    db $e4
    ld d, e
    ld [$4287], sp
    sub c
    ld b, d
    ccf
    ld b, h
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    adc c
    ld b, l
    nop
    ld b, b
    add $56
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    inc hl
    ld d, e
    xor e
    ld e, a
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    ld d, a
    ld b, l
    ld a, l
    ld b, d
    nop
    ld b, b
    xor e
    ld e, a
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    ld d, a
    ld b, l
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    sbc $58
    adc e
    ld d, d
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    rla
    ld b, h
    ld a, l
    ld b, d
    nop
    ld b, b
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    sbc e
    ld b, d
    and l
    ld b, d
    ld a, l
    ld b, d
    inc hl
    ld d, e
    sbc a
    ld e, b
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    ld a, l
    ld b, d
    nop
    ld b, b
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    ccf
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    adc c
    ld b, l
    sub e
    ld b, l
    jr nz, jr_03e_668e

    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $28
    ld b, e
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $d742


    ld b, d
    ld a, l
    ld b, d
    nop
    ld b, b
    ld a, b
    ld e, d
    ld a, [bc]
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    adc a
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    jr nz, jr_03e_66bd

    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $28
    ld b, e
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $10
    ld e, d
    nop
    ld b, b
    inc c
    add a
    ld b, d
    sub c
    ld b, d
    xor l
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    or b
    ld e, h
    nop

jr_03e_668e:
    ld b, b
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    or a
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    ld [hl], c
    ld e, [hl]
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    rst $10
    ld e, d
    sbc a
    ld e, b
    inc c
    add a
    ld b, d
    sub c
    ld b, d
    xor l
    ld b, h
    ld a, l
    ld b, d
    ld a, c
    ld c, a
    nop
    ld b, b
    inc b
    add a
    ld b, d

jr_03e_66bd:
    sub c
    ld b, d
    ld hl, $d744
    ld b, d
    sbc l
    ld b, l
    and a
    ld b, l
    or c
    ld b, l
    ld a, l
    ld b, d
    ld d, d
    ld h, b
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    nop
    ld b, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    sbc a
    ld b, e
    xor c
    ld b, e
    rst $10
    ld b, d
    dec de
    ld h, d
    ld [c], a
    ld d, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec c
    ld b, h
    ld de, $1b45
    ld b, l
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    ld d, c
    ld e, h
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp Jump_000_2542


    ld b, l
    ld a, l
    ld b, d
    add e
    ld b, l
    ld a, [$005d]
    add a
    ld b, d
    sub c
    ld b, d
    ld b, e
    ld b, l
    ld c, l
    ld b, l
    ld a, l
    ld b, d
    nop
    ld b, b
    add b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    and e
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    or b
    ld e, h
    sbc a
    ld e, b
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    or a
    ld b, h
    ld a, l
    ld b, d
    db $ec
    ld h, e
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    rst $10
    ld b, d
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    sbc l
    ld b, l
    or c
    ld b, l
    ld c, d
    ld d, c
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    ld a, l
    ld b, d
    sbc $58
    sbc a
    ld e, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    ld a, l
    ld b, d
    ld c, d
    ld d, c
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    inc hl
    ld d, e
    adc e
    ld d, d
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    rla
    ld b, h
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    sbc a
    ld e, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    ld d, l
    ld c, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    daa
    ld b, e
    inc de
    ld b, e
    dec e
    ld b, e
    inc h
    ld d, l
    nop
    ld b, b
    ld [$4287], sp
    sub c
    ld b, d
    rst $10
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    ld a, l
    ld b, d
    inc h
    ld d, l
    sbc a
    ld e, b
    ld [$4287], sp
    sub c
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $cd42


    ld b, d
    ld a, l
    ld b, d
    ld h, a
    ld c, h
    ld [c], a
    ld d, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    dec c
    ld b, h
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    dec d
    ld d, l
    inc bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc a
    ld b, e
    ld d, e
    ld b, h
    ld e, l
    ld b, h
    xor c
    ld b, e
    ld bc, $7d46
    ld b, d
    ld sp, hl
    ld b, c
    add b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $a342


    ld b, h
    ld a, l
    ld b, d
    ld a, c
    ld c, a
    sbc a
    ld e, b
    inc b
    add a
    ld b, d
    sub c
    ld b, d
    ld hl, $7d44
    ld b, d
    nop
    ld b, b
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    rst $10
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    pop hl
    ld b, c
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $eb
    ld b, d
    sbc a
    ld b, e
    xor c
    ld b, e
    ld a, l
    ld b, d
    sbc $58
    add $56
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    ld [c], a
    ld d, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $c3, $42, $0d


    ld b, h
    ld a, l
    ld b, d
    dec de
    ld h, d
    nop
    ld b, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    rst $10
    ld b, d
    sbc l
    ld b, l
    and a
    ld b, l
    ld de, $1b45
    ld b, l
    or c
    ld b, l
    or b
    ld e, h
    db $e4
    ld d, e
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    or a
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    dec e
    ld d, a
    sbc a
    ld e, b
    rlca
    add a
    ld b, d
    sub c
    ld b, d
    ld a, e
    ld b, h
    ld a, l
    ld b, d
    db $ec
    ld h, e
    add b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    and e
    ld b, h
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    ld a, l
    ld c, b
    db $e4
    ld d, e
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    push de
    ld b, h
    rst $18
    ld b, h
    jp hl


    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld c, d
    ld d, c
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    nop
    ld b, b
    inc b
    ld h, c
    dec c
    add a
    ld b, d
    sub c
    ld b, d
    rst $30
    ld b, l
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    ld a, l
    ld b, d
    ld h, a
    ld c, h
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    ld a, l
    ld b, d
    rst $10
    ld e, d
    db $e4
    ld d, e
    inc c
    add a
    ld b, d
    sub c
    ld b, d
    xor l
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    dec e
    ld d, a
    db $e4
    ld d, e
    rlca
    add a
    ld b, d
    sub c
    ld b, d
    ld a, e
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    db $ec
    ld h, e
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    db $e4
    ld d, e
    dec bc
    add a
    ld b, d
    sub c
    ld b, d
    db $c3, $42, $3f


    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    db $ec
    ld h, e
    ld d, l
    ld c, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    dec e
    ld b, e
    daa
    ld b, e
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    ld d, d
    ld h, b
    add $56
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    ld a, l
    ld b, d
    ld [hl], c
    ld e, [hl]
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    ld d, d
    ld h, b
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ld a, l
    ld b, d
    sbc $58
    nop
    ld b, b
    add hl, bc
    add a
    ld b, d
    sub c
    ld b, d
    sbc c
    ld b, h
    rst $10
    ld b, d
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    ld l, l
    ld h, d
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp Jump_03e_7d42


    ld b, d
    inc h
    ld d, l
    ld d, l
    ld c, b
    ld [$4287], sp
    sub c
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    add c
    ld b, e
    ld a, l
    ld b, d
    ld d, d
    ld h, b
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    ld [hl], c
    ld e, [hl]
    add b
    ld c, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    and e
    ld b, h
    ld a, l
    ld b, d
    sbc l
    ld h, l
    sbc $63
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, d
    nop
    ld b, b
    ld [c], a
    ld d, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    dec c
    ld b, h
    add hl, sp
    ld b, l
    cpl
    ld b, l
    and l
    ld b, d
    ld a, l
    ld b, d
    ld h, a
    ld c, h
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $db
    ld b, e
    push hl
    ld b, e
    ccf
    ld b, h
    adc c
    ld b, l
    sub e
    ld b, l
    ld a, l
    ld b, d
    db $ec
    ld h, e
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld h, c
    ld b, l
    ccf
    ld b, h
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    ld a, l
    ld b, d
    ld l, $67
    db $e4
    ld d, e
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ccf
    ld b, h
    ld l, a
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    rlca
    ld b, l
    ld l, $67
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld l, a
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld [hl], l
    ld b, l
    ld a, a
    ld b, l
    di
    ld b, h
    rlca
    ld b, l
    inc hl
    ld d, e
    ld l, e
    ld b, l
    dec b
    add a
    ld b, d
    sub c
    ld b, d
    dec [hl]
    ld b, h
    ld e, e
    ld b, [hl]
    ld a, l
    ld b, d
    inc h
    ld d, l
    add $56
    ld [$4287], sp
    sub c
    ld b, d
    ld c, c
    ld b, h
    di
    ld b, h
    db $fd
    ld b, h
    rlca
    ld b, l
    ld h, a
    ld b, h
    ld [hl], c
    ld b, h
    rst $08
    ld l, b
    pop hl
    ld b, c
    nop
    add a
    ld b, d
    sub c
    ld b, d
    db $eb
    ld b, d
    ld a, l
    ld b, d
    ld l, [hl]
    ld c, d
    ld h, a
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop de
    ld b, e
    ld a, l
    ld b, d
    ld c, d
    ld d, c
    ld h, a
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    dec hl
    ld b, h
    ld a, l
    ld b, d
    ld d, d
    ld h, b
    ld h, a
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    bit 0, h
    ld a, l
    ld b, d
    nop
    ld b, b
    ld h, a
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    cp c
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    sbc e
    ld b, d
    and l
    ld b, d
    ld a, l
    ld b, d
    ld [hl], c
    ld e, [hl]
    ld h, a
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    pop bc
    ld b, h
    ld a, l
    ld b, d
    ld [hl], c
    ld e, [hl]
    ld h, a
    ld h, l
    nop
    add a
    ld b, d
    sub c
    ld b, d
    ld a, l
    ld b, d
    ld sp, hl
    ld b, c
    ld [c], a
    ld d, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    jp $cd42


    ld b, d
    xor a
    ld b, d
    ld a, l
    ld b, d
    nop
    ld b, b
    sbc a
    ld e, b
    nop
    add a
    ld b, d
    sub c
    ld b, d
    sbc e
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    cp c
    ld b, d
    and l
    ld b, d
    ld a, l
    ld b, d
    sbc l
    ld h, l
    sbc $63
    nop
    add a
    ld b, d
    sub c
    ld b, d
    add a
    ld b, d
    dec a
    ld b, [hl]
    ld a, l
    ld b, d
    dec hl
    ld l, e
    inc [hl]
    ld l, e
    ld b, l
    ld l, e
    ld c, [hl]
    ld l, e
    ld d, a
    ld l, e
    ld h, d
    ld l, e
    ld l, a
    ld l, e
    ld a, b
    ld l, e
    add c
    ld l, e
    adc d
    ld l, e
    sub e
    ld l, e
    sbc h
    ld l, e
    nop
    ld b, b
    ld b, $87
    ld b, d
    adc e
    ld b, e
    ld a, l
    ld b, d
    ret


    ld b, h
    nop
    add a
    ld b, d
    sub c
    ld b, d
    sbc e
    ld b, d
    add hl, sp
    ld b, l
    cpl
    ld b, l
    cp c
    ld b, d
    ld a, l
    ld b, d
    ld b, d
    ld c, d
    nop
    add a
    ld b, d
    add l
    ld b, h
    ld a, l
    ld b, d
    db $d3
    ld c, a
    ld c, $87
    ld b, d
    ld l, e
    ld b, l
    ld a, l
    ld b, d
    inc l
    ld d, l
    ld [bc], a
    add a
    ld b, d
    push bc
    ld b, l
    rst $08
    ld b, l
    ld a, l
    ld b, d
    ld b, l
    ld e, d
    ld a, [bc]
    add a
    ld b, d
    reti


    ld b, l
    db $e3
    ld b, l
    db $ed
    ld b, l
    ld a, l
    ld b, d
    ld b, [hl]
    ld e, a
    nop
    add a
    ld b, d
    dec d
    ld b, [hl]
    ld a, l
    ld b, d
    rst $00
    ld h, e
    nop
    add a
    ld b, d
    rra
    ld b, [hl]
    ld a, l
    ld b, d
    ret z

    ld l, b
    nop
    add a
    ld b, d
    add hl, hl
    ld b, [hl]
    ld a, l
    ld b, d
    add hl, sp
    ld l, [hl]
    nop
    add a
    ld b, d
    inc sp
    ld b, [hl]
    ld a, l
    ld b, d
    ld c, d
    ld [hl], e
    nop
    add a
    ld b, d
    ld d, c
    ld b, [hl]
    ld a, l
    ld b, d
    sub e
    ld a, b
    nop
    add a
    ld b, d
    ld a, c
    ld b, [hl]
    add e
    ld b, [hl]
    ld a, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_03e_7d42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
