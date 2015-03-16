;--------------------------------------
;Homebrewed Functionality - Use AppsKey
;--------------------------------------

; AppsKey & Up:: Wheel up

; AppsKey & Down:: Wheel down

; AppsKey & Left:: Beginning of line

; AppsKey & Right:: End of line

; AppsKey & a::	Queuing Paste (a)nnex

; AppsKey & b::

; AppsKey & c:: Incremented (C)opy

; AppsKey & d::

; AppsKey & e:: (E)ncompass Paste	

; AppsKey & f:: 

; AppsKey & g:: Encompass Copy (G)rap

; AppsKey & h::

; AppsKey & i:: (I)dea Saver

; AppsKey & j::

; AppsKey & k:: 

; AppsKey & l:: Highlight line

; AppsKey & m::

; AppsKey & n::

; AppsKey & o:: Make Current Window Transparent (o)paque

AppsKey & p:: ; <-- Persisting Copy (persist)
        if(!GetKeyState("Shift","p"))
        {   ; If Shift not pressed, Copy
            data := copySelectedData()          ; Get selected text
                                                ; Set where to persist text
            fileName = \\cratus\students\JMBolen2017\persistantCopyPaste.txt    
            fileDeletion(fileName)              ; Delete old text
            fileWriter(data,fileName)           ; Persist new text
        }
        else
        {   ; If Shift pressed, Paste
            data := copySelectedData()          ; Get selected text
                                                ; Set where to persist text
            fileName = \\cratus\students\JMBolen2017\persistantCopyPaste.txt    
            fileDeletion(fileName)              ; Delete old text
            fileWriter(data,fileName)           ; Persist new text
        }
        return

; AppsKey & q:: (Q)ueuing Copy

; AppsKey & r:: 

; AppsKey & s:: Persisting Paste (s)alvage

; Appskey & t:: Always On (T)op

; AppsKey & u::
 
; AppsKey & v:: Incremented Paste

; AppsKey & w:: 

; AppsKey & x:: 

; AppsKey & y:: 

; AppsKey & z::

AppsKey & ,:: ; <--Official Email
	data = bmbolen2017@spartans.manchester.edu
    pasteData(data)
    return

AppsKey & .:: ; <--Personal Email 
	data = 1123benji5813@gmail.com
    pasteData(data)
    return  

AppsKey & /:: ; <--Username
	data = bmbolen2017
    pasteData(data)
    return

AppsKey & ':: ; <--Username
	data = bbolen@muspartans
    pasteData(data)
    return
     
AppsKey & [:: ; <--Gamer Tag 
	data = NonlinearFruit
    pasteData(data)
    return   

; AppsKey & ]::

; AppsKey & \::

; AppsKey & -:: Date

; AppsKey & =:: Time 

; AppsKey & F1::

; AppsKey & F2:: ; <-- next bookmark related

; AppsKey & F3:: ; <-- find next related

; AppsKey & F4:: ; <-- next result related

; AppsKey & F5::

; AppsKey & F6:: ; <-- spell check related

; AppsKey & F7:: ; <-- build related

; AppsKey & F8::

; AppsKey & F9:: ; <-- sort lines related

; AppsKey & F10::

; AppsKey & F11:: ; <-- fullscreen related

; AppsKey & F12:: ; <-- break build related

