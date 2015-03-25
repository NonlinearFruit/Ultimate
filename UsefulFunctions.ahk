;----------------------------
;Auto-Executing Section (AES)
;----------------------------

incCopyPasteGlobals()
encCopyPasteGlobals()
qCopyPasteGlobals()

;---------
;Functions
;---------


; This will write info to the fileName (fileName can contain abs path)
fileWriter(info, fileName)
{
	FileAppend , %info%, %fileName%
	return
}

; This returns the contrents of a file inside a string
fileReader(fileName)
{
	FileRead, str, %fileName%
	return str
}

; This deletes the specified file
fileDeletion(fileName)
{
	FileDelete, %fileName%
	return
}

; Copies the selected text and returns it, without changing Clipboard
copySelectedData()
{
	old = %clipboard% 
	Sleep 10
	Send ^c
	Sleep 100
	data = %clipboard%
	clipboard = %old%
	return data
}

; Pastes data, without changing Clipboard
pasteData(data)
{
	old = %clipboard% 
	clipboard = %data%
	Sleep 100
	Send ^v
	Sleep 100
	clipboard = %old%
	return
}

; Generates and Returns a random integer between [lower, upper]
rand(lower, upper)
{
	Random num, lower, upper
	return num
}

; This creates global variables for the Increment Copy and Paste
incCopyPasteGlobals()
{
	global
	incClip = 		; Increment Clipboard
	incIndex := 0	; Index to track the Increment value
	return
}

encCopyPasteGlobals()
{
	global
	encClip = 		; Encompass Clipboard
}

; This creates global variables for the Queue Copy Paste
qCopyPasteGlobals()
{
	global
	qCopyIndex := 0		; Index for storing the copies
	qPasteIndex := 0	; Index for retrieving the copies
	qClip%qPasteIndex% = 			; Queue Clipboard
	return
}

; Takes the Hotkeys and their Comments and puts them in the features.txt
featureRetriever(str)
{
	needle := ":: `; <--"
	colons := InStr(str,needle)
	labrat := SubStr(str, 1, colons-1)
	str := SubStr(str,colons+StrLen(needle))
	if(colons=0)
	{
		return
	}
	j := 0
	Loop
	{
		len := StrLen(labrat)
		j := j+1
		i := len-j+1

		temp := SubStr(labrat, i, j)

		if(InStr(temp, "#")!=0)
		{
			hk := temp
			break
		}
		if(InStr(temp, "!")!=0)
		{
			hk := temp
			break
		}
		if(InStr(temp, "AppsKey")!=0)
		{
			hk := temp
			break
		}
		if(i=1)
		{
			break
		}
	}

	posOfEnter := InStr(str, "`n")
	if(posOfEnter!=0)
	{
		temp := SubStr(str, 1, posOfEnter)
		doc := temp
	}

	txt = %hk%    --    %doc%`n
	fileWriter(txt,"features.txt")
	featureRetriever(str)
	return
}

; Take the given modifier and maps 
; the function hotkeys w/ that modifier 
; tt the correct labels
dynFunctionMapper(modify)
{
	; MsgBox, , Title, %modify%

	; ToDo
	; Map modify plus letters to 
	; labels (and make the labels)

	if(IsLabel(GotoUP))
	{
		key := " & up"
		Hotkey, %modify%.%key%, GotoUP
	}

	if(IsLabel(GotoDOWN))
	{
		key := " & down"
		Hotkey, %modify%.%key%, GotoDOWN
	}

	if(IsLabel(GotoLEFT))
	{
		key := " & left"
		Hotkey, %modify%.%key%, GotoLEFT
	}

	if(IsLabel(GotoRIGHT))
	{
		key := " & right"
		Hotkey, %modify%.%key%, GotoRIGHT
	}

	if(IsLabel(GotoA))
	{
		key := " & a"
		Hotkey, %modify%.%key%, GotoA
	}

	if(IsLabel(GotoB))
	{
		key := " & b"
		Hotkey, %modify%.%key%, GotoB
	}

	if(IsLabel(GotoC))
	{
		key := " & c"
		Hotkey, %modify%.%key%, GotoC
	}

	if(IsLabel(GotoD))
	{
		key := " & d"
		Hotkey, %modify%.%key%, GotoD
	}

	if(IsLabel(GotoE))
	{
		key := " & e"
		Hotkey, %modify%.%key%, GotoE
	}

	if(IsLabel(GotoF))
	{
		key := " & f"
		Hotkey, %modify%.%key%, GotoF
	}

	if(IsLabel(GotoG))
	{
		key := " & g"
		Hotkey, %modify%.%key%, GotoG
	}

	if(IsLabel(GotoH))
	{
		key := " & h"
		Hotkey, %modify%.%key%, GotoH
	}

	if(IsLabel(GotoI))
	{
		key := " & i"
		Hotkey, %modify%.%key%, GotoI
	}

	if(IsLabel(GotoJ))
	{
		key := " & j"
		Hotkey, %modify%.%key%, GotoJ
	}

	if(IsLabel(GotoK))
	{
		key := " & k"
		Hotkey, %modify%.%key%, GotoK
	}

	if(IsLabel(GotoL))
	{
		key := " & l"
		Hotkey, %modify%.%key%, GotoL
	}

	if(IsLabel(GotoM))
	{
		key := " & m"
		Hotkey, %modify%.%key%, GotoM
	}

	if(IsLabel(GotoN))
	{
		key := " & n"
		Hotkey, %modify%.%key%, GotoN
	}

	if(IsLabel(GotoO))
	{
		key := " & o"
		Hotkey, %modify%.%key%, GotoO
	}

	if(IsLabel(GotoP))
	{
		key := " & p"
		Hotkey, %modify%.%key%, GotoP
	}

	if(IsLabel(GotoQ))
	{
		key := " & q"
		Hotkey, %modify%.%key%, GotoQ
	}

	if(IsLabel(GotoR))
	{
		key := " & r"
		Hotkey, %modify%.%key%, GotoR
	}

	if(IsLabel(GotoS))
	{
		key := " & s"
		Hotkey, %modify%.%key%, GotoS
	}

	if(IsLabel(GotoT))
	{
		key := " & t"
		Hotkey, %modify%.%key%, GotoT
	}

	if(IsLabel(GotoU))
	{
		key := " & u"
		Hotkey, %modify%.%key%, GotoU
	}

	if(IsLabel(GotoV))
	{
		key := " & v"
		Hotkey, %modify%.%key%, GotoV
	}

	if(IsLabel(GotoW))
	{
		key := " & w"
		Hotkey, %modify%.%key%, GotoW
	}

	if(IsLabel(GotoX))
	{
		key := " & x"
		Hotkey, %modify%.%key%, GotoX
	}

	if(IsLabel(GotoY))
	{
		key := " & y"
		Hotkey, %modify%.%key%, GotoY
	}

	if(IsLabel(GotoZ))
	{
		key := " & z"
		Hotkey, %modify%.%key%, GotoZ
	}

	if(IsLabel("GotoCOMMA"))
	{
		key := " & ,"
		Hotkey, %modify%.%key%, "GotoCOMMA"
	}

	if(IsLabel(GotoPERIOD))
	{
		key := " & ."
		Hotkey, %modify%.%key%, GotoPERIOD
	}

	if(IsLabel(GotoSLASH))
	{
		key := " & /"
		Hotkey, %modify%.%key%, GotoSLASH
	}

	if(IsLabel(GotoSC027))
	{
		key := " & sc027"
		Hotkey, %modify%.%key%, GotoSC027
	}

	if(IsLabel(GotoOPENBRACKET))
	{
		key := " & ["
		Hotkey, %modify%.%key%, GotoOPENBRACKET
	}

	if(IsLabel(GotoCLOSEBRACKET))
	{
		key := " & ]"
		Hotkey, %modify%.%key%, GotoCLOSEBRACKET
	}

	if(IsLabel(GotoBACKSLASH))
	{
		key := " & \"
		Hotkey, %modify%.%key%, GotoBACKSLASH
	}

	if(IsLabel(GotoMINUS))
	{
		key := " & -"
		Hotkey, %modify%.%key%, GotoMINUS
	}

	if(IsLabel(GotoPLUS))
	{
		key := " & ="
		Hotkey, %modify%.%key%, GotoPLUS
	}

	if(IsLabel(GotoF1))
	{
		key := " & f1"
		Hotkey, %modify%.%key%, GotoF1
	}

	if(IsLabel(GotoF2))
	{
		key := " & f2"
		Hotkey, %modify%.%key%, GotoF2
	}

	if(IsLabel(GotoF3))
	{
		key := " & f3"
		Hotkey, %modify%.%key%, GotoF3
	}

	t := IsLabel("GotoCOMMA")
	MsgBox, , Title, %t%
	if(IsLabel(GotoF4))
	{
		key := " & f4"
		Hotkey, %modify%.%key%, GotoF4
	}

	if(IsLabel(GotoF5))
	{
		key := " & f5"
		Hotkey, %modify%.%key%, GotoF5
	}

	if(IsLabel(GotoF6))
	{
		key := " & f6"
		Hotkey, %modify%.%key%, GotoF6
	}

	if(IsLabel(GotoF7))
	{
		key := " & f7"
		Hotkey, %modify%.%key%, GotoF7
	}

	if(IsLabel(GotoF8))
	{
		key := " & f8"
		Hotkey, %modify%.%key%, GotoF8
	}

	if(IsLabel(GotoF9))
	{
		key := " & f9"
		Hotkey, %modify%.%key%, GotoF9
	}

	if(IsLabel(GotoF10))
	{
		key := " & f10"
		Hotkey, %modify%.%key%, GotoF10
	}

	if(IsLabel(GotoF11))
	{
		key := " & f11"
		Hotkey, %modify%.%key%, GotoF11
	}

	if(IsLabel(GotoF12))
	{
		key := " & f12"
		Hotkey, %modify%.%key%, GotoF12
	}
}
