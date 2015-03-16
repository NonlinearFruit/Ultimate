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
/*
//===================================\\
||                                  ||
||      Soli Deo Gloria             ||
|| Date: 02/09/15                   ||
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
;$ = Space Bar
;---------------------------------------------------------
; windows hot keys will be for websites
;alt hot keys will be for programs
;ctrl is reserved for normal hot keys
;=========================================================
 ______________________________________________________
|                                                      |
|     This Version 7.3 Includes Hotkeys For:           |
|   -AHK Spy                                           |
|   -AHK Turtorial                                     |
|   -BAM                                               |
|   -Calculator                                        |
|   -Command Prompt                                    |
|   -D2L                                               |
|   -Directory Chooser                                 |
|   -EZ Labor                                          |
|   -Facebook                                          |
|   -FRT                                               |
|   -Gmail                                             |
|   -Google                                            |
|   -Google Drive                                      |
|   -Google Voice                                      |
|   -H Drive                                           |
|   -Insta-Dictionary                                  |
|   -Insta-Google                                      |
|   -Insta-Google Images                               |
|   -Insta-Google Maps                                 |
|   -Insta-StackOverflow                               |
|   -Insta-Thesaurus                                   |
|   -Insta-URL                                         |
|   -Insta-Wikipedia                                   |
|   -Insta-Youtube                                     |
|   -L4D                                               |
|   -MU Email                                          |
|   -NetBeans                                          |
|   -Notepad                                           |
|   -Notepad++                                         |
|   -Project Euler                                     |
|   -Project Zomboid                                   |
|   -Project Zomboid Server                            |
|   -QuerySearcher                                     |
|   -Robocode                                          |
|   -Robocode Javadoc                                  |
|   -Spotify                                           |
|   -Sublime Text 2                                    |
|   -TAG                                               |
|   -Wolfram Alpha                                     |
|   -Youtube                                           |
|______________________________________________________|


;==========
;========
; HOW TO:
;========
;==========
; Windows plus - Result
;---------------
;            A - Opens Geogabra.org
;      SHIFT A - Searches AHK site for the text selected
;      SHIFT B - Searches BibleGateway (ESV) for the text selected
;            D - Opens D2L.com
;      SHIFT D - Searches Dictionary for the text selected
;            E - Opens ProjectEuler.net
;            F - Opens Facebook.com
;            G - Opens Google
;           		*M - Opens Gmail
;                   *D - Opens Google Drive
;                   *V - Opens Google Voice
;      SHIFT G - Searches Google for the text selected
;      SHIFT I - Searches Google Images for the text selected
;      SHIFT M - Searches Google Maps for the text selected
;            P - Opens ProjectZomboid.com
;      SHIFT Q - Opens an InputBox and entered text is searched for in the indicated search engine
;            S - Opens StumbleUpon
;      SHIFT S - Searches StackOverflow for the text selected
;      SHIFT T - Searches Thesaurus for the text selected
;            U - 
;                  *M - Opens MU email
;      SHIFT U - Treates selected text as URL and opens the corresponding website 
;            W - Opens EZ Labor
;      SHIFT W - Searches Wikipedia for the text selected
;            Y - Opens Youtube.com
;      SHIFT Y - Searches Youtube for the text selected
;         
;==========
;     Alt plus - Result
;---------------
;     UP ARROW - Play/Pauses Spotify
;   DOWN ARROW - Copies current Spotify song to clipboard
;   LEFT ARROW - Previous Song in Spotify
;  RIGHT ARROW - Next Song in Spotify
;      PAGE UP - Volume Up in Spotify
;    PAGE DOWN - Volume Down in Spotify
;          END - Mute/Unmute Spotify
;            C - Launches Calculator
;            D - Opens an InputBox and entered text is turned into a folderpath [Directory]
;                    *(Ex) 'h>prog>a>u' would open 'H:\Programming\AHK\Ultimates'
;      SHIFT D - Opens an InputBox and entered text is turned into a folderpath and that folderpath is typed-out
;            E - Opens Extra H drive [Extra Storage]
;            G - Launches Gimp
;            H - Opens the H Drive folder
;            M - Launches Spotify [Music]
;            N - [Notepads]
;           		*<!N  - Launches Notepad
;                   *<!+N - Launches Notepad++
;                   *>!N  - Launches Netbeans
;            P - Launches Command Prompt
;            R - Launches Robocode
;      SHIFT R - Lauches Robocode Javadoc
;            S - Launches Sublime Text 2
;
;==========
; Appskey plus - Result
;---------------
;
;        COMMA - Types MU Email Address
;       PERIOD - Types Gmail Address
;   APOSTROPHE - Types EZ Labor Username
;FORWARD SLASH - Types MU Username
; OPEN BRACKET - Types Nonlinear Fruit
;        MINUS - Types current date (mm/dd/yy)
;        EQUAL - Types current time (hh:mm tt)
;   DOWN ARROW - Scrolls Down
;     UP ARROW - Scrolls Up
;            A - Pastes Queued Copy [Annex]
;            B - Turns off monitor? [Black]
;            C - Copies an Incrementing Variable (~# ++ with each paste)
;            E - Pastes Encapsulated Copy around the selected text [Encapsulate]
;            G - Copies the selected text for encapsulation [Grap] (~ = Encapsulated Text)
;            I - Idea Saver (Appends Ideas to a Text File)
;            O - Makes Active Window More and More Transparent, Then Fully Opaque [Opaque]
;            P - Copies selection to file [Persist]
;      SHIFT P - Copies selection to Cratus server [Super Persist]
;            Q - Copies a Variable and puts it in a Queue [Queue] (Max 111 Items)
;            S - Pastes Persisted Copy in file [Salvage]
;      SHIFT S - Pastes Persisted Copy on server [Super Salvage]
;            T - Makes Window Always on Top [Top]
;      SHIFT T - Turns off Always on Top
;            V - Pastes Incremented Copy
;
;==========
;    Ctrl plus - Result
;---------------
; [NOTE: Native Hotkeys]
;       DELETE - Deletes the word to the right of the insertion point
;    BACKSPACE - Deletes the word to the left of the insertion point
;            A - Selects all
;            C - Copies selected object
;            S - Saves current file
;            V - Pastes Copied object
;            X - Cuts selected text
;            Z - Undoes what was just done
*/


; This contains the AES section
; and all useful functions for 
; the rest of the program
#Include UsefulFunctions.ahk
; These use #
#Include InternetHotkeys.ahk 
#Include Homebrewed-InternetHotkeys.ahk
; These use AppsKey
#Include FunctionHotkeys.ahk
#Include Homebrewed-FunctionHotkeys.ahk
; These use !
#Include ProgramsHotkeys.ahk
#Include Homebrewed-ProgramsHotkeys.ahk
; These use 3 Letter Combos
#Include CombinationKeys.ahk
#Include Homebrewed-CombinationKeys.ahk
