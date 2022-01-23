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
; *           db ; address as 4 hex value                           *
; *                                                                 *
; *******************************************************************

wRamStart::
  ds $A0


;Main debug menu option is stored here. It is used in the calculation of vram tile offsets. LIKELY USED BY OTHER THINGS
wDebug_main_menu_option:: db ;c0a0


    ds $7A5
  
wJoypad_current_frame:: db ;c846

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
wJoypad_Current:: db ;c847
  
    ds $42
  
wGameMode:: db	;c88a

    ds $e

wRNG1:: db ;c899
  

wRNG2:: db ;c89a
  

wBGPalette:: db ;c89b
  

wObj1Palette:: db ;c89c
  

wObj2Palette:: db ;c89d
  

wTempBGPal:: db ;c89e
  

wTempObj1Pal:: db ;c89f
  

wTempObj2Pal:: db ;c8a0
  

    ds $14

wCurrPlayingBGM:: db ;c8b5
  

wc8b6:: db

wBGM::
  db ;c8b7

wSoundEffect::
  db ;c8b8

wc8b9::
  ds $21
  
;Currently selected option in menu.
;Menues known to use this byte: Battle, Main, Buy/Sell/Exit, 
;0 = FIGHT or INFO
;1 = PLAN or ITEM
;2 = ITEM or SKIL
;3 = RUN or OPTN 
wMenu_selection:: db ;c8da

;byte responsible for the currently selected option in the OPTN menu. Also used by the item menu in battle.   
wOPTN_and_Item_selection:: db ;c8db  
  
wPLAN_selection:: db ;c8dc
  
    ds $E

;00 = normal
;01 = text box open
;02 = main menu open
;04 = Entering new area. Monsters group under terry. 
;08 = Map open 
;10 = Shop menu open
;20 = Warping
;40 = Entering Battle
;80 = unknown. Blank screen with YES NO when forced.
wGameState:: db	;c8eb
  
    ds $2

wTextSpeed:: db ;c8ee

    ds $1d

wCursorBlinkTimer:: db ;c90c
  
    ds $28

wGateID:: db ;c935

    ds $32

wMapID:: db ;c968


;Set when in a gateworld, reset when in GreatTree. 
wInGateworld:: db ;c969

    ds $d5

;00 = HP and MP
;01 = Level and Status
wMonsterInfoToggle:: db ;ca3f

    ds $b

;current gold held by Terry. In order Lo Mid Hi maxes out at 9F8601 which reversed is 01869F or 99,999 in decimal  
wCurrGoldLo:: db ;ca4b

wCurrGoldMid:: db ;ca4c

wCurrGoldHi:: db ;ca4d
  
wBankGoldLo:: db
  
wBankGoldMid:: db
  
wBankGoldHi:: db

;the 20 slots of the player's inventory.   
wInventory:: ds 20 ;ca51

wBankSlots:: ds 40 ;ca65
  
  
section "WRAM Bank1", wramx[$D000], bank[1]

wram1Start:: db  

    ds $790

wGroundItemData:: db ;d791