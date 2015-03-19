;--------------------------
;Homebrewed 3 Letter Combos
;--------------------------

;Press "spy" to activate AHK Spy Window thing


;Print Header, press tag
;---------------------------------------------------------------------------------------------------------
~g::
      If GetKeyState("a","p") && GetKeyState("t","p") {
            FormatTime, date,, MM/dd/yy
            Send {Backspace}{Backspace}{Backspace}
		Send {Raw}//===================================
		Send \\{Enter}||                                   ||{Enter}
		Send ||      Soli Deo Gloria              ||{Enter}
		Send || Date: %date%                    ||{Enter}
		Send || Ex Libris: LaGwana Printing Inc   ||{Enter}
            Send ||                                   ||{Enter}
            Send \\===================================//{Enter}
            Send {Enter}{Enter}

      }
      return
;---------------------------------------------------------------------------------------------------------
