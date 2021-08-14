; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    ld a, $01
    ld [$c689], a
    ld [$c680], a
    ld a, [$d53e]
    and a
    jp z, Jump_020_4091

    jr jr_020_4019

    ld a, $01
    ld [$c689], a
    ld [$c680], a

jr_020_4019:
    ld a, [$c697]
    ld b, a
    ld a, [$c6e0]
    or b
    jr nz, jr_020_404a

    ld a, [$c65e]
    sub $01
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [$c65c]
    cpl
    inc a
    add $07
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    jr jr_020_406f

jr_020_404a:
    ld a, [$c65e]
    sub $01
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [$c65c]
    cpl
    inc a
    add $01
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a

jr_020_406f:
    ldh a, [$a6]
    and $f0
    ld [$c6e7], a
    call Call_020_473b
    and $0f
    jp z, Jump_020_410f

    ld a, [$c679]
    and a
    jp nz, Jump_020_4101

    ld a, b
    ret


    xor a
    ret


    ld a, $01
    ld [$c689], a
    ld [$c680], a

Jump_020_4091:
    ld a, [$c697]
    ld b, a
    ld a, [$c6e0]
    or b
    jr nz, jr_020_40c4

    ld a, [$c65d]
    cpl
    inc a
    sub $01
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [$c65c]
    cpl
    inc a
    add $07
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    jr jr_020_40eb

jr_020_40c4:
    ld a, [$c65d]
    cpl
    inc a
    sub $01
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [$c65c]
    cpl
    inc a
    add $01
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a

jr_020_40eb:
    ldh a, [$a6]
    and $f0
    ld [$c6e7], a
    call Call_020_473b
    and $0f
    jr z, jr_020_410f

    ld a, [$c679]
    and a
    jr nz, jr_020_4101

    ld a, b
    ret


Jump_020_4101:
jr_020_4101:
    ld a, $01
    ld [$c680], a
    call Call_020_474b
    ld a, $01
    ld [$c65a], a
    ret


Jump_020_410f:
jr_020_410f:
    ld a, [$c65b]
    ld b, a
    ld a, [$d53b]
    add b
    add $02
    and $f0
    ld b, a
    ld a, [$c6e7]
    cp b
    jr z, jr_020_4184

    ld a, $01
    ld [$c680], a
    call Call_020_474b
    ld b, a
    and $0f
    ret z

    ld a, [$c656]
    and a
    jr nz, jr_020_4182

    ld a, [$c679]
    and a
    jr nz, jr_020_4182

    ld a, [$c697]
    and a
    jr nz, jr_020_4182

    ld a, [$c685]
    and a
    jr nz, jr_020_4182

    ld a, [$c6d3]
    and a
    jr nz, jr_020_4182

    ld a, [$c733]
    and a
    jr nz, jr_020_4182

    ld a, $01
    ld [$c685], a
    ld a, [$c60b]
    bit 4, a
    jr nz, jr_020_417b

    bit 5, a
    jr nz, jr_020_4174

    ld a, [$c698]
    cp $01
    jr z, jr_020_417b

    cp $02
    jr z, jr_020_4174

    ld a, [$d53e]
    cp $01
    jr z, jr_020_417b

jr_020_4174:
    ld b, $02
    call Call_000_2a90
    jr jr_020_4184

jr_020_417b:
    ld b, $02
    call $2aa4
    jr jr_020_4184

jr_020_4182:
    ld a, b
    ret


jr_020_4184:
    xor a
    ret


    xor a
    ld [$c680], a
    ld a, [$c688]
    and a
    jp nz, Jump_020_430e

    ld a, [$c733]
    and a
    jp nz, Jump_020_4432

    ld a, [$c750]
    cp $0e
    jr z, jr_020_41a3

    cp $0f
    jr nz, jr_020_41ae

jr_020_41a3:
    ld a, [$c60c]
    bit 0, a
    jp z, Jump_020_4369

    jp Jump_020_43c3


jr_020_41ae:
    ld a, [$c656]
    and a
    jr nz, jr_020_41ba

    ld a, [$c696]
    and a
    jr z, jr_020_41bf

jr_020_41ba:
    ld a, $01
    ld [$c680], a

jr_020_41bf:
    ld a, $01
    ld [$c689], a
    ld a, [$d53d]
    and $0c
    jp z, Jump_020_4276

    cp $0c
    jp z, Jump_020_42c2

    ld a, [$c685]
    and a
    jr nz, jr_020_41f3

    ld a, [$c65b]
    cpl
    inc a
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    jr jr_020_420f

jr_020_41f3:
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a

jr_020_420f:
    call Call_020_4719
    and a
    ret nz

    ld a, [$d53d]
    and $0e
    cp $04
    jr z, jr_020_4223

    cp $0a
    jr z, jr_020_424e

    xor a
    ret


jr_020_4223:
    ld a, [$c656]
    and a
    jr nz, jr_020_422f

    ld a, [$c696]
    and a
    jr z, jr_020_4234

jr_020_422f:
    ld a, $01
    ld [$c680], a

jr_020_4234:
    call Call_020_4727
    and a
    ret z

    ld a, [$c656]
    and a
    jr z, jr_020_424b

    ld a, [$d53d]
    and $f0
    add $06
    ld [$d53d], a
    xor a
    ret


jr_020_424b:
    ld a, $01
    ret


jr_020_424e:
    ld a, [$c656]
    and a
    jr nz, jr_020_425a

    ld a, [$c696]
    and a
    jr z, jr_020_425f

jr_020_425a:
    ld a, $01
    ld [$c680], a

jr_020_425f:
    call Call_020_4731
    and a
    ret z

    ld a, [$c656]
    and a
    jr z, jr_020_424b

    ld a, [$d53d]
    and $f0
    add $09
    ld [$d53d], a
    xor a
    ret


Jump_020_4276:
    ld a, [$c685]
    and a
    jr nz, jr_020_4298

    ld a, [$c65b]
    cpl
    inc a
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    jr jr_020_42b4

jr_020_4298:
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a

jr_020_42b4:
    call Call_020_4719
    and a
    ret nz

    ld a, $01
    ld [$c680], a
    call Call_020_4727
    ret


Jump_020_42c2:
    ld a, [$c685]
    and a
    jr nz, jr_020_42e4

    ld a, [$c65b]
    cpl
    inc a
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    jr jr_020_4300

jr_020_42e4:
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a

jr_020_4300:
    call Call_020_4719
    and a
    ret nz

    ld a, $01
    ld [$c680], a
    call Call_020_4731
    ret


Jump_020_430e:
    ld a, $01
    ld [$c680], a
    ld a, $01
    ld [$c689], a
    ld a, [$c65d]
    cpl
    inc a
    sub $05
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret nz

    ld a, [$c65e]
    sub $05
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    ret


Jump_020_4369:
    ld a, $01
    ld [$c689], a
    ld a, [$c65d]
    cpl
    inc a
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret nz

    ld a, [$c65e]
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    ret


Jump_020_43c3:
    ld a, $01
    ld [$c689], a
    ld [$c656], a
    ld [$c680], a
    ld a, [$c65d]
    cpl
    inc a
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    jr nz, jr_020_442a

    ld a, $01
    ld [$c680], a
    ld a, [$c65e]
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret z

jr_020_442a:
    xor a
    ld [$c656], a
    ld a, [$c65a]
    ret


Jump_020_4432:
    ld a, $01
    ld [$c689], a
    ld [$c680], a
    ld a, [$c65d]
    cpl
    inc a
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    jr nz, jr_020_4496

    ld a, $01
    ld [$c680], a
    ld a, [$c65e]
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret z

jr_020_4496:
    ret


    ld a, $01
    ld [$c689], a
    ld a, [$d53d]
    and $0c
    jr z, jr_020_44fa

    cp $0c
    jp z, Jump_020_4524

    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret nz

    ld a, [$d53d]
    and $0e
    cp $04
    jr z, jr_020_44d8

    cp $0a
    jr z, jr_020_44e9

    xor a
    ret


jr_020_44d8:
    call Call_020_4727
    and a
    ret z

    ld a, [$d53d]
    and $f0
    add $06
    ld [$d53d], a
    xor a
    ret


jr_020_44e9:
    call Call_020_4731
    and a
    ret z

    ld a, [$d53d]
    and $f0
    add $09
    ld [$d53d], a
    xor a
    ret


jr_020_44fa:
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret nz

    ld a, $01
    ld [$c680], a
    call Call_020_4727
    ret


Jump_020_4524:
    ld a, [$c65b]
    cpl
    inc a
    add $02
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4719
    and a
    ret nz

    ld a, $01
    ld [$c680], a
    call Call_020_4731
    ret


Call_020_454e:
    xor a
    ld [$c687], a
    ld [$c732], a
    ld a, [$c67f]
    and a
    jr z, jr_020_4560

    ld a, $01
    ld [$c680], a

jr_020_4560:
    ld a, $01
    ld [$c689], a
    ld hl, $d53a
    ld de, $ffa5
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_020_46eb
    ret


Call_020_457a:
    xor a
    ld [$c687], a
    ld [$c732], a
    ld a, $01
    ld [$c689], a
    ld hl, $d53a
    ld de, $ffa5
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_020_46d9
    ret


    call Call_020_457a
    and a
    ret nz

    xor a
    ld [$c687], a
    ld [$c732], a
    ld a, $01
    ld [$c689], a
    ld a, [$c65d]
    cpl
    inc a
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    call Call_020_46f9
    and a
    ret nz

    xor a
    ld [$c687], a
    ld [$c732], a
    ld a, $01
    ld [$c689], a
    ld a, [$c65e]
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    call Call_020_46f9
    and a
    ret nz

    ld a, [$c6d3]
    and a
    ret z

    ld [$c65a], a
    ld hl, $d53a
    ld de, $ffa5
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, $01
    ret


    xor a
    ld [$c672], a
    call Call_020_454e
    and a
    ret nz

    xor a
    ld [$c687], a
    ld [$c732], a
    ld a, $01
    ld [$c689], a
    ld a, [$c67f]
    and a
    jr z, jr_020_462e

    ld a, $01
    ld [$c680], a

jr_020_462e:
    ld a, [$c65d]
    cpl
    inc a
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    sub c
    ld [de], a
    dec de
    ld a, [hl-]
    sbc $00
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    call Call_020_470b
    and a
    ret nz

    ld a, [$c6d3]
    and a
    jr z, jr_020_4659

    ld [$c65a], a
    ret


jr_020_4659:
    xor a
    ld [$c687], a
    ld [$c732], a
    ld a, $01
    ld [$c689], a
    ld a, [$c67f]
    and a
    jr z, jr_020_4670

    ld a, $01
    ld [$c680], a

jr_020_4670:
    ld a, [$c65e]
    sub $03
    ld c, a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    add c
    ld [de], a
    dec de
    ld a, [hl-]
    adc $00
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    call Call_020_470b
    and a
    ret nz

    ld a, [$c6d3]
    and a
    ret z

    ld [$c65a], a
    ret


    xor a
    ld [$c697], a
    ld [$c6ce], a
    ld [$c634], a
    ld [$c726], a
    ld a, $01
    ld [$c689], a
    ld hl, $d53d
    ld de, $ffa8
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    ld [de], a
    dec de
    ld a, [hl-]
    sub $04
    ld [de], a
    dec de
    ld a, [hl]
    sbc $00
    ld [de], a
    call Call_020_4763
    ld a, [$c672]
    ret


    xor a
    ld [$c697], a
    ld [$c634], a
    ld [$c726], a
    ld a, $01
    ld [$c689], a
    call Call_020_4763
    ret


Call_020_46d9:
    xor a
    ld [$c698], a
    ld hl, $ffa5
    call $2353
    ld a, $01
    ld [$c671], a
    jp Jump_020_4778


Call_020_46eb:
    ld hl, $ffa5
    call $2353
    ld a, $02
    ld [$c671], a
    jp Jump_020_4778


Call_020_46f9:
    xor a
    ld [$c698], a
    ld hl, $ffa5
    call $2353
    ld a, $04
    ld [$c671], a
    jp Jump_020_4778


Call_020_470b:
    ld hl, $ffa5
    call $2353
    ld a, $40
    ld [$c671], a
    jp Jump_020_4778


Call_020_4719:
    ld hl, $ffa5
    call $2353
    ld a, $08
    ld [$c671], a
    jp Jump_020_4778


Call_020_4727:
    ld hl, $c645
    dec [hl]
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    jp Jump_020_4778


Call_020_4731:
    ld hl, $c645
    inc [hl]
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    jp Jump_020_4778


Call_020_473b:
    ld hl, $ffa5
    call $2353
    ld a, $10
    ld [$c671], a

jr_020_4746:
    call Call_020_4778
    ld b, a
    ret


Call_020_474b:
    ld hl, $c644
    dec [hl]
    ld a, [hl]
    cp $9f
    jr nz, jr_020_475e

    ld a, [$c68a]
    dec a
    ld [$c68a], a
    ld a, $bf
    ld [hl], a

jr_020_475e:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    jr jr_020_4746

Call_020_4763:
    ld hl, $ffa5
    call $2353
    xor a
    ld [$c672], a
    ld [$c634], a
    ld a, $80
    ld [$c671], a
    jp Jump_020_4778


Call_020_4778:
Jump_020_4778:
    xor a
    ld [$c6e8], a
    ld [$c6f4], a
    ld a, [$c68a]
    ldh [$a3], a
    ld [$4100], a
    ld hl, $c644
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    ld hl, $c704
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    jp hl


    ld a, [$d510]
    add a
    ld e, a
    ld d, $00
    ld hl, $5700
    add hl, de
    ld a, [hl+]
    ld [$c705], a
    ld a, [hl]
    ld [$c704], a
    ret


    jp Jump_020_47bc


Jump_020_47ab:
    xor a
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld [$c680], a
    ld [$c60a], a
    ld [$c65a], a
    ret


Jump_020_47bc:
    ldh a, [$a6]
    and $f0
    ldh [$a6], a
    xor a
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld [$c680], a
    ld [$c60a], a
    ld a, [$c689]
    and a
    jr z, jr_020_47e7

    ld a, [$c687]
    and a
    jr z, jr_020_47e7

    ld a, [$c671]
    bit 4, a
    jr z, jr_020_47e7

    xor a
    ld [$c65a], a
    ret


jr_020_47e7:
    ld a, $01
    ld [$c65a], a
    ret


Jump_020_47ed:
jr_020_47ed:
    xor a
    ldh [$a3], a
    ld [$4100], a
    xor a
    ld [$c680], a
    ld [$c60a], a
    ld a, $10
    ld [$c65a], a
    ret


    ldh a, [$a6]
    sub $10
    ldh [$a6], a
    ldh a, [$a5]
    sbc $00
    ldh [$a5], a
    jr jr_020_482c

    ld a, [$c671]
    bit 1, a
    jr z, jr_020_482c

    ldh a, [$a6]
    and $0f
    ld b, a
    ld [$c658], a
    ldh a, [$a8]
    and $0f
    srl a
    ld [$c659], a
    add b
    cp $10
    jp c, Jump_020_47ab

jr_020_482c:
    ldh a, [$a8]
    and $0f
    ld c, a
    srl c
    ld a, $10

jr_020_4835:
    sub c
    ld c, a
    ldh a, [$a6]
    and $f0
    add c
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    ld a, [$c671]
    and $83
    jr z, jr_020_4850

    ld a, $01
    ld [$c686], a

jr_020_4850:
    jr jr_020_47ed

    ld a, [$c671]
    bit 0, a
    jp z, Jump_020_47ab

    ldh a, [$a6]
    add $10
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    jr jr_020_488e

    ld a, [$c671]
    and $03
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 1, a
    jr z, jr_020_488e

    ldh a, [$a6]
    and $0f
    ld b, a
    ld [$c658], a
    ldh a, [$a8]
    and $0f
    srl a
    ld [$c659], a
    add b
    cp $08
    jp c, Jump_020_47ab

jr_020_488e:
    ldh a, [$a8]
    and $0f
    ld c, a
    srl c
    ld a, $08
    jr jr_020_4835

    ld a, [$c671]
    bit 0, a
    jp z, Jump_020_47ab

    ldh a, [$a6]
    add $10
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    jr jr_020_48d5

    ld a, [$c671]
    and $03
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 1, a
    jr z, jr_020_48d5

    ldh a, [$a6]
    and $0f
    ld b, a
    ld [$c658], a
    ldh a, [$a8]
    and $0f
    srl a
    ld [$c659], a
    cp b
    jr z, jr_020_48d5

    jp nc, Jump_020_47ab

jr_020_48d5:
    ldh a, [$a8]
    and $0f
    srl a
    ld c, a

jr_020_48dc:
    ldh a, [$a6]
    and $f0
    add c
    inc a
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    ld a, [$c671]
    and $83
    jr z, jr_020_48f6

    ld a, $02
    ld [$c686], a

jr_020_48f6:
    jp Jump_020_47ed


    ldh a, [$a6]
    sub $10
    ldh [$a6], a
    ldh a, [$a5]
    sbc $00
    ldh [$a5], a
    jr jr_020_492f

    ld a, [$c671]
    and $03
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 1, a
    jr z, jr_020_492f

    ldh a, [$a6]
    and $0f
    ld b, a
    ld [$c658], a
    ldh a, [$a8]
    and $0f
    srl a
    add $08
    ld [$c659], a
    cp b
    jr z, jr_020_492f

    jp nc, Jump_020_47ab

jr_020_492f:
    ldh a, [$a8]
    and $0f
    srl a
    add $08
    ld c, a
    jr jr_020_48dc

    ld a, [$c671]
    bit 0, a
    jp z, Jump_020_47ab

    ldh a, [$a6]
    add $10
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    jr jr_020_4982

    ldh a, [$a6]
    sub $10
    ldh [$a6], a
    ldh a, [$a5]
    sbc $00
    ldh [$a5], a
    jr jr_020_4982

    ld a, [$c671]
    and $03
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 1, a
    jr z, jr_020_4982

    ldh a, [$a6]
    and $0f
    ld b, a
    ld [$c658], a
    ldh a, [$a8]
    and $0f
    ld [$c659], a
    add b
    cp $10
    jp c, Jump_020_47ab

jr_020_4982:
    ldh a, [$a8]
    and $0f
    ld c, a
    ld a, $10
    sub c
    ld c, a
    ldh a, [$a6]
    and $f0
    add c
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    ld a, [$c671]
    and $83
    jr z, jr_020_49a4

    ld a, $11
    ld [$c686], a

jr_020_49a4:
    jp Jump_020_47ed


    ld a, [$c671]
    bit 0, a
    jp z, Jump_020_47ab

    ldh a, [$a6]
    add $10
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    jr jr_020_49ed

    ldh a, [$a6]
    sub $10
    ldh [$a6], a
    ldh a, [$a5]
    sbc $00
    ldh [$a5], a
    jr jr_020_49ed

    ld a, [$c671]
    and $03
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 1, a
    jr z, jr_020_49ed

    ldh a, [$a6]
    and $0f
    ld b, a
    ld [$c658], a
    ldh a, [$a8]
    and $0f
    ld [$c659], a
    cp b
    jp nc, Jump_020_47ab

jr_020_49ed:
    ldh a, [$a8]
    and $0f
    inc a
    inc a
    ld c, a
    ldh a, [$a6]
    and $f0
    add c
    ldh [$a6], a
    ldh a, [$a5]
    adc $00
    ldh [$a5], a
    ld a, [$c671]
    and $83
    jr z, jr_020_4a0d

    ld a, $12
    ld [$c686], a

jr_020_4a0d:
    jp Jump_020_47ed


Jump_020_4a10:
jr_020_4a10:
    ld a, $01
    ld [$c6a0], a
    ld a, [$c671]
    bit 0, a
    jp nz, Jump_020_47bc

    bit 2, a
    jp nz, Jump_020_47bc

    and $98
    jp nz, Jump_020_47ab

    ldh a, [$a6]
    and $0f
    cp $05
    jp c, Jump_020_47bc

    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp nz, Jump_020_47ab

    ld a, $01
    ld [$c6a0], a
    ld a, [$c671]
    bit 0, a
    jp nz, Jump_020_47bc

    bit 2, a
    jp nz, Jump_020_47bc

    and $98
    jp nz, Jump_020_47ab

    ldh a, [$a6]
    and $0f
    cp $05
    jp c, Jump_020_47bc

    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jr nz, jr_020_4a10

    ld a, [$c671]
    bit 0, a
    jr z, jr_020_4a10

    ld a, $01
    ld [$c6f4], a
    jp Jump_020_47bc


    ld b, $79
    jr jr_020_4a80

    ld b, $7a
    jr jr_020_4a80

    ld b, $7b
    jr jr_020_4a80

    ld b, $78

jr_020_4a80:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47bc

    ld a, [$c690]
    and $f8
    jr nz, jr_020_4ace

    ld a, [$c680]
    and a
    jp z, Jump_020_47bc

    ld a, [$c72d]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jr nz, jr_020_4abe

    bit 4, a
    jr nz, jr_020_4aaf

    and $42
    jr nz, jr_020_4abe

    jp Jump_020_47bc


jr_020_4aaf:
    ld a, [$c679]
    and a
    jr nz, jr_020_4abe

    ld a, [$c688]
    and a
    jr nz, jr_020_4abe

    jp Jump_020_47bc


jr_020_4abe:
    ld a, $01
    ld [$c690], a
    jp Jump_020_4c83


    ld a, $01
    ld [$c690], a
    jp Jump_020_4cbb


jr_020_4ace:
    or $01
    ld [$c690], a
    jr jr_020_4b36

    ld b, $79
    jr jr_020_4ae3

    ld b, $7a
    jr jr_020_4ae3

    ld b, $7b
    jr jr_020_4ae3

    ld b, $78

jr_020_4ae3:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47bc

    ld a, [$c690]
    and $f8
    jr nz, jr_020_4b31

    ld a, [$c680]
    and a
    jp z, Jump_020_47bc

    ld a, [$c72d]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jr nz, jr_020_4b21

    bit 4, a
    jr nz, jr_020_4b12

    and $42
    jr nz, jr_020_4b21

    jp Jump_020_47bc


jr_020_4b12:
    ld a, [$c679]
    and a
    jr nz, jr_020_4b21

    ld a, [$c688]
    and a
    jr nz, jr_020_4b21

    jp Jump_020_47bc


jr_020_4b21:
    ld a, $03
    ld [$c690], a
    jp Jump_020_4c83


    ld a, $03
    ld [$c690], a
    jp Jump_020_4cbb


jr_020_4b31:
    or $03
    ld [$c690], a

Jump_020_4b36:
jr_020_4b36:
    ldh a, [$a3]
    ld [$c691], a
    ld hl, $c644
    ld a, [hl+]
    ld [$c692], a
    ld d, a
    ld a, [hl]
    ld [$c693], a
    ld e, a
    ld a, [de]
    ld [$c695], a
    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    call Call_020_4dda
    jp Jump_020_47bc


    ld b, $79
    jr jr_020_4b70

    ld b, $7a
    jr jr_020_4b70

    ld b, $7b
    jr jr_020_4b70

    ld b, $78

jr_020_4b70:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47bc

    ld a, [$c690]
    and $f8
    jr nz, jr_020_4bbe

    ld a, [$c680]
    and a
    jp z, Jump_020_47bc

    ld a, [$c72d]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jr nz, jr_020_4bae

    bit 4, a
    jr nz, jr_020_4b9f

    and $42
    jr nz, jr_020_4bae

    jp Jump_020_47bc


jr_020_4b9f:
    ld a, [$c679]
    and a
    jr nz, jr_020_4bae

    ld a, [$c688]
    and a
    jr nz, jr_020_4bae

    jp Jump_020_47bc


jr_020_4bae:
    ld a, $02
    ld [$c690], a
    jp Jump_020_4c83


    ld a, $02
    ld [$c690], a
    jp Jump_020_4cbb


jr_020_4bbe:
    or $02
    ld [$c690], a
    jp Jump_020_4b36


    ld b, $79
    jr jr_020_4bd4

    ld b, $7a
    jr jr_020_4bd4

    ld b, $7b
    jr jr_020_4bd4

    ld b, $78

jr_020_4bd4:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47bc

    ld a, [$c690]
    and $f8
    jr nz, jr_020_4c21

    ld a, [$c680]
    and a
    jp z, Jump_020_47bc

    ld a, [$c72d]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jr nz, jr_020_4c12

    bit 4, a
    jr nz, jr_020_4c03

    and $42
    jr nz, jr_020_4c12

    jp Jump_020_47bc


jr_020_4c03:
    ld a, [$c679]
    and a
    jr nz, jr_020_4c12

    ld a, [$c688]
    and a
    jr nz, jr_020_4c12

    jp Jump_020_47bc


jr_020_4c12:
    ld a, $04
    ld [$c690], a
    jr jr_020_4c83

    ld a, $04
    ld [$c690], a
    jp Jump_020_4cbb


jr_020_4c21:
    or $04
    ld [$c690], a
    jp Jump_020_4b36


    ld b, $78
    jr jr_020_4c3f

    ld b, $79
    jr jr_020_4c3f

    ld b, $7a
    jr jr_020_4c3f

    ld b, $7b
    jr jr_020_4c3f

    ld b, $7c
    jr jr_020_4c3f

    ld b, $7d

jr_020_4c3f:
    ld a, [$c690]
    and a
    jr nz, jr_020_4c9e

    ld a, [$c680]
    and a
    jp z, Jump_020_47bc

    ld a, [$c72d]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jr nz, jr_020_4c74

    bit 4, a
    jr nz, jr_020_4c65

    and $42
    jr nz, jr_020_4c9e

    jp Jump_020_47bc


jr_020_4c65:
    ld a, [$c679]
    and a
    jr nz, jr_020_4c9e

    ld a, [$c688]
    and a
    jr nz, jr_020_4c9e

    jp Jump_020_47bc


jr_020_4c74:
    ld a, [$c656]
    and a
    jr nz, jr_020_4c9e

    ld a, [$c696]
    and a
    jr nz, jr_020_4c9e

    jp Jump_020_47bc


Jump_020_4c83:
jr_020_4c83:
    ldh a, [$a3]
    ld [$c691], a
    ld hl, $c644
    ld a, [hl+]
    ld [$c692], a
    ld d, a
    ld a, [hl]
    ld [$c693], a
    ld e, a
    ld a, [de]
    ld [$c695], a
    ld a, $01
    ld [$c623], a

Jump_020_4c9e:
jr_020_4c9e:
    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    call Call_020_4dda
    ld a, [$c688]
    and a
    jp nz, Jump_020_47ab

    jp Jump_020_47bc


Jump_020_4cbb:
    ldh a, [$a3]
    ld [$c691], a
    ld hl, $c644
    ld a, [hl+]
    ld [$c692], a
    ld d, a
    ld a, [hl]
    ld [$c693], a
    ld e, a
    ld a, [de]
    ld [$c695], a

Jump_020_4cd1:
jr_020_4cd1:
    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    call Call_020_4dda
    jp Jump_020_47ab


    ld b, $61
    jr jr_020_4d05

    ld b, $62
    jr jr_020_4d05

    ld b, $78
    jr jr_020_4d05

    ld b, $79
    jr jr_020_4d05

    ld b, $7a
    jr jr_020_4d05

    ld b, $7b
    jr jr_020_4d05

    ld b, $7c
    jr jr_020_4d05

    ld b, $7d

jr_020_4d05:
    ld a, [$c680]
    and a
    jp z, Jump_020_47bc

    ld a, [$c72d]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jr nz, jr_020_4d35

    bit 4, a
    jr nz, jr_020_4d25

    and $42
    jr nz, jr_020_4cd1

    jp Jump_020_47bc


jr_020_4d25:
    ld a, [$c679]
    and a
    jr nz, jr_020_4cd1

    ld a, [$c688]
    and a
    jp nz, Jump_020_4c9e

    jp Jump_020_47bc


jr_020_4d35:
    ld a, [$c656]
    and a
    jp nz, Jump_020_4cd1

    ld a, [$c696]
    and a
    jp nz, Jump_020_4cd1

    ld a, [$c722]
    and a
    jp nz, Jump_020_4cd1

    jp Jump_020_47bc


    ld b, $78
    jr jr_020_4d5b

    ld b, $79
    jr jr_020_4d5b

    ld b, $7a
    jr jr_020_4d5b

    ld b, $7b

jr_020_4d5b:
    ld a, [$c689]
    and a
    jp z, Jump_020_47bc

    ld a, [$c6b9]
    and a
    jr nz, jr_020_4d91

    jp Jump_020_51a6


    ld b, $78
    jr jr_020_4d79

    ld b, $79
    jr jr_020_4d79

    ld b, $7a
    jr jr_020_4d79

    ld b, $7b

jr_020_4d79:
    ld a, [$c689]
    and a
    jp z, Jump_020_47bc

    ld a, [$c6b9]
    and a
    jr nz, jr_020_4d91

    ld a, [$c70b]
    cp $02
    jp z, Jump_020_4cd1

    jp Jump_020_47bc


jr_020_4d91:
    ld a, [$c671]
    and $42
    jp nz, Jump_020_4c9e

    jp Jump_020_47bc


    ld b, $78
    jr jr_020_4daa

    ld b, $79
    jr jr_020_4daa

    ld b, $7a
    jr jr_020_4daa

    ld b, $7b

jr_020_4daa:
    ld a, [$c60a]
    and a
    jr nz, jr_020_4db3

    jp Jump_020_47bc


jr_020_4db3:
    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    ldh a, [$80]
    bit 1, a
    jr z, jr_020_4dcf

    call Call_020_4dda
    jp Jump_020_47ab


jr_020_4dcf:
    ld a, $00
    ldh [$ab], a
    ld a, $06
    ldh [$ac], a
    jp Jump_020_47ab


Call_020_4dda:
    ldh a, [$a5]
    ld [$c617], a
    ldh a, [$a6]
    ld [$c618], a
    ldh a, [$a7]
    ld [$c619], a
    ldh a, [$a8]
    ld [$c61a], a
    ld b, $01
    call Call_000_10c2
    ld a, [$c690]
    and a
    jr nz, jr_020_4e14

    ldh a, [rDIV]
    and $03
    jr nz, jr_020_4e14

    ld bc, $4b67
    ld hl, $ffa5
    ld a, [hl+]
    ldh [$84], a
    ld a, [hl+]
    ldh [$83], a
    ld a, [hl+]
    ldh [$86], a
    ld a, [hl+]
    ldh [$85], a
    call Call_000_37d5

jr_020_4e14:
    ld a, [$c617]
    ldh [$a5], a
    ld a, [$c618]
    ldh [$a6], a
    ld a, [$c619]
    ldh [$a7], a
    ld a, [$c61a]
    ldh [$a8], a
    ret


    ld b, $78
    jr jr_020_4e3f

    ld b, $79
    jr jr_020_4e3f

    ld b, $7a
    jr jr_020_4e3f

    ld b, $7b
    jr jr_020_4e3f

    ld b, $7c
    jr jr_020_4e3f

    ld b, $7d

jr_020_4e3f:
    ld a, [$c689]
    and a
    jr z, jr_020_4e58

    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    call Call_000_2778

jr_020_4e58:
    jp Jump_020_47ab


    ld b, $78
    jr jr_020_4e71

    ld b, $79
    jr jr_020_4e71

    ld b, $7a
    jr jr_020_4e71

    ld b, $7b
    jr jr_020_4e71

    ld b, $7c
    jr jr_020_4e71

    ld b, $7d

jr_020_4e71:
    ld a, [$c689]
    and a
    jr z, jr_020_4e8a

    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    call Call_000_2778

Jump_020_4e8a:
jr_020_4e8a:
    ld a, $01
    ld [$c6e8], a
    ld a, [$c689]
    and a
    ret z

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c697], a
    jp Jump_020_47ab


    jp Jump_020_47ab


    xor a
    ld [$c6ce], a
    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $d1
    ld [$c672], a
    jp Jump_020_47ab


    xor a
    ld [$c6ce], a
    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $91
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c6de], a
    jr jr_020_4ee6

    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    xor a
    ld [$c6de], a

jr_020_4ee6:
    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, $41
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    xor a
    ld [$c6de], a
    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, $61
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c6de], a
    jr jr_020_4f2a

    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    xor a
    ld [$c6de], a

jr_020_4f2a:
    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, [$c656]
    and a
    jp nz, Jump_020_47ab

    ld a, [$c60c]
    bit 6, a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c6a7], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, [$c656]
    and a
    jp nz, Jump_020_47ab

    ld a, [$c60c]
    bit 6, a
    jp z, Jump_020_47ab

    ld a, $02
    ld [$c6a7], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_4e8a

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $01
    ld [$c697], a
    ld a, $51
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_4e8a

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $01
    ld [$c697], a
    ld a, $11
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c6ce], a
    ld a, $01
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $01
    ld [$c6ce], a
    ld a, $01
    ld [$c697], a
    ld a, $11
    ld [$c672], a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_47bc

    ld a, [$c671]
    bit 3, a
    jp z, Jump_020_47bc

    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    ld [$d540], a
    xor $08
    ld [hl], a
    call Call_000_2331
    ld a, [$d53f]
    xor $01
    ld [$d53f], a
    ld a, [$d541]
    xor $01
    ld [$d541], a
    ld a, $00
    ldh [$ab], a
    ld a, $5d
    ldh [$ac], a
    ld b, $10
    call Call_000_2853
    jp Jump_020_47bc


    ld a, [$c671]
    bit 7, a
    jr z, jr_020_5055

    ld a, [$c685]
    and a
    jr nz, jr_020_5055

    ld a, [$c726]
    and a
    jr nz, jr_020_5055

    ld a, $01
    ld [$c726], a
    call Call_020_5084

jr_020_5055:
    xor a
    ld [$c6c8], a
    ld [$c67f], a
    jp Jump_020_47ab


    ld a, [$c671]
    bit 7, a
    jr z, jr_020_507a

    ld a, [$c685]
    and a
    jr nz, jr_020_507a

    ld a, [$c726]
    and a
    jr nz, jr_020_507a

    ld a, $02
    ld [$c726], a
    call Call_020_5084

jr_020_507a:
    xor a
    ld [$c6c8], a
    ld [$c67f], a
    jp Jump_020_47ab


Call_020_5084:
    ld a, [$c6bb]
    and a
    ret nz

    ld a, [$c6bf]
    and a
    ret nz

    xor a
    ldh [$b6], a
    ld a, $01
    ld [$c6bf], a
    ld a, [$c656]
    and a
    jr z, jr_020_50aa

    ld a, [$c679]
    and a
    jr nz, jr_020_50a6

    call $0904
    ret


jr_020_50a6:
    call $0918
    ret


jr_020_50aa:
    ld a, [$c679]
    and a
    jr nz, jr_020_50b4

    call Call_000_0940
    ret


jr_020_50b4:
    call $092c
    ret


    ld a, [$c689]
    and a
    jr z, jr_020_50d2

    ld a, [$c671]
    and $47
    jr z, jr_020_50d2

    ld a, [$c733]
    and a
    jr nz, jr_020_50d2

    ld a, $01
    ld [$c732], a
    jr jr_020_50d5

jr_020_50d2:
    jp Jump_020_47bc


jr_020_50d5:
    ld a, [$c731]
    and a
    jr nz, jr_020_50fc

    xor a
    ldh [$b6], a
    ld [$c679], a
    ld [$c685], a
    ldh a, [$fe]
    and a
    jr nz, jr_020_50ef

    xor a
    ld [$c74b], a
    jr jr_020_50f4

jr_020_50ef:
    ld a, $02
    ld [$c74b], a

jr_020_50f4:
    ld a, $01
    ld [$c731], a
    call Call_000_07ff

jr_020_50fc:
    jp Jump_020_47bc


    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $04
    ld [$c634], a
    jp Jump_020_4e8a


    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $08
    ld [$c634], a
    jp Jump_020_4e8a


    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $02
    ld [$c634], a
    jp Jump_020_4e8a


    ld a, [$c671]
    bit 7, a
    jp z, Jump_020_4e8a

    ld a, $01
    ld [$c634], a
    jp Jump_020_4e8a


    ld a, [$c689]
    and a
    jp z, Jump_020_47bc

    ld a, [$c671]
    and $47
    jp z, Jump_020_47bc

    ld a, $02
    ld [$c698], a
    call Call_020_5173
    jp Jump_020_47bc


    ld a, [$c689]
    and a
    jp z, Jump_020_47bc

    ld a, [$c671]
    and $47
    jp z, Jump_020_47bc

    ld a, $01
    ld [$c698], a
    call Call_020_5173
    jp Jump_020_47bc


Call_020_5173:
    ld a, [$c699]
    and a
    ret nz

    ld a, $01
    ld [$c699], a
    ret


    ld a, [$c671]
    bit 1, a
    jr nz, jr_020_5196

    ldh a, [$a6]
    and $0e
    jp nz, Jump_020_4e8a

    ld a, [$c671]
    and $05
    jr nz, jr_020_519e

    jp Jump_020_4e8a


jr_020_5196:
    ld a, $01
    ld [$c6e8], a
    jp Jump_020_4a10


jr_020_519e:
    ld a, $01
    ld [$c6e8], a
    jp Jump_020_47bc


Jump_020_51a6:
    ld a, [$c689]
    and a
    jp z, Jump_020_47bc

    ld a, [$c6dc]
    and a
    jp nz, Jump_020_47bc

    ld a, [$c750]
    cp $09
    jp z, Jump_020_47bc

    cp $15
    jp z, Jump_020_47bc

    cp $98
    jp z, Jump_020_47bc

    xor a
    ld [$c74c], a
    ld [$c74d], a
    ld [$c751], a
    ldh a, [$fe]
    and a
    jr nz, jr_020_51e1

    ld a, $42
    ld [$c74e], a
    ld a, $bd
    ld [$c74f], a
    jr jr_020_51eb

jr_020_51e1:
    ld a, $42
    ld [$c74e], a
    ld a, $fd
    ld [$c74f], a

jr_020_51eb:
    ld a, [$d53e]
    cp $01
    jr z, jr_020_51fe

    ld a, $01
    ld [$d53e], a
    ld a, $1b
    ld [$c74a], a
    jr jr_020_5208

jr_020_51fe:
    ld a, $00
    ld [$d53e], a
    ld a, $1d
    ld [$c74a], a

jr_020_5208:
    ld a, $00
    ldh [$ab], a
    ld a, $14
    ldh [$ac], a
    ld a, [$c736]
    and a
    jr nz, jr_020_521c

    call Call_000_2535
    jp Jump_020_47bc


jr_020_521c:
    cp $01
    jr z, jr_020_5223

    jp Jump_020_47bc


jr_020_5223:
    call Call_000_2876
    ld a, $25
    ld [$c69c], a
    ld a, $35
    ld [$c69d], a
    call Call_000_263a
    jp Jump_020_47bc


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, [$c6dc]
    and a
    jp nz, Jump_020_47ab

    ld a, [$c750]
    cp $09
    jp z, Jump_020_47ab

    cp $15
    jp z, Jump_020_47ab

    cp $98
    jp z, Jump_020_47ab

    xor a
    ld [$c74c], a
    ld [$c74d], a
    ld [$c751], a
    ldh a, [$fe]
    and a
    jr nz, jr_020_5271

    ld a, $42
    ld [$c74e], a
    ld a, $bd
    ld [$c74f], a
    jr jr_020_527b

jr_020_5271:
    ld a, $42
    ld [$c74e], a
    ld a, $fd
    ld [$c74f], a

jr_020_527b:
    ld a, [$d53e]
    cp $01
    jr z, jr_020_528e

    ld a, $01
    ld [$d53e], a
    ld a, $1b
    ld [$c74a], a
    jr jr_020_5298

jr_020_528e:
    ld a, $00
    ld [$d53e], a
    ld a, $1d
    ld [$c74a], a

jr_020_5298:
    ld a, $00
    ldh [$ab], a
    ld a, $14
    ldh [$ac], a
    ld a, [$c736]
    and a
    jr nz, jr_020_52ac

    call Call_000_2535
    jp Jump_020_47ab


jr_020_52ac:
    cp $01
    jr z, jr_020_52b3

    jp Jump_020_47bc


jr_020_52b3:
    call Call_000_2876
    ld a, $25
    ld [$c69c], a
    ld a, $35
    ld [$c69d], a
    call Call_000_263a
    jp Jump_020_47ab


    ld a, [$c689]
    and a
    jp z, Jump_020_4e8a

    ld a, [$c6dc]
    and a
    jp nz, Jump_020_4e8a

    xor a
    ld [$c74c], a
    ld [$c74d], a
    ld [$c751], a
    ldh a, [$fe]
    and a
    jr nz, jr_020_52ef

    ld a, $42
    ld [$c74e], a
    ld a, $bd
    ld [$c74f], a
    jr jr_020_52f9

jr_020_52ef:
    ld a, $42
    ld [$c74e], a
    ld a, $fd
    ld [$c74f], a

jr_020_52f9:
    ld a, [$d53e]
    cp $01
    jr z, jr_020_530c

    ld a, $01
    ld [$d53e], a
    ld a, $1b
    ld [$c74a], a
    jr jr_020_5316

jr_020_530c:
    ld a, $00
    ld [$d53e], a
    ld a, $1d
    ld [$c74a], a

jr_020_5316:
    ld a, $00
    ldh [$ab], a
    ld a, $14
    ldh [$ac], a
    ld a, [$c736]
    and a
    jr nz, jr_020_532a

    call Call_000_09c0
    jp Jump_020_4e8a


jr_020_532a:
    cp $01
    jr z, jr_020_5331

    jp Jump_020_47bc


jr_020_5331:
    call Call_000_2876
    ld a, $09
    ld [$c69c], a
    ld a, $c0
    ld [$c69d], a
    call Call_000_263a
    jp Jump_020_4e8a


    ld b, $79
    jr jr_020_5352

    ld b, $7a
    jr jr_020_5352

    ld b, $7b
    jr jr_020_5352

    ld b, $78

jr_020_5352:
    ld a, [$c689]
    and a
    jr z, jr_020_53b8

    ld a, [$c671]
    and $10
    jr z, jr_020_53b8

    ldh a, [$b6]
    and a
    jr nz, jr_020_53b8

    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    ldh a, [$a5]
    ld [$c617], a
    ldh a, [$a6]
    ld [$c618], a
    ldh a, [$a7]
    ld [$c619], a
    ldh a, [$a8]
    ld [$c61a], a
    ld a, [$d53e]
    cp $01
    jr z, jr_020_5394

    ld bc, $4c78
    jr jr_020_5397

jr_020_5394:
    ld bc, $4c63

jr_020_5397:
    call Call_000_37d5
    ld a, [$c617]
    ldh [$a5], a
    ld a, [$c618]
    ldh [$a6], a
    ld a, [$c619]
    ldh [$a7], a
    ld a, [$c61a]
    ldh [$a8], a
    ld a, $01
    ldh [$b6], a
    call $09d4
    jp Jump_020_47ab


jr_020_53b8:
    jp Jump_020_47bc


    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, [$c71f]
    and a
    jp z, Jump_020_47ab

    call Call_020_53cf
    jp Jump_020_47ab


Call_020_53cf:
    ld a, $c3
    ld [$c750], a
    ld a, $62
    ld [$c74e], a
    ld a, $93
    ld [$c74f], a
    xor a
    ld [$c74c], a
    ld [$c74d], a
    ld [$c751], a
    ld a, $01
    ld [$c6e4], a
    ld a, [$d53e]
    cp $01
    jr z, jr_020_53fa

    ld a, $00
    ld [$c74a], a
    ret


jr_020_53fa:
    ld a, $03
    ld [$c74a], a
    ret


    ld b, $79
    jr jr_020_540e

    ld b, $7a
    jr jr_020_540e

    ld b, $7b
    jr jr_020_540e

    ld b, $78

jr_020_540e:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47ab

    ld a, [$c690]
    and $f8
    jr nz, jr_020_542c

    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $01
    ld [$c690], a
    jp Jump_020_54fe


jr_020_542c:
    or $01
    ld [$c690], a
    jr jr_020_5464

    ld b, $79
    jr jr_020_5441

    ld b, $7a
    jr jr_020_5441

    ld b, $7b
    jr jr_020_5441

    ld b, $78

jr_020_5441:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47ab

    ld a, [$c690]
    and $f8
    jr nz, jr_020_545f

    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $03
    ld [$c690], a
    jp Jump_020_54fe


jr_020_545f:
    or $03
    ld [$c690], a

Jump_020_5464:
jr_020_5464:
    ldh a, [$a3]
    ld [$c691], a
    ld hl, $c644
    ld a, [hl+]
    ld [$c692], a
    ld d, a
    ld a, [hl]
    ld [$c693], a
    ld e, a
    ld a, [de]
    ld [$c695], a
    ld hl, $c644
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [hl]
    and $80
    or b
    ld [hl], a
    push hl
    call Call_000_2331
    pop hl
    ld a, [$c690]
    and $07
    cp $01
    call z, $27a4
    jp Jump_020_47ab


    ld b, $79
    jr jr_020_54a5

    ld b, $7a
    jr jr_020_54a5

    ld b, $7b
    jr jr_020_54a5

    ld b, $78

jr_020_54a5:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47ab

    ld a, [$c690]
    and $f8
    jr nz, jr_020_54c3

    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $02
    ld [$c690], a
    jp Jump_020_54fe


jr_020_54c3:
    or $02
    ld [$c690], a
    jp Jump_020_5464


    ld b, $79
    jr jr_020_54d9

    ld b, $7a
    jr jr_020_54d9

    ld b, $7b
    jr jr_020_54d9

    ld b, $78

jr_020_54d9:
    ld a, [$c690]
    and $07
    jp nz, Jump_020_47ab

    ld a, [$c690]
    and $f8
    jr nz, jr_020_54f6

    ld a, [$c689]
    and a
    jp z, Jump_020_47ab

    ld a, $04
    ld [$c690], a
    jr jr_020_54fe

jr_020_54f6:
    or $04
    ld [$c690], a
    jp Jump_020_5464


Jump_020_54fe:
jr_020_54fe:
    ldh a, [$a3]
    ld [$c691], a
    ld hl, $c644
    ld a, [hl+]
    ld [$c692], a
    ld d, a
    ld a, [hl]
    ld [$c693], a
    ld e, a
    ld a, [de]
    ld [$c695], a
    ld a, $01
    ld [$c623], a
    jp Jump_020_47ab


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld d, a
    ld l, b
    ld e, b
    ld l, d
    ld e, c
    ld l, h
    ld e, d
    ld l, h
    ld e, d
    ld l, [hl]
    ld e, e
    ld [hl], b
    ld e, h
    ld [hl], d
    ld e, l
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], d
    ld e, l
    ld [hl], b
    ld e, h
    ld [hl], b
    ld e, h
    ld [hl], b
    ld e, h
    ld [hl], b
    ld e, h
    ld a, [hl]
    ld h, e
    add b
    ld h, h
    add d
    ld h, l
    add h
    ld h, [hl]
    add b
    ld h, h
    adc b
    ld l, b
    adc h
    ld l, d
    adc h
    ld l, d
    adc [hl]
    ld l, e
    adc h
    ld l, d
    ld [hl], b
    ld e, h
    sub b
    ld l, h
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    ld a, b
    ld h, b
    ld a, b
    ld h, b
    ld a, [hl]
    ld h, e
    ld a, b
    ld h, b
    ld a, b
    ld h, b
    ld [hl], h
    ld e, [hl]
    ld a, d
    ld h, c
    ld a, d
    ld h, c
    ld a, d
    ld h, c
    ld a, d
    ld h, c
    db $76
    ld e, a
    db $76
    ld e, a
    db $76
    ld e, a
    db $76
    ld e, a
    db $76
    ld e, a
    add d
    ld h, l
    add h
    ld h, [hl]
    add [hl]
    ld h, a
    add h
    ld h, [hl]
    add h
    ld h, [hl]
    ld a, h
    ld h, d
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    dec [hl]
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld [hl], d
    ld c, d
    push de
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld [$3b54], sp
    ld d, h
    db $d3
    ld d, h
    sbc a
    ld d, h
    sbc h
    ld c, l
    and b
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    ei
    ld c, h
    ei
    ld c, h
    rst $28
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    rst $28
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    rst $10
    ld d, h
    and e
    ld d, h
    di
    ld c, h
    rst $38
    ld c, h
    inc bc
    ld c, l
    inc c
    ld d, h
    ccf
    ld d, h
    ei
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp [hl]
    ld c, a
    ld a, [hl-]
    ld c, a
    call $be4e
    ld c, a
    db $db
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    ld e, a
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld sp, $ab4e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    and a
    ld c, c
    di
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    add $52
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    di
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    rst $38
    ld d, b
    rra
    ld d, c
    rrca
    ld d, c
    xor e
    ld b, a
    rra
    ld d, c
    rst $30
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    bit 1, c
    rst $30
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    ld a, [hl]
    ld d, c
    ld a, [hl]
    ld d, c
    adc d
    ld c, [hl]
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    rst $10
    ld d, h
    and e
    ld d, h
    inc c
    ld d, h
    ccf
    ld d, h
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    rst $30
    ld c, h
    ld l, e
    ld c, l
    xor e
    ld b, a
    rst $08
    ld d, h
    sbc e
    ld d, h
    inc b
    ld d, h
    scf
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl-]
    ld c, a
    add [hl]
    ld c, a
    cp [hl]
    ld c, a
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp l
    ld c, c
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    ld e, a
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld sp, $354e
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $20
    ld c, h
    and a
    ld c, c
    di
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    di
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    rst $38
    ld d, b
    rra
    ld d, c
    rrca
    ld d, c
    xor e
    ld b, a
    rra
    ld d, c
    rst $30
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rst $08
    ld d, h
    sbc e
    ld d, h
    rst $30
    ld c, h
    bit 1, c
    rst $30
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    inc b
    ld d, h
    scf
    ld d, h
    ld [hl], e
    ld c, l
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    rst $10
    ld d, h
    and e
    ld d, h
    adc d
    ld c, [hl]
    ld a, [hl]
    ld d, c
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    inc c
    ld d, h
    ccf
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, a
    add [hl]
    ld c, a
    jp c, $a74f

    ld c, [hl]
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp l
    ld c, c
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld sp, $ab4e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    di
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $30
    ld c, h
    xor e
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rst $28
    ld c, h
    cp e
    ld d, e
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    jp z, Jump_020_664b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld [hl], d
    ld c, d
    push de
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    bit 1, c
    and a
    ld c, c
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    cp b
    ld d, b
    cp l
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    inc c
    ld d, h
    ccf
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $db
    ld c, [hl]
    ld h, b
    ld c, a
    or $4e
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    ld a, [hl-]
    ld c, c
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    and a
    ld c, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld c, c
    bit 1, c
    bit 1, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld d, b
    ld c, c
    ld e, [hl]
    ld c, c
    bit 1, c
    cp l
    ld c, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld d, b
    ld c, c
    di
    ld c, h
    ld l, a
    ld c, [hl]
    and a
    ld c, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    ld sp, $104e
    ld c, d
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    dec [hl]
    ld c, [hl]
    di
    ld c, h
    di
    ld c, h
    bit 2, h
    sub a
    ld d, h
    sbc h
    ld c, l
    and b
    ld c, l
    and h
    ld c, l
    xor b
    ld c, l
    rst $38
    ld c, h
    di
    ld c, h
    nop
    ld d, h
    inc sp
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld e, l
    ld c, d
    ld e, l
    ld c, d
    ld e, l
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rra
    ld d, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld [hl], d
    ld c, d
    push de
    ld c, d
    ld h, d
    ld c, e
    add $4b
    rst $38
    ld d, b
    rrca
    ld d, c
    ld l, e
    ld c, l
    ld l, a
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld e, l
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    cp d
    ld c, [hl]
    cp [hl]
    ld c, a
    rra
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    ld a, [hl-]
    ld c, c
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    and a
    ld c, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld c, c
    bit 1, c
    bit 1, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld d, b
    ld c, c
    ld e, [hl]
    ld c, c
    bit 1, c
    cp l
    ld c, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld d, b
    ld c, c
    ld a, [hl-]
    ld c, c
    ld l, a
    ld c, [hl]
    and a
    ld c, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    add hl, hl
    ld c, [hl]
    adc d
    ld c, [hl]
    ld sp, $104e
    ld c, d
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    di
    ld c, h
    di
    ld c, h
    ld [hl], $52
    cp h
    ld b, a
    sbc h
    ld c, l
    and b
    ld c, l
    xor e
    ld b, a
    ccf
    ld d, h
    rst $38
    ld c, h
    di
    ld c, h
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    bit 2, h
    sub a
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    nop
    ld d, h
    inc sp
    ld d, h
    db $10
    ld c, d
    and [hl]
    ld d, c
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rra
    ld d, c
    xor e
    ld b, a
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    inc c
    ld d, h
    ld [hl], d
    ld c, d
    push de
    ld c, d
    ld h, d
    ld c, e
    add $4b
    rst $38
    ld d, b
    rrca
    ld d, c
    ld l, e
    ld c, l
    ld l, a
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    call $ab4e
    ld b, a
    or $4e
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    and a
    ld c, [hl]
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    db $10
    ld c, d
    dec l
    ld c, [hl]
    ld a, [de]
    rst $28
    rst $08
    ld d, h
    sbc e
    ld d, h
    bit 2, h
    sub a
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    inc b
    ld d, h
    scf
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    rrca
    ld d, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    rst $30
    ld c, h
    rra
    ld d, c
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    ei
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor b
    ld c, l
    ei
    ld c, h
    xor b
    ld c, l
    xor b
    ld c, l
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, h
    xor b
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    dec l
    ld c, [hl]
    dec [hl]
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    and a
    ld c, [hl]
    cp [hl]
    ld c, a
    ld e, e
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    ld sp, $a74e
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    jp c, $db4f

    ld c, [hl]
    add [hl]
    ld c, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    nop
    ld d, h
    inc sp
    ld d, h
    ld a, [de]
    rst $28
    di
    ld c, h
    rst $30
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    and b
    ld c, l
    and h
    ld c, l
    ld [hl], e
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    sbc h
    ld c, l
    and b
    ld c, l
    and h
    ld c, l
    rst $30
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    ei
    ld c, h
    rst $30
    ld c, h
    inc bc
    ld c, l
    adc $4b
    ld l, d
    ld c, e
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    ld sp, $354e
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    ld l, a
    ld c, [hl]
    ld a, d
    ld c, d
    db $dd
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    rst $38
    ld d, b
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $08
    ld d, h
    sbc e
    ld d, h
    adc d
    ld c, [hl]
    rst $30
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld d, c
    adc d
    ld c, [hl]
    inc b
    ld d, h
    scf
    ld d, h
    ld a, [hl]
    ld d, c
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    add [hl]
    ld c, a
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    or $4e
    and a
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    inc c
    ld d, h
    ccf
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    sbc h
    ld c, l
    and b
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    rst $28
    ld c, h
    rst $28
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    add hl, hl
    ld c, [hl]
    ld sp, $354e
    ld c, [hl]
    rst $30
    ld c, h
    ei
    ld c, h
    ld [hl], $52
    and [hl]
    ld d, c
    rra
    ld d, c
    xor e
    ld b, a
    di
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp e
    ld d, e
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    or $4e
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    xor e
    ld b, a
    rra
    ld d, c
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    di
    ld c, h
    di
    ld c, h
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    sbc h
    ld c, l
    ld l, e
    ld c, l
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $08
    ld d, h
    sbc e
    ld d, h
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    inc b
    ld d, h
    scf
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    and [hl]
    ld d, c
    rra
    ld d, c
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    inc sp
    ld c, d
    ld e, [hl]
    ld c, c
    bit 1, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld d, b
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp e
    ld d, e
    xor e
    ld b, a
    xor e
    ld b, a
    ld d, b
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, a
    or $4e
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    ld sp, $674e
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $30
    ld c, h
    rst $30
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    sbc h
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld [hl], e
    ld c, l
    and h
    ld c, l
    and b
    ld c, l
    and h
    ld c, l
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    rst $28
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    di
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    jp nc, Jump_020_6e4b

    ld c, e
    adc d
    ld c, [hl]
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    rra
    ld d, c
    ld e, [hl]
    ld c, c
    bit 1, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    ld d, b
    ld c, c
    cp l
    ld c, c
    rst $08
    ld d, h
    sbc e
    ld d, h
    ld [hl], $52
    and [hl]
    ld d, c
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    inc b
    ld d, h
    scf
    ld d, h
    db $10
    ld c, d
    xor e
    ld b, a
    and [hl]
    ld d, c
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    bit 2, h
    di
    ld c, h
    rst $30
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    nop
    ld d, h
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    or $4e
    ei
    ld c, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    jp c, $864f

    ld c, a
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    sbc h
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld [hl], $52
    xor e
    ld b, a
    xor e
    ld b, a
    ld [hl], $52
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    inc sp
    ld c, d
    and [hl]
    ld d, c
    rra
    ld d, c
    rrca
    ld d, c
    and [hl]
    ld d, c
    ccf
    ld d, c
    ld e, c
    ld d, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld e, a
    ld d, b
    xor e
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    rst $28
    ld c, h
    xor e
    ld b, a
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld d, b
    cp h
    ld b, a
    add hl, hl
    ld c, [hl]
    ld sp, $0c4e
    ld d, h
    ccf
    ld d, h
    dec [hl]
    ld c, [hl]
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld e, a
    ld d, b
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    rst $10
    ld d, h
    and e
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    inc c
    ld d, h
    ccf
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp z, Jump_020_664b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $76
    ld c, d
    reti


    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    rst $28
    ld c, h
    sbc h
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld sp, $ab4e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    inc sp
    ld c, d
    inc sp
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    sbc h
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    sbc h
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    db $db
    ld c, [hl]
    db $db
    ld c, [hl]
    ld h, b
    ld c, a
    or $4e
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    and a
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    dec l
    ld c, [hl]
    add hl, hl
    ld c, [hl]
    xor e
    ld b, a
    ld a, [de]
    rst $28
    rst $10
    ld d, h
    and e
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    inc c
    ld d, h
    ccf
    ld d, h
    sbc h
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp z, Jump_020_664b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    ld l, e
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $76
    ld c, d
    reti


    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    and [hl]
    ld d, c
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    rst $38
    ld c, h
    inc bc
    ld c, l
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    di
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld [hl], $52
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld [$3b54], sp
    ld d, h
    db $d3
    ld d, h
    sbc a
    ld d, h
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    ccf
    ld d, c
    ld e, c
    ld d, c
    db $10
    ld c, d
    rst $30
    ld c, h
    ld sp, $334e

Jump_020_664b:
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    ld l, e
    ld c, l
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    xor e
    ld b, a
    dec [hl]
    ld c, [hl]
    and a
    ld c, [hl]
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $db
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    ld a, [de]
    rst $28
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    add hl, hl
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    add hl, hl
    ld c, h
    ld l, e
    ld c, l
    sbc h
    ld c, l
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    and [hl]
    ld d, c
    and [hl]
    ld d, c
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    rst $38
    ld c, h
    inc bc
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld [hl], $52
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rst $30
    ld c, h
    cp h
    ld b, a
    adc d
    ld c, [hl]
    rrca
    ld d, c
    rst $08
    ld d, h
    sbc e
    ld d, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    db $10
    ld c, d
    inc b
    ld d, h
    scf
    ld d, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    ei
    ld c, h
    dec [hl]
    ld c, [hl]
    rst $28
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    ccf
    ld d, c
    ld e, c
    ld d, c
    ccf
    ld d, c
    ccf
    ld d, c
    ld e, c
    ld d, c
    ld e, c
    ld d, c
    xor e
    ld b, a
    ei
    ld c, a
    ld e, c
    ld d, c
    ccf
    ld d, c
    ld e, c
    ld d, c
    ld e, c
    ld d, c
    ccf
    ld d, c
    ccf
    ld d, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld h, b
    ld c, a
    or $4e
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    add hl, hl
    ld c, [hl]
    ld e, a
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    ld l, e
    ld c, l
    di
    ld c, h
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $10
    ld c, d
    and [hl]
    ld d, c
    and [hl]
    ld d, c
    rst $38
    ld d, b
    cp h
    ld b, a
    ccf
    ld d, c
    ld e, c
    ld d, c
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    db $10
    ld c, d
    db $10
    ld c, d
    sbc h
    ld c, l
    rst $08
    ld d, h
    sbc e
    ld d, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    inc b
    ld d, h
    scf
    ld d, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    rra
    ld d, c
    rrca
    ld d, c
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    cp h
    ld b, a
    adc d
    ld c, [hl]
    ei
    ld c, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    and a
    ld c, [hl]
    jp c, $864f

    ld c, a
    or $4e
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld sp, $354e
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    rst $28
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    rst $28
    ld c, h
    rst $28
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $30
    ld c, h
    di
    ld c, h
    ld [hl], e
    ld c, l
    ld l, a
    ld c, l
    rst $28
    ld c, h
    ei
    ld c, h
    sbc h
    ld c, l
    ei
    ld c, h
    db $10
    ld c, d
    add hl, sp
    ld c, [hl]
    ld [hl], $52
    db $10
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    and b
    ld c, l
    rra
    ld d, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $d3
    ld d, h
    sbc a
    ld d, h
    rst $10
    ld d, h
    and e
    ld d, h
    bit 2, h
    sub a
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    ld [$3b54], sp
    ld d, h
    inc c
    ld d, h
    ccf
    ld d, h
    nop
    ld d, h
    inc sp
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    dec a
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    and a
    ld c, [hl]
    call $3a4e
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld sp, $354e
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    sbc h
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    sbc h
    ld c, l
    sbc h
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    ld l, e
    ld c, l
    ld l, e
    ld c, l
    rst $28
    ld c, h
    sbc h
    ld c, l
    and [hl]
    ld d, c
    cp h
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    cpl
    ld d, c
    rra
    ld d, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp e
    ld d, e
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    ld d, b
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    db $d3
    ld d, h
    sbc a
    ld d, h
    ld e, [hl]
    ld c, c
    bit 1, c
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    ld [$3b54], sp
    ld d, h
    ld d, b
    ld c, c
    cp l
    ld c, c
    inc c
    ld d, h
    ccf
    ld d, h
    ei
    ld c, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    and a
    ld c, [hl]
    rra
    ld c, a
    rra
    ld c, a
    call $3a4e
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    ld b, h
    ld d, e
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    di
    ld c, h
    di
    ld c, h
    di
    ld c, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    di
    ld c, h
    ei
    ld c, h
    dec [hl]
    ld c, [hl]
    xor e
    ld b, a
    inc sp
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp e
    ld d, e
    xor e
    ld b, a
    xor e
    ld b, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    di
    ld c, h
    rst $30
    ld c, h
    ei
    ld c, h
    inc bc
    ld c, l
    db $10
    ld c, d
    db $10
    ld c, d
    sbc h
    ld c, l
    and [hl]
    ld d, c
    rra
    ld d, c
    ld [hl], $52
    rrca
    ld d, c
    db $10
    ld c, d
    db $10
    ld c, d
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    ld d, b
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    bit 2, h
    sub a
    ld d, h
    ld e, [hl]
    ld c, c
    bit 1, c
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    nop
    ld d, h
    inc sp
    ld d, h
    ld d, b
    ld c, c
    cp l
    ld c, c
    inc c
    ld d, h
    ccf
    ld d, h
    ei
    ld c, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    or $4e
    and a
    ld c, [hl]
    rra
    ld c, a
    rra
    ld c, a
    call $3a4e
    ld c, a
    cp [hl]
    ld c, a
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    ld sp, $bc4e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld l, e
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    add $4b
    ld h, [hl]
    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    add $4b
    ld h, [hl]
    ld c, e
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld [hl], d
    ld c, d
    reti


    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld [hl], d
    ld c, d
    reti


    ld c, d
    jp nc, Jump_020_6e4b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    jp nc, Jump_020_6e4b

    ld c, e
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    rst $28
    ld c, h
    rst $28
    ld c, h
    inc bc
    ld c, l
    ei
    ld c, h
    inc bc
    ld c, l
    ei
    ld c, h
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    sbc h
    ld c, l
    and [hl]
    ld d, c
    rra
    ld d, c
    db $10
    ld c, d
    xor e
    ld b, a
    dec l
    ld c, [hl]
    ld sp, $ab4e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    db $d3
    ld d, h
    sbc a
    ld d, h
    bit 2, h
    sbc e
    ld d, h
    rst $10
    ld d, h
    and e
    ld d, h
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    ld [$3b54], sp
    ld d, h
    nop
    ld d, h
    scf
    ld d, h
    inc c
    ld d, h
    ccf
    ld d, h
    ei
    ld c, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, a
    cp [hl]
    ld c, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $db
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    ld sp, $bc4e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    dec [hl]
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    db $d3
    ld d, h
    sbc a
    ld d, h
    rst $10
    ld d, h
    and e
    ld d, h
    sbc h
    ld c, l
    and b
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    ld [$3b54], sp
    ld d, h
    inc c
    ld d, h
    ccf
    ld d, h
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    cp h
    ld b, a
    ei
    ld c, h
    ei
    ld c, h
    rst $28
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    rst $28
    ld c, h
    cp h
    ld b, a
    and a
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, h
    ld l, e
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    bit 1, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, h
    cp h
    ld b, a
    ei
    ld c, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ei
    ld c, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    cp [hl]
    ld c, a
    ld a, [hl-]
    ld c, a
    call $be4e
    ld c, a
    db $db
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [de]
    rst $28
    add hl, hl
    ld c, [hl]
    dec l
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    dec [hl]
    ld c, [hl]
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    jp nc, Jump_020_6e4b

    ld c, e
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld a, [hl]
    ld c, d
    pop hl
    ld c, d
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    ld [$3b54], sp
    ld d, h
    db $d3
    ld d, h
    sbc a
    ld d, h
    sbc h
    ld c, l
    and b
    ld c, l
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    db $10
    ld c, d
    ei
    ld c, h
    ei
    ld c, h
    rst $28
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    rst $28
    ld c, h
    rst $28
    ld c, h
    ld l, e
    ld c, l
    rst $10
    ld d, h
    and e
    ld d, h
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rst $28
    ld c, h
    rst $28
    ld c, h
    inc c
    ld d, h
    ccf
    ld d, h
    and [hl]
    ld d, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    ld a, [hl-]
    ld c, c
    and a
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    rst $28
    ld c, h
    ld e, [hl]
    ld c, c
    bit 1, c
    xor e
    ld b, a
    cp h
    ld b, a
    rst $28
    ld c, h
    inc sp

Jump_020_6e4b:
    ld c, d
    di
    ld c, h
    xor e
    ld b, a
    ld d, b
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    adc d
    ld c, [hl]
    xor e
    ld b, a
    ld d, b
    ld c, c
    cp l
    ld c, c
    xor e
    ld b, a
    xor e
    ld b, a
    rst $38
    ld c, h
    inc bc
    ld c, l
    xor e
    ld b, a
    xor e
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, a
    xor e
    ld b, a
    or $4e
    cp [hl]
    ld c, a
    ld a, [hl-]
    ld c, a
    call $be4e
    ld c, a
    db $db
    ld c, [hl]
    db $db
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    adc d
    ld c, [hl]
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    xor e
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
