;--------------------------------------
;Homebrewed Functionality - Use CapsLock
;--------------------------------------

; CapsLock & Up:: Wheel up

; CapsLock & Down:: Wheel down

; CapsLock & Left:: Beginning of line

; CapsLock & Right:: End of line

; CapsLock & a:: Queuing Paste (a)nnex

; CapsLock & b::

; CapsLock & c:: Incremented (C)opy

; CapsLock & d::

; CapsLock & e:: (E)ncompass Paste	

; CapsLock & f:: 

; CapsLock & g:: Encompass Copy (G)rap

; CapsLock & h::

; CapsLock & i:: (I)dea Saver

; CapsLock & j::

; CapsLock & k:: (K)eystroking Copy Paste

; CapsLock & l:: Highlight (l)ine

; CapsLock & m::

; CapsLock & n::

; CapsLock & o:: Make Current Window Transparent [(o)paque]

CapsLock & p:: ; <-- Persisting Copy [(p)ersist]
        if(!GetKeyState("Shift","p"))
        {   ; If Shift not pressed, Copy
            data := copySelectedData()          ; Get selected text
                                                ; Set where to persist text
            fileName = C:\Programming\AHK\Ultimates\Scripts\Ultimatev7.6\persistantCopyPaste.txt    
            fileDeletion(fileName)              ; Delete old text
            fileWriter(data,fileName)           ; Persist new text
        }
        else
        {   ; If Shift pressed, Paste
            data := copySelectedData()          ; Get selected text
                                                ; Set where to persist text
            fileName = C:\Programming\AHK\Ultimates\Scripts\Ultimatev7.6\persistantCopyPaste.txt    
            fileDeletion(fileName)              ; Delete old text
            fileWriter(data,fileName)           ; Persist new text
        }
        return

; CapsLock & q:: (Q)ueuing Copy

; CapsLock & r:: 

; CapsLock & s:: Persisting Paste (s)alvage

; CapsLock & t:: Always On (T)op

; CapsLock & u::
 
; CapsLock & v:: Incremented Paste

; CapsLock & w:: 

; CapsLock & x:: 

; CapsLock & y:: 

; CapsLock & z::

CapsLock & ,:: ; <--Official Email
	data = bmbolen2017@spartans.manchester.edu
    pasteData(data)
    return

CapsLock & .:: ; <--Personal Email 
	data = 1123benji5813@gmail.com
    pasteData(data)
    return  

CapsLock & /:: ; <--Username
	data = bmbolen2017
    pasteData(data)
    return

CapsLock & SC027:: ; <--LaGwana Email
    data = bolen@lagwana.com
    pasteData(data)
    return
     
CapsLock & [:: ; <--Gamer Tag 
	data = NonlinearFruit
    pasteData(data)
    return   

; CapsLock & ]::

; CapsLock & \::

; CapsLock & -:: Date

; CapsLock & =:: Time 

; CapsLock & F1::

CapsLock & F2:: ; <--Hotkey Summarizer
    fileDeletion("features.txt")
    path := "C:\Programming\AHK\Ultimates\Scripts\Ultimatev7.6\"

    fileWriter("------------------------`n","features.txt")
    fileWriter("Internet -- WinKey -- #`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%InternetHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("  Homebrewed Internet`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%Homebrewed-InternetHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("Function -- CapsLock`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%FunctionHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("  Homebrewed Function`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%Homebrewed-FunctionHotkeys.ahk
    featureRetriever(fileReader(file))

    fileWriter("------------------------`n","features.txt")
    fileWriter("Program -- AltKey -- !`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%ProgramsHotkeys.ahk
    featureRetriever(fileReader(file))
    
    fileWriter("------------------------`n","features.txt")
    fileWriter("  Program Homebrewed`n","features.txt")
    fileWriter("------------------------`n","features.txt")
    file = %path%Homebrewed-ProgramsHotkeys.ahk
    featureRetriever(fileReader(file))

    Run, Notepad features.txt

    return

; CapsLock & F3:: find next related

; CapsLock & F4:: next result related

; CapsLock & F5::

; CapsLock & F6:: spell check related

; CapsLock & F7:: build related

; CapsLock & F8::

; CapsLock & F9:: sort lines related

; CapsLock & F10::

; CapsLock & F11:: fullscreen related

; CapsLock & F12:: break build related

