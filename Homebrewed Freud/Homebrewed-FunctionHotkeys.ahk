;--------------------------------------
;Homebrewed Functionality - Use CapsLock
;--------------------------------------

; GotoUP: Wheel up

; GotoDOWN: Wheel down

; GotoLEFT: Beginning of line

; GotoRIGHT: End of line

; GotoA: Queuing Paste (a)nnex

; GotoB:

; GotoC: Incremented (C)opy

; GotoD:

; GotoE: (E)ncompass Paste	

; GotoF: 

; GotoG: Encompass Copy (G)rap

; GotoH:

; GotoI: (I)dea Saver

; GotoJ:

; GotoK: (K)eystroking Copy Paste

; GotoL: Highlight (l)ine

; GotoM:

; GotoN:

; GotoO: Make Current Window Transparent [(o)paque]

GotoP: ; <-- Persisting Copy [(p)ersist]
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

; GotoQ: (Q)ueuing Copy

; GotoR: 

; GotoS: (S)creen Saver

; GotoT: Always On (T)op

; GotoU:
 
; GotoV: Incremented Paste

; GotoW: 

; GotoX: 

; GotoY: 

; GotoZ:

GotoCOMMA: ; <--Official Email
	data = bmbolen2017@spartans.manchester.edu
    pasteData(data)
    return

GotoPERIOD: ; <--Personal Email 
	data = 1123benji5813@gmail.com
    pasteData(data)
    return  

GotoSLASH: ; <--Username
	data = bmbolen2017
    pasteData(data)
    return

GotoSC027: ; <--LaGwana Email
    data = bolen@lagwana.com
    pasteData(data)
    return
     
GotoOPENBRACKET: ; <--Gamer Tag 
	data = NonlinearFruit
    pasteData(data)
    return   

; GotoCLOSEBRACKET:

; GotoBACKSLASH:

; GotoMINUS: Date

; GotoPLUS: Time 

; GotoF1:

GotoF2: ; <--Hotkey Summarizer
    if(!A_IsCompiled)
    {
        fileDeletion("features.txt")
        ; path := "C:\Programming\AHK\Ultimates\Scripts\Ultimatev7.6\"
        path := A_ScriptDir . "\"

        fileWriter("------------------------`n","features.txt")
        fileWriter("Internet -- WinKey -- #`n","features.txt")
        fileWriter("------------------------`n","features.txt")
        file = %path%InternetHotkeys.ahk
        featureRetriever(fileReader(file))

        fileWriter("------------------------`n","features.txt")
        fileWriter("  Homebrewed Internet`n","features.txt")
        fileWriter("------------------------`n","features.txt")
        file = %path%Homebrewed %box%\Homebrewed-InternetHotkeys.ahk
        featureRetriever(fileReader(file))

        fileWriter("--------------------------`n","features.txt")
        fileWriter("Function -- CustomModifier`n","features.txt")
        fileWriter("--------------------------`n","features.txt")
        file = %path%FunctionHotkeys.ahk
        featureRetriever(fileReader(file))

        fileWriter("------------------------`n","features.txt")
        fileWriter("  Homebrewed Function`n","features.txt")
        fileWriter("------------------------`n","features.txt")
        file = %path%Homebrewed %box%\Homebrewed-FunctionHotkeys.ahk
        featureRetriever(fileReader(file))

        fileWriter("------------------------`n","features.txt")
        fileWriter("Program -- AltKey -- !`n","features.txt")
        fileWriter("------------------------`n","features.txt")
        file = %path%ProgramsHotkeys.ahk
        featureRetriever(fileReader(file))
        
        fileWriter("------------------------`n","features.txt")
        fileWriter("  Program Homebrewed`n","features.txt")
        fileWriter("------------------------`n","features.txt")
        file = %path%Homebrewed %box%\Homebrewed-ProgramsHotkeys.ahk
        featureRetriever(fileReader(file))

        Run, Notepad features.txt
    }
    return

; GotoF3: find next related

; GotoF4: next result related

; GotoF5:

; GotoF6: spell check related

; GotoF7: build related

; GotoF8:

; GotoF9: sort lines related

; GotoF10:

; GotoF11: fullscreen related

; GotoF12: break build related

