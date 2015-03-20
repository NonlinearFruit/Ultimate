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
}