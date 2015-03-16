;--------------------------
;Homebrewed 3 Letter Combos
;--------------------------

;Press "spy" to activate AHK Spy Window thing

;Run L4D, press l4d
~d::
   If GetKeyState("l","p") && GetKeyState("4","p") {
	  Run C:\Users\Nonlinear Fruit\Documents\Games\PIxelForces-Left4Dead.exe
}
return

;Tags program, press bam
;---------------------------------------------------------------------------------------------------------
~m::
	If GetKeyState("b","p") && GetKeyState("a","p") {
      Send {BS}{BS}{BS}HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH{Enter}
      Send H           |           |           |           |           |           |           |           |           H{Enter}
      Send H           |-----------|           |-----------|           |-----------|           |-----------|           H{Enter}
      Send H           |           |           |           |           |           |           |           |           H{Enter}
      Send H-----------|           |-----------|           |-----------|           |-----------|           |-----------H{Enter}
      Send H           |           |           |           |           |           |           |           |           H{Enter}
      Send HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH{Enter}{Enter}{Enter}
      Send ......N       N  OOOOOOOOO  N       N  L          IIIIIIIII  N       N  EEEEEEEEE      A      RRRRRRR  ......{Enter}
      Send ......NN      N  O       O  NN      N  L              I      NN      N  E            A   A    R      R ......{Enter}
      Send ......N N     N  O       O  N N     N  L              I      N N     N  E           A     A   R       R......{Enter}
      Send ......N  N    N  O       O  N  N    N  L              I      N  N    N  E          A       A  R      R ......{Enter}
      Send ......N   N   N  O       O  N   N   N  L              I      N   N   N  EEEEEEEEE  AAAAAAAAA  RRRRRRR  ......{Enter}
      Send ......N    N  N  O       O  N    N  N  L              I      N    N  N  E          A       A  R      R ......{Enter}
      Send ......N     N N  O       O  N     N N  L              I      N     N N  E          A       A  R       R......{Enter}
      Send ......N      NN  O       O  N      NN  L              I      N      NN  E          A       A  R       R......{Enter}
      Send ......N       N  OOOOOOOOO  N       N  LLLLLLLLL  IIIIIIIII  N       N  EEEEEEEEE  A       A  R       R......{Enter}{Enter}{Enter}
      Send ............................FFFFFFFFF  RRRRRRR    U       U  IIIIIIIII  TTTTTTTTT............................{Enter}
      Send ............................F          R      R   U       U      I          T    ............................{Enter}
      Send ............................F          R       R  U       U      I          T    ............................{Enter}
      Send ............................F          R      R   U       U      I          T    ............................{Enter}
      Send ............................FFFFFF     RRRRRRR    U       U      I          T    ............................{Enter}
      Send ............................F          R      R   U       U      I          T    ............................{Enter}
      Send ............................F          R       R  U       U      I          T    ............................{Enter}
      Send ............................F          R       R   U     U       I          T    ............................{Enter}
      Send ............................F          R       R    UUUUU    IIIIIIIII      T    ............................{Enter}{Enter}{Enter}
      Send HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH{Enter}
      Send H           |           |           |           |           |           |           |           |           H{Enter}
      Send H-----------|           |-----------|           |-----------|           |-----------|           |-----------H{Enter}
      Send H           |           |           |           |           |           |           |           |           H{Enter}
      Send H           |-----------|           |-----------|           |-----------|           |-----------|           H{Enter}
      Send H           |           |           |           |           |           |           |           |           H{Enter}
      Send HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH{Enter}
}
return 
;---------------------------------------------------------------------------------------------------------


;Print Banana, press frt
;---------------------------------------------------------------------------------------------------------
~t::
    If GetKeyState("f","p") && GetKeyState("r","p") {
      Send {BS}{BS}{BS}.                                    tsst{Enter}
      Send .                                    :toy`{Enter}
      Send .                                    ./ts.{Enter}
      Send .                                    `/ts.{Enter}
      Send .                                    .-/o/{Enter}
      Send .                                   `--/to-{Enter}
      Send .                                  ...-/too:{Enter}
      Send .                                 ....-/toot.{Enter}
      Send .                                ..``.-/ttoo-{Enter}
      Send .                               ..```.:tttot:{Enter}
      Send .                              ..```.-/ttttt-{Enter}
      Send .                             ...```.:/tttt/-{Enter}
      Send .                            ...``..-/ttttt/.{Enter}
      Send .                          `.......-//tttt//`{Enter}
      Send .                        `.......-://ttttt/-{Enter}
      Send .                     `......---:/tttttt/:`{Enter}
      Send .                    `....-----://ttttt//:`{Enter}
      Send .                 `.---------://tttttt//:`{Enter}
      Send .             `.---------://tttttttt//:`{Enter}
      Send .           `.--------::/tttttttttt//:-{Enter}
      Send .        `.-------:://ttttotttttt///-`{Enter}
      Send .     `.-------://tttttooottttt///-`{Enter}
      Send . `-------:://tttooooooooottt//:-`{Enter}
      Send . yhhttttttttooooooooootttt/:-`{Enter}
      Send . -tttooooooooooooottt//:-.{Enter}
      Send .      `.--::::::--..`{Enter} 
}
return
;---------------------------------------------------------------------------------------------------------



;Print Header, press tag
;---------------------------------------------------------------------------------------------------------
~g::
      If GetKeyState("a","p") && GetKeyState("t","p") {
            FormatTime, date,, MM/dd/yy
            Send {Backspace}{Backspace}{Backspace}
			Send {Raw}//===================================
			Send \\{Enter}||                                  ||{Enter}
			Send ||      Soli Deo Gloria             ||{Enter}
			Send || Date: %date%                   ||{Enter}
			Send || Ex Libris: Nonlinear Fruit       ||{Enter}
			Send || Purpose:                         ||{Enter}
			Send ||                                  ||{Enter}
			Send ||                                  ||{Enter}
			Send \\===================================//{Enter}
      }
      return
;---------------------------------------------------------------------------------------------------------