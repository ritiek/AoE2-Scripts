#NoTrayIcon
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <TrayConstants.au3>
#include <Misc.au3>
#include <MsgBoxConstants.au3>

Opt("TrayMenuMode", 3)
Opt("TrayOnEventMode", 1)
Opt("TrayAutoPause", 0)
Opt("GUIOnEventMode", 1)

$remove_au3 = StringReplace(@ScriptName, ".au3", "")
$script_name = StringReplace($remove_au3, ".exe", "")

If _Singleton(@ScriptName, 1) = 0 Then
    Exit
EndIf

TrayCreateItem("Exit Script")
TrayItemSetOnEvent(-1, "exitScript")
TraySetState(1)

$ini_directory = @ScriptDir & "\" & $script_name & ".ini"

If Not FileExists($ini_directory) Then
   $convert_key = InputBox("Convert Key", "Enter the key on your keyboard you would like to use as a macro:", "", "", 200, 150)

   HotKeySet("{F10}", getCoordinates)
   MsgBox(0, "Set coordinates", "Click OK and place your mouse over the 1st selected unit and press F10 key as told in README.md")
   HotKeySet("{F10}")

   IniWrite($script_name & ".ini", "Convert Monk", "Macro Convert", $convert_key)
EndIf

$convert_key = IniRead($ini_directory, "Convert Monk", "Macro Convert", "")
$convert_hotkey = "{" & $convert_key & "}"
HotKeySet($convert_hotkey, "keyConvert")

endlessSleep()
Func endlessSleep()
   While 1
	  Sleep(10)
   WEnd
EndFunc

Func getCoordinates()

EndFunc

Func keyConvert()
   MouseClick("right")
   Send("{CTRLDOWN}")
   $mouse_pos = MouseGetPos()
   If ProcessExists("age2_x2.exe") Then
	  MouseClick("left", 690, 905, 1, 0)	; coordinates for AoFe
   Else
	  MouseClick("left", 386, 910, 1, 0)	; coordinates for AoC
   EndIf
   MouseMove($mouse_pos[0], $mouse_pos[1], 0)
   Send("{CTRLUP}")
EndFunc

Func exitScript()
   Exit
EndFunc