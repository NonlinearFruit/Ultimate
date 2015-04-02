;----------------------
;Websites - Use Win Key
;----------------------

+#a:: ; <-- Insta-(A)HK
	data := copySelectedData()
	search = http://www.google.com/cse?cx=008894931886257774458:qsymwz_o1tq&hl=en&q=%data%
	Run %search%
	return

+#b:: ; <-- Insta-(B)ible (ESV)
	data := copySelectedData()
	search = http://www.biblegateway.com/passage/?search=%data%&version=ESV
	Run %search%
	return

+#d:: ; <-- Insta-(D)ictionary
	data := copySelectedData()
	search = http://www.google.com/search?hl=en&q=define %data%
	Run %search%
	return	

#f:: ; <-- (F)acebook
	Run www.facebook.com
	return

#g:: ; <-- (G)oogle
	Run http://www.google.com
      return

+#g:: ; <-- Insta-(G)oogle
	data := copySelectedData()
	search = http://www.google.com/search?hl=en&q=%data%
	Run %search%
	return	

+#i:: ; <-- Insta-Google (I)mages
    data := copySelectedData()
	search = https://www.google.com/search?q=%data%&source=lnms&tbm=isch&sa=X&ei=q4YgU-LpEonNqQGVs4DABw&ved=0CAkQ_AUoAQ&biw=1280&bih=899
	Run %search%
	return

+#m:: ; <-- Insta-Google (M)aps
    data := copySelectedData()
	search = https://www.google.com/maps/place/%data%
	Run %search%
	return

+#q:: ; <-- (Q)uerySearcher

	; Get UserInput of the form '?>search'
	InputBox, UserInput, QuerySearcher, Please enter your query, , 200, 100
  
	if ErrorLevel{
		MsgBox, CANCEL was pressed.
		return
	}
  
	; Split search engine code (query1) from search item (query2)
	StringSplit, query, UserInput, >
	; Make sure query1 is lower case
	StringLower, query1, query1
	; Switch Statement
	if (query1="a")
	{ ;AutoHotKey
		Run http://www.google.com/cse?cx=008894931886257774458:qsymwz_o1tq&hl=en&q=%query2%
	}
	else if (query1="b")
	{ ;BibleGateway
		Run http://www.biblegateway.com/passage/?search=%query2%&version=ESV
	}
	else if (query1="c")
	{ ;Cogitation Recorder
		
		fileName = ideasDocument.txt
		idea = *%query2%`n
		fileWriter(idea, fileName)
	}
	else if (query1="d")
	{ ;Dictionary
		if (query2="twerp")
		{
			Msgbox Definition of Twerp is: Diana
		}
		else
		{
			Run http://www.google.com/search?hl=en&q=define %query2%
		}
	}
	else if (query1="g")
	{ ;Google
		Run http://www.google.com/search?hl=en&q=%query2%
	}
	else if (query1="i")
	{ ;Google Images
		Run https://www.google.com/search?q=%query2%&source=lnms&tbm=isch&sa=X&ei=q4YgU-LpEonNqQGVs4DABw&ved=0CAkQ_AUoAQ&biw=1280&bih=899
	}
	else if (query1="m")
	{ ;Google Maps
		Run https://www.google.com/maps/place/%query2%
	}
	else if (query1="s")
	{ ;StackOverflow
		Run http://stackoverflow.com/search?q=%query2%
	}
	else if (query1="t")
	{ ;Thesaurus
		Run http://thesaurus.com/browse/%query2%
	}
	else if (query1="u")
	{ ;URL
		Run %query2%
	}
	else if (query1="w")
	{ ;Wikipedia
		Run http://en.wikipedia.org/w/index.php?search=%query2%
	}
	else if (query1="y")
	{ ;Youtube
		Run https://www.youtube.com/results?search_query=%query2%
	}
	else
	{
		Run http://www.google.com/search?hl=en&q=%query1%
		Msgbox %query1% is not a recognized command {a,b,d,g,i,m,s,t,u,w,y} ... So we'll google it!!
	}
	return
			
#r:: ; <-- (R)eload
	Reload
	return

+#s:: ; <-- Insta-(S)tackOverFlow
    data := copySelectedData()
	search = http://stackoverflow.com/search?q=%data%
	Run %search%
	return

+#t:: ; <-- Insta-(T)hesaurus
    data := copySelectedData()
	search = http://thesaurus.com/browse/%data%
	Run %search%
	return

+#u:: ; <-- Insta-(U)RL
    data := copySelectedData()
	search = %data%
	Run %search%
	return

+#w:: ; <-- Insta-(W)ikipedia
    data := copySelectedData()
	search = http://en.wikipedia.org/w/index.php?search=%data%
	Run %search%
	return
	
#y:: ; <-- (Y)outube
	Run www.youtube.com
	return

+#y:: ; <-- Insta-(Y)outube
	data := copySelectedData()
	earch = https://www.youtube.com/results?search_query=%data%
	Run %search%
	return

#z:: ; <-- AHK Documentation
	Run http://www.autohotkey.com/docs/Tutorial.htm
	return
