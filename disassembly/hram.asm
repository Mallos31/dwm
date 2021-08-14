section "HRAM", HRAM[$ff80]

; *******************************************************************
; *                                                                 *
; *             >> LABEL GUIDELINE <<                               *
; *                                                                 *
; *         ; Description of the usage of this memory address.      *
; *         ; Possible values:                                      *
; *         ; 0 = meaning 0,                                        *
; *         ; 1 = meaning 1,                                        *
; *         ; 2 = meaning 2                                         *
; *         label::                                                 *
; *           ds 1 ; address as 4 hex value                         *
; *                                                                 *
; *******************************************************************

hRamStart::
  ds $12
 
hPlayer_xpos::
  ds 1 ;FF92
  
hUnk1::
  ds 2 ;FF93-94  
  
hPlayer_ypos::
  ds 1 ;FF95  
  
hRamRest::
  ds $69 ;FF93 - FFFE