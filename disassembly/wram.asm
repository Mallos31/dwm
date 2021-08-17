section "WRAM Bank0", wram0[$c000]

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

wRamStart::
  ds $8DA
  
;Currently selected option in menu.
;Menues known to use this byte: Battle, Main, Buy/Sell/Exit, 
;0 = FIGHT or INFO
;1 = PLAN or ITEM
;2 = ITEM or SKIL
;3 = RUN or OPTN 
wMenu_selection::
  ds 1 ;c8da

;byte responsible for the currently selected option in the OPTN menu. Also used by the item menu in battle.   
wOPTN_and_Item_selection::
  ds 1 ;c8db  
  
wPLAN_selection::
  ds 1 ;c8dc
  
wRamUnk1::
  ds $E ;c8dd

;used to determine current state of the game
;00 = normal
;01 = text box open
;02 = main menu open
;04 = unknown. Causes monsters to group up under Terry
;08 = Map open 
;10 = Shop menu open
;20 = Warping
;40 = Entering Battle
;80 = unknown. Blank screen with YES NO when forced.
wGameState::
  ds 1	;c8eb
  
wRamUnk2::
  ds $21

wCursorBlinkTimer::
  ds 1 ;c90c
  
wRamUnk3::
  ds $13F 
  
;current gold held by Terry. In order Lo Mid Hi maxes out at 9F8601 which reversed is 01869F or 99,999 in decimal  
wCurrGold::
  ds 3 ;ca4b-ca4d  


  
wRamRest::
  ds $5B0