;DetectHiddenWindows, On
;SetTitleMatchMode, 2
;ControlSend, Edit1, This is a line of text in the notepad window., 제목 없음 - 메모장
;ControlSend, Edit1, {b down}{b up}, ahk_class Notepad
;ControlSend, Edit1, {Ctrl down}{a}{Ctrl up}, ahk_class Notepad
;ControlSend, MDlClient1, {Ctrl Down}{a}{Ctrl up}, ahk_class _NKHeroMainClass
;ControlSend, , abc, cmd.exe

;Send, ahk_class Vim, aaa
;PostMessage, 0x100, 0x41, Edit1, ahk_class Notepad
;SendMessage, 0xC, 0, "New Notepad Title", Edit1, ahk_class Notepad
Gui,  -Caption +ToolWindow +AlwaysOnTop
Gui, Color, Red
Gui, Show, NA x-100 y100 h5 w100

;Gui, New
Gui,  -Caption +ToolWindow +AlwaysOnTop
Gui, Color, Red
Gui, Show, NA x-470 y240 h45 w47
Sleep, 1000
;Gui, Color, Green
;Gui, Show, hide  x-100 y100 h5 w100

;1450, 240,1497, 282 
;1193, 32, 1681, 518
;1198, 481, 1678
;1624,90, 1679, 148
