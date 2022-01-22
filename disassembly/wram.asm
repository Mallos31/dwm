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
  
  
wc848::
  ds $42
  
wGameMode::
  ds 1	;c88a

wc88b::
  ds 1

wc88c::
  ds 1

wc88d::
  ds 1

wc88e::
  ds 1

wc88f::
  ds 1

wc890::
  ds 1

wc891::
  ds 1

wc892::
  ds 1

wc893::
  ds 1

wc894::
  ds 1

wc895::
  ds 1

wc896::
  ds 1

wc897::
  ds 1

wc898::
  ds 1

wRNG1:: ;c899
  ds 1

wRNG2:: ;c89a
  ds 1

wBGPalette:: ;c89b
  ds 1

wObj1Palette:: ;c89c
  ds 1

wObj2Palette:: ;c89d
  ds 1

wTempBGPal:: ;c89e
  ds 1

wTempObj1Pal:: ;c89f
  ds 1

wTempObj2Pal:: ;c8a0
  ds 1

wc8a1::
  ds 1

wc8a2::
  ds 1

wc8a3::
  ds 1

wc8a4::
  ds 1

wc8a5::
  ds 1

wc8a6::
  ds 1

wc8a7::
  ds 1

wc8a8::
  ds 1

wc8a9::
  ds 1

wc8aa::
  ds 1

wc8ab::
  ds 1

wc8ac::
  ds 1

wc8ad::
  ds 1

wc8ae::
  ds 1

wc8af::
  ds 1

wc8b0::
  ds 1

wc8b1::
  ds 1

wc8b2::
  ds 1

wc8b3::
  ds 1

wc8b4::
  ds 1

wCurrPlayingBGM:: ;c8b5
  ds 1

wc8b6::
  ds 1

wBGM::
  ds 1 ;c8b7

wSoundEffect::
  ds 1 ;c8b8

wc8b9::
  ds $21
  
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
  
wc8dd::
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
  
wc8ec::
  ds $20

wCursorBlinkTimer::
  ds 1 ;c90c
  
wc90d::
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

;the 20 slots of the player's inventory.   
wInventory::
  ds 20	;ca51

wBankSlots::
  ds 40 ;ca65
  
  
section "WRAM Bank1", wramx[$D000], bank[1]

wram1Start::
  ds 1  