IfWinExist, ahk_exe Wow.exe
{
	;MsgBox, zzzzz

; a와 d를 1초 근방씩 눌러서 튕김을 방지합니다
	;while(true)
	Loop
	{
		Sleep, 2000
		WinActivate

		Random, t, 800, 1200
		Send, {a down}
		Sleep, t
		Send, {a up}

		Random, t, 800, 1200
		Sleep, t

		Random, t, 800, 1200
		Send, {d down}
		Sleep, t
		Send, {d up}

		Sleep, 20000


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
