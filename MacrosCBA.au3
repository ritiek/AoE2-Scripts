HotKeySet("{home}", "KillKey")
HotKeySet("{F11}", "Pause")
HotKeySet("{F8}", "AssignHotkeys")


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


Func AssignHotkeys()
   HotKeySet("^a", "Arbalest")
   HotKeySet("^e", "Halberdier")
   HotKeySet("^v", "Paladin")
   HotKeySet("^g", "Eagle")
   HotKeySet("^r", "Skirmisher")
   HotKeySet("^c", "Camel")
   HotKeySet("^b", "Huskarl")
   HotKeySet("^f", "HandCannon")
   HotKeySet("^x", "CavArch")
EndFunc


Func KillKey()
   ProcessClose("age2_x1.exe")
   ProcessClose("age2_x2.exe")
EndFunc


Func EndlessSleep()
   AssignHotkeys()
   While 1
	  Sleep(10)
   WEnd
EndFunc


Func Arbalest()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^a")
	  Send("w")
	  Send("{shiftdown}")
	  Send("a")
	  Send("{shiftup}")
	  HotKeySet("^a", "Arbalest")
	  EndlessSleep()
   Else
	  HotKeySet("^a")
	  Send("^a")
	  HotKeySet("^a", "Arbalest")
   EndIf
EndFunc


Func Halberdier()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^e")
	  Send("s")
	  Send("{shiftdown}")
	  ;Send("+e")
	  Send("e")
	  Send("{shiftup}")
	  HotKeySet("^e", "Halberdier")
	  EndlessSleep()
   Else
	  HotKeySet("^e")
	  Send("^e")
	  HotKeySet("^e", "Halberdier")
   EndIf
EndFunc


Func Paladin()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^v")
	  Send("x")
	  Send("{shiftdown}")
	  ;Send("+v")
	  Send("v")
	  Send("{shiftup}")
	  HotKeySet("^v", "Paladin")
	  EndlessSleep()
   Else
	  HotKeySet("^v")
	  Send("^v")
	  HotKeySet("^v", "Paladin")
   EndIf
EndFunc


Func Eagle()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^g")
	  Send("s")
	  Send("{shiftdown}")
	  ;Send("+g")
	  Send("g")
	  Send("{shiftup}")
	  HotKeySet("^g", "Eagle")
	  EndlessSleep()
   Else
	  HotKeySet("^g")
	  Send("^g")
	  HotKeySet("^g", "Eagle")
   EndIf
EndFunc


Func Skirmisher()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^r")
	  Send("w")
	  Send("{shiftdown}")
	  ;Send("+r")
	  Send("r")
	  Send("{shiftup}")
	  HotKeySet("^r", "Skirmisher")
	  EndlessSleep()
   Else
	  HotKeySet("^r")
	  Send("^r")
	  HotKeySet("^r", "Skirmisher")
   EndIf
EndFunc


Func Camel()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^c")
	  Send("x")
	  Send("{shiftdown}")
	  ;Send("+c")
	  Send("c")
	  Send("{shiftup}")
	  HotKeySet("^c", "Camel")
	  EndlessSleep()
   Else
	  HotKeySet("^c")
	  Send("^c")
	  HotKeySet("^c", "Camel")
   EndIf
EndFunc


Func Huskarl()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^b")
	  Send("s")
	  Send("{shiftdown}")
	  ;Send("+r")
	  Send("r")
	  Send("{shiftup}")
	  HotKeySet("^b", "Huskarl")
	  EndlessSleep()
   Else
	  HotKeySet("^b")
	  Send("^b")
	  HotKeySet("^b", "Huskarl")
   EndIf
EndFunc


Func HandCannon()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^f")
	  Send("w")
	  Send("{shiftdown}")
	  ;Send("+e")
	  Send("e")
	  Send("{shiftup}")
	  HotKeySet("^f", "HandCannon")
	  EndlessSleep()
   Else
	  HotKeySet("^f")
	  Send("^f")
	  HotKeySet("^f", "HandCannon"
   EndIf
EndFunc


Func CavArch()
   If ProcessExists('age2_x1.exe') Then
	  HotKeySet("^x")
	  Send("w")
	  Send("{shiftdown}")
	  ;Send("+c")
	  Send("c")
	  Send("{shiftup}")
	  HotKeySet("^x", "CavArch")
	  EndlessSleep()
   Else
	  HotKeySet("^x")
	  Send("^x")
	  HotKeySet("^x", "CavArch")
   EndIf
EndFunc


EndlessSleep()
