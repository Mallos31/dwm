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
  
hff93::
  ds 1 ;FF93
  
hff94::
  ds 1 ;FF94  
  
hPlayer_ypos::
  ds 1 ;FF95
  