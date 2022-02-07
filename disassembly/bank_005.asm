; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    db $05

    dw label5_4005
    dw label5_400f

label5_4005:
    call Call_005_406e
    ld de, $407f
    call $0d91
    ret

label5_400f:
    call Call_005_406e
    ld de, $407f
    push af
    push bc
    push de
    push hl
    ldh a, [$cb]
    cp $28
    jr nc, jr_005_4069

    ldh a, [$c7]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$c8]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ldh a, [$cb]
    sla a
    sla a
    ld l, a
    ld h, $c0

jr_005_403c:
    ld a, [de]
    inc de
    cp $80
    jr z, jr_005_4069

    ld b, a
    ldh a, [$c5]
    add b
    add $10
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$c3]
    add b
    add $08
    ld [hl+], a
    ldh a, [$c9]
    ld b, a
    ld a, [de]
    inc de
    add b
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ldh a, [$ca]
    xor b
    ld [hl+], a
    ldh a, [$cb]
    inc a
    ldh [$cb], a
    cp $28
    jr c, jr_005_403c

jr_005_4069:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_406e:
    ldh a, [$c7]
    ld hl, $4152
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ldh a, [$ca]
    or [hl]
    ldh [$ca], a
    ret


    or d
    ld b, c
    inc h
    ld b, d
    sub [hl]
    ld b, d
    ld [$7a43], sp
    ld b, e
    db $ec
    ld b, e
    ld e, [hl]
    ld b, h
    ret nc

    ld b, h
    ld b, d
    ld b, l
    or h
    ld b, l
    ld h, $46
    sbc b
    ld b, [hl]
    ld a, [bc]
    ld b, a
    ld a, h
    ld b, a
    xor $47
    ld h, b
    ld c, b
    jp nc, Jump_005_4448

    ld c, c
    or [hl]
    ld c, c
    jr z, @+$4c

    sbc d
    ld c, d
    inc c
    ld c, e
    xor [hl]
    ld c, e
    jr nz, jr_005_40fb

    sub d
    ld c, h
    db $e3
    ld c, h
    add l
    ld c, l
    rst $30
    ld c, l
    ld l, c
    ld c, [hl]
    db $db
    ld c, [hl]
    ld [hl], l
    ld c, a
    rla
    ld d, b
    adc d
    ld d, b
    inc d
    ld d, c
    add [hl]
    ld d, c
    scf
    ld d, d
    db $f4
    ld d, d
    xor l
    ld d, e
    ret nz

    ld d, e
    ld de, $f254
    ld d, h
    ld b, c
    ld d, [hl]
    ld [de], a
    ld d, a
    ld c, e
    ld d, a
    sub a
    ld d, a
    add sp, $57
    or l
    ld e, b
    and d
    ld e, c
    sbc e
    ld e, d
    add h
    ld e, e
    ld [hl], c
    ld e, h
    ld l, d
    ld e, l
    cp a
    ld e, a
    adc b
    ld h, b
    xor b
    ld h, d
    ld l, d
    ld h, h
    call c, $4e64
    ld h, l
    ret nz

    ld h, l
    ld a, [de]
    ld h, [hl]
    adc h
    ld h, [hl]
    cp $66

jr_005_40fb:
    ld h, b
    ld h, a
    jp nc, Jump_005_4467

    ld l, b
    or [hl]
    ld l, b
    jr z, jr_005_416e

    sbc d
    ld l, c
    inc c
    ld l, d
    ld a, [hl]
    ld l, d
    ldh a, [rOCPS]
    ld h, d
    ld l, e
    call nc, Call_005_466b
    ld l, h
    cp b
    ld l, h
    ld a, [hl+]
    ld l, l
    sbc h
    ld l, l
    or $6d
    or d
    ld b, c
    or d
    ld b, c
    add hl, bc
    ld l, [hl]
    inc e
    ld l, [hl]
    cpl
    ld l, [hl]
    ld l, b
    ld l, [hl]
    ld l, a
    ld l, [hl]
    pop bc
    ld l, [hl]
    ld h, [hl]
    ld l, a
    ret c

    ld l, a
    add hl, bc
    ld l, [hl]
    add hl, bc
    ld l, [hl]
    add hl, bc
    ld l, [hl]
    add hl, bc
    ld l, [hl]
    add hl, bc
    ld l, [hl]
    add hl, bc
    ld l, [hl]
    ld [de], a
    ld [hl], b
    ccf
    ld b, c
    ld b, c
    ld b, c
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ld bc, $0206
    inc b
    nop
    ld [bc], a
    ld bc, $0507
    dec b
    nop
    nop
    ld b, $00
    inc b
    ld bc, $0204
    ld [bc], a
    ld b, $03
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    inc bc
    ld [bc], a

jr_005_416e:
    ld bc, $0207
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    nop
    ld b, $03
    inc b
    inc bc
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    inc b
    ld b, $01
    inc bc
    ld bc, $0401
    inc b
    ld b, $05
    ld [bc], a
    inc bc
    ld b, $03
    nop
    ld [bc], a
    inc b
    rlca
    dec b
    inc b
    nop
    dec b
    inc b
    nop
    rlca
    ld bc, $0601
    dec b
    ld [bc], a
    ld bc, $0201
    inc bc
    rlca
    rlca
    nop
    inc bc
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    cp [hl]
    ld b, c
    rst $08
    ld b, c
    ldh [rSTAT], a
    pop af
    ld b, c
    ld [bc], a
    ld b, d
    inc de
    ld b, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_41cc:
    inc bc
    nop
    add b
    ld hl, sp+$01
    ld [bc], a
    jr nz, jr_005_41cc

    ld sp, hl
    inc bc
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_005_420c:
    inc c
    nop
    ld hl, sp+$00

jr_005_4210:
    dec c
    nop
    add b
    ld hl, sp+$01
    inc c
    jr nz, jr_005_4210

    ld sp, hl
    dec c
    jr nz, jr_005_420c

    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    jr nc, @+$44

    ld b, c
    ld b, d
    ld d, d
    ld b, d
    ld h, e
    ld b, d
    ld [hl], h
    ld b, d
    add l
    ld b, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_423e:
    inc bc
    nop
    add b
    ld hl, sp+$01
    ld [bc], a

jr_005_4244:
    jr nz, jr_005_423e

    ld sp, hl
    inc bc
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_005_427e:
    inc c
    nop
    ld hl, sp+$00

jr_005_4282:
    dec c
    nop
    add b
    ld hl, sp+$01
    inc c
    jr nz, jr_005_4282

    ld sp, hl
    dec c
    jr nz, jr_005_427e

    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    and d
    ld b, d
    or e
    ld b, d
    call nz, $d542
    ld b, d
    and $42
    rst $30
    ld b, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    rst $38
    ld [bc], a
    jr nz, @-$06

    rst $30
    inc bc
    jr nz, jr_005_4244

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_005_42f0:
    inc c
    nop
    ld hl, sp+$00

jr_005_42f4:
    dec c
    nop
    add b
    ld hl, sp-$01
    inc c

jr_005_42fa:
    jr nz, jr_005_42f4

    rst $30
    dec c
    jr nz, jr_005_42f0

    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    inc d
    ld b, e
    dec h
    ld b, e
    ld [hl], $43
    ld b, a
    ld b, e
    ld e, b
    ld b, e
    ld l, c
    ld b, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_4322:
    inc bc
    nop
    add b
    ld hl, sp-$01
    ld [bc], a

jr_005_4328:
    jr nz, jr_005_4322

    rst $30
    inc bc
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$01
    inc c
    jr nz, @-$06

    rst $30
    dec c
    jr nz, jr_005_42fa

    add [hl]
    ld b, e
    sub a
    ld b, e
    xor b
    ld b, e
    cp c
    ld b, e
    jp z, $db43

    ld b, e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop

jr_005_439a:
    nop
    ldh a, [rP1]
    ld bc, $f800
    rst $38
    ld [bc], a
    jr nz, @-$06

    rst $30
    inc bc
    jr nz, jr_005_4328

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_005_43d4:
    inc c
    nop
    ld hl, sp+$00

jr_005_43d8:
    dec c
    nop
    add b
    ld hl, sp-$01
    inc c
    jr nz, jr_005_43d8

    rst $30
    dec c
    jr nz, jr_005_43d4

    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    ld hl, sp+$43
    add hl, bc
    ld b, h
    ld a, [de]
    ld b, h
    dec hl
    ld b, h
    inc a
    ld b, h
    ld c, l
    ld b, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop

jr_005_440c:
    nop
    ldh a, [rP1]
    ld bc, $f800
    rst $38
    ld [bc], a
    jr nz, @-$06

    rst $30
    inc bc
    jr nz, jr_005_439a

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_005_4446:
    inc c
    nop

Jump_005_4448:
    ld hl, sp+$00

jr_005_444a:
    dec c
    nop
    add b
    ld hl, sp-$01
    inc c
    jr nz, jr_005_444a

    rst $30
    dec c
    jr nz, jr_005_4446

    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    ld l, d
    ld b, h
    ld a, e
    ld b, h
    adc h
    ld b, h
    sbc l
    ld b, h
    xor [hl]

Jump_005_4467:
    ld b, h
    cp a
    ld b, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    rst $38
    ld [bc], a
    jr nz, @-$06

    rst $30
    inc bc
    jr nz, jr_005_440c

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08

jr_005_44b8:
    inc c
    nop
    ld hl, sp+$00

jr_005_44bc:
    dec c
    nop
    add b
    ld hl, sp-$01
    inc c

jr_005_44c2:
    jr nz, jr_005_44bc

    rst $30
    dec c
    jr nz, jr_005_44b8

    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    add b
    call c, $ed44
    ld b, h
    cp $44
    rrca
    ld b, l
    jr nz, jr_005_451f

    ld sp, $f045
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_44ea:
    inc bc
    nop
    add b
    ld hl, sp-$01
    ld [bc], a
    jr nz, jr_005_44ea

    rst $30
    inc bc
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop

jr_005_451f:
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$01
    inc c
    jr nz, @-$06

    rst $30
    dec c
    jr nz, jr_005_44c2

    ld c, [hl]
    ld b, l
    ld e, a
    ld b, l
    ld [hl], b
    ld b, l
    add c
    ld b, l
    sub d
    ld b, l
    and e
    ld b, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ret nz

    ld b, l
    pop de
    ld b, l
    ld [c], a
    ld b, l
    di
    ld b, l
    inc b
    ld b, [hl]
    dec d
    ld b, [hl]
    ldh a, [$fa]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld a, [$0001]
    ld hl, sp+$02
    ld [bc], a
    nop
    add b
    ldh a, [$fb]
    nop

jr_005_45d4:
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ei
    inc bc
    nop
    ld hl, sp+$03
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f9]
    dec b
    nop
    ldh a, [rSB]
    ld b, $00
    ld hl, sp-$07
    add hl, bc
    nop
    ld hl, sp+$01
    ld a, [bc]
    nop
    add b
    ldh a, [rIE]
    dec bc
    nop
    ldh a, [$fa]
    dec bc
    jr nz, @-$06

    rst $30
    inc c
    nop
    ld hl, sp-$01
    dec c
    nop
    add b
    ldh a, [rP1]
    dec bc

jr_005_4618:
    nop
    ldh a, [$fb]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ld [hl-], a
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld h, l
    ld b, [hl]
    db $76
    ld b, [hl]
    add a
    ld b, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    rst $38
    ld [bc], a
    jr nz, @-$06

    rst $30
    inc bc
    jr nz, jr_005_45d4

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop

Call_005_466b:
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]

jr_005_467c:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rIE]
    inc c

jr_005_468a:
    jr nz, jr_005_467c

    rst $30
    dec c
    jr nz, @-$06

    rst $38
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_005_4618

    and h
    ld b, [hl]
    or l
    ld b, [hl]
    add $46
    rst $10
    ld b, [hl]
    add sp, $46
    ld sp, hl
    ld b, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_46b2:
    inc bc
    nop
    add b
    ld hl, sp-$01
    ld [bc], a
    jr nz, jr_005_46b2

    rst $30
    inc bc
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_005_46fc:
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$01
    inc c
    jr nz, @-$06

    rst $30
    dec c
    jr nz, jr_005_468a

    ld d, $47
    daa
    ld b, a
    jr c, jr_005_4757

    ld c, c
    ld b, a
    ld e, d
    ld b, a
    ld l, e
    ld b, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_4724:
    inc bc
    nop
    add b
    ld hl, sp-$01
    ld [bc], a

jr_005_472a:
    jr nz, jr_005_4724

    rst $30
    inc bc
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $8000
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop

jr_005_4757:
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]

jr_005_476e:
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$01
    inc c
    jr nz, @-$06

    rst $30
    dec c
    jr nz, jr_005_46fc

    adc b
    ld b, a
    sbc c
    ld b, a
    xor d
    ld b, a
    cp e
    ld b, a
    call z, $dd47
    ld b, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop

jr_005_479c:
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    nop
    ld bc, $f820
    ld hl, sp+$02
    jr nz, jr_005_472a

    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$0a
    dec b
    nop
    ld hl, sp-$02
    ld b, $00
    add b
    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$0a
    rlca
    nop
    ld hl, sp-$02
    ld [$8000], sp
    ldh a, [$f8]
    add hl, bc

jr_005_47cf:
    nop
    ldh a, [rP1]
    add hl, bc
    jr nz, @-$06

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    add hl, bc

jr_005_47e0:
    nop
    ldh a, [rP1]
    add hl, bc
    jr nz, @-$06

    nop
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0b
    jr nz, jr_005_476e

    ld a, [$0b47]
    ld c, b
    inc e
    ld c, b
    dec l
    ld c, b
    ld a, $48
    ld c, a
    ld c, b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    inc bc
    nop
    ld hl, sp+$00
    inc b
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_005_479c

    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    inc c
    jr nz, jr_005_47cf

    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0d
    nop
    ld hl, sp+$00
    dec c
    jr nz, jr_005_47e0

    ld l, h
    ld c, b
    ld a, l
    ld c, b
    adc [hl]
    ld c, b
    sbc a
    ld c, b
    or b
    ld c, b
    pop bc
    ld c, b
    ld hl, sp-$06
    ld [bc], a
    nop
    ld hl, sp+$02
    inc bc
    nop
    ldh a, [$fa]
    nop
    nop
    ldh a, [rSC]
    ld bc, $8000
    ld hl, sp-$06
    inc b
    nop
    ld hl, sp+$02
    inc bc
    nop
    ldh a, [$fa]
    nop
    nop
    ldh a, [rSC]
    ld bc, $8000
    ldh a, [$f5]
    dec b
    nop
    ldh a, [$fd]
    ld b, $00
    ld hl, sp-$0b
    rlca
    nop
    ld hl, sp-$03
    ld [$8000], sp
    ldh a, [$f5]
    dec b
    nop
    ldh a, [$fd]
    ld b, $00
    ld hl, sp-$0b
    rlca
    nop
    ld hl, sp-$03
    add hl, bc
    nop
    add b
    ldh a, [$f5]
    ld a, [bc]
    nop
    ldh a, [$fd]
    dec bc
    nop
    ld hl, sp-$0b
    inc c
    nop
    ld hl, sp-$03
    dec c
    nop
    add b
    ldh a, [$f5]
    ld a, [bc]

jr_005_48c4:
    nop
    ldh a, [$fd]
    dec bc
    nop
    ld hl, sp-$0b
    inc c
    nop
    ld hl, sp-$03
    ld c, $00
    add b
    sbc $48
    rst $28
    ld c, b
    nop
    ld c, c
    ld de, $2249
    ld c, c
    inc sp
    ld c, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00

jr_005_48ec:
    inc bc
    nop
    add b
    ld hl, sp+$00
    ld [bc], a

jr_005_48f2:
    jr nz, jr_005_48ec

    ld hl, sp+$03
    jr nz, @-$0e

    ld sp, hl
    nop
    nop
    ldh a, [rSB]
    ld bc, $8000
    ldh a, [$f9]
    inc b
    nop
    ldh a, [rSB]
    dec b
    nop
    ld hl, sp-$07
    ld b, $00
    ld hl, sp+$01
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f7]
    ld a, [bc]

jr_005_4936:
    nop
    ldh a, [rIE]
    dec bc
    nop
    ld hl, sp-$01
    inc c
    jr nz, @-$06

    rst $30
    dec c
    jr nz, jr_005_48c4

    ld d, b
    ld c, c
    ld h, c
    ld c, c
    ld [hl], d
    ld c, c
    add e
    ld c, c
    sub h
    ld c, c
    and l
    ld c, c
    ld hl, sp-$07
    ld [bc], a
    nop
    ld hl, sp+$01
    inc bc
    nop
    ldh a, [$f9]
    nop
    nop
    ldh a, [rSB]
    ld bc, $8000
    ldh a, [$f9]
    nop

jr_005_4964:
    nop
    ldh a, [rSB]
    ld bc, $f800
    nop
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    jr nz, jr_005_48f2

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f9]
    ld a, [bc]
    nop
    ldh a, [rSB]
    dec bc
    nop
    ld hl, sp-$07
    inc c
    nop
    ld hl, sp+$01
    dec c
    nop
    add b
    ldh a, [$f9]
    ld a, [bc]

jr_005_49a8:
    nop
    ldh a, [rSB]
    dec bc
    nop
    ld hl, sp+$00
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    jr nz, jr_005_4936

    jp nz, $d349

    ld c, c
    db $e4
    ld c, c
    push af
    ld c, c
    ld b, $4a
    rla
    ld c, d
    ld hl, sp-$07
    ld [bc], a

jr_005_49c5:
    nop
    ld hl, sp+$01
    inc bc
    nop
    ldh a, [$f9]
    nop
    nop
    ldh a, [rSB]
    ld bc, $8000
    ldh a, [$f9]
    nop
    nop
    ldh a, [rSB]
    ld bc, $f800
    nop
    ld [bc], a
    jr nz, @-$06

    ld hl, sp+$03
    jr nz, jr_005_4964

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f9]
    ld a, [bc]
    nop
    ldh a, [rSB]
    dec bc
    nop
    ld hl, sp-$07
    inc c
    nop
    ld hl, sp+$01
    dec c
    nop
    add b
    ldh a, [$f9]
    ld a, [bc]
    nop
    ldh a, [rSB]
    dec bc
    nop
    ld hl, sp+$00
    inc c
    jr nz, @-$06

    ld hl, sp+$0d
    jr nz, jr_005_49a8

    inc [hl]
    ld c, d
    ld b, l
    ld c, d
    ld d, [hl]
    ld c, d
    ld h, a
    ld c, d
    ld a, b
    ld c, d
    adc c
    ld c, d
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_005_49c5

    ldh a, [$f8]
    nop

jr_005_4a48:
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    and [hl]
    ld c, d
    or a
    ld c, d
    ret z

    ld c, d
    reti


    ld c, d
    ld [$fb4a], a
    ld c, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    rst $38
    ld bc, $f820
    rst $30
    ld [bc], a
    jr nz, jr_005_4a48

    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    ld b, $00
    ldh a, [$f8]
    inc bc
    nop
    add b
    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$f000], sp
    ld hl, sp+$0c
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rIE]
    add hl, bc
    jr nz, @-$06

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rIE]
    dec c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    jr jr_005_4b59

    ld sp, $4a4b
    ld c, e
    ld h, e
    ld c, e
    ld a, h
    ld c, e
    sub l
    ld c, e
    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $f000
    ld hl, sp+$02
    nop
    ldh a, [rP1]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $f800
    nop
    inc b
    jr nz, @-$06

    ld hl, sp+$05
    jr nz, @-$0e

    ld hl, sp+$02
    nop
    ldh a, [rP1]
    inc bc
    nop
    add b
    add sp, -$08
    ld b, $00
    add sp, $00
    rlca
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc

jr_005_4b59:
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    add sp, -$08
    ld b, $00
    add sp, $00
    rlca
    nop
    ldh a, [$f8]

jr_005_4b6d:
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    add sp, -$08

jr_005_4b7e:
    ld c, $00
    add sp, $00
    rrca
    nop
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    ld de, $f800
    ld hl, sp+$12
    nop
    ld hl, sp+$00
    inc de
    nop
    add b
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    ld de, $e800
    ld hl, sp+$0e
    nop
    add sp, $00
    rrca
    nop
    ld hl, sp-$08
    inc d
    nop
    ld hl, sp+$00
    dec d
    nop
    add b
    cp d
    ld c, e
    bit 1, e
    call c, $ed4b
    ld c, e
    cp $4b
    rrca
    ld c, h
    ldh a, [$f8]
    nop

jr_005_4bbd:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b

jr_005_4bcb:
    rst $28
    ld hl, sp+$00

jr_005_4bce:
    nop
    rst $28
    rst $38
    nop
    jr nz, jr_005_4bcb

    ld hl, sp+$03
    nop
    rst $30
    nop
    inc b
    nop
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    ld b, $00
    ld hl, sp-$01
    rlca
    nop
    ld hl, sp-$09
    ld a, [bc]
    jr nz, jr_005_4b6d

    rst $28
    ld hl, sp+$05
    nop
    rst $28
    nop
    ld b, $00
    rst $30
    rst $38
    ld [$f700], sp
    rst $30
    inc c
    jr nz, jr_005_4b7e

    ldh a, [$f8]
    dec b

jr_005_4c01:
    nop
    ldh a, [rIE]
    dec b
    jr nz, @-$06

    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    add b

jr_005_4c0f:
    rst $28
    ld hl, sp+$05
    nop
    rst $28
    rst $38
    dec b
    jr nz, jr_005_4c0f

    ld hl, sp+$0b
    nop
    rst $30
    nop
    inc c
    nop
    add b
    inc l
    ld c, h
    dec a
    ld c, h
    ld c, [hl]
    ld c, h
    ld e, a
    ld c, h
    ld [hl], b
    ld c, h
    add c
    ld c, h
    xor $f8
    nop
    nop
    xor $00
    ld bc, $f600
    ld hl, sp+$02
    nop
    or $ff
    ld [bc], a
    jr nz, jr_005_4bbd

    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$03
    nop
    ld hl, sp-$01
    inc bc
    jr nz, jr_005_4bce

    xor $f8
    inc b
    nop
    xor $00
    dec b
    nop
    or $f8
    ld b, $00
    or $00
    rlca
    nop
    add b
    ldh a, [$fb]
    inc b
    nop
    ld hl, sp-$09
    add hl, bc
    nop
    ld hl, sp-$01
    ld a, [bc]
    nop
    ldh a, [$03]
    ld [$8000], sp
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    inc c
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp-$01
    dec c
    jr nz, jr_005_4c01

    xor $f8
    dec bc
    nop
    xor $00
    inc c

jr_005_4c88:
    nop
    or $f8
    ld c, $00
    or $ff
    ld c, $20
    add b
    sbc b
    ld c, h
    or c
    ld c, h
    jp z, $f74c

    ld sp, hl
    nop
    nop
    rst $30
    ld bc, $0001
    rst $28

jr_005_4ca1:
    ld hl, sp+$02
    nop
    rst $28
    nop
    inc bc
    nop
    rst $20
    ld hl, sp+$04
    nop
    rst $20
    nop
    dec b
    nop
    add b
    or $f8
    nop
    nop
    or $00
    ld bc, $e600
    ld hl, sp+$06
    nop
    and $00
    rlca
    nop
    xor $f8
    ld [$ee00], sp
    nop
    add hl, bc
    nop
    add b
    rst $30
    ld hl, sp+$00
    nop
    rst $30
    nop
    ld bc, $e700
    ld sp, hl
    ld a, [bc]
    nop
    rst $20
    ld bc, $000b
    rst $28
    ld sp, hl
    inc c
    nop
    rst $28
    ld bc, $000d
    add b
    rst $28
    ld c, h
    ld [$214d], sp
    ld c, l

jr_005_4ce9:
    ld a, [hl-]
    ld c, l
    ld d, e

jr_005_4cec:
    ld c, l
    ld l, h
    ld c, l
    jp hl


    ld hl, sp+$00
    nop
    jp hl


    nop
    nop
    jr nz, jr_005_4ce9

    ld hl, sp+$01

jr_005_4cfa:
    nop
    pop af
    nop
    ld [bc], a
    nop
    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    nop

jr_005_4d05:
    inc bc
    jr nz, jr_005_4c88

    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, jr_005_4cfa

    ld hl, sp+$04

jr_005_4d13:
    nop
    jp hl


    nop
    inc b
    jr nz, @-$0d

    ld hl, sp+$05
    nop
    pop af
    nop
    dec b
    jr nz, jr_005_4ca1

    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, jr_005_4d13

    ld sp, hl
    nop
    nop
    jp hl


    ld bc, $0006
    pop af
    ld hl, sp+$07

jr_005_4d34:
    nop
    pop af
    nop
    ld [$8000], sp
    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    inc bc
    jr nz, jr_005_4d34

    ld hl, sp+$0a
    nop
    pop af
    nop
    dec bc
    nop
    jp hl


    ld bc, $0009
    jp hl


    ld sp, hl
    inc b
    nop
    add b
    jp hl


    ld hl, sp+$00
    nop
    jp hl


    nop

jr_005_4d59:
    nop
    jr nz, @-$0d

    ld hl, sp+$0c
    nop
    ld sp, hl
    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    dec c

jr_005_4d66:
    jr nz, jr_005_4d59

    nop
    inc c

jr_005_4d6a:
    jr nz, jr_005_4cec

    pop af
    ld hl, sp+$0c
    nop
    ld sp, hl
    ld hl, sp+$0d
    nop
    ld sp, hl
    nop
    dec c

jr_005_4d77:
    jr nz, jr_005_4d6a

    nop
    inc c
    jr nz, jr_005_4d66

    ld hl, sp+$04
    nop
    jp hl


    nop
    inc b
    jr nz, jr_005_4d05

    sub c
    ld c, l
    and d
    ld c, l
    or e
    ld c, l
    call nz, $d54d
    ld c, l
    and $4d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f7]
    nop

jr_005_4da5:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    rst $38
    ld bc, $f820
    rst $30
    ld [bc], a
    jr nz, @-$7e

    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    dec b
    nop
    ld hl, sp+$00
    ld b, $00
    add b
    ldh a, [$f9]
    inc bc
    nop
    ldh a, [rSB]
    inc b
    nop
    ld hl, sp-$07
    rlca
    nop
    ld hl, sp+$01
    ld [$8000], sp
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    add hl, bc
    jr nz, @-$06

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f7]
    add hl, bc
    nop
    ldh a, [rIE]
    add hl, bc
    jr nz, @-$06

    rst $38
    ld a, [bc]
    jr nz, @-$06

    rst $30
    dec bc
    jr nz, jr_005_4d77

    inc bc
    ld c, [hl]
    inc d
    ld c, [hl]
    dec h
    ld c, [hl]
    ld [hl], $4e
    ld b, a
    ld c, [hl]
    ld e, b
    ld c, [hl]
    xor $f8
    nop
    nop
    xor $00

jr_005_4e09:
    ld bc, $f600
    ld hl, sp+$02
    nop
    or $00
    inc bc
    nop
    add b
    ldh a, [rIE]
    nop
    jr nz, jr_005_4e09

jr_005_4e19:
    rst $30
    ld bc, $f820
    rst $38
    ld [bc], a
    jr nz, jr_005_4e19

    rst $30
    inc bc
    jr nz, jr_005_4da5

    xor $f8
    inc b
    nop
    xor $00
    dec b
    nop
    or $f8
    ld b, $00
    or $00
    rlca
    nop
    add b
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    dec b
    nop
    add b
    xor $f8
    dec bc
    nop
    xor $00

jr_005_4e4d:
    inc c
    nop
    or $f8
    dec c
    nop
    or $00
    ld c, $00
    add b
    ldh a, [rIE]
    dec bc

jr_005_4e5b:
    jr nz, jr_005_4e4d

jr_005_4e5d:
    rst $30
    inc c
    jr nz, @-$06

    rst $38
    dec c
    jr nz, jr_005_4e5d

    rst $30
    ld c, $20
    add b
    ld [hl], l
    ld c, [hl]
    add [hl]
    ld c, [hl]
    sub a
    ld c, [hl]
    xor b
    ld c, [hl]
    cp c
    ld c, [hl]
    jp z, $f04e

jr_005_4e76:
    ld hl, sp+$00
    nop
    ldh a, [rIE]
    nop
    jr nz, jr_005_4e76

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rIE]
    inc bc
    jr nz, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f7]

jr_005_4e99:
    ld b, $00
    ldh a, [rIE]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ldh a, [$f8]
    ld b, $00
    add b
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rIE]
    dec c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rIE]
    dec c
    jr nz, @-$06

    rst $38
    ld c, $20
    ld hl, sp-$09
    rrca
    jr nz, jr_005_4e5b

    rst $20
    ld c, [hl]
    nop
    ld c, a
    add hl, de
    ld c, a
    ld l, $4f
    ld b, e
    ld c, a
    ld e, h
    ld c, a
    db $eb
    ld sp, hl
    nop
    db $10
    db $eb
    ld bc, $1001
    di
    ld sp, hl
    ld [bc], a
    db $10
    di
    ld bc, $1003
    ei
    ld sp, hl
    inc b
    db $10
    ei
    ld bc, $1005
    add b
    db $eb
    ld hl, sp+$00
    db $10
    db $eb
    nop
    ld bc, $f310
    ld hl, sp+$02
    db $10
    di
    nop
    inc bc
    db $10

jr_005_4f10:
    ei
    rst $38
    inc b
    jr nc, jr_005_4f10

    rst $30
    dec b
    jr nc, jr_005_4e99

    ldh a, [$f8]
    rlca
    db $10
    ldh a, [rP1]
    ld [$f810], sp
    ld hl, sp+$09
    db $10
    ld hl, sp+$00
    ld a, [bc]
    db $10
    add sp, -$08
    ld b, $10
    add b
    add sp, -$07
    ld b, $10
    ldh a, [$f9]
    rlca
    db $10
    ldh a, [rSB]
    ld [$f810], sp

jr_005_4f3b:
    ld sp, hl
    add hl, bc
    db $10
    ld hl, sp+$01
    ld a, [bc]
    db $10
    add b
    di
    ld hl, sp+$0b
    db $10
    di
    nop
    inc c
    db $10
    db $eb
    nop
    nop
    jr nc, jr_005_4f3b

    ld hl, sp+$01
    jr nc, @-$03

jr_005_4f54:
    ld sp, hl
    inc b
    db $10
    ei
    ld bc, $1005
    add b
    di
    rst $30
    dec bc
    db $10
    di
    rst $38
    inc c
    db $10
    db $eb
    rst $38
    nop
    jr nc, jr_005_4f54

    rst $30
    ld bc, $fb30
    rst $38
    inc b
    jr nc, @-$03

    rst $30
    dec b
    jr nc, @-$7e

    add c
    ld c, a
    sbc d
    ld c, a
    or e
    ld c, a
    call z, $e54f
    ld c, a
    cp $4f
    db $eb
    ld hl, sp+$00
    nop
    db $eb
    rst $38
    nop
    jr nz, @-$0b

    ld hl, sp+$01
    nop
    di
    nop
    ld [bc], a
    nop
    ei
    ld hl, sp+$03
    nop
    ei

jr_005_4f96:
    nop

jr_005_4f97:
    inc b
    nop
    add b
    db $eb
    rst $30
    nop
    nop
    db $eb
    cp $00
    jr nz, jr_005_4f96

    rst $30
    ld bc, $f300
    rst $38
    ld [bc], a
    nop

jr_005_4faa:
    ei
    cp $03
    jr nz, jr_005_4faa

    or $04
    jr nz, @-$7e

    jp hl


    ld hl, sp+$05

jr_005_4fb6:
    nop
    jp hl


    nop
    ld b, $00
    pop af
    ld hl, sp+$07
    nop
    pop af
    nop
    ld [$f900], sp
    ld hl, sp+$09
    nop
    ld sp, hl
    nop
    ld a, [bc]
    nop
    add b
    jp hl


    ld sp, hl
    dec b
    nop
    jp hl


    ld bc, $0006
    pop af
    ld sp, hl
    rlca
    nop
    pop af
    ld bc, $0008
    ld sp, hl
    ld sp, hl
    dec bc
    nop
    ld sp, hl

jr_005_4fe1:
    ld bc, $000c
    add b
    db $eb
    ld hl, sp+$0d
    nop
    db $eb
    rst $38
    dec c
    jr nz, jr_005_4fe1

    ld hl, sp+$0e
    nop
    di
    nop
    rrca
    nop
    ei
    ld hl, sp+$03
    nop
    ei

jr_005_4ffa:
    nop
    inc b
    nop
    add b
    db $eb
    rst $30
    dec c
    nop
    db $eb
    cp $0d
    jr nz, jr_005_4ffa

    rst $30
    ld c, $00
    di
    rst $38
    rrca
    nop

jr_005_500e:
    ei
    cp $03
    jr nz, jr_005_500e

    or $04
    jr nz, jr_005_4f97

    ld hl, $3650
    ld d, b
    ld c, e
    ld d, b
    ld e, h
    ld d, b
    ld [hl], c
    ld d, b
    add sp, -$08
    nop
    nop
    ldh a, [$f8]
    ld bc, $f000
    nop
    ld [bc], a
    nop
    ld hl, sp-$08
    inc bc
    nop
    ld hl, sp+$00

jr_005_5033:
    inc bc
    jr nz, jr_005_4fb6

    add sp, -$07
    nop
    nop
    ld hl, sp-$08
    inc bc
    nop
    ld hl, sp+$00

jr_005_5040:
    inc bc
    jr nz, jr_005_5033

    ld hl, sp+$04
    nop
    ldh a, [rP1]
    dec b
    nop
    add b
    ld hl, sp-$08
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    jr nz, @-$0e

    or $06
    nop
    ldh a, [$fe]
    rlca
    nop
    add b
    ld hl, sp-$08
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    jr nz, @-$0e

    or $06
    nop
    ldh a, [$fe]

jr_005_506a:
    add hl, bc
    nop
    add sp, -$01
    ld [$8000], sp
    ld hl, sp-$08
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    jr nz, jr_005_506a

    ld hl, sp+$0c
    nop
    ldh a, [rP1]
    dec c
    nop
    add sp, -$08
    ld a, [bc]
    nop
    add sp, $00
    dec bc
    nop
    add b
    sub [hl]
    ld d, b
    xor e
    ld d, b
    ret nz

    ld d, b
    push de
    ld d, b
    ld_long $ff50, a
    ld d, b
    add sp, -$03
    nop
    db $10
    ldh a, [$f9]
    ld bc, $f010
    ld bc, $1002
    ld hl, sp-$07
    inc bc
    db $10
    ld hl, sp+$01
    inc b
    db $10
    add b
    add sp, -$04
    nop
    jr nc, @-$0e

jr_005_50b0:
    nop
    ld bc, $f030

jr_005_50b4:
    ld hl, sp+$02
    jr nc, jr_005_50b0

    nop
    inc bc
    jr nc, jr_005_50b4

    ld hl, sp+$04
    jr nc, jr_005_5040

    add sp, $00

jr_005_50c2:
    dec b
    db $10
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    add sp, $01
    dec b
    db $10
    ldh a, [rSB]
    rlca
    db $10
    ldh a, [$f9]
    ld a, [bc]
    db $10
    ld hl, sp-$07
    dec bc
    db $10
    ld hl, sp+$01
    inc c
    db $10
    add b
    add sp, -$03
    dec b
    db $10
    ldh a, [$f9]
    dec c
    db $10
    ldh a, [rSB]

jr_005_50f4:
    ld c, $10
    ld hl, sp+$01

jr_005_50f8:
    rrca
    db $10
    ld hl, sp-$07
    inc bc
    db $10
    add b
    add sp, -$04
    dec b
    jr nc, jr_005_50f4

jr_005_5104:
    nop
    dec c

jr_005_5106:
    jr nc, jr_005_50f8

jr_005_5108:
    ld hl, sp+$0e
    jr nc, jr_005_5104

    ld hl, sp+$0f
    jr nc, jr_005_5108

    nop
    inc bc
    jr nc, @-$7e

    jr nz, jr_005_5167

    ld sp, $4251
    ld d, c
    ld d, e
    ld d, c
    ld h, h
    ld d, c
    ld [hl], l
    ld d, c
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]

jr_005_5126:
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [rP1]
    nop
    jr nz, jr_005_5126

jr_005_5136:
    ld hl, sp+$01
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_005_5136

    ld hl, sp+$03
    jr nz, jr_005_50c2

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c

jr_005_5167:
    nop
    ldh a, [rP1]

jr_005_516a:
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [rP1]
    inc c
    jr nz, jr_005_516a

    ld hl, sp+$0d
    jr nz, @-$06

jr_005_517e:
    nop
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_005_5106

    adc h
    ld d, c
    push bc
    ld d, c
    cp $51

jr_005_518c:
    db $e3
    nop
    nop
    nop
    db $e3
    rlca
    nop
    jr nz, @-$13

    ld hl, sp+$01
    nop
    db $eb
    nop
    ld [bc], a
    nop
    db $eb
    rlca
    ld [bc], a
    jr nz, jr_005_518c

    rrca
    ld bc, $f320
    ld hl, sp+$03
    nop
    di
    nop
    inc b
    nop
    di
    rlca
    inc b
    jr nz, @-$0b

    rrca
    inc bc
    jr nz, @-$03

    ld hl, sp+$05

jr_005_51b7:
    nop
    ei
    nop
    ld b, $00

jr_005_51bc:
    ei
    rrca
    dec b
    jr nz, jr_005_51bc

    rlca
    ld b, $20
    add b
    pop hl
    nop
    nop
    nop
    pop hl
    rlca
    nop
    jr nz, jr_005_51b7

    ld sp, hl

jr_005_51cf:
    ld bc, $e900
    nop
    ld [bc], a
    nop
    jp hl


    rlca
    ld [bc], a
    jr nz, @-$15

    ld c, $01
    jr nz, jr_005_51cf

    ld hl, sp+$08
    nop
    ld sp, hl
    ld hl, sp+$09
    nop
    ld sp, hl
    nop

jr_005_51e7:
    ld a, [bc]
    nop
    ld sp, hl
    rlca
    ld a, [bc]
    jr nz, jr_005_51e7

    rrca
    add hl, bc
    jr nz, @-$0d

    rrca
    ld [$f120], sp
    nop
    rlca
    nop
    pop af
    rlca
    rlca
    jr nz, jr_005_517e

    and $00
    nop
    nop
    and $07
    nop
    jr nz, @-$10

    nop
    ld [bc], a
    nop
    xor $07
    ld [bc], a
    jr nz, @-$10

    ld hl, sp+$0b
    nop
    or $f8
    inc c
    nop
    cp $f8
    dec c

jr_005_5219:
    nop
    cp $07
    ld c, $20
    cp $00
    ld c, $00
    cp $0f
    dec c

jr_005_5225:
    jr nz, @-$08

    rrca
    inc c
    jr nz, jr_005_5219

    rrca
    dec bc
    jr nz, jr_005_5225

    nop
    rrca
    nop
    or $07
    rrca
    jr nz, jr_005_51b7

    dec a
    ld d, d
    ld a, d
    ld d, d
    or a
    ld d, d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f000
    ld [$0002], sp
    ldh a, [rNR10]
    inc bc
    nop
    ld hl, sp-$08
    stop
    ld hl, sp+$00
    ld de, $f800
    ld [$0012], sp
    ld hl, sp+$10
    inc de
    nop
    ldh [$f8], a
    inc b
    nop
    ldh [rP1], a
    dec b
    nop
    ldh [$08], a
    ld b, $00
    add sp, -$06
    inc d
    nop
    add sp, $00
    dec d
    nop
    add sp, $08
    rlca
    nop
    add sp, $10

jr_005_5277:
    ld [$8000], sp
    ld hl, sp+$12
    db $10
    jr nz, jr_005_5277

jr_005_527f:
    ld a, [bc]
    ld de, $f820
    ld [bc], a
    ld [de], a
    jr nz, jr_005_527f

    ld a, [$2013]
    ldh [$f8], a
    inc b
    nop
    ldh [rP1], a
    dec b
    nop
    ldh [$08], a
    ld b, $00
    add sp, $08
    rlca
    nop
    add sp, $10
    ld [$f000], sp
    ld hl, sp+$0a
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$08]
    inc c
    nop
    ldh a, [rNR10]
    dec c
    nop
    add sp, -$08
    add hl, bc
    nop
    add sp, $00
    dec d
    nop
    add b
    ldh a, [rP1]
    ld bc, $f000
    ld [$0002], sp
    ldh a, [rNR10]
    inc bc
    nop
    ld hl, sp+$00
    ld de, $f800
    ld [$0012], sp
    ld hl, sp+$10
    inc de
    nop
    ldh [$f8], a
    inc b
    nop
    ldh [rP1], a
    dec b
    nop
    ldh [$08], a
    ld b, $00
    add sp, $08
    rlca
    nop
    add sp, $10
    ld [$e800], sp
    nop
    dec d
    nop
    add sp, -$08
    add hl, bc
    nop
    ldh a, [$f8]
    ld c, $00
    ld hl, sp-$08
    rrca
    nop
    add b
    ld a, [$3352]
    ld d, e
    ld [hl], b
    ld d, e
    ldh [$fc], a
    nop
    nop
    ldh [rDIV], a
    ld bc, $e000
    inc c
    ld [bc], a
    nop
    add sp, -$08
    inc bc
    nop
    add sp, $00
    inc b
    nop
    add sp, $0f
    inc bc
    jr nz, @-$16

jr_005_5313:
    rlca
    inc b
    jr nz, @-$0e

    ld hl, sp+$05
    nop
    ldh a, [rP1]

jr_005_531c:
    ld b, $00
    ldh a, [rIF]
    dec b
    jr nz, jr_005_5313

    rlca
    ld b, $20
    ld hl, sp-$04
    rlca
    nop
    ld hl, sp+$04
    ld [$f800], sp
    dec bc
    rlca
    jr nz, @-$7e

    ld hl, sp-$04
    rlca
    nop
    ld hl, sp+$0b
    rlca
    jr nz, jr_005_531c

    ld hl, sp+$09
    nop
    ldh [rP1], a
    ld a, [bc]
    nop
    ldh [$08], a
    dec bc
    nop
    add sp, -$08
    inc c
    nop
    add sp, $00
    dec c
    nop
    add sp, $08
    ld c, $00
    add sp, $10
    rrca
    nop
    ldh a, [$f8]

jr_005_5359:
    stop
    ldh a, [rP1]

jr_005_535d:
    ld de, $f000
    ld [$0012], sp
    ldh a, [rNR10]
    inc de
    nop
    ld hl, sp+$04
    inc d
    nop
    ldh [rNR10], a

jr_005_536d:
    jr jr_005_536f

jr_005_536f:
    add b
    ld hl, sp-$04
    rlca
    nop
    ld hl, sp+$0b
    rlca
    jr nz, jr_005_5359

    rrca
    add hl, bc
    jr nz, jr_005_535d

    rlca
    ld a, [bc]
    jr nz, @-$1e

    rst $38
    dec bc
    jr nz, jr_005_536d

jr_005_5385:
    rrca
    inc c
    jr nz, @-$16

jr_005_5389:
    rlca
    dec c
    jr nz, @-$16

jr_005_538d:
    rst $38
    ld c, $20
    add sp, -$09
    rrca
    jr nz, jr_005_5385

    rrca
    db $10
    jr nz, jr_005_5389

    rst $30
    inc de
    jr nz, jr_005_538d

    rst $38
    dec d
    nop
    ldh a, [rTAC]
    ld d, $00
    ld hl, sp+$04
    rla
    nop
    ldh [$f7], a
    jr @+$22

    add b
    xor a
    ld d, e
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    add $53
    rst $18

jr_005_53c3:
    ld d, e
    ld hl, sp+$53
    db $e4
    ld hl, sp+$00
    db $10
    db $ec
    ld hl, sp+$01
    db $10
    db $f4
    ld hl, sp+$02
    db $10
    db $f4
    rst $38
    ld [bc], a
    jr nc, jr_005_53c3

    rst $38
    ld bc, $e430
    rst $38
    nop
    jr nc, @-$7e

    ld [$00f8], a
    db $10
    ld [$00ff], a
    jr nc, @-$0c

    rst $38
    inc bc
    jr nc, @-$0c

    ld hl, sp+$03
    db $10
    ld a, [$04f8]
    db $10
    ld a, [$04ff]
    jr nc, @-$7e

    db $ec
    ld hl, sp+$00
    db $10
    db $ec
    rst $38
    nop
    jr nc, @-$0a

    ld hl, sp+$05
    db $10
    db $f4

jr_005_5405:
    rst $38
    dec b
    jr nc, jr_005_5405

    ld hl, sp+$06
    db $10
    db $fc
    rst $38
    ld b, $30
    add b
    rla
    ld d, h
    ld h, b
    ld d, h
    xor c
    ld d, h
    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    ld bc, $e000
    nop
    ld [bc], a
    nop
    ldh [rNR22], a
    nop
    jr nz, @-$1e

    rrca

jr_005_5429:
    ld bc, $e020
    rlca
    ld [bc], a
    jr nz, @-$16

jr_005_5430:
    ld hl, sp+$03
    nop
    add sp, $00
    inc b
    nop
    add sp, $0f
    inc bc
    jr nz, @-$16

jr_005_543c:
    rlca
    inc b
    jr nz, jr_005_5430

    ld hl, sp+$05
    nop
    ldh a, [rP1]
    ld b, $00
    ldh a, [rIF]
    dec b
    jr nz, jr_005_543c

    rlca
    ld b, $20
    ld hl, sp-$08
    rlca
    nop
    ld hl, sp+$00
    ld [$f800], sp
    rrca
    rlca
    jr nz, @-$06

    rlca
    ld [$8020], sp
    pop hl
    ld hl, sp+$0a
    nop
    pop hl
    nop
    dec bc
    nop
    pop hl
    rlca
    inc c
    nop
    pop hl
    rrca
    dec c
    nop
    jp hl


    ld hl, sp+$0e
    nop
    jp hl


    nop
    rrca
    nop
    jp hl


    rlca
    stop
    jp hl


    rrca
    ld de, $d900
    ei
    add hl, bc
    nop
    jp hl


    rla

jr_005_5486:
    ld [de], a
    nop
    pop af
    ld hl, sp+$05
    nop
    pop af
    nop
    ld b, $00
    pop af
    rrca
    dec b

jr_005_5493:
    jr nz, jr_005_5486

    rlca
    ld b, $20
    ld sp, hl
    ld hl, sp+$13
    nop
    ld sp, hl
    nop

jr_005_549e:
    inc d
    nop
    ld sp, hl
    rrca
    inc de

jr_005_54a3:
    jr nz, jr_005_549e

    rlca
    inc d
    jr nz, jr_005_5429

    pop hl
    rrca

jr_005_54ab:
    ld a, [bc]
    jr nz, @-$1d

    rlca

jr_005_54af:
    dec bc
    jr nz, jr_005_5493

    nop
    inc c
    jr nz, @-$1d

    ld hl, sp+$0d
    jr nz, jr_005_54a3

    rrca
    ld c, $20
    jp hl


    rlca
    rrca
    jr nz, jr_005_54ab

    nop

jr_005_54c3:
    db $10
    jr nz, jr_005_54af

    ld hl, sp+$11
    jr nz, jr_005_54a3

    inc c
    add hl, bc
    jr nz, @-$15

    ldh a, [rNR12]
    jr nz, jr_005_54c3

    ld hl, sp+$05
    nop
    pop af
    nop
    ld b, $00
    pop af
    rrca
    dec b
    jr nz, @-$0d

    rlca
    ld b, $20
    ld sp, hl
    ld hl, sp+$13
    nop
    ld sp, hl
    nop

jr_005_54e7:
    inc d
    nop
    ld sp, hl
    rrca
    inc de
    jr nz, jr_005_54e7

    rlca
    inc d
    jr nz, @-$7e

    db $fc
    ld d, h
    dec a
    ld d, l
    ld a, [hl]
    ld d, l
    cp a
    ld d, l
    nop
    ld d, [hl]
    ldh [$f8], a
    nop
    nop
    ldh [rP1], a
    ld bc, $e000
    ld [$0002], sp
    add sp, -$08
    stop
    add sp, $00
    ld de, $e800

jr_005_5511:
    ld [$0012], sp
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rP1]
    inc b
    nop
    ld hl, sp-$08
    inc de
    nop
    ld hl, sp+$00
    inc d
    nop
    ldh a, [$08]
    dec b
    nop
    ld hl, sp+$0f
    inc de
    jr nz, @-$06

    rlca
    inc d
    jr nz, jr_005_5511

    rrca
    nop
    jr nz, @-$16

    rrca
    inc c
    jr nz, @-$0e

    rrca

jr_005_553a:
    ld c, $20
    add b
    ldh [$f8], a

jr_005_553f:
    nop
    nop
    add sp, -$08
    stop
    ldh a, [$f8]
    inc bc
    nop
    ld hl, sp-$08
    inc de
    nop
    ld hl, sp+$00
    inc d
    nop
    ld hl, sp+$0f
    inc de
    jr nz, @-$06

    rlca
    inc d
    jr nz, jr_005_553a

    rrca
    nop
    jr nz, @-$16

    rrca
    db $10
    jr nz, @-$0e

    rrca
    inc bc
    jr nz, @-$1e

    nop
    ld b, $00
    ldh [$08], a
    rlca
    nop
    add sp, $00
    ld [$e800], sp
    ld [$0009], sp
    ldh a, [rP1]
    ld a, [bc]
    nop
    ldh a, [$08]
    dec bc
    nop
    add b
    ldh [$f8], a

jr_005_5580:
    nop
    nop
    ld hl, sp-$08
    inc de
    nop
    ld hl, sp+$00
    inc d
    nop
    ld hl, sp+$0f
    inc de
    jr nz, @-$06

jr_005_558f:
    rlca
    inc d
    jr nz, @-$1e

    rrca
    nop
    jr nz, @-$16

    rrca
    inc c
    jr nz, @-$0e

    rrca
    ld c, $20
    ldh [rP1], a
    dec d
    nop
    ldh [rTAC], a
    dec d
    jr nz, jr_005_558f

    ld hl, sp+$0c
    nop
    add sp, $00

jr_005_55ac:
    dec c
    nop
    ldh a, [$f8]
    ld c, $00
    ldh a, [rP1]
    rrca
    nop
    add sp, $07

jr_005_55b8:
    dec c
    jr nz, @-$0e

    rlca
    rrca
    jr nz, jr_005_553f

    ldh [rIF], a
    nop
    jr nz, jr_005_55ac

jr_005_55c4:
    rrca
    db $10
    jr nz, jr_005_55b8

jr_005_55c8:
    rrca
    inc bc
    jr nz, jr_005_55c4

jr_005_55cc:
    rrca
    inc de
    jr nz, jr_005_55c8

    rlca
    inc d
    jr nz, jr_005_55cc

    ld hl, sp+$13
    nop
    ld hl, sp+$00
    inc d
    nop
    ldh [$f8], a
    nop
    nop
    add sp, -$08
    stop
    ldh a, [$f8]

jr_005_55e5:
    inc bc
    nop
    ldh [rTAC], a
    ld b, $20
    ldh [rIE], a
    rlca
    jr nz, @-$16

    rlca
    ld [$e820], sp
    rst $38

jr_005_55f5:
    add hl, bc
    jr nz, @-$0e

    rlca

jr_005_55f9:
    ld a, [bc]
    jr nz, @-$0e

    rst $38
    dec bc
    jr nz, jr_005_5580

    ldh [rIF], a
    nop
    jr nz, jr_005_55e5

    rlca
    ld bc, $e020

jr_005_5609:
    rst $38
    ld [bc], a
    jr nz, jr_005_55f5

jr_005_560d:
    rrca
    db $10
    jr nz, jr_005_55f9

    rlca
    ld de, $e820
    rst $38
    ld [de], a
    jr nz, jr_005_5609

jr_005_5619:
    rrca
    inc bc
    jr nz, jr_005_560d

jr_005_561d:
    rlca
    inc b
    jr nz, jr_005_5619

    rrca
    inc de
    jr nz, jr_005_561d

jr_005_5625:
    rlca
    inc d
    jr nz, jr_005_5619

    rst $38
    dec b
    jr nz, jr_005_5625

    ld hl, sp+$13
    nop
    ld hl, sp+$00
    inc d
    nop
    ldh [$f8], a
    nop
    nop
    add sp, -$08
    inc c
    nop
    ldh a, [$f8]
    ld c, $00
    add b
    ld b, a
    ld d, [hl]
    adc b
    ld d, [hl]
    call $d856
    ld hl, sp+$00
    nop
    ldh [$fc], a
    ld bc, $e000
    inc b
    ld [bc], a
    nop
    and $13
    nop
    ld h, b
    ldh [$0c], a
    inc bc
    nop
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    add sp, $08
    ld b, $00
    add sp, $10
    rlca
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    ldh a, [rNR10]
    dec bc
    nop
    ld hl, sp-$01
    inc c
    nop
    ld hl, sp+$07
    dec c
    nop
    ld hl, sp+$0f
    ld c, $00
    add b
    ret c

    ld hl, sp+$00
    nop
    ldh [$fc], a
    ld bc, $e000
    inc b
    ld [bc], a
    nop
    and $13
    nop
    ld h, b
    ldh a, [$08]
    ld a, [bc]
    nop
    ldh [$0c], a
    inc bc
    nop
    add sp, $08
    ld b, $00
    add sp, -$08
    rrca
    nop
    add sp, $00
    stop
    add sp, $10
    ld de, $f000
    ld hl, sp+$12
    nop
    ldh a, [rP1]
    inc de
    nop
    ldh a, [rNR10]
    inc d
    nop
    ld hl, sp+$07
    dec c
    nop
    ld hl, sp-$01
    dec d
    nop
    ld hl, sp-$0d
    nop
    ld b, b
    ld hl, sp+$0f
    ld d, $00
    add b
    ret c

    ld hl, sp+$00
    nop
    ldh [$fc], a
    ld bc, $e000
    inc b
    ld [bc], a
    nop
    and $13
    nop
    ld h, b
    ldh [$0c], a
    inc bc
    nop
    ld hl, sp+$07
    dec c
    nop
    ld hl, sp-$01
    dec d
    nop
    add sp, -$08
    jr jr_005_56ed

jr_005_56ed:
    add sp, $00
    add hl, de
    nop
    add sp, $08
    ld b, $00
    add sp, $10
    ld a, [de]
    nop
    ldh a, [$f8]
    dec de
    nop
    ldh a, [rP1]
    inc e
    nop
    ldh a, [$08]
    dec e
    nop
    ldh a, [rNR10]
    ld e, $00
    ld hl, sp+$0f
    rra
    nop
    add sp, -$10
    rla
    nop
    add b
    jr jr_005_576b

    add hl, hl
    ld d, a
    ld a, [hl-]
    ld d, a
    rst $28
    ld hl, sp+$00
    nop
    rst $28
    nop
    ld bc, $f700
    ld hl, sp+$02
    nop
    rst $30
    nop
    inc bc
    nop
    add b
    rst $28
    ld sp, hl
    inc b
    nop
    rst $28
    ld bc, $0005
    rst $30
    ld sp, hl
    ld b, $00
    rst $30
    ld bc, $0007
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ld d, e
    ld d, a
    ld h, h
    ld d, a
    ld [hl], l
    ld d, a
    add [hl]
    ld d, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b

jr_005_576b:
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    sbc l
    ld d, a
    or [hl]
    ld d, a
    rst $08
    ld d, a
    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $f000
    ld hl, sp+$02
    nop
    ldh a, [rP1]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    add sp, -$08
    ld b, $00
    add sp, $00
    rlca
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    add b
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    add sp, -$08
    ld a, [bc]
    nop
    add sp, $00
    dec bc
    nop
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    add b
    xor $57
    cpl
    ld e, b
    ld [hl], b
    ld e, b
    ldh [$f8], a
    nop
    nop
    ldh [rP1], a
    ld bc, $e000
    ld [$0002], sp
    ldh [rNR10], a
    inc bc
    nop
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    add sp, $08
    ld b, $00
    add sp, $10
    rlca
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    ldh a, [rNR10]
    dec bc
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp+$08
    ld c, $00
    ld hl, sp+$10
    rrca
    nop
    add b
    ldh [$f8], a
    nop
    nop
    ldh [rP1], a
    ld bc, $e000
    ld [$0002], sp
    add sp, $08
    ld b, $00
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp+$08
    ld c, $00
    add sp, -$08
    stop
    add sp, $00
    ld de, $f000
    ld hl, sp+$12
    nop
    ldh [rNR10], a
    inc de
    nop
    add sp, $10
    inc d
    nop
    ldh a, [rNR10]
    dec d
    nop
    ld hl, sp+$10
    ld d, $00
    add b
    ldh [$f8], a
    nop
    nop
    ldh [rP1], a
    ld bc, $e000
    ld [$0002], sp
    add sp, $08
    ld b, $00
    ldh a, [$08]
    ld a, [bc]
    nop
    ld hl, sp-$08
    inc c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp+$08
    ld c, $00
    add sp, -$08
    rla
    nop
    add sp, $00
    jr jr_005_5898

jr_005_5898:
    ldh a, [$f8]
    add hl, de
    nop
    ldh a, [rP1]
    ld a, [de]
    nop
    ret c

    db $10
    dec de
    nop
    ldh [rNR10], a
    inc e
    nop
    add sp, $10
    dec e
    nop
    ldh a, [rNR10]
    ld e, $00

jr_005_58b0:
    ld hl, sp+$10
    rra
    nop
    add b
    cp e
    ld e, b
    ld [$5559], sp
    ld e, c
    db $db
    push af
    nop
    nop
    db $e3
    push af
    ld bc, $e000
    ld hl, sp+$02
    nop
    ldh [rP1], a
    inc bc
    nop
    ldh [rTAC], a
    inc bc
    jr nz, jr_005_58b0

    rrca
    inc b
    nop
    ldh [rNR22], a
    dec b
    nop
    add sp, -$08
    ld b, $00
    add sp, $00
    rlca
    nop
    add sp, $08
    ld [$e800], sp
    db $10
    add hl, bc
    nop
    ldh a, [$f8]
    ld a, [bc]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$08]
    inc c
    nop
    ldh a, [rNR10]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00

jr_005_58fd:
    rrca
    nop

Jump_005_58ff:
    ld hl, sp+$08
    stop
    ld hl, sp+$10
    ld de, $8000
    db $db
    push af
    nop
    nop
    db $e3
    push af
    ld bc, $e000
    ld hl, sp+$02
    nop
    ldh [rP1], a
    inc bc
    nop
    ldh [rTAC], a
    inc bc
    jr nz, jr_005_58fd

    rrca
    inc b
    nop
    ldh [rNR22], a
    dec b
    nop
    add sp, $00
    rlca
    nop
    add sp, -$08
    ld [de], a
    nop
    add sp, $07
    rlca
    jr nz, @-$16

jr_005_5931:
    rrca
    inc de
    nop
    ldh a, [$f8]
    inc d
    nop
    ldh a, [rP1]
    dec d
    nop
    ldh a, [rTAC]
    dec d
    jr nz, jr_005_5931

    rrca
    ld d, $00
    ld hl, sp-$08
    rla
    nop
    ld hl, sp+$00

jr_005_594a:
    jr jr_005_594c

jr_005_594c:
    ld hl, sp+$07
    jr jr_005_5970

    ld hl, sp+$0f
    add hl, de
    nop
    add b
    db $db
    push af
    nop
    nop
    db $e3
    push af
    ld bc, $e000

jr_005_595e:
    ld hl, sp+$02
    nop
    ldh [rP1], a
    inc bc
    nop
    ldh [rTAC], a
    inc bc
    jr nz, jr_005_594a

    rrca
    inc b
    nop
    ldh [rNR22], a
    dec b

jr_005_5970:
    nop
    add sp, $07
    rlca
    jr nz, jr_005_595e

    rst $38
    ld [$f020], sp

jr_005_597a:
    rlca
    dec bc
    jr nz, @-$0e

jr_005_597e:
    rst $38
    inc c
    jr nz, jr_005_597a

    rlca
    rrca
    jr nz, jr_005_597e

    rst $38
    db $10
    jr nz, @-$16

    rst $30
    ld a, [de]
    nop
    ldh a, [$f7]
    inc e
    nop
    ld hl, sp-$09
    ld e, $00
    add sp, $0f
    dec de
    nop
    ldh a, [rIF]
    dec e
    nop
    ld hl, sp+$0f
    rra
    nop

jr_005_59a1:
    add b
    xor b
    ld e, c
    ld sp, hl
    ld e, c
    ld c, d
    ld e, d
    ldh [$f8], a
    ld bc, $e000
    nop
    ld [bc], a
    nop
    ldh [rIF], a
    ld bc, $e020

jr_005_59b5:
    rlca
    ld [bc], a
    jr nz, jr_005_59a1

    ldh a, [$03]
    nop
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    add sp, $17
    inc bc
    jr nz, @-$16

jr_005_59c9:
    rrca

jr_005_59ca:
    inc b
    jr nz, jr_005_59b5

    rlca
    dec b
    jr nz, @-$0e

    ld hl, sp+$06
    nop
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$0e

    rrca

jr_005_59ea:
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_59c9

    db $fc
    nop
    nop
    ret c

    dec bc
    nop
    jr nz, @-$7e

    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_59ea

    ld hl, sp+$0d
    nop
    ldh [rP1], a
    ld c, $00
    add sp, -$10
    rrca
    nop
    add sp, -$08
    stop
    add sp, $00

jr_005_5a1b:
    ld de, $f000

jr_005_5a1e:
    ld hl, sp+$12
    nop
    ldh a, [rP1]
    inc de
    nop
    ldh a, [rIF]
    ld [de], a
    jr nz, @-$0e

    rlca
    inc de
    jr nz, @-$16

    rrca
    db $10
    jr nz, @-$16

    rlca
    ld de, $e820
    rla
    rrca
    jr nz, @-$1e

    rrca

jr_005_5a3b:
    dec c
    jr nz, jr_005_5a1e

    rlca
    ld c, $20
    ret c

    cp $0c
    nop
    ret c

    add hl, bc
    inc c
    jr nz, jr_005_59ca

    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_5a3b

jr_005_5a5b:
    ld hl, sp+$15
    nop
    ldh [rP1], a
    ld d, $00
    add sp, -$10
    rla
    nop
    add sp, -$08
    jr jr_005_5a6a

jr_005_5a6a:
    add sp, $00
    add hl, de
    nop
    add sp, $17
    rla
    jr nz, jr_005_5a5b

    rrca
    jr jr_005_5a96

    add sp, $07
    add hl, de
    jr nz, jr_005_5a5b

    rrca
    dec d
    jr nz, @-$1e

jr_005_5a7f:
    rlca
    ld d, $20
    ldh a, [$f8]
    ld a, [de]
    nop
    ldh a, [rP1]
    dec de
    nop
    ldh a, [rIF]
    ld a, [de]
    jr nz, jr_005_5a7f

    rlca
    dec de
    jr nz, @-$26

    db $fc
    inc d
    nop

jr_005_5a96:
    ret c

    dec bc
    inc d
    jr nz, jr_005_5a1b

    and c
    ld e, d
    ld [$3b5a], a
    ld e, e
    ldh [$f9], a
    nop
    nop
    ldh [rSB], a
    ld bc, $e000
    add hl, bc
    ld [bc], a
    nop
    ldh [rNR11], a
    inc bc
    nop
    add sp, -$07
    inc b
    nop
    add sp, $01
    dec b
    nop
    add sp, $09

jr_005_5abb:
    ld b, $00
    add sp, $11
    rlca
    nop
    ldh a, [$f7]
    ld [$f000], sp
    rst $38
    add hl, bc
    nop
    ldh a, [rTAC]
    ld a, [bc]
    nop
    ldh a, [rIF]
    dec bc
    nop
    ld hl, sp-$09
    inc c
    nop
    ld hl, sp-$01
    dec c
    nop
    ld hl, sp+$07
    ld c, $00
    ld hl, sp+$0f
    rrca
    nop
    pop af
    rla

jr_005_5ae3:
    stop
    ld a, [c]
    rst $28
    db $10
    jr nz, jr_005_5a6a

    ldh [$f8], a
    ld de, $e000

jr_005_5aef:
    nop
    ld [de], a
    nop
    ldh [rIF], a
    ld de, $e020
    rlca
    ld [de], a
    jr nz, jr_005_5ae3

jr_005_5afb:
    ld hl, sp+$13
    nop
    add sp, $00
    inc d
    nop
    add sp, $0f
    inc de
    jr nz, jr_005_5aef

    rlca
    inc d
    jr nz, jr_005_5afb

jr_005_5b0b:
    ldh a, [$15]
    nop
    ldh a, [$f8]
    ld d, $00
    ldh a, [rP1]
    rla
    nop
    ldh a, [rNR22]
    dec d
    jr nz, jr_005_5b0b

jr_005_5b1b:
    rrca
    ld d, $20
    ldh a, [rTAC]

jr_005_5b20:
    rla
    jr nz, jr_005_5b1b

    ldh a, [rNR23]
    nop
    ld hl, sp-$08

jr_005_5b28:
    add hl, de
    nop
    ld hl, sp+$00
    ld a, [de]
    nop
    ld hl, sp+$17
    jr jr_005_5b52

    ld hl, sp+$0f

jr_005_5b34:
    add hl, de
    jr nz, @-$06

    rlca

jr_005_5b38:
    ld a, [de]
    jr nz, jr_005_5abb

    ldh [$0e], a
    nop
    jr nz, jr_005_5b20

jr_005_5b40:
    ld b, $01
    jr nz, @-$1e

    cp $02
    jr nz, jr_005_5b28

    or $03
    jr nz, jr_005_5b34

jr_005_5b4c:
    ld c, $04
    jr nz, jr_005_5b38

    ld b, $05

jr_005_5b52:
    jr nz, @-$16

    cp $06
    jr nz, jr_005_5b40

jr_005_5b58:
    or $07
    jr nz, jr_005_5b4c

    db $10
    ld [$f020], sp
    ld [$2009], sp
    ldh a, [rP1]
    ld a, [bc]
    jr nz, jr_005_5b58

jr_005_5b68:
    ld hl, sp+$0b
    jr nz, @-$06

    db $10

jr_005_5b6d:
    inc c
    jr nz, jr_005_5b68

    ld [$200d], sp
    ld hl, sp+$00
    ld c, $20
    ld hl, sp-$08
    rrca
    jr nz, jr_005_5b6d

    ldh a, [rNR10]
    jr nz, @-$0c

    jr @+$12

    nop
    add b
    adc d
    ld e, e
    rst $10
    ld e, e
    inc h
    ld e, h
    ldh a, [$f8]
    rlca
    nop
    ldh a, [rP1]
    ld [$f000], sp
    ld [$0009], sp
    ldh a, [rNR10]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    dec c
    nop
    ld hl, sp+$10
    ld c, $00
    ldh [$f9], a
    ld [bc], a
    nop
    ldh [rSB], a
    inc bc
    nop
    ldh [rNR11], a
    ld [bc], a
    jr nz, @-$1e

    add hl, bc
    inc bc
    jr nz, @-$16

    db $fd
    inc b
    nop
    add sp, $05
    dec b
    nop
    add sp, $0d
    ld b, $00
    ret c

    nop
    nop

jr_005_5bc9:
    nop
    ret c

    ld [$0001], sp
    ret c

    ld a, [bc]
    nop
    jr nz, jr_005_5bc9

    jr @+$11

    nop
    add b
    ldh a, [$f8]
    rlca
    nop
    ldh a, [rP1]
    ld [$f800], sp
    ld hl, sp+$0b
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    dec c
    nop
    ld hl, sp+$10
    ld c, $00
    ldh [$f9], a
    ld [bc], a
    nop
    ldh [rSB], a
    inc bc
    nop
    ldh [rNR11], a
    ld [bc], a
    jr nz, @-$1e

    add hl, bc
    inc bc
    jr nz, @-$26

    nop
    nop

jr_005_5c02:
    nop
    ret c

    ld [$0001], sp
    ret c

    ld a, [bc]
    nop
    jr nz, jr_005_5c02

    jr jr_005_5c1d

    nop
    add sp, -$03
    stop
    add sp, $05
    ld de, $e800
    dec c
    ld [de], a
    nop
    ldh a, [$08]

jr_005_5c1d:
    inc de
    nop
    ldh a, [rNR10]

jr_005_5c21:
    inc d
    nop
    add b
    ldh a, [$f8]
    rlca
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    dec c
    nop
    ld hl, sp+$10
    ld c, $00
    ldh [$f9], a
    ld [bc], a
    nop
    ldh [rSB], a
    inc bc
    nop
    ldh [rNR11], a
    ld [bc], a
    jr nz, @-$1e

    add hl, bc
    inc bc
    jr nz, jr_005_5c21

    nop
    nop

jr_005_5c4b:
    nop
    ret c

    ld [$0001], sp
    ret c

    ld a, [bc]
    nop
    jr nz, jr_005_5c4b

    jr jr_005_5c66

    nop
    add sp, -$03
    dec d
    nop
    add sp, $05
    ld d, $00
    add sp, $0d
    rla
    nop
    ldh a, [rP1]

jr_005_5c66:
    jr jr_005_5c68

jr_005_5c68:
    ldh a, [$08]
    add hl, de
    nop
    ldh a, [rNR10]
    ld a, [de]
    nop
    add b
    ld [hl], a
    ld e, h
    ret z

    ld e, h
    add hl, de
    ld e, l
    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    ld bc, $e000
    nop
    ld [bc], a
    nop
    ldh [rNR22], a
    nop
    jr nz, jr_005_5c68

jr_005_5c88:
    rrca
    ld bc, $e020

jr_005_5c8c:
    rlca
    ld [bc], a
    jr nz, @-$16

    ldh a, [$03]
    nop
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    add sp, $17
    inc bc
    jr nz, jr_005_5c88

    rrca
    inc b
    jr nz, jr_005_5c8c

    rlca
    dec b
    jr nz, @-$0e

    ld hl, sp+$06
    nop
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ld hl, sp+$0f

jr_005_5cb9:
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$0e

    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, @-$7e

    ld hl, sp-$08
    ld [$f800], sp

jr_005_5ccd:
    nop
    add hl, bc
    nop
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_5cb9

jr_005_5cd9:
    ldh a, [$0a]
    nop
    ldh [$f8], a
    dec bc
    nop
    ldh [rP1], a
    inc c
    nop
    ldh [rNR22], a
    ld a, [bc]
    jr nz, @-$1e

jr_005_5ce9:
    rrca

jr_005_5cea:
    dec bc
    jr nz, jr_005_5ccd

    rlca
    inc c
    jr nz, jr_005_5cd9

    ldh a, [$0d]
    nop
    add sp, -$08
    ld c, $00
    add sp, $00
    rrca
    nop
    add sp, $17
    dec c
    jr nz, jr_005_5ce9

    rrca
    ld c, $20
    add sp, $07
    rrca
    jr nz, @-$0e

    ld hl, sp+$10
    nop
    ldh a, [rP1]
    ld de, $f000
    rrca
    db $10
    jr nz, @-$0e

    rlca
    ld de, $8020
    ld hl, sp-$08
    ld [$f800], sp

jr_005_5d1e:
    nop
    add hl, bc
    nop
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$1e

jr_005_5d2a:
    ldh a, [rNR12]
    nop
    ldh [$f8], a
    inc de
    nop
    ldh [rP1], a
    inc d
    nop
    ldh [rNR22], a
    ld [de], a
    jr nz, @-$1e

jr_005_5d3a:
    rrca
    inc de
    jr nz, jr_005_5d1e

    rlca
    inc d
    jr nz, jr_005_5d2a

    ldh a, [$15]
    nop
    add sp, -$08
    ld d, $00
    add sp, $00
    rla
    nop
    add sp, $17
    dec d
    jr nz, jr_005_5d3a

    rrca
    ld d, $20
    add sp, $07
    rla
    jr nz, @-$0e

    ld hl, sp+$18
    nop
    ldh a, [rP1]
    add hl, de
    nop
    ldh a, [rIF]
    jr @+$22

    ldh a, [rTAC]
    add hl, de
    jr nz, jr_005_5cea

    ld a, b
    ld e, l
    pop de
    ld e, l
    ld h, $5e
    ld [hl], e
    ld e, [hl]
    ret z

    ld e, [hl]
    dec d
    ld e, a
    ld l, [hl]
    ld e, a
    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    ld bc, $e000
    nop
    ld [bc], a
    nop
    ldh [rNR22], a
    nop
    jr nz, @-$1e

jr_005_5d89:
    rrca
    ld bc, $e020

jr_005_5d8d:
    rlca
    ld [bc], a
    jr nz, @-$16

    ldh a, [$03]
    nop
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    add sp, $17
    inc bc
    jr nz, jr_005_5d89

    rrca
    inc b
    jr nz, jr_005_5d8d

    rlca
    dec b
    jr nz, @-$0e

    ldh a, [rTMA]
    nop
    ldh a, [$f8]
    rlca
    nop
    ldh a, [rP1]
    ld [$f000], sp
    rla
    ld b, $20
    ldh a, [rIF]
    rlca
    jr nz, @-$0e

    rlca
    ld [$f820], sp
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld hl, sp+$0f
    add hl, bc
    jr nz, @-$06

    rlca
    ld a, [bc]
    jr nz, @-$7e

    ldh [$f0], a
    nop
    nop
    ldh [$f8], a
    ld bc, $e000
    nop
    ld [bc], a
    nop
    add sp, -$10
    inc bc
    nop
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    ldh a, [$f0]
    ld b, $00
    ldh a, [$f8]
    rlca
    nop
    ldh a, [rP1]
    ld [$f800], sp
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld hl, sp+$0f
    add hl, bc
    jr nz, @-$06

    rlca
    ld a, [bc]
    jr nz, @-$26

    rlca
    dec bc
    nop
    ret c

    rrca
    inc c
    nop
    ldh [rTAC], a
    dec c
    nop
    ldh [rIF], a
    ld c, $00
    add sp, $0f
    stop
    add sp, $07
    rrca
    nop
    ldh a, [rTAC]
    ld de, $f000
    rrca
    ld [de], a
    nop

jr_005_5e25:
    add b
    ld [c], a
    ldh a, [rP1]
    nop
    ld [c], a
    ld hl, sp+$01
    nop
    ld [c], a
    nop
    ld [bc], a
    nop
    ld [c], a
    rrca
    ld bc, $e220
    rlca
    ld [bc], a
    jr nz, jr_005_5e25

    ldh a, [$03]
    nop
    ld [$04f8], a
    nop
    ld [$0500], a
    nop
    ld a, [c]
    ldh a, [rTMA]
    nop
    ld [$1308], a
    nop
    ld [$1410], a
    nop
    pop af
    ld hl, sp+$15
    nop
    pop af
    nop

jr_005_5e58:
    ld d, $00
    pop af
    ld [$0017], sp
    pop af
    db $10
    jr jr_005_5e62

jr_005_5e62:
    ld sp, hl
    ld hl, sp+$19
    nop
    ld sp, hl
    nop

jr_005_5e68:
    ld a, [de]
    nop
    ld sp, hl
    ld [$001b], sp
    ld sp, hl
    db $10

jr_005_5e70:
    inc e
    nop
    add b
    ldh [rNR22], a
    nop
    jr nz, jr_005_5e58

    rrca
    ld bc, $e020

jr_005_5e7c:
    rlca
    ld [bc], a
    jr nz, jr_005_5e68

    rla
    inc bc
    jr nz, @-$16

jr_005_5e84:
    rrca
    inc b
    jr nz, jr_005_5e70

    rlca
    dec b
    jr nz, jr_005_5e7c

    rla
    ld b, $20
    ldh a, [rIF]
    rlca
    jr nz, jr_005_5e84

jr_005_5e94:
    rlca

jr_005_5e95:
    ld [$f820], sp

jr_005_5e98:
    rrca
    add hl, bc
    jr nz, jr_005_5e94

    rlca
    ld a, [bc]
    jr nz, jr_005_5e98

jr_005_5ea0:
    ld hl, sp+$09
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ret c

    nop
    dec bc
    jr nz, jr_005_5e84

    ld hl, sp+$0c
    jr nz, @-$1e

jr_005_5eb0:
    nop
    dec c
    jr nz, jr_005_5e94

    ld hl, sp+$0e
    jr nz, jr_005_5ea0

    ld hl, sp+$10
    jr nz, @-$16

    nop
    rrca
    jr nz, jr_005_5eb0

    nop
    ld de, $f020
    ld hl, sp+$12
    jr nz, @-$7e

    ld [c], a
    rla
    nop

jr_005_5ecb:
    jr nz, @-$1c

    rrca
    ld bc, $e220
    rlca
    ld [bc], a
    jr nz, @-$1c

    ld hl, sp+$01
    nop
    ld [c], a
    nop
    ld [bc], a

jr_005_5edb:
    nop
    ld [$0317], a
    jr nz, jr_005_5ecb

    rrca
    inc b
    jr nz, @-$14

    rlca

jr_005_5ee6:
    dec b
    jr nz, jr_005_5edb

    rla

jr_005_5eea:
    ld b, $20
    ld [$13ff], a
    jr nz, jr_005_5edb

    rst $30

jr_005_5ef2:
    inc d
    jr nz, jr_005_5ee6

    rrca
    dec d
    jr nz, jr_005_5eea

    rlca
    ld d, $20
    pop af
    rst $38
    rla
    jr nz, jr_005_5ef2

    rst $30

jr_005_5f02:
    jr jr_005_5f24

    ld sp, hl
    rrca

jr_005_5f06:
    add hl, de

jr_005_5f07:
    jr nz, jr_005_5f02

    rlca

jr_005_5f0a:
    ld a, [de]
    jr nz, jr_005_5f06

    rst $38
    dec de
    jr nz, jr_005_5f0a

    rst $30
    inc e
    jr nz, jr_005_5e95

    pop hl
    ldh a, [rP1]
    nop
    pop hl
    ld hl, sp+$01
    nop
    pop hl
    nop
    ld [bc], a
    nop
    pop hl
    rla
    nop

jr_005_5f24:
    jr nz, jr_005_5f07

    rrca

jr_005_5f27:
    ld bc, $e120
    rlca

jr_005_5f2b:
    ld [bc], a
    jr nz, @-$15

    ldh a, [$03]
    nop
    jp hl


    ld hl, sp+$04
    nop
    jp hl


    nop

jr_005_5f37:
    dec b
    nop
    jp hl


    rla
    inc bc
    jr nz, jr_005_5f27

    rrca

jr_005_5f3f:
    inc b
    jr nz, jr_005_5f2b

    rlca
    dec b
    jr nz, jr_005_5f37

    ldh a, [rTMA]
    nop
    pop af
    rla
    ld b, $20
    ldh a, [$f8]
    dec d
    nop
    ldh a, [rP1]
    ld d, $00
    ld hl, sp-$08

jr_005_5f57:
    add hl, de
    nop
    ld hl, sp+$00
    ld a, [de]
    nop
    ld hl, sp+$0f
    add hl, de
    jr nz, @-$06

    rlca
    ld a, [de]
    jr nz, @-$0e

    rrca
    dec d
    jr nz, @-$0e

    rlca
    ld d, $20
    add b
    ld hl, sp-$08
    add hl, bc
    nop
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld hl, sp+$0f
    add hl, bc
    jr nz, @-$06

jr_005_5f7b:
    rlca
    ld a, [bc]
    jr nz, jr_005_5f57

    rlca
    dec bc
    nop
    ret c

    rrca
    inc c
    nop
    ldh [rTAC], a
    dec c
    nop
    ldh [rIF], a
    ld c, $00
    add sp, $0f
    stop
    add sp, $07
    rrca
    nop
    ldh a, [rTAC]
    ld de, $f000

jr_005_5f9b:
    rrca
    ld [de], a
    nop
    ret c

    nop
    dec bc
    jr nz, jr_005_5f7b

    ld hl, sp+$0c
    jr nz, @-$1e

jr_005_5fa7:
    nop
    dec c
    jr nz, @-$1e

    ld hl, sp+$0e
    jr nz, @-$16

    ld hl, sp+$10
    jr nz, jr_005_5f9b

    nop
    rrca
    jr nz, jr_005_5fa7

    nop
    ld de, $f020
    ld hl, sp+$12
    jr nz, jr_005_5f3f

    push bc
    ld e, a
    ld b, $60
    ld b, a
    ld h, b
    ldh [$f8], a

jr_005_5fc7:
    nop
    nop
    ldh [rP1], a
    ld bc, $e800
    ld hl, sp+$02
    nop
    add sp, $00
    inc bc
    nop
    add sp, $0f
    ld [bc], a
    jr nz, @-$16

    rlca
    inc bc
    jr nz, @-$1e

    rrca
    nop
    jr nz, @-$1e

    rlca
    ld bc, $f020
    ld hl, sp+$04
    nop
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$08]
    ld b, $00
    ldh a, [rIF]
    inc b
    jr nz, @-$06

    ld hl, sp+$07
    nop
    ld hl, sp+$00
    ld [$f800], sp
    rrca

jr_005_5fff:
    rlca
    jr nz, @-$06

    rlca

jr_005_6003:
    ld [$8020], sp
    ldh [$f8], a

jr_005_6008:
    nop
    nop
    ldh [rP1], a
    ld bc, $e800
    ld hl, sp+$02
    nop
    add sp, $00
    inc bc
    nop
    add sp, $0f
    ld [bc], a
    jr nz, jr_005_6003

    rlca
    inc bc
    jr nz, jr_005_5fff

    rrca
    nop
    jr nz, jr_005_6003

    rlca
    ld bc, $f020
    ld hl, sp+$09
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ldh a, [$08]
    dec bc
    nop
    ldh a, [rIF]
    add hl, bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp+$0f

jr_005_6040:
    inc c
    jr nz, @-$06

    rlca

jr_005_6044:
    dec c
    jr nz, jr_005_5fc7

    ldh [$f8], a
    nop
    nop
    ldh [rP1], a
    ld bc, $e800
    ld hl, sp+$02
    nop
    add sp, $00
    inc bc
    nop
    add sp, $0f
    ld [bc], a
    jr nz, jr_005_6044

    rlca
    inc bc
    jr nz, jr_005_6040

    rrca
    nop
    jr nz, jr_005_6044

    rlca
    ld bc, $f020
    ld hl, sp+$0e
    nop
    ldh a, [rP1]
    rrca
    nop
    ldh a, [$08]
    stop
    ldh a, [rIF]
    ld c, $20
    ld hl, sp-$08
    ld de, $f800
    nop
    ld [de], a
    nop
    ld hl, sp+$0f
    ld de, $f820
    rlca
    ld [de], a
    jr nz, jr_005_6008

    sbc b
    ld h, b
    reti


    ld h, b
    ld a, [de]

jr_005_608d:
    ld h, c
    ld e, e
    ld h, c
    sbc h
    ld h, c
    pop hl
    ld h, c
    ld h, $62
    ld h, a
    ld h, d
    ldh [$f8], a
    nop
    nop
    ldh [rNR10], a
    inc bc
    nop
    add sp, $0f
    inc b
    jr nz, jr_005_608d

    rlca
    dec b
    jr nz, @-$0e

jr_005_60a9:
    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_60a9

    rrca
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$1e

    nop
    ld bc, $e000
    ld [$0002], sp
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]

jr_005_60ce:
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh [$f8], a

jr_005_60db:
    nop
    nop
    ldh [rNR10], a
    inc bc
    nop
    add sp, $0f
    inc b
    jr nz, jr_005_60ce

    rlca
    dec b
    jr nz, @-$0e

jr_005_60ea:
    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_60ea

    rrca
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$1e

    nop
    ld bc, $e000
    ld [$0002], sp
    add sp, -$08
    inc b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add sp, $00

jr_005_6117:
    ld a, [bc]
    nop
    add b
    ldh [$f8], a
    nop
    nop
    ldh [rNR10], a
    inc bc
    nop
    add sp, $0f
    inc b
    jr nz, jr_005_6117

jr_005_6127:
    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_6127

    rrca
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_6117

    nop
    ld bc, $e000
    ld [$0002], sp
    add sp, -$08
    inc b
    nop
    add sp, $00
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop

jr_005_6154:
    add hl, bc
    nop
    add sp, $07
    ld a, [bc]
    jr nz, jr_005_60db

    ldh [$f8], a
    nop
    nop
    add sp, $07
    dec b
    jr nz, jr_005_6154

jr_005_6164:
    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_6164

    rrca
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_6154

    nop
    ld bc, $e800
    ld hl, sp+$04
    nop
    add sp, $00
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ldh [rTAC], a
    ld bc, $e020
    rrca

jr_005_6195:
    dec bc
    nop
    add sp, $0f
    inc c
    nop
    add b
    ldh [$f8], a
    nop
    nop
    add sp, $07
    dec b
    jr nz, jr_005_6195

jr_005_61a5:
    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_61a5

    rrca
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_6195

jr_005_61b5:
    nop
    ld bc, $e800
    ld hl, sp+$04
    nop
    add sp, $00
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ldh [rIF], a
    nop
    jr nz, jr_005_61b5

    rlca
    ld bc, $e820
    rrca

jr_005_61da:
    dec c
    nop
    add sp, $17
    ld c, $00
    add b
    ldh [$f8], a
    nop
    nop
    add sp, $07

jr_005_61e7:
    dec b
    jr nz, jr_005_61da

jr_005_61ea:
    rrca
    ld b, $20
    ldh a, [rTAC]
    rlca
    jr nz, jr_005_61ea

    rrca
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, jr_005_61da

    nop
    ld bc, $e800
    ld hl, sp+$04
    nop
    add sp, $00
    dec b
    nop
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ldh [rTAC], a
    ld bc, $e020
    rrca
    rrca
    nop
    ldh [rNR22], a
    stop
    add sp, $0f

jr_005_6223:
    ld de, $8000
    ldh [$f8], a
    nop
    nop
    ldh [rNR10], a
    inc bc
    nop
    add sp, $0f
    inc b
    jr nz, jr_005_6223

jr_005_6233:
    rrca
    ld b, $20
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$16

    ld hl, sp+$04
    nop
    ldh a, [$f8]
    ld b, $00
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add sp, $07
    inc d
    jr nz, jr_005_6233

    nop
    ld [de], a
    nop
    ldh [$08], a
    inc de
    nop
    add sp, $00
    inc d
    nop
    ldh a, [rP1]
    rlca
    nop
    ldh a, [rTAC]

jr_005_6264:
    rlca
    jr nz, jr_005_61e7

    ldh [$f8], a
    nop
    nop
    ldh [rNR10], a
    inc bc
    nop
    add sp, $0f
    inc b
    jr nz, jr_005_6264

    rrca
    ld b, $20
    ld hl, sp+$0f
    ld [$f820], sp
    rlca
    add hl, bc
    jr nz, @-$16

    ld hl, sp+$04
    nop
    ldh a, [$f8]
    ld b, $00
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    ldh [rP1], a
    dec d
    nop
    ldh [$08], a
    ld d, $00
    add sp, $00
    rla
    nop
    add sp, $07
    rla
    jr nz, @-$0e

    nop
    jr jr_005_62a3

jr_005_62a3:
    ldh a, [rTAC]
    jr jr_005_62c7

    add b
    or h
    ld h, d
    ld sp, hl
    ld h, d
    ld b, [hl]
    ld h, e
    adc a
    ld h, e
    ret c

    ld h, e
    dec h
    ld h, h
    ldh [$fa], a
    nop
    nop
    ldh [rSC], a
    ld bc, $e000
    ld a, [bc]
    ld [bc], a
    nop
    ldh [rNR12], a
    inc bc
    nop
    add sp, -$06

jr_005_62c6:
    inc b

jr_005_62c7:
    nop
    add sp, $02
    dec b
    nop
    add sp, $0a
    ld b, $00
    add sp, $12
    rlca
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ldh a, [rIF]
    ld [$f020], sp

jr_005_62e1:
    rlca
    add hl, bc
    jr nz, @-$06

jr_005_62e5:
    rrca
    ld a, [bc]
    jr nz, jr_005_62e1

    rlca
    dec bc
    jr nz, jr_005_62e5

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    dec bc
    nop
    push hl
    dec de
    ld d, $00
    add b
    ldh [rSC], a
    ld bc, $e000
    ld a, [bc]
    ld [bc], a
    nop
    add sp, $02
    dec b
    nop
    add sp, $0a
    ld b, $00
    ldh a, [$f8]
    ld [$f000], sp
    nop

jr_005_630f:
    add hl, bc
    nop
    ldh a, [rIF]
    ld [$f020], sp
    rlca
    add hl, bc
    jr nz, @-$1e

    ld a, [$000c]
    ldh [rNR12], a
    dec c
    nop
    add sp, -$06
    ld c, $00
    add sp, $12
    rrca
    nop
    ldh a, [rNR12]
    stop
    ldh a, [rNR41]
    ld d, $00
    push hl
    ld a, [$0016]
    ld hl, sp-$08
    ld a, [de]
    nop
    ld hl, sp+$00
    dec de
    nop
    ld hl, sp+$0f

jr_005_633f:
    ld a, [de]
    jr nz, @-$06

    rlca

jr_005_6343:
    dec de
    jr nz, jr_005_62c6

    ldh [rP1], a
    ld de, $e000
    ld a, [$000c]
    add sp, -$08
    ld [de], a
    nop
    add sp, $00
    inc de
    nop
    add sp, $0f

jr_005_6358:
    ld [de], a
    jr nz, jr_005_6343

    rlca
    inc de
    jr nz, jr_005_633f

    rlca
    ld de, $e020
    dec c
    inc c
    jr nz, @-$0e

    nop
    dec d
    nop
    push af
    inc de
    ld d, $00
    xor $f7
    ld d, $00
    ldh a, [rTAC]
    jr jr_005_6376

jr_005_6376:
    ldh a, [rIF]
    add hl, de
    nop
    ldh a, [$f8]
    rla
    nop
    ld hl, sp-$08

jr_005_6380:
    inc e
    nop
    ld hl, sp+$00

jr_005_6384:
    dec e
    nop
    ld hl, sp+$0f

jr_005_6388:
    inc e
    jr nz, @-$06

    rlca
    dec e
    jr nz, jr_005_630f

    ldh [rTAC], a
    ld de, $e020
    dec c
    inc c
    jr nz, jr_005_6380

    rrca
    ld [de], a
    jr nz, jr_005_6384

    rlca
    inc de
    jr nz, jr_005_6388

    ld hl, sp+$12
    nop
    add sp, $00

jr_005_63a5:
    inc de
    nop
    ldh [rP1], a
    ld de, $e000
    ld a, [$000c]
    ldh a, [rIF]
    inc d
    jr nz, @-$0e

    rlca
    dec d
    jr nz, @-$0e

    ld hl, sp+$14
    nop
    ldh a, [rP1]
    dec d
    nop
    push af
    db $f4
    ld d, $20
    xor $10
    ld d, $20
    ld hl, sp-$08

jr_005_63c9:
    inc e
    nop
    ld hl, sp+$00

jr_005_63cd:
    dec e
    nop
    ld hl, sp+$0f
    inc e
    jr nz, @-$06

    rlca
    dec e
    jr nz, jr_005_6358

    ldh [rTIMA], a
    ld bc, $e020

jr_005_63dd:
    db $fd
    ld [bc], a
    jr nz, jr_005_63c9

jr_005_63e1:
    dec b
    dec b
    jr nz, jr_005_63cd

    db $fd
    ld b, $20
    ldh a, [rIF]
    ld [$f020], sp
    rlca
    add hl, bc
    jr nz, jr_005_63e1

    ld hl, sp+$08
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    ldh [$0d], a
    inc c
    jr nz, jr_005_63dd

jr_005_63fd:
    push af
    dec c
    jr nz, @-$16

    dec c
    ld c, $20
    add sp, -$0b
    rrca
    jr nz, @-$0e

    push af

jr_005_640a:
    db $10
    jr nz, jr_005_63fd

    rst $20
    ld d, $20
    push hl
    dec c

jr_005_6412:
    ld d, $20
    ld hl, sp-$08
    ld a, [de]
    nop

jr_005_6418:
    ld hl, sp+$00
    dec de
    nop
    ld hl, sp+$0f

jr_005_641e:
    ld a, [de]
    jr nz, @-$06

    rlca

jr_005_6422:
    dec de
    jr nz, jr_005_63a5

    ldh [$0d], a
    nop
    jr nz, jr_005_640a

    dec b
    ld bc, $e020
    db $fd
    ld [bc], a
    jr nz, jr_005_6412

    push af
    inc bc
    jr nz, jr_005_641e

jr_005_6436:
    dec c
    inc b
    jr nz, jr_005_6422

    dec b
    dec b
    jr nz, @-$16

jr_005_643e:
    db $fd
    ld b, $20
    add sp, -$0b
    rlca
    jr nz, jr_005_6436

    rrca
    ld [$f020], sp
    rlca

jr_005_644b:
    add hl, bc
    jr nz, jr_005_643e

    ld hl, sp+$08
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc

jr_005_645c:
    nop
    ld hl, sp+$0f
    ld a, [bc]
    jr nz, @-$06

    rlca
    dec bc
    jr nz, jr_005_644b

    db $ec
    ld d, $20
    add b
    db $76
    ld h, h
    add a
    ld h, h
    sbc b
    ld h, h
    xor c
    ld h, h
    cp d
    ld h, h
    bit 4, h
    ldh a, [$f8]
    nop

jr_005_6479:
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    nop
    ld bc, $f820
    ld hl, sp+$02
    jr nz, jr_005_6418

    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$0a
    dec b
    nop
    ld hl, sp-$02
    ld b, $00
    add b
    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$0a
    rlca
    nop
    ld hl, sp-$02
    ld [$8000], sp
    ldh a, [$f8]
    add hl, bc

jr_005_64bd:
    nop
    ldh a, [rP1]
    add hl, bc
    jr nz, @-$06

    ld hl, sp+$0a
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    add hl, bc
    jr nz, @-$06

    nop
    ld a, [bc]
    jr nz, @-$06

    ld hl, sp+$0b
    jr nz, jr_005_645c

    add sp, $64
    ld sp, hl
    ld h, h
    ld a, [bc]
    ld h, l
    dec de
    ld h, l
    inc l
    ld h, l
    dec a
    ld h, l
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    ldh a, [rIE]

jr_005_64f6:
    nop
    jr nz, jr_005_6479

    ldh a, [rIE]
    nop

jr_005_64fc:
    jr nz, jr_005_64f6

    rst $38
    ld bc, $f820
    rst $30
    ld [bc], a
    jr nz, jr_005_64f6

    ld hl, sp+$00
    nop
    add b
    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$0a
    dec b
    nop
    ld hl, sp-$02
    ld b, $00
    add b
    ldh a, [$f6]
    inc bc
    nop
    ldh a, [$fe]
    inc b
    nop
    ld hl, sp-$0a
    rlca
    nop
    ld hl, sp-$02
    ld [$8000], sp
    ldh a, [$f8]
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    ldh a, [rIE]

jr_005_653a:
    add hl, bc
    jr nz, jr_005_64bd

    ldh a, [rIE]
    add hl, bc

jr_005_6540:
    jr nz, jr_005_653a

    rst $38
    ld a, [bc]
    jr nz, @-$06

    rst $30
    dec bc
    jr nz, jr_005_653a

    ld hl, sp+$09
    nop
    add b
    ld e, d
    ld h, l
    ld l, e
    ld h, l
    ld a, h
    ld h, l
    adc l
    ld h, l
    sbc [hl]
    ld h, l
    xor a
    ld h, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]

jr_005_6560:
    ld bc, $f810
    ld hl, sp+$02
    db $10

jr_005_6566:
    ld hl, sp+$00
    inc bc
    db $10
    add b
    ldh a, [rP1]
    nop
    jr nc, jr_005_6560

jr_005_6570:
    ld hl, sp+$01
    jr nc, @-$06

    nop
    ld [bc], a
    jr nc, jr_005_6570

    ld hl, sp+$03
    jr nc, jr_005_64fc

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b

jr_005_658d:
    ldh a, [$f8]
    ld [$f010], sp
    nop
    add hl, bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]

jr_005_65a4:
    dec c
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ldh a, [rP1]
    inc c
    jr nc, jr_005_65a4

    ld hl, sp+$0d
    jr nc, @-$06

    nop
    ld c, $30
    ld hl, sp-$08
    rrca
    jr nc, jr_005_6540

    call z, $d965
    ld h, l
    and $65
    di
    ld h, l

jr_005_65c8:
    nop
    ld h, [hl]
    dec c
    ld h, [hl]
    pop af
    db $fd
    nop
    nop
    ld sp, hl
    ld hl, sp+$01
    nop
    ld sp, hl
    rst $38
    ld bc, $8020
    rst $28
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$02
    nop
    rst $30
    rst $38
    ld [bc], a
    jr nz, jr_005_6566

    pop af
    db $fd
    nop
    nop
    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    rst $28
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$04
    nop
    rst $30
    nop
    ld b, $00
    add b
    pop af
    db $fd
    nop
    nop
    ld sp, hl
    ld hl, sp+$03
    nop
    ld sp, hl
    rst $38
    inc bc
    jr nz, jr_005_658d

    rst $28
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$04
    nop
    rst $30
    rst $38
    inc b
    jr nz, @-$7e

    ld h, $66
    scf
    ld h, [hl]
    ld c, b
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld l, d
    ld h, [hl]
    ld a, e
    ld h, [hl]
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$02
    nop
    ld sp, hl
    rst $38
    ld [bc], a
    jr nz, @-$7e

    ld a, [c]
    ld hl, sp+$03

jr_005_663a:
    nop
    ld a, [c]
    nop
    inc b
    nop
    ld a, [$02f8]
    nop
    ld a, [$02ff]
    jr nz, jr_005_65c8

    di
    ld hl, sp+$09
    nop
    di
    nop
    ld a, [bc]
    nop
    ei
    ld hl, sp+$0b
    nop
    ei
    nop
    inc c
    nop
    add b
    db $f4
    nop
    ld a, [bc]
    nop
    db $f4
    ld hl, sp+$0d
    nop
    db $fc
    ld hl, sp+$0b
    nop
    db $fc
    nop
    inc c
    nop
    add b
    ld a, [c]
    ld hl, sp+$05

jr_005_666d:
    nop
    ld a, [c]
    rst $38
    dec b
    jr nz, jr_005_666d

    ld hl, sp+$06
    nop
    ld a, [$0700]
    nop
    add b
    di
    ld hl, sp+$08

jr_005_667e:
    nop
    di
    rst $38
    ld [$fb20], sp
    rst $38
    ld b, $20
    ei
    rst $30
    rlca
    jr nz, @-$7e

    sbc b
    ld h, [hl]
    xor c
    ld h, [hl]
    cp d
    ld h, [hl]
    bit 4, [hl]
    call c, $ed66
    ld h, [hl]
    pop af
    ld hl, sp+$00
    nop
    pop af
    rst $38
    nop
    jr nz, @-$05

    ld hl, sp+$01
    nop
    ld sp, hl
    nop
    ld [bc], a
    nop
    add b
    pop af
    ld sp, hl

jr_005_66ab:
    nop
    nop
    pop af
    nop
    nop
    jr nz, jr_005_66ab

    nop
    ld bc, $f920
    ld hl, sp+$02
    jr nz, jr_005_663a

    ld a, [c]
    ld hl, sp+$07
    nop
    ld a, [c]
    nop
    ld [$fa00], sp
    ld hl, sp+$09
    nop
    ld a, [$0a00]
    nop
    add b
    pop af
    ld hl, sp+$0b
    nop
    pop af
    nop
    ld [$f900], sp
    ld hl, sp+$0c
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    pop af
    ld hl, sp+$03
    nop
    pop af
    nop
    inc b
    nop
    ld sp, hl
    ld hl, sp+$05

jr_005_66e7:
    nop
    ld sp, hl
    nop
    ld b, $00
    add b
    ld sp, hl
    nop
    dec b
    jr nz, @-$05

    ld hl, sp+$06
    jr nz, jr_005_66e7

    nop
    inc bc
    jr nz, @-$0d

    ld hl, sp+$04
    jr nz, jr_005_667e

    ld a, [bc]
    ld h, a
    rla
    ld h, a
    inc h
    ld h, a
    dec [hl]
    ld h, a
    ld b, [hl]
    ld h, a
    ld d, e
    ld h, a
    ldh a, [$f8]
    nop
    nop

jr_005_670e:
    ldh a, [rIE]
    nop
    jr nz, @-$06

    db $fc
    ld bc, $8000
    pop af
    ld hl, sp+$02
    nop
    pop af
    rst $38
    ld [bc], a
    jr nz, @-$05

    db $fc
    ld bc, $8000
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    ldh a, [$f8]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [rP1]
    rlca
    nop
    add b
    ldh a, [$f8]
    inc bc
    nop
    ldh a, [rIE]
    inc bc
    jr nz, @-$06

    db $fc
    inc b
    nop

jr_005_6752:
    add b
    pop af
    ld hl, sp+$05
    nop
    pop af
    rst $38
    dec b
    jr nz, @-$05

    db $fc
    inc b
    nop
    add b
    ld l, h
    ld h, a
    ld a, l
    ld h, a
    adc [hl]
    ld h, a
    sbc a
    ld h, a
    or b
    ld h, a
    pop bc
    ld h, a
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rIE]

jr_005_6772:
    nop
    jr nc, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [rIE]
    nop

jr_005_6780:
    jr nc, jr_005_6772

    ld hl, sp+$00
    db $10
    ld hl, sp-$01
    ld bc, $f820
    rst $30
    ld [bc], a
    jr nz, jr_005_670e

    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$08
    nop
    ld sp, hl
    nop
    add hl, bc
    nop
    add b
    pop af
    ld hl, sp+$06
    db $10
    pop af
    nop
    rlca
    db $10
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rIE]
    inc bc
    jr nc, @-$06

    ld hl, sp+$04
    nop
    ld hl, sp+$00
    dec b
    nop
    add b
    ldh a, [$f8]
    inc bc

jr_005_67c4:
    db $10
    ldh a, [rIE]
    inc bc
    jr nc, @-$06

    rst $38
    inc b
    jr nz, @-$06

    rst $30
    dec b
    jr nz, jr_005_6752

    sbc $67
    rst $28
    ld h, a
    nop
    ld l, b
    ld de, $2268
    ld l, b
    inc sp
    ld l, b
    pop af
    ld hl, sp+$00
    db $10
    pop af
    nop
    ld bc, $f910
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    pop af
    rst $38
    nop
    jr nc, @-$0d

    rst $30

jr_005_67f5:
    ld bc, $f930
    rst $38
    ld [bc], a
    jr nc, jr_005_67f5

    rst $30
    inc bc
    jr nc, jr_005_6780

    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    add b
    pop af
    ld sp, hl
    ld [$f110], sp
    ld bc, $100c
    ld sp, hl
    ld sp, hl
    dec c
    db $10
    ld sp, hl
    ld bc, $100e
    add b
    pop af
    ld hl, sp+$04

jr_005_6825:
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$06

jr_005_682d:
    db $10
    ld sp, hl
    nop
    rlca

jr_005_6831:
    db $10
    add b
    ld sp, hl
    rst $38
    ld b, $30
    ld sp, hl
    rst $30
    rlca
    jr nc, jr_005_682d

    rst $38
    inc b
    jr nc, jr_005_6831

    rst $30
    dec b
    jr nc, jr_005_67c4

    ld d, b
    ld l, b
    ld h, c
    ld l, b
    ld [hl], d
    ld l, b
    add e
    ld l, b
    sub h
    ld l, b
    and l
    ld l, b
    di
    ld sp, hl
    nop
    nop
    di
    ld bc, $0001
    ei
    ld sp, hl
    ld [bc], a
    nop
    ei
    ld bc, $0003
    add b
    ld a, [c]
    ld sp, hl
    nop

jr_005_6864:
    nop
    ld a, [c]
    ld bc, $0001
    ld a, [$04f9]
    nop
    ld a, [$0501]
    nop
    add b
    ldh a, [$f6]
    ld a, [bc]
    nop
    ldh a, [$fe]
    dec bc
    nop
    ld hl, sp-$0a
    inc c
    nop
    ld hl, sp-$02
    dec c
    nop
    add b
    pop af
    or $0a
    nop
    pop af
    cp $0b
    nop
    ld sp, hl
    cp $0e
    nop
    ld sp, hl
    or $0c
    nop
    add b
    di
    or $06
    nop
    di
    cp $07
    nop
    ei
    cp $08
    nop
    ei
    or $03
    jr nz, jr_005_6825

    ld a, [c]
    or $06

jr_005_68a8:
    nop
    ld a, [c]
    cp $07
    nop
    ld a, [$09fe]
    nop
    ld a, [$05f6]
    jr nz, @-$7e

    jp nz, $d368

    ld l, b
    db $e4
    ld l, b
    push af
    ld l, b
    ld b, $69
    rla
    ld l, c
    ld sp, hl
    ld hl, sp+$02
    nop
    ld sp, hl
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $8000
    pop af
    ld hl, sp+$00

jr_005_68d6:
    nop
    pop af
    nop

jr_005_68d9:
    ld bc, $f900
    rst $38
    ld [bc], a
    jr nz, jr_005_68d9

    rst $30
    inc bc
    jr nz, jr_005_6864

    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0c
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    ld sp, hl
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    rlca
    nop
    pop af
    ld hl, sp+$04
    nop
    pop af
    nop
    dec b
    nop
    add b
    pop af
    ld hl, sp+$04

jr_005_691a:
    nop
    pop af
    nop
    dec b
    nop
    ld sp, hl
    rst $38
    ld b, $20
    ld sp, hl
    rst $30
    rlca
    jr nz, jr_005_68a8

    inc [hl]

jr_005_6929:
    ld l, c
    ld b, l
    ld l, c
    ld d, [hl]
    ld l, c
    ld h, a
    ld l, c
    ld a, b
    ld l, c
    adc c
    ld l, c
    ldh a, [$f8]
    nop
    jr nc, jr_005_6929

    rst $38

jr_005_693a:
    nop
    db $10
    ld hl, sp-$06
    ld bc, $f810
    ld [bc], a
    ld [bc], a
    db $10
    add b
    ldh a, [$f9]
    nop
    jr nc, jr_005_693a

    nop

jr_005_694b:
    nop
    db $10
    ld hl, sp-$02
    ld bc, $f830
    or $02
    jr nc, jr_005_68d6

    ldh a, [$f9]
    nop
    jr nc, jr_005_694b

    rst $38
    nop
    db $10
    ld hl, sp-$06
    dec b
    db $10
    ld hl, sp+$02
    ld b, $10
    add b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [$fa]

jr_005_696d:
    nop
    jr nc, @-$06

    ei
    rlca
    db $10
    ld hl, sp+$03
    ld [$8010], sp
    ldh a, [$f8]
    nop
    jr nc, jr_005_696d

    rst $38
    nop
    db $10
    ld hl, sp-$08
    inc bc
    db $10
    ld hl, sp+$00
    inc b
    db $10
    add b
    ldh a, [rP1]
    nop

jr_005_698c:
    db $10
    ldh a, [$f9]
    nop
    jr nc, @-$06

    nop
    inc bc
    jr nc, @-$06

    ld hl, sp+$04
    jr nc, jr_005_691a

    and [hl]
    ld l, c
    or a
    ld l, c
    ret z

    ld l, c
    reti


    ld l, c
    ld [$fb69], a
    ld l, c
    ldh a, [$f8]
    nop

jr_005_69a9:
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rIE]
    nop
    jr nz, @-$06

    ld hl, sp+$03
    nop
    ld hl, sp+$00
    inc b
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    add b
    ldh a, [$f8]
    add hl, bc
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    add b
    ldh a, [$f8]
    dec b
    nop
    ldh a, [rP1]
    dec b
    jr nz, @-$06

    ld hl, sp+$06
    nop
    ld hl, sp+$00
    ld b, $20
    add b
    ldh a, [$f8]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    ld [$f020], sp
    nop
    rlca
    jr nz, jr_005_698c

    jr jr_005_6a78

    add hl, hl
    ld l, d
    ld a, [hl-]
    ld l, d
    ld c, e
    ld l, d
    ld e, h
    ld l, d
    ld l, l
    ld l, d
    ldh a, [$f8]
    nop

jr_005_6a1b:
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_005_69a9

    pop af
    ld hl, sp+$03

jr_005_6a2c:
    nop
    pop af
    nop
    inc bc
    jr nz, @-$05

    ld hl, sp+$04
    nop
    ld sp, hl
    nop

jr_005_6a37:
    dec b
    nop
    add b
    ldh a, [rP1]
    ld b, $20
    ld hl, sp+$00
    rlca
    jr nz, @-$06

    ld hl, sp+$08
    jr nz, jr_005_6a37

    ld sp, hl
    dec bc

jr_005_6a49:
    nop
    add b
    pop af
    nop

jr_005_6a4d:
    ld b, $20
    ld sp, hl
    nop
    add hl, bc
    jr nz, jr_005_6a4d

    ld hl, sp+$0a
    jr nz, jr_005_6a49

    ld sp, hl
    ld c, $00
    add b
    ldh a, [$f8]
    dec bc
    nop
    ldh a, [rP1]
    dec bc
    jr nz, @-$06

    ld hl, sp+$0c
    nop
    ld hl, sp+$00
    dec c
    nop
    add b
    pop af
    ld hl, sp+$0e

jr_005_6a70:
    nop
    pop af
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f

jr_005_6a78:
    nop
    ld sp, hl
    nop
    dec c
    nop
    add b
    adc d
    ld l, d
    sbc e
    ld l, d
    xor h
    ld l, d
    cp l
    ld l, d
    adc $6a
    rst $18
    ld l, d
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [rP1]
    nop
    jr nz, jr_005_6a1b

    pop af
    ld hl, sp+$01

jr_005_6a9e:
    nop
    pop af
    nop

jr_005_6aa1:
    ld bc, $f920
    nop
    ld [bc], a
    jr nz, jr_005_6aa1

    ld hl, sp+$03
    jr nz, jr_005_6a2c

    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    pop af
    ld sp, hl
    ld a, [bc]
    nop
    pop af
    ld bc, $000b
    ld sp, hl
    ld sp, hl
    inc c
    nop
    ld sp, hl
    ld bc, $000d
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    inc b
    jr nz, @-$06

    ld hl, sp+$0e

jr_005_6ad9:
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ld sp, hl
    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_005_6ad9

    ld hl, sp+$05
    nop
    pop af
    nop
    dec b
    jr nz, jr_005_6a70

    db $fc

jr_005_6af1:
    ld l, d
    dec c
    ld l, e
    ld e, $6b
    cpl
    ld l, e
    ld b, b
    ld l, e
    ld d, c
    ld l, e
    ldh a, [rP1]
    nop
    jr nc, jr_005_6af1

    ld hl, sp+$00
    db $10
    ld hl, sp-$08
    ld bc, $f810
    nop
    ld [bc], a
    db $10
    add b

jr_005_6b0d:
    rst $28
    ld hl, sp+$00
    db $10
    rst $28
    nop
    nop
    jr nc, jr_005_6b0d

    nop
    ld bc, $f730
    ld hl, sp+$02
    jr nc, jr_005_6a9e

    rst $28
    ld hl, sp+$03
    db $10
    rst $28
    nop
    inc b
    db $10
    rst $30
    ld hl, sp+$05
    db $10
    rst $30
    nop
    ld b, $10
    add b
    ldh a, [$f8]
    inc bc
    db $10
    ldh a, [rP1]
    inc b
    db $10
    ld hl, sp-$08
    rlca
    db $10
    ld hl, sp+$00
    ld [$8010], sp
    ldh a, [$f8]
    add hl, bc
    db $10
    ldh a, [rP1]
    add hl, bc
    jr nc, @-$06

    ld hl, sp+$0a
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    add b

jr_005_6b51:
    rst $28
    ld hl, sp+$09

jr_005_6b54:
    db $10

jr_005_6b55:
    rst $28
    nop
    add hl, bc
    jr nc, jr_005_6b51

    nop
    ld a, [bc]
    jr nc, jr_005_6b55

    ld hl, sp+$0b
    jr nc, @-$7e

    ld l, [hl]
    ld l, e
    ld a, a
    ld l, e
    sub b
    ld l, e
    and c
    ld l, e
    or d
    ld l, e
    jp $f06b


    ld hl, sp+$00
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    ld hl, sp+$04
    db $10
    pop af
    nop
    dec b
    db $10
    ld sp, hl
    ld hl, sp+$02
    db $10
    ld sp, hl
    nop
    inc bc
    db $10
    add b
    ldh a, [$f8]
    ld b, $10
    ldh a, [rP1]
    rlca
    db $10
    ld hl, sp-$08
    ld [$f810], sp
    nop
    add hl, bc
    db $10
    add b
    ld sp, hl
    ld hl, sp+$08
    db $10
    ld sp, hl
    nop
    add hl, bc
    db $10
    pop af
    ld hl, sp+$0a
    db $10
    pop af
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c

jr_005_6bb5:
    db $10
    ldh a, [rP1]
    inc c
    jr nc, @-$06

    ld hl, sp+$0e
    db $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    ld sp, hl
    ld hl, sp+$0e

jr_005_6bc6:
    db $10
    ld sp, hl
    nop
    rrca
    db $10
    pop af
    ld hl, sp+$0d
    db $10
    pop af
    nop
    dec c
    jr nc, jr_005_6b54

    ldh [rOCPD], a
    pop af
    ld l, e
    ld [bc], a
    ld l, h
    inc de
    ld l, h
    inc h
    ld l, h
    dec [hl]
    ld l, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    ld hl, sp+$00

jr_005_6bf4:
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    inc bc
    jr nz, jr_005_6bb5

    pop af
    ld hl, sp+$0c

jr_005_6c38:
    nop
    pop af
    nop
    dec c
    nop
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$05
    jr nz, jr_005_6bc6

    ld d, d
    ld l, h
    ld h, e
    ld l, h
    ld [hl], h
    ld l, h
    add l
    ld l, h
    sub [hl]
    ld l, h
    and a
    ld l, h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02

jr_005_6c5d:
    nop
    ld hl, sp+$00
    inc bc

jr_005_6c61:
    nop
    add b
    ld sp, hl
    nop
    ld [bc], a

jr_005_6c66:
    jr nz, jr_005_6c61

    ld hl, sp+$03
    jr nz, jr_005_6c5d

    nop
    nop
    jr nz, jr_005_6c61

    ld hl, sp+$01
    jr nz, jr_005_6bf4

    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    pop af
    ld hl, sp+$08
    nop
    pop af
    nop
    add hl, bc
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c

jr_005_6c9d:
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    pop af
    nop

jr_005_6ca9:
    inc c

jr_005_6caa:
    jr nz, jr_005_6c9d

    ld hl, sp+$0d
    jr nz, jr_005_6ca9

    nop
    ld c, $20
    ld sp, hl
    ld hl, sp+$0f
    jr nz, jr_005_6c38

    call nz, $d56c
    ld l, h
    and $6c
    rst $30
    ld l, h
    ld [$196d], sp
    ld l, l
    ldh a, [$f8]
    nop
    db $10
    ldh a, [rP1]
    ld bc, $f810
    ld hl, sp+$02
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    add b
    pop af
    nop

jr_005_6cd7:
    nop
    jr nc, @-$0d

    ld hl, sp+$01
    jr nc, jr_005_6cd7

    nop
    ld [bc], a
    jr nc, @-$05

    ld hl, sp+$03
    jr nc, jr_005_6c66

    ldh a, [$f8]
    inc b
    db $10
    ldh a, [rP1]
    dec b
    db $10
    ld hl, sp-$08
    ld b, $10
    ld hl, sp+$00
    rlca
    db $10
    add b
    pop af
    ld hl, sp+$08
    db $10
    pop af
    nop
    add hl, bc
    db $10
    ld sp, hl
    ld hl, sp+$0a
    db $10
    ld sp, hl
    nop
    dec bc
    db $10
    add b
    ldh a, [$f8]
    inc c
    db $10
    ldh a, [rP1]
    dec c

jr_005_6d0f:
    db $10
    ld hl, sp-$08
    ld c, $10
    ld hl, sp+$00
    rrca
    db $10
    add b
    pop af
    nop

jr_005_6d1b:
    inc c
    jr nc, jr_005_6d0f

    ld hl, sp+$0d
    jr nc, jr_005_6d1b

    nop
    ld c, $30
    ld sp, hl
    ld hl, sp+$0f
    jr nc, jr_005_6caa

    ld [hl], $6d
    ld b, a
    ld l, l
    ld e, b
    ld l, l
    ld l, c
    ld l, l
    ld a, d
    ld l, l
    adc e
    ld l, l
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop

jr_005_6d42:
    ld hl, sp+$00
    inc bc
    nop
    add b
    pop af
    ld hl, sp+$00
    nop
    pop af
    nop
    ld bc, $f900
    ld hl, sp+$04
    nop
    ld sp, hl
    nop
    dec b
    nop
    add b
    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b

jr_005_6d69:
    pop af
    ld hl, sp+$06
    nop
    pop af
    nop
    rlca
    nop
    ld sp, hl
    ld hl, sp+$0a
    nop
    ld sp, hl

jr_005_6d76:
    nop
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    ld a, [bc]
    nop
    add b
    pop af
    ld hl, sp+$0c
    nop
    pop af
    nop
    dec c
    nop
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$08
    nop
    add b
    xor b
    ld l, l
    or l
    ld l, l
    jp nz, $cf6d

    ld l, l
    call c, $e96d
    ld l, l
    pop af
    db $fd
    nop
    db $10
    ld sp, hl
    ld hl, sp+$01
    db $10
    ld sp, hl
    rst $38
    ld bc, $8030
    rst $28
    db $fd
    nop
    db $10
    rst $30
    ld hl, sp+$02
    db $10
    rst $30
    rst $38
    ld [bc], a
    jr nc, jr_005_6d42

    pop af
    db $fd
    nop
    db $10
    ld sp, hl
    ld hl, sp+$03
    db $10
    ld sp, hl
    nop
    dec b
    db $10
    add b
    rst $28
    db $fd
    nop
    db $10
    rst $30
    ld hl, sp+$04
    db $10
    rst $30
    nop
    ld b, $10
    add b
    pop af
    db $fd
    nop
    db $10
    ld sp, hl
    ld hl, sp+$03
    db $10
    ld sp, hl
    rst $38
    inc bc
    jr nc, jr_005_6d69

    rst $28
    db $fd
    nop
    db $10
    rst $30
    ld hl, sp+$04
    db $10
    rst $30
    rst $38
    inc b
    jr nc, jr_005_6d76

    ld hl, sp+$6d
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    dec bc
    ld l, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ld e, $6e
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    dec [hl]
    ld l, [hl]
    ld b, [hl]
    ld l, [hl]
    ld d, a
    ld l, [hl]
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ld l, d
    ld l, [hl]
    ld hl, sp-$04
    nop
    nop
    add b
    add e
    ld l, [hl]
    adc b
    ld l, [hl]
    adc l
    ld l, [hl]
    sub d
    ld l, [hl]
    sub a
    ld l, [hl]
    sbc h
    ld l, [hl]
    and c
    ld l, [hl]
    and [hl]
    ld l, [hl]
    xor e
    ld l, [hl]
    or b

jr_005_6e82:
    ld l, [hl]
    ld hl, sp-$04
    nop
    nop
    add b
    or $fa
    nop
    nop
    add b
    push af
    cp $00
    nop
    add b
    di
    ld a, [$0000]
    add b
    pop af
    db $fc
    nop
    nop
    add b
    ldh a, [rIE]
    nop
    nop
    add b
    xor $fc
    nop
    nop
    add b
    db $ec
    ld a, [$0000]
    add b
    ld [$00fc], a
    nop
    add b
    and $f8
    ld bc, $e600
    nop
    ld [bc], a
    nop
    xor $f8
    inc bc
    nop
    xor $00
    inc b
    nop
    add b
    rst $08
    ld l, [hl]
    ldh [$6e], a
    pop af
    ld l, [hl]
    ld [bc], a
    ld l, a
    inc de
    ld l, a
    inc h
    ld l, a
    ld c, c
    ld l, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]

jr_005_6ee6:
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [rP1]
    inc b
    jr nz, jr_005_6ee6

    ld hl, sp+$05
    jr nz, @-$06

    nop
    ld b, $20
    ld hl, sp-$08
    rlca
    jr nz, jr_005_6e82

    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    inc c
    nop
    ldh a, [rP1]
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    ld de, $f800
    ld hl, sp+$12
    nop
    ld hl, sp+$00
    inc de
    nop
    ldh a, [$f5]
    jr jr_005_6f38

jr_005_6f38:
    xor $fc
    add hl, de
    nop
    ld [$1a04], a
    nop
    add sp, -$0b
    ld d, $00
    and $fc
    rla
    nop
    add b
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    ld de, $f800
    ld hl, sp+$14
    nop
    ld hl, sp+$00
    dec d
    nop
    ld hl, sp+$08
    ld a, [de]
    nop
    ld sp, hl
    rst $28
    ld d, $00
    ld hl, sp+$0c
    rla
    nop
    add b
    ld [hl], d
    ld l, a
    add e
    ld l, a
    sub h
    ld l, a
    and l
    ld l, a
    or [hl]
    ld l, a
    rst $00
    ld l, a
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    ld b, $00
    ld hl, sp+$00
    rlca
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ld hl, sp+$00
    dec bc
    nop
    add b
    ldh a, [$6f]
    ld bc, $0170
    ld [hl], b

jr_005_6fde:
    ld bc, $0170

jr_005_6fe1:
    ld [hl], b
    ld bc, $0170
    ld [hl], b
    ld bc, $0170
    ld [hl], b
    ld bc, $0170

jr_005_6fed:
    ld [hl], b
    ld bc, $f070
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    add b
    jr z, jr_005_6fe1

    nop
    nop
    jr z, jr_005_6fed

    ld bc, $3000
    sbc $02
    nop
    jr nc, @-$18

    inc bc
    nop
    add b
    inc a
    ld [hl], b
    ld c, l
    ld [hl], b
    ld e, [hl]
    ld [hl], b
    ld l, a
    ld [hl], b
    add b
    ld [hl], b
    sub c
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    and d
    ld [hl], b
    adc a
    ld [hl], c
    ld [hl], h
    ld [hl], d
    ld e, l
    ld [hl], e
    ld b, [hl]
    ld [hl], h
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nz, @-$06

    ld hl, sp+$01
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    add b
    ldh a, [$f8]
    inc bc
    nop
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    ldh a, [rP1]
    inc bc
    jr nz, jr_005_6fde

    ldh a, [$f8]
    ld b, $00
    ldh a, [rP1]
    rlca
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    add hl, bc
    nop
    add b
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld hl, sp-$08
    dec bc
    nop
    ld hl, sp+$00
    inc c
    nop
    ldh a, [$f8]
    inc de
    nop
    add b
    ldh a, [$f8]
    dec c
    nop
    ldh a, [rP1]
    dec c
    jr nz, @-$06

    ld hl, sp+$0e
    nop
    ld hl, sp+$00
    rrca
    nop
    add b
    ldh a, [$f8]
    stop
    ldh a, [rP1]
    db $10
    jr nz, @-$06

    ld hl, sp+$11
    nop
    ld hl, sp+$00
    ld [de], a
    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    add sp, $01
    db $10
    ret z

    ldh a, [rSC]
    db $10
    ret z

    ld hl, sp+$03
    db $10
    ret z

    nop
    inc b
    db $10
    ret z

    ld [$1005], sp
    ret z

    db $10
    ld b, $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    add sp, $11
    db $10
    ret nc

    ldh a, [rNR12]
    db $10
    ret nc

    ld hl, sp+$13
    db $10
    ret nc

    nop
    inc d
    db $10
    ret nc

    ld [$1015], sp
    ret nc

    db $10
    ld d, $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ret c

    add sp, $21
    nop
    ret c

    ldh a, [rNR43]
    nop
    ret c

    ld hl, sp+$23
    nop
    ret c

    nop
    inc h
    nop
    ret c

    ld [$0025], sp
    ret c

    db $10
    ld h, $00
    ldh [$e0], a
    jr nc, jr_005_7112

    ldh [$e8], a
    ld sp, $e010
    ldh a, [$32]
    db $10
    ldh [$f8], a
    inc sp
    db $10
    ldh [rP1], a
    inc [hl]
    db $10

jr_005_7112:
    ldh [$08], a
    dec [hl]
    db $10
    ldh [rNR10], a
    ld [hl], $10
    add sp, -$20
    ld b, b
    db $10
    add sp, -$18
    ld b, c
    db $10
    add sp, -$10
    ld b, d
    db $10
    add sp, -$08
    ld b, e
    db $10
    add sp, $00
    ld b, h
    db $10
    add sp, $08
    ld b, l
    db $10
    add sp, $10
    ld b, [hl]
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ldh a, [$e8]
    ld d, c
    db $10
    ldh a, [$f0]
    ld d, d
    db $10
    ldh a, [$f8]
    ld d, e
    db $10
    ldh a, [rP1]
    ld d, h
    db $10
    ldh a, [$08]
    ld d, l
    db $10
    ldh a, [rNR10]
    ld d, [hl]
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ld hl, sp-$18
    ld h, c
    nop
    ld hl, sp-$10
    ld h, d
    nop
    ld hl, sp-$08
    ld h, e
    nop
    ld hl, sp+$00
    ld h, h
    nop
    ld hl, sp+$08
    ld h, l
    nop
    ld hl, sp+$10
    ld h, [hl]
    nop
    nop
    ldh [rSVBK], a
    stop
    add sp, $71
    nop
    nop
    ldh a, [$72]
    nop
    nop
    ld hl, sp+$73
    nop
    nop
    nop
    ld [hl], h
    nop
    nop
    ld [$0075], sp
    nop
    db $10
    halt
    nop
    jr @+$79

    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_005_71b7

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret z

    add sp, $07
    db $10

jr_005_71b7:
    ret z

    ldh a, [$08]
    db $10
    ret z

    ld hl, sp+$09
    db $10
    ret z

    nop
    ld a, [bc]
    db $10
    ret z

    ld [$100b], sp
    ret z

    db $10
    inc c
    db $10
    ret nc

    add sp, $17
    db $10
    ret nc

    ldh a, [rNR23]
    db $10
    ret nc

    ld hl, sp+$19
    db $10
    ret nc

    nop
    ld a, [de]
    db $10
    ret nc

    ld [$101b], sp
    ret nc

    db $10
    inc e
    db $10
    ret c

    add sp, $27
    nop
    ret c

    ldh a, [$28]
    nop
    ret c

    ld hl, sp+$29
    nop
    ret c

    nop
    ld a, [hl+]
    nop
    ret c

    ld [$002b], sp
    ret c

    db $10
    inc l
    nop
    ldh [$e8], a
    scf
    db $10
    ldh [$f0], a
    jr c, jr_005_7213

    ldh [$f8], a
    add hl, sp
    db $10
    ldh [rP1], a
    ld a, [hl-]
    db $10
    ldh [$08], a
    dec sp
    db $10
    ldh [rNR10], a
    inc a
    db $10

jr_005_7213:
    add sp, -$18
    ld b, a
    db $10
    add sp, -$10
    ld c, b
    db $10
    add sp, -$08
    ld c, c
    db $10
    add sp, $00
    ld c, d
    db $10
    add sp, $08
    ld c, e
    db $10
    add sp, $10
    ld c, h
    db $10
    ldh a, [$e8]
    ld d, a
    db $10
    ldh a, [$f0]
    ld e, b
    db $10
    ldh a, [$f8]
    ld e, c
    db $10
    ldh a, [rP1]
    ld e, d
    db $10
    ldh a, [$08]
    ld e, e
    db $10
    ldh a, [rNR10]
    ld e, h
    db $10
    ld hl, sp-$18
    ld h, a
    nop
    ld hl, sp-$10
    ld l, b
    nop
    ld hl, sp-$08
    ld l, c
    nop
    ld hl, sp+$00
    ld l, d
    nop
    ld hl, sp+$08
    ld l, e
    nop
    ld hl, sp+$10
    ld l, h
    nop
    nop
    add sp, $77
    nop
    nop
    ldh a, [$78]
    nop
    nop
    ld hl, sp+$79
    nop
    nop
    nop
    ld a, d
    nop
    nop
    ld [$007b], sp
    nop
    db $10
    ld a, h
    nop
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_005_729c

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret nc

    add sp, -$6f
    db $10

jr_005_729c:
    ret nc

    ldh a, [$92]
    db $10
    ret nc

    ld hl, sp-$6d
    db $10
    ret nc

    nop
    sub h
    db $10
    ret nc

    ld [$1095], sp
    ret nc

    db $10
    sub [hl]
    db $10
    ret c

    add sp, -$5f
    nop
    ret c

    ldh a, [$a2]
    nop
    ret c

    ld hl, sp-$5d
    nop
    ret c

    nop
    and h
    nop
    ret c

    ld [$00a5], sp
    ret c

    db $10
    and [hl]
    nop
    ldh [$e8], a
    or c
    db $10
    ldh [$f0], a
    or d
    db $10
    ldh [$f8], a
    or e
    db $10
    ldh [rP1], a
    or h
    db $10
    ldh [$08], a
    or l
    db $10
    ldh [rNR10], a
    or [hl]
    db $10
    add sp, -$18
    pop bc
    db $10
    add sp, -$10
    jp nz, $e810

    ld hl, sp-$3d
    db $10
    add sp, $00
    call nz, $e810
    ld [$10c5], sp
    add sp, $10
    add $10
    ldh a, [$e8]
    pop de
    db $10
    ldh a, [$f0]
    jp nc, $f010

    ld hl, sp-$2d
    db $10
    ldh a, [rP1]
    call nc, $f010
    ld [$10d5], sp
    ldh a, [rNR10]
    sub $10
    ld hl, sp-$18
    pop hl
    nop
    ld hl, sp-$10
    ld [c], a
    nop
    ld hl, sp-$08
    db $e3
    nop
    ld hl, sp+$00
    db $e4
    nop
    ld hl, sp+$08
    push hl
    nop
    ld hl, sp+$10
    and $00
    ret z

    add sp, -$7f
    db $10
    ret z

    ldh a, [$82]
    db $10
    ret z

    ld hl, sp-$7d
    db $10
    ret z

    nop
    add h
    db $10
    ret z

    ld [$1085], sp
    ret z

    db $10
    add [hl]
    stop
    ldh [$f0], a
    stop
    add sp, -$0f
    stop
    ldh a, [$f2]
    stop
    ld hl, sp-$0d
    stop
    nop
    db $f4
    stop
    ld [$10f5], sp
    nop
    db $10
    or $10
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    nop
    ldh [$e0], a
    jr nc, jr_005_7385

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    nop
    ret z

    add sp, -$79
    db $10

jr_005_7385:
    ret z

    ldh a, [$88]
    db $10
    ret z

    ld hl, sp-$77
    db $10
    ret z

    nop
    adc d
    db $10
    ret z

    ld [$108b], sp
    ret z

    db $10
    adc h
    db $10
    ret nc

    add sp, -$69
    db $10
    ret nc

    ldh a, [$98]
    db $10
    ret nc

    ld hl, sp-$67
    db $10
    ret nc

    nop
    sbc d
    db $10
    ret nc

    ld [$109b], sp
    ret nc

    db $10
    sbc h
    db $10
    ret c

    add sp, -$59
    nop
    ret c

    ldh a, [$a8]
    nop
    ret c

    ld hl, sp-$57
    nop
    ret c

    nop
    xor d
    nop
    ret c

    ld [$00ab], sp
    ret c

    db $10
    xor h
    nop
    ldh [$e8], a
    or a
    db $10
    ldh [$f0], a
    cp b
    db $10
    ldh [$f8], a
    cp c
    db $10
    ldh [rP1], a
    cp d
    db $10
    ldh [$08], a
    cp e
    db $10
    ldh [rNR10], a
    cp h
    db $10
    add sp, -$18
    rst $00
    db $10
    add sp, -$10
    ret z

    db $10
    add sp, -$08
    ret


    db $10
    add sp, $00
    jp z, $e810

    ld [$10cb], sp
    add sp, $10
    call z, $f010
    add sp, -$29
    db $10
    ldh a, [$f0]
    ret c

    db $10
    ldh a, [$f8]
    reti


    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10db], sp
    ldh a, [rNR10]
    call c, $f810
    add sp, -$19
    nop
    ld hl, sp-$10
    add sp, $00
    ld hl, sp-$08
    jp hl


    nop
    ld hl, sp+$00
    ld [$f800], a
    ld [$00eb], sp
    ld hl, sp+$10
    db $ec
    nop
    nop
    add sp, -$09
    stop
    ldh a, [$f8]
    stop
    ld hl, sp-$07
    stop
    nop
    ld a, [$0010]
    ld [$10fb], sp
    nop
    db $10
    db $fc
    stop
    jr @-$01

    db $10
    add b
    ret z

    ldh [rP1], a
    db $10
    ret z

    jr @+$09

    db $10
    ret nc

    ldh [rNR10], a
    db $10
    ret nc

    jr @+$19

    db $10
    ret c

    ldh [rNR41], a
    db $10
    ldh [$e0], a
    jr nc, jr_005_746e

    add sp, -$20
    ld b, b
    db $10
    ldh a, [$e0]
    ld d, b
    db $10
    ld hl, sp-$20
    ld h, b
    db $10
    ret z

    add sp, -$79
    db $10

jr_005_746e:
    ret z

    ldh a, [$88]
    db $10
    ret z

    ld hl, sp-$77
    db $10
    ret z

    nop
    adc d
    db $10
    ret z

    ld [$108b], sp
    ret z

    db $10
    adc h
    db $10
    ret nc

    add sp, -$69
    db $10
    ret nc

    ldh a, [$98]
    db $10
    ret nc

    ld hl, sp-$67
    db $10
    ret nc

    nop
    sbc d
    db $10
    ret nc

    ld [$109b], sp
    ret nc

    db $10
    sbc h
    db $10
    ret c

    add sp, -$59
    db $10
    ret c

    ldh a, [$a8]
    db $10
    ret c

    ld hl, sp-$57
    db $10
    ret c

    nop
    xor d
    db $10
    ret c

    ld [$10ab], sp
    ret c

    db $10
    xor h
    db $10
    ldh [$e8], a
    or a
    db $10
    ldh [$f0], a
    cp b
    db $10
    ldh [$f8], a
    cp c
    db $10
    ldh [rP1], a
    cp d
    db $10
    ldh [$08], a
    cp e
    db $10
    ldh [rNR10], a
    cp h
    db $10
    add sp, -$18
    rst $00
    db $10
    add sp, -$10
    ret z

    db $10
    add sp, -$08
    ret


    db $10
    add sp, $00
    jp z, $e810

    ld [$10cb], sp
    add sp, $10
    call z, $f010
    add sp, -$29
    db $10

Jump_005_74e6:
    ldh a, [$f0]
    ret c

    db $10
    ldh a, [$f8]
    reti


    db $10
    ldh a, [rP1]
    jp c, $f010

    ld [$10db], sp
    ldh a, [rNR10]
    call c, $f810
    add sp, -$19
    db $10
    ld hl, sp-$10
    add sp, $10
    ld hl, sp-$08
    jp hl


    db $10
    ld hl, sp+$00
    ld [$f810], a
    ld [$10eb], sp
    ld hl, sp+$10
    db $ec
    db $10
    add b
    db $fd
    nop
    xor $34
    dec [hl]
    ld a, d
    ld c, l
    ld a, [c]
    sbc e
    db $e4
    sbc [hl]
    ld a, [$4d33]
    ld a, [c]
    dec [hl]
    ld a, d
    xor $35
    xor $35
    call c, Call_000_3edf
    and $1f
    di
    rrca
    ld a, [de]
    inc bc
    and $1f
    ei
    call c, Call_000_063e
    dec c
    ld d, $39
    dec h
    ld a, d
    ld c, l
    cp l
    ld [hl], d
    ld a, [hl-]
    inc bc
    dec h
    ld a, d
    ld d, $39
    ld b, $0d
    ret c

    rst $18
    inc a
    call z, $e63e
    ld e, $5a
    inc bc
    call z, $fb3e
    ret c

    inc a
    xor $35
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    add c
    rst $38
    rst $38
    cp l
    jp $817e


    jp Jump_000_3c3c


    rst $30
    db $c3, $ff, $00


    ld a, h
    ld bc, $817e
    cp l
    jp $81ff


    rst $38
    jp $7eff


    rst $38
    inc a
    ld a, [hl]
    cp h
    ld l, h
    dec b
    ld a, d
    ld bc, $7e81
    ld a, [hl]
    add c
    ld a, h
    ld bc, $003c
    add l
    ld [$00c0], sp
    db $fd
    nop
    xor $3e
    stop
    jr z, jr_005_75a1

    jr z, jr_005_75ab

    ccf
    ld [$0838], sp
    jr c, jr_005_75d1

    db $10
    rst $38
    jr nc, jr_005_75a9

    ld [bc], a
    rst $38
    jr z, jr_005_75b1

jr_005_75a1:
    jr nc, @+$1a

    ld l, h
    jr jr_005_760e

    inc e
    rst $38
    ld [hl], h

jr_005_75a9:
    inc c
    inc h

jr_005_75ab:
    ld e, h
    inc h
    ld e, h
    inc b
    ld a, h
    ld a, a

jr_005_75b1:
    ld c, b
    inc a
    inc c
    jr c, @+$32

    jr jr_005_75d0

    dec bc
    ld [bc], a
    cp $ee
    scf
    jr z, jr_005_75bf

jr_005_75bf:
    inc b
    jr z, jr_005_75d2

    inc l
    ld b, b
    rst $38
    inc a
    ld b, $7c
    inc b
    ld a, [hl]
    ld b, [hl]
    ld a, $06
    ld a, e
    ld a, $02

jr_005_75d0:
    ld c, c

jr_005_75d1:
    nop

jr_005_75d2:
    ld b, d
    ld a, $06
    ld a, [hl]
    ld d, b
    ld bc, $445e
    nop
    inc a
    ld c, $3c
    ld [$005b], sp
    inc c
    rlca
    nop
    sbc a
    jr z, jr_005_75ff

    nop
    jr jr_005_75f2

    dec bc
    nop
    dec bc
    ld bc, $ff48
    db $10
    inc b

jr_005_75f2:
    ld e, b
    ld h, $5c
    add h
    ld a, [hl]
    inc bc
    rst $38
    cp $02
    rst $38
    adc c
    ld [hl], a
    reti


jr_005_75ff:
    daa
    ld d, c
    rst $38
    xor a
    ld bc, $89fb
    ld [hl], e
    dec h
    ld d, e
    ld d, e
    rst $38
    rlca
    inc bc
    rlca

jr_005_760e:
    ld d, d
    rlca
    inc bc
    ld d, [hl]
    adc [hl]
    rst $38
    ld d, [hl]
    inc h
    sbc $06
    db $fc
    adc h
    ld a, h
    inc c
    ld c, a
    ld a, h
    ld [$4c7c], sp
    rlca
    nop
    ld b, $01
    jr jr_005_764e

    inc b
    inc bc
    stop
    ld [bc], a
    ld b, d
    inc bc
    sbc h
    jp nz, $e3e3

    or [hl]
    cp a
    sbc $b7
    ld hl, sp+$5e
    pop hl
    ld a, e
    ld b, a
    ld [hl], a
    cp $d7
    cp h
    cp $c1
    rst $28
    rst $10
    or l
    adc $6b
    sbc l
    or $fb
    ld a, e
    add $03
    ld b, h
    add b

jr_005_764e:
    sbc c
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$30], a
    ret nc

    or b
    ret nc

    cp b
    ld a, a
    sbc a
    or $19
    ld a, a
    add b
    rst $10
    jr z, jr_005_76a4

    add $17
    ld b, d
    add b
    cp [hl]
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld h, b
    ld a, a
    ld b, b
    ld a, l
    ld b, e
    ld c, [hl]
    ld [hl], c
    ld e, [hl]
    ld h, c
    ld a, a
    ld h, b
    ccf
    ld h, b
    ccf
    jr nz, jr_005_76b0

    ld sp, $3b15
    ld e, $1b
    rla
    jr jr_005_7697

    ld a, [de]
    add hl, bc
    ld c, $04
    rrca
    inc bc
    rlca
    nop
    ld bc, $7ebd
    rst $38
    nop

jr_005_7697:
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [rVBK], a
    ldh a, [rBGP]
    rst $38
    db $ed

jr_005_76a4:
    ld a, [c]
    sub c
    ld a, a
    xor $1f
    rst $30
    ld b, c
    dec c
    cp [hl]
    cp $05
    db $eb

jr_005_76b0:
    ld d, $1f
    ldh [rIE], a
    rst $38
    cp $83
    ld a, l
    jp $61df


    rst $38
    ld hl, $21ff
    xor l
    ld [hl], e
    ld e, a
    rst $38
    adc l
    di
    db $db

jr_005_76c6:
    daa
    rst $28
    rst $38
    rst $38
    db $10
    sbc [hl]
    ld [hl], c
    sbc h
    ld [hl], e
    sub l
    ld a, e
    jr c, @+$01

    rst $20
    rst $38
    and b
    ld h, b
    ldh [rNR41], a
    ldh [$30], a
    ret nc

    jr c, jr_005_76c6

    jr jr_005_7748

    sbc b
    ld a, b
    adc b
    jr c, @-$32

    db $f4
    db $ec
    ld l, h
    sub h
    db $fc
    add h
    ld b, c
    db $f4
    cp [hl]
    adc h
    db $e4
    sbc h
    ld [$30fc], sp
    ld hl, sp-$40
    ldh [rSC], a
    rlca
    dec e
    ld a, $3f
    jr nz, jr_005_773d

    jr nz, jr_005_7738

    daa
    dec e
    inc sp
    rrca
    add hl, de
    rlca
    dec c
    db $76
    push af
    ei
    adc d
    rst $18
    and [hl]
    xor a
    ld a, [c]
    ld a, e
    db $fc
    ld b, $0f
    ld bc, $0003
    nop
    ld a, [$f907]
    rlca
    db $fd
    inc bc
    ld a, l
    add e
    dec a
    jp $f3ed


    ld d, $39
    dec bc
    sbc h
    add [hl]
    adc a
    add c
    add e
    add b
    ld b, c
    ret nz

    cp [hl]
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    ret nz

    nop

jr_005_7738:
    nop
    rra
    ccf
    ld a, a
    pop hl

jr_005_773d:
    cp [hl]
    sbc $60
    ldh a, [$80]
    ret nz

    nop
    add b
    or b
    ld hl, sp-$18

jr_005_7748:
    ret c

    add sp, $1c
    db $f4
    adc $3a
    ld h, a
    dec e
    inc sp
    dec de
    rla
    dec c
    dec de
    ld b, $0f
    nop
    nop
    ld e, a
    ldh [$2f], a
    ld [hl], b
    dec d
    ld a, $0b
    inc c
    rrca
    jr jr_005_777a

    add hl, de
    inc e
    inc de
    inc e
    inc de
    dec e
    inc de
    dec c
    dec de
    ld b, c
    dec c
    cp [hl]
    dec bc
    ld b, $0d
    ld [hl], e
    or $ed
    sbc a
    db $db
    and a
    xor a

jr_005_777a:
    ldh a, [rLCDC]
    ldh [$38], a
    db $fc
    xor h
    db $76
    cp [hl]
    ld a, d
    ld l, $fb
    ld b, a
    db $ed
    ld b, a
    push bc
    rst $00
    push bc
    ld b, a
    push hl
    and a
    ld h, l
    and e
    ld [hl], a
    ret nc

    cp b
    ld c, b
    ld hl, sp-$58
    ld a, b
    xor b
    ld a, b
    or b
    ld a, b
    nop
    nop
    ld a, $7f
    ld e, l
    ld h, e
    ld a, [hl]
    pop bc
    db $db
    or h
    or $ad
    rst $38
    xor l
    db $fd
    xor a
    ld d, [hl]
    rst $38
    dec b
    ld b, c
    ld b, $8c
    dec b
    ld b, $04
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0003
    ld bc, $4212
    rlca
    sbc h
    dec b
    add a
    add a
    adc a
    adc e
    rst $18

jr_005_77c7:
    ld e, l
    di
    cp [hl]
    ld h, c
    rst $30
    ld l, $ff
    jr jr_005_77c7

    jr jr_005_7850

    adc c
    ld hl, sp-$71
    xor b
    rst $18
    ld [hl], c
    rst $38
    inc bc
    rst $38
    db $fd
    rst $38
    ld b, [hl]
    ld bc, $0082
    ld bc, $be08
    cp l
    ld a, [hl]
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$c7], a
    rst $38
    push hl
    ld a, [$feb9]
    ret z

    rst $30
    or a
    ld hl, sp-$69
    add sp, -$28
    rst $20
    ld e, [hl]
    pop hl
    ld c, [hl]
    pop af
    cp $83
    ld a, l
    jp $61df


    rst $38
    ld hl, $21ff
    xor l
    ld [hl], e
    ld e, a
    rst $38
    adc l
    di
    db $db
    daa
    cp a
    ld l, a
    ld e, a
    ldh a, [$de]
    ld [hl], c
    cp h
    db $d3
    sub l
    ei
    ret z

    ccf
    ld b, c
    sub a
    add c
    ld a, a
    add hl, bc
    ld b, h
    ld bc, $03be
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld b, $05
    ld b, $07
    inc c
    rrca
    ld a, [de]
    cp $fd
    db $dd
    or e
    ld a, [hl]
    rst $38
    ld e, c
    ld h, [hl]
    ld [hl], a
    ret z

    xor a
    ret nc

    xor $91
    xor $91
    ld a, l
    add e
    db $d3
    ccf
    xor a
    ld e, a
    ld l, c
    sbc a
    ld l, c

jr_005_7850:
    sbc c
    ld d, c
    cp c
    and b
    ld [hl], c
    ret nz

    ldh [$78], a
    cp b
    cp b
    ret z

    ld [hl], b
    ld hl, sp+$1e
    rra
    ccf
    jr nz, jr_005_78a1

    jr nz, jr_005_788f

    ld [hl], a
    db $76
    ld sp, hl
    db $ed
    ld b, c
    sbc [hl]
    add h
    db $db
    and a
    xor h
    di
    db $10
    sub b
    cp $01
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    db $dd
    db $e3
    ld a, $ff
    sbc h
    rst $38
    inc e
    rst $38
    db $10
    sub b
    add sp, $1c
    db $fc
    inc b
    db $fc
    inc b
    ld d, h
    xor $ee
    sbc a
    or a
    ld a, c

jr_005_788f:
    db $db
    push hl
    dec [hl]
    rst $08
    db $10
    cp [hl]
    add hl, de
    rla
    dec de
    ld d, $1e
    ld de, $331d
    ld l, $33
    ld a, [hl-]
    ld h, [hl]

jr_005_78a1:
    ld e, d
    ld h, a
    ld a, c
    rst $00
    cp l
    jp $83fd


    db $fd
    add e
    cp c
    rst $00

jr_005_78ad:
    ld d, d
    rst $28
    ld c, l
    ld a, [hl]
    jr nz, jr_005_7932

    jr jr_005_78f4

    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld bc, $0383
    ld [bc], a
    ld a, e
    ld a, a
    ld e, a
    ld a, a
    ld a, d
    ld a, l
    scf
    ld a, b
    dec l
    or d
    sub a
    cp b
    ld a, a
    rst $38
    db $e4
    rra
    rst $30
    inc c
    ei
    rlca
    ld b, c
    ld a, a
    add c
    add b
    inc de
    ld b, d
    ld bc, $0342
    add l
    rlca
    ld b, $05
    rlca
    rlca
    db $10
    sub b
    jr c, jr_005_7962

    ld d, a
    rst $28
    rst $38
    add b
    rst $30
    adc b
    cp e
    ld l, h
    ld a, h
    rst $28
    cp e
    rst $28
    jr nc, jr_005_78ad

jr_005_78f4:
    ld [de], a
    sub d
    add b
    ret nz

    ld [hl], b
    ld hl, sp-$12
    rra
    db $fd
    inc bc
    rst $20
    jr jr_005_7910

    ld hl, sp-$09
    ld hl, sp+$13
    inc a
    ld [$061f], sp
    sbc d
    ld bc, $0303
    ld [bc], a
    ld a, e
    ld a, a

jr_005_7910:
    ld e, a
    ld a, a
    ld a, d
    ld a, l
    scf
    ld a, b
    dec l
    ld [hl-], a
    rst $10
    ld hl, sp-$41
    ld a, a
    db $e4
    rra
    rst $30
    inc c
    cp e
    ld b, a
    ld a, a
    add b
    add hl, bc
    add h
    ld bc, $1d19
    dec l
    ld b, e
    ccf
    sub b
    ld a, $3d
    ccf
    jr c, jr_005_795f

jr_005_7932:
    ld [hl-], a
    scf
    ld a, b
    ld l, l
    sbc $bb
    rst $00
    rst $38
    add c
    db $dd
    or e
    ld b, $9a
    ld [hl], b
    ld hl, sp-$08
    call c, $f7bc
    rst $28
    ld [hl], a
    rst $30
    call z, $f9ce
    cp $fd
    ld h, a
    cp $ff
    nop
    db $dd
    ld a, $eb
    db $fc
    add l
    cp $eb
    or $08
    or b
    ld h, b
    ldh [$e0], a
    and b

jr_005_795f:
    and b
    ld h, b
    ld b, b

jr_005_7962:
    ldh [rLCDC], a
    ret nz

    ld a, b
    db $fc
    or h
    adc $fa
    add [hl]
    ld a, d
    add a
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, l
    add e
    dec bc
    dec c
    rrca
    add hl, de
    dec d
    dec de
    dec e
    inc sp
    add hl, hl
    scf
    ld [hl], $2f
    dec sp
    inc l
    ccf
    jr nz, jr_005_79bb

    jr z, jr_005_79ac

    add hl, sp
    ld de, $0e3f
    rra
    ld [$7dbe], sp
    sbc [hl]
    rst $30
    add hl, de
    cp $0f
    ld a, e
    rst $38
    or l
    adc $f5
    ld c, $b5
    ld c, [hl]
    ld b, h
    rst $38
    ld a, e
    rst $38
    jp z, $5ffd

    add sp, $3f
    ld h, h
    inc h
    ccf
    rra
    ld [hl-], a
    rla
    ld a, [de]
    add hl, bc

jr_005_79ac:
    rra
    or e
    call c, $fe75
    push af
    ld c, $ea
    rst $30
    rst $18
    ccf
    db $fd
    inc bc
    cp a
    ld b, b

jr_005_79bb:
    ld c, l
    or $b3
    rst $38
    inc c
    rst $38
    ld b, e
    cp a
    ld b, e
    cp a
    ld h, d
    sbc [hl]
    and h
    ld e, [hl]
    and h
    ld e, h
    ld b, c
    ld l, b
    sbc c
    sbc h
    ret z

    inc a
    ld [hl], h
    adc h
    ld a, h
    add h
    ld a, h
    add [hl]
    ld a, [hl-]
    add $ee
    ld a, [c]
    sbc $32
    xor $12
    ld a, [hl]
    add d
    jp c, Jump_005_74e6

    adc h
    ld hl, sp-$08
    ld a, [bc]
    cp [hl]
    rlca
    inc bc
    dec e
    ld c, $37
    jr jr_005_7a1e

    ld sp, $227c
    ld e, b
    ld h, [hl]
    ld [hl], b
    ld c, c
    ld [hl], c
    ld c, e
    ld d, d
    ld l, c
    ld a, b
    inc h
    inc l
    inc sp

jr_005_79ff:
    scf
    jr @+$1f

    ld c, $07
    inc bc
    nop
    nop
    rrca
    rlca
    dec de
    inc c
    rla
    jr @+$41

    db $10
    add hl, hl
    ld [hl], $30
    add hl, hl
    jr nc, jr_005_7a3e

    ld [hl-], a
    add hl, hl
    ld [hl-], a
    dec hl
    ld [hl-], a
    dec hl
    ld [hl-], a
    add hl, hl
    add hl, hl

jr_005_7a1e:
    ld [hl], $3f
    db $10
    rla
    jr @+$1d

    inc c
    rrca
    rlca
    ld c, $ae
    rra
    rrca
    ld [hl], a
    jr c, jr_005_79ff

    ld l, [hl]
    and b
    pop de
    ldh [$95], a
    and d
    db $d3
    pop de
    ld l, [hl]
    ld [hl], a
    jr c, jr_005_7a59

    rrca
    ld bc, $0003

jr_005_7a3e:
    ld bc, $0100
    ld bc, $0203
    rlca
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    inc bc
    ld b, $01
    inc bc
    ld a, b
    db $fd
    or $8e
    db $fd
    and e
    xor a
    ldh a, [rDIV]
    sbc h

jr_005_7a59:
    ld a, h
    add e
    cp $81
    cp $81
    ld e, a
    and b
    jp $9d3c


    ld a, [hl]
    ld a, [hl+]
    rst $38
    ld b, l
    rst $20
    ld b, e
    db $e3
    and e
    db $76
    sub $b5
    ld [hl], a
    db $dd
    db $eb
    db $dd
    db $eb
    inc e
    inc b
    cp [hl]
    add b
    ld a, a
    inc a
    ret nz

    ld a, a
    rst $38
    ld d, c
    jr z, jr_005_7a88

    dec [hl]
    inc b
    ld [hl+], a
    ld [bc], a
    dec [hl]
    ld hl, $0118

jr_005_7a88:
    cp $38
    rlca
    cp $ff
    ld [de], a
    adc c
    adc b
    ld d, l
    ld b, h
    inc hl
    ld [hl+], a
    ld d, l
    ld de, $088a
    dec d
    inc b
    ld [de], a
    ld [de], a
    dec c
    ld bc, $0808
    dec b
    nop
    ld b, $01
    ld [bc], a
    nop
    ld bc, $5688
    ld b, h
    ld [hl+], a
    ld hl, $1056
    adc c
    adc d
    ld d, h
    ld b, h
    ld [hl+], a
    ld hl, $4150
    adc b
    cp [hl]
    nop
    add b
    ld a, a
    inc e
    ldh [$7f], a
    rst $38
    ld [hl+], a
    sub c
    ld de, $08aa
    call nz, $aa44
    and d
    ld d, c
    ld bc, $3cfe
    inc bc
    cp $ff
    ld [hl+], a
    inc d
    db $10
    xor h
    adc b
    ld b, h
    ld b, b
    xor h
    inc h
    jr jr_005_7aeb

    ld l, d
    ld [$8444], sp
    ld l, d
    ld [hl+], a
    sub c
    ld d, c
    ld a, [hl+]
    ld [$8444], sp
    ld a, [bc]
    ld de, $1000
    xor b

jr_005_7aeb:
    add b
    ld c, b
    ld c, b
    or b
    jr nz, @+$12

    db $10
    and b
    add b
    ld h, b
    add b
    ld b, c
    ld b, b
    add d
    nop
    add b
    rst $38
    ret nz

    nop
    db $fd
    nop
    xor $3c
    rst $18
    or b
    cp b
    rst $30
    ret c

    or a
    cp $00
    nop
    cp a
    cp h
    rst $38
    jp z, $fdbf

    ld [hl], e
    sbc $ee
    dec a
    rst $08
    cp $b2
    rst $08
    ld e, $09
    rlca
    inc bc
    rst $38
    rla
    rrca
    add hl, sp
    rra
    ld l, a
    inc sp
    jr c, jr_005_7b8d

    rst $38
    rst $10

jr_005_7b28:
    ld l, e
    push af
    rst $18
    rst $18
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    rst $38
    ccf
    rra
    rla
    rrca
    rlca
    inc bc
    push de
    xor $9f
    ei
    db $fd
    ei
    db $fd
    db $fd
    dec a
    nop
    ccf
    ld bc, $ffff
    ld a, a
    db $eb
    ld a, a
    rst $28
    cp e
    db $eb
    sub $7a
    rst $38
    add [hl]
    sub $ec
    xor h
    ret c

    ld hl, sp-$10
    ldh [rIE], a
    ret nz

    xor e
    ld [hl], a
    rst $18
    cp a
    reti


    cp a
    xor a
    rst $18
    ld [hl], e
    ld hl, sp+$67
    ld d, a
    db $eb
    ld a, [hl-]
    rrca
    rlca
    inc bc
    db $76
    ld l, $01
    ccf
    rra
    ld b, [hl]
    nop
    ld a, a
    rst $38
    ld a, a
    ld b, b
    nop
    rst $38
    cp $d7
    cp $f7
    db $dd
    rst $10
    ld l, e
    ld a, $3f
    ld h, c
    ld l, e
    scf
    dec [hl]
    dec de
    rra

jr_005_7b8d:
    ld c, e
    nop
    add l
    jr nz, @+$12

    db $10
    ld [$4508], sp
    inc b
    ld b, e
    ld [$1043], sp
    ld b, h
    jr nz, jr_005_7be1

    db $10
    add c
    ld [$7f08], sp
    ld b, e
    jr nc, jr_005_7b28

    jr @+$1e

    ld b, l
    inc c
    adc [hl]
    inc e
    jr jr_005_7bc6

    jr c, jr_005_7be0

    jr nc, jr_005_7c22

    ld h, b
    ld h, b
    ld [hl], b
    jr nc, jr_005_7be7

    jr c, jr_005_7bd1

    ld [$00ff], sp
    ld [bc], a
    db $fd
    nop
    xor $36
    ld a, b
    db $fc
    or $8f
    cp l

jr_005_7bc6:
    jp Jump_005_58ff


    rst $20
    ld l, $71
    cpl
    jr nc, jr_005_7be2

    ccf
    rst $38

jr_005_7bd1:
    rra
    rra
    rrca
    rra
    ld bc, $0101

jr_005_7bd8:
    inc bc
    ei
    inc bc
    ld [bc], a
    ld c, $00
    ld b, $07

jr_005_7be0:
    inc b

jr_005_7be1:
    rlca

jr_005_7be2:
    dec c
    rst $38
    rrca
    ld a, [de]
    rra

jr_005_7be7:
    ld [hl-], a
    ccf
    ld hl, $233c
    rst $38
    jr c, jr_005_7c16

    db $10
    ccf
    rrca

Call_005_7bf2:
    rra
    nop
    ld bc, $eef8
    scf
    ld sp, $0c0f
    nop
    ld b, $07
    rrca
    rrca
    jr @+$01

    ld a, a
    ldh a, [$db]
    or a
    ld [hl], l
    xor $bb
    ld l, h
    rst $38
    rst $38
    add sp, -$41
    ret


    ld a, e
    adc h
    db $ed
    ld e, $ff
    db $d3
    ccf

jr_005_7c16:
    rst $28
    jr nc, jr_005_7bd8

    ld h, b
    cp a
    ld h, b
    rst $38
    pop af
    rst $28
    db $fd
    inc de
    cp a

jr_005_7c22:
    ld l, c
    ld a, [hl]
    rst $20
    rst $38
    rst $18
    jr nc, @+$01

    ld hl, sp+$17
    db $fc
    dec bc
    rst $38
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    ld b, $0d
    ei
    cp $ff
    db $e3
    sbc a
    add sp, -$61
    ld h, l
    sbc $33
    ld a, a
    rst $38
    ld l, $3e
    ld a, [hl-]
    ld l, $3f
    cpl
    ld a, a
    ld b, b
    di
    ld a, a
    ld a, a
    ld [hl-], a
    rrca
    xor $31
    ret nz

    ret nz

    and b
    ld h, b
    rst $38
    ldh a, [$f8]
    adc h
    ld a, [hl]
    ld [c], a
    rra
    pop af
    adc a
    rst $28
    ld [hl], c
    rst $08
    pop af
    ld c, a
    or d
    nop
    adc a
    ld [c], a
    rra
    rst $28
    call nz, $f83e
    db $fc
    and [hl]
    nop
    db $10
    ldh a, [rNR10]
    rst $38
    call nc, $fe76
    jp c, $e67a

    call c, $ff2e
    cp b
    ld e, h
    db $e4

jr_005_7c7e:
    inc a
    ld b, h
    db $fc
    adc b
    db $fc
    rst $38
    jr nc, jr_005_7c7e

    ret nz

    ldh a, [$80]
    ret nz

    add b
    add b
    rst $38
    ldh [$f0], a
    ldh a, [$58]
    ld hl, sp+$28
    ld hl, sp-$58
    rst $38
    ld d, b
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    ld hl, sp+$48
    di
    ld hl, sp-$08
    ld c, [hl]
    rrca
    ld h, b
    ld bc, $e8f7
    ld hl, sp+$17
    ld a, b
    ld l, b
    inc bc
    xor [hl]
    rrca
    ret nz

    ld bc, $16f4
    sbc [hl]
    ld a, [$03c8]
    rst $38
    ld a, a
    db $fc
    dec bc
    cp $05
    rst $38
    add d
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    ld c, $79
    ld a, a
    ld [hl], h
    ld e, a
    rst $38
    db $fc
    rst $38
    ei
    add a
    ld a, a
    db $fd
    rrca
    add hl, de
    rst $38
    rra
    ld de, $131d
    ld e, $1f
    nop
    nop
    rst $38
    ld a, [c]
    ld e, $a2
    ld a, [hl]
    call nz, $98fe
    db $fc
    rst $38
    ldh [$f8], a
    ld b, b
    ldh [$c0], a
    ld b, b
    ret nz

    ldh [rIE], a
    ld hl, sp-$08
    ld hl, sp-$78
    ldh a, [$78]
    and b
    ld h, b
    rst $38
    ret nc

    jr nc, @+$72

    sub b
    ldh a, [$f0]
    nop
    nop
    rst $28
    ld c, $27
    dec c
    ld h, $6e
    add hl, de
    nop
    nop
    ld [de], a
    rst $38
    inc c
    inc b
    ld [de], a
    ld [bc], a
    ld de, $1106
    dec c
    rst $38
    inc de
    ld [bc], a
    ld e, $16
    inc c
    adc [hl]
    ld h, a
    dec c
    rst $28
    add [hl]
    ld a, $87
    dec a
    sub c
    ld [de], a
    ld c, $87
    db $ed
    rst $38
    ld h, [hl]
    ld c, $27
    ld b, l
    ld l, $1e
    rst $08
    dec hl
    rst $30
    sbc h
    add h
    ld [hl], e
    daa
    dec b
    add b
    ld h, b
    ld [hl+], a
    sub c
    ccf
    ld de, $088a
    rst $08
    ld b, l
    ld l, $7a
    inc de
    sub d
    dec bc
    rst $38
    add c
    ld a, [hl]
    add hl, sp
    add c
    ld b, l
    cp e
    ld c, l
    or e
    cp a
    dec c
    or e
    dec e
    and e
    dec sp
    add a
    jp c, Jump_000_3311

    rst $38
    adc a
    inc sp
    adc a
    dec sp
    add a
    ld e, l
    and e
    ld c, l
    rra
    or e
    ccf
    rst $38
    rst $38
    ld a, [hl]
    ld b, h
    ld bc, $0082
    ld bc, $b01a
    rst $38
    ld hl, sp-$49
    db $fc
    ld l, e
    cp a
    push af
    ccf
    rst $08
    rst $38
    ld b, [hl]
    db $fd
    ei
    cp $e1
    sbc a
    ld sp, hl
    rst $38
    rst $30
    rrca
    rst $38
    ld a, [$321f]
    ccf
    ld [hl+], a
    ld a, [hl-]
    daa
    dec a
    ccf
    nop
    nop
    db $ec
    inc a
    ld e, [hl]
    or $9b
    push af
    ccf
    pop af
    adc $fe
    adc b
    db $fc
    ldh a, [$f8]
    nop
    add b
    ld b, e
    ldh a, [$9d]
    db $10
    ldh [$f0], a
    ld b, b
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop

jr_005_7dab:
    db $e4
    inc a
    ld b, h
    db $fc
    adc b
    db $fc
    jr nc, jr_005_7dab

    rst $38
    rst $38
    cp a
    pop bc
    cp $e7
    sbc b
    call c, $f043
    xor h
    db $10
    ldh [$f0], a
    ld b, b
    ret nz

    and b
    ld h, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    rlca
    nop
    jr jr_005_7dd6

    daa
    rra
    ld e, [hl]
    ccf
    ld e, e
    inc a
    or h

jr_005_7dd6:
    ld a, b
    cp b
    ld [hl], b
    xor b
    ld [hl], b
    xor b
    ld [hl], b
    cp b
    ld [hl], b
    or h
    ld a, b
    ld e, e
    inc a
    ld e, [hl]
    ccf
    daa
    rra
    jr @+$09

    rlca
    rrca
    sub d
    ld bc, $0200
    ld bc, $0301
    dec b
    inc bc
    ld [bc], a
    rlca
    dec bc
    ld b, $04
    ld c, $04
    ld c, $06
    inc c
    ld [$088d], sp
    rlca
    daa
    rra
    sbc c

jr_005_7e05:
    ld a, [hl]
    ld l, b
    ldh a, [$a0]
    ret nz

    nop
    add b
    add b
    dec d
    sub c
    ld bc, $0200
    ld bc, $0204
    nop
    inc b
    ld [$0004], sp
    ld [$0008], sp
    stop
    db $10
    inc bc
    add c
    db $10
    rlca

jr_005_7e24:
    add [hl]
    dec c
    nop
    ld d, b
    jr nz, jr_005_7e2a

jr_005_7e2a:
    ret nz

    inc e
    sub b
    ldh [$c0], a
    ld a, c
    or b
    xor a
    ld e, l
    ld e, d
    daa
    cpl
    db $10
    ld d, $09
    add hl, bc
    rlca
    rlca
    ld [bc], a
    ld [$dbbe], sp
    or a
    ld [hl], l
    xor $bb
    ld l, h
    rst $38
    add sp, -$41
    ret


    ld a, e
    adc h
    db $ed
    ld e, $d3
    ccf
    rst $28
    jr nc, jr_005_7e05

    ld l, h
    cp l
    ld h, d
    db $fd
    db $e3
    db $fd
    inc de
    cp a
    ld l, c
    ld a, [hl]
    rst $20
    rst $18
    jr nc, @-$0d

    adc a
    ld [hl], c
    rst $08
    pop af
    ld c, a
    pop af
    ld c, a
    pop af
    adc a
    ld [c], a
    rra
    call nz, $f83e
    db $fc
    and b
    ld h, b
    ret nc

    jr nc, jr_005_7e24

    ld d, b
    db $f4
    ld d, [hl]
    cp $da
    ld a, d
    and $dc
    ld l, $41
    cp b
    sbc e
    ld e, h
    inc bc

jr_005_7e82:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    inc b
    rlca
    dec c
    rrca
    ld a, [de]
    rra
    ld [hl-], a
    ccf
    ld hl, $233c
    add hl, sp
    daa
    inc de
    ld a, $0f
    ld e, $01
    inc bc
    ld b, $ff
    ld [bc], a
    adc [hl]
    rrca
    ld [$0000], sp
    ccf
    jr nz, jr_005_7ea6

jr_005_7ea6:
    nop
    ret nz

    ld b, b
    ld hl, $9422
    ld e, c
    inc bc
    ld b, d
    ld [bc], a
    inc bc
    add a
    ld [hl+], a
    add d
    adc b
    add h
    inc b
    inc b
    ld [bc], a
    inc bc
    adc c
    inc bc
    ld [bc], a
    add h
    ld b, h
    add hl, hl
    sbc d
    nop
    nop
    ldh a, [$03]
    adc c
    db $fc
    nop
    ld b, h
    ld hl, $9041
    add b
    add b
    jr nz, jr_005_7ed3

    add e
    ld b, b
    nop

jr_005_7ed3:
    ld b, b
    inc bc
    ld a, a
    inc b
    add c
    rlca
    rlca
    ld b, d
    add b
    add l
    ld b, c
    ld [bc], a
    rra
    ld [bc], a
    ld [bc], a
    dec b
    add e
    add h
    ld b, h
    ld [hl-], a
    ld b, h
    ld bc, $4205
    ld bc, $8282
    ld b, b
    inc bc
    adc b
    db $10
    ldh [rP1], a
    nop
    inc b
    ld hl, $1c02
    ld b, e
    jr nz, jr_005_7e82

    ret nz

    nop
    ld hl, sp+$40
    nop
    ld b, b
    inc b
    rst $38
    and b
    nop
    rst $38
    dec b
    ld a, [de]
    ld a, [hl+]
    db $10
    add d
    ld a, h
    ld b, $83
    rst $38
    ccf
    add d
    ld a, $83
    ld a, $84
    add hl, sp
    adc [hl]
    ld a, a
    inc a
    adc b
    add hl, sp
    adc [hl]
    ld a, $84
    ld a, $f5
    jr nc, @+$01

    ld b, d
    cp a
    cp $7c
    ld a, [hl+]
    stop
    ld bc, $07ff
    rrca
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    dec b
    ld c, $07
    dec b
    dec c
    dec bc
    dec sp
    dec [hl]
    rst $38
    ld a, a
    ld c, [hl]
    rst $38
    sub c
    push af
    sbc d
    rst $38
    adc [hl]
    rst $38
    cp a
    ret z

    ld e, a
    ld h, l
    scf
    dec sp
    cp $ff
    cp $2f
    dec b
    rst $30
    rrca
    rst $38
    nop
    cp $1f
    db $fd
    rst $38
    ld h, d
    db $fd
    add d
    db $dd
    ld [c], a
    ld e, e
    db $e4
    add a
    rst $38
    ld a, b
    ld a, a
    add b
    cp a
    ld b, b
    rst $08
    or b
    nop
    ld a, a
    nop
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [rHDMA5]
    nop
    rst $38
    ld hl, sp-$08
    ld hl, sp-$48
    ld a, h
    db $fc
    ld a, $be
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, e
    rst $20
    rst $38
    db $db
    rst $28
    rst $18
    inc sp
    rst $38
    inc hl
    db $db
    daa
    ld l, $0f
    db $fd
    add d
    rrca
    call Call_005_7bf2
    add h
    ld b, [hl]
    dec b
    ld h, b
    nop
    rst $38
    inc c
    ld a, b
    ld e, a
    xor h
    ld d, a
    xor a
    ld [hl], l
    adc e
    rst $38
    ld e, a
    and c
    or $89
    ld e, a
    and b
    sub $a9
    rst $38
    ld [hl+], a
    inc e
    rst $08
    ld a, $6b
    rst $18
    ld l, e
    rst $18
    rst $38
    ld l, c
    rst $18
    xor e
    ld e, a
    jp hl


    rra
    xor e
    ld e, a
    rst $38
    sub $a9
    ld e, a
    and b
    db $76
    adc c
    rst $18
    and c
    rst $38
    ld [hl], l
    adc e
    rst $10
    xor a
    ld e, l
    xor [hl]
    ld a, b
    ld a, h
    ld a, [$0308]
    ld l, c
    inc bc
    nop
    db $eb
    rst $18
    rst $28
    ld a, $3e
    rst $38
    inc e
    add [hl]
    ld a, h
    ld a, a
    add d
    ld a, a
    cp e
    rst $38
    ld e, a
    ld a, [hl-]
    rst $38
    jr c, @+$01

    ld a, h
    ld [hl], $00
    db $10
    inc a
    nop
    cp $37
    ld [bc], a
    ld a, a
    cp d
    rst $38
    cp e
    cp $83
    db $fc
    ld bc, $ff7e
    rst $38
    rst $38
    rst $38
    dec b
