#include <Constants.au3>

If WinExists(@ScriptName) Then Exit
AutoItWinSetTitle(@ScriptName)

HotKeySet("^!x", "MyExit")

$var = FileOpenDialog("Файл для отправки", @WorkingDir & "\", "Любой файл (*.*)", 1)

If @error Then
	Exit
Else
    $var = StringReplace($var, "|", @CRLF)
EndIf

$hFile = FileOpen($var, 0)

; Проверяет, является ли файл открытым, перед тем как использовать функции чтения/записи в файл
If $hFile = -1 Then
    MsgBox(4096, "Ошибка", "Невозможно открыть файл.")
    Exit
EndIf

WinWaitActive("[CLASS:MozillaWindowClass]")

MouseClick("left", 802, 615, 1)

AutoItSetOption("SendKeyDelay", 10)

Send("vim temp.cpp{ENTER}i")

; Читает построчно текст, пока не будет достигнут конец файла EOF
While 1
   $sLine = FileReadLine($hFile)
   If @error = -1 Then ExitLoop

   Send($sLine, 1)
   Send("{ENTER}")
   ;If MsgBox(1, "Прочитанная строка:", $sLine) = 2 Then ExitLoop

WEnd

Send("{ESC}")
Send(":wq!{ENTER}")

MsgBox($MB_SYSTEMMODAL, "AutoIt", "Finish")

FileClose($hFile)

Exit

Func MyExit()
    Exit
EndFunc
