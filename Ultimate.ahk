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

; On Start Pop-up 
TrayTip, Ultimate, Copyright (c) 2015 by NonlinearFruit.`nAll rights reserved. Use is subject to license terms.`n`nSoli Deo Gloria`nEx Libris: Nonlinear Fruit, 10

; For the Kidos without an AppsKey, use CapsLock instead
SetCapsLockState, alwaysoff

; Choose a custom modifier for function keys 
; [Note: not alt or win and if null -> AppsKey]
modify = CapsLock
box = Freud

; Map that modifier to all of the appropriate labels
dynFunctionMapper()

/*
//===================================\\
||                                   ||
||      Soli Deo Gloria              ||
|| Date: 03/22/15                    ||
|| Ex Libris: Nonlinear Fruit        ||
|| Purpose: Increase User            ||
||          Efficiency               ||
||                                   ||
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


; Uncomment what you need
; if(box=Freud)
; {
	#Include Homebrewed Freud\Homebrewed-CombinationKeys.ahk
	#Include Homebrewed Freud\Homebrewed-InternetHotkeys.ahk
	#Include Homebrewed Freud\Homebrewed-FunctionHotkeys.ahk
	#Include Homebrewed Freud\Homebrewed-ProgramsHotkeys.ahk
; }
; else if(box=Mordecai)
; {
; 	; Map modifier to AppsKey for FunctionHotkeys
; 	; [NOTE: Can't be Alt or Win]
; 	CapsLock::AppsKey
; 
; 	#Include Homebrewed Mordecai\Homebrewed-CombinationKeys.ahk
; 	#Include Homebrewed Mordecai\Homebrewed-InternetHotkeys.ahk
; 	#Include Homebrewed Mordecai\Homebrewed-FunctionHotkeys.ahk
; 	#Include Homebrewed Mordecai\Homebrewed-ProgramsHotkeys.ahk
; }
; else if(box=Laptop)
; {
	; #Include Homebrewed Laptop\Homebrewed-CombinationKeys.ahk
	; #Include Homebrewed Laptop\Homebrewed-InternetHotkeys.ahk
	; #Include Homebrewed Laptop\Homebrewed-FunctionHotkeys.ahk
	; #Include Homebrewed Laptop\Homebrewed-ProgramsHotkeys.ahk
; }
; else if(box=MU)
; {
; 	#Include Homebrewed MU\Homebrewed-CombinationKeys.ahk
; 	#Include Homebrewed MU\Homebrewed-InternetHotkeys.ahk
; 	#Include Homebrewed MU\Homebrewed-FunctionHotkeys.ahk
; 	#Include Homebrewed MU\Homebrewed-ProgramsHotkeys.ahk
; }


; Copyright (c) 2015 NonlinearFruit

; Permission is hereby granted, free of charge, to any person 
; obtaining a copy of this software and associated documentation 
; files (the "Software"), to deal in the Software without 
; restriction, including without limitation the rights to use, 
; copy, modify, merge, publish, distribute, sublicense, and/or 
; sell copies of the Software, and to permit persons to whom the 
; Software is furnished to do so, subject to the following 
; conditions:

; The above copyright notice and this permission notice shall be 
; included in all copies or substantial portions of the Software.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
; DEALINGS IN THE SOFTWARE.
