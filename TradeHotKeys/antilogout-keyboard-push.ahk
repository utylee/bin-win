IfWinExist, ahk_exe Wow.exe
{
	;MsgBox, zzzzz

	; a와 d를 1초 근방씩 눌러서 튕김을 방지합니다
	while(1)
	{
		Sleep 4000
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

		Random, t, 800, 1200
		Sleep, t

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
/*

	WinActivate, 오버워치

	;MouseMove, -100, 0, , R
;	Loop, 10
	
	;f = 389
	;final = 3890
	final = 4500
	cur = 0
	While ( cur < final)
	{
		;step := Rand(300,400)
		Random, step, 390, 430
		if ( cur + step > final)
			step := final - cur
		;DllCall("mouse_event", uint, 1, int, 389, int, 0, uint, 0, int, 0)
		DllCall("mouse_event", uint, 1, int, step, int, 0, uint, 0, int, 0)
		Sleep 15	
		cur := cur + step
	}
*/

}
