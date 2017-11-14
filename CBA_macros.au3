HotKeySet("{home}", "KillKey")
HotKeySet("{F11}", "Pause")
HotKeySet("{F8}", "List")

Func Pause()
   HotKeySet("^a")
   HotKeySet("^e")
   HotKeySet("^v")
   HotKeySet("^g")
   HotKeySet("^r")
   HotKeySet("^c")
   HotKeySet("^b")
   HotKeySet("^f")
   HotKeySet("^x")
EndFunc

Func List()
   HotKeySet("^a", "arbalest")
   HotKeySet("^e", "halberdier")
   HotKeySet("^v", "paladin")
   HotKeySet("^g", "eagle")
   HotKeySet("^r", "skirmisher")
   HotKeySet("^c", "camel")
   HotKeySet("^b", "huskarl")
   HotKeySet("^f", "handcannon")
   HotKeySet("^x", "cavarch")
EndFunc

Func KillKey()
   ProcessClose("age2_x1.exe")
   ProcessClose("age2_x2.exe")
EndFunc

Func Looper()
   List()
   While 1
	  Sleep(10)
   WEnd
EndFunc

Func arbalest()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^a")
	  Send("w")
	  Send("{shiftdown}")
	  Send("a")
	  Send("{shiftup}")
	  HotKeySet("^a", "arbalest")
	  Looper()
   Else
	  HotKeySet("^a")
	  Send("^a")
	  HotKeySet("^a", "arbalest")
   EndIf
EndFunc

Func halberdier()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^e")
	  Send("s")
	  Send("{shiftdown}")
	  ;Send("+e")
	  Send("e")
	  Send("{shiftup}")
	  HotKeySet("^e", "halberdier")
	  Looper()
   Else
	  HotKeySet("^e")
	  Send("^e")
	  HotKeySet("^e", "halberdier")
   EndIf
EndFunc

Func paladin()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^v")
	  Send("x")
	  Send("{shiftdown}")
	  ;Send("+v")
	  Send("v")
	  Send("{shiftup}")
	  HotKeySet("^v", "paladin")
	  Looper()
   Else
	  HotKeySet("^v")
	  Send("^v")
	  HotKeySet("^v", "paladin")
   EndIf
EndFunc

Func eagle()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^g")
	  Send("s")
	  Send("{shiftdown}")
	  ;Send("+g")
	  Send("g")
	  Send("{shiftup}")
	  HotKeySet("^g", "eagle")
	  Looper()
   Else
	  HotKeySet("^g")
	  Send("^g")
	  HotKeySet("^g", "eagle")
   EndIf
EndFunc

Func skirmisher()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^r")
	  Send("w")
	  Send("{shiftdown}")
	  ;Send("+r")
	  Send("r")
	  Send("{shiftup}")
	  HotKeySet("^r", "skirmisher")
	  Looper()
   Else
	  HotKeySet("^r")
	  Send("^r")
	  HotKeySet("^r", "skirmisher")
   EndIf
EndFunc

Func camel()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^c")
	  Send("x")
	  Send("{shiftdown}")
	  ;Send("+c")
	  Send("c")
	  Send("{shiftup}")
	  HotKeySet("^c", "camel")
	  Looper()
   Else
	  HotKeySet("^c")
	  Send("^c")
	  HotKeySet("^c", "camel")
   EndIf
EndFunc

Func huskarl()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^b")
	  Send("s")
	  Send("{shiftdown}")
	  ;Send("+r")
	  Send("r")
	  Send("{shiftup}")
	  HotKeySet("^b", "huskarl")
	  Looper()
   Else
	  HotKeySet("^b")
	  Send("^b")
	  HotKeySet("^b", "huskarl")
   EndIf
EndFunc

Func handcannon()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^f")
	  Send("w")
	  Send("{shiftdown}")
	  ;Send("+e")
	  Send("e")
	  Send("{shiftup}")
	  HotKeySet("^f", "handcannon")
	  Looper()
   Else
	  HotKeySet("^f")
	  Send("^f")
	  HotKeySet("^f", "handcannon"
   EndIf
EndFunc

Func cavarch()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^x")
	  Send("w")
	  Send("{shiftdown}")
	  ;Send("+c")
	  Send("c")
	  Send("{shiftup}")
	  HotKeySet("^x", "cavarch")
	  Looper()
   Else
	  HotKeySet("^x")
	  Send("^x")
	  HotKeySet("^x", "cavarch")
   EndIf
EndFunc

Looper()
