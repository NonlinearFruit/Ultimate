;----------------------
;Programs - Use Alt Key
;----------------------

!d:: ; <-- Choose (D)irectory
      InputBox, UserInput, Insta-Directory, Please enter the desired directory path, , 200, 100
      
      if ErrorLevel{
          MsgBox, CANCEL was pressed.
          return
      }
	  
	  ; Add ending symbol (@) to the  
	  ; end of the UserInput and divide
	  ; the input into an array (it)
      it = %UserInput%>@
      StringSplit, pathfinder, it, >
	i = 1
	temp1 := pathfinder%i%
	filePath = %temp1%:
	i := i +1
	  
	; This loop goes through all of the elements of pathfinder
	loop 
	{
		temp2 := pathfinder%i%
		; Stop when pathfinder runs dry
		if (temp2="@"){
			break
		}
		
		; This loop goes until a directory is found that fits the 
		; pathfinder element
		lister =
		loop , %filePath%/%temp2%* , 2 
		{
			; folder holds the next step in the path
			folder = /%A_LoopFileName%
			
			; lister exists in case more than one folder matches
			; the abbr found in pathfinder
			lister = %lister%%folder%`n
		}
		
		StringSplit , optionsArray, lister, `n

		; if the second element of the lister was
		; the end symbol (@), then add folder to
		; the path
		if (optionsArray0=2)
		{
			filePath = %filePath%%folder%
		}
		; Else show the lister of folders that fit 
		; the abbr given and break the loop
		else
		{
			Msgbox, %lister%
			break
		}
			
		i := i + 1
		
	}
    Run %filePath% 
    return

+!d:: ; <-- Insta-(D)irectory
      InputBox, UserInput, Insta-Directory, Please enter the desired directory path, , 200, 100
      
      if ErrorLevel{
          MsgBox, CANCEL was pressed.
          return
      }
	  
	  ; Add ending symbol (@) to the
	  ; end of the UserInput and divide
	  ; the input into an array (it)
      it = %UserInput%>@
      StringSplit, pathfinder, it, >
	i = 1
	temp1 := pathfinder%i%
	filePath = %temp1%:
	i := i +1
	  
	; This loop goes through all of the elements of pathfinder
	loop 
	{
		temp2 := pathfinder%i%
		; Stop when pathfinder runs dry
		if (temp2="@"){
			break
		}
		
		; This loop goes until a directory is found that fits the 
		; pathfinder element
		lister =
		loop , %filePath%/%temp2%* , 2 
		{
			; folder holds the next step in the path
			folder = /%A_LoopFileName%
			
			; lister exists in case more than one folder matches
			; the abbr found in pathfinder
			lister = %lister%%folder%`n
		}
		
		StringSplit , optionsArray, lister, `n

		; if the second element of the lister was
		; the end symbol (@), then add folder to
		; the path
		if (optionsArray0=2)
		{
			filePath = %filePath%%folder%
		}
		; Else show the lister of folders that fit 
		; the abbr given and break the loop
		else
		{
			Msgbox, %lister%
			break
		}
			
		i := i + 1
		
	}
	Sleep 3000
    Send %filePath% 
    return
	
<!n:: ; <-- (N)otepad
	Run Notepad
	return


+!^c:: ; <-- WIP Install (C)hocolately
	Run cmd.exe 
	Send echo hello {Enter}
	return
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;   Spotify Shortcuts
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

SetTitleMatchMode 2 

; "ALT + LEFT"  for previous 
!Left:: ; <-- Spotify Previous Song 
	DetectHiddenWindows, On 
	ControlSend, ahk_parent, ^{Left}, ahk_class SpotifyMainWindow 
	DetectHiddenWindows, Off 
	return 


; "ALT + RIGHT"  for next 
!Right:: ; <-- Spotify Next Song
	DetectHiddenWindows, On 
	ControlSend, ahk_parent, ^{Right}, ahk_class SpotifyMainWindow 
	DetectHiddenWindows, Off 
	return 


; "ALT + UP"  for pause
!UP:: ; <-- Spotify Pause 
	DetectHiddenWindows, On 
	ControlSend, ahk_parent, {space}, ahk_class SpotifyMainWindow 
	DetectHiddenWindows, Off 
	return 

; "ALT + DOWN"  for info 
!Down:: ; <-- Spotify Info
	DetectHiddenWindows, On 
	SetTitleMatchMode 2 
	WinGetTitle, now_playing, ahk_class SpotifyMainWindow 
	StringTrimLeft, playing, now_playing, 10 
	DetectHiddenWindows, Off 
	clipboard = %playing%`r`n
	return 

; "ALT + PAGE UP"  for volume up
!PgUP:: ; <-- Spotify Volume Up
	DetectHiddenWindows, On 
	ControlSend, ahk_parent, ^{Up}, ahk_class SpotifyMainWindow 
	DetectHiddenWindows, Off 
	return 

; "ALT + PAGE DOWN"  for volume down
!PgDn:: ; <-- Spotify Volume Down
	DetectHiddenWindows, On 
	ControlSend, ahk_parent, ^{Down}, ahk_class SpotifyMainWindow 
	DetectHiddenWindows, Off 
	return 

; "ALT + END"  for mute
!End:: ; <-- Spotify Mute
	DetectHiddenWindows, On 
	ControlSend, ahk_parent, ^+{Down}, ahk_class SpotifyMainWindow 
	DetectHiddenWindows, Off 
	return 


;---------------------------------------------------------------------------------------------------------
