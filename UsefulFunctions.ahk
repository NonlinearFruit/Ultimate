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
	; Look for the first iconic pattern indicating a hotkey
	; within this string 
	needle := ":: `; <--"
	colons := InStr(str,needle)
	; Go from the beginning of str, to this pattern,
	; call that part 'labrat'
	labrat := SubStr(str, 1, colons-1)
	; Set str equal to what is left after the pattern
	str := SubStr(str,colons+StrLen(needle))

	if(colons=0)
	{ ; No patterns found in str, so return
		return
	}

	; Create a string (temp), starting at the end of labrat
	; and growing towards the beginning until one of the key phrases
	; is found
	j := 0
	Loop
	{
		; len = the length of this labrat as a whole
		len := StrLen(labrat)
		; j = the length of the backwards growing string (temp)
		j := j+1
		; i = how much larger labrat is than temp
		i := len-j+1

		; temp = the back-end of labrat
		; Start at i, go for length j
		temp := SubStr(labrat, i, j)

		; exist if temp adsorbs a #
		if(InStr(temp, "#")!=0)
		{
			hk := temp
			if(SubStr(labrat, i-1, 1)=="+")
			{ ; The next charact in labrat was shift, so add that
				hk = +%hk%
			}
			break
		}
		; exist if temp adsorbs a !
		if(InStr(temp, "!")!=0)
		{
			hk := temp
			if(SubStr(labrat, i-1, 1)=="+")
			{ ; The next charact in labrat was shift, so add that
				hk = +%hk%
			}
			break
		}
		; exist if temp adsorbs a AppsKey (or equivalent)
		if(InStr(temp, "AppsKey")!=0)
		{
			hk := temp
			if(SubStr(labrat, i-1, 1)=="+")
			{ ; The next charact in labrat was shift, so add that
				hk = +%hk%
			}
			break
		}
		; exist if temp eats all of labrat and doesn't find 
		; the key phrases
		if(i=1)
		{
			break
		}
	}

	; In what is left of str, from the beginning to the first enter is the 
	; documentation for that hotkey, so get the position of the first enter
	posOfEnter := InStr(str, "`n")
	if(posOfEnter!=0)
	{ ; the position exists!, create the documentation
		temp := SubStr(str, 1, posOfEnter)
		doc := temp
	}

	; Format the hotkey and documentation

	; Largest sized hotkey (this is used to unify spacing)
	hkSpace := 16 ;CapsLock & Enter
	; Number of white spaces that need added to hk
	numWhite := hkSpace - StrLen(hk)
	Loop, %numWhite%
	{ ; Add a space for every number in numWhite
		hk := hk . " "
	}
	; do the formatting
	txt = %hk%--    %doc%`n
	; Add the hotkey and the documentation to the features txt file
	fileWriter(txt,"features.txt")
	; Recursively call myself so I can find the next hotkey
	featureRetriever(str)
	return
}