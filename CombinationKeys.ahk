;---------------
;3 Letter Combos
;---------------

;Press "spy" to activate AHK Spy Window thing
~y::
   If GetKeyState("p","p") && GetKeyState("s","p") {
      Send {Backspace}{Backspace}{Backspace}
      Run H:\AutoHotKey\AU3_Spy.exe
}
return