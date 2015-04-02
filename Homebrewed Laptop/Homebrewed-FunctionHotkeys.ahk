;--------------------------------------
;Homebrewed Functionality - Use AppsKey
;--------------------------------------

; AppsKey & Up:: Wheel up

; AppsKey & Down:: Wheel down

; AppsKey & Left:: Beginning of line

; AppsKey & Right:: End of line

; AppsKey & a::	Queuing Paste (A)nnex

; AppsKey & b::

; AppsKey & c:: Incremented (C)opy

; AppsKey & d::

; AppsKey & e:: (E)ncompass Paste	

; AppsKey & f:: 

; AppsKey & g:: Encompass Copy (G)rap

; AppsKey & h::

; AppsKey & i:: (I)dea Saver

; AppsKey & j::

; AppsKey & k:: (K)eystroking Copy Paste

; AppsKey & l:: Highlight (l)ine

; AppsKey & m::

; AppsKey & n::

; AppsKey & o:: Make Current Window Transparent [(o)paque]

; AppsKey & p:: (P)ersisting Copy
        ; if(!GetKeyState("Shift","p"))
        ; {   ; If Shift not pressed, Copy
        ;     data := copySelectedData()          ; Get selected text
        ;                                         ; Set where to persist text
        ;     fileName = \\cratus\students\JMBolen2017\persistantCopyPaste.txt    
        ;     fileDeletion(fileName)              ; Delete old text
        ;     fileWriter(data,fileName)           ; Persist new text
        ; }
        ; else
        ; {   ; If Shift pressed, Paste
        ;     data := copySelectedData()          ; Get selected text
        ;                                         ; Set where to persist text
        ;     fileName = \\cratus\students\JMBolen2017\persistantCopyPaste.txt    
        ;     fileDeletion(fileName)              ; Delete old text
        ;     fileWriter(data,fileName)           ; Persist new text
        ; }
        ; return

; AppsKey & q:: (Q)ueuing Copy

; AppsKey & r:: 

; AppsKey & s:: (S)creen Saver

; Appskey & t:: Always On (T)op

; AppsKey & u::
 
; AppsKey & v:: Incremented Paste

; AppsKey & w:: 

; AppsKey & x:: 

; AppsKey & y:: 

; AppsKey & z::

AppsKey & ,:: ; <-- Official Email
	data = bmbolen2017@spartans.manchester.edu
    pasteData(data)
    return

AppsKey & .:: ; <-- Personal Email 
	data = 1123benji5813@gmail.com
    pasteData(data)
    return  

AppsKey & /:: ; <-- Username
	data = bmbolen2017
    pasteData(data)
    return

AppsKey & ':: ; <-- Username
	data = bbolen@muspartans
    pasteData(data)
    return
     
AppsKey & [:: ; <-- Gamer Tag 
	data = NonlinearFruit
    pasteData(data)
    return   

; AppsKey & ]::

; AppsKey & \::

; AppsKey & -:: Date

; AppsKey & =:: Time 

; AppsKey & F1::

AppsKey & F2:: ; <-- Hotkey Summarizer
    fileDeletion("features.txt")
    path := "C:\Users\Nonlinear Fruit\Documents\Programming\AHK\Ultimates\Ultimate\Ultimate\"

    fileWriter("------------------------`n","features.txt")
    fileWriter("Internet -- WinKey -- #`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%InternetHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("  Homebrewed Internet`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%Homebrewed Laptop\Homebrewed-InternetHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("Function -- AppsKey`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%FunctionHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("  Homebrewed Function`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%Homebrewed Laptop\Homebrewed-FunctionHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("Program -- AltKey -- !`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%ProgramsHotkeys.ahk
    featureRetriever(fileReader(file))
    
    fileWriter("------------------------`n","features.txt")
    fileWriter("  Program Homebrewed`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%Homebrewed Laptop\Homebrewed-ProgramsHotkeys.ahk
    featureRetriever(fileReader(file))

    Run, Notepad features.txt

    return

; AppsKey & F3:: find next related

; AppsKey & F4:: next result related

; AppsKey & F5::

; AppsKey & F6:: spell check related

; AppsKey & F7:: build related

; AppsKey & F8::

; AppsKey & F9:: sort lines related

; AppsKey & F10::

; AppsKey & F11:: fullscreen related

; AppsKey & F12:: break build related

