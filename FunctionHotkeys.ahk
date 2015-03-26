;---------------------------
;Functionality - Use AppsKey
;---------------------------

GotoUP: ; <-- Wheel (Up)
		if(GetKeyState("Shift","p"))
		{
			MouseClick, wheelup
		}
		else
		{
			MouseClick, wheelup
		}
		return

GotoDOWN: ; <-- Wheel (Down)
		if(GetKeyState("Shift","p"))
		{
			MouseClick, wheeldown
		}
		else
		{
			MouseClick, wheeldown
		}
		return

GotoLEFT: ; <-- Beginning of Line and Beginning of Document
		if(GetKeyState("Shift","p"))
		{
			Send {CTRL down}{Home}{CTRL up}
		}
		else
		{
			Send {Home}
		}
		return

GotoRIGHT: ; <-- End of Line and End of Document
		if(GetKeyState("Shift","p"))
		{
			Send {CTRL down}{End}{CTRL up}
		}
		else
		{
			Send {End}
		}
		return

GotoA: ; <-- Queuing Paste (a)nnex
		pasteData(qClip%qPasteIndex%)	    ; Paste next item in queue
		if (qPasteIndex==qCopyIndex)		; Keep qPaste from passing qCopy
		{
			qPasteIndex := qCopyIndex-1		; If qPaste=qCopy, qPaste--
		}
		else
		{
			qPasteIndex := Mod(qPasteIndex+1,111)	; Increment index normally
		}
		return

GotoC: ; <-- Incremented (C)opy
		; Issue with pasting before copying is done!!!
		
		incClip := copySelectedData()		; Save incClip
		StringGetPos , pos, incClip, ~		; Find pos of index
		
		tempIndex := 1				; = Length of the number we want from incClip
		Loop	; figure out length of the index number  ~1
		{
			tempDigit := SubStr(incClip, pos+2,tempIndex)	; Holds the current length of the # being tested
			tempChar := SubStr(incClip, pos+1+tempIndex,1)	; Stops the loop when this string is empty
			if (tempDigit+0 && tempChar && tempChar != " ")	; Is activated when tempDigit is a # && tempChar contains something
			{
				tempIndex := tempIndex + 1		; Take a step
			}
			else
			{
				tempIndex := tempIndex - 1		; Back up a step
				break
			}
		}
		incIndex := SubStr(incClip,pos+2,tempIndex)	; Index for incClip
		StringReplace , incClip, incClip, ~%incIndex%, ~	; Replace ~# in the incClip with ~
		return

GotoE: ; <-- (E)ncompass Paste	
		constants := copySelectedData()
		StringSplit, constantArray, constants, `,
		Loop, %constantArray0%
		{
			if(constantArray0==1)
			{
				StringReplace , encClip, encClip, ~, %constantArray1%, All	; Replace ~ with stuff
				break
			}
			temp := constantArray%a_index%
			StringReplace , encClip, encClip, ~%a_index%, %temp%, All	; Replace ~1 and ~2 and ~3 ... with stuff
		}
		pasteData(encClip)
		return

GotoG: ; <-- Encompass Copy [(G)rap]
		encClip := copySelectedData()
		return

GotoI: ; <-- (I)dea Saver
		if(GetKeyState("Shift","p"))
		{
			data := copySelectedData()
		}
		else
		{
			InputBox, data, Idea Recorder, Please enter your idea, , 200, 100
		}
		idea = *%data%`n
		fileName = ideasDocument.txt
		fileWriter(idea, fileName)
		return

GotoK: ; <--(K)eystroking Copy Paste
	if(!GetKeyState("Shift","p"))
		{ ;Copying
			Run, Notepad KeystrokeCopyPaste.txt
		}
		else
		{ ;Pasting (By typing out)
			msgbox ok
			txt := fileReader("KeystrokeCopyPaste.txt")
			Send %txt%
		}
		return

GotoL: ; <-- Highlights (L)ine
	Send {Home}{Home}{Shift down}{End}{Shift up}
	return

GotoO: ; <-- Make Current Window Transparent (Toggle-ish) [(o)paque]
	WinGet, transLevel, Transparent, A
	if (!transLevel) ; Trans Off
	{
		transLevel = 201
	}
	else if (transLevel>200){
		transLevel = 151
	}
	else if (transLevel>150){
		transLevel = 101
	}
	else if (transLevel>100){
		transLevel = 51
	}
	else
	{
		WinSet, Transparent, OFF, A
		return
	}
	WinSet, Transparent, %transLevel%, A
	return

GotoQ: ; <-- (Q)ueuing Copy
		qClip%qCopyIndex% := copySelectedData()	; Get the selected data
		qCopyIndex := Mod(qCopyIndex + 1, 111)	; Increment qCopyIndex (111 being the max of the q)
		qClip%qCopyIndex% = 					; Set next qClip to be empty
		return

GotoT: ; <-- Always On (T)op (Credit to Appskey Guy)
	WinGetTitle, TempText, A
	if(!GetKeyState("Shift","p"))
	{
	   WinSet AlwaysOnTop, On, A
	   if(SubStr(TempText, 1, 2) != "† ")
	      TempText := "† " . TempText ;chr(134)
	}
	else
	{
		WinSet AlwaysOnTop, Off, A
		if(SubStr(TempText, 1, 2) = "† ")
			TempText := SubStr(TempText, 3)
	}
	WinSetTitle, A, , %TempText%
	Return
 
GotoV: ; <-- Incremented Paste
		StringReplace , temp, incClip, ~, %incIndex%	; Replace ~ with index
		incIndex := incIndex + 1			; Increment index
		pasteData(temp)						; Pastes the incClip var with updated index
		return

GotoMINUS: ; <-- Send Date
      if(!GetKeyState("Shift","p"))
	{ ; Normal Date (w/o +)
		FormatTime, date,, MM/dd/yy
	}
	else
	{ ; Sorting Date (w/ +)
		FormatTime, date,, yy/MM/dd
	}
	pasteData(date)
	return

GotoPLUS: ; <-- Send Time 
      FormatTime, time,, h:mm tt
      pasteData(time)
      return

GotoENTER: ; <-- Jump to end of line then hit enter
	Send {End}
	Send {Enter}
	return


