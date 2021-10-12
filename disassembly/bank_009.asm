; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    db $09, $05, $40
    
    jr nz, @+$63

    ld a, [$c8ef]
    rst $00
    
    di
    ld b, l
    inc sp
    ld b, b
    ld sp, hl
    ld c, [hl]
    ld l, $40
    ld h, h
    ld e, e
    add hl, hl
    ld b, b
    add hl, hl
    ld b, b
    add hl, hl
    ld b, b
    ld l, $40
    ld l, $40
    ld l, $40
    add hl, hl
    ld b, b
    di
    ld b, l
    jp z, Jump_000_335e

    ld b, b
    jr nz, @+$63

    ld hl, $0a00
    rst $10
    ret


    ld hl, $1200
    rst $10
    ret


    ld hl, wGameState
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


Call_009_403d:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_009_404a:
    push af
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
    pop af
    ret


Call_009_4059:
    ld a, [$c909]
    add l
    ld l, a
    ld a, [$c90a]
    adc h
    and $03
    ld h, a
    ld a, [$c90a]
    and $fc
    or h
    ld h, a
    ret


Call_009_406d:
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ret


Call_009_4076:
    push bc
    ld b, l
    ld a, l
    and $e0
    ld l, a
    call Call_009_4059
    ld a, b
    and $1f
    jr z, jr_009_408b

    ld b, a

jr_009_4085:
    call Call_009_404a
    dec b
    jr nz, jr_009_4085

jr_009_408b:
    pop bc
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_009_4076
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_009_409c:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_009_40c1

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
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
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_009_409c

jr_009_40c1:
    call Write_gfx_tile
    call Call_009_404a
    jr jr_009_409c

Call_009_40c9:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    call Call_009_406d
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a

jr_009_40d8:
    ld a, [de]
    inc de
    cp $d9
    ret z

    cp $d8
    jr nz, jr_009_40f7

    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    jr jr_009_40d8

jr_009_40f7:
    ld [hl+], a
    jr jr_009_40d8

Call_009_40fa:
    ld a, [$c909]
    ld l, a
    ld a, [$c90a]
    ld h, a
    ld de, $c500
    ld c, $12

jr_009_4107:
    ld b, $20
    push hl

jr_009_410a:
    ld a, [de]
    call Write_gfx_tile
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
    jr nz, jr_009_410a

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
    jr nz, jr_009_4107

    ret


Call_009_412f:
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
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_009_4168:
    push hl
    ld hl, $c180
    call Call_000_0c80
    pop hl
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
    ld de, $0401
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_009_41b6:
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
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
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ret


Call_009_4204:
    ld hl, $c500
    ld de, $c300
    ld bc, $0200

jr_009_420d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_009_420d

    ld de, $c1c0
    ld c, $02

jr_009_421a:
    ld b, $14

jr_009_421c:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_009_421c

    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_009_421a

    ret


Call_009_4236:
    ld hl, $c500
    ld bc, $0240

jr_009_423c:
    ld a, $e0
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_009_423c

    ret


    ld hl, $9800
    ld bc, $0400

jr_009_424b:
    ld a, $e0
    call Write_gfx_tile_and_inc_HL
    dec bc
    ld a, b
    or c
    jr nz, jr_009_424b

    ret


Call_009_4256:
    ld a, c
    ld [$c8e1], a
    inc de
    inc de
    ld a, [$c825]
    or a
    jp nz, Jump_009_42cf

    ld a, [wJoypad_current_frame]
    bit 5, a
    jr z, jr_009_428c

    ld a, [$df0d]
    inc a
    and $01
    ld [$df0d], a
    inc hl
    ld a, [hl]
    dec a
    push af
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_009_42b3

    ld a, c
    dec a
    jr jr_009_42b3

jr_009_428c:
    ld a, [wJoypad_current_frame]	
    bit 4, a		  ; checking if your pressing right
    jr z, jr_009_42cf	

    ld a, [$df0d]	;df0d = the current page in the shop, but changing it does not update the page number on screen. 
    inc a		;inc a to open the message window
    and $01		;and a with 01 to make sure it's the only bit set
    ld [$df0d], a   ; load the contents of a (mesage window status) into df0d
    inc hl  ; add 1 to hl (unknown pointer)
    ld a, [hl]  ; load the contents of hl (unknown pointer +1) into a
    inc a   ; add 1 to a
    push af
    push de     
    push bc
    ld a, b     ; load the contents of b 
    ld b, c
    dec b
    call Call_000_1dfb
    ld a, b
    inc a
    pop bc
    pop de
    ld c, a
    pop af
    cp c
    jr c, jr_009_42b3

    ld a, $00

jr_009_42b3:
    ld [hl-], a     ; load the contents of a (unknown pointer) into hl then -1
    dec c   ; subtract 1 from c
    cp c    ; compare a and c
    jr nz, jr_009_4312  ; if the last resault was not 0 jump to 4312

    ld a, [$c8e1]   ; load the contents of c8e1 () into a
    ld c, a     ; load the contents of a (c8el)into c
    push de
    push bc
    ld a, b     ; load the contents of b (unknown variable) into a
    ld b, c     ; load the contents of c (c8el) into b
    call Call_000_1dfb
    pop bc
    pop de
    or a
    jr z, jr_009_4312

    dec a   ; subtract 1 from a
    cp [hl]     ; compare hl (unknown pointer -1) to a
    jr nc, jr_009_4312 

    ld [hl], a  ; load the contents of a ( which must be smaller than hl) into hl
    jr jr_009_4312

Jump_009_42cf:
jr_009_42cf:
    push bc
    push de
    push hl
    call Call_009_448e
    pop hl
    pop de
    pop bc
    push de
    push bc
    ld a, b
    ld b, c
    dec b
    call Call_000_1dfb
    ld [$c8e1], a
    ld a, b
    pop bc
    pop de
    ld c, a
    inc hl
    ld a, [hl-]
    cp c
    jr nz, jr_009_42f1

    ld a, [$c8e1]
    inc a
    ld b, a

Call_009_42f1:
jr_009_42f1:
    res 7, [hl]		; set contents of bit 7 of hl ($c8da) to 0
    ld a, [wJoypad_Current]	; load the contents of wJoypad_Current (current button) into register a
    bit 6, a		; check to see if bit 6 (up) is pressed
    jr z, jr_009_4303	; if the last math op resulted in 0 jump to 4303

    ld a, [hl]		; load the contents of hl ($c8da) into a
    dec a		; subtract 1 from the contents of a
    cp b		; Compare the contents of b ($03) to a
    jr c, jr_009_4311	; if cary flag is set jump to 4311

    dec b		; subtract 1 from the contents of b
    ld a, b		; load the contents of b ($02) into a 
    jr jr_009_4311	; jump to 4311

jr_009_4303:
    ld a, [wJoypad_Current]	; load currently pressed button into a
    bit 7, a		; checking to see if bit 7 (down) is pressed
    jr z, jr_009_431a	; if the last math op resulted in 0 jump to 431a

    ld a, [hl]  ; load the contents of hl ($c8da current menue option) into a
    inc a   ; add 1 to the contents of a ($c8da current menue option)
    cp b    ; compare a and b
    jr c, jr_009_4311   ; if cary flag is set jump to 4311

    ld a, $00   ; load $00 into a

jr_009_4311:
    ld [hl], a  ; load next menue option (a) into curent menue option (hl)

jr_009_4312:
    xor a   ; set the contents of a to 0
    ld [$c90c], a   ; load the contents of a (0) into $c90c (reset cursor blink timer)
    push hl     ; incomplete function
    push de
    pop de
    pop hl  ; end of incomplete function

jr_009_431a:
    ld a, [wJoypad_current_frame]   ; load the contents of wJoypad_current_frame (currently pressed button) into a
    bit 0, a    ; checking to see if bit 0 (a button) is pressed
    jr z, jr_009_4323   ; if the last math op resulted in 0 jump to 4323

    set 7, [hl]     ; sets bit 7 of hl (current menue option) to 1

jr_009_4323:
    ld a, [hl]  ; load the contents of hl (c8da current menue option) to a
    call Call_009_442f
    ret

;FUNCTION UNCALLED (checks for pushing left and right)
    res 7, [hl]
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_009_433a

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_4311

    dec b
    ld a, b
    jr jr_009_4311

jr_009_433a:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_009_431a

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_4311

    ld a, $00
    jr jr_009_4311

Call_009_434a:
    res 7, [hl]     ; set contents of bit 7 of hl ($c8da) to 0
    ld a, c     ; load the contents of c (unknown pointer) into a
    ldh [$d7], a
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_009_4360

    ld a, $10
    ld [wCursorBlinkTimer], a
    call Call_009_43b7
    jr jr_009_4394

jr_009_4360:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_009_4371

    ld a, $10
    ld [wCursorBlinkTimer], a
    call Call_009_43fe
    jr jr_009_4394

jr_009_4371:
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_009_4381

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_438f

    dec b
    ld a, b
    jr jr_009_438f

jr_009_4381:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_009_4398

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_438f

    ld a, $00

jr_009_438f:
    ld [hl], a
    xor a
    ld [wCursorBlinkTimer], a

jr_009_4394:
    push hl
    push de
    pop de
    pop hl

jr_009_4398:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_009_43a1

    set 7, [hl]

jr_009_43a1:
    ldh a, [$d7]
    inc hl
    cp [hl]
    dec hl
    jr nc, jr_009_43aa

    inc hl
    ld [hl-], a

jr_009_43aa:
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_009_43b1

    ld [hl], $01

jr_009_43b1:
    dec hl
    ld a, [hl]
    call Call_009_456d
    ret


Call_009_43b7:
    push de
    ld a, [hl]
    push hl
    inc hl
    ld c, [hl]
    ld b, $00
    ld hl, wDebug_main_menu_option
    call Call_000_20ad
    pop hl
    ld a, [hl]
    ld de, wDebug_main_menu_option
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    dec a
    ld [de], a
    cp $ff
    jr nz, jr_009_43db

    ld a, $09
    ld [de], a

jr_009_43db:
    call Call_009_43e9
    pop de
    or a
    ret nz

    ld a, [hl]
    or a
    ret z

    ld a, $09
    inc hl
    ld [hl-], a
    ret


Call_009_43e9:
    push hl
    ld a, [wDebug_main_menu_option]
    and $0f
    ld c, $0a
    call Call_000_1dbe
    ld a, [$c0a1]
    and $0f
    add l
    pop hl
    inc hl
    ld [hl-], a
    ret


Call_009_43fe:
    push de
    ld a, [hl]
    push hl
    inc hl
    ld c, [hl]
    ld b, $00
    ld hl, wDebug_main_menu_option
    call Call_000_20ad
    pop hl
    ld de, $c0a1
    ld a, [hl]
    ld de, wDebug_main_menu_option
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    inc a
    ld [de], a
    cp $0a
    jr nz, jr_009_4425

    ld a, $00
    ld [de], a

jr_009_4425:
    call Call_009_43e9
    pop de
    ret
    
Call_009_442a:
    xor a
    ld [$c90c], a
    ret 


Call_009_442f:
    ld c, a     ; load the contents of a (current menue option) into c
    bit 7, a    ; check to see if bit 7 (down is pressed)
    jr nz, jr_009_4444  ; if the last math op resaulted in 0 jump to 4444

    ld a, [$c90c]   ; load c90c (blinker timer) into a
    and $0f     ; put lower nybble of timer into a
    push af     ; coppy contents of af onto stack
    ld a, [$c90c]   ; load c90c (blinker timer) into a
    inc a   ; add 1 to the contents of a (blinker timer)
    ld [$c90c], a   ; load a into c90c (blinker timer)
    pop af  ; remove contents of af from stack and put them into af
    ld a, c     ; load the contents of c (c8da current menue option) into a
    ret nz  ; return if last resault was not 0

jr_009_4444:
    ld c, a     ; load the contents of a (current menue option) into c
    ld b, $00   ; load $00 into b

jr_009_4447:
    ld a, [de]  ; load the contents of de (unknown pointer) to a
    ld l, a     ; load the contents of a (unknown pointer) into l
    inc de  ; add 1 to de (unknown pointer)
    ld a, [de]  ; load the contents of de (unknown pointer +1) into a 
    ld h, a     ; load the contents of a (unknown pointer +1) into h
    inc de  ; add 1 to de
    and l   ; compares h and l (to set flags)
    cp $ff  ; compares h to ff
    ret z   ; returns to the function that called this one if last resault was 0

    ld a, l     ; load the contents of l (unknown pointer) into a
    ldh [$d5], a    ; 
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_4477

    ld a, $e9
    bit 7, c
    jr nz, jr_009_4477

    ld a, [wCursorBlinkTimer]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_4477

    ld a, $e8

jr_009_4477:
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_009_4447

Call_009_448e:
    ld a, b
    cp c
    ret nc

    inc hl
    ld c, [hl]
    dec de
    dec de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    dec hl
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, c
    and $7f
    cp $09
    jr z, jr_009_44b6

    add $f1
    call Call_009_44db
    ld a, $ee
    jr jr_009_44bd

jr_009_44b6:
    ld a, $f0
    call Call_009_44db
    ld a, $f1

jr_009_44bd:
    push af
    ldh a, [$d5]
    sub $01
    ldh [$d5], a
    ldh a, [$d6]
    sbc $00
    ldh [$d6], a
    pop af
    call Call_009_44db
    ldh a, [$d5]
    add $01
    ldh [$d5], a
    ldh a, [$d6]
    adc $00
    ldh [$d6], a
    ret


Call_009_44db:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    pop af
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_009_44ff:
    ld a, [hl+]
    push af
    push hl
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    ld a, b
    cp c
    ld a, $ee
    jr nc, jr_009_4518

    ld a, $e7

jr_009_4518:
    ld [hl-], a
    pop bc
    jr nc, jr_009_452f

    ld a, [bc]
    cp $09
    jr z, jr_009_4529

    add $f1
    ld [hl-], a
    ld a, $ee
    ld [hl+], a
    jr jr_009_452f

jr_009_4529:
    ld a, $f0
    ld [hl-], a
    ld a, $f1
    ld [hl+], a

jr_009_452f:
    pop af

Call_009_4530:
    ld c, a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    ld a, $e9
    bit 7, c
    jr nz, jr_009_455b

    ld a, [wCursorBlinkTimer]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_455b

    ld a, $e8

jr_009_455b:
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_009_456d:
    ld c, a
    inc hl
    push de
    push bc
    ld c, [hl]
    ld b, $00
    ld hl, wDebug_main_menu_option
    call Call_000_20ad
    pop bc
    pop de
    bit 7, c
    jr nz, jr_009_4590

    ld a, [wCursorBlinkTimer]
    and $0f
    push af
    ld a, [wCursorBlinkTimer]
    inc a
    ld [wCursorBlinkTimer], a
    pop af
    ld a, c
    ret nz

jr_009_4590:
    ld c, a
    ld b, $00

jr_009_4593:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_45bd

    ld a, [wCursorBlinkTimer]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_45bd

    ld a, $e6

jr_009_45bd:
    cp $e0
    jr nz, jr_009_45ce

    push hl
    ld a, b
    ld hl, wDebug_main_menu_option
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl

jr_009_45ce:
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_009_4593

Call_009_45e5:
    ld a, [$c8f0]
    add l
    ld l, a
    ld a, [$c8f1]
    adc h
    ld h, a
    call Call_000_0ad9
    ret


    ld a, [$c905]
    rst $00
    ld bc, $4c46
    ld b, [hl]
    sub c
    ld b, [hl]
    rst $20
    ld b, [hl]
    pop af
    ld b, [hl]
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_009_4204
    ld de, $2e0e
    ld hl, $8800
    call Call_000_1577
    call Call_009_442a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_009_4204
    call Call_009_465a
    call Call_009_40fa
    ret


Call_009_465a:
    ld de, $6f3c
    call Call_009_40c9
    ld de, $6f1f
    call Call_009_40c9
    ld de, $2e07
    call Call_009_40c9
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call Call_000_1fb9
    call Call_009_442a
    ld de, $46df
    ld a, [wMenu_selection]
    call Call_009_4530
    ret


    ld de, $46df
    ld hl, wMenu_selection
    ld b, $03
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    and $0a
    jr z, jr_009_46ad

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_009_46de

jr_009_46ad:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_009_46de

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, wMenu_selection
    set 7, [hl]
    ld hl, wOPTN_and_Item_selection
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    jr jr_009_46de

jr_009_46de:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [wMenu_selection]
    rst $00
    rlca
    ld b, a
    db $eb
    ld c, d
    pop af
    ld b, [hl]
    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, wGameState
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    ld hl, $9547
    ld b, a
    sub b
    ld c, b
    ld hl, sp+$48
    ld [$4c49], sp
    ld c, c
    sub e
    ld c, c
    ld a, [$1e49]
    ld c, d
    ld l, d
    ld c, d
    jp z, $214a

    inc bc
    nop
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ld a, [$c968]
    ld hl, $478c
    cp $50
    jr z, jr_009_4754

    ld a, [$c925]
    ld hl, $476b
    cp $00
    jr z, jr_009_4754

    ld hl, $4774
    cp $02
    jr z, jr_009_4754

    ld hl, $477d
    cp $04
    jr z, jr_009_4754

    ld hl, $4784
    cp $05
    jr z, jr_009_4754

jr_009_4754:
    push hl
    ld hl, $c0d8
    ld bc, $0014
    xor a
    call Call_000_12c7
    pop hl
    ld de, $c0d8

jr_009_4763:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    ret z

    jr jr_009_4763

    ld bc, $0702
    jr z, jr_009_4783

    inc d
    dec e
    ld h, $ff
    dec b
    inc b
    inc bc
    inc c
    ld a, [hl+]
    dec hl
    dec d
    ld a, [de]
    rst $38
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h

jr_009_4783:
    rst $38
    rla
    add hl, hl
    add hl, de
    dec de
    jr jr_009_47a6

    dec h
    rst $38
    ld bc, $0702
    ld [$090b], sp
    ld a, [bc]
    inc c
    rst $38
    ld a, [$c825]
    or a
    ret nz

    call Call_009_4875
    call Call_009_47cd
    call Call_009_47a8
    ld hl, $c906

jr_009_47a6:
    inc [hl]
    ret


Call_009_47a8:
    call Call_009_4204
    call Call_009_465a
    ld de, $6f7d
    call Call_009_40c9
    call Call_009_480a
    call Call_009_442a
    ld de, $48ec
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    call Call_009_40fa
    ret


Call_009_47cd:
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8800
    call Call_009_47e7
    call Call_009_47e7
    call Call_009_47e7

Call_009_47e7:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr nz, jr_009_47f0

    ld a, $00

jr_009_47f0:
    ld [$c823], a
    ld a, $08
    ld [$c822], a
    ld de, $0901
    call Call_009_412f
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_009_480a:
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $00ad
    call Call_009_4824
    call Call_009_4824
    call Call_009_4824

Call_009_4824:
    push de
    push hl
    ld a, [de]
    cp $00
    jr z, jr_009_482f

    cp $ff
    jr nz, jr_009_483c

jr_009_482f:
    call Call_009_406d
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_009_4869

jr_009_483c:
    push hl
    ld a, [de]
    ld [$da5e], a
    ld hl, $0302
    rst $10
    pop hl
    push hl
    call Call_009_406d
    ld a, [$da63]
    ldh [$d5], a
    ld a, [$da64]
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    call Call_000_1fb9
    pop hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_009_406d
    ld [hl], $dd

jr_009_4869:
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_009_4875:
    ld hl, $c0d8
    call Call_009_4880
    ld a, c
    ld [$c8e9], a
    ret


Call_009_4880:
    ld b, $14
    ld c, $00

jr_009_4884:
    ld a, [hl+]
    cp $00
    ret z

    cp $ff
    ret z

    inc c
    dec b
    jr nz, jr_009_4884

    ret


    ld de, $48ec
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_48b1

jr_009_48b1:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_48c1

    call Call_009_47cd
    call Call_009_480a
    call Call_009_40fa

jr_009_48c1:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_48d5

    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    jr jr_009_48eb

jr_009_48d5:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_48eb

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8dd], a

Jump_009_48eb:
jr_009_48eb:
    ret


    sub d
    ld bc, $00a2
    ld [c], a
    nop
    ld [hl+], a
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $0005
    call Call_009_45e5
    ld a, $01
    ld [wPLAN_selection], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4915
    ld hl, $c906
    inc [hl]
    ret


Call_009_4915:
    call Call_009_4204
    call Call_009_465a
    ld de, $6f7d
    call Call_009_40c9
    call Call_009_480a
    ld de, $48ec
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    ld de, $7033
    call Call_009_40c9
    call Call_009_442a
    ld de, $498d
    ld hl, wPLAN_selection
    ld b, $02
    ld a, [hl]
    call Call_009_456d
    call Call_009_40fa
    ret


    ld de, $498d
    ld hl, wPLAN_selection
    ld b, $02
    ld c, $14
    call Call_009_434a
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_497b

    call Call_009_47a8
    ld hl, $0004
    call Call_009_45e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_498c

jr_009_497b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_498c

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]

Jump_009_498c:
jr_009_498c:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld l, a
    ld h, $08
    ld de, $c180
    call Call_000_097a
    ld a, [$c8dd]
    ld hl, $c190
    call Call_000_09a4
    ld hl, $0302
    rst $10
    ld a, [$da63]
    ld c, a
    ld a, [$da64]
    ld b, a
    ld a, [$c8dd]
    call Call_000_1de6
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld a, l
    ld [$c8e4], a
    ld a, h
    ld [$c8e5], a
    ld a, e
    ld [$c8e6], a
    ld hl, $c1a0
    call Call_000_09c7
    ld hl, $0006
    call Call_009_45e5
    xor a
    ld [$c8de], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $6efa
    call Call_009_40c9
    call Call_009_442a
    ld de, $4a64
    ld a, [$c8de]
    call Call_009_4530
    call Call_009_40fa
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4a64
    ld hl, $c8de
    ld b, $02
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_4a4b

jr_009_4a30:
    call Call_009_4915
    ld hl, $0005
    call Call_009_45e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_4a63

jr_009_4a4b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_4a63

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_4a30

    ld hl, $c906
    inc [hl]

Jump_009_4a63:
jr_009_4a63:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $0305
    rst $10
    ld hl, $c8e4
    ld a, [wCurrGoldLo]
    sub [hl]
    inc hl
    ld a, [wCurrGoldMid]
    sbc [hl]
    inc hl
    ld a, [wCurrGoldHi]
    sbc [hl]
    ld hl, $0007
    jr c, jr_009_4ac2

    ld hl, wInventory
    call Call_009_4880
    ld a, [$c8dd]
    add c
    cp $15
    ld hl, $0008
    jr nc, jr_009_4ac2

    ld a, [$c8e4]
    ld l, a
    ld a, [$c8e5]
    ld h, a
    ld a, [$c8e6]
    ld e, a
    call Call_000_2424
    ld hl, wInventory
    call Call_009_4880
    ld a, c
    ld hl, wInventory
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c8dd]
    ld b, a
    ld a, [$da5e]

jr_009_4abb:
    ld [hl+], a
    dec b
    jr nz, jr_009_4abb

    ld hl, $0009

jr_009_4ac2:
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, wOPTN_and_Item_selection
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ld a, $00
    ld [$c906], a
    ret


    ld a, [$c906]
    rst $00
    add hl, bc
    ld c, e
    daa
    ld c, e
    add c
    ld c, h
    jp hl


    ld c, h
    ld sp, hl
    ld c, h
    ld l, e
    ld c, l
    cp e
    ld c, l
    dec b
    ld c, [hl]
    add hl, hl
    ld c, [hl]
    ld [hl], e
    ld c, [hl]
    cp h
    ld c, [hl]
    db $dd
    ld c, [hl]
    add sp, $4e
    call Call_009_4c24
    ld hl, $c0d8
    call Call_009_4880
    ld a, c
    or a
    jr nz, jr_009_4b1c

    ld a, $0b
    ld [$c906], a
    ret


jr_009_4b1c:
    ld hl, $000a
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4c24
    call Call_009_4875
    call Call_009_47cd
    call Call_009_4b3d
    ld hl, $c906
    inc [hl]
    ret


Call_009_4b3d:
    call Call_009_4204
    call Call_009_465a
    ld de, $6f7d
    call Call_009_40c9
    call Call_009_4b62
    call Call_009_442a
    ld de, $4cdd
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    call Call_009_40fa
    ret


Call_009_4b62:
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $00ad
    call Call_009_4b7c
    call Call_009_4b7c
    call Call_009_4b7c

Call_009_4b7c:
    push de
    push hl
    ld a, [de]
    cp $00
    jr z, jr_009_4b87

    cp $ff
    jr nz, jr_009_4b94

jr_009_4b87:
    call Call_009_406d
    ld a, $e0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_009_4bbc

jr_009_4b94:
    push hl
    push hl
    ld a, [de]
    ld [$da5e], a
    call Call_009_4bc8
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    pop hl
    call Call_009_406d
    call Call_000_1fb9
    pop hl
    ld a, l
    add $05
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_009_406d
    ld [hl], $dd

jr_009_4bbc:
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_009_4bc8:
    ld hl, $0302
    rst $10
    ld a, [$da63]
    ld l, a
    ld a, [$da64]
    ld h, a
    ld a, [$c968]
    cp $50
    ret z

    ld a, [$da5e]
    cp $18
    jr z, jr_009_4bfb

    cp $19
    jr z, jr_009_4bfb

    cp $1a
    jr z, jr_009_4bfb

    cp $1b
    jr z, jr_009_4bfb

    cp $1c
    jr z, jr_009_4bfb

    cp $25
    jr z, jr_009_4bfb

    cp $27
    jr z, jr_009_4bfb

    jr jr_009_4c09

jr_009_4bfb:
    ld a, [$da63]
    ld l, a
    ld a, [$da64]
    ld h, a
    ld a, $0a
    call Call_000_1e0d
    ret


jr_009_4c09:
    ld a, [$da63]
    ld l, a
    ld a, [$da64]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    ld a, [$da63]
    sub l
    ld l, a
    ld a, [$da64]
    sbc h
    ld h, a
    ret


Call_009_4c24:
    ld hl, $0305
    rst $10
    ld hl, $d665
    ld bc, $0030
    xor a
    call Call_000_12c7
    ld hl, $c0d8
    ld bc, $0014
    xor a
    call Call_000_12c7
    ld de, wInventory
    ld b, $14

jr_009_4c41:
    ld a, [de]
    or a
    jr z, jr_009_4c6b

    cp $ff
    jr z, jr_009_4c6b

    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    push de
    push bc
    ld hl, $0302
    rst $10
    pop bc
    pop de
    pop hl
    inc de
    ld a, [$da6d]
    bit 0, a
    jr nz, jr_009_4c68

    inc [hl]

jr_009_4c68:
    dec b
    jr nz, jr_009_4c41

jr_009_4c6b:
    ld hl, $d666
    ld de, $c0d8
    ld b, $2f
    ld c, $01

jr_009_4c75:
    ld a, [hl+]
    or a
    jr z, jr_009_4c7c

    ld a, c
    ld [de], a
    inc de

jr_009_4c7c:
    inc c
    dec b
    jr nz, jr_009_4c75

    ret


    ld de, $4cdd
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_4ca2

jr_009_4ca2:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_4cb2

    call Call_009_47cd
    call Call_009_4b62
    call Call_009_40fa

jr_009_4cb2:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_4cc6

    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    jr jr_009_4cdc

jr_009_4cc6:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_4cdc

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8dd], a

Jump_009_4cdc:
jr_009_4cdc:
    ret


    sub d
    ld bc, $00a2
    ld [c], a
    nop
    ld [hl+], a
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $000c
    call Call_009_45e5
    ld a, $01
    ld [wPLAN_selection], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4d06
    ld hl, $c906
    inc [hl]
    ret


Call_009_4d06:
    call Call_009_4204
    call Call_009_465a
    ld de, $6f7d
    call Call_009_40c9
    call Call_009_4b62
    ld de, $4cdd
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    ld de, $7044
    call Call_009_40c9
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld hl, $0164
    call Call_009_406d
    call Call_000_2082
    call Call_009_442a
    ld de, $4db5
    ld hl, wPLAN_selection
    ld b, $02
    ld a, [hl]
    call Call_009_456d
    call Call_009_40fa
    ret


    ld de, $4db5
    ld hl, $d665
    ld a, [$da5e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $02
    ld hl, wPLAN_selection
    call Call_009_434a
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_4da3

    call Call_009_4b3d
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_4db4

jr_009_4da3:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_4db4

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]

Jump_009_4db4:
jr_009_4db4:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld a, [$da5e]
    ld l, a
    ld h, $08
    ld de, $c180
    call Call_000_097a
    ld a, [$c8dd]
    ld hl, $c190
    call Call_000_09a4
    call Call_009_4bc8
    ld c, l
    ld b, h
    ld a, [$c8dd]
    call Call_000_1de6
    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    ld a, e
    ldh [$d7], a
    ld a, l
    ld [$c8e4], a
    ld a, h
    ld [$c8e5], a
    ld a, e
    ld [$c8e6], a
    ld hl, $c1a0
    call Call_000_09c7
    ld hl, $000d
    call Call_009_45e5
    xor a
    ld [$c8de], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $6efa
    call Call_009_40c9
    call Call_009_442a
    ld de, $4e6d
    ld a, [$c8de]
    call Call_009_4530
    call Call_009_40fa
    ld hl, $c906
    inc [hl]
    ret


    ld de, $4e6d
    ld hl, $c8de
    ld b, $02
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_4e54

jr_009_4e3b:
    call Call_009_4d06
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_4e6c

jr_009_4e54:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_4e6c

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_4e3b

    ld hl, $c906
    inc [hl]

Jump_009_4e6c:
jr_009_4e6c:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $c8e4
    ld a, [wCurrGoldLo]
    add [hl]
    ld e, a
    inc hl
    ld a, [wCurrGoldMid]
    adc [hl]
    ld d, a
    inc hl
    ld a, [wCurrGoldHi]
    adc [hl]
    ld c, a
    ld a, e
    sub $a0
    ld a, d
    sbc $86
    ld a, c
    sbc $01
    ld hl, $000e
    jr nc, jr_009_4eb4

    ld a, [$c8e4]
    ld l, a
    ld a, [$c8e5]
    ld h, a
    ld a, [$c8e6]
    ld e, a
    call Call_000_241a
    ld a, [$c8dd]
    ld b, a

jr_009_4ea8:
    push bc
    ld hl, $0307
    rst $10
    pop bc
    dec b
    jr nz, jr_009_4ea8

    ld hl, $000f

jr_009_4eb4:
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, wOPTN_and_Item_selection
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ld a, $00
    ld [$c906], a
    ret


    ld hl, $000b
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c905]
    rst $00
    dec bc
    ld c, a
    ld d, [hl]
    ld c, a
    or e
    ld c, a
    inc hl
    ld d, b
    add b
    ld d, b
    add sp, $50
    inc b
    ld d, c
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_009_4204
    ld de, $2e0f
    ld hl, $8800
    call Call_000_1577
    call Call_009_442a
    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    call Call_009_4204
    call Call_009_4f69
    call Call_009_40fa
    ret


Call_009_4f69:
    ld a, $02
    ld [$c822], a
    ld a, $0b
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    ld de, $7838
    call Call_009_40c9
    ld de, $6f1f
    call Call_009_40c9
    ld de, $2e07
    call Call_009_40c9
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call Call_000_1fb9
    call Call_009_442a
    ld de, $501b
    ld a, [wMenu_selection]
    call Call_009_4530
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $501b
    ld hl, wMenu_selection
    ld b, $03
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    and $0a
    jr z, jr_009_4fdc

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_009_501a

jr_009_4fdc:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_009_501a

    ld a, $59
    call Call_000_1b2c
    ld a, [wMenu_selection]
    cp $82
    jp z, Jump_009_5104

    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, wMenu_selection
    set 7, [hl]
    ld hl, wOPTN_and_Item_selection
    ld bc, $0007
    ld a, $00
    call Call_000_12c7
    ld hl, $0003
    ld a, [wMenu_selection]
    and $7f
    jr z, jr_009_5015

    ld hl, $000e

jr_009_5015:
    call Call_009_45e5
    jr jr_009_501a

jr_009_501a:
    ret


    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38
    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    call Call_009_4204
    call Call_009_5049
    call Call_009_40fa
    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    ret


Call_009_5049:
    ld de, $7838
    call Call_009_40c9
    ld de, $6f1f
    call Call_009_40c9
    ld de, $2e07
    call Call_009_40c9
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call Call_000_1fb9
    call Call_009_442a
    ld de, $50b0
    ld a, [wOPTN_and_Item_selection]
    call Call_009_4530
    ret


    ld a, [$c825]
    or a
    ret nz

    ld de, $50b0
    ld hl, wOPTN_and_Item_selection
    ld b, $03
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    and $0a
    jr z, jr_009_50b8

    call Call_009_4204
    call Call_009_4f69
    call Call_009_40fa
    ld hl, $0001
    call Call_009_45e5
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    jr jr_009_50e7

    ld hl, $6100
    nop
    and c
    nop
    rst $38
    rst $38

jr_009_50b8:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_009_50e7

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, wOPTN_and_Item_selection
    set 7, [hl]
    ld hl, wPLAN_selection
    ld bc, $0006
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7

jr_009_50e7:
    ret


    ld a, [wMenu_selection]
    rst $00
    ldh a, [$50]
    ld a, [$fa50]
    db $db
    ret z

    rst $00
    ld a, [de]
    ld d, c
    xor a
    ld d, e
    inc b
    ld d, c
    ld a, [wOPTN_and_Item_selection]
    rst $00
    add hl, de
    ld d, l
    adc l
    ld d, a
    inc b
    ld d, c

Jump_009_5104:
    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, wGameState
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    jr nc, @+$53

    ld h, c
    ld d, c
    nop
    ld d, d
    ld a, [hl]
    ld d, d
    adc [hl]
    ld d, d
    db $fd
    ld d, d
    ld c, a
    ld d, e
    ld a, l
    ld d, e
    sbc [hl]
    ld d, e
    ld hl, wInventory
    call Call_009_51f0
    ld a, c
    or a
    ld hl, $0005
    jr z, jr_009_5158

    ld hl, $ca65
    ld b, $28
    call Call_009_51f2
    ld a, c
    cp $28
    ld hl, $0006
    jr nc, jr_009_5158

    ld hl, $c906
    inc [hl]
    ld hl, $0004
    call Call_009_45e5
    ret


jr_009_5158:
    call Call_009_45e5
    ld a, $08
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5199
    call Call_009_51e5
    call Call_009_47cd
    call Call_009_5177
    ld hl, $c906
    inc [hl]
    ret


Call_009_5177:
    call Call_009_4204
    call Call_009_5049
    ld de, $7153
    call Call_009_40c9
    call Call_009_442a
    ld de, $5272
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    call Call_009_40fa
    ret


Call_009_5199:
    ld hl, $0305
    rst $10
    ld hl, $d665
    ld bc, $0030
    xor a
    call Call_000_12c7
    ld hl, $c0d8
    ld bc, $0028
    xor a
    call Call_000_12c7
    ld de, wInventory
    ld b, $14

jr_009_51b6:
    ld a, [de]
    or a
    jr z, jr_009_51cf

    cp $ff
    jr z, jr_009_51cf

    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc de
    inc [hl]
    dec b
    jr nz, jr_009_51b6

jr_009_51cf:
    ld hl, $d666
    ld de, $c0d8
    ld b, $2f
    ld c, $01

jr_009_51d9:
    ld a, [hl+]
    or a
    jr z, jr_009_51e0

    ld a, c
    ld [de], a
    inc de

jr_009_51e0:
    inc c
    dec b
    jr nz, jr_009_51d9

    ret


Call_009_51e5:
    ld hl, $c0d8	;pointer to temp inventory storage loaded into hl
    call Call_009_51f0
    ld a, c
    ld [$c8e9], a	;number of individual item ids the bank should display
    ret


Call_009_51f0:		;find how many inv slots are full
    ld b, $28		;load number of inv slots into counter at reg b

Call_009_51f2:
    ld c, $00		

jr_009_51f4:
    ld a, [hl+]		;loads contents of current inventory slot into reg a and increments to next one
    cp $00		;compares ID to 0
    ret z		;returns if a zero is found (currently unknown what writes 00 to inventory slots.)

    cp $ff		;compares item id to FF (empty slot) 
    ret z		;return once an empty slot is reached. 

    inc c		;if neither happens, increment c 
    dec b
    jr nz, jr_009_51f4

    ret


    ld de, $5272
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_5221

jr_009_5221:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_522b

    call Call_009_47cd

jr_009_522b:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_525b

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5049
    call Call_009_40fa
    ld hl, $0003
    call Call_009_45e5
    ld a, $04
    ld [$c905], a
    jr jr_009_5271

jr_009_525b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5271

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8de], a

Jump_009_5271:
jr_009_5271:
    ret


    ld [hl], d
    ld bc, $0089
    ret


    nop
    add hl, bc
    ld bc, HeaderRAMSize
    rst $38
    rst $38
    ld hl, $0007
    call Call_009_45e5
    ld a, $01
    ld [$c8dd], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_529b
    ld hl, $c906
    inc [hl]
    ret


Call_009_529b:
    call Call_009_4204
    call Call_009_5049
    ld de, $7153
    call Call_009_40c9
    ld de, $5272
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    ld de, $7044
    call Call_009_40c9
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld hl, $0164
    call Call_009_406d
    call Call_000_2082
    call Call_009_442a
    ld de, $5349
    ld hl, $c8dd
    ld b, $02
    ld a, [hl]
    call Call_009_456d
    call Call_009_40fa
    ret


    ld de, $5349
    ld hl, $d665
    ld a, [$da5e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $02
    ld hl, $c8dd
    call Call_009_434a
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_5337

    call Call_009_5177
    ld hl, $0004
    call Call_009_45e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_5348

jr_009_5337:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5348

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]

Jump_009_5348:
jr_009_5348:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $ca65
    ld b, $28
    call Call_009_51f2
    ld a, [$c8de]
    add c
    cp $29
    ld hl, $0008
    jr nc, jr_009_5375

    ld a, [$c8de]
    ld b, a

jr_009_5366:
    push bc
    ld hl, $0307
    rst $10
    call Call_009_5b1a
    pop bc
    dec b
    jr nz, jr_009_5366

    ld hl, $0009

jr_009_5375:
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, wPLAN_selection
    ld bc, $0006
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ld a, $00
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    cp l
    ld d, e
    call c, $3953
    ld d, h
    sbc e
    ld d, h
    rst $38
    ld d, h
    ld hl, $000a
    call Call_009_45e5
    ld a, $02
    ld [wPLAN_selection], a
    ld a, $00
    ld [$c8df], a
    ld a, $00
    ld [$c8e0], a
    ld a, $00
    ld [$c8e1], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_53e9
    ld hl, $c906
    inc [hl]
    ret


Call_009_53e9:
    call Call_009_4204
    call Call_009_5049
    ld a, $02
    ld [$c822], a
    ld a, $55
    ld [$c823], a
    ld hl, $8a00
    ld de, $0401
    call Call_009_412f
    ld de, $71ca
    call Call_009_40c9
    ld de, $71e7
    call Call_009_40c9
    ld a, [$ca4e]
    ldh [$d5], a
    ld a, [$ca4f]
    ldh [$d6], a
    ld a, [$ca50]
    ldh [$d7], a
    ld hl, $016d
    call Call_009_406d
    call Call_000_1fa5
    call Call_009_442a
    ld de, $548f
    ld hl, wPLAN_selection
    ld b, $02
    ld a, [hl]
    call Call_009_5a67
    call Call_009_40fa
    ret


    ld de, $548f
    ld hl, wPLAN_selection
    ld b, $03
    call Call_009_590c
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_5474

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5049
    call Call_009_40fa
    ld hl, $0003
    call Call_009_45e5
    ld a, $04
    ld [$c905], a
    jr jr_009_548e

jr_009_5474:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_548e

    ld hl, $c8df
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_009_548e

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]

Jump_009_548e:
jr_009_548e:
    ret


    adc [hl]
    nop
    adc a
    nop
    sub b
    nop
    sub c
    nop
    sub d
    nop
    rst $38
    rst $38
    ld hl, $c8df
    ld a, [wCurrGoldLo]
    sub [hl]
    inc hl
    ld a, [wCurrGoldMid]
    sbc [hl]
    inc hl
    ld a, [wCurrGoldHi]
    sbc [hl]
    ld hl, $000b
    jr c, jr_009_54f7

    ld hl, $c8df
    ld a, [$ca4e]
    add [hl]
    ld e, a
    inc hl
    ld a, [$ca4f]
    adc [hl]
    ld d, a
    inc hl
    ld a, [$ca50]
    adc [hl]
    ld c, a
    ld a, e
    sub $40
    ld a, d
    sbc $42
    ld a, c
    sbc $0f
    ld hl, $000c
    jr nc, jr_009_54f7

    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call Call_000_2424
    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call Call_000_242e
    call Call_009_53e9
    ld hl, $000d

jr_009_54f7:
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4204
    call Call_009_4f69
    call Call_009_40fa
    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    cpl
    ld d, l
    ld h, b
    ld d, l
    ldh [rHDMA5], a
    ld e, [hl]
    ld d, [hl]
    ld l, [hl]
    ld d, [hl]
    db $dd
    ld d, [hl]
    cpl
    ld d, a
    ld e, e
    ld d, a
    ld a, h
    ld d, a
    ld hl, $ca65
    ld b, $28
    call Call_009_51f2
    ld a, c
    or a
    ld hl, $0011
    jr z, jr_009_5557

    ld hl, wInventory
    call Call_009_51f0
    ld a, c
    cp $14
    ld hl, $0012
    jr nc, jr_009_5557

    ld hl, $c906
    inc [hl]
    ld hl, $0010
    call Call_009_45e5
    ret


jr_009_5557:
    call Call_009_45e5
    ld a, $08
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5598
    call Call_009_51e5
    call Call_009_47cd
    call Call_009_5576
    ld hl, $c906
    inc [hl]
    ret


Call_009_5576:
    call Call_009_4204
    call Call_009_5049
    ld de, $7153
    call Call_009_40c9
    call Call_009_442a
    ld de, $5652
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    call Call_009_40fa
    ret


Call_009_5598:
    call Call_009_5aea
    ld hl, $d665
    ld bc, $0030
    xor a
    call Call_000_12c7
    ld hl, $c0d8
    ld bc, $0028
    xor a
    call Call_000_12c7
    ld de, $ca65
    ld b, $28

jr_009_55b4:
    ld a, [de]
    or a
    jr z, jr_009_55ca

    cp $ff
    jr z, jr_009_55ca

    inc de
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc [hl]
    dec b
    jr nz, jr_009_55b4

jr_009_55ca:
    ld hl, $d666
    ld de, $c0d8
    ld b, $2f
    ld c, $01

jr_009_55d4:
    ld a, [hl+]
    or a
    jr z, jr_009_55db

    ld a, c
    ld [de], a
    inc de

jr_009_55db:
    inc c
    dec b
    jr nz, jr_009_55d4

    ret


    ld de, $5652
    ld hl, $c8e2
    ld a, [$c8e9]
    ld c, a
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    call Call_009_4256
    pop af
    ld hl, $c8e2
    and $7f
    ld b, a
    ld a, [hl]
    and $7f
    cp b
    jr z, jr_009_5601

jr_009_5601:
    pop af
    ld hl, $c8e3
    cp [hl]
    jr z, jr_009_560b

    call Call_009_47cd

jr_009_560b:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_563b

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5049
    call Call_009_40fa
    ld hl, $000e
    call Call_009_45e5
    ld a, $04
    ld [$c905], a
    jr jr_009_5651

jr_009_563b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5651

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]
    ld a, $01
    ld [$c8de], a

Jump_009_5651:
jr_009_5651:
    ret


    ld [hl], d
    ld bc, $0089
    ret


    nop
    add hl, bc
    ld bc, HeaderRAMSize
    rst $38
    rst $38
    ld hl, $0013
    call Call_009_45e5
    ld a, $01
    ld [$c8dd], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_567b
    ld hl, $c906
    inc [hl]
    ret


Call_009_567b:
    call Call_009_4204
    call Call_009_5049
    ld de, $7153
    call Call_009_40c9
    ld de, $5652
    ld b, $04
    ld a, [$c8e9]
    ld c, a
    ld hl, $c8e2
    call Call_009_44ff
    ld de, $7044
    call Call_009_40c9
    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$da5e], a
    ld hl, $d665
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $00
    ld hl, $0164
    call Call_009_406d
    call Call_000_2082
    call Call_009_442a
    ld de, $5729
    ld hl, $c8dd
    ld b, $02
    ld a, [hl]
    call Call_009_456d
    call Call_009_40fa
    ret


    ld de, $5729
    ld hl, $d665
    ld a, [$da5e]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    ld b, $02
    ld hl, $c8dd
    call Call_009_434a
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_5717

    call Call_009_5576
    ld hl, $0010
    call Call_009_45e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_5728

jr_009_5717:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5728

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]

Jump_009_5728:
jr_009_5728:
    ret


    ld h, c
    ld bc, $0162
    rst $38
    rst $38
    ld hl, wInventory
    call Call_009_51f0
    ld a, [$c8de]
    add c
    cp $15
    ld hl, $0014
    jr nc, jr_009_5753

    ld a, [$c8de]
    ld b, a

jr_009_5744:
    push bc
    call Call_009_5b40
    ld hl, $0306
    rst $10
    pop bc
    dec b
    jr nz, jr_009_5744

    ld hl, $0015

jr_009_5753:
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, wPLAN_selection
    ld bc, $0006
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ld a, $00
    ld [$c906], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    ret


    ld a, [$c906]
    rst $00
    sbc e
    ld d, a
    rst $08
    ld d, a
    inc l
    ld e, b
    adc [hl]
    ld e, b
    ld a, [c]
    ld e, b
    ld hl, $ca4e
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_009_57b0

    ld hl, $000f
    call Call_009_45e5
    ld a, $04
    ld [$c906], a
    ret


jr_009_57b0:
    ld hl, $0016
    call Call_009_45e5
    ld a, $02
    ld [wPLAN_selection], a
    ld a, $00
    ld [$c8df], a
    ld a, $00
    ld [$c8e0], a
    ld a, $00
    ld [$c8e1], a
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_57dc
    ld hl, $c906
    inc [hl]
    ret


Call_009_57dc:
    call Call_009_4204
    call Call_009_5049
    ld a, $02
    ld [$c822], a
    ld a, $55
    ld [$c823], a
    ld hl, $8a00
    ld de, $0401
    call Call_009_412f
    ld de, $71ca
    call Call_009_40c9
    ld de, $71e7
    call Call_009_40c9
    ld a, [$ca4e]
    ldh [$d5], a
    ld a, [$ca4f]
    ldh [$d6], a
    ld a, [$ca50]
    ldh [$d7], a
    ld hl, $016d
    call Call_009_406d
    call Call_000_1fa5
    call Call_009_442a
    ld de, $5882
    ld hl, wPLAN_selection
    ld b, $02
    ld a, [hl]
    call Call_009_5a67
    call Call_009_40fa
    ret


    ld de, $5882
    ld hl, wPLAN_selection
    ld b, $03
    call Call_009_590c
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_5867

    ld a, $02
    ld [$c822], a
    ld a, $0c
    ld [$c823], a
    ld hl, $8a40
    ld de, $0c01
    call Call_009_412f
    call Call_009_4204
    call Call_009_5049
    call Call_009_40fa
    ld hl, $000e
    call Call_009_45e5
    ld a, $04
    ld [$c905], a
    jr jr_009_5881

jr_009_5867:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5881

    ld hl, $c8df
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_009_5881

    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]

Jump_009_5881:
jr_009_5881:
    ret


    adc [hl]
    nop
    adc a
    nop
    sub b
    nop
    sub c
    nop
    sub d
    nop
    rst $38
    rst $38
    ld hl, $c8df
    ld a, [$ca4e]
    sub [hl]
    inc hl
    ld a, [$ca4f]
    sbc [hl]
    inc hl
    ld a, [$ca50]
    sbc [hl]
    ld hl, $0017
    jr c, jr_009_58ea

    ld hl, $c8df
    ld a, [wCurrGoldLo]
    add [hl]
    ld e, a
    inc hl
    ld a, [wCurrGoldMid]
    adc [hl]
    ld d, a
    inc hl
    ld a, [wCurrGoldHi]
    adc [hl]
    ld c, a
    ld a, e
    sub $a0
    ld a, d
    sbc $86
    ld a, c
    sbc $01
    ld hl, $0018
    jr nc, jr_009_58ea

    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call Call_000_2438
    ld a, [$c8df]
    ld l, a
    ld a, [$c8e0]
    ld h, a
    ld a, [$c8e1]
    ld e, a
    call Call_000_241a
    call Call_009_57dc
    ld hl, $0019

jr_009_58ea:
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_4204
    call Call_009_4f69
    call Call_009_40fa
    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c905], a
    ret


Call_009_590c:
    res 7, [hl]
    push de
    ld a, [wJoypad_Current]
    bit 7, a
    jr z, jr_009_5920

    ld a, $10
    ld [wCursorBlinkTimer], a
    call Call_009_5965
    jr jr_009_5954

jr_009_5920:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_009_5931

    ld a, $10
    ld [wCursorBlinkTimer], a
    call Call_009_5a30
    jr jr_009_5954

jr_009_5931:
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_009_5941

    ld a, [hl]
    dec a
    cp b
    jr c, jr_009_594f

    dec b
    ld a, b
    jr jr_009_594f

jr_009_5941:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_009_5956

    ld a, [hl]
    inc a
    cp b
    jr c, jr_009_594f

    ld a, $00

jr_009_594f:
    ld [hl], a
    xor a
    ld [wCursorBlinkTimer], a

jr_009_5954:
    push hl
    pop hl

jr_009_5956:
    ld a, [wJoypad_Current]
    bit 0, a
    jr z, jr_009_595f

    set 7, [hl]

jr_009_595f:
    pop de
    ld a, [hl]
    call Call_009_5a67
    ret


Call_009_5965:
    push de
    ld a, [hl]
    push hl
    ld a, [$c8df]
    ldh [$d5], a
    ld a, [$c8e0]
    ldh [$d6], a
    ld a, [$c8e1]
    ldh [$d7], a
    ld hl, wDebug_main_menu_option
    call Call_000_1ff8
    pop hl
    ld a, [hl]
    ld de, wDebug_main_menu_option
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    dec a
    ld [de], a
    cp $ff
    jr nz, jr_009_5994

    ld a, $09
    ld [de], a

jr_009_5994:
    call Call_009_5999
    pop de
    ret


Call_009_5999:
    push hl
    ld bc, $2710
    ld a, [wDebug_main_menu_option]
    and $0f
    call Call_000_1de6
    ld a, l
    ld [$c8df], a
    ld a, h
    ld [$c8e0], a
    ld a, e
    ld [$c8e1], a
    ld bc, $03e8
    ld a, [$c0a1]
    and $0f
    call Call_000_1de6
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc h
    ld [$c8e0], a
    ld a, [$c8e1]
    adc e
    ld [$c8e1], a
    ld bc, $0064
    ld a, [$c0a2]
    and $0f
    call Call_000_1de6
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc h
    ld [$c8e0], a
    ld a, [$c8e1]
    adc e
    ld [$c8e1], a
    ld bc, $000a
    ld a, [$c0a3]
    and $0f
    call Call_000_1de6
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc h
    ld [$c8e0], a
    ld a, [$c8e1]
    adc e
    ld [$c8e1], a
    ld a, [$c0a4]
    and $0f
    ld l, a
    ld a, [$c8df]
    add l
    ld [$c8df], a
    ld a, [$c8e0]
    adc $00
    ld [$c8e0], a
    ld a, [$c8e1]
    adc $00
    ld [$c8e1], a
    pop hl
    ret


Call_009_5a30:
    push de
    ld a, [hl]
    push hl
    ld a, [$c8df]
    ldh [$d5], a
    ld a, [$c8e0]
    ldh [$d6], a
    ld a, [$c8e1]
    ldh [$d7], a
    ld hl, wDebug_main_menu_option
    call Call_000_1ff8
    pop hl
    ld de, $c0a1
    ld a, [hl]
    ld de, wDebug_main_menu_option
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    and $0f
    inc a
    ld [de], a
    cp $0a
    jr nz, jr_009_5a62

    ld a, $00
    ld [de], a

jr_009_5a62:
    call Call_009_5999
    pop de
    ret


Call_009_5a67:
    ld c, a
    push de
    push bc
    ld a, [$c8df]
    ldh [$d5], a
    ld a, [$c8e0]
    ldh [$d6], a
    ld a, [$c8e1]
    ldh [$d7], a
    ld hl, wDebug_main_menu_option
    call Call_000_1ff8
    pop bc
    pop de
    bit 7, c
    jr nz, jr_009_5a95

    ld a, [wCursorBlinkTimer]
    and $0f
    push af
    ld a, [wCursorBlinkTimer]
    inc a
    ld [wCursorBlinkTimer], a
    pop af
    ld a, c
    ret nz

jr_009_5a95:
    ld c, a
    ld b, $00

jr_009_5a98:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_5ac2

    ld a, [wCursorBlinkTimer]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_5ac2

    ld a, $e6

jr_009_5ac2:
    cp $e0
    jr nz, jr_009_5ad3

    push hl
    ld a, b
    ld hl, wDebug_main_menu_option
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl

jr_009_5ad3:
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_009_5a98

Call_009_5aea:
    ld hl, $d665
    ld de, $ca65
    ld b, $28

jr_009_5af2:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_5af2

    ld hl, $ca65
    ld bc, $0028
    ld a, $ff
    call Call_000_12c7
    ld hl, $d665
    ld de, $ca65
    ld b, $28

jr_009_5b0b:
    ld a, [hl+]
    cp $ff
    jr z, jr_009_5b16

    cp $00
    jr z, jr_009_5b16

    ld [de], a
    inc de

jr_009_5b16:
    dec b
    jr nz, jr_009_5b0b

    ret


Call_009_5b1a:
    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca65
    ld b, $28

jr_009_5b28:
    ld a, [hl]
    cp $00
    jr z, jr_009_5b3b

    cp $ff
    jr z, jr_009_5b3b

    inc hl
    dec b
    jr nz, jr_009_5b28

    ld a, $ff
    ld [$da5e], a
    ret


jr_009_5b3b:
    ld a, [$da5e]
    ld [hl], a
    ret


Call_009_5b40:
    ld a, [$da5e]
    cp $00
    ret z

    cp $ff
    ret z

    ld hl, $ca65
    ld b, $28

jr_009_5b4e:
    ld a, [$da5e]
    cp [hl]
    jr z, jr_009_5b5e

    inc hl
    dec b
    jr nz, jr_009_5b4e

    ld a, $ff
    ld [$da5e], a
    ret


jr_009_5b5e:
    ld [hl], $ff
    call Call_009_5aea
    ret


    ld a, [$c905]
    rst $00
    ld [hl], d
    ld e, e
    cp d
    ld e, e
    cp a
    ld e, e
    pop af
    ld e, e
    db $f4
    ld e, e
    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_009_4204
    ld de, $2e11
    ld hl, $8800
    call Call_000_1577
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    xor a
    ld [$c906], a
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ld hl, $c8e2
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ld a, [$cab4]
    and $03
    ld [$c8e2], a
    ld a, [$cab4]
    cp $04
    ret c

    ld a, $01
    ld [$c8e3], a
    ret


    jp Jump_009_5c0a


    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, wGameState
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


Jump_009_5c0a:
    ld a, [$c906]
    rst $00
    jr nz, @+$5e

    ld b, e
    ld e, h
    inc sp
    ld e, l
    xor [hl]
    ld e, l
    ld a, [bc]
    ld e, [hl]
    ld l, $5e
    and a
    ld e, [hl]
    xor h
    ld e, [hl]
    or [hl]
    ld e, [hl]
    call Call_009_5c28
    ld hl, $c906
    inc [hl]
    ret


Call_009_5c28:
    ld hl, $c0d8
    ld bc, $0008
    ld a, $90
    call Call_000_12c7
    ld a, [$cab4]
    or a
    ret z

    ld b, a
    ld hl, $c0d8

jr_009_5c3c:
    ld [hl], $ac
    inc hl
    dec b
    jr nz, jr_009_5c3c

    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5c97
    call Call_009_5c53
    ld hl, $c906
    inc [hl]
    ret


Call_009_5c53:
    call Call_009_4204
    ld de, $2e07
    call Call_009_40c9
    ld de, $74a0
    call Call_009_40c9
    ld de, $6f1f
    call Call_009_40c9
    call Call_009_5ce0
    ld a, [wCurrGoldLo]
    ldh [$d5], a
    ld a, [wCurrGoldMid]
    ldh [$d6], a
    ld a, [wCurrGoldHi]
    ldh [$d7], a
    ld hl, $002e
    call Call_009_406d
    call Call_000_1fb9
    call Call_009_442a
    ld de, $5da2
    ld b, $04
    ld c, $04
    ld hl, $c8e2
    call Call_009_44ff
    call Call_009_40fa
    ret


Call_009_5c97:
    ld de, $5d1b
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8800
    call Call_009_5cce
    call Call_009_5cce
    call Call_009_5cce
    call Call_009_5cce
    ld de, $c0d8
    ld a, [$c8e3]
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8840
    call Call_009_5cce
    call Call_009_5cce
    call Call_009_5cce

Call_009_5cce:
    push de
    push hl
    ld a, [de]
    call Call_009_41b6
    pop hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_009_5ce0:
    ld de, $5d23
    ld a, [$c8e3]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $00ab
    call Call_009_5cfb
    call Call_009_5cfb
    call Call_009_5cfb

Call_009_5cfb:
    push de
    push hl
    ld a, [de]
    ldh [$d5], a
    inc de
    ld a, [de]
    ldh [$d6], a
    ld a, $00
    ldh [$d7], a
    call Call_009_406d
    call Call_000_1fb9
    pop hl
    ld a, l
    add $40
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    inc de
    ret


    ld a, [hl+]
    add hl, hl
    jr z, jr_009_5d46

    ld h, $25
    inc h
    ld [hl], $00
    nop
    ld a, [bc]
    nop
    ld [hl-], a
    nop
    ld h, h
    nop
    db $f4
    ld bc, $03e8
    adc b
    inc de
    db $10
    daa
    ld de, $5da4
    ld hl, $c8e2
    ld b, $04
    inc hl
    ld a, [hl-]
    push af
    call Call_009_42f1
    pop af
    ld hl, $c8e3
    cp [hl]

jr_009_5d46:
    jr z, jr_009_5d51

    call Call_009_5c97
    call Call_009_5ce0
    call Call_009_40fa

jr_009_5d51:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5d90

    ld hl, $c0d8
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $90
    jp z, Jump_009_5d81

    ld hl, $0006
    call Call_009_45e5
    ld a, $08
    ld [$c906], a
    jr jr_009_5da1

Jump_009_5d81:
    ld a, $59
    call Call_000_1b2c
    ld hl, $c906
    inc [hl]
    xor a
    ld [$c8de], a
    jr jr_009_5da1

Jump_009_5d90:
    ld a, [wJoypad_current_frame]
    bit 1, a
    jp z, Jump_009_5da1

    ld a, $ff
    ld [$d9cd], a
    ld hl, $c905
    inc [hl]

Jump_009_5da1:
jr_009_5da1:
    ret


    adc h
    ld bc, $00a2
    ld [c], a
    nop
    ld [hl+], a
    ld bc, $0162
    rst $38
    rst $38
    ld hl, $5d23
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [wCurrGoldLo]
    sub [hl]
    inc hl
    ld a, [wCurrGoldMid]
    sbc [hl]
    inc hl
    ld a, [wCurrGoldHi]
    sbc $00
    jr nc, jr_009_5de1

    ld hl, $0005
    call Call_009_45e5
    ld a, $08
    ld [$c906], a
    ret


jr_009_5de1:
    ld de, $5d1b
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
    ld hl, $0004
    call Call_009_45e5
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $6ed5
    call Call_009_40c9
    call Call_009_442a
    ld de, $5ea1
    ld a, [$c8de]
    call Call_009_4530
    call Call_009_40fa
    ld hl, $c906
    inc [hl]
    ret


    ld de, $5ea1
    ld hl, $c8de
    ld b, $02
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_5e5b

jr_009_5e40:
    call Call_009_5c53
    ld hl, $0001
    call Call_009_45e5
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    ld hl, $c906
    dec [hl]
    jr jr_009_5ea0

jr_009_5e5b:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_5ea0

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_5e40

    ld hl, $5d23
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $00
    call Call_000_2424
    ld a, [$c8e3]
    add a
    add a
    ld b, a
    ld a, [$c8e2]
    and $7f
    add b
    ld [$d9ce], a
    ld hl, $c906
    inc [hl]

Jump_009_5ea0:
jr_009_5ea0:
    ret


    cpl
    ld bc, $016f
    rst $38
    rst $38
    ld hl, $c906
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    ld hl, $c905
    inc [hl]
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_5c53
    ld hl, $0001
    call Call_009_45e5
    ld a, $01
    ld [$c906], a
    ret


    ld a, [$c905]
    rst $00
    sub $5e
    inc h
    ld e, a
    xor [hl]
    ld h, b
    ld a, [$2160]
    or a
    rst $38
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    call Call_009_4236
    call Call_009_40fa
    call Call_009_442a
    ld a, $01
    ld [$c8ec], a
    xor a
    ld [$df0d], a
    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    call Call_009_4236
    call Call_009_604d
    call Call_009_5f4d
    call Call_009_5f38
    call Call_009_40fa
    ret


Call_009_5f38:
    ld de, $6cde
    call Call_009_40c9
    ld a, [$c8e9]
    cp $09
    ret c

    ld hl, $0212
    call Call_009_406d
    ld [hl], $e7
    ret


Call_009_5f4d:
    ld de, $c0d8
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $9380
    call Call_009_5fa2
    call Call_009_5fa2
    call Call_009_5fa2
    call Call_009_5fa2
    call Call_009_5fa2
    call Call_009_5fa2
    call Call_009_5fa2
    call Call_009_5fa2
    ld de, $c0d8
    ld a, [wOPTN_and_Item_selection]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $8880
    call Call_009_6004
    call Call_009_6004
    call Call_009_6004
    call Call_009_6004
    call Call_009_6004
    call Call_009_6004
    call Call_009_6004
    call Call_009_6004
    ret


Call_009_5fa2:
    push de
    push hl
    ld a, [de]
    cp $ff
    jr nz, jr_009_5fc5

    ld a, $6f
    ld [$c823], a
    ld a, $02
    ld [$c822], a
    ld de, $0901
    call Call_009_412f
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


jr_009_5fc5:
    push hl
    ld hl, $5fe4
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    pop hl
    call Call_000_1577
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


    rrca
    ld d, [hl]
    db $10
    ld d, [hl]
    ld de, $1256
    ld d, [hl]
    inc de
    ld d, [hl]
    inc d
    ld d, [hl]
    dec d
    ld d, [hl]
    ld d, $56
    rla
    ld d, [hl]
    jr @+$58

    add hl, de
    ld d, [hl]
    ld a, [de]
    ld d, [hl]
    dec de
    ld d, [hl]
    inc e
    ld d, [hl]
    dec e
    ld d, [hl]
    ld e, $56

Call_009_6004:
    push de
    push hl
    ld a, [de]
    cp $ff
    ld a, $e0
    jr z, jr_009_6033

    ld a, [de]
    push de
    ld de, $607e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    push bc
    ld a, [de]
    ld c, a
    ld b, $00
    push hl
    call Call_000_26ae
    pop hl
    pop bc
    pop de
    ld a, $e0
    jr z, jr_009_6033

    ld a, [de]
    ld de, $608e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]

jr_009_6033:
    ld [$c823], a
    ld a, $05
    ld [$c822], a
    ld de, $0901
    call Call_009_412f
    pop hl
    ld a, l
    add $90
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    inc de
    ret


Call_009_604d:
    ld hl, $c0d8
    ld bc, $0010
    ld a, $ff
    call Call_000_12c7
    ld hl, $c0d8
    ld de, $609e
    ld b, $00

jr_009_6060:
    push bc
    push de
    push hl
    ld a, [de]
    ld c, a
    ld b, $00
    call Call_000_26ae
    pop hl
    pop de
    pop bc
    jr z, jr_009_6072

    ld [hl], b
    inc hl
    inc c

jr_009_6072:
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_009_6060

    ld a, c
    ld [$c8e9], a
    ret


    db $10
    ld de, $1312
    inc d
    ld d, $17
    add hl, de
    dec e
    inc e
    ld a, [de]
    rra
    jr nz, jr_009_60ae

    inc hl
    dec h
    add hl, bc
    inc e
    call nz, $6644
    ld a, [bc]
    ld b, l
    push bc
    ld a, [hl+]
    ld e, b
    dec hl
    sbc c
    xor l
    ld b, e
    sub h
    sbc d
    nop
    jr nc, @+$32

    ld sp, $3231
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $36
    scf

jr_009_60ae:
    ld de, $60f2
    ld hl, wMenu_selection
    ld c, $01
    ld a, [$c8e9]
    cp $09
    jr c, jr_009_60bf

    ld c, $02

jr_009_60bf:
    ld b, $01
    ld a, [wOPTN_and_Item_selection]
    push af
    call Call_009_4256
    pop af
    ld hl, wOPTN_and_Item_selection
    cp [hl]
    jr z, jr_009_60d2

    call Call_009_5f4d

jr_009_60d2:
    ld a, [wJoypad_current_frame]
    and $0a
    jr z, jr_009_60df

    ld hl, $c905
    inc [hl]
    jr jr_009_60f1

jr_009_60df:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jr z, jr_009_60f1

    ld a, $59
    call Call_000_1b2c
    ld hl, $c905
    inc [hl]
    jr jr_009_60f1

jr_009_60f1:
    ret


    ld [de], a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call Call_009_4236
    call Call_009_40fa
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    call Call_000_2518
    call Call_000_25f1
    ld hl, $0604
    rst $10
    xor a
    ld [$c8ec], a
    ld hl, wGameState
    res 4, [hl]
    xor a
    ld [$c905], a
    ret


    ld a, [$c905]
    cp $09
    jr nc, jr_009_6155

    cp $02
    jr c, jr_009_6155

    ld hl, $ffc3
    ld a, $19
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $21
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [$c8f4]
    ld [hl+], a
    ld b, $00
    ld a, [$c8a4]
    bit 4, a
    jr z, jr_009_6149

    ld b, $01

jr_009_6149:
    ld a, b
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $0403
    rst $10

jr_009_6155:
    ld a, [$c905]
    rst $00

    db $74, $61, $7d, $61, $6a, $62, $fc, $62, $b3, $66

    db $ed
    ld h, [hl]

    db $02, $67, $6b, $67, $8f, $67, $6f, $61, $dd, $67

    ld hl, $c905
    inc [hl]
    ret


    ld hl, $c905
    inc [hl]
    ld a, [$c850]
    or a
    ret z

    ld hl, $ffb7
    call Call_009_403d
    ld hl, $ffbb
    call Call_009_403d
    ld hl, $c0c8
    ld bc, $0010
    ld a, $9f
    call Call_000_12c7
    call Call_009_621f
    ld hl, wMenu_selection
    ld bc, $0008
    ld a, $00
    call Call_000_12c7
    ldh a, [$bb]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$b7]
    rrca
    rrca
    rrca
    add l
    ld l, a
    ld a, h
    adc $98
    ld h, a
    ld a, h
    and $03
    or $98
    ld h, a
    ld a, l
    ld [$c909], a
    ld a, h
    ld [$c90a], a
    ld hl, $01c0
    call Call_009_4059
    call Call_009_404a
    ld a, l
    ld [$c83e], a
    ld a, h
    ld [$c83f], a
    call Call_009_4236
    call Call_009_40fa
    ld de, $2e1e
    ld hl, $9000
    call Call_000_1577
    ld de, $2e1f
    ld hl, $8800
    call Call_000_1577
    ld de, $2e20
    ld hl, $8a00
    call Call_000_1577
    ld a, [$c8f4]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $6b
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8500
    call Call_000_1577
    call Call_009_442a
    call Call_009_625d
    ld hl, $1702
    rst $10
    ld hl, $1708
    rst $10
    ld hl, $c905
    inc [hl]
    ret


Call_009_621f:
    ld b, $08
    ld a, [$c8f2]
    ld l, a
    ld a, [$c8f3]
    ld h, a
    ld de, $c0c8
    call Call_009_624d
    ld a, [$c8f4]
    cp $00
    ret z

    ld a, [$c0c8]
    cp $9f
    ret nz

    ld a, [$c8f5]
    ld l, a
    ld h, $07
    ld de, $c180
    call Call_000_097a
    ld hl, $c180
    ld de, $c0c8

Call_009_624d:
jr_009_624d:
    ld a, [hl+]
    cp $00
    ret z

    cp $f0
    ret z

    cp $9f
    ret z

    ld [de], a
    inc de
    dec b
    jr nz, jr_009_624d

    ret


Call_009_625d:
    ld de, $c0c8
    ld hl, $9000
    call Call_009_4168
    call Call_009_6ac8
    ret


    ld hl, $c905
    inc [hl]
    call Call_009_4236
    call Call_009_627b
    call Call_009_6ac8
    call Call_009_40fa
    ret


Call_009_627b:
    ld a, [$c8f4]
    or a
    jr z, jr_009_62e0

    ld a, [$c8f6]
    and $01
    add $a7
    ld [$c180], a
    ld a, $f0
    ld [$c181], a
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
    ld hl, $8af0
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld de, $0101
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld a, $02
    ld [$c822], a
    ld a, $00
    ld [$c823], a
    ld hl, $4102
    rst $10
    pop de
    pop hl
    ld a, l
    ld [$c827], a
    ld a, h
    ld [$c828], a
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    ld hl, $0064
    call Call_009_406d
    ld [hl], $af

jr_009_62e0:
    ld de, $7ca5
    call Call_009_40c9
    ld de, $7ccb
    ld a, [wPLAN_selection]
    or a
    jr nz, jr_009_62f2

    ld de, $7dc9

jr_009_62f2:
    call Call_009_40c9
    call Call_009_442a
    call Call_009_69f6
    ret


    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_009_6332

    ld a, [wOPTN_and_Item_selection]
    cp $03
    jr c, jr_009_631e

    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    cp $11
    jp c, Jump_009_63f5

    ld a, $0d
    ld [wMenu_selection], a
    jp Jump_009_63f5


jr_009_631e:
    ld a, [wMenu_selection]
    dec a
    ld [wMenu_selection], a
    cp $11
    jp c, Jump_009_63f5

    ld a, $10
    ld [wMenu_selection], a
    jp Jump_009_63f5


jr_009_6332:
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_009_634d

    ld a, [wMenu_selection]
    inc a
    ld [wMenu_selection], a
    cp $11
    jp c, Jump_009_63f5

    ld a, $00
    ld [wMenu_selection], a
    jp Jump_009_63f5


jr_009_634d:
    ld a, [wJoypad_Current]
    bit 6, a
    jr z, jr_009_639d

    ld a, [wMenu_selection]
    cp $06
    jr c, jr_009_638b

    cp $0d
    jp nc, Jump_009_6374

    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    cp $05
    jp c, Jump_009_63f5

    ld a, $03
    ld [wOPTN_and_Item_selection], a
    jp Jump_009_63f5


Jump_009_6374:
    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    cp $05
    jr c, jr_009_63f5

    ld a, $04
    ld [wOPTN_and_Item_selection], a
    ld a, $0d
    ld [wMenu_selection], a
    jr jr_009_63f5

jr_009_638b:
    ld a, [wOPTN_and_Item_selection]
    dec a
    ld [wOPTN_and_Item_selection], a
    cp $05
    jr c, jr_009_63f5

    ld a, $04
    ld [wOPTN_and_Item_selection], a
    jr jr_009_63f5

jr_009_639d:
    ld a, [wJoypad_Current]
    bit 7, a
    jp z, Jump_009_6460

    ld a, [wMenu_selection]
    cp $06
    jr c, jr_009_63e3

    cp $0d
    jr nc, jr_009_63c2

    ld a, [wOPTN_and_Item_selection]
    inc a
    ld [wOPTN_and_Item_selection], a
    cp $04
    jr c, jr_009_63f5

    ld a, $00
    ld [wOPTN_and_Item_selection], a
    jr jr_009_63f5

jr_009_63c2:
    ld a, [wOPTN_and_Item_selection]
    cp $02
    jr c, jr_009_63e3

    ld a, [wMenu_selection]
    ld a, $0d
    ld [wMenu_selection], a
    ld a, [wOPTN_and_Item_selection]
    inc a
    ld [wOPTN_and_Item_selection], a
    cp $05
    jr c, jr_009_63f5

    ld a, $00
    ld [wOPTN_and_Item_selection], a
    jr jr_009_63f5

jr_009_63e3:
    ld a, [wOPTN_and_Item_selection]
    inc a
    ld [wOPTN_and_Item_selection], a
    cp $05
    jr c, jr_009_63f5

    ld a, $00
    ld [wOPTN_and_Item_selection], a
    jr jr_009_63f5

Jump_009_63f5:
jr_009_63f5:
    xor a
    ld [wCursorBlinkTimer], a
    ld a, [wOPTN_and_Item_selection]
    ld c, $11
    call Call_000_1dbe
    ld a, [wMenu_selection]
    add l
    cp $4a
    jr nz, jr_009_641c

    ld a, $06
    ld [wMenu_selection], a
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_009_6460

    ld a, $0d
    ld [wMenu_selection], a
    jr jr_009_6460

jr_009_641c:
    cp $50
    jr nz, jr_009_6433

    ld a, $0d
    ld [wMenu_selection], a
    ld a, [wJoypad_Current]
    bit 5, a
    jr z, jr_009_6460

    ld a, $05
    ld [wMenu_selection], a
    jr jr_009_6460

jr_009_6433:
    cp $41
    jr z, jr_009_644d

    cp $42
    jr z, jr_009_644d

    cp $43
    jr z, jr_009_644d

    cp $52
    jr z, jr_009_644d

    cp $53
    jr z, jr_009_644d

    cp $54
    jr z, jr_009_644d

    jr jr_009_6460

jr_009_644d:
    ld a, $0a
    ld [wMenu_selection], a
    ld a, [wJoypad_Current]
    bit 4, a
    jr z, jr_009_6460

    ld a, $00
    ld [wMenu_selection], a
    jr jr_009_6460

Jump_009_6460:
jr_009_6460:
    call Call_009_69f6
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_64a9

Jump_009_646a:
    ld de, $c0c8
    ld a, [de]
    cp $9f
    jp z, Jump_009_6606

jr_009_6473:
    inc de
    ld a, [de]
    cp $9f
    jr nz, jr_009_6473

    dec de
    ld a, [$df0e]
    cp $00
    jp nz, Jump_009_64a0

    ld a, [$c8f4]
    cp $00
    jp nz, Jump_009_64a0

    ld a, $01
    ld [$df0e], a
    ld a, $9f
    ld [$c0c8], a
    ld [$c0c9], a
    ld [$c0ca], a
    ld [$c0cb], a
    jp Jump_009_64a3


Jump_009_64a0:
    ld a, $9f
    ld [de], a

Jump_009_64a3:
    call Call_009_625d
    jp Jump_009_6606


jr_009_64a9:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_65f3

    ld a, [wOPTN_and_Item_selection]
    ld c, $11
    call Call_000_1dbe
    ld a, [wMenu_selection]
    add l
    cp $51
    jr nz, jr_009_64c8

    ld hl, $c905
    inc [hl]
    jp Jump_009_6606


jr_009_64c8:
    cp $40
    jp z, Jump_009_646a

    cp $1e
    jr nz, jr_009_64d6

    ld a, $0d
    ld [hl], a
    jr jr_009_6525

jr_009_64d6:
    cp $1f
    jr nz, jr_009_64df

    ld a, $0e
    ld [hl], a
    jr jr_009_6525

jr_009_64df:
    cp $20
    jr nz, jr_009_64e8

    ld a, $0f
    ld [hl], a
    jr jr_009_6525

jr_009_64e8:
    cp $21
    jr nz, jr_009_64f1

    ld a, $10
    ld [hl], a
    jr jr_009_6525

jr_009_64f1:
    cp $2f
    jr nz, jr_009_64fa

    ld a, $1e
    ld [hl], a
    jr jr_009_6525

jr_009_64fa:
    cp $30
    jr nz, jr_009_6503

    ld a, $1f
    ld [hl], a
    jr jr_009_6525

jr_009_6503:
    cp $0d
    jr nz, jr_009_650c

    ld a, $20
    ld [hl], a
    jr jr_009_6525

jr_009_650c:
    cp $0e
    jr nz, jr_009_6515

    ld a, $21
    ld [hl], a
    jr jr_009_6525

jr_009_6515:
    cp $0f
    jr nz, jr_009_651e

    ld a, $2f
    ld [hl], a
    jr jr_009_6525

jr_009_651e:
    cp $10
    jr nz, jr_009_6525

    ld a, $30
    ld [hl], a

jr_009_6525:
    ld hl, $6607
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    add $e0
    ld l, a
    ld a, h
    adc $c4
    ld h, a
    push hl
    call Call_009_6aad
    pop hl
    ld a, c
    cp $04
    jr nz, jr_009_655a

    ld a, $0d
    ld [wMenu_selection], a
    ld a, $04
    ld [wOPTN_and_Item_selection], a
    ld a, [hl]
    cp $8d
    jr z, jr_009_6568

    cp $8e
    jr z, jr_009_6568

    jp Jump_009_6606


jr_009_655a:
    or a
    jr nz, jr_009_6568

    ld a, [hl]
    cp $8d
    jp z, Jump_009_6606

    cp $8e
    jp z, Jump_009_6606

jr_009_6568:
    ld de, $c0c8

jr_009_656b:
    ld a, [de]
    inc de
    cp $9f
    jr nz, jr_009_656b

    dec de
    ld a, [hl]
    cp $8d
    jr z, jr_009_657b

    cp $8e
    jr nz, jr_009_65b2

jr_009_657b:
    dec de
    ld a, [de]
    inc de
    cp $8d
    jp z, Jump_009_6606

    cp $8e
    jr z, jr_009_6606

    push hl
    ld a, c
    ld hl, $c0d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    pop hl
    ld a, b
    cp $01
    jr z, jr_009_65b2

    ld a, [hl]
    cp $8e
    jr z, jr_009_6606

    ld a, b
    cp $03
    jr z, jr_009_65b2

    cp $06
    jr z, jr_009_65b2

    cp $09
    jr z, jr_009_65b2

    dec de
    ld a, [de]
    inc de
    cp $5a
    jr nz, jr_009_6606

jr_009_65b2:
    ld a, [hl]
    ld [de], a
    call Call_009_625d
    ld a, $59
    call Call_000_1b2c
    call Call_009_6aad
    ld a, c
    ld hl, $c0d2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld a, [wOPTN_and_Item_selection]
    ld c, $11
    call Call_000_1dbe
    ld a, [wMenu_selection]
    add l
    ld b, a
    ld a, $05
    call Call_000_1dfb
    ld a, b
    pop hl
    ld [hl], a
    call Call_009_6aad
    ld a, c
    cp $04
    jr nz, jr_009_6606

    ld a, $0d
    ld [wMenu_selection], a
    ld a, $04
    ld [wOPTN_and_Item_selection], a
    jr jr_009_6606

Jump_009_65f3:
    ld a, [wJoypad_current_frame]
    bit 3, a
    jr z, jr_009_6606

    ld a, $0d
    ld [wMenu_selection], a
    ld a, $04
    ld [wOPTN_and_Item_selection], a
    jr jr_009_6606

Jump_009_6606:
jr_009_6606:
    ret


    db $e1, $00, $e2, $00, $e3, $00, $e4, $00, $e5, $00, $e6, $00, $e7, $00, $e8, $00
    db $e9, $00, $ea, $00, $eb, $00, $ec, $00, $ed, $00, $ef, $00, $f0, $00, $f1, $00
    db $f2, $00, $21, $01, $22, $01, $23, $01, $24, $01, $25, $01, $26, $01, $27, $01
    db $28, $01, $29, $01, $2a, $01, $2b, $01, $2c, $01, $2d, $01, $2f, $01, $30, $01
    db $31, $01, $32, $01, $61, $01, $62, $01, $63, $01, $64, $01, $65, $01, $66, $01
    db $67, $01, $68, $01, $69, $01, $6a, $01, $6b, $01, $6c, $01, $6d, $01, $6f, $01
    db $70, $01, $71, $01, $72, $01, $a1, $01, $a2, $01, $a3, $01, $a4, $01, $a5, $01
    db $a6, $01, $a7, $01, $a8, $01, $a9, $01, $aa, $01, $ab, $01, $ac, $01, $ad, $01
    db $af, $01, $b0, $01, $b1, $01, $b2, $01, $e1, $01, $e2, $01, $e3, $01, $e4, $01
    db $e5, $01, $e6, $01, $e7, $01, $e8, $01, $e9, $01, $ea, $01, $eb, $01, $ec, $01
    db $ed, $01, $ef, $01, $f0, $01, $f1, $01, $f2, $01, $ff, $ff
    
    
    xor a
    ld [wCursorBlinkTimer], a
    call Call_009_69f6
    ld a, [$c0c8]
    cp $9f
    jr nz, jr_009_66ca

    call Call_009_688e
    call Call_009_68d9
    call Call_009_625d

jr_009_66ca:
    call Call_009_68ef
    jr c, jr_009_66d9

    ld hl, $c905
    inc [hl]
    ld hl, $c905
    inc [hl]
    jr jr_009_66ec

jr_009_66d9:
    ld hl, $020a
    call Call_000_096d
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c905
    inc [hl]

jr_009_66ec:
    ret


    ld a, [$c825]
    or a
    ret nz

    call Call_009_625d
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ret


    ld a, [$c8f4]
    cp $00
    jr z, jr_009_6728

    ld a, [$c8f5]
    ld l, a
    ld h, $05
    ld de, $c190
    call Call_000_097a
    ld hl, $c190

jr_009_6718:
    ld a, [hl+]
    cp $f0
    jr nz, jr_009_6718

    dec hl
    ld a, [$c8f6]
    and $01
    add $a7
    ld [hl+], a
    ld [hl], $f0

jr_009_6728:
    ld hl, $c180
    ld de, $c0c8
    ld b, $08

jr_009_6730:
    ld a, [de]
    cp $9f
    jr z, jr_009_673a

    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_6730

jr_009_673a:
    ld a, $00
    ld [$df0e], a
    ld [hl], $f0
    ld hl, $0209
    ld a, [$c8f4]
    cp $00
    jr z, jr_009_6756

    call Call_009_692a
    ld hl, $0245
    jr c, jr_009_6756

    ld hl, $020f

jr_009_6756:
    call Call_000_096d
    ld de, $2e07
    call Call_009_40c9
    call Call_009_40fa
    ld hl, $c905
    inc [hl]
    xor a
    ld [$c8de], a
    ret


    ld a, [$c825]
    or a
    ret nz

    ld a, $5c
    call Call_000_1b2c
    ld de, $6eb0
    call Call_009_40c9
    call Call_009_442a
    ld de, $67d7
    ld a, [$c8de]
    call Call_009_4530
    call Call_009_40fa
    ld hl, $c905
    inc [hl]
    ret


    ld de, $67d7
    ld hl, $c8de
    ld b, $02
    call Call_009_42f1
    ld a, [wJoypad_current_frame]
    bit 1, a
    jr z, jr_009_67be

jr_009_67a1:
    call Call_009_625d
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    ld hl, $c905
    dec [hl]
    jr jr_009_67d6

jr_009_67be:
    ld a, [wJoypad_current_frame]
    bit 0, a
    jp z, Jump_009_67d6

    ld a, $59
    call Call_000_1b2c
    ld a, [$c8de]
    cp $81
    jr z, jr_009_67a1

    ld hl, $c905
    inc [hl]

Jump_009_67d6:
jr_009_67d6:
    ret


    db $2f, $01, $6f, $01, $ff, $ff
    
    ld a, [$c8f2]
    ld l, a
    ld a, [$c8f3]
    ld h, a
    ld bc, $0008
    ld a, $f0
    call Call_000_12c7
    ld a, [$c8f2]
    ld l, a
    ld a, [$c8f3]
    ld h, a
    ld de, $c0c8
    ld b, $08

jr_009_67fa:
    ld a, [de]
    cp $9f
    jr z, jr_009_6804

    ld [hl+], a
    inc de
    dec b
    jr nz, jr_009_67fa

jr_009_6804:
    ld hl, wGameState
    bit 7, [hl]
    jr nz, jr_009_6812

    ld a, [$c8ef]
    cp $ff
    jr z, jr_009_687a

jr_009_6812:
    call Call_009_4236
    call Call_009_40fa
    ld hl, $0b01
    rst $10
    ld hl, $0b02
    rst $10
    call Call_000_2518
    call Call_000_25f1
    ld a, [$c969]
    or a
    jr nz, jr_009_6832

    ld hl, $0604
    rst $10
    jr jr_009_687a

jr_009_6832:
    ld de, $2e15
    ld hl, $8500
    call Call_000_1577
    ld de, $2e16
    ld hl, $8540
    call Call_000_1577
    ld de, $2e17
    ld hl, $8580
    call Call_000_1577
    ld de, $2e18
    ld hl, $85c0
    call Call_000_1577
    ld de, $2e19
    ld hl, $8600
    call Call_000_1577
    ld de, $2e1a
    ld hl, $8640
    call Call_000_1577
    ld de, $2e1b
    ld hl, $8680
    call Call_000_1577
    ld de, $2e1c
    ld hl, $86c0
    call Call_000_1577

jr_009_687a:
    ld hl, wGameState
    bit 7, [hl]
    jr nz, jr_009_6888

    res 4, [hl]
    xor a
    ld [$c905], a
    ret


jr_009_6888:
    ld hl, wGameState
    res 7, [hl]
    ret


Call_009_688e:
    ld a, [$c8f4]
    cp $00
    jr nz, jr_009_68aa

    ld a, $d3
    ld [$c0c8], a
    ld a, $d4
    ld [$c0c9], a
    ld a, $d5
    ld [$c0ca], a
    ld a, $d6
    ld [$c0cb], a
    ret


jr_009_68aa:
    call Call_000_12d0
    ld a, [$c8f4]
    sub $10
    ld [$da31], a
    ld hl, $0301
    rst $10
    ld a, [$da33]
    ld c, a
    ld a, [$c899]
    and $07
    swap c
    or c
    ld c, a
    ld a, [$c8f6]
    and $01
    add a
    add a
    add a
    add c
    ld l, a
    ld h, $03
    ld de, $c0c8
    call Call_000_097a
    ret


Call_009_68d9:
    ld hl, $c0c8
    ld b, $10

jr_009_68de:
    ld a, [hl]
    cp $f0
    jr z, jr_009_68e8

    inc hl
    dec b
    jr nz, jr_009_68de

    ret


jr_009_68e8:
    ld a, $9f
    ld [hl+], a
    dec b
    jr nz, jr_009_68e8

    ret


Call_009_68ef:
    ld hl, $c0c8
    ld a, [hl+]
    cp [hl]
    jr nz, jr_009_6904

    inc hl
    cp [hl]
    jr nz, jr_009_6904

    inc hl
    cp [hl]
    jr nz, jr_009_6904

    inc hl
    ld a, [hl]
    cp $9f
    jr z, jr_009_6917

jr_009_6904:
    ld hl, $6985

jr_009_6907:
    ld de, $c0c8
    ld b, $08
    push hl

jr_009_690d:
    ld a, [de]
    cp [hl]
    inc hl
    inc de
    jr nz, jr_009_6919

    dec b
    jr nz, jr_009_690d

    pop hl

jr_009_6917:
    scf
    ret


jr_009_6919:
    pop hl
    ld a, l
    add $08
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_009_6907

    scf
    ccf
    ret


Call_009_692a:
    ld c, $00

jr_009_692c:
    ld a, c
    push bc
    ld hl, $cac1
    call Call_000_223b
    pop bc
    ld a, [hl]
    or a
    jr z, jr_009_6982

    ld a, l
    add $01
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$c8f2]
    ld e, a
    ld a, [$c8f3]
    ld d, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld a, d
    or e
    jr z, jr_009_697c

    ld de, $c0c8
    ld b, $08

jr_009_6958:
    ld a, [de]

jr_009_6959:
    cp $9f
    jr z, jr_009_696f

    cp $f0
    jr z, jr_009_696f

    cp $00
    jr z, jr_009_696f

    cp [hl]
    inc hl
    inc de
    jr nz, jr_009_697c

    dec b
    jr nz, jr_009_6958

jr_009_696d:
    scf
    ret


jr_009_696f:
    ld a, [hl]
    cp $9f
    jr z, jr_009_696d

    cp $f0
    jr z, jr_009_696d

    cp $00
    jr z, jr_009_696d

jr_009_697c:
    inc c
    ld a, c
    cp $14
    jr nz, jr_009_692c

jr_009_6982:
    scf
    ccf
    ret

    db $34, $55, $42, $8e, $9f, $9f, $9f, $9f, $34, $55, $42, $8e, $2d, $9f, $9f, $9f
    db $34, $55, $34, $55, $9f, $9f, $9f, $9f, $28, $43, $55, $2d, $9f, $9f, $9f, $9f
    db $43, $55, $2d, $9f, $9f, $9f, $9f, $9f, $28, $46, $2d, $9f, $9f, $9f, $9f, $9f
    db $31, $36, $2b, $30, $9f, $9f, $9f, $9f, $68, $6d, $62, $67, $9f, $9f, $9f, $9f
    db $26, $55, $2d, $9f, $9f, $9f, $9f, $9f, $2a, $55, $33, $43, $9f, $9f, $9f, $9f
    db $62, $9f, $9f, $9f, $9f, $9f, $9f, $9f, $62, $62, $9f, $9f, $9f, $9f, $9f, $9f
    db $62, $62, $62, $9f, $9f, $9f, $9f, $9f, $62, $62, $62, $62, $9f, $9f, $9f, $9f
    db $ff
    

Call_009_69f6:
    ld a, [wOPTN_and_Item_selection]
    ld c, $11
    call Call_000_1dbe
    ld a, [wMenu_selection]
    add l
    ld de, $6607
    ld c, a
    bit 7, a
    jr nz, jr_009_6a1a

    ld a, [wCursorBlinkTimer]
    and $0f
    push af
    ld a, [wCursorBlinkTimer]
    inc a
    ld [wCursorBlinkTimer], a
    pop af
    ld a, c
    ret nz

jr_009_6a1a:
    ld c, a
    ld b, $00

Jump_009_6a1d:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    and $7f
    cp b
    ld a, $e0
    jr nz, jr_009_6a4d

    ld a, $a0
    bit 7, c
    jr nz, jr_009_6a4d

    ld a, [wCursorBlinkTimer]
    bit 4, a
    ld a, $e0
    jr nz, jr_009_6a4d

    ld a, $a0

jr_009_6a4d:
    ldh [$d7], a
    ld a, b
    cp $41
    jr z, jr_009_6a7f

    cp $42
    jr z, jr_009_6a7f

    cp $43
    jr z, jr_009_6a7f

    cp $52
    jr z, jr_009_6a7f

    cp $53
    jr z, jr_009_6a7f

    cp $54
    jr z, jr_009_6a7f

    call Call_009_6a96
    ld a, b
    cp $40
    jr z, jr_009_6a76

    cp $51
    jr z, jr_009_6a79

    jr jr_009_6a7f

jr_009_6a76:
    call Call_009_6a83

jr_009_6a79:
    call Call_009_6a83
    call Call_009_6a83

jr_009_6a7f:
    inc b
    jp Jump_009_6a1d


Call_009_6a83:
    push af
    ld hl, $ffd5
    inc [hl]
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    pop af

Call_009_6a96:
    ldh a, [$d7]
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    ret


Call_009_6aad:
    ld hl, $c0c8
    ld b, $08
    ld c, $00

jr_009_6ab4:
    ld a, [hl+]
    dec b
    ret z

    inc de
    cp $8d
    jr z, jr_009_6ab4

    cp $8e
    jr z, jr_009_6ab4

    cp $9f
    jr z, jr_009_6ab4

    inc c
    jr jr_009_6ab4

    ret


Call_009_6ac8:
    call Call_009_6aad
    ld de, $6b06
    ld b, $00

jr_009_6ad0:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    and l
    cp $ff
    ret z

    ld a, l
    ldh [$d5], a
    ld a, h
    ldh [$d6], a
    push de
    push bc
    call Call_009_4076
    pop bc
    pop de
    ld a, c
    cp b
    ld a, $e0
    jr nz, jr_009_6aef

    ld a, $a0

jr_009_6aef:
    call Write_gfx_tile
    push af
    ldh a, [$d5]
    ld l, a
    ldh a, [$d6]
    ld h, a
    ld a, l
    add $00
    ld l, a
    ld a, h
    adc $c5
    ld h, a
    pop af
    ld [hl], a
    inc b
    jr jr_009_6ad0

    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, e
    nop
    rst $38
    rst $38
    nop
    cpl
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $3140
    ld b, b
    ld sp, $2f01
    ld [bc], a
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    cpl
    ld b, $2f
    rlca
    cpl
    ld [$092f], sp
    cpl
    ld a, [bc]
    cpl
    dec bc
    cpl
    inc c
    cpl
    dec c
    cpl
    ld c, $2f
    rrca
    cpl
    db $10
    cpl
    nop
    jr c, @+$03

    jr c, jr_009_6b57

    jr c, @+$05

jr_009_6b57:
    jr c, jr_009_6b5d

    jr c, @+$07

    jr c, jr_009_6b63

jr_009_6b5d:
    jr c, @+$09

    jr c, jr_009_6b69

    jr c, @+$0b

jr_009_6b63:
    jr c, jr_009_6b6f

    jr c, @+$0d

    jr c, jr_009_6b75

jr_009_6b69:
    jr c, @+$0f

    jr c, jr_009_6b7b

    jr c, @+$11

jr_009_6b6f:
    jr c, jr_009_6b81

    jr c, @+$13

    jr c, jr_009_6b87

jr_009_6b75:
    jr c, @+$15

    jr c, jr_009_6b8d

    jr c, @+$17

jr_009_6b7b:
    jr c, jr_009_6b93

    jr c, @+$19

    jr c, jr_009_6b99

jr_009_6b81:
    jr c, @+$1b

    jr c, jr_009_6b9f

    jr c, @+$1d

jr_009_6b87:
    jr c, jr_009_6ba5

    jr c, @+$1f

    jr c, jr_009_6bab

jr_009_6b8d:
    jr c, @+$21

    jr c, jr_009_6bb1

    jr c, @+$23

jr_009_6b93:
    jr c, jr_009_6bb7

    jr c, @+$25

    jr c, jr_009_6bbd

jr_009_6b99:
    jr c, @+$27

    jr c, jr_009_6bc3

    jr c, @+$29

jr_009_6b9f:
    jr c, jr_009_6bc9

    jr c, @+$2b

    jr c, jr_009_6bcf

jr_009_6ba5:
    jr c, @+$2d

    jr c, jr_009_6bd5

    jr c, @+$2f

jr_009_6bab:
    jr c, jr_009_6bdb

    jr c, @+$31

    jr c, jr_009_6be1

jr_009_6bb1:
    jr c, @+$33

    jr c, jr_009_6be7

    jr c, jr_009_6bea

jr_009_6bb7:
    jr c, @+$36

    jr c, jr_009_6bf0

    jr c, jr_009_6bf3

jr_009_6bbd:
    jr c, jr_009_6bf6

    jr c, jr_009_6bf9

    jr c, jr_009_6bfc

jr_009_6bc3:
    jr c, jr_009_6bff

    jr c, jr_009_6c02

    jr c, jr_009_6c05

jr_009_6bc9:
    jr c, jr_009_6c08

    jr c, jr_009_6c0b

    jr c, jr_009_6c0e

jr_009_6bcf:
    jr c, @+$42

    jr c, jr_009_6c14

    jr c, jr_009_6c17

jr_009_6bd5:
    jr c, jr_009_6c1a

    jr c, @+$46

    jr c, jr_009_6c20

jr_009_6bdb:
    jr c, @+$48

    jr c, jr_009_6c26

    jr c, jr_009_6be1

jr_009_6be1:
    add hl, sp
    ld bc, $0239
    add hl, sp
    inc bc

jr_009_6be7:
    add hl, sp
    inc b
    add hl, sp

jr_009_6bea:
    dec b
    add hl, sp
    ld b, $39
    rlca
    add hl, sp

jr_009_6bf0:
    ld [$0939], sp

jr_009_6bf3:
    add hl, sp
    ld a, [bc]
    add hl, sp

jr_009_6bf6:
    dec bc
    add hl, sp
    inc c

jr_009_6bf9:
    add hl, sp
    dec c
    add hl, sp

jr_009_6bfc:
    ld c, $39
    rrca

jr_009_6bff:
    add hl, sp
    db $10
    add hl, sp

jr_009_6c02:
    ld de, $1239

jr_009_6c05:
    add hl, sp
    inc de
    add hl, sp

jr_009_6c08:
    inc d
    add hl, sp
    dec d

jr_009_6c0b:
    add hl, sp
    ld d, $39

jr_009_6c0e:
    rla
    add hl, sp
    jr jr_009_6c4b

    add hl, de
    add hl, sp

jr_009_6c14:
    ld a, [de]
    add hl, sp
    dec de

jr_009_6c17:
    add hl, sp
    inc e
    add hl, sp

jr_009_6c1a:
    dec e
    add hl, sp
    ld e, $39
    rra
    add hl, sp

jr_009_6c20:
    jr nz, jr_009_6c5b

    ld hl, $2239
    add hl, sp

jr_009_6c26:
    inc hl
    add hl, sp
    inc h
    add hl, sp
    dec h
    add hl, sp
    ld h, $39
    daa
    add hl, sp
    jr z, jr_009_6c6b

    add hl, hl
    add hl, sp
    ld a, [hl+]
    add hl, sp
    dec hl
    add hl, sp
    inc l
    add hl, sp
    dec l
    add hl, sp
    ld l, $39
    cpl
    add hl, sp
    jr nc, jr_009_6c7b

    ld sp, $3239
    add hl, sp
    inc sp
    add hl, sp
    inc [hl]
    add hl, sp
    dec [hl]

jr_009_6c4b:
    add hl, sp
    ld [hl], $39
    scf
    add hl, sp
    jr c, jr_009_6c8b

    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    dec sp
    add hl, sp
    inc a
    add hl, sp
    dec a

jr_009_6c5b:
    add hl, sp
    ld a, $39
    ccf
    add hl, sp
    ld b, b
    add hl, sp
    ld b, c
    add hl, sp
    ld b, d
    add hl, sp
    ld b, e
    add hl, sp
    ld b, h
    add hl, sp
    ld b, l

jr_009_6c6b:
    add hl, sp
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc bc
    ld a, [hl-]
    inc b
    ld a, [hl-]
    dec b

jr_009_6c7b:
    ld a, [hl-]
    ld b, $3a
    rlca
    ld a, [hl-]
    ld [$093a], sp
    ld a, [hl-]
    ld a, [bc]
    ld a, [hl-]
    dec bc
    ld a, [hl-]
    inc c
    ld a, [hl-]
    dec c

jr_009_6c8b:
    ld a, [hl-]
    ld c, $3a
    rrca
    ld a, [hl-]
    db $10
    ld a, [hl-]
    ld de, $123a
    ld a, [hl-]
    inc de
    ld a, [hl-]
    inc d
    ld a, [hl-]
    dec d
    ld a, [hl-]
    ld d, $3a
    rla
    ld a, [hl-]
    jr jr_009_6cdc

    add hl, de
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    dec de
    ld a, [hl-]
    inc e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld e, $3a
    rra
    ld a, [hl-]
    jr nz, jr_009_6cec

    ld hl, $223a
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc h
    ld a, [hl-]
    dec h
    ld a, [hl-]
    ld h, $3a
    daa
    ld a, [hl-]
    jr z, jr_009_6cfc

    add hl, hl
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    dec hl
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec l
    ld a, [hl-]
    ld l, $3a
    cpl
    ld a, [hl-]
    jr nc, jr_009_6d0c

    ld sp, $323a
    ld a, [hl-]
    inc sp
    ld a, [hl-]
    inc [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]

jr_009_6cdc:
    ld [hl], $3a
    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28

jr_009_6cec:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $38
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_009_6cfc:
    ld a, $3f
    ld b, b
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    rst $38
    ret c

    cp $e0

jr_009_6d0c:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $41
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $4a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $53
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $5c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $65
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $6e
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $ff
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $77
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $b0
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
    ret nz

    pop bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $c2
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $ffd3

    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    ld sp, $e032
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    sbc l
    sbc h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    xor b
    and a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    xor d
    call nc, $e0e0
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub $d5
    sbc $de
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    push de
    xor e
    and l
    xor c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    add c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    ei
    ret c

    cp $e0
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    db $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e5], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    ld bc, $effa
    rst $28
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
    sbc l
    sbc h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    adc b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    push de
    and a
    xor b
    xor c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    xor d
    xor e
    xor h
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld l, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld l, h
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $dd
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld b, [hl]
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $a0
    and c
    and d
    and e
    ldh [$dd], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub d
    sbc b
    sbc h
    db $e3
    ldh [$9c], a
    sub e
    sub e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    db $e3
    sub l
    sub c
    sub [hl]
    ldh [$9a], a
    db $e3
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub c
    sub h
    push de
    sub c
    sub [hl]
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub $d5
    db $e3
    sub b
    sbc b
    sub b
    sbc c
    push de
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub $97
    push de
    push de
    db $e3
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    push de
    and d
    sub l
    sbc c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add h
    add l
    add [hl]
    add a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc b
    adc c
    adc d
    adc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    dec c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub l
    sbc l
    sub e
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc h
    sub [hl]
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $9e
    sub b
    sub $99
    push de
    sbc b
    db $e4
    and b
    and c
    and d
    and e
    ldh [$e0], a
    ldh [$e4], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $da
    and h
    and l
    and [hl]
    and a
    ldh [$db], a
    xor b
    xor c
    xor d
    xor e
    ldh [$dc], a
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    ret c

    cp $e0
    sbc a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    db $e4
    ldh [$e0], a
    ldh [$e0], a
    sbc a
    db $e4
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $84
    ldh [$80], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $85
    ldh [$81], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $86
    ldh [$82], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $87
    ldh [$83], a
    ldh [$91], a
    sub a
    sub b
    sub $d6
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    adc d
    sbc b
    push de
    push de
    sub d
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub h
    sub b
    sbc c
    sub c
    sub h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sbc e
    sub h
    sbc h
    ldh [rIE], a
    ret c

    db $ec
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $ed
    ret c

    cp $e0
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    add hl, bc
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    xor c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld c, c
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    ld b, b
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$e0], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    and b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    and c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    and d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    and e
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    push de
    rst $18
    sbc a
    sbc $e0
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    sbc $d5
    sub $d6
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    push de
    and l
    and c
    and e
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    sbc e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sbc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc [hl]
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor b
    xor c
    xor d
    xor e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    xor h
    xor l
    xor [hl]
    xor a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    add b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ldh [$9e], a
    sbc a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$a0], a
    and c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $63
    ldh [$9e], a
    sbc a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $63
    ldh [$a0], a
    and c
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    add a
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    adc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    adc l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    adc [hl]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $fd
    reti


    inc c
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub l
    sbc l
    sub e
    sbc h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc h
    sub [hl]
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    and c
    and a
    xor c
    and h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and h
    and d
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld c, $01
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
    sbc l
    sbc h
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld [$fa00], sp
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ret c

    inc b
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_009_7b0f

    ld a, [de]
    dec de
    inc e
    nop
    dec b
    ret c

    inc b
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c

jr_009_7b0f:
    dec b
    ret c

    inc b
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ret c

    inc b
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld de, $0000
    dec e
    ld e, $1f
    jr nz, jr_009_7b56

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec b
    ret c

    inc b
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ret c

    inc b
    sbc [hl]
    sbc a
    and b
    and c
    and d

jr_009_7b56:
    and e
    nop
    nop
    nop
    ld h, $27
    jr z, jr_009_7b87

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $05
    ret c

    inc b
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    dec b
    ret c

    inc b
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    nop
    nop
    nop
    cpl
    jr nc, jr_009_7bb8

jr_009_7b87:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec b
    ret c

    inc b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    jr c, jr_009_7bd4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec b
    ret c

    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    dec b

jr_009_7bb8:
    ret c

    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ret c

    inc b
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_009_7bd4:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    dec b
    ret c

    inc b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec b
    ret c

    inc b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
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
    dec b
    ret c

    inc b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec b
    ret c

    inc b
    ld l, [hl]
    ld l, a
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
    dec b
    ret c

    ld b, $07
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub l
    sbc l
    sub e
    sbc h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    sbc h
    sub [hl]
    ldh [$e0], a
    rst $38
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $fd
    reti


    nop
    ld bc, $effa
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    sub l
    sbc l
    sub e
    sbc h
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $e0
    sbc h
    sub [hl]
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    ld h, $00
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $e0
    nop
    ld bc, $0302
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee

jr_009_7cc9:
    db $fd
    reti


    and b
    nop
    ld a, [$efef]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $24
    dec h
    ld h, $27
    jr z, jr_009_7cc9

    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ldh [$e0], a
    sub c
    sub d
    sub e
    sub h
    sub l
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ldh [rSCX], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ldh [$e0], a
    ld c, c
    ld c, e
    ld c, l
    adc l
    adc [hl]
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $2e
    cpl
    jr nc, jr_009_7d6c

    ld [hl-], a
    ldh [rOBP0], a
    ldh [rWY], a
    ldh [$4c], a
    ldh [$e0], a
    ld h, b
    ld l, d
    ld h, b

jr_009_7d47:
    ld [hl], b
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $33
    inc [hl]
    dec [hl]
    scf
    jr c, jr_009_7d47

    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_009_7d6c:
    ldh [$e0], a
    ld b, a
    sbc b
    ld d, b
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ldh [rHDMA3], a
    ld d, h
    ld d, l
    ld [hl], $9c
    ldh [$e0], a
    jr z, jr_009_7ded

    ld d, b
    ldh [$e0], a
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    and b
    nop
    ld a, [$efef]
    rst $28

jr_009_7dcf:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ret c

    cp $24
    dec h
    ld h, $27
    jr z, jr_009_7e10

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_009_7ded:
    jr nc, jr_009_7dcf

    inc b
    dec b
    ld b, $07
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $31
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_009_7e10:
    ld [hl], $37
    jr c, jr_009_7e4d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ldh [$08], a
    add hl, bc
    ld a, [bc]
    dec bc
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $3e
    ccf
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
    ldh [$0c], a
    dec c
    ld h, e
    ld h, h
    rst $38
    ret c

    cp $e0
    ldh [$e0], a

jr_009_7e4d:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $4b
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ldh [rNR51], a
    inc h
    ld h, $2e
    rst $38
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    cp $5c
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr z, jr_009_7eca

    daa
    ldh [rIE], a
    ret c

    cp $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ret c

    db $fc
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    db $fd
    reti


    nop
    nop
    nop

jr_009_7eca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
