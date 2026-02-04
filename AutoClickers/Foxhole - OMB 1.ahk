#singleInstance, Force
#MaxThreadsPerHotkey 2
#Persistent

;------------------------------------------------------------
; Foxhole OMB Hotkeys by Tommythebold                        
; https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide  
;------------------------------------------------------------
; Keys included are:									     
; F2 - Spam Left Click at Location                           
; F3 - Hold W                                                
; F4 - Hold S                                                
; F5 - Left Click Building
; F6 - Hold Right Click
; F7 - Hold Left Click                                                                                                              
; All hotkeys work while tabbed out.                         
;------------------------------------------------------------
; To change keybindings, edit the value before the "::".     
; A list of keys and modifiers can be found here:            
; https://www.autohotkey.com/docs/v1/lib/Send.htm#Parameters 
; ^ = Control, + = Shift, ! = Alt, etc.                      
;------------------------------------------------------------

#IfWinActive, OMB 1

; ---------------------------
; Spam Left Click at Location
; ---------------------------

F2::
SetControlDelay -1
MouseGetPos, xpos, ypos
T := !T
While (T) {
	ControlClick, X%xpos% Y%ypos%, OMB 1, , Left, 1, NA
	sleep, 50
}
return


; ----------------
; Hold Left Click
; ----------------

F7::
MouseGetPos, xpos, ypos
T := !T
While (T) {
	ControlClick, X%xpos% Y%ypos%, OMB 1, , Left, 1, D
}
ControlClick, X%xpos% Y%ypos%, OMB 1, , Left, 1, u
return

; -----------------
; Hold Right Click
; -----------------

F6::
MouseGetPos, xpos, ypos
T := !T
While (T) {
	ControlClick, X%xpos% Y%ypos%, OMB 1, , Right, 1, D
}
ControlClick, X%xpos% Y%ypos%, OMB 1, , Right, 1, u
return


; -------
; Hold W
; -------

F3::
toggle := !toggle
ControlSend,,{w down}, OMB 1
if (toggle) {
	SetTimer, PressW, 100
}	else {
	SetTimer, PressW, Off
	ControlSend,,{w up}, OMB 1
}
return

PressW:
ControlSend,,{w down}, OMB 1
return

; -------
; Hold S
; -------

F4::
toggle := !toggle
ControlSend,,{s down}, OMB 1
if (toggle) {
	SetTimer, PressS, 100
}	else {
	SetTimer, PressS, Off
	ControlSend,,{s up}, OMB 1
}
return

PressS:
ControlSend,,{s down}, OMB 1
return


;------------------------------;
; Spam Left Click for Building ;
;------------------------------;
F5::
T := !T
While (T) {
	PostMessage, 0x0200, 0, cX&0xFFFF | cY<<16,, OMB 1 ; WM_MOVEMOUSE
	PostMessage, 0x201, 0, cX&0xFFFF | cY<<16,, OMB 1 ; WM_LBUTTONDOWN  
  	PostMessage, 0x202, 0, cX&0xFFFF | cY<<16,, OMB 1 ; WM_LBUTTONUP  
	sleep, 100
}
return

