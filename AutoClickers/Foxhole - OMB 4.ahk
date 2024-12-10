#singleInstance, Force
#MaxThreadsPerHotkey 2
#Persistent

;------------------------------------------------------------;
; Foxhole OMB Hotkeys by Tommythebold                        ;
; https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide  ;
;------------------------------------------------------------;
; Keys included are:									     ;
; Spam Left Click at Location (Pulling, Building, etc)       ;
; Spam Left Click for Building (Char wont rotate)            ;
; Hold Left Click (Harvesters, Fueling, etc)                 ;
; Hold Right Click (Aim, Zoom, Rotate Crane)                 ;
; Hold W (Drive Forward)                                     ;
; Hold S (Drive Backwards)                                   ;
; Press E (Border Cross)                                     ;
; Press Z (Switch Seat)                                      ;
; Exit Program                                               ;
; All hotkeys work while tabbed out.                         ;
;------------------------------------------------------------;
; To change keybindings, edit the SETYOURKEYHERE value.      ;
; A list of keys and modifiers can be found here:            ;
; https://www.autohotkey.com/docs/v1/lib/Send.htm#Parameters ;
; ^ = Control, + = Shift, ! = Alt, etc.                      ;
; Below is an example of a correct keybind!                  ;
; F2::                                                       ;
;------------------------------------------------------------;


; ---------------------------
; Spam Left Click at Location
; ---------------------------

SETYOURKEYHERE::
MouseGetPos, xpos, ypos
T := !T
While (T) {
	ControlClick, X%xpos% Y%ypos%, OMB 4, , Left, 1
	sleep, 100
}
return


;------------------------------;
; Spam Left Click for Building ;
;------------------------------;
SETYOURKEYHERE::
T := !T
While (T) {
	PostMessage, 0x0200, 0, cX&0xFFFF | cY<<16,, OMB 4 ; WM_MOVEMOUSE
	PostMessage, 0x201, 0, cX&0xFFFF | cY<<16,, OMB 4 ; WM_LBUTTONDOWN  
  	PostMessage, 0x202, 0, cX&0xFFFF | cY<<16,, OMB 4 ; WM_LBUTTONUP  
	sleep, 100
}
return


; ----------------
; Hold Left Click
; ----------------

SETYOURKEYHERE::
MouseGetPos, xpos, ypos
T := !T
While (T) {
	ControlClick, X%xpos% Y%ypos%, OMB 4, , Left, 1, D
}
ControlClick, X%xpos% Y%ypos%, OMB 4, , Left, 1, u
return


; -----------------
; Hold Right Click
; -----------------

SETYOURKEYHERE::
MouseGetPos, xpos, ypos
T := !T
While (T) {
	ControlClick, X%xpos% Y%ypos%, OMB 4, , Right, 1, D
}
ControlClick, X%xpos% Y%ypos%, OMB 4, , Right, 1, u
return


; -------
; Hold W
; -------

SETYOURKEYHERE::
toggle := !toggle
ControlSend,,{w down}, OMB 4
if (toggle) {
	SetTimer, PressW, 1000
}	else {
	SetTimer, PressW, Off
	ControlSend,,{w up}, OMB 4
}
return

PressW:
ControlSend,,{w down}, OMB 4
return


; -------
; Hold S
; -------

SETYOURKEYHERE::
toggle := !toggle
ControlSend,,{s down}, OMB 4
if (toggle) {
	SetTimer, PressS, 1000
}	else {
	SetTimer, PressS, Off
	ControlSend,,{s up}, OMB 4
}
return

PressS:
ControlSend,,{s down}, OMB 4
return


; ------
; Tap E
; ------

SETYOURKEYHERE::
	ControlSend,,{e},OMB 4
return


; ------
; Tap Z
; ------

SETYOURKEYHERE::
	ControlSend,,{z},OMB 4
return



; --------------
; Close Program
; --------------

SETYOURKEYHERE::ExitApp
