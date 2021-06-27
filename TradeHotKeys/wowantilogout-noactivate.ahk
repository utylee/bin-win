;SetTitleMatchMode, 2
IfWinExist, ahk_exe Wow.exe
{
	;MsgBox, zzzzz

; a와 d를 1초 근방씩 눌러서 튕김을 방지합니다
	;while(true)
	Loop
	{
		Random, t, 1800, 2200
		Sleep t
		;WinActivate

		;Send, {a down}
		;ControlSend,, {a down},ahk_exe Wow.exe

		Random, d, 800, 1200
		Sleep d
		SetKeyDelay, 0, d
		ControlSend,, {a},ahk_exe Wow.exe

		;ControlSend,, {a down}, 월드 오브 워크래프트
		;Random, t, 800, 1200
		;Sleep, t
		;Send, {a up}
		;ControlSend,, {a up},ahk_exe Wow.exe
		;ControlSend,, {a up}, 월드 오브 워크래프트


		Random, d, 800, 1200
		Sleep d
		SetKeyDelay, 0, d
		ControlSend,, {d},ahk_exe Wow.exe

		;ControlSend,, {d down}, 월드 오브 워크래프트
		;ControlSend,, {d down},ahk_exe Wow.exe
		;Send, {d down}
		;ControlSend,, {d up}, 월드 오브 워크래프트
		;ControlSend,, {d up},ahk_exe Wow.exe
		;Send, {d up}

		;Sleep 1000
		;ControlSend,, {Enter},ahk_exe Wow.exe

		Sleep 300000 


		/*
		Send, {ESC}
		Loop, 9 
		{
			SendRaw, {a}
			SendRaw, {a}
			SendRaw, {a}
			Sleep, 1000
		}
		*/
	}
	return	
}
