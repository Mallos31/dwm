; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    db $14 ;ROM Bank

    dw label14_400f
    dw label14_4016
    dw label14_40b4
    dw label14_401d
    dw label14_7bac
    dw label14_7d12
    dw label14_4869

label14_400f:
    ld de, $da18
    call Call_014_4849
    ret

label14_4016:
    ld de, $da18
    call Call_014_4849
    ret

label14_401d:
    ld hl, $cac1
    ld a, [$da14]
    call Call_000_223b
    ld bc, $0095
    xor a
    call FillNBytesWithRegA
    ld hl, $cad6
    ld a, [$da14]
    call Call_000_223b
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld hl, $caea
    ld a, [$da14]
    call Call_000_223b
    ld bc, $0008
    ld a, $ff
    call FillNBytesWithRegA
    ld hl, $caf2
    ld a, [$da14]
    call Call_000_223b
    ld bc, $0019
    ld a, $ff
    call FillNBytesWithRegA
    ld hl, $cb44
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cad8
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cb4d
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cae1
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cac1
    ld a, [$da14]
    call Call_000_223b
    ld [hl], $01
    ld hl, $cacd
    ld de, $ca42
    ld b, $08
    call $4782
    ld hl, $cad5
    ld a, [$da14]
    call Call_000_223b
    ld a, [$ca4a]
    ld [hl], a
    ld de, $da18
    call Call_014_4849
    jp Jump_014_4158

label14_40b4:
    ld hl, $cac1
    ld a, [$da14]
    call Call_000_223b
    ld bc, $0095
    xor a
    call FillNBytesWithRegA
    ld hl, $cad6
    ld a, [$da14]
    call Call_000_223b
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld hl, $caea
    ld a, [$da14]
    call Call_000_223b
    ld bc, $0008
    ld a, $ff
    call FillNBytesWithRegA
    ld hl, $caf2
    ld a, [$da14]
    call Call_000_223b
    ld bc, $0019
    ld a, $ff
    call FillNBytesWithRegA
    ld hl, $cb44
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cad8
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cb4d
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cae1
    ld de, $477a
    ld b, $08
    call $4782
    ld hl, $cac1
    ld a, [$da14]
    call Call_000_223b
    ld [hl], $01
    ld hl, $cacd
    ld de, $ca42
    ld b, $08
    call $4782
    ld hl, $cad5
    ld a, [$da14]
    call Call_000_223b
    ld a, [$ca4a]
    ld [hl], a
    ld de, $da18
    call Call_014_4849
    ld a, [$da14]
    cp $15
    jr z, jr_014_4158

    ld a, [$da18]
    ld hl, $ca94
    call Call_000_2670

Jump_014_4158:
jr_014_4158:
    ld hl, $caca
    ld de, $da18
    call Call_014_4793
    ld hl, $caea
    ld de, $da2d
    call Call_014_47a8
    ld hl, $cb0c
    ld de, $da1c
    call Call_014_4793
    ld hl, $cb13
    ld de, $da1d
    call Call_014_479e
    ld hl, $cb13
    call Call_014_4821
    ld hl, $cb13
    ld a, [$da14]
    call Call_000_223b
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld hl, $cb11
    ld a, [$da14]
    call Call_000_223b
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $cb17
    ld de, $da1f
    call Call_014_479e
    ld hl, $cb17
    call Call_014_4821
    ld hl, $cb17
    ld a, [$da14]
    call Call_000_223b
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld hl, $cb15
    ld a, [$da14]
    call Call_000_223b
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $cb19
    ld de, $da21
    call Call_014_479e
    ld hl, $cb19
    call Call_014_4821
    ld hl, $cb1b
    ld de, $da23
    call Call_014_479e
    ld hl, $cb1b
    call Call_014_4821
    ld hl, $cb1d
    ld de, $da25
    call Call_014_479e
    ld hl, $cb1f
    ld de, $da27
    call Call_014_479e
    ld hl, $cb1f
    call Call_014_4821
    ld hl, $cb25
    ld de, $da29
    call Call_014_4793
    ld hl, $cb25
    call Call_014_47fd
    ld hl, $cb26
    ld de, $da2a
    call Call_014_4793
    ld hl, $cb26
    call Call_014_47fd
    ld hl, $cb27
    ld de, $da2c
    call Call_014_4793
    ld hl, $cb27
    call Call_014_47fd
    ld hl, $cb28
    ld de, $da2b
    call Call_014_4793
    ld hl, $cb28
    call Call_014_47fd
    ld hl, $cb0c
    ld a, [$da14]
    call Call_000_223b
    ld a, [hl]
    ld bc, $0005
    call Call_000_1de6
    push hl
    ld a, [$cab4]
    ld bc, $000a
    call Call_000_1de6
    pop bc
    ld a, c
    sub l
    ld c, a
    ld a, b
    sbc h
    ld b, a
    jr nc, jr_014_425d

    ld bc, $0000

jr_014_425d:
    ld a, b
    or a
    jr z, jr_014_4264

    ld bc, $00ff

jr_014_4264:
    push bc
    ld hl, $cb21
    ld a, [$da14]
    call Call_000_223b
    pop bc
    ld [hl], c
    ld a, [$da18]
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld hl, $cacb
    ld de, $da33
    call Call_014_4793
    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, $05
    call Call_000_1dfb
    sub $02
    ld b, a
    ld a, [$da34]
    add b
    push af
    ld hl, $cb0d
    ld a, [$da14]
    call Call_000_223b
    pop af
    ld [hl], a
    ld hl, $cb29
    ld de, $da42
    ld b, $1b
    call $4782
    ld hl, $caf2
    ld de, $da39
    ld b, $03
    call $4782
    call Call_014_47ad
    ld hl, $cacc
    ld a, [$da14]
    call Call_000_223b
    ld a, [$da12]
    ld e, a
    ld a, [$da13]
    ld d, a
    ld a, e
    add $1d
    ld e, a
    ld a, d
    adc $4a
    ld d, a
    ld a, [de]
    ld [hl], a
    cp $ff
    jr nz, jr_014_42fe

    ld [hl], $00
    call GenerateRNG
    ld hl, $459e
    ld a, [$da36]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [wRNG1]
    cp [hl]
    jr z, jr_014_42fe

    jr nc, jr_014_42fe

    ld hl, $cacc
    ld a, [$da14]
    call Call_000_223b
    ld [hl], $01

jr_014_42fe:
    ld a, [$da14]
    ld [$cac0], a
    ld hl, $1301
    rst $10
    ld a, [$da13]
    or a
    jp nz, Jump_014_4413

    ld a, [$da12]
    cp $01
    ld de, $45a2
    jp z, Jump_014_4469

    cp $0c
    ld de, $45aa
    jp z, Jump_014_4469

    cp $34
    ld de, $45c2
    jp z, Jump_014_4469

    cp $36
    ld de, $45ca
    jp z, Jump_014_4469

    cp $38
    ld de, $45d2
    jp z, Jump_014_4469

    cp $4c
    ld de, $45da
    jp z, Jump_014_4469

    cp $4e
    ld de, $45e2
    jp z, Jump_014_4469

    cp $50
    ld de, $45ea
    jp z, Jump_014_4469

    cp $64
    ld de, $45f2
    jp z, Jump_014_4469

    cp $66
    ld de, $45fa
    jp z, Jump_014_4469

    cp $68
    ld de, $4602
    jp z, Jump_014_4469

    cp $7c
    ld de, $460a
    jp z, Jump_014_4469

    cp $7e
    ld de, $4612
    jp z, Jump_014_4469

    cp $80
    ld de, $461a
    jp z, Jump_014_4469

    cp $94
    ld de, $4622
    jp z, Jump_014_4469

    cp $96
    ld de, $462a
    jp z, Jump_014_4469

    cp $9a
    ld de, $4632
    jp z, Jump_014_4469

    cp $b0
    ld de, $463a
    jp z, Jump_014_4469

    cp $b2
    ld de, $4642
    jp z, Jump_014_4469

    cp $b4
    ld de, $464a
    jp z, Jump_014_4469

    cp $c8
    ld de, $4652
    jp z, Jump_014_4469

    cp $ca
    ld de, $465a
    jp z, Jump_014_4469

    cp $cc
    ld de, $4662
    jp z, Jump_014_4469

    cp $ce
    ld de, $466a
    jp z, Jump_014_4469

    cp $d0
    ld de, $4672
    jp z, Jump_014_4469

    cp $d2
    ld de, $467a
    jp z, Jump_014_4469

    cp $d4
    ld de, $4682
    jp z, Jump_014_4469

    cp $d6
    ld de, $468a
    jp z, Jump_014_4469

    cp $d8
    ld de, $4692
    jp z, Jump_014_4469

    cp $da
    ld de, $469a
    jp z, Jump_014_4469

    cp $dc
    ld de, $46a2
    jp z, Jump_014_4469

    cp $df
    ld de, $46aa
    jp z, Jump_014_4469

    ret


Jump_014_4413:
    ld a, [$da12]
    cp $31
    jr z, jr_014_4472

    cp $32
    jr z, jr_014_4489

    cp $33
    jp z, Jump_014_44a0

    cp $34
    jp z, Jump_014_44b7

    cp $35
    jp z, Jump_014_44ce

    cp $36
    jp z, Jump_014_44e5

    cp $37
    jp z, Jump_014_44fc

    cp $38
    jp z, Jump_014_4513

    cp $39
    jp z, Jump_014_452a

    cp $3a
    jp z, Jump_014_4541

    cp $3b
    jp z, Jump_014_4558

    cp $3c
    jp z, Jump_014_456f

    cp $5e
    jp z, Jump_014_4586

    cp $5f
    jp z, Jump_014_4592

    cp $e4
    ld de, $45b2
    jr z, jr_014_4469

    cp $e5
    ld de, $45ba
    jr z, jr_014_4469

    ret


Jump_014_4469:
jr_014_4469:
    ld hl, $cac2
    ld b, $08
    call $4782
    ret


jr_014_4472:
    ld hl, $cacd
    ld de, $46ba
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $46c2
    ld b, $08
    call $4782
    ret


jr_014_4489:
    ld hl, $cacd
    ld de, $46ca
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $46d2
    ld b, $08
    call $4782
    ret


Jump_014_44a0:
    ld hl, $cacd
    ld de, $46da
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $46e2
    ld b, $08
    call $4782
    ret


Jump_014_44b7:
    ld hl, $cacd
    ld de, $46ea
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $46f2
    ld b, $08
    call $4782
    ret


Jump_014_44ce:
    ld hl, $cacd
    ld de, $46fa
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4702
    ld b, $08
    call $4782
    ret


Jump_014_44e5:
    ld hl, $cacd
    ld de, $470a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4712
    ld b, $08
    call $4782
    ret


Jump_014_44fc:
    ld hl, $cacd
    ld de, $471a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4722
    ld b, $08
    call $4782
    ret


Jump_014_4513:
    ld hl, $cacd
    ld de, $472a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4732
    ld b, $08
    call $4782
    ret


Jump_014_452a:
    ld hl, $cacd
    ld de, $473a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4742
    ld b, $08
    call $4782
    ret


Jump_014_4541:
    ld hl, $cacd
    ld de, $474a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4752
    ld b, $08
    call $4782
    ret


Jump_014_4558:
    ld hl, $cacd
    ld de, $475a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4762
    ld b, $08
    call $4782
    ret


Jump_014_456f:
    ld hl, $cacd
    ld de, $476a
    ld b, $08
    call $4782
    ld hl, $cac2
    ld de, $4772
    ld b, $08
    call $4782
    ret


Jump_014_4586:
    ld hl, $cb24
    ld a, [$da14]
    call Call_000_223b
    ld [hl], $01
    ret


Jump_014_4592:
    ld hl, $cac2
    ld de, $46b2
    ld b, $08
    call $4782
    ret


    nop
    ld a, [de]
    add b
    sub $36
    ld c, c
    ld b, [hl]
    ccf
    ldh a, [$f0]
    ldh a, [$f0]
    dec hl
    ld a, $49
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    daa
    ld c, a
    ld a, $4b
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, [hl+]
    ld c, h
    ld c, c
    ld c, d
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, [hl+]
    ld b, [hl]
    ld b, h
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$29]
    ld a, $40
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    inc sp
    ld a, $50
    ld b, l
    ldh a, [$f0]
    ldh a, [$f0]
    add hl, hl
    ld a, $4b
    ld b, h
    ldh a, [$f0]
    ldh a, [$f0]
    db $76
    adc l
    ld h, d
    ld d, [hl]
    ld e, b
    ldh a, [$f0]
    ldh a, [$2a]
    ld a, $4b
    ld d, c
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, $2d
    adc l
    dec hl
    ld [hl-], a
    adc l
    ldh a, [$f0]
    ld a, [hl-]
    ld c, a
    ld b, d
    ld d, l
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, @+$48

    ld c, d
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    add hl, hl
    ld d, d
    ld c, e
    ld b, b
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, a
    ld h, b
    ld l, a
    adc l
    add l
    ldh a, [$f0]
    ldh a, [$28]
    ccf
    ld b, [hl]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$66]
    adc l
    add b
    ld a, e
    add l
    ldh a, [$f0]
    ldh a, [$30]
    ld a, $51
    ld d, b
    ldh a, [$f0]
    ldh a, [$f0]
    ld l, $46
    ld d, l
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$27]
    ld a, $4f
    ld c, b
    ldh a, [$f0]
    ldh a, [$f0]
    ld d, [hl]
    ld h, d
    ld [hl], l
    adc l
    sbc h
    ldh a, [$f0]
    ldh a, [$28]
    ld d, d
    inc [hl]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$6e]
    adc l
    add d
    add l
    adc h
    ldh a, [$f0]
    ldh a, [rVBK]
    ld c, e
    ld h, $28
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], l
    sbc h
    ld h, h
    adc l
    adc h
    ldh a, [$f0]
    ldh a, [$66]
    ld l, a
    adc l
    sbc h
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], l
    adc l
    add l
    ld a, [hl]
    ld h, a
    ldh a, [$f0]
    ldh a, [rBCPD]
    adc l
    sbc h
    ld a, d
    ldh a, [$f0]
    ldh a, [$f0]
    db $76
    adc [hl]
    ld h, l
    adc c
    ldh a, [$f0]
    ldh a, [$f0]
    ld e, h
    ld h, a
    ld l, d
    ld h, d
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, e
    add a
    ld l, a
    adc l
    add l
    ldh a, [$f0]
    ldh a, [$7c]
    ld l, a
    adc l
    sbc h
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, h
    sbc h
    ld d, [hl]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$3a]
    ld a, $51
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$36]
    ld c, c
    ld b, [hl]
    ld c, h
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, @+$48

    ld b, b
    ld c, b
    ldh a, [$f0]
    ldh a, [$f0]
    cpl
    ld b, [hl]
    ld d, a
    ld b, c
    ldh a, [$f0]
    ldh a, [$f0]
    daa
    ld c, h
    ccf
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$29]
    ld d, d
    ld b, h
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$30]
    ld b, [hl]
    ld b, b
    ld c, b
    ldh a, [$f0]
    ldh a, [$f0]
    dec h
    ld c, h
    ld c, e
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    scf
    ld b, d
    ld d, c
    ld c, h
    ldh a, [$f0]
    ldh a, [$f0]
    ld l, $52
    ld c, a
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_014_473a

    ld d, [hl]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$3d]
    ld b, d
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$37]
    ld b, d
    ld d, c
    ld c, h
    ldh a, [$f0]
    ldh a, [$f0]
    inc sp
    ld a, $40
    ld b, l
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, @+$44

    ld d, c
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$30]
    ld c, h
    ld b, l
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$30]
    ld a, $44
    ld b, [hl]
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, d
    add a
    ld l, a
    sbc h
    ldh a, [$f0]
    ldh a, [$f0]

jr_014_473a:
    scf
    ld b, d
    ld d, c
    ld c, h
    ldh a, [$f0]
    ldh a, [$f0]
    daa
    ld b, [hl]
    ld d, a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$30]
    ld a, $56
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$33]
    ld b, d
    ld d, c
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_014_479e

    ld d, c
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$30]
    ld b, d
    ld d, c
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$30]
    ld b, [hl]
    ld c, c
    ld a, $f0
    ldh a, [$f0]
    ldh a, [$2e]
    ld a, $46
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$64]
    ld h, h
    ld h, h
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$c5]
    push de
    ld a, [$da14]
    call Call_000_223b
    pop de
    pop bc

jr_014_478c:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_014_478c

    ret


Call_014_4793:
    push de
    ld a, [$da14]
    call Call_000_223b
    pop de
    ld a, [de]
    ld [hl], a
    ret


Call_014_479e:
jr_014_479e:
    ld b, $02
    jp $4782


    ld b, $03
    jp $4782


Call_014_47a8:
    ld b, $04
    jp $4782


Call_014_47ad:
    ld hl, $caea
    ld a, [$da14]
    call Call_000_223b
    ld e, l
    ld d, h
    ld b, $08

jr_014_47ba:
    ld a, [de]
    push bc
    push de
    call Call_014_47c7
    pop de
    pop bc
    inc de
    dec b
    jr nz, jr_014_47ba

    ret


Call_014_47c7:
    cp $ff
    ret z

    cp $db
    jr nz, jr_014_47d2

    ld a, $ff
    ld [de], a
    ret


jr_014_47d2:
    ld hl, $491d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    push af
    ld hl, $caf2
    ld a, [$da14]
    call Call_000_223b
    pop af
    ld b, $19
    ld c, a

jr_014_47ed:
    ld a, [hl]
    cp $ff
    jr z, jr_014_47f8

    cp c
    jr nz, jr_014_47f8

    ld [hl], $ff
    ret


jr_014_47f8:
    inc hl
    dec b
    jr nz, jr_014_47ed

    ret


Call_014_47fd:
    push hl
    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, $34
    call Call_000_1dfb
    add $cd
    pop hl
    ret z

    push af
    ld a, [$da14]
    call Call_000_223b
    ld c, [hl]
    ld b, $00
    pop af
    push hl
    call Call_000_1de6
    ld c, h
    pop hl
    ld [hl], c
    ret


Call_014_4821:
    push hl
    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, $34
    call Call_000_1dfb
    add $cd
    pop hl
    ret z

    push af
    ld a, [$da14]
    call Call_000_223b
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop af
    dec hl
    push hl
    call Call_000_1de6
    ld c, h
    ld b, e
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Call_014_4849:
    push de
    ld a, [$da12]
    ld c, a
    ld a, [$da13]
    ld b, a
    ld a, $19
    call Call_000_1de6
    ld a, l
    add $1d
    ld l, a
    ld a, h
    adc $4c
    ld h, a
    pop de
    ld b, $19

jr_014_4862:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_014_4862

    ret

label14_4869:
    ld a, [$da12]
    ld c, a
    ld a, [$da13]
    ld b, a
    ld hl, $4893

jr_014_4874:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    cp $ff
    jr nz, jr_014_487e

    ret


jr_014_487e:
    ld a, e
    cp c
    jr nz, jr_014_488f

    ld a, d
    cp b
    jr nz, jr_014_488f

    ld a, [hl+]
    ld [$da12], a
    ld a, [hl+]
    ld [$da13], a
    ret


jr_014_488f:
    inc hl
    inc hl
    jr jr_014_4874

    inc b
    nop
    and $01
    dec bc
    nop
    inc c
    nop
    rra
    nop
    db $e4
    ld bc, $0020
    push hl
    ld bc, $0033
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $00
    scf
    nop
    jr c, jr_014_48af

jr_014_48af:
    ld c, e
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    ld h, e
    nop
    ld h, h
    nop
    ld h, l
    nop
    ld h, [hl]
    nop
    ld h, a
    nop
    ld l, b
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add b
    nop
    sub e
    nop
    sub h
    nop
    sub l
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc d
    nop
    xor a
    nop
    or b
    nop
    or c
    nop
    or d
    nop
    or e
    nop
    or h
    nop
    rst $00
    nop
    ret z

    nop
    ret


    nop
    jp z, $cb00

    nop
    call z, $cd00
    nop
    adc $00
    rst $08
    nop
    ret nc

    nop
    pop de
    nop
    jp nc, $d300

    nop
    call nc, $d500
    nop
    sub $00
    rst $10
    nop
    ret c

    nop
    reti


    nop
    jp c, $db00

    nop
    call c, $dd00
    nop
    sbc $00
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $09
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    ld [de], a
    ld [de], a
    inc d
    dec d
    dec d
    rla
    jr jr_014_4950

    ld a, [de]
    ld a, [de]
    inc e
    inc e
    ld e, $1e
    jr nz, jr_014_495f

    ld [hl+], a
    ld [hl+], a
    inc h
    dec h
    ld h, $27
    daa
    add hl, hl
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    ld l, $2e
    jr nc, jr_014_497f

    ld [hl-], a

jr_014_4950:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_014_4990

    rst $38
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_014_495f:
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
    ld d, b
    ld d, b
    ld d, d
    ld d, d
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, b
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld h, b
    ld h, b

jr_014_497f:
    ld h, b
    ld h, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, h
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_014_4990:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    ld a, e
    ld a, e
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add h
    add h
    add h
    adc b
    adc b
    adc d
    adc d
    adc h
    rst $38
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    sub $d7
    ret c

    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_014_4a00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_014_4b00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    ld bc, $001e
    nop
    nop
    ld a, [bc]
    nop
    ld b, $00
    dec b
    nop
    ld bc, $6400
    ret z

    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0003], sp
    ld [bc], a
    ld bc, $0008
    nop
    nop
    ld [$0500], sp
    nop
    rlca
    nop
    ld bc, $c800
    ld [hl-], a
    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    add hl, bc
    nop
    ld bc, $0c01
    nop
    nop
    nop
    inc de
    nop
    inc b
    nop
    inc b
    nop
    inc bc
    nop
    sub [hl]
    nop
    ld [hl-], a
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    inc b
    nop
    ld bc, $0801
    nop
    inc d
    nop
    inc c
    nop
    inc b
    nop
    inc c
    nop
    ld c, $00
    ret z

    nop
    nop
    ret z

    inc sp
    rst $38
    rst $38
    rst $38
    ld h, d
    add hl, bc
    nop
    ld [bc], a
    ld [bc], a
    inc d
    nop
    ld b, $00
    rla
    nop
    ld [$0c00], sp
    nop
    ld a, [bc]
    nop
    ld h, h
    ld [hl-], a
    ret z

    ret z

    dec d
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    jr jr_014_4cba

jr_014_4cba:
    ld [bc], a
    nop
    ld [de], a
    nop
    ld b, $00
    ld a, [bc]
    nop
    ld [$6400], sp
    ld [hl-], a
    nop
    ret z

    ld b, c
    rst $38
    rst $38
    rst $38
    adc e
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    ld a, [de]
    nop
    add hl, bc
    nop
    ld c, $00
    add hl, bc
    nop
    add hl, bc
    nop
    inc e
    nop
    ld [hl-], a
    sub [hl]
    ret z

    ret z

    inc bc
    dec hl
    rst $38
    rst $38
    sbc e
    ld [de], a
    nop
    inc bc
    inc bc
    dec h
    nop
    inc bc
    nop
    add hl, de
    nop
    add hl, bc
    nop
    rra
    nop
    dec c
    nop
    ret z

    ld h, h
    ret z

    ret z

    ld a, c
    rst $38
    rst $38
    rst $38
    or a
    stop
    inc bc
    dec b
    add hl, hl
    nop
    inc bc
    nop
    inc e
    nop
    ld [$0800], sp
    nop
    ld b, $00
    sub [hl]
    ld [hl-], a
    sub [hl]
    ret z

    ld a, e
    rst $38
    rst $38
    rst $38
    db $76
    inc c
    nop
    ld [bc], a
    inc bc
    jr jr_014_4d1e

jr_014_4d1e:
    inc bc
    nop
    dec e
    nop
    add hl, bc
    nop
    dec bc
    nop
    dec c
    nop
    ld a, [$0032]
    ret z

    ld l, b
    rst $38
    rst $38
    rst $38
    add hl, bc
    nop
    nop
    nop
    ld b, $28
    nop
    rlca
    nop
    inc d
    nop
    inc c
    nop
    inc c
    nop
    inc e
    nop
    ld h, h
    ld a, [$c864]
    dec hl
    rst $38
    rst $38
    rst $38
    add hl, bc
    nop
    nop
    nop
    ld b, $1e
    nop
    ld [de], a
    nop
    stop
    ld a, [bc]
    nop
    jr nz, jr_014_4d58

jr_014_4d58:
    inc e
    nop
    ld h, h
    ld a, [$c8c8]
    dec hl
    rst $38
    rst $38
    rst $38
    dec e
    jr nz, jr_014_4d65

jr_014_4d65:
    inc bc
    inc b
    dec l
    nop
    dec b
    nop
    jr nz, jr_014_4d6d

jr_014_4d6d:
    ld a, [bc]
    nop
    ld [de], a
    nop
    ld b, $00
    sub [hl]
    ld h, h
    sub [hl]
    sub [hl]
    ld [hl], d
    rst $38
    rst $38
    rst $38
    ld b, [hl]
    add hl, de
    nop
    ld [bc], a
    inc b
    jr nz, jr_014_4d82

jr_014_4d82:
    ld b, $00
    ld e, $00
    inc c
    nop
    ld a, [de]
    nop
    inc c
    nop
    ret z

    ld h, h
    sub [hl]
    sub [hl]
    inc e
    rst $38
    rst $38
    rst $38
    jr nc, jr_014_4db1

    nop
    inc bc
    inc b
    dec e
    nop
    inc c
    nop
    ld a, [de]
    nop
    inc c
    nop
    ld e, $00
    dec c
    nop
    ld h, h
    ld [hl-], a
    ld h, h
    sub [hl]
    ld [hl], a
    rst $38
    rst $38
    rst $38
    and e
    dec l
    nop
    inc bc

jr_014_4db1:
    dec b
    inc sp
    nop
    ld b, $00
    inc hl
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    sub [hl]
    ld [hl-], a
    ld [hl-], a
    sub [hl]
    ld l, h
    ld a, c
    rst $38
    rst $38
    inc d
    scf
    nop
    inc bc
    ld b, $20
    nop
    rlca
    nop
    jr nz, jr_014_4dd1

jr_014_4dd1:
    inc d
    nop
    inc hl
    nop
    dec bc
    nop
    sub [hl]
    ld h, h
    ld h, h
    sub [hl]
    ld l, d
    adc h
    rst $38
    rst $38
    ld l, c
    ld [hl-], a
    nop
    ld [bc], a
    rlca
    dec hl
    nop
    dec b
    nop
    dec e
    nop
    add hl, de
    nop
    rrca
    nop
    inc e
    nop
    ret z

    nop
    ld a, [$4e96]
    ld l, c
    rst $38
    rst $38
    ld l, a
    ld b, b
    nop
    inc bc
    ld [$0026], sp
    stop
    inc l
    nop
    dec e
    nop
    inc c
    nop
    ld a, [bc]
    nop
    ret z

    ld [hl-], a
    ld h, h
    sub [hl]
    ld e, $ff
    rst $38
    rst $38
    dec a
    scf
    nop
    ld [bc], a
    ld b, $30
    nop
    ld [de], a
    nop
    jr nz, jr_014_4e1c

jr_014_4e1c:
    ld c, $00
    jr z, jr_014_4e20

jr_014_4e20:
    ld e, $00
    ld h, h
    ld [hl-], a
    ret z

    sub [hl]
    jr nz, @-$28

    rst $38
    rst $38
    ld c, a
    ld b, e
    nop
    ld [bc], a
    ld [$0030], sp
    ld [de], a
    nop
    inc e
    nop
    stop
    ld a, [hl+]
    nop
    add hl, bc
    nop
    ret z

    sub [hl]
    sub [hl]
    sub [hl]
    ld [hl], d
    adc h
    rst $38
    rst $38
    add l
    ld b, c
    nop
    ld [bc], a
    rlca
    add hl, hl
    nop
    inc bc
    nop
    ld [hl+], a
    nop
    ld c, $00
    jr z, jr_014_4e52

jr_014_4e52:
    inc de
    nop
    ld h, h
    ld h, h
    ld a, [$0196]
    rst $38
    rst $38
    rst $38
    xor e
    ld b, e
    nop
    inc bc
    rlca
    dec [hl]
    nop
    inc d
    nop
    dec [hl]
    nop
    rrca
    nop
    jr jr_014_4e6b

jr_014_4e6b:
    dec l
    nop
    ld [hl-], a
    nop
    nop
    sub [hl]
    ld b, l
    ld c, e
    rst $38
    rst $38
    cp e
    ld b, b
    nop
    ld [bc], a
    rlca
    dec l
    nop
    inc d
    nop
    inc a
    nop
    jr jr_014_4e82

jr_014_4e82:
    ld a, [de]
    nop
    ld a, [hl+]
    nop
    ld a, [$6400]
    sub [hl]
    ld a, [de]
    ld c, h
    rst $38
    rst $38
    ld bc, $0048
    ld [bc], a
    ld [$0030], sp
    dec bc
    nop
    daa
    nop
    ld c, $00
    ld [hl-], a
    nop
    dec bc
    nop
    ld h, h
    ld h, h
    ld h, h
    sub [hl]
    ld d, d
    ld a, c
    rst $38
    rst $38
    ld h, $49
    nop
    ld [bc], a
    ld [$003e], sp
    ld [$2000], sp
    nop
    ld hl, $0f00
    nop
    add hl, bc
    nop
    ret z

    ld h, h
    ld [hl-], a
    sub [hl]
    rla
    ld h, a
    rst $38
    rst $38
    ld l, b
    ld e, d
    nop
    ld [bc], a
    ld [$003d], sp
    dec bc
    nop
    jr z, jr_014_4ecb

jr_014_4ecb:
    ld [hl+], a
    nop
    ld e, $00
    ld a, [bc]
    nop
    ld a, [$c800]
    sub [hl]
    ld a, [de]
    dec h
    rst $38
    rst $38
    adc d
    ld d, c
    nop
    ld [bc], a
    add hl, bc
    ld [hl], $00
    ld c, $00
    ld a, [hl+]
    nop
    inc d
    nop
    ld h, $00
    ld e, $00
    ret z

    nop
    ld a, [$0196]
    rst $38
    rst $38
    rst $38
    or d
    ld c, [hl]
    nop
    inc bc
    add hl, bc
    ld b, d
    nop
    ld e, $00
    ld [hl+], a
    nop
    ld d, $00
    inc [hl]
    nop
    ld de, $6400
    ret z

    ld h, h
    sub [hl]
    inc [hl]
    dec [hl]
    rst $38
    rst $38
    db $10
    dec h
    dec c
    ld b, $0a
    ld b, $00
    ld a, b
    nop
    ld d, $00
    inc l
    ld bc, $0082
    jr nz, jr_014_4f1c

jr_014_4f1c:
    ld h, h
    ld h, h
    ld h, h
    sub [hl]
    nop
    db $db
    rst $38
    rst $38
    inc e
    nop
    nop
    nop
    ld b, $5a
    nop
    inc a
    nop
    jr z, jr_014_4f2f

jr_014_4f2f:
    add hl, de
    nop
    rrca
    nop
    ld a, [bc]
    nop
    ld a, [$0032]
    sub [hl]
    ld b, h
    ld e, h
    rst $38
    rst $38
    call nz, RST_00
    nop
    rlca
    ld h, h
    nop
    inc d
    nop
    dec l
    nop
    inc d
    nop
    inc d
    nop
    ld b, [hl]
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld b, c
    ld d, [hl]
    adc [hl]
    rst $38
    ld l, $82
    nop
    inc bc
    ld a, [bc]
    add hl, sp
    nop
    ld l, $00
    jr nc, jr_014_4f61

jr_014_4f61:
    add hl, de
    nop
    ld [hl-], a
    nop
    rrca
    nop
    sub [hl]
    ld [hl-], a
    ld h, h
    ld h, h
    dec d
    dec a
    ld b, c
    rst $38
    ld c, b
    sub b
    nop
    inc bc
    inc c
    ld c, b
    nop
    ld de, $4000
    nop
    dec d
    nop
    add hl, sp
    nop
    ld a, [bc]
    nop
    ret z

    ld [hl-], a
    ret z

    ld h, h
    inc a
    ld b, c
    ret c

    rst $38
    ld e, h
    ld a, c
    nop
    inc bc
    inc c
    ld b, h
    nop
    ld d, b
    nop
    ld e, $00
    ld a, [de]
    nop
    daa
    nop
    ld b, c
    nop
    ld h, h
    sub [hl]
    ld a, [$0464]
    inc sp
    ld [hl], $ff
    ld [hl], e
    ld a, [hl]
    nop
    inc bc
    inc c
    ld a, $00
    inc d
    nop
    dec sp
    nop
    jr jr_014_4fae

jr_014_4fae:
    dec l
    nop
    jr z, jr_014_4fb2

jr_014_4fb2:
    ld a, [$c800]
    ld h, h
    ld c, d
    ld [hl], l
    rst $38
    rst $38
    adc b
    xor a
    nop
    inc bc
    dec bc
    ld d, b
    nop
    inc d
    nop
    ccf
    nop
    dec l
    nop
    ld a, [hl+]
    nop
    inc de
    nop
    sub [hl]
    nop
    ld h, h
    ld h, h
    ld b, h
    ld d, a
    ld a, e
    rst $38
    ld l, [hl]
    add h
    nop
    ld [bc], a
    inc c
    inc a
    nop
    ld [de], a
    nop
    inc sp
    nop
    add hl, de
    nop
    dec hl
    nop
    dec d
    nop
    ld h, h
    ret z

    ret z

    ld h, h
    ld a, c
    adc h
    rst $38
    rst $38
    db $c3, $90, $00


    inc bc
    inc c
    ld c, a
    nop
    inc l
    nop
    jr c, jr_014_4ff7

jr_014_4ff7:
    inc e
    nop
    ld d, $00
    inc l
    nop
    sub [hl]
    ld h, h
    ret z

    ld h, h
    ld [hl], l
    ld [hl], a
    rst $38
    rst $38
    inc bc
    sub a
    nop
    inc bc
    inc c
    ld d, [hl]
    nop
    ld d, $00
    inc l
    nop
    inc e
    nop
    ld b, l
    nop
    ld l, $00
    ld h, h
    ld [hl-], a
    ret z

    ld h, h
    inc e
    ld l, c
    ld l, d
    rst $38
    ld a, [de]
    sub [hl]
    nop
    inc bc
    inc c
    ld b, c
    nop
    dec hl
    nop
    dec sp
    nop
    ld [hl-], a
    nop
    ld a, [de]
    nop
    rla
    nop
    sub [hl]
    ld h, h
    ld h, h
    ld h, h
    ld h, a
    ld l, h
    rst $38
    rst $38
    cpl
    sub d
    nop
    ld [bc], a
    dec c
    ld b, e
    nop
    ld l, $00
    jr c, jr_014_5042

jr_014_5042:
    ld a, [de]
    nop
    ld b, e
    nop
    ld sp, $9600
    ld [hl-], a
    sub [hl]
    ld h, h
    rla
    jr nz, @+$01

    rst $38
    ld e, l
    and b
    nop
    inc bc
    dec c
    ld b, l
    nop
    inc a
    nop
    ld b, e
    nop
    ld e, $00
    inc [hl]

jr_014_505e:
    nop
    jr z, jr_014_5061

jr_014_5061:
    ret z

    ld h, h
    ret z

    ld h, h
    ld [hl-], a
    ld c, l
    rst $38
    rst $38
    ld a, d
    sbc h
    nop
    inc bc
    db $10
    ld [hl], $00
    rrca
    nop
    ld b, [hl]
    nop
    ld e, d
    nop
    ld d, l
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    sub [hl]
    ret z

    ld h, h
    inc bc
    dec hl
    rst $38
    rst $38
    sbc l
    sub c
    nop
    inc bc
    ld c, $54
    nop
    inc [hl]
    nop
    ld c, h
    nop
    inc hl
    nop
    ld e, $00
    ld a, [de]
    nop
    ret z

    nop
    ret z

    ld h, h
    inc e
    jr nz, @+$01

    rst $38
    nop
    sbc c
    nop
    inc bc
    ld c, $4b
    nop
    ld a, [de]
    nop
    ld a, [hl-]
    nop
    jr nz, jr_014_50a8

jr_014_50a8:
    ld h, b
    nop
    inc [hl]
    nop
    sub [hl]
    ld h, h
    ret z

    ld h, h
    ld b, e
    ld e, l
    rst $38
    rst $38
    jr jr_014_505e

    nop
    inc bc
    ld c, $42
    nop
    inc sp
    nop
    dec [hl]
    nop
    ld hl, $3300
    nop
    dec de
    nop
    sub [hl]
    ld h, h
    sub [hl]
    ld h, h
    jr jr_014_5135

    rst $38
    rst $38
    inc sp
    xor d
    nop
    inc bc
    rrca
    ld e, a
    nop
    jr jr_014_50d6

jr_014_50d6:
    ld c, a
    nop
    rra
    nop
    add hl, sp
    nop
    scf
    nop
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld h, h
    ld b, c
    ld l, [hl]
    rst $38
    rst $38
    ld [hl], c
    or b
    nop
    ld [bc], a
    rrca
    ld b, h
    nop
    add hl, sp
    nop
    dec sp
    nop
    inc h
    nop
    ld c, [hl]
    nop
    inc e
    nop
    ret z

    nop
    sub [hl]
    ld h, h
    jr jr_014_516c

    rst $38
    rst $38
    ld c, h
    cp [hl]
    nop
    inc bc
    ld de, $0049
    scf
    nop
    ld b, e
    nop
    ld sp, $5000
    nop
    ld d, l
    nop
    ret z

    ld [hl-], a
    sub [hl]
    ld h, h
    ld b, d
    adc d
    rst $38
    rst $38
    ld b, h
    nop
    nop
    nop
    inc c
    ret z

    nop
    ld e, $00
    ccf
    nop
    inc hl
    nop
    ccf
    nop
    inc hl
    nop
    ld a, [$c800]
    ld h, h
    ld b, [hl]
    ld d, l
    ld a, e
    rst $38
    ld b, h
    nop
    nop
    nop

jr_014_5135:
    inc c
    ld d, b
    nop
    ld e, $00
    ccf
    nop
    ld [hl-], a
    nop
    ccf
    nop
    inc hl
    nop
    ld a, [$c8fa]
    ld h, h
    ld b, [hl]
    ld d, l
    ld a, e
    rst $38
    ld h, [hl]
    nop
    nop
    nop
    inc c
    sub b
    ld bc, $0064
    inc a
    nop
    ld e, $00
    ld h, $00
    scf
    nop
    ret z

    ld [hl-], a
    ret z

    ld h, h
    rla
    ld l, a
    ld [hl], l
    rst $38
    ld h, [hl]
    nop
    nop
    nop
    inc c
    ld h, h
    nop
    ld h, h
    nop

jr_014_516c:
    dec l
    nop
    ld [hl-], a
    nop
    ld h, $00
    scf
    nop
    ld h, h
    sub [hl]
    ret z

    ld h, h
    rla
    ld l, a
    ld [hl], l
    rst $38
    sub l
    nop
    nop
    nop
    inc c
    inc l
    ld bc, $003c
    ld c, l
    nop
    inc a
    nop
    jr z, jr_014_518b

jr_014_518b:
    ld [hl-], a
    nop
    ld a, [$c800]
    ld h, h
    ccf
    ld c, d
    rst $38
    rst $38
    sub l
    nop
    nop
    nop
    inc c
    ld d, l
    nop
    inc a
    nop
    ld c, l
    nop
    ld c, e
    nop
    jr z, jr_014_51a4

jr_014_51a4:
    ld [hl-], a
    nop
    ld a, [$c800]
    ld [hl-], a
    ccf
    ld c, d
    rst $38
    rst $38
    and h
    inc e
    ld bc, $1003
    ld c, [hl]
    nop
    jr z, jr_014_51b7

jr_014_51b7:
    ld a, [hl-]
    nop
    ld l, $00
    ld [hl+], a
    nop
    ld b, [hl]
    nop
    ld [hl-], a
    ret z

    ld a, [$1232]
    dec hl
    rst $38
    rst $38
    or e
    ld a, [de]
    ld bc, $1003
    ld b, b
    nop
    ld [hl], c
    nop
    ld sp, $2200
    nop
    ld e, a
    nop
    ld l, [hl]
    nop
    sub [hl]
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld a, [bc]
    sub l
    rst $38
    rst $38
    inc b
    ld [hl+], a
    ld bc, $1002
    ld b, e
    nop
    ld e, $00
    ld b, c
    nop
    ld [hl], e
    nop
    ld l, [hl]
    nop
    inc a
    nop
    ld a, [$32fa]
    ld [hl-], a
    inc c
    ld d, d
    rst $38
    rst $38
    ld sp, $00f6
    inc bc
    ld de, $005f
    dec a
    nop
    ld e, b
    nop
    add c
    nop
    inc hl
    nop
    ld a, $00
    sub [hl]
    ld [hl-], a
    sub [hl]
    ld [hl-], a
    ld e, $56
    rst $38
    rst $38
    ld c, e
    ld b, d
    ld bc, $1603
    ld b, h
    nop
    jr nz, jr_014_521b

jr_014_521b:
    ld a, [hl]
    nop
    ld b, [hl]
    nop
    ld a, d
    nop
    dec a
    nop
    ld a, [$9600]
    ld [hl-], a
    ld a, [bc]
    inc e
    rst $38
    rst $38
    ld e, a
    jr nz, jr_014_522f

    inc bc

jr_014_522f:
    ld de, $0060
    ld d, d
    nop
    ld c, e
    nop
    ld h, h
    nop
    ld b, d
    nop
    ld c, d
    nop
    ret z

    ld h, h
    sub [hl]
    ld [hl-], a
    ld a, [bc]
    ld l, b
    rst $38
    rst $38
    add a
    ld b, b
    ld bc, $1203
    ld h, d
    nop
    ld b, e
    nop
    ld c, h
    nop
    ld c, b
    nop
    ld b, l
    nop
    ld b, h
    nop
    ret z

    ld [hl-], a
    ld a, [$2732]
    ld a, l
    rst $38
    rst $38
    sbc a
    ld d, [hl]
    ld bc, $1203
    add d
    nop
    ld b, h
    nop
    ld c, l
    nop
    scf
    nop
    ld a, [hl+]
    nop
    ld h, $00
    ret z

    ld [hl-], a
    sub [hl]
    ld [hl-], a
    ld b, b
    ld d, d
    ld l, c
    rst $38
    ld b, $38
    ld bc, $1203
    ld d, d
    nop
    inc hl
    nop
    ld d, b
    nop
    inc l
    nop
    ld a, b
    nop
    inc a
    nop
    sub [hl]
    ld h, h
    sub [hl]
    ld [hl-], a
    jr jr_014_52f4

    rst $38
    rst $38
    ld d, $96
    ld bc, $1303
    adc h
    nop
    jr z, jr_014_5298

jr_014_5298:
    ld h, a
    nop
    ld b, [hl]
    nop
    ld a, e
    nop
    ld d, b
    nop
    ret z

    ld h, h
    sub [hl]
    ld [hl-], a
    inc bc
    ld e, b
    adc d
    rst $38
    dec l
    ld h, h
    ld bc, $1303
    ld l, h
    nop
    ld a, $00
    ld e, d
    nop
    dec a
    nop
    dec l
    nop
    jr z, jr_014_52b9

jr_014_52b9:
    ld a, [$c832]
    ld [hl-], a
    ld l, b
    ld a, c
    rst $38
    rst $38
    ld c, c
    inc bc
    ld bc, $1303
    ld c, e
    nop
    ld d, [hl]
    nop
    ld b, c
    nop
    ld a, [hl+]
    nop
    adc [hl]
    nop
    ld a, b
    nop
    ret z

    sub [hl]
    sub [hl]
    ld [hl-], a
    inc hl
    ld c, d
    sub l
    rst $38
    ld e, d
    db $76
    ld bc, $1403
    ld [hl], h
    nop
    adc h
    nop
    ld c, b
    nop
    ld [hl-], a
    nop
    add a
    nop
    ld e, e
    nop
    ld a, [$fa64]
    ld [hl-], a
    inc e
    jr nz, jr_014_5326

    rst $38
    ld a, c

jr_014_52f4:
    jp nz, $0401

    jr jr_014_5376

    nop
    dec h
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ld [hl-], a
    nop
    ld b, h
    nop
    ld a, [$c832]
    ld [hl-], a
    ld e, $25
    dec sp
    rst $38
    adc h
    ld sp, $0401
    ld [de], a
    ld d, d
    nop
    ld b, h
    nop
    ld b, d
    nop
    ld h, b
    nop
    ld e, b
    nop
    ld b, b
    nop
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    jr jr_014_533f

    ret c

    rst $38
    or c

jr_014_5326:
    ld a, [bc]
    ld [bc], a
    inc bc
    dec d
    ld e, a
    nop
    ld h, $00
    ld h, h
    nop
    add a
    nop
    ld e, e
    nop
    ld b, e
    nop
    ret z

    ld h, h
    sub [hl]
    ld [hl-], a
    ld bc, $ff56
    rst $38
    ld [bc], a

jr_014_533f:
    ld h, [hl]
    ld bc, $1504
    ld c, h
    nop
    ld b, h
    nop
    ld b, d
    nop
    inc l
    nop
    sub [hl]
    nop
    ld b, h
    nop
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld d, l
    ld e, b
    adc d
    rst $38
    inc a
    sbc d
    ld bc, $1503
    ld l, d
    nop
    ld b, h
    nop
    ld h, c
    nop
    dec l
    nop
    ld [hl], $00
    jr nc, jr_014_5368

jr_014_5368:
    ld a, [$c896]
    ld [hl-], a
    ld b, c
    ld c, e
    ld c, l
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    inc d
    sub b

jr_014_5376:
    ld bc, $0028
    ld d, a
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    ld b, c
    nop
    ret z

    ld h, h
    sub [hl]
    nop
    ld b, c
    ld d, d
    ld a, l
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    inc d
    ld b, [hl]
    nop
    jr z, jr_014_5392

jr_014_5392:
    ld d, l
    nop
    inc [hl]
    nop
    ld e, d
    nop
    ld b, c
    nop
    ret z

    ret z

    ret z

    ld [hl-], a
    ld b, c
    ld d, d
    ld a, l
    rst $38
    ld b, l
    call c, $0705
    inc d
    db $f4
    ld bc, $0028
    ld d, b
    nop
    jr z, jr_014_53af

jr_014_53af:
    ld a, $00
    ld d, b
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ld [hl-], a
    dec c
    dec hl
    ld h, c
    rst $38
    ld b, l
    nop
    nop
    nop
    inc d
    ld d, b
    nop
    add hl, sp
    nop
    ld d, b
    nop
    jr nc, jr_014_53c8

jr_014_53c8:
    ld a, $00
    ld d, b
    nop
    sub [hl]
    ret z

    ld h, h
    ld [hl-], a
    dec c
    dec hl
    ld h, c
    rst $38
    sub [hl]
    and h
    ld b, $06
    ld c, $58
    ld [bc], a
    ld a, [bc]
    nop
    add d
    nop
    ld e, $00
    ld b, h
    nop
    rrca
    nop
    ld a, [$fafa]
    ld [hl-], a
    ld b, b
    ld b, c
    ld c, l
    rst $38
    sub [hl]
    nop
    nop
    nop
    ld c, $96
    nop
    ld a, [bc]
    nop
    add d
    nop
    ld l, $00
    jr nc, jr_014_53fc

jr_014_53fc:
    rrca
    nop
    ld a, [$fafa]
    ld [hl-], a
    ld b, b
    ld b, c
    ld c, l
    rst $38
    dec c
    db $db
    ld bc, $1603
    add d
    nop
    jr z, jr_014_540f

jr_014_540f:
    ld e, e
    nop
    inc a
    nop
    and d
    nop
    ld l, c
    nop
    sub [hl]
    ld h, h
    sub [hl]
    nop
    ld [hl], a
    ld a, h
    rst $38
    rst $38
    rla
    cp $01
    inc b
    ld d, $8d
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    dec sp
    nop
    ld e, $00
    ld c, c
    nop
    ret z

    ld a, [$0064]
    ld [hl-], a
    dec a
    rst $38
    rst $38
    inc [hl]
    ldh [rSB], a
    inc bc
    ld d, $6e
    nop
    add h
    nop
    ld c, [hl]
    nop
    ld d, c
    nop
    add d
    nop
    ld l, c
    nop
    ret z

    sub [hl]
    ret z

    nop
    ld a, [bc]
    inc c
    ld b, [hl]
    rst $38
    ld d, b
    ld c, h
    ld [bc], a
    inc b
    rla
    ld e, e
    nop
    ld d, h
    nop
    xor d
    nop
    adc h
    nop
    ld e, d
    nop
    ld d, d
    nop
    ld a, [$c832]
    nop
    dec h
    ld d, a
    rst $10
    rst $38
    ld h, e
    db $f4
    ld bc, $1703
    ld h, h
    nop
    ld l, [hl]
    nop
    ld e, a
    nop
    ld [hl-], a
    nop
    ld a, [hl]
    nop
    adc a
    nop
    sub [hl]
    ld h, h
    ret z

    nop
    ld a, [de]
    ld b, c
    ld l, d
    rst $38
    ld [hl], b
    ld [$0301], a
    rla
    xor h
    nop
    scf
    nop
    ld e, a
    nop
    ld [hl], b
    nop
    ld [hl], $00
    dec hl
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    daa
    ld d, d
    rst $38
    add d
    ld b, $02
    inc bc
    jr jr_014_54fc

    nop
    ld l, $00
    ld h, [hl]
    nop
    ld b, h
    nop
    ld d, b
    nop
    ld a, $00
    ld h, h
    ld h, h
    sub [hl]
    nop
    inc hl
    dec h
    inc sp
    rst $38
    and c
    db $76
    ld [bc], a
    inc b
    jr jr_014_5534

    nop
    ld d, a
    nop
    adc h
    nop
    ld h, e
    nop
    ld l, c
    nop
    ld e, h
    nop
    ld a, [$c8c8]
    nop
    dec hl
    dec [hl]
    ld [hl], $ff
    or h
    jr nc, @+$04

    inc bc
    jr jr_014_5531

    nop
    ld l, $00
    ld h, h
    nop
    ld e, l
    nop
    ld [hl-], a
    nop
    ccf
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    nop
    inc d
    ld b, d
    sub $ff
    dec b
    ld c, c
    ld [bc], a
    inc b
    add hl, de
    sub b
    nop
    cpl
    nop
    adc b
    nop
    ld h, [hl]
    nop
    sbc b
    nop
    ld h, b
    nop
    ret z

    sub [hl]
    sub [hl]
    nop

jr_014_54fc:
    rra
    dec hl
    ld c, d
    rst $38
    inc hl
    sub h
    ld [bc], a
    inc bc
    add hl, de
    ld a, [hl]
    nop
    ld l, $00
    ld e, a
    nop
    ld d, d
    nop
    add d
    nop
    cpl
    nop
    ld a, [$6400]
    nop
    ld h, a
    ld l, a
    rst $38
    rst $38
    jr c, jr_014_5573

    ld [bc], a
    inc b
    add hl, de
    ld a, l
    nop
    ld b, d
    nop
    ld d, l
    nop
    ld d, b
    nop
    add a
    nop
    xor d
    nop
    sub [hl]
    sub [hl]
    ret z

    nop
    dec c
    ld a, b
    sub d

jr_014_5531:
    rst $38
    ld c, l
    dec a

jr_014_5534:
    ld [bc], a
    inc bc
    ld a, [de]
    add e
    nop
    ld e, [hl]
    nop
    ld l, c
    nop
    ld l, c
    nop
    add h
    nop
    ld h, h
    nop
    sub [hl]
    ld h, h
    sub [hl]
    nop
    jr jr_014_556d

    ld [hl], h
    rst $38
    ld [hl], l
    add b
    ld [bc], a
    inc bc
    ld a, [de]
    ld l, d
    nop
    ld sp, $8d00
    nop
    sbc e
    nop
    ld h, b
    nop
    ld sp, $c800
    ld [hl-], a
    ret z

    nop
    dec d
    ld e, l
    ld a, e
    rst $38
    add [hl]
    ret nc

    ld [bc], a
    inc b
    inc d
    ld h, c
    nop
    add l
    nop

jr_014_556d:
    ld c, l
    nop
    ld e, a
    nop
    ld l, c
    nop

jr_014_5573:
    ld h, [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    ld c, b
    ld l, e
    ld [hl], e
    rst $38
    and l
    sbc d
    ld [bc], a
    inc bc
    dec de
    ld h, l
    nop
    ld c, d
    nop
    ld a, [hl-]
    nop
    add a
    nop
    adc h
    nop
    ld l, a
    nop
    ret z

    ld h, h
    sub [hl]
    nop
    ld e, b
    ld e, d
    ld e, l
    rst $38
    or [hl]
    inc c
    inc bc
    inc bc
    dec de
    and b
    nop
    ld h, $00
    and [hl]
    nop
    ret z

    nop
    ld c, e
    nop
    ld c, a
    nop
    ld a, [$96fa]
    nop
    dec hl
    ld b, b
    ld c, b
    rst $38
    rlca
    db $e4
    ld [bc], a
    inc b
    dec de
    ld h, [hl]
    nop
    ld sp, $7000
    nop
    ld d, d
    nop
    sub c
    nop
    ld c, h
    nop
    ld h, h
    ld [hl-], a
    sub [hl]
    nop
    ld bc, $3c1e
    rst $38
    push bc
    nop
    add hl, de
    rlca
    inc d
    jr nz, jr_014_55d2

    inc h
    nop
    add d

jr_014_55d2:
    nop
    ld e, d
    nop
    dec l
    nop
    ld e, d
    nop
    ld a, [$3264]
    nop
    adc b
    adc a
    rst $38
    rst $38
    push bc
    nop
    nop
    nop
    inc d
    xor d
    nop
    inc h
    nop
    add d
    nop
    ld l, [hl]
    nop
    dec l
    nop
    ld e, d
    nop
    ld a, [$3232]
    nop
    adc b
    adc a
    rst $38
    rst $38
    ld a, [hl+]
    nop
    nop
    nop
    inc d
    add sp, $03
    ld [hl-], a
    nop
    xor d
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld b, [hl]
    nop
    ld a, [$9664]
    nop
    ld c, b
    ld e, l
    rst $38
    rst $38
    ld a, [hl+]
    nop
    nop
    nop
    inc d
    and l
    nop
    ld e, d
    nop
    adc h
    nop
    ld d, b
    nop
    ld h, h
    nop
    ld b, [hl]
    nop
    ld a, [$96fa]
    nop
    ld c, b
    ld e, l
    rst $38
    rst $38
    xor [hl]
    nop
    nop
    nop
    inc d
    jr nz, jr_014_5636

    jr nc, jr_014_5635

jr_014_5635:
    ld e, a

jr_014_5636:
    nop
    ld b, [hl]
    nop
    inc a
    nop
    inc a
    nop
    ld [hl-], a
    ld [hl-], a
    ld a, [$2900]
    db $76
    ld a, a
    rst $38
    xor [hl]
    nop
    nop
    nop
    inc d
    ld d, b
    nop
    jr nc, jr_014_564e

jr_014_564e:
    ld h, h
    nop
    ld d, l
    nop
    inc a
    nop
    inc a
    nop
    ret z

    ld [hl-], a
    ld a, [$2900]
    db $76
    ld a, a
    rst $38
    adc a
    add $02
    inc bc
    inc e
    and b
    nop
    jr z, jr_014_5667

jr_014_5667:
    add d
    nop
    ld e, b
    nop
    ld d, [hl]
    nop
    adc h
    nop
    ret z

    nop
    ld h, h
    nop
    inc e
    ld c, e
    rst $38
    rst $38
    xor b
    xor $02
    inc b
    inc e
    ld l, [hl]
    nop
    add a
    nop
    sbc h
    nop
    jr z, jr_014_5684

jr_014_5684:
    add d
    nop
    xor d
    nop
    ret z

    ld [hl-], a
    ld a, [$4c00]
    ld l, a
    ld [hl], h
    rst $38
    cp a
    cp h
    ld [bc], a
    inc b
    inc e
    sbc b
    nop
    inc [hl]
    nop
    ld d, c
    nop
    ld a, b
    nop
    adc [hl]
    nop
    adc [hl]
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    nop
    ld b, e
    ld e, l
    ld h, c
    rst $38
    dec bc
    ld a, $03
    inc b
    dec e
    cp d
    nop
    add hl, bc
    nop
    adc h
    nop
    adc d
    nop
    ld e, c
    nop
    scf
    nop
    ld a, [$96c8]
    nop
    ld b, d
    ld e, e
    adc [hl]
    rst $38
    jr nz, jr_014_56cc

    inc bc
    inc b
    dec e
    and b
    nop
    sub l
    nop
    ld e, d

jr_014_56cc:
    nop
    ld e, b
    nop
    adc d
    nop
    ld d, l
    nop
    ret z

    ld [hl-], a
    ret z

    nop
    add hl, de
    ld l, c
    rst $38
    rst $38
    ccf
    adc [hl]
    inc bc
    inc b
    dec e
    call c, $7800
    nop
    xor h
    nop
    ld e, h
    nop
    add e
    nop
    add h
    nop
    ret z

    ld [hl-], a
    ret z

    nop
    inc b
    ld hl, $ff6a
    ld c, d
    ld [hl], d
    inc bc
    inc bc
    inc e
    ld [hl], l
    nop
    ld [hl], e
    nop
    adc a
    nop
    adc d
    nop
    and l
    nop
    adc h
    nop
    sub [hl]
    ld [hl-], a
    ld h, h
    nop
    dec d
    add hl, de
    ld l, a
    rst $38
    ld e, [hl]
    pop de
    inc bc
    inc bc
    inc e
    ret nz

    nop
    and l
    nop
    adc h
    nop
    ld b, c
    nop
    add a
    nop
    add d
    nop
    ld a, [$fa96]
    nop
    ld b, d
    ld l, c
    ld [hl], l
    rst $38
    ld a, b
    ret nz

    inc bc
    inc b
    ld e, $a0
    nop
    ld a, [hl-]
    nop
    ld [hl], h
    nop
    ld e, d
    nop
    ld a, c
    nop
    ld e, b
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    nop
    ld b, a
    ld l, h
    ld [hl], e
    rst $38
    add h
    db $ed
    inc bc
    inc b
    rra
    and b
    nop
    ld e, d
    nop
    sub h
    nop

jr_014_574a:
    ld a, l
    nop
    ld e, d
    nop
    adc [hl]
    nop
    ret z

    ld [hl-], a
    sub [hl]
    nop
    inc b
    ld l, d
    rst $38
    rst $38
    and a
    ld c, h
    inc b
    inc b
    rra
    ld [hl], h
    nop
    adc [hl]
    nop
    ld h, d
    nop
    or b
    nop
    ld a, d
    nop
    and l
    nop
    sub [hl]
    ld h, h
    ret z

    nop
    dec bc
    inc h
    ld [hl], $ff
    ld [hl], d
    cp l
    inc bc
    inc b
    rra
    adc a
    nop
    ld e, d
    nop
    ld b, c
    nop
    adc h
    nop
    ld e, d
    nop
    adc l
    nop
    ld h, h
    sub [hl]
    ret z

    nop
    ld a, [de]
    inc h
    ld h, $ff
    ld c, $b0
    inc b
    dec b
    jr nz, jr_014_57bc

    ld bc, $003e
    adc $00
    ld h, e
    nop
    ld [hl], e
    nop
    xor d
    nop
    ret z

    sub [hl]
    sub [hl]
    nop
    ld c, [hl]
    ld l, b
    sub d
    rst $38
    ld hl, $03de
    inc b
    inc e
    ld a, b
    nop
    ld e, l
    nop
    cp h
    nop
    ld h, e
    nop
    ld e, l
    nop
    ld e, d
    nop
    ret z

    ld h, h
    sub [hl]
    nop
    inc b
    ld e, b
    ld e, l
    rst $38

jr_014_57bc:
    add hl, sp
    dec bc
    inc b
    inc b
    jr nz, jr_014_574a

    nop
    inc a
    nop
    sbc h
    nop
    ld h, h
    nop
    halt
    ld a, $00
    ld a, [$3200]
    nop
    ld a, $40
    ld b, c
    rst $38
    ld d, d
    rst $10
    inc bc
    inc b
    inc e
    or h
    nop
    push bc
    nop
    and a
    nop
    cp [hl]
    nop
    or h
    nop
    ld h, b
    nop
    sub [hl]
    ld h, h
    ret z

    nop
    add hl, de
    ld [hl], l
    ld a, b
    rst $38
    ld h, l
    ld b, a
    inc b
    inc b
    ld hl, $00d5
    cp c
    nop
    ld l, b
    nop
    ld h, h
    nop
    sbc h
    nop
    cp c
    nop
    ret z

    ret z

    ret z

    nop
    dec c
    inc l
    ld [hl], $ff
    ld a, h
    add b
    inc b
    inc b
    ld hl, $0084
    jr z, jr_014_5810

jr_014_5810:
    adc [hl]
    nop
    ld h, h
    nop
    ld b, h
    nop
    ld a, [hl]
    nop
    sub [hl]
    nop
    ld h, h
    nop
    ld hl, $ffd8
    rst $38
    ld e, b
    nop
    nop
    nop
    ld e, $b0
    inc b
    and b
    nop
    ld h, h
    nop
    adc h
    nop
    ld h, d
    nop
    and b
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    nop
    ld l, [hl]
    sub h
    sub [hl]
    rst $38
    ld e, b
    nop
    nop
    nop
    ld e, $78
    nop
    and b
    nop
    ld h, h
    nop
    adc h
    nop
    ld h, d
    nop
    and b
    nop
    sub [hl]
    ld [hl-], a
    ld a, [$6e00]
    sub h
    sub [hl]
    rst $38
    dec hl
    ld a, b
    ld e, $07
    ld e, $b0
    inc b
    sub [hl]
    nop
    xor d
    nop
    ld a, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ret z

    ld [hl-], a
    ret z

    nop
    ld b, e
    ld e, [hl]
    rst $38
    rst $38
    dec hl
    nop
    nop
    nop
    ld e, $7d
    nop
    sub [hl]
    nop
    xor d
    nop
    sbc e
    nop
    ld d, b
    nop
    ld d, b
    nop
    sub [hl]
    ld [hl-], a
    ret z

    nop
    ld b, e
    ld e, [hl]
    rst $38
    rst $38
    add c
    nop
    nop
    nop
    dec l
    add sp, $03
    ld d, l
    nop
    cp [hl]
    nop
    sub [hl]
    nop
    inc a
    nop
    adc h
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    adc [hl]
    adc a
    rst $38
    rst $38
    add c
    nop
    nop
    nop
    dec l
    and $00
    ld d, l
    nop
    cp [hl]
    nop
    and b
    nop
    inc a
    nop
    adc h
    nop
    sub [hl]
    ret z

    sub [hl]
    nop
    adc [hl]
    adc a
    rst $38
    rst $38
    ld a, e
    and e
    inc b
    inc b
    inc e
    sbc e
    nop
    and l
    nop
    sbc e
    nop
    xor b
    nop
    cp d
    nop
    and d
    nop
    ret z

    ld h, h
    ret z

    nop
    ld e, b
    ld l, c
    ld [hl], e
    rst $38

jr_014_58cf:
    add e
    cp b
    ld b, $05
    ld [hl+], a
    and $00
    ld h, d
    nop
    and $00
    or h
    nop
    ld c, b
    nop
    ld a, [$c800]
    ld [hl-], a
    sub [hl]
    nop
    rlca
    ld b, l
    ld c, e
    rst $38
    and [hl]
    ld e, b
    dec b
    dec b
    ld [hl+], a
    and b
    nop
    and d
    nop
    rlc b
    xor b
    nop
    ld h, h
    nop
    ld b, d
    nop
    ret z

    ld h, h
    ld a, [$6a00]
    ld [hl], e
    add e
    rst $38
    cp h
    cp l
    inc b
    inc b
    jr z, jr_014_58cf

    nop
    call z, $b600
    nop
    or h
    nop
    ld h, [hl]
    nop
    ret z

    nop
    ret z

    ld [hl-], a
    ret z

    nop
    rra
    inc hl
    dec h
    rst $38
    dec d
    add hl, de
    dec b
    inc b
    ld hl, $00a2
    ld l, b
    nop
    call nc, $fa00
    nop
    ld c, b
    nop
    ld l, b
    nop
    sub [hl]
    ld h, h
    ld h, h
    nop
    jr z, jr_014_598b

    rst $38
    rst $38
    ld b, b
    ld [c], a
    inc b
    inc b
    ld hl, $00a0
    ld b, h
    nop
    jp Jump_014_4b00


    nop
    sbc [hl]
    nop
    ld h, h
    nop
    ld a, [$9600]
    nop
    dec sp
    ld d, e
    ld a, h
    rst $38
    ld d, c
    ld hl, sp+$05
    dec b
    ld hl, $00f0
    ld b, a
    nop
    inc b
    ld bc, $006e
    ld l, [hl]
    nop
    ld b, [hl]
    nop
    ret z

    nop
    sub [hl]
    nop
    dec bc
    ld b, l
    ld [hl], a
    rst $38
    ld h, c
    ld [hl], d
    inc b
    inc b
    inc h
    or h
    nop
    ret nz

    nop
    ld [hl], e
    nop
    adc h
    nop
    or h
    nop
    ld b, [hl]
    nop
    ret z

    ld h, h
    ld a, [$2400]
    dec h
    ld h, $ff
    ld a, l
    inc de
    dec b
    dec b
    inc h
    add d
    nop
    ld l, h
    nop
    and b
    nop
    and $00

jr_014_598b:
    scf
    nop
    ld c, b
    nop
    ret z

    ld h, h
    ret z

    nop
    rra
    ld c, b
    ld d, e
    rst $38
    adc c
    or e
    inc b
    dec b
    ld e, $96
    nop
    ld b, a
    nop
    jp z, $a200

    nop
    jr c, jr_014_59a6

jr_014_59a6:
    cp d
    nop
    ret z

    ld [hl-], a
    ret z

    nop
    inc b
    ld h, c
    rst $38
    rst $38
    and d
    add sp, $04
    dec b
    dec h
    reti


    nop
    add [hl]
    nop
    jp nc, $d200

    nop
    halt
    cp c
    nop
    ld a, [$fa32]
    nop
    ld h, c
    ld [hl], c
    add e
    rst $38
    or b
    ccf
    dec b
    inc b
    dec h
    xor h
    nop
    add d
    nop
    and a
    nop
    and $00
    cp [hl]
    nop
    ld h, h
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    nop
    dec [hl]
    ld h, c
    rst $38
    rst $38
    inc c
    and h
    dec b
    dec b
    ld h, $fa
    nop
    ld c, c
    nop
    call $c000
    nop
    ret z

    nop
    ld h, h
    nop
    ld a, [$c8c8]
    nop
    ld d, a
    ld e, d
    sub b
    rst $38
    add hl, de
    ld b, e
    dec b
    inc b
    ld h, $d2
    nop
    ld c, c
    nop
    or [hl]
    nop
    ld l, [hl]
    nop
    ld l, c
    nop
    ld h, h
    nop
    ld a, [$3264]
    nop
    ld b, b
    ld c, d
    rst $38
    rst $38
    ld a, [hl-]
    jr jr_014_5a1d

    dec b
    ld h, $e6
    nop
    ld [de], a
    nop

jr_014_5a1d:
    dec e
    ld bc, $0052
    ret z

    nop
    ld d, b
    nop
    ld a, [$9600]
    nop
    dec sp
    ld d, l
    ld a, h
    rst $38
    ld b, a
    inc l
    ld b, $04
    daa
    pop bc
    nop
    ld l, c
    nop
    and l
    nop
    add d
    nop
    and b
    nop
    call $c800
    ld h, h
    sub [hl]
    nop
    ld d, $2c
    ld h, c
    rst $38
    ld e, e
    and b
    dec b
    inc b
    inc h
    or h
    nop
    ret z

    nop
    ld d, e
    nop
    add b
    nop
    sbc e
    nop
    sub e
    nop
    ld a, [$c896]
    nop
    ld bc, $6b35
    rst $38
    ld a, [hl]
    ld h, h
    dec b
    ld b, $26
    jp hl


    nop
    ld l, c
    nop
    and a
    nop
    ld [hl], b
    nop
    jp nc, $7800

    nop
    ret z

    nop
    ret z

    nop
    ld h, a
    ld l, c
    adc e
    rst $38
    sbc c
    ret z

    ld [hl-], a
    rlca
    inc hl
    ld b, b
    ld b, $af
    nop
    inc b
    ld bc, $00a0
    sub [hl]
    nop
    sub c
    nop
    ld a, [$fafa]
    nop
    ld [bc], a
    ld d, c
    adc e
    rst $38
    sbc c
    nop
    nop
    nop
    inc hl
    ret z

    nop
    xor a
    nop
    inc b
    ld bc, $00c8
    sub [hl]
    nop
    sub c
    nop
    ld a, [$fafa]
    nop
    ld [bc], a
    ld d, c
    adc e
    rst $38
    xor l
    db $e4
    ld a, [hl-]
    dec b
    inc hl
    add sp, $03
    ld a, [$a000]
    nop
    and b
    nop
    ret z

    nop
    xor d
    nop
    ld a, [$fa96]
    nop
    ld [bc], a
    ld c, $54
    rst $38
    xor l
    nop
    nop
    nop
    inc hl
    and b
    nop
    ld a, [$a000]
    nop
    or h
    nop
    ret z

    nop
    xor d
    nop
    ld a, [$fafa]
    nop
    ld [bc], a
    ld c, $54
    rst $38
    sub a
    nop
    nop
    rlca
    ld e, $dc
    nop
    ld [hl], e
    nop
    call $8c00
    nop
    ld b, b
    ld bc, $00c8
    ld a, [$c864]
    nop
    rla
    ld b, h
    ld d, a
    rst $38
    sbc b
    nop
    nop
    rlca
    inc e
    xor a
    nop
    ld h, d
    nop
    xor d
    nop
    call c, $8400
    nop
    sub d
    nop
    ld a, [$9632]
    nop
    ld b, h
    ld b, l
    ld c, c
    rst $38
    rrca
    ld l, b
    ld b, d
    dec b
    ld h, $d0
    rlca
    ld c, e
    nop
    ret z

    nop
    add d
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, [$c896]
    nop
    inc h
    inc l
    rst $38
    rst $38
    rrca
    nop
    nop
    nop
    ld h, $e6
    nop
    ld c, e
    nop
    ret z

    nop
    and b
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    sub [hl]
    ld a, [$00c8]
    inc h
    inc l
    ld sp, $60ff
    inc l
    ld bc, $0a05
    dec l
    nop
    ld de, $1900
    nop
    rla
    nop
    jr z, jr_014_5b4f

jr_014_5b4f:
    inc h
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, d
    sub d
    rst $38
    ld [hl], h
    ld a, [$0500]
    ld a, [bc]
    rla
    nop
    ld de, $1700
    nop
    ld d, $00
    inc d
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld [hl], b
    ld a, c
    rst $38
    adc l
    ld a, [hl-]
    rlca
    dec b
    jr z, jr_014_5b84

    ld bc, $0082
    jp z, $f600

    nop
    jp nc, $a000

    nop
    sub [hl]

jr_014_5b84:
    sub [hl]
    ret z

    nop
    dec bc
    ld l, $46
    rst $38
    sbc [hl]
    sub b
    ld b, $04
    ld hl, $009b
    sub c
    nop
    and a
    nop
    add h
    nop
    db $f4
    nop
    jp nc, $9600

    ld [hl-], a
    sub [hl]
    nop
    ld a, $45
    ld e, d
    rst $38
    xor a
    ret nc

    rlca
    dec b
    ld h, $8a
    nop
    ld a, [hl]
    nop
    jp c, $f600

    nop
    or h
    nop
    ldh a, [rP1]
    ld h, h
    nop
    ld [hl-], a
    nop
    inc b
    rla
    add hl, de
    rst $38
    dec de
    ld a, e
    rlca
    inc b
    add hl, hl
    or $00
    and l
    nop
    cp [hl]
    nop
    push de
    nop
    add b
    nop
    ld [hl], e
    nop
    ld a, [$fac8]
    nop
    ld c, [hl]
    ld d, a
    sub b
    rst $38
    ld [hl], $50
    rlca
    dec b
    add hl, hl
    inc d
    ld bc, $0050
    sub h
    nop
    ld e, d
    nop
    jp c, $9a00

    nop
    ld a, [$c864]
    nop
    ld [hl], c
    ld a, a
    sub h
    rst $38
    ld d, e
    dec de
    ld [$2905], sp
    cp [hl]
    nop
    add d
    nop
    nop
    ld bc, $00e0
    and b
    nop
    and b
    nop
    ret z

    ld h, h
    nop
    nop
    inc b
    ld l, $ff
    rst $38
    ld l, d
    call z, $0607
    ld a, [hl+]
    ret nz

    nop
    pop hl
    nop
    or b
    nop
    ld e, d
    nop
    ld [hl], e
    nop
    ld l, [hl]
    nop
    ld a, [$c800]
    nop
    ld c, c
    ld d, [hl]
    ld l, d
    rst $38
    sub e
    ld d, d
    ld [$2a05], sp
    jr nc, jr_014_5c29

    ld d, d

jr_014_5c29:
    nop
    inc b
    ld bc, $0136
    ld [c], a
    nop
    ld [c], a
    nop
    ld a, [$c8c8]
    nop
    ld b, h
    ld c, c
    adc c
    rst $38
    and b
    rst $08
    rlca
    inc b
    inc e
    cp $00
    add a
    nop
    inc b
    ld bc, $00de
    ld d, l
    nop
    adc h
    nop
    ret z

    ld h, h
    nop
    nop
    ld h, $2a
    rst $38
    rst $38
    or l
    adc b
    ld [$2605], sp
    inc e
    ld bc, $005c
    sub c
    nop
    call z, $e800
    nop
    xor d
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    nop
    jr z, jr_014_5c93

    rst $38
    rst $38
    daa
    xor $07
    inc b
    dec hl
    inc e
    ld bc, $008a
    and $00
    or c
    nop
    xor d
    nop
    adc h
    nop
    ld a, [$9600]
    nop
    ld b, d
    ld d, l
    ld l, l
    rst $38
    dec sp
    inc e
    rlca
    dec b
    ld h, $1f
    ld bc, $008c
    ld [$e601], sp
    nop
    ld h, h

jr_014_5c93:
    nop
    adc h
    nop
    ld a, [$c896]
    nop
    dec c
    ld b, a
    ld a, l
    rst $38
    ld h, h
    ld [$0406], a
    inc l
    or b
    nop
    ld a, d
    nop
    ld a, h
    nop
    ldh a, [rP1]
    inc a
    ld bc, $0096
    ret z

    ld h, h
    ret z

    nop
    ld [hl], c
    ld [hl], a
    ld a, b
    rst $38
    sub b
    db $10
    add hl, bc
    inc b

jr_014_5cbb:
    ld hl, $0120
    adc h
    nop
    db $eb
    nop
    db $eb
    nop
    ld l, b
    nop
    and $00
    ld a, [$6400]
    nop
    ccf
    ld c, b
    ld d, a
    rst $38
    sbc h
    call nc, Call_000_0509
    dec hl
    and h
    ld bc, $0057
    ld [bc], a
    ld bc, $0050
    add a
    nop
    and $00
    ld a, [$9664]
    nop
    dec sp
    ld b, a
    ld h, c
    rst $38
    cp b
    ld [hl], b
    ld [$2104], sp
    call z, $b400
    nop
    call c, RST_00
    ld bc, $0096
    xor d
    nop
    ret z

    ld [hl-], a
    ld a, [$1800]
    add hl, de
    dec e
    rst $38
    rra
    inc l
    ld a, [bc]
    ld b, $21
    adc $00
    ld l, [hl]

jr_014_5d0a:
    nop
    db $eb
    nop
    ld [hl], e
    nop
    add hl, bc
    ld bc, $006e
    ld a, [$9664]
    nop
    ld b, [hl]
    ld c, h
    ld h, a
    rst $38
    scf
    ret z

    ld [$2b05], sp
    inc l
    ld bc, $0078
    ld [bc], a
    ld bc, $00c8
    ld a, b
    nop
    or h
    nop
    ld h, h
    ld a, [$00fa]
    jr z, jr_014_5cbb

    adc [hl]
    rst $38
    ld b, e
    ld d, h
    ld d, d
    dec b
    jr z, jr_014_5d0a

    rlca
    add d

jr_014_5d3c:
    nop
    pop hl
    nop
    ld a, b
    nop
    ld d, b
    nop
    jp nc, $fa00

    nop
    ret z

    nop
    ld d, $17
    ld d, [hl]
    rst $38
    ld b, e
    nop
    nop
    nop
    jr z, @-$54

    nop
    add d
    nop
    push af
    nop
    sub [hl]
    nop
    ld d, b
    nop
    ld a, [$fa00]
    nop
    ld a, [$1600]
    rla
    ld d, [hl]
    rst $38
    sub h
    ret c

    ld e, c
    rlca
    jr z, jr_014_5d3c

    rlca
    sub b

jr_014_5d6e:
    ld bc, $00e6
    ldh a, [rP1]
    ld_long a, $ff00
    nop
    ret z

    ld h, h
    ret z

    nop
    ld [$6254], sp
    rst $38
    sub h
    nop
    nop
    nop
    jr z, jr_014_5db1

    ld bc, $0190
    ret z

    nop
    inc l
    ld bc, $00fa
    rst $38
    nop
    ld a, [$c864]
    nop
    ld [$6254], sp
    rst $38
    add hl, hl
    ld h, b
    ld l, l
    rlca
    jr z, jr_014_5d6e

    rlca
    ld l, [hl]
    nop
    inc l
    ld bc, $00d2
    add d
    nop
    add d
    nop
    ld a, [$fa00]
    nop
    ld b, h
    ld d, c
    ld e, [hl]
    rst $38

jr_014_5db1:
    add hl, hl
    nop
    nop
    nop
    jr z, jr_014_5ded

    ld bc, $006e
    inc l
    ld bc, HeaderLogo
    add d
    nop
    add d
    nop
    ld a, [$fa00]
    nop
    ld b, h
    ld d, c
    ld e, [hl]
    rst $38
    ld de, $fde8
    ld b, $26
    ld [$ea00], sp
    ld bc, $005f
    ld [bc], a
    inc bc
    rst $38
    ld bc, $00ff
    ld a, [$fafa]
    nop
    dec b
    ld [$ffdb], sp
    ld [hl-], a
    or b
    add hl, bc
    dec b
    ld h, $68
    ld bc, $005a
    inc l

jr_014_5ded:
    ld bc, $00b9
    sub [hl]
    nop
    ld e, d
    nop
    ld a, [$9600]
    nop
    dec a
    ccf
    ld a, l
    rst $38
    cp d
    nop
    ld a, [bc]
    dec b
    ld h, $5e
    ld bc, $00a5
    ld a, [$4000]
    ld bc, $0118
    or h
    nop
    ld a, [$c864]
    nop
    ld [$ff10], sp
    rst $38
    inc h
    adc h
    ld a, [bc]
    dec b
    inc e
    ld a, [$1700]
    nop
    ld c, $01
    ld d, h
    ld bc, $005a
    ld [hl], c
    nop
    ld a, [$9696]
    nop
    dec a
    ld a, $5b
    rst $38
    ld b, c
    ldh a, [$0a]
    dec b
    cpl
    ld c, $01
    sub [hl]
    nop
    ld c, d
    ld bc, $00d2
    cp [hl]
    nop
    add d
    nop
    ret z

    ld h, h
    sub [hl]
    nop
    dec a
    ld [hl], d
    ld a, l
    rst $38
    xor h
    jp nc, Jump_000_050a

    cpl
    or h
    nop
    xor a
    nop
    ld [hl], $01
    inc b
    ld bc, $0091
    or h
    nop
    ld a, [$fa32]
    nop
    dec e
    ld c, e
    ld d, c
    rst $38
    cp c
    jr nz, jr_014_5e70

    ld b, $2b
    ld c, d
    ld bc, $0069
    jr jr_014_5e6c

    inc b

jr_014_5e6c:
    ld bc, $00fa
    add d

jr_014_5e70:
    nop
    sub [hl]
    ld [hl-], a
    ld h, h
    nop
    ccf
    ld e, e
    ld [hl], d
    rst $38
    ld e, $4e
    inc c
    dec b
    ld hl, $00dc
    jr jr_014_5e82

jr_014_5e82:
    ld c, a

jr_014_5e83:
    ld bc, $0082
    ld e, d
    nop
    ld e, $00
    ld a, [$9600]
    nop
    ccf
    ld b, b
    ld a, b
    rst $38
    ld l, e
    ld b, b
    dec bc
    dec b
    jr nc, jr_014_5e83

    nop
    cp c
    nop
    ld a, [$8c00]
    nop
    adc h
    nop
    and $00
    ret z

    ld h, h
    sub [hl]
    nop
    rla
    ld d, e
    ld d, a
    rst $38
    adc [hl]
    ret nz

    dec c
    ld b, $21
    ld c, $01
    cp [hl]
    nop
    inc b
    ld bc, $0096
    cp [hl]
    nop
    ldh a, [rP1]
    ld a, [$fa64]
    nop
    ld [$0e0b], sp
    rst $38
    xor c
    xor [hl]
    dec bc
    dec b
    jr nc, @+$6a

    ld bc, $00f0
    ld d, h
    ld bc, $0118
    jr jr_014_5ed4

    rst $10

jr_014_5ed4:
    nop
    ld a, [$c864]
    nop
    inc de
    cpl
    rst $38
    rst $38
    cp l
    call nc, $050d
    ld h, $2c
    ld bc, $002d
    ld d, h
    ld bc, $00e6
    ld l, b
    ld bc, $00d2
    ld a, [$c832]
    nop
    ld d, c
    ld d, l
    ld d, a
    rst $38
    add $c4
    add hl, bc
    inc b
    jr nc, @+$38

    ld bc, $00be
    xor a
    nop
    ld a, [$1900]
    nop
    adc h
    nop
    ret z

    ld h, h
    sub [hl]
    nop
    inc d
    ld [hl-], a
    sub e
    rst $38
    ld [hl+], a
    sbc b
    dec c
    dec b
    jr nc, jr_014_5f7d

    ld bc, $0118
    and $00
    ld b, b
    ld bc, $00c8
    ld a, [$fa00]
    nop
    ret z

    nop
    dec bc
    jr jr_014_5f94

    rst $38
    ld a, $30
    inc c
    dec b
    jr nc, @-$4a

    nop
    ld c, d
    ld bc, $00b4
    sub [hl]
    nop
    ld [hl+], a
    ld bc, $00ff
    ld a, [$fac8]
    nop
    dec l
    ld sp, $ff33
    dec h
    db $fc
    dec c
    dec b
    inc sp
    ld [hl], d
    ld bc, $0082
    inc b
    ld bc, $00d2
    xor d
    nop
    jp nc, $fa00

    ret z

    ld a, [$4700]
    ld h, d
    adc a
    rst $38
    ld d, [hl]
    ld hl, sp+$0c
    dec b
    jr nc, jr_014_5f78

    ld bc, $0078
    jp nc, $c800

    nop
    ldh a, [rP1]
    rst $38
    nop
    ld a, [$9696]
    nop
    ld b, l
    ld e, d
    rst $38
    rst $38
    ld d, a
    inc b
    inc c
    ld b, $33

jr_014_5f78:
    db $f4
    ld bc, $00c8
    xor a

jr_014_5f7d:
    nop
    ld a, [$f000]
    nop
    and $00
    ret z

    ld h, h
    sub [hl]
    nop
    ld a, [hl+]
    add e
    rst $38
    rst $38
    sbc d
    jr @+$7b

    rlca
    dec l
    cp b
    dec bc
    ld c, d

jr_014_5f94:
    ld bc, $01a4
    ld a, h
    ld bc, $0172
    ld a, [bc]
    nop
    ret z

    nop
    ld h, h
    nop
    ld c, c
    ld c, e
    ld e, c
    rst $38
    sbc d
    nop
    nop
    nop
    dec l
    call c, Call_014_4a00
    ld bc, $017c
    ld a, [$be00]
    nop
    rst $38
    nop
    ret z

    nop
    ret z

    nop
    ld c, c
    ld c, e
    ld e, c
    rst $38
    ret z

    sub b
    ld h, l
    rlca
    jr nc, @-$5e

    rrca
    ld h, $02
    ld d, h
    ld bc, $0140
    and $00
    rst $38
    nop
    ld a, [$c8c8]
    nop
    dec b
    sub e
    push de
    rst $38

jr_014_5fd7:
    ret z

    nop
    nop
    nop
    jr nc, jr_014_5fd7

    nop
    ld h, $02
    ld d, h
    ld bc, HeaderLogo
    and $00
    rst $38
    nop
    ld h, h
    ret z

    ld a, [$0500]
    sub e
    push de
    rst $38
    jp z, $9470

    rlca
    ld [hl-], a
    and b
    rrca
    ld h, $02
    inc b
    ld bc, $0190
    and $00
    rst $38

Call_014_6000:
    nop
    ld a, [$fa32]
    nop
    dec b
    ld [$ff87], sp
    jp z, RST_00

    nop
    ld [hl-], a
    cp [hl]
    nop
    ld h, $02
    inc b
    ld bc, $0154
    and $00
    rst $38
    nop
    sub [hl]
    ld [hl-], a
    ld a, [$0500]
    ld [$ff87], sp
    bit 6, b
    sub h
    rlca
    ld [hl-], a
    ld [hl], b
    rla
    rst $20
    inc bc
    ld [de], a
    ld [bc], a
    ld d, h
    ld bc, $00e6
    ld a, [bc]
    nop
    ret z

    nop
    ret z

    nop
    ld e, a
    ld h, e
    ld h, h
    rst $38
    rlc b
    nop
    nop
    ld [hl-], a
    ld [hl], d
    ld bc, $0226
    ld [hl], d
    ld bc, $0154
    and $00
    rst $38
    nop
    ret z

    nop
    ret z

    nop
    ld e, a
    ld h, l
    add b
    rst $38
    call z, $a7f8
    rlca
    ld [hl-], a
    and b
    rrca
    rst $20
    inc bc
    sbc d
    ld bc, $0226
    and $00
    ld a, [bc]
    nop
    ld a, [$9600]
    nop
    ld [$645b], sp
    rst $38
    call z, RST_00
    nop
    ld [hl-], a
    ld a, [$2600]
    ld [bc], a
    inc b
    ld bc, HeaderLogo
    and $00
    rst $38
    nop
    ld a, [$6400]
    nop
    add hl, de
    ld h, h
    ld h, l
    rst $38
    call $b014
    rlca
    scf
    sub h
    ld de, $03e7
    cp b
    ld bc, $0190
    inc b
    ld bc, $00ff
    ld a, [$c800]
    nop
    ld h, e
    ld h, l
    add b
    rst $38
    call RST_00
    nop
    scf
    sub b
    ld bc, $0258
    and h
    ld bc, $015e
    inc b
    ld bc, $00ff
    ld a, [$c800]
    nop
    ld d, h
    ld h, e
    add b
    rst $38
    adc $a4
    sbc b
    rlca
    scf
    ld [hl], b
    rla
    ld e, b
    ld [bc], a
    cp $01
    jp nz, $0401

    ld bc, $0014
    ld a, [$c832]
    nop
    ld d, c
    ld e, a
    ld h, h
    rst $38
    adc $00
    nop
    nop
    scf
    ld l, b
    ld bc, $0258
    and h
    ld bc, $015e
    inc b
    ld bc, $00ff
    ld h, h
    ld a, [$00c8]
    ld d, c
    ld h, e
    add d
    rst $38
    rst $08
    ld e, h
    and h
    rlca
    inc a
    ret c

    ld c, $bc
    ld [bc], a
    jr nc, @+$04

    ld [$c202], sp
    ld bc, $00ff
    ld a, [$fa00]
    nop
    ld d, a
    add b
    reti


    rst $38
    rst $08
    nop
    nop
    nop
    inc a
    ld e, b
    ld [bc], a
    cp h
    ld [bc], a
    call z, $c201
    ld bc, $012c
    rst $38
    nop
    ld a, [$fa00]
    nop
    ld d, h
    ld e, a
    add b
    rst $38
    ret nc

    call z, Call_000_07bb
    inc a
    adc b
    inc de
    rst $20
    inc bc
    ld [$e002], sp
    ld bc, $012c
    ld a, [bc]
    nop
    ld a, [$c800]
    nop
    ld [bc], a
    ld [$ff11], sp
    ret nc

    nop
    nop
    nop
    inc a
    ld a, h
    ld bc, $02bc
    call z, Call_014_7c01
    ld bc, $012c
    rst $38
    nop
    ld a, [$c800]
    nop
    ld [bc], a
    ld [$ff0e], sp
    jp nc, $b014

    rlca
    inc a
    adc b
    inc de
    rst $20
    inc bc
    ld [de], a
    ld [bc], a
    jp nz, $2c01

    ld bc, $000a
    ld a, [$9664]
    nop
    ld e, a
    ld h, e
    ld l, l
    rst $38
    jp nc, RST_00

    nop
    inc a
    ld a, h
    ld bc, $02bc
    call z, $c201
    ld bc, $012c
    rst $38
    nop
    ld [hl-], a
    ld h, h
    sub [hl]
    nop
    ld e, a
    ld h, e
    ld l, d
    rst $38
    db $d3
    ld d, b
    jp $3a07


    jr z, jr_014_61aa

    cp h
    ld [bc], a
    call z, $0801
    ld [bc], a
    jp nz, $ff01

    nop
    ld a, [$c800]
    nop
    ld h, h
    ld h, l
    add [hl]
    rst $38
    db $d3
    nop
    nop
    nop
    ld a, [hl-]
    ld a, h
    ld bc, $02bc
    call z, Call_014_7c01
    ld bc, $012c
    rst $38
    nop

jr_014_61aa:
    ld a, [$fa00]
    nop
    ld [$6d64], sp
    rst $38
    sub $e8
    db $fd
    nop
    ld b, [hl]
    jr z, jr_014_61dc

    ld d, d
    inc bc
    inc c
    inc bc
    ld [$8602], sp
    ld bc, $000a
    ld a, [$fa96]
    nop
    ld d, b
    ld e, a
    ld h, e
    rst $38
    sub $00
    nop
    nop
    ld b, [hl]
    rst $20
    inc bc
    ld d, d
    inc bc
    rst $20
    inc bc
    ld [$8602], sp
    ld bc, $00ff

jr_014_61dc:
    ld a, [$fafa]
    nop
    ld d, b
    ld e, a
    ld h, e
    rst $38
    ld l, l
    nop
    nop
    nop
    inc d
    sub [hl]
    nop
    call z, $a001
    nop
    call Call_014_7200
    ld bc, $00ff
    nop
    ld a, [$00fa]
    add hl, sp
    ld a, [hl]
    ld a, a
    rst $38
    ld c, [hl]
    nop
    nop
    rlca
    ld bc, $0008
    inc d
    nop
    inc c
    nop
    inc b
    nop
    inc c
    nop
    ld c, $00
    ret z

    nop
    nop
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    nop
    nop
    rlca
    ld bc, $000c
    nop
    nop
    ld de, $0400
    nop
    inc b
    nop
    inc bc
    nop
    sub [hl]
    nop
    ld [hl-], a
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    nop
    nop
    rlca
    ld bc, $0008
    inc d
    nop
    dec bc
    nop
    inc bc
    nop
    ld a, [bc]
    nop
    ld c, $00
    ret z

    nop
    nop
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    rlca
    ld bc, $0008
    nop
    nop
    ld [$0500], sp
    nop
    rlca
    nop
    ld bc, $c800
    ld [hl-], a
    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld h, d
    nop
    nop
    rlca
    ld [bc], a
    stop
    ld b, $00
    inc de
    nop
    rlca
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld h, h
    ld [hl-], a
    ret z

    ld h, h
    dec d
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    rlca
    ld bc, $0007
    nop
    nop
    ld [$0500], sp
    nop
    ld b, $00
    ld bc, $c800
    ld [hl-], a
    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    nop
    nop
    rlca
    rlca
    stop
    ld [$0d00], sp
    nop
    inc c
    nop
    ld de, $1000
    nop
    ret z

    nop
    ret z

    ret z

    ld a, c
    rst $38
    rst $38
    rst $38
    and e
    nop
    nop
    rlca
    dec b
    inc d
    nop
    ld b, $00
    inc d
    nop
    ld b, $00
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld h, h
    nop
    nop
    ld [hl-], a
    ld l, h
    ld a, c
    rst $38
    rst $38
    sbc e
    nop
    nop
    rlca
    rlca
    ld c, $00
    ld [$0f00], sp
    nop
    add hl, bc
    nop
    dec bc
    nop
    dec c
    nop
    ret z

    nop
    ret z

    ret z

    ld a, c
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    ld [$001a], sp
    dec bc
    nop
    ld e, $00
    ld de, $1e00
    nop
    dec bc
    nop
    ret z

    nop
    ld h, h
    sub [hl]
    ld d, d
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    add hl, bc
    inc d
    nop
    inc c
    nop
    ld a, [de]
    nop
    rrca
    nop
    ld e, $00
    jr nz, jr_014_6308

jr_014_6308:
    ld [hl-], a
    nop
    sub [hl]
    nop
    ld a, c
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    rlca
    ld [$0018], sp
    rrca
    nop
    inc e
    nop
    ld c, $00
    jr nz, jr_014_631f

jr_014_631f:
    dec bc
    nop
    ret z

    nop
    ret z

    sub [hl]
    ld a, a
    rst $38
    rst $38
    rst $38
    jp RST_00


    rlca
    inc c
    ld h, $00
    inc d
    nop
    ld d, $00
    ld [de], a
    nop
    jr jr_014_6338

jr_014_6338:
    inc l
    nop
    ld h, h
    nop
    ld a, [$7532]
    rst $38
    rst $38
    rst $38
    ld l, $00
    nop
    rlca
    ld a, [bc]
    ld a, [hl+]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    inc d
    nop
    jr z, jr_014_6351

jr_014_6351:
    ld d, $00
    sub [hl]
    nop
    ld h, h
    ld h, h
    dec d
    inc a
    ld b, c
    rst $38
    jp RST_00


    rlca
    inc c
    jr z, jr_014_6362

jr_014_6362:
    inc l
    nop
    inc d
    nop
    ld d, $00
    ld d, $00
    inc l
    nop
    ld [hl-], a
    nop
    ld a, [$7732]
    rst $38
    rst $38
    rst $38
    sbc l
    nop
    nop
    rlca
    inc c
    ld c, e
    nop
    ld a, [bc]
    nop
    inc e
    nop
    jr jr_014_6381

jr_014_6381:
    ld e, $00
    inc d
    nop
    ret z

    nop
    sub [hl]
    sub [hl]
    inc e
    jr nz, @+$01

    rst $38
    ld c, h
    nop
    nop
    rlca
    inc c
    ld [hl-], a
    nop
    inc c
    nop
    ld e, $00
    jr jr_014_639a

jr_014_639a:
    inc a
    nop
    ld d, b
    nop
    ret z

    nop
    ld h, h
    sub [hl]
    ld b, d
    adc d
    rst $38
    rst $38
    inc sp
    nop
    nop
    rlca
    inc c
    ld a, [hl-]
    nop
    ld [$2600], sp
    nop
    ld [de], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    sub [hl]
    nop
    ld h, h
    ld [hl-], a
    ld b, c
    ld l, [hl]
    rst $38
    rst $38
    ld h, $00
    nop
    rlca
    ld [$003c], sp
    ld [$1400], sp
    nop
    ld e, $00
    rrca
    nop
    add hl, bc
    nop
    ret z

    nop
    ld h, h
    ld h, h
    rla
    ld h, a
    push de
    rst $38
    inc bc
    nop
    nop
    rlca
    inc c
    ld b, [hl]
    nop
    ld [$1e00], sp
    nop
    ld a, [de]
    nop
    ld sp, $2e00
    nop
    ld h, h
    nop
    ld a, [$1cc8]
    ld l, c
    ld l, d
    rst $38
    ld a, [de]
    nop
    nop
    rlca
    inc c
    ld [hl-], a
    nop
    ld c, $00
    inc hl
    nop
    ld e, $00
    ld a, [de]
    nop

Jump_014_6400:
    rla
    nop
    sub [hl]
    nop
    ld [hl-], a
    nop
    ld h, a
    ld l, h
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    ld c, $28
    nop
    stop
    ld e, $00
    ld a, [de]
    nop
    ld h, b
    nop
    inc [hl]
    nop
    ld h, h
    nop
    ret z

    sub [hl]
    ld b, e
    ld e, h
    rst $38
    rst $38
    inc e
    nop
    nop
    rlca
    rrca
    ld b, c
    nop
    inc d
    nop
    dec l
    nop
    jr z, jr_014_6430

jr_014_6430:
    ld e, $00
    ld a, [de]
    nop
    ld a, [$0000]
    ld a, [$5c44]
    rst $38
    rst $38
    jr jr_014_643e

jr_014_643e:
    nop
    rlca
    ld c, $28
    nop
    dec d
    nop
    add hl, de
    nop
    ld e, $00
    inc sp
    nop
    dec de
    nop
    sub [hl]
    nop
    ld h, h
    ld [hl-], a
    jr jr_014_64bd

    rst $38
    rst $38
    inc b
    nop
    nop
    rlca
    db $10
    dec l
    nop
    inc d
    nop
    ld e, $00
    inc a
    nop
    ld l, [hl]
    nop
    inc a
    nop
    sub [hl]
    ld h, h
    nop
    sub [hl]
    inc c
    rst $38
    rst $38
    rst $38
    ld a, c
    nop
    nop
    rlca
    inc d
    ld d, b
    nop
    dec de
    nop
    jr z, jr_014_6479

jr_014_6479:
    ld c, b
    nop
    jr z, jr_014_647d

jr_014_647d:
    ld b, h
    nop
    ld a, [$6400]
    ld [hl-], a
    ld e, $25
    dec sp
    rst $38
    inc b
    nop
    nop
    rlca
    db $10
    jr z, jr_014_648e

jr_014_648e:
    inc d
    nop
    jr nz, jr_014_6492

jr_014_6492:
    scf
    nop
    ld l, [hl]
    nop
    inc a
    nop
    sub [hl]
    ld [hl-], a
    nop
    sub [hl]
    ld d, d
    rst $38
    rst $38
    rst $38
    ld sp, $0000
    rlca
    ld de, $0050
    rra
    nop
    jr nc, jr_014_64ab

jr_014_64ab:
    ld d, d
    nop
    add hl, bc
    nop
    ld a, $00
    sub [hl]
    nop
    ret z

    ld h, h
    ld e, $56
    rst $38
    rst $38
    ld c, c
    nop
    nop
    rlca

jr_014_64bd:
    inc de
    ld [hl-], a
    nop
    jr c, jr_014_64c2

jr_014_64c2:
    scf
    nop
    ld a, [hl+]
    nop
    adc [hl]
    nop
    ld a, b
    nop
    ld h, h
    ld [hl-], a
    ld h, h
    ld a, [$4a23]
    sub l
    rst $38
    ld e, d
    nop
    nop
    rlca
    inc d
    ld h, h
    nop
    ld h, h
    nop
    inc [hl]
    nop
    ld [hl-], a
    nop
    add a
    nop
    ld e, e
    nop
    ret z

    nop
    ld a, [$1c64]
    jr nz, jr_014_651e

    rst $38
    adc h
    nop
    nop
    rlca
    inc d
    ld b, [hl]
    nop
    jr nc, jr_014_64f4

jr_014_64f4:
    jr z, jr_014_64f6

jr_014_64f6:
    ld h, b
    nop
    jr nc, jr_014_64fa

jr_014_64fa:
    inc l
    nop
    ld h, h
    nop
    ld h, h
    ld a, [$1c18]
    ret c

    rst $38
    inc a
    nop
    nop
    rlca
    dec d
    ld h, h
    nop
    ld h, $00
    dec a
    nop
    dec l
    nop
    ld [hl], $00
    jr nc, jr_014_6515

jr_014_6515:
    ld a, [$0000]
    ret z

    ld b, c
    ld c, e
    ld c, l
    rst $38
    adc h

jr_014_651e:
    nop
    nop
    rlca
    inc d
    ld b, [hl]
    nop
    ld b, h
    nop
    inc l
    nop
    ld e, d
    nop
    jr nc, jr_014_652c

jr_014_652c:
    inc l
    nop
    ld h, h
    nop
    ld h, h
    ld a, [$1c18]
    ret c

    rst $38
    ld b, h
    nop
    nop
    rlca
    inc d
    ld h, h
    nop
    inc e
    nop
    ld b, c
    nop
    inc a
    nop
    ld d, b
    nop
    dec l
    nop
    ret z

    ld [hl-], a
    ret z

    ld a, [$5546]
    ld a, e
    rst $38
    or [hl]
    nop
    nop
    rlca
    dec de
    ld l, [hl]
    nop
    ld h, $00
    ld d, b
    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    ld c, a
    nop
    ld a, [$96fa]
    ret z

    dec hl
    ld b, b
    ld c, b
    rst $38
    ld b, h
    nop
    nop
    rlca
    inc d
    ld h, h
    nop
    inc e
    nop
    ld c, b
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    dec l
    nop
    ld a, [$c832]
    ld a, [$5546]
    ld a, e
    rst $38
    or h
    nop
    nop
    rlca
    jr jr_014_65d7

    nop
    ld a, [de]
    nop
    ld b, [hl]
    nop
    ld d, e
    nop
    ld [hl-], a
    nop
    ccf
    nop
    sub [hl]
    ld h, h
    ld h, h
    ld a, [$4214]
    sub $ff
    ld d, b
    nop
    nop
    rlca
    rla
    ld h, h
    nop
    inc l
    nop
    ld h, h
    nop
    ld a, b
    nop
    ld e, d
    nop
    ld d, d
    nop
    ld a, [$3232]
    ld h, h
    dec h
    ld d, a
    rst $10
    rst $38
    or h
    nop
    nop
    rlca
    jr jr_014_6609

    nop
    ld l, $00
    ld c, e
    nop
    ld d, e
    nop
    ld [hl-], a
    nop
    ccf
    nop
    sub [hl]
    ld h, h
    ld h, h
    ld a, [$4214]
    sub $ff
    add hl, bc
    nop
    nop
    rlca
    ld d, $50
    nop
    ld [hl-], a
    nop
    stop

jr_014_65d7:
    ld d, b
    nop
    dec h
    nop
    ld a, [$c800]
    ld a, [$c864]
    dec hl
    rst $38
    rst $38
    rst $38
    or [hl]
    nop
    nop
    rlca
    dec de
    or h
    nop
    jr nc, jr_014_65ee

jr_014_65ee:
    sub [hl]
    nop
    ld a, b
    nop
    ld [hl-], a
    nop
    ld c, a
    nop
    ld a, [$9632]
    ret z

    dec hl
    ld b, b
    ld c, b
    rst $38

jr_014_65fe:
    add hl, bc
    nop
    nop
    rlca
    ld d, $5a
    nop
    ld [hl-], a
    nop
    stop

jr_014_6609:
    ld d, b
    nop
    dec h
    nop
    ld a, [$c800]
    ld a, [$c864]
    dec hl
    rst $38
    rst $38
    rst $38
    rlca
    nop
    nop
    rlca
    dec de
    ldh a, [rP1]
    daa
    nop
    ld a, d
    nop
    ld h, h
    nop
    sub c
    nop
    ld c, h
    nop
    ld h, h
    ld [hl-], a
    ret z

    sub [hl]
    ld e, $3c
    rst $38
    rst $38
    dec bc
    nop
    nop
    rlca
    dec e
    xor d
    nop
    inc d
    nop
    sbc e
    nop
    and b
    nop
    ld e, c
    nop
    scf
    nop
    ret z

    ld h, h
    sub [hl]
    ld a, [$8e42]
    rst $38
    rst $38
    rlca
    nop
    nop
    rlca
    dec de
    ldh a, [rP1]
    dec e
    nop
    ld a, d
    nop
    ld h, h
    nop
    sub c
    nop
    ld c, h
    nop
    ret z

    sub [hl]
    sub [hl]
    sub [hl]
    ld bc, $ff3c
    rst $38
    add hl, sp
    nop
    nop
    rlca
    jr nz, jr_014_65fe

    nop
    ld e, $00
    ld l, [hl]
    nop
    ld e, d
    nop
    halt
    ld a, $00
    ld a, [$3200]
    ld a, [$403e]
    ld b, c
    rst $38
    add hl, sp
    nop
    nop
    rlca
    jr nz, @-$7c

    nop
    inc hl
    nop
    ld a, b
    nop
    ld d, l
    nop
    halt
    ld a, $00
    ld a, [$3200]
    ld a, [$413e]
    rst $38
    rst $38
    add hl, sp
    nop
    nop
    rlca
    jr nz, @+$7a

    nop
    ld e, $00
    ld [hl], e
    nop
    ld d, b
    nop
    halt
    ld a, $00
    ld a, [$3200]
    ld a, [$403e]
    ld b, c
    rst $38
    add h
    nop
    nop
    rlca
    rra
    ret z

    nop
    inc a
    nop
    ld h, d
    nop
    ld [hl], e
    nop
    ld e, d
    nop
    adc [hl]
    nop
    ret z

    ld [hl-], a
    sub [hl]
    sub [hl]
    inc b
    ld l, d
    rst $38
    rst $38
    and a
    nop
    nop
    rlca
    rra
    sub [hl]
    nop
    ld d, b
    nop
    ld b, h
    nop
    ld a, [hl]
    nop
    ld a, d
    nop
    and l
    nop
    ret z

    ld h, h
    ret z

    ld h, h
    dec bc
    inc h
    ld [hl], $ff
    ld h, l
    nop
    nop
    rlca
    ld hl, $00c8
    ld d, l
    nop
    ld b, b
    nop
    ld d, b
    nop
    sbc h
    nop
    cp c
    nop
    ret z

    ret z

    ret z

    ld [hl-], a
    inc c
    dec hl
    ld [hl], $ff
    ld a, l
    nop
    nop
    rlca
    inc h
    xor d
    nop
    ld c, [hl]
    nop
    ld h, h
    nop
    sub [hl]
    nop
    ld l, c
    nop
    ld c, b
    nop
    ld a, [$fa32]
    nop
    rra
    ld c, b
    rst $38
    rst $38
    ld e, $00
    nop
    rlca
    ld hl, $00dc
    inc d
    nop
    ret z

    nop
    ld b, [hl]
    nop
    sub [hl]
    nop
    inc d
    nop
    ld a, [$9600]
    sub [hl]
    ccf
    ld b, b
    ld a, b
    rst $38
    ld a, l
    nop
    nop
    rlca
    inc h
    add d
    nop
    ld c, [hl]
    nop
    ld l, [hl]
    nop
    adc h
    nop
    ld l, c
    nop
    ld c, b
    nop
    ret z

    ld [hl-], a
    ld a, [$1f00]
    ld c, b
    ld d, d
    rst $38
    ld e, e
    nop
    nop
    rlca
    daa
    and b
    nop
    ld d, b
    nop
    ld c, c
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    sub e
    nop
    ld a, [$9600]
    ld h, h
    ld bc, $6b35
    rst $38
    adc c
    nop
    nop
    rlca
    dec h
    sub [hl]
    nop
    inc a
    nop
    xor h
    nop
    add h
    nop
    ld l, d
    nop
    cp d
    nop
    ld a, [$fa32]
    sub [hl]
    inc b
    ld h, c
    rst $38
    rst $38
    ld b, a
    nop
    nop
    rlca
    daa
    and b
    nop
    ld c, e
    nop
    add a
    nop
    ld h, h
    nop
    and b
    nop
    call $9600
    sub [hl]
    sub [hl]
    ld a, [$2c16]
    ld h, c
    rst $38
    ld a, [hl-]
    nop
    nop
    rlca
    ld h, $fa
    nop
    inc d
    nop
    inc b
    ld bc, $0048
    ret z

    nop
    ld d, b
    nop
    ld a, [$0000]
    ret z

    ld d, l
    ld a, h
    rst $38
    rst $38
    adc l
    nop
    nop
    rlca
    jr z, jr_014_67b1

    ld bc, $0064
    ld a, d

jr_014_67b1:
    nop
    ret z

    nop
    jp nc, $a000

    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ld [hl-], a
    dec bc
    ld l, $46
    rst $38
    ld a, [hl-]
    nop
    nop
    rlca
    ld h, $f0
    nop
    inc d
    nop
    ld a, [$4800]
    nop
    ret z

    nop
    ld d, b
    nop
    ld a, [$0000]
    ret z

    dec sp
    ld d, l
    ld a, h
    rst $38

jr_014_67d9:
    ld h, b
    nop
    nop
    rlca
    jr z, jr_014_67d9

    nop
    ld a, b
    nop
    sub [hl]
    nop
    and b
    nop
    sub [hl]
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, d
    sub d
    rst $38
    ld [hl], h
    nop
    nop
    rlca
    ld h, $5e
    ld bc, $006e
    xor d
    nop
    ld h, h
    nop
    or h
    nop
    sub [hl]
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld l, b
    ld [hl], b
    ld a, c
    rst $38

jr_014_680b:
    ld h, b
    nop
    nop
    rlca
    jr z, jr_014_680b

    nop
    ld h, h
    nop
    adc h
    nop
    sub [hl]
    nop
    ld a, b
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, d
    sub d
    rst $38
    ld h, h
    nop
    nop
    rlca
    inc l
    and b
    nop
    ld d, b
    nop
    ld d, h
    nop
    ret z

    nop
    ld a, b
    nop
    sub [hl]
    nop
    ret z

    nop
    ret z

    ld h, h
    ld [hl], c
    ld [hl], a
    ld a, b
    rst $38
    cp b
    nop
    nop
    rlca
    ld hl, $00be
    ld a, b
    nop
    xor b
    nop
    ret c

    nop
    sub [hl]
    nop
    xor d
    nop
    ld a, [$c800]
    ld a, [$1918]
    dec e
    rst $38
    ld h, h
    nop
    nop
    rlca
    inc l
    xor d
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    cp [hl]
    nop
    inc a
    ld bc, $0096
    ret z

    nop
    sub [hl]
    ld h, h
    ld [hl], c
    ld [hl], a
    ld a, b
    rst $38
    ld [$0000], sp
    rlca
    ld h, $fa
    nop
    ld a, b
    nop
    ret z

    nop
    add d
    nop
    inc b
    ld bc, $008c
    ld h, h
    nop
    ld h, h
    ret z

    dec b
    ld [hl], e
    rst $38
    rst $38
    ld c, [hl]
    nop
    nop
    rlca
    ld h, $b4
    nop
    sub [hl]
    nop
    xor d
    nop
    add d
    nop
    and b
    nop
    ret z

    nop
    ret z

    nop
    ret z

    sub [hl]
    ld d, $1a
    ld [hl], e
    rst $38
    halt
    nop
    rlca
    ld hl, $00d2
    ld h, h
    nop
    ld a, [$c800]
    nop
    sub [hl]
    nop
    ld e, d
    nop
    ld a, [$0000]
    ret z

    ld a, $53
    ld l, b
    rst $38
    ld de, $0000
    rlca
    ld h, $0a
    nop
    ld [$6e01], a
    nop
    sbc [hl]
    ld [bc], a
    rst $38
    ld bc, $00ff
    ld a, [$fafa]
    nop
    dec b
    ld [$ffff], sp
    cp l
    nop
    nop
    rlca
    ld h, $36
    ld bc, $0091
    and $00
    or h
    nop
    ld l, b
    ld bc, $00d2
    ld a, [$3232]
    ld [hl-], a
    ld d, c
    ld d, l
    ld d, a
    rst $38
    cp c
    nop
    nop
    rlca
    dec hl
    sub b
    ld bc, $0069
    ld a, [$c800]
    nop
    ld a, [$8200]
    nop
    ret z

    ld [hl-], a
    sub [hl]
    ld h, h
    ccf
    ld [hl], d
    rst $38
    rst $38
    sub a
    nop
    nop
    rlca
    dec hl
    ld b, b
    ld bc, $0055
    call $f000
    nop
    ld b, b
    ld bc, $00c8
    ld a, [$c832]
    ld a, [$4417]
    ld d, a
    rst $38
    add hl, hl
    nop
    nop
    rlca
    ld [hl-], a
    inc l
    ld bc, $00c8
    and b
    nop
    ld b, b
    ld bc, $00fa
    or h
    nop
    ld a, [$fa00]
    ret z

    ld b, h
    ld d, c
    ld e, [hl]
    rst $38

jr_014_6937:
    dec de
    nop
    nop
    rlca
    jr nc, jr_014_6937

    nop
    ld h, h
    nop
    or h
    nop
    jp nc, Jump_014_6400

    nop
    add d
    nop
    ret z

    ret z

    ret z

jr_014_694b:
    ld a, [$574e]
    sub b
    rst $38
    ld [hl+], a
    nop
    nop
    rlca
    jr nc, @+$56

    ld bc, $00b4
    cp c
    nop
    inc b
    ld bc, $00c8
    ld a, [$c800]
    nop
    ret z

    ret z

    dec bc
    jr @+$6f

    rst $38
    ld a, $00
    nop
    rlca
    jr nc, jr_014_694b

    nop
    and $00
    xor d
    nop
    sub [hl]
    nop
    ld [hl+], a
    ld bc, $00ff
    ld a, [$fafa]
    ld a, [$312d]
    inc sp
    rst $38
    ld e, $00
    nop
    rlca
    ld hl, $00dc
    inc d
    nop
    ld sp, $7801
    nop
    ret z

    nop
    ld e, $00
    ld a, [$c800]
    sub [hl]
    ccf
    ld b, b
    ld a, b
    rst $38
    ld [de], a
    nop
    nop
    rlca
    ld [hl-], a
    ld [$bc00], sp
    ld [bc], a
    sub [hl]
    nop
    cp h
    ld [bc], a
    rst $38
    ld bc, $00ff
    ld a, [$fafa]
    ret z

    db $10
    rst $38
    rst $38
    rst $38
    jr z, jr_014_69b6

jr_014_69b6:
    nop
    rlca
    ld [hl-], a
    inc l
    ld bc, $00b4
    call c, $f000
    nop
    ld b, b
    ld bc, $00c8
    ld a, [$9664]
    ld h, h
    ld [$4540], sp
    rst $38
    ld e, c
    nop
    nop
    rlca
    ld [hl-], a
    ld a, h
    ld bc, $0032
    ret z

    nop
    db $dc, $00, $40
    ld bc, $00ff
    ret z

    sub [hl]
    ld [hl-], a
    ld a, [$8166]
    rst $38
    rst $38
    add hl, de
    nop
    nop
    nop
    inc d
    ld d, b
    nop
    jr z, jr_014_69ef

jr_014_69ef:
    add d
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    dec hl
    jr nc, @-$70

    rst $38
    cpl
    nop
    nop
    nop
    inc d
    ld [hl-], a
    nop
    jr z, jr_014_6a08

jr_014_6a08:
    ld d, b
    nop
    ld [hl-], a
    nop
    ld h, h
    nop
    ld b, [hl]
    nop
    ret z

    nop
    ld [hl-], a
    ret z

    ld a, [de]
    ld e, $25
    rst $38
    and c
    nop
    nop
    nop
    inc d
    ld d, b
    nop
    ld d, b
    nop
    ld b, [hl]
    nop
    ld e, d
    nop
    inc a
    nop
    ld e, d
    nop
    ld a, [$9632]
    sub [hl]
    ld c, c
    ld c, h
    sub $ff
    pop bc
    nop
    nop
    nop
    inc d
    ld d, b
    nop
    jr z, jr_014_6a3a

jr_014_6a3a:
    ld d, b
    nop
    sub [hl]
    nop
    ld [hl-], a
    nop
    jr z, jr_014_6a42

jr_014_6a42:
    nop
    nop
    nop
    nop
    adc b
    adc d
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    ld e, $96
    nop
    ld d, b
    nop
    and b
    nop
    ld h, h
    nop
    call c, $5a00
    nop
    ld a, [$6496]
    ret z

    nop
    inc bc
    ld b, $ff
    ld a, d
    nop
    nop
    nop
    ld e, $64
    nop
    inc a
    nop
    add d
    nop
    ld a, b
    nop
    adc h
    nop
    ld h, h
    nop
    ld [hl-], a
    sub [hl]
    ret z

    ld h, h
    db $76
    ld [hl], a
    ld a, b
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    ld e, $5a
    nop
    inc a
    nop
    xor d
    nop
    add d
    nop
    xor d
    nop
    ld e, d
    nop
    ret z

    ret z

    ret z

    ret z

    ld b, e
    ld d, b
    sub b
    rst $38
    ld a, h
    nop
    nop
    nop
    ld e, $50
    nop
    ld a, b
    nop
    ld h, h

jr_014_6a9f:
    nop
    ld h, h
    nop
    ld d, b
    nop
    ld a, b
    nop
    sub [hl]
    nop
    ld h, h
    ld h, h
    ld c, e
    sub $d7
    rst $38
    dec sp
    nop
    nop
    nop
    ld h, $dc
    nop
    adc h
    nop
    and $00
    jp nc, Jump_014_6400

    nop
    adc h
    nop
    sub [hl]
    ld a, [$00c8]
    rla
    sub c
    sub d
    rst $38
    push bc
    nop
    nop
    nop
    jr z, jr_014_6af9

    ld bc, $0078
    ret z

    nop
    ldh a, [rP1]
    ld e, d
    nop
    xor d
    nop
    ld a, [$3232]
    ret z

    ld l, $32
    ld [hl], b
    rst $38
    stop
    nop
    nop
    inc d
    ld a, [bc]
    nop
    ret z

    nop
    ld e, $00
    inc l
    ld bc, $00c8
    ld [hl-], a
    nop
    nop
    ld h, h
    ld h, h
    nop
    adc b
    sub [hl]
    rst $38
    rst $38

jr_014_6af9:
    xor h
    nop
    nop
    nop
    jr z, jr_014_6a9f

    nop
    xor d
    nop
    ld [hl], $01
    inc b
    ld bc, $008c
    or h
    nop
    ld a, [$fa32]
    sub [hl]
    ld c, [hl]
    ld c, a
    reti


    rst $38
    db $c2, $0a, $00

    inc b
    ld bc, $000c
    ld [bc], a
    nop
    ld a, [bc]
    nop
    ld b, $00
    dec b
    nop
    ld [$c800], sp
    ld h, h
    ld h, h
    ld [hl-], a
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, $001e

    inc b
    dec b
    inc d
    nop
    add hl, bc
    nop
    inc d
    nop
    inc c
    nop
    ld a, [bc]
    nop
    ld e, $00
    ret z

    ld h, h
    ld h, h
    ld [hl-], a
    nop
    rst $38
    rst $38
    rst $38
    jp nz, $005a

    inc b
    ld a, [bc]
    dec l
    nop
    inc d
    nop
    jr z, jr_014_6b4f

jr_014_6b4f:
    inc d
    nop
    inc d
    nop
    ld d, b
    nop
    ret z

    ld h, h
    ld h, h
    ld [hl-], a
    nop
    ld [de], a
    rst $38
    rst $38
    jp nz, $012c

    inc b
    inc d
    ld d, b
    nop
    jr z, jr_014_6b66

jr_014_6b66:
    inc a
    nop
    jr z, jr_014_6b6a

jr_014_6b6a:
    jr z, jr_014_6b6c

jr_014_6b6c:
    add d
    nop
    ret z

    ld h, h
    ld h, h
    ld [hl-], a
    ld bc, $ff12
    rst $38
    jp nz, $0258

    inc b
    ld e, $7d
    nop
    inc a
    nop
    ld d, b
    nop
    inc a
    nop
    inc a
    nop
    xor d
    nop
    ret z

    ld h, h
    ld h, h
    ld [hl-], a
    ld bc, $ff12
    rst $38
    jp nz, $04b0

    inc b
    ld h, $a5
    nop
    ld d, b
    nop
    ld h, h
    nop
    ld d, b
    nop
    ld d, b
    nop
    jp nc, $c800

    ld h, h
    ld h, h
    ld [hl-], a
    ld [bc], a
    inc de
    rst $38
    rst $38
    db $c2, $04, $0c

    inc b
    ld h, $27
    ld bc, $00a0
    ld a, b
    nop
    ld l, [hl]
    nop
    ld e, d
    nop
    pop hl
    nop
    ret z

    ld h, h
    ld h, h
    ld [hl-], a
    ld [bc], a
    inc de
    rst $38
    rst $38
    db $c2, $bc, $17

    inc b
    ld h, $4a
    ld bc, $00dc
    ret z

    nop
    sub [hl]
    nop
    ld l, [hl]
    nop
    pop hl
    nop
    ret z

    ld h, h
    ld h, h
    ld [hl-], a
    ld [bc], a
    inc de
    rst $38
    rst $38
    ld [$0000], sp
    nop
    ld bc, $0004
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    ld [$0500], sp
    nop
    nop
    ld a, [$9664]
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    nop
    nop
    ld bc, $0008
    inc b
    nop
    ld a, [bc]
    nop
    rlca
    nop
    ld b, $00
    ld [$fa00], sp
    ld [hl-], a
    nop
    ld_long a, $ffff
    rst $38
    rst $38
    dec [hl]
    nop
    nop
    nop
    ld bc, $0006
    inc bc
    nop
    ld b, $00
    inc b
    nop
    rlca
    nop
    dec b
    nop
    ld h, h
    sub [hl]
    ld_long a, $ff32
    rst $38
    rst $38
    rst $38
    adc d
    nop
    nop
    nop
    ld bc, $0007
    ld [$0500], sp
    nop
    inc bc
    nop
    ld b, $00
    ld a, [bc]
    nop
    ld [hl-], a
    ld h, h
    ld_long a, $ff96
    rst $38
    rst $38
    rst $38
    ld d, h
    nop
    nop
    nop
    ld bc, $000f
    ld a, [bc]
    nop
    inc c
    nop
    ld [$1200], sp
    nop
    ld a, [bc]
    nop
    sub [hl]
    ret z

    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    nop
    nop
    nop
    ld bc, $000f
    ld a, [bc]
    nop
    inc c
    nop
    ld [$1200], sp
    nop
    ld a, [bc]
    nop
    sub [hl]
    ret z

    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $0012
    ld [$0c00], sp
    nop
    ld [de], a
    nop
    inc b
    nop
    ld b, $00
    ld a, [$3264]
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    nop
    nop
    nop
    ld bc, $0012
    ld [$0c00], sp
    nop
    ld [de], a
    nop
    inc b
    nop
    ld b, $00
    ld a, [$3264]
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    and l
    nop
    nop
    nop
    ld bc, $0014
    inc d
    nop
    inc d
    nop
    rrca
    nop
    add hl, de
    nop
    rrca
    nop
    ret z

    ld h, h
    ret z

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    nop
    nop
    nop
    ld bc, $001e
    inc d
    nop
    inc d
    nop
    ld e, $00
    rrca
    nop
    rrca
    nop
    ret z

    sub [hl]
    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    ld l, d
    nop
    nop
    nop
    ld bc, $001e
    ld e, $00
    add hl, de
    nop
    inc d
    nop
    inc d
    nop
    inc d
    nop
    ret z

    ld [hl-], a
    sub [hl]
    ld h, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    nop
    nop
    nop
    ld bc, $001e
    add hl, de
    nop
    ld e, $00
    add hl, de
    nop
    ld e, $00
    inc d
    nop
    sub [hl]
    ret z

    ret z

    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    nop
    nop
    nop
    ld bc, $0023
    add hl, de
    nop
    inc hl
    nop
    ld e, $00
    add hl, de
    nop
    add hl, de
    nop
    ld a, [$6496]
    ld h, h
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    nop
    nop
    nop
    ld bc, $0023
    inc d
    nop
    inc hl
    nop
    inc d
    nop
    inc hl
    nop
    inc d
    nop
    ret z

    ld h, h
    ret z

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    nop
    nop
    nop
    ld bc, $0028
    ld e, $00
    jr z, jr_014_6d43

jr_014_6d43:
    inc a
    nop
    inc d
    nop
    ld e, $00
    ld a, [$96c8]
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0000
    nop
    ld bc, $000a
    ld [hl-], a
    nop
    inc d
    nop
    ret z

    nop
    ret z

    nop
    ld e, $00
    nop
    sub [hl]
    ld h, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, d
    inc l
    ld bc, $1404
    ld d, b
    nop
    ld a, b
    nop
    jr z, jr_014_6d75

jr_014_6d75:
    ld e, $00
    ld e, $00
    ld h, h
    nop
    ld h, h
    ld [hl-], a
    ret z

    ld h, h
    ld d, $4d
    rst $38
    rst $38
    xor l
    nop
    nop
    ld b, $37
    inc l
    ld bc, $015e
    ld a, h
    ld bc, $00dc
    ld [hl-], a
    ld bc, $00ff
    ld a, [$6432]
    ld a, [$0e02]
    rst $38
    rst $38
    rst $10
    nop
    nop
    rlca
    inc a
    ret nc

    rlca
    ret z

    nop
    add [hl]
    ld bc, $00dc
    sub b
    ld bc, $00ff
    ld a, [$6432]
    ret z

    ld b, b
    ld b, l
    ld d, a
    rst $38
    ret c

    nop
    nop
    rlca
    ld e, $c8
    nop
    ld h, h
    nop
    or h
    nop
    sub [hl]
    nop
    ld d, b
    nop
    sub [hl]
    nop
    ld a, [$fafa]
    ld a, [$5a2c]
    adc b
    rst $38
    reti


    nop
    nop
    rlca
    jr z, jr_014_6e00

    ld bc, $00c8
    jp nc, $a000

    nop
    ld a, b
    nop
    ld h, h
    nop
    ld a, [$fafa]
    ld a, [$5e25]
    ld a, d
    rst $38
    jp c, RST_00

    rlca
    ld [hl-], a
    jp nz, $c801

    nop
    ld a, [$be00]
    nop
    sub [hl]
    nop
    ret z

    nop
    ld a, [$fafa]
    ld a, [$5540]
    ld d, a
    rst $38

jr_014_6e00:
    db $db
    nop
    nop
    rlca
    inc a
    cp h
    ld [bc], a
    sub b
    ld bc, $015e
    inc l
    ld bc, $0064
    ld a, [$fa00]
    ld a, [$fafa]
    ld h, d
    ld h, h
    add b
    rst $38
    call c, RST_00
    rlca
    ld [hl-], a
    rst $20
    inc bc
    inc l
    ld bc, $012c
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ld a, [$0000]
    ld a, [$635f]
    add b
    rst $38
    inc d
    add sp, $03
    inc b
    rla
    ld b, [hl]
    nop
    inc a
    nop
    ld h, h
    nop
    inc a
    nop
    ld e, d
    nop
    ld e, d
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    ld a, [$6a5d]
    adc h
    rst $38
    dec hl
    nop
    nop
    nop
    ld bc, $0014
    dec de
    nop
    inc e
    nop
    inc d
    nop
    rrca
    nop
    stop
    sub [hl]
    ld [hl-], a
    ret z

    ld_long a, $ffff
    rst $38
    rst $38
    ld [$0000], sp
    nop
    ld bc, $003c
    ld [hl-], a
    nop
    ld b, b
    nop
    ld [hl], $00
    ld a, b
    nop
    ld b, c
    nop
    nop
    nop
    ld h, h
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    ld b, [hl]
    nop
    dec b
    dec b
    add hl, de
    nop
    inc c
    nop
    inc e
    nop
    ld c, $00
    ld d, $00
    dec l
    nop
    ret z

    ld [hl-], a
    ld h, h
    ret z

    ld b, l
    ld b, [hl]
    ld b, a
    rst $38
    ccf
    ld d, b
    nop
    dec b
    ld b, $1a
    nop
    ld a, [bc]
    nop
    jr nz, jr_014_6ea1

jr_014_6ea1:
    ld d, $00
    ld a, [de]
    nop
    add hl, de
    nop
    ld a, [$9600]
    ret z

    dec sp
    inc a
    dec a
    rst $38
    ld [hl], l
    ld d, e
    nop
    dec b
    dec b
    dec de
    nop
    inc c
    nop
    ld a, [de]
    nop
    inc e
    nop
    rrca
    nop
    inc e
    nop
    ld a, [$3264]
    sub [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    rst $38
    ld c, $56
    nop
    dec b
    ld b, $20
    nop
    inc d
    nop
    add hl, de
    nop
    inc d
    nop
    jr nz, jr_014_6ed7

jr_014_6ed7:
    dec hl
    nop
    ret z

    ld h, h
    ld h, h
    ld a, [$5250]
    ld d, a
    rst $38
    ld hl, $005a
    dec b
    ld b, $24
    nop
    stop
    inc e
    nop
    stop
    ld a, [bc]
    nop
    ld e, $00
    ret z

    nop
    ret z

    ld [hl-], a
    ld e, h
    ld h, b
    rst $38
    rst $38
    ld c, d
    ld e, b
    nop
    dec b
    dec b
    ld d, $00
    jr jr_014_6f03

jr_014_6f03:
    add hl, de
    nop
    dec d
    nop
    rra
    nop
    ld [hl+], a
    nop
    ret z

    ld [hl-], a
    nop
    ld h, h
    ld c, d
    ld c, e
    sub $ff
    add [hl]
    ld d, c
    nop
    dec b
    ld b, $16
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld c, $00
    inc h
    nop
    add hl, hl
    nop
    ld h, h
    ld [hl-], a
    sub [hl]
    sub [hl]
    dec h
    daa
    ld [hl], a
    rst $38
    ld e, [hl]
    ld h, h
    nop
    dec b
    ld b, $20
    nop
    dec h
    nop
    add hl, de
    nop
    jr jr_014_6f39

jr_014_6f39:
    ld de, $2600
    nop
    ld h, h
    ld h, h
    ret z

    ld h, h
    ld a, b
    ld a, c
    sub b
    rst $38
    ld l, e
    ld [hl-], a
    nop
    dec b
    dec b
    ld e, $00
    rla
    nop
    inc d
    nop
    ld a, [bc]
    nop
    inc c
    nop
    ld [hl+], a
    nop
    sub [hl]
    ld [hl-], a
    ld a, [$12c8]
    jr nz, jr_014_6fcf

    rst $38
    xor b
    ld c, h
    nop
    dec b
    ld b, $1f
    nop
    ld de, $1d00
    nop
    dec c
    nop
    ld d, $00
    daa
    nop
    ld h, h
    nop
    sub [hl]
    ld h, h
    rla
    sub c
    sub d
    rst $38
    ld c, l
    ld b, h
    nop
    dec b
    ld b, $23
    nop
    ld [hl+], a
    nop
    stop
    jr jr_014_6f84

jr_014_6f84:
    jr nz, jr_014_6f86

jr_014_6f86:
    ld e, $00
    ld [hl-], a
    nop
    ld a, [$1596]
    ld a, l
    adc d
    rst $38
    rla
    ld c, e
    nop
    dec b
    dec b
    ld a, [de]
    nop
    ld b, $00
    ld [hl+], a
    nop
    add hl, de
    nop
    ld c, $00
    jr nz, jr_014_6fa1

jr_014_6fa1:
    sub [hl]
    sub [hl]
    sub [hl]
    ld h, h
    dec hl
    adc h
    rst $38
    rst $38
    dec b
    ccf
    nop
    dec b
    dec b
    dec e
    nop
    jr jr_014_6fb2

jr_014_6fb2:
    ld e, $00
    ld [de], a
    nop
    ld [hl+], a
    nop
    ld hl, $9600
    ld h, h
    ld [hl-], a
    ld a, [$221e]
    dec hl
    rst $38
    ld a, b
    ld c, h
    nop
    dec b
    ld b, $17
    nop
    inc d
    nop
    dec d
    nop
    inc d
    nop

jr_014_6fcf:
    jr jr_014_6fd1

jr_014_6fd1:
    inc e
    nop
    ret z

    sub [hl]
    sub [hl]
    ld [hl-], a
    daa
    dec hl
    rst $38
    rst $38
    ld h, l
    ld c, h
    nop
    dec b
    dec b
    dec h
    nop
    dec l
    nop
    stop
    dec d
    nop
    inc de
    nop
    dec h
    nop
    ld h, h
    sub [hl]
    ret z

    ret z

    inc c
    dec hl
    jr nc, @+$01

    add h
    ld d, [hl]
    nop
    dec b
    dec b
    ld e, $00
    inc h
    nop
    jr nz, jr_014_6fff

jr_014_6fff:
    rla
    nop
    rla
    nop
    dec l
    nop
    ret z

    sub [hl]
    ret z

    ret z

    dec a
    adc b
    adc [hl]
    rst $38
    ld b, a
    or a
    nop
    dec b
    inc c
    ld l, $00
    jr nz, jr_014_7016

jr_014_7016:
    inc [hl]
    nop
    inc e
    nop
    jr nc, jr_014_701c

jr_014_701c:
    ld d, h
    nop
    ret z

    ld [hl-], a
    ld h, h
    nop
    ld d, b
    ld d, l
    ld e, b
    rst $38
    ld h, c
    cp d
    nop
    dec b
    dec c
    inc h
    nop
    ld b, b
    nop
    ld [hl-], a
    nop
    inc h
    nop
    daa
    nop
    ld a, [hl+]
    nop
    ld a, [$0000]
    sub [hl]
    inc bc
    ld c, h
    ld e, l
    rst $38
    add e
    ret z

    nop
    dec b
    inc c
    jr nc, jr_014_7046

jr_014_7046:
    ld l, $00
    dec [hl]
    nop
    ld a, [hl+]
    nop
    ld [de], a
    nop
    ld e, b
    nop
    ret z

    ld h, h
    ret z

    sub [hl]
    ld b, h
    ld b, [hl]
    ld b, a
    rst $38
    pop bc
    ret c

    nop
    inc bc
    inc c
    ld h, $00
    add hl, hl
    nop
    cpl
    nop
    jr z, jr_014_7065

jr_014_7065:
    dec d
    nop
    inc sp
    nop
    ret z

    nop
    nop
    ret z

    ccf
    ld d, l
    ret c

    rst $38
    inc c
    rlc b
    dec b
    inc c
    inc [hl]
    nop
    jr jr_014_707a

jr_014_707a:
    dec hl
    nop
    rra
    nop
    ld sp, $3d00
    nop
    ld a, [$6464]
    sub [hl]
    ld c, [hl]
    ld d, [hl]
    ld a, l
    rst $38
    ld a, l
    cp [hl]
    nop
    dec b
    inc c
    ld l, $00
    rra
    nop
    ld [hl-], a
    nop
    inc h
    nop
    inc e
    nop
    ld [hl-], a
    nop
    ld h, h
    nop
    sub [hl]
    ld [hl-], a
    ld l, a
    ld [hl], l
    rst $10
    rst $38
    and d
    and [hl]
    nop
    dec b
    dec c
    dec sp
    nop
    jr z, jr_014_70ac

jr_014_70ac:
    ld [hl], $00
    ld [hl-], a
    nop
    ld a, [de]
    nop
    ld l, $00
    sub [hl]
    ld [hl-], a
    ret z

    sub [hl]
    dec d
    ld a, [de]
    inc hl
    rst $38
    add hl, de
    or b
    nop
    dec b
    dec c
    scf
    nop
    ld [hl+], a
    nop
    inc [hl]
    nop
    ld [hl+], a
    nop
    jr nz, jr_014_70cb

jr_014_70cb:
    jr nc, jr_014_70cd

jr_014_70cd:
    ret z

    ld h, h
    ret z

    nop
    add hl, de
    ld a, b
    ld a, e
    rst $38
    ld a, [hl]
    jp nc, Jump_000_0600

    dec c
    inc a
    nop
    dec h
    nop
    ld [hl], $00
    rra
    nop
    ld [hl], $00
    scf
    nop
    sub [hl]
    ld [hl-], a
    ret z

    ld a, [$726f]
    adc d
    rst $38
    ld e, e
    sbc c
    nop
    dec b
    inc c
    ld sp, $2a00
    nop
    jr z, jr_014_70f9

jr_014_70f9:
    dec e
    nop
    ld e, $00
    ld l, $00
    ld h, h
    nop
    ld a, [$6e96]
    ld a, c
    ld a, l
    rst $38
    and a
    call nz, Call_000_0500
    inc c
    inc l
    nop
    dec l
    nop
    ld h, $00
    jr z, jr_014_7114

jr_014_7114:
    jr z, jr_014_7116

jr_014_7116:
    inc sp
    nop
    sub [hl]
    ld h, h
    ld [hl-], a
    ret z

    dec hl
    adc b
    adc d
    rst $38
    adc a
    or h
    nop
    dec b
    dec c
    inc sp
    nop
    dec e
    nop
    inc h
    nop
    add hl, de
    nop
    inc l
    nop
    add hl, sp
    nop
    ret z

    ret z

    ret z

    ld [hl-], a
    dec hl
    jr nc, @+$7a

    rst $38
    ld a, h
    sub [hl]
    nop
    dec b
    inc c
    daa
    nop
    ld [hl-], a
    nop
    jr z, jr_014_7144

jr_014_7144:
    inc e
    nop
    rra
    nop
    scf
    nop
    nop
    ret z

    ret z

    ld a, [$832b]
    adc b
    rst $38
    ld d, l
    pop bc
    nop
    dec b
    inc c
    ld [hl-], a
    nop
    cpl
    nop
    dec [hl]
    nop
    dec de
    nop
    add hl, hl
    nop
    cpl
    nop
    ret z

    ret z

    ret z

    ld a, [$5d2b]
    adc d
    rst $38
    ld a, e
    xor d
    nop
    dec b
    inc c
    add hl, hl
    nop
    ld l, $00
    jr z, jr_014_7176

jr_014_7176:
    inc h
    nop
    dec e
    nop
    add hl, sp
    nop
    ret z

    sub [hl]
    ret z

    ld h, h
    dec hl
    ld h, a
    ld [hl], l
    rst $38
    ld a, [hl-]
    or a
    nop
    ld b, $0d
    add hl, sp
    nop
    dec hl
    nop
    ld a, $00
    rla
    nop
    jr nc, jr_014_7193

jr_014_7193:
    jr jr_014_7195

jr_014_7195:
    ld a, [$fafa]
    ld a, [$3f2b]
    ld [hl], e
    rst $38
    ld b, b
    db $f4
    ld bc, $1405
    ld b, c
    nop
    ld l, $00
    ld c, [hl]
    nop
    ld h, $00
    inc sp
    nop
    cpl
    nop
    ld a, [$0000]
    ld h, h
    ld b, c
    ld c, b
    ld c, [hl]
    rst $38
    ld d, h
    ld bc, $0502
    inc d
    ld c, b
    nop
    dec [hl]
    nop
    ld b, a
    nop
    ld l, $00
    ld l, $00
    add hl, sp
    nop
    ret z

    ld h, h
    ld h, h
    sub [hl]
    ld a, [bc]
    dec sp
    ld b, d
    rst $38
    or b
    ld c, $02
    dec b
    dec d
    ld b, d
    nop
    scf
    nop
    dec sp
    nop
    dec l
    nop
    dec [hl]
    nop
    dec l
    nop
    ld a, [$c800]
    ld h, h
    ld bc, $4107
    rst $38
    ret nz

    ld [hl+], a
    ld [bc], a
    dec b
    dec d
    ld d, b
    nop
    dec hl
    nop
    ld e, b
    nop
    ld sp, $2800
    nop
    inc sp
    nop
    ret z

    ld [hl-], a
    ld [hl-], a
    sub [hl]
    ld bc, $4844

Call_014_7200:
    rst $38
    cp h
    add hl, hl
    ld [bc], a
    dec b
    inc d
    inc a
    nop
    ld b, [hl]
    nop
    ld a, $00
    ld [hl-], a
    nop
    ld a, [hl+]
    nop
    dec sp
    nop
    ld a, [$6464]
    nop
    dec c
    inc d
    ld c, c
    rst $38
    and [hl]
    ld [hl+], a
    ld [bc], a
    dec b
    inc d
    ccf
    nop
    ld b, h
    nop
    ld d, l
    nop
    scf
    nop
    ld b, b
    nop
    inc a
    nop
    sub [hl]
    nop
    ret z

    ld h, h
    add hl, de
    dec e
    jr z, @+$01

    cp a
    inc sp
    ld [bc], a
    dec b
    dec d
    add hl, sp
    nop
    cpl
    nop
    ld b, l
    nop
    inc [hl]
    nop
    ld c, b
    nop
    ld l, $00
    sub [hl]
    ld [hl-], a
    sub [hl]
    ld h, h
    ld d, $21
    ld l, l
    rst $38
    and c
    inc b
    ld [bc], a
    dec b
    inc d
    ld d, b
    nop
    ld b, c
    nop
    ld c, b
    nop
    ld b, e
    nop
    inc [hl]
    nop
    ld c, l
    nop
    ld h, h
    nop
    ld h, h
    ld h, h
    inc hl
    ld a, l
    sub c
    rst $38
    or [hl]
    dec d
    ld [bc], a
    dec b
    dec d
    ld c, e
    nop
    dec a
    nop
    ld h, a
    nop
    ld a, b
    nop
    jr z, jr_014_7274

jr_014_7274:
    dec a
    nop
    ret z

    ld h, h
    ret z

    ret z

    dec de
    ld l, a
    ld a, d
    rst $38
    inc hl
    inc sp
    ld [bc], a
    dec b
    dec d
    ld h, h
    nop
    daa
    nop
    ld d, b
    nop
    ld c, b
    nop
    ld l, [hl]
    nop
    add hl, hl
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    nop
    ld [de], a
    dec h
    ld [hl], h
    rst $38
    ld d, l
    dec d
    ld [bc], a
    dec b
    inc d
    ld d, c
    nop
    ld l, $00
    ld c, l
    nop
    inc sp
    nop
    ld b, d
    nop
    jr z, jr_014_72a8

jr_014_72a8:
    ret z

    sub [hl]
    nop
    sub [hl]
    dec hl
    ld h, $46
    rst $38
    inc e
    inc sp
    ld [bc], a
    dec b
    dec d
    ld l, c
    nop
    inc h
    nop
    ld d, e
    nop
    ccf
    nop
    jr nc, jr_014_72bf

jr_014_72bf:
    ld b, b
    nop
    ret z

    ret z

    ret z

    ret z

    dec hl
    ld d, d
    adc b
    rst $38
    db $10
    and b
    rrca
    ld b, $14
    ld a, [bc]
    nop
    ret z

    nop
    dec l
    nop
    inc l
    ld bc, $00fa
    ld b, d
    nop
    ld a, [$c8c8]
    ld a, [$3f2b]
    adc c
    rst $38
    ld d, c
    inc b
    ld [bc], a
    dec b
    dec d
    ld e, a
    nop
    add hl, sp
    nop
    ld l, [hl]
    nop
    add hl, sp
    nop
    dec [hl]
    nop
    jr nc, jr_014_72f3

jr_014_72f3:
    ret z

    ret z

    ret z

    ld a, [$2b0a]
    add c
    rst $38
    adc c
    ld [hl+], a
    ld [bc], a
    dec b
    inc d
    ld d, h
    nop
    dec [hl]
    nop
    ld l, [hl]
    nop
    ld b, a
    nop
    ld b, b
    nop
    ld h, h
    nop
    ld a, [$fafa]
    nop
    rrca
    dec hl
    ld a, h
    rst $38
    ld [hl], h
    ld c, l
    ld bc, $1405
    inc [hl]
    nop
    dec hl
    nop
    ld l, $00
    ld l, $00
    inc h
    nop
    add hl, sp
    nop
    ld a, [$fafa]
    ld a, [$322e]
    ld a, $ff
    adc l
    add sp, $03
    dec b
    ld a, [de]
    ld l, [hl]
    nop
    ld b, [hl]
    nop
    ld h, h
    nop
    ld l, d
    nop
    ld a, d
    nop
    ld [hl], l
    nop
    ld a, [$c896]
    ret z

    inc b
    ld b, e
    ld e, [hl]
    rst $38
    rra
    xor $03
    dec b
    ld a, [de]
    ld e, l
    nop
    scf
    nop
    ld l, b
    nop
    ld a, $00
    adc b
    nop
    ld b, c
    nop
    ret z

    nop
    nop
    ld a, [$625a]
    ld l, c
    rst $38
    ld l, d
    add hl, bc
    inc b
    dec b
    dec de
    ld e, b
    nop
    ld [hl], d
    nop
    ld e, l
    nop
    dec l
    nop
    ld a, [hl+]
    nop
    add hl, sp
    nop
    ret z

    ld h, h
    sub [hl]
    ret z

    db $10
    ld e, e
    ld a, c
    rst $38
    sbc [hl]
    db $fc
    inc bc
    dec b
    ld a, [de]
    ld b, e
    nop
    ld d, h
    nop
    ld [hl], d
    nop
    ld b, [hl]
    nop
    ld a, b
    nop
    ld h, [hl]
    nop
    sub [hl]
    ld [hl-], a
    ld h, h
    nop
    ld [de], a
    ld b, [hl]
    ld d, b
    rst $38
    sub b
    inc de
    inc b
    dec b
    dec de
    add [hl]
    nop
    ld c, b
    nop
    ld a, b
    nop
    ld l, e
    nop
    inc [hl]
    nop
    ld [hl], e
    nop
    ld [hl-], a
    nop
    nop
    nop
    dec sp
    ld c, d
    ld e, c
    rst $38
    scf
    db $fc
    inc bc
    dec b
    ld a, [de]
    adc h
    nop
    inc a
    nop
    add d
    nop
    ld h, h
    nop
    dec a
    nop
    ld e, e
    nop
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    inc d
    inc h
    add h
    rst $38
    xor [hl]
    ld a, [hl+]
    inc b
    dec b
    ld a, [de]
    scf
    nop
    dec l
    nop
    ld d, d
    nop
    dec a
    nop
    ld b, b
    nop
    add hl, sp
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ld [hl-], a
    ld h, $7f
    add e
    rst $38
    and b
    xor $03
    dec b
    add hl, de
    add d
    nop
    ld b, b
    nop
    adc b
    nop
    ld l, a
    nop
    ld [hl], $00
    ld b, [hl]
    nop
    ld [hl-], a
    nop
    sub [hl]
    ld a, [$7617]
    ld a, d
    rst $38
    daa
    inc h
    inc b
    dec b
    ld a, [de]
    add h
    nop
    ld c, l
    nop
    ld a, b
    nop
    ld e, c
    nop
    ld d, l
    nop
    ld c, [hl]
    nop
    ld h, h
    ld [hl-], a
    ld h, h
    ld h, h
    dec e
    ld l, [hl]
    ret c

    rst $38
    ld h, h
    ld a, [hl+]
    inc b
    dec b
    add hl, de
    ld d, e
    nop
    dec a
    nop
    dec sp
    nop
    ld a, b
    nop
    sbc h
    nop
    ld d, l
    nop
    ld a, [$fafa]
    ld a, [$7825]
    sub d
    rst $38
    sub e
    db $e4
    inc bc
    dec b
    ld a, [de]
    ld h, e
    nop
    add hl, hl
    nop
    add a
    nop
    sbc e
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ld h, h
    inc l
    ld d, [hl]
    sub l
    rst $38
    xor a
    ld a, [de]
    inc b
    dec b
    add hl, de
    ld b, h
    nop
    ld c, h
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    jr z, jr_014_744f

jr_014_744f:
    add d
    nop
    ret z

    ret z

    ret z

    ld [hl-], a
    ld l, $77
    add l
    rst $38
    ld d, l
    db $10
    inc b
    dec b
    ld a, [de]
    ld l, [hl]
    nop
    ld b, c
    nop
    ld a, l
    nop
    ld b, [hl]
    nop
    ld h, h
    nop
    ld c, e
    nop
    ld h, h
    ld h, h
    ld h, h
    ld a, [$6d52]
    sub h
    rst $38
    ccf
    rst $38
    inc bc
    dec b
    add hl, de
    add l
    nop
    ld l, e
    nop
    sbc e
    nop
    ld d, d
    nop
    ld h, d
    nop
    add b
    nop
    ret z

    sub [hl]
    ret z

    sub [hl]
    dec l
    jr nc, jr_014_74df

    rst $38
    ld h, [hl]
    db $10
    inc b
    dec b
    ld a, [de]
    ld a, l
    nop
    ld [hl], a
    nop
    ld b, e
    nop
    ld c, d
    nop
    inc sp
    nop
    ld d, [hl]
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld h, $89
    rst $10
    rst $38
    dec de
    ld b, l
    inc b
    dec b
    add hl, de
    ld a, [hl]
    nop
    ld e, a
    nop
    ld e, a
    nop
    add b
    nop
    ld l, $00
    ld b, e
    nop
    ld a, [$c8c8]
    ld a, [$1f10]
    inc l
    rst $38
    ld [hl], $82
    ld b, $05
    ld hl, $009c
    inc a
    nop
    ld c, l
    nop
    inc a
    nop
    adc b
    nop
    ld c, [hl]
    nop
    ld h, h
    nop
    ld h, h
    ret z

    dec b
    ld b, h
    ld d, c
    rst $38
    or l
    add d
    ld b, $05
    ld hl, $00a4
    ld a, $00

jr_014_74df:
    ld b, a
    nop
    ld b, b
    nop
    xor d
    nop
    ld a, b
    nop
    sub [hl]
    ld [hl-], a
    ld [hl-], a
    ld a, [$4b07]
    ld d, a
    rst $38
    dec sp
    xor d
    ld b, $05
    ld [hl+], a
    add $00
    ld l, [hl]
    nop
    xor d
    nop
    xor d
    nop
    ld d, b
    nop
    ld e, [hl]
    nop
    ld a, [$6496]
    ld h, h
    dec bc
    ld b, d
    ld e, c
    rst $38
    sbc h
    cp b
    ld b, $05
    ld hl, $00a4
    ccf
    nop
    add h
    nop
    xor [hl]
    nop
    ld d, l
    nop
    xor c
    nop
    ret z

    ld h, h
    ld [hl-], a
    ld a, [$3b02]
    ld d, l
    rst $38
    sub a
    call c, Call_000_0506
    ld hl, $00c8
    ld a, [hl]
    nop
    pop hl
    nop
    ld c, $01
    ld b, b
    ld bc, $00dc
    ld a, [$3232]
    sub [hl]
    inc d
    ld e, c
    ld h, a
    rst $38
    sbc b
    or h
    ld b, $05
    ld [hl+], a
    cp c
    nop
    ld h, [hl]
    nop
    push hl
    nop
    and h
    ld bc, $0087
    sub h
    nop
    ret z

    ld [hl-], a
    ld a, [$1664]
    inc h
    ld d, a
    rst $38
    cp b
    ldh [rTMA], a
    dec b
    ld hl, $009a
    sub h
    nop
    xor b
    nop
    and h
    nop
    ld a, b
    nop
    add l
    nop
    ld h, h
    ld [hl-], a
    sub [hl]
    ret z

    jr z, @+$6f

    ld a, l
    rst $38
    call nz, Call_000_06bb
    dec b
    ld hl, $00d2
    dec sp
    nop
    ld l, h
    nop
    or [hl]
    nop
    inc [hl]
    nop
    ret nz

    nop
    ld h, h
    ld h, h
    ld h, h
    ld a, [$766e]
    sub h
    rst $38
    ret nz

    or c
    ld b, $05
    ld hl, $00b4
    ccf
    nop
    sbc [hl]
    nop
    or e
    nop
    ld d, a
    nop
    ld h, l
    nop
    ret z

    ld [hl-], a
    ret z

    sub [hl]
    ld l, a
    ld [hl], h
    add [hl]
    rst $38
    ld d, h
    jp nc, Jump_000_0506

    ld hl, $00b6
    ld h, a
    nop
    ld a, c
    nop
    ld [hl], h
    nop
    sbc b
    nop
    ld l, e
    nop
    ret z

    ld h, h
    ret z

    sub [hl]
    ld [hl], d
    ld a, d
    adc e
    rst $38
    ld b, h
    cp [hl]
    ld b, $05
    ld [hl+], a
    and [hl]
    nop
    ld b, b
    nop
    sbc a
    nop
    ld a, h
    nop
    and e
    nop
    ld l, e
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ld a, [$472c]
    ld a, b
    rst $38
    push bc
    call z, Call_000_0506
    ld [hl+], a
    call c, Call_014_6000
    nop
    sub e
    nop
    call c, $4700
    nop
    ld a, l
    nop
    ret z

    sub [hl]
    ret z

    ret z

    dec b
    ld l, $8f
    rst $38
    ld b, l
    and a
    ld b, $05
    ld hl, $009b
    add [hl]
    nop
    and d
    nop
    ld a, d
    nop
    adc c
    nop
    ld h, h
    nop
    ld a, [$fafa]
    ld a, [$322e]
    ld b, d
    rst $38
    db $10
    cp h
    rla
    ld b, $1e
    rrca
    nop
    inc l
    ld bc, $0041
    sub b
    ld bc, $015e
    ld d, [hl]
    nop
    ld a, [$fac8]
    ld h, h
    dec hl
    ld a, $8f
    rst $38
    rla
    jp nc, Jump_000_0506

    ld [hl+], a
    and h
    nop
    ld a, [hl-]
    nop
    ld b, e
    nop

jr_014_7626:
    ld [hl], l
    nop
    ld d, b
    nop
    ld h, c
    nop
    sub [hl]
    ld [hl-], a
    ld h, h
    nop
    inc l
    ld d, e
    adc a
    rst $38
    sub [hl]
    jp nz, Jump_000_0506

    ld hl, $00d2
    inc d
    nop
    ld [c], a
    nop
    ld d, h
    nop
    add b
    nop
    ld [de], a
    nop
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld a, a
    adc c
    sub $ff
    xor h
    ld l, c
    dec c
    dec b
    daa
    sub c

jr_014_7653:
    nop
    and b
    nop
    db $10
    ld bc, $00e0
    add b
    nop
    and [hl]
    nop
    ret z

    ld [hl-], a
    ld [hl-], a
    sub [hl]
    ld c, e
    ld d, h
    rst $10
    rst $38
    ld l, e
    ret nz

    dec c
    dec b
    jr z, jr_014_7626

    nop
    and c
    nop
    ld [$7c00], a
    nop
    ld a, a
    nop
    halt
    ld a, [$6400]
    ret z

    ld b, e
    ld e, a
    ret c

    rst $38
    ret nz

    jp c, $050d

    ld h, $be
    nop
    ld [hl], c
    nop
    add $00
    sbc a
    nop
    adc h
    nop
    ld h, l
    nop
    ret z

    ld [hl-], a
    ld [hl-], a
    sub [hl]
    ld de, $553b
    rst $38
    ld d, l
    call $050d
    jr z, jr_014_7653

    nop
    ld [hl], h
    nop
    or c
    nop
    ld a, c
    nop
    sbc e
    nop
    ld d, c
    nop
    ret z

    ld [hl-], a
    nop
    sub [hl]
    ld c, h
    ld l, b
    add a
    rst $38
    rrca
    sbc e
    dec c
    dec b
    ld h, $fa
    nop
    ld e, [hl]
    nop
    jp c, $b500

    nop
    adc $00
    ret z

    nop
    ld a, [$0096]
    ret z

    ld c, $40
    ld c, c
    rst $38
    ld c, e
    cp h
    dec c
    dec b
    ld h, $8b
    nop
    ld e, b
    nop
    push bc
    nop
    ld [hl], e
    nop
    cp d
    nop
    ld a, a
    nop
    ret z

    nop
    ret z

    ld h, h
    ld d, $25
    ld c, d
    rst $38
    add $a8
    dec c
    dec b
    jr z, jr_014_76ed

    ld bc, $00ae
    sbc h

jr_014_76ed:
    nop
    jp hl


    nop
    inc d
    nop
    add [hl]
    nop
    sub [hl]
    ld [hl-], a
    sub [hl]
    nop
    add hl, hl
    ld l, e
    ld a, h
    rst $38
    ld a, [bc]
    pop hl
    dec c
    dec b
    ld hl, $00b8
    ld c, [hl]
    nop
    and [hl]
    nop
    sub a
    nop
    scf
    ld bc, $008d
    ld h, h
    nop
    ret z

    ld a, [$741f]
    ld a, l
    rst $38
    ld d, [hl]
    rst $38
    dec c
    dec b
    daa
    ldh [rP1], a
    ld d, a
    nop
    cp e
    nop
    and a
    nop
    jp nc, $de00

    nop
    ld h, h
    ld h, h
    ld h, h
    ld [hl-], a
    add d
    sub c
    sub d
    rst $38
    inc h
    adc d
    dec c
    dec b
    inc e
    db $cc, $00, $12, $00

    or c
    nop
    inc l
    ld bc, $0051
    ld l, b
    nop
    ret z

    ret z

    ret z

    ld h, h
    jr z, jr_014_77ac

    add e
    rst $38
    sub a

jr_014_7748:
    call nc, $050d
    jr z, jr_014_7748

    nop
    ld a, h
    nop
    ld [hl+], a
    ld bc, $0160
    ld d, d
    ld bc, $00d3
    ret z

    ret z

    ret z

    ret z

    jr nc, jr_014_77a2

    ld [hl], b
    rst $38
    add $9b
    dec c
    dec b
    daa
    jp nc, $9d00

    nop
    adc d
    nop
    rst $28
    nop
    ld [de], a
    nop
    add h
    nop
    ld h, h
    ld h, h
    ld h, h
    sub [hl]
    ld b, [hl]
    add c
    sub d
    rst $38
    dec hl
    cp h
    dec c
    dec b
    ld hl, $00a5
    and h
    nop
    add $00
    xor a
    nop
    ld a, e
    nop
    ld [hl], b
    nop
    ld a, [$fafa]
    ld a, [$2314]
    ld sp, $2aff
    sub c
    dec c
    dec b
    daa
    cp e
    nop
    ld a, d
    nop
    ld e, $01
    cp e
    nop
    ret z

    nop
    adc l

jr_014_77a2:
    nop
    ret z

    sub [hl]
    sub [hl]
    nop
    ld h, e

jr_014_77a8:
    ld l, a
    sub h
    rst $38
    ld e, b

jr_014_77ac:
    call nc, $050d
    daa
    or d
    nop
    push bc
    nop
    sub a
    nop
    db $e3
    nop
    adc a
    nop
    add $00
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    nop
    rra
    ld l, $5a
    rst $38
    push bc
    xor b
    dec c
    dec b
    jr z, jr_014_77a8

    nop
    ld a, [hl]
    nop
    rst $00
    nop
    ld bc, $6b01
    nop
    cp b
    nop
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    rla
    add a
    adc c
    rst $38
    ld [hl-], a
    db $e4
    dec de
    ld b, $26
    ld d, h
    ld bc, $005a
    inc l
    ld bc, $00b9
    sub [hl]
    nop
    ld e, d
    nop
    ld a, [$6400]
    ld [hl-], a
    ld c, $42
    ld c, l
    rst $38
    dec h
    ld e, h
    inc e
    ld b, $2d
    ld e, [hl]
    ld bc, $0082
    ldh a, [rP1]
    jp nc, $aa00

    nop
    jp nc, $fa00

    nop
    ld [hl-], a
    ret z

    dec bc
    ld b, c
    sub $ff
    ld b, c
    jr c, jr_014_782f

    ld b, $2d
    cp [hl]
    nop
    sub [hl]
    nop
    ld c, d
    ld bc, $00d2
    cp [hl]
    nop
    add d
    nop
    ret z

    ld [hl-], a
    ld h, h
    ret z

    ld [bc], a
    ld b, l
    ld c, h
    rst $38
    cp c
    sbc h
    ld e, $06
    dec hl
    ld [hl], $01

jr_014_782f:
    ld l, c
    nop
    ldh a, [rP1]
    call c, $fa00
    nop
    add d
    nop
    sub [hl]
    ld [hl-], a
    ld [hl-], a
    ld h, h
    ld [$4740], sp
    rst $38
    ld d, [hl]
    db $fd
    ld e, $06
    dec l
    inc b
    ld bc, $0078
    jp nc, $c800

    nop
    ldh a, [rP1]
    rst $38
    nop
    ld a, [$9632]
    ld h, h
    ccf
    ld b, [hl]
    ld e, c
    rst $38
    ld d, a
    ld l, c
    inc e
    ld b, $2d
    ldh [rSB], a
    ret z

    nop
    sub [hl]
    nop
    ld a, [$f000]
    nop
    and $00
    ret z

    ret z

    sub [hl]
    ld a, [$5132]
    ld [hl], d
    rst $38
    ld de, $76a8
    ld b, $26
    rla
    nop
    ld [$be01], a
    nop
    sbc [hl]
    ld [bc], a
    rst $38
    ld bc, $00ff
    ld h, h
    ld [hl-], a
    sub [hl]
    nop
    jr z, jr_014_78c6

    ld d, e
    rst $38
    cp d
    ld h, a
    ld e, $06
    ld hl, HeaderDestinationCode
    and l
    nop
    db $d2, $00, $40

    ld bc, $0118
    or h
    nop
    ld a, [$c864]
    ld a, [$6916]
    ld a, b
    rst $38
    ld e, $08
    inc e
    ld b, $21
    ret z

    nop
    jr jr_014_78ae

jr_014_78ae:
    ld c, a
    ld bc, $0082
    cp [hl]
    nop
    ld e, $00
    ld a, [$c800]
    sub [hl]
    ld b, e
    ld h, e
    sub d
    rst $38
    adc [hl]
    jr nz, jr_014_78dd

    ld b, $21
    sub [hl]
    nop
    cp [hl]

jr_014_78c6:
    nop
    call c, $9600
    nop
    cp [hl]
    nop
    ldh a, [rP1]
    ret z

    sub [hl]
    ld a, [$1d00]
    ld l, a
    ld a, d
    rst $38
    xor c
    ld [hl], h
    dec e
    ld b, $2e
    ld d, h

jr_014_78dd:
    ld bc, $00f0
    ld d, h
    ld bc, $0118
    jr jr_014_78e7

    rst $10

jr_014_78e7:
    nop
    ret z

    ld a, [$c8c8]
    dec l
    ld b, h
    adc h
    rst $38
    cp l
    ld a, c
    dec de
    ld b, $26
    jr jr_014_78f8

    push af

jr_014_78f8:
    nop
    ld d, h
    ld bc, $00e6
    ld l, b
    ld bc, $00d2
    ld a, [$fafa]
    ld [hl-], a
    ld l, $4f
    adc e
    rst $38
    ld [hl+], a
    call z, Call_000_061b
    dec l
    ld d, h
    ld bc, $0118
    ret z

    nop
    ld b, b
    ld bc, $00c8
    ld a, [$fa00]
    ld a, [$c8c8]
    ld sp, $8f81
    rst $38
    ld a, $22
    dec h
    ld b, $2d
    ret z

    nop
    ld c, d
    ld bc, $00c8
    sub [hl]
    nop
    ld [hl+], a
    ld bc, $00ff
    ret z

    ld a, [$fafa]
    ld d, l
    ld a, b
    adc c
    rst $38
    add c
    ld a, c
    dec de
    ld b, $2e
    dec bc
    ld bc, $0073
    push bc
    nop
    ld bc, $6e01
    nop
    cp c
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ld [hl-], a
    sub h
    sub [hl]
    ret c

    rst $38
    xor [hl]
    ld e, c
    dec e
    ld b, $26
    jp nc, $d200

    nop
    ld a, b
    nop
    and a
    nop
    adc d
    nop
    ret z

    nop
    ld a, [$fafa]
    ld a, [$3e29]
    ld h, e
    rst $38
    dec h
    ld e, b
    inc [hl]
    ld b, $32
    ld [hl], d
    ld bc, $0096
    ld a, [$dc00]
    nop
    cp [hl]
    nop
    and $00
    ld a, [$fafa]
    ld a, [$4f25]
    ld a, d
    rst $38
    cp l
    cp h
    inc [hl]
    ld b, $26
    inc l
    ld bc, HeaderLogo
    ld e, [hl]
    ld bc, $00f0
    ld a, h
    ld bc, $00fa
    ld a, [$fafa]
    ld a, [$542c]
    ld d, l
    rst $38
    cp d
    ld h, d
    dec [hl]
    ld b, $21
    ld a, h
    ld bc, $00be
    ldh a, [rP1]
    ld d, h
    ld bc, $012c
    jp nc, $fa00

    ld a, [$fafa]
    ld de, $832e
    rst $38
    ld d, a
    jr nc, jr_014_79f0

    ld b, $32
    db $f4
    ld bc, $00c8
    or h
    nop
    inc b
    ld bc, $00fa
    rst $38
    nop
    ld a, [$fafa]
    ld a, [$8740]
    sub h
    rst $38
    cp c
    dec a
    inc [hl]
    ld b, $2b
    ld c, d
    ld bc, $0078
    inc b
    ld bc, $00f0
    ld a, [$a000]
    nop
    ld a, [$fafa]
    ld a, [$6e39]
    ld a, h
    rst $38
    sub c
    call z, $0634
    jr nc, jr_014_7a44

jr_014_79f0:
    ld bc, $012c
    ld c, d
    ld bc, $00d2
    sub [hl]
    nop
    jp nc, $fa00

    ld a, [$fafa]
    ld h, e
    ld a, a
    adc c
    rst $38
    sub d
    jr nz, jr_014_7a3b

    ld b, $30
    ld [hl], $01
    inc l
    ld bc, $012c
    ret z

    nop
    inc b
    ld bc, $00ff
    ld a, [$fafa]
    ld a, [$5414]
    sub e
    rst $38
    ld [de], a
    xor b
    db $76
    ld b, $32
    add hl, de
    nop
    cp h
    ld [bc], a
    ld [hl+], a
    ld bc, $02bc
    rst $38
    ld bc, $00ff
    ld a, [$fafa]
    ld a, [$8968]
    sub [hl]
    rst $38
    add hl, hl
    add b
    inc [hl]
    ld b, $32
    ld l, b

jr_014_7a3b:
    ld bc, $0096
    ld l, b
    ld bc, $015e
    ret z

    nop

jr_014_7a44:
    or h
    nop
    ld a, [$fafa]
    ld a, [$7813]
    sub h
    rst $38
    ld b, c
    jr nz, jr_014_7a86

    ld b, $30
    call c, $aa00
    nop
    ld a, [$dc00]
    nop
    jp nc, $9600

    nop
    ld a, [$fafa]
    ld a, [$7d08]
    sub c
    rst $38
    ld l, e
    ld d, d
    dec [hl]
    ld b, $32
    ld a, [$d200]
    nop
    ld a, [$a000]
    nop
    and b
    nop
    ret z

    nop
    ld a, [$fafa]
    ld a, [$4f42]
    ld a, d
    rst $38
    ld a, a
    db $f4
    inc [hl]
    ld b, $30
    ld a, h

jr_014_7a86:
    ld bc, $00be
    ldh a, [rP1]
    ld a, [$2c00]
    ld bc, $00c8
    ld a, [$fafa]
    ld a, [$7267]
    sub e
    rst $38
    xor c
    sub $34
    ld b, $30
    ld d, h
    ld bc, $015e
    ld e, [hl]
    ld bc, $00be
    ld [hl+], a
    ld bc, $00e6
    ld a, [$fafa]
    ld a, [$7766]
    adc [hl]
    rst $38
    xor l
    dec b
    dec [hl]
    ld b, $32
    ldh a, [rP1]
    ld d, h
    ld bc, $00d2
    ld b, b
    ld bc, $0122
    ld a, [$fa00]
    ld a, [$fafa]
    ld e, a
    ld l, a
    adc e
    rst $38
    push bc
    ld l, b
    inc [hl]
    ld b, $30
    ld l, b
    ld bc, $00a0
    ldh a, [rP1]
    ld l, b
    ld bc, $0064
    ret z

    nop
    ld a, [$fafa]
    ld a, [$6343]
    ld [hl], h
    rst $38
    add $3e
    dec [hl]
    ld b, $30
    ld [hl+], a
    ld bc, $00c8
    or h
    nop
    inc b
    ld bc, $0014
    sub [hl]
    nop
    ld a, [$fafa]
    ld a, [$7f57]
    push de
    rst $38
    ld [$fde8], sp
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    nop
    nop
    rlca
    ld b, [hl]
    add h
    inc bc
    ld e, b
    ld [bc], a
    sub b
    ld bc, $03e7
    sbc e
    ld bc, $00ff
    nop
    ld a, [$fa00]
    ld l, $31
    add c
    rst $38
    inc l
    nop
    nop
    rlca
    ld b, [hl]
    ld h, h
    add hl, de
    rst $20
    inc bc
    cp h
    ld [bc], a
    sub b
    ld bc, $0118
    rst $38
    nop
    ld a, [$fa00]
    ld a, [$5440]
    ld h, h
    rst $38
    ld l, h
    nop
    nop
    rlca
    ld b, [hl]
    ld [$e707], sp
    inc bc
    ld e, b
    ld [bc], a
    db $f4
    ld bc, $0190
    rst $38
    nop
    nop
    nop
    ld a, [$7ffa]
    add b
    adc e
    rst $38
    inc e
    nop
    nop
    nop
    ld b, $3c
    nop
    inc d
    nop
    jr z, jr_014_7b6c

jr_014_7b6c:
    add hl, de
    nop
    inc d
    nop
    ld e, $00
    ld a, [$0032]
    ld a, [$5c44]
    rst $38
    rst $38
    call nz, RST_00
    nop
    rlca
    ld d, b
    nop
    inc d
    nop
    dec l
    nop
    inc hl
    nop
    rrca
    nop
    ld b, [hl]
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    ret z

    ld b, c
    ld d, [hl]
    adc [hl]
    rst $38
    ld c, [hl]
    inc b
    nop
    ld bc, $0e01
    nop
    inc d
    nop
    inc c
    nop
    inc b
    nop
    inc c
    nop
    ld c, $00
    ret z

    nop
    nop
    ret z

    inc sp
    rst $38
    rst $38
    rst $38

label14_7bac:
    ld a, [$da5e]
    cp $ff
    ret z

    cp $2b
    jp z, Jump_014_7bf4

    cp $2c
    jp z, Jump_014_7bf4

    cp $2d
    jp z, Jump_014_7bf4

    cp $2e
    jp z, Jump_014_7c1b

    cp $2f
    jp z, Jump_014_7c1b

    cp $30
    jp z, Jump_014_7c9b

    cp $31
    jp z, Jump_014_7c9b

    cp $33
    jp z, Jump_014_7cad

    cp $36
    jp z, Jump_014_7cc3

    cp $37
    jp z, Jump_014_7cd9

    cp $38
    jp z, Jump_014_7ce5

    cp $7e
    jp z, Jump_014_7cf5

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7bf4:
    call Call_014_7d00
    ret nz

    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f

Call_014_7c01:
    push bc
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7c1b:
    ld a, [$ca8d]
    or a
    jr z, jr_014_7c95

    ld a, $00
    call Call_014_7d03
    jr nz, jr_014_7c4a

    ld a, $00
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $00
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, [$ca8d]
    cp $01
    jr z, jr_014_7c95

jr_014_7c4a:
    ld a, $01
    call Call_014_7d03
    jr nz, jr_014_7c73

    ld a, $01
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $01
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

    ld a, [$ca8d]
    cp $02
    jr z, jr_014_7c95

jr_014_7c73:
    ld a, $02
    call Call_014_7d03
    jr nz, jr_014_7c95

    ld a, $02
    ld hl, $cb13
    call Call_000_224f
    push bc
    ld a, $02
    ld hl, $cb11
    call Call_000_224f
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    or l
    ret nz

jr_014_7c95:
    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7c9b:
    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7cad:
    call Call_014_7d00
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 2, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7cc3:
    call Call_014_7d00
    ret nz

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_224a
    bit 0, a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7cd9:
    ld a, [$c93e]
    bit 0, a
    ret z

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7ce5:
    ld b, $10
    ld hl, $c950

jr_014_7cea:
    ld a, [hl+]
    ret z

    dec b
    jr nz, jr_014_7cea

    ld a, $ff
    ld [$da5e], a
    ret


Jump_014_7cf5:
    ld a, [wInGateworld]
    or a
    ret nz

    ld a, $ff
    ld [$da5e], a
    ret


Call_014_7d00:
    ld a, [$da60]

Call_014_7d03:
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    ret z

    ld a, $ff
    ld [$da5e], a
    ret

label14_7d12:
    ld a, [$da5e]
    cp $ff
    ret z

    cp $2b
    jp z, Jump_014_7d55

    cp $2c
    jp z, Jump_014_7d6d

    cp $2d
    jp z, Jump_014_7d85

    cp $2e
    jp z, Jump_014_7d98

    cp $2f
    jp z, Jump_014_7dd8

    cp $30
    jp z, Jump_014_7e1e

    cp $31
    jp z, Jump_014_7e4e

    cp $33
    jp z, Jump_014_7e6c

    cp $36
    jp z, Jump_014_7e78

    cp $37
    jp z, Jump_014_7e84

    cp $38
    jp z, Jump_014_7e8a

    cp $7e
    jp z, Jump_014_7e96

    ret


Jump_014_7d55:
    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, $0b
    call Call_000_1dfb
    add $1e
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_22a0
    ret


Jump_014_7d6d:
    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, $10
    call Call_000_1dfb
    add $4b
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_22a0
    ret


Jump_014_7d85:
    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_225d
    ret


Jump_014_7d98:
    ld a, $00
    ld [$da60], a
    ld a, $00
    call Call_014_7db7
    ld a, $01
    ld [$da60], a
    ld a, $01
    call Call_014_7db7
    ld a, $02
    ld [$da60], a
    ld a, $02
    call Call_014_7db7
    ret


Call_014_7db7:
    ld hl, $cb0b
    call Call_000_224a
    bit 7, a
    ret nz

    call GenerateRNG
    ld a, [wRNG1]
    ld b, a
    ld a, $1f
    call Call_000_1dfb
    add $5a
    ld l, a
    ld h, $00
    ld a, [$da60]
    call Call_000_22a0
    ret


Jump_014_7dd8:
    ld a, $00
    call Call_014_7d03
    jr nz, jr_014_7def

    ld a, $00
    ld hl, $cb13
    call Call_000_224f
    ld a, $00
    ld hl, $cb11
    call Call_000_225d

jr_014_7def:
    ld a, $01
    call Call_014_7d03
    jr nz, jr_014_7e06

    ld a, $01
    ld hl, $cb13
    call Call_000_224f
    ld a, $01
    ld hl, $cb11
    call Call_000_225d

jr_014_7e06:
    ld a, $02
    call Call_014_7d03
    jr nz, jr_014_7e1d

    ld a, $02
    ld hl, $cb13
    call Call_000_224f
    ld a, $02
    ld hl, $cb11
    call Call_000_225d

jr_014_7e1d:
    ret


Jump_014_7e1e:
    ld a, [wRNG1]
    bit 0, a
    jr nz, jr_014_7e47

    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    ld [hl], $00
    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    srl b
    rr c
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_225d
    ret


jr_014_7e47:
    ld hl, $0e05
    call Call_000_096d
    ret


Jump_014_7e4e:
    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    ld [hl], $00
    ld a, [$da60]
    ld hl, $cb13
    call Call_000_224f
    ld a, [$da60]
    ld hl, $cb11
    call Call_000_225d
    ret


Jump_014_7e6c:
    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 2, [hl]
    ret


Jump_014_7e78:
    ld a, [$da60]
    ld hl, $cb0b
    call Call_000_2229
    res 0, [hl]
    ret


Jump_014_7e84:
    ld hl, $c93e
    set 0, [hl]
    ret


Jump_014_7e8a:
    ld hl, $c950
    ld bc, $0010
    ld a, $01
    call FillNBytesWithRegA
    ret


Jump_014_7e96:
    ld hl, $010b
    rst $10
    ld hl, wGameState
    set 6, [hl]
    xor a
    ld [$c905], a
    ld a, $00
    ld [$da09], a
    ld hl, $c90d
    inc [hl]
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
