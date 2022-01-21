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
  ds $A0


;Main debug menu option is stored here. It is used in the calculation of vram tile offsets. LIKELY USED BY OTHER THINGS
wDebug_main_menu_option::
  ds 1 ;c0a0

wRamUnk5::
  ds $7A5
  
wJoypad_current_frame::
  ds 1 ;c846

;Current button being pressed
;00 = none
;01 = A
;02 = B
;04 = Select
;08 = Start
;10 = Right
;20 = Left
;40 = Up
;80 = Down   
wJoypad_Current::
  ds 1 ;c847
  
  
wRamUnk4::
  ds $42
  
wGameMode::
  ds 1	;c88a

wRamUnk8::
  ds $4f
  
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
  ds $20

wCursorBlinkTimer::
  ds 1 ;c90c
  
wRamUnk3::
  ds $13E 
  
;current gold held by Terry. In order Lo Mid Hi maxes out at 9F8601 which reversed is 01869F or 99,999 in decimal  
wCurrGoldLo::
  ds 1 ;ca4b

wCurrGoldMid::
  ds 1 ;ca4c

wCurrGoldHi::
  ds 1 ;ca4d
  
wca4e::
  ds 1
  
wca4f::
  ds 1
  
wca50::
  ds 1

;the 60 slots of the player's inventory.   
wInventory::
  ds 60	;ca51
  
  
section "WRAM Bank1", wramx[$D000], bank[1]

wram1Start::
  ds 1  