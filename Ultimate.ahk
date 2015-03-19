#NoEnv 
#SingleInstance  Force 
;#NoTrayIcon 
SetTitleMatchMode, 3 
SetWorkingDir, %A_ScriptDir% 
SplitPath, A_ScriptName, , , , MyScriptName
DetectHiddenWindows,On 
SetWinDelay, -1 
IfWinActive and IfWinExist
SetKeyDelay, -1, -1
SetMouseDelay,-1 
#MaxThreadsPerHotkey,1 
#KeyHistory 0 
SetBatchLines -1 
ListLines, Off 
SendMode Input 

; For the Kidos without an AppsKey, use CapsLock instead
SetCapsLockState, alwaysoff

; This variable stores which Computer you are using and 
; loads from the corresponding Homebrewed folders the 
; Homebrewed Hotkeys
box = Freud

/*
//===================================\\
||                                  ||
||      Soli Deo Gloria             ||
|| Date: 03/15/15                   ||
|| Ex Libris: Nonlinear Fruit       ||
|| Purpose: Increase User           ||
||          Efficiency              ||
||                                  ||
\\===================================//


;=========================================================
;The purpose of this script is to create hot keys for 
;the main things used during a typical computer session
;---------------------------------------------------------
;# = win
;! = alt
;^ = ctrl
;+ = shift
;& = link to letters (ie c & d = cd)
;< = left one of a pair of keys
;> = right one of a pair of keys
;---------------------------------------------------------
; windows hot keys will be for websites
; alt hot keys will be for programs
; ctrl is reserved for normal hot keys
;=========================================================
*/

; This contains the AES section
; and all useful functions for 
; the rest of the program
#Include UsefulFunctions.ahk
; These use #
#Include InternetHotkeys.ahk 
; These use AppsKey
#Include FunctionHotkeys.ahk
; These use !
#Include ProgramsHotkeys.ahk
; These use 3 Letter Combos
#Include CombinationKeys.ahk



; if(box=Freud)
; {
	#Include Homebrewed Freud\Homebrewed-CombinationKeys.ahk
	#Include Homebrewed Freud\Homebrewed-InternetHotkeys.ahk
	#Include Homebrewed Freud\Homebrewed-FunctionHotkeys.ahk
	#Include Homebrewed Freud\Homebrewed-ProgramsHotkeys.ahk
; }
; else if(box=Mordecai)
; {
; 	#Include Homebrewed Mordecai\Homebrewed-CombinationKeys.ahk
; 	#Include Homebrewed Mordecai\Homebrewed-InternetHotkeys.ahk
; 	#Include Homebrewed Mordecai\Homebrewed-FunctionHotkeys.ahk
; 	#Include Homebrewed Mordecai\Homebrewed-ProgramsHotkeys.ahk
; }
; else if(box=Laptop)
; {
; 	#Include Homebrewed Laptop\Homebrewed-CombinationKeys.ahk
; 	#Include Homebrewed Laptop\Homebrewed-InternetHotkeys.ahk
; 	#Include Homebrewed Laptop\Homebrewed-FunctionHotkeys.ahk
; 	#Include Homebrewed Laptop\Homebrewed-ProgramsHotkeys.ahk
; }
; else if(box=MU)
; {
; 	#Include Homebrewed MU\Homebrewed-CombinationKeys.ahk
; 	#Include Homebrewed MU\Homebrewed-InternetHotkeys.ahk
; 	#Include Homebrewed MU\Homebrewed-FunctionHotkeys.ahk
; 	#Include Homebrewed MU\Homebrewed-ProgramsHotkeys.ahk
; }