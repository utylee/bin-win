IME_CHECK(WinTitle)
{
    WinGet,hWnd,ID,ahk_exe %WinTitle%
    ;WinGet,hWnd,exe_name
    Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"")
}

Send_ImeControl(DefaultIMEWnd, wParam, lParam)
{
    DetectSave := A_DetectHiddenWindows       
    DetectHiddenWindows,ON                          
     SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
    if (DetectSave <> A_DetectHiddenWindows)
        DetectHiddenWindows,%DetectSave%
    return ErrorLevel
}
 
ImmGetDefaultIMEWnd(hWnd)
{
    return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
} 

F7::
{
	;SendMode Input
	; 파이어폭스가 있으면 
	;IfWinExist ahk_class MozillaWindowClass
	IfWinNotExist ahk_exe firefox.exe
	{
		Send, #3 
		Sleep, 13000
	}
	
	IfWinExist ahk_exe firefox.exe
	{
		;SendMode Input
		;활성화 하고 새로운 탭을 엽니다
		Sleep, 2000
		WinActivate, ahk_exe firefox.exe
		
		Sleep, 1000
		Send, ^{t}

		Sleep, 1000

		;한영키 여부를 감지해서 영어로 변환해줍니다
		;ret := IME_CHECK("A")
		ret := IME_CHECK("firefox.exe")
		;MsgBox, %ret%
		;Send, {vk15sc138}
		
		if ret=1
		{
			;MsgBox, 한글입니다
			;MsgBox, %ret%
			;한영키가 아닌 shift space 로 변경해놓은 윈도우라 그렇게 명령합니다
			;Send, {vk15sc1F2}
			Send, {vk15sc138}
			;shit space 가 아무리 해도 안먹혀서 되는 코드를 찾았습니다
			;출처: http://www.autohotkey.co.kr/cgi/board.php?bo_table=qna&wr_id=20839

			;Send, +{Space}
			;Send, +" "
			;Send, {Shift}{Space}
		}

		Sleep, 2000
		Send, studio.youtube.com
		Send, {Enter}

		; 개발자 콘솔 열기
		Sleep, 10000
		Send, ^+{i}

		; 개발자 네트워크에 grst 입력
		Sleep, 10000
		MouseMove, 110, 400
		MouseClick, left

		Send, grst

		; youtube 재클릭 리프레시
		Sleep, 2000
		MouseMove, 110, 150
		MouseClick, left

		; grst 항목 클릭
		Sleep, 30000
		MouseMove, 180, 500
		MouseClick, left

		;
		Sleep, 1000
		MouseMove, 450, 480
		MouseClick, left

		Sleep, 1000
		MouseMove, 450, 580
		MouseClick, left

		;모두선택
		Sleep, 1000
		MouseMove, 450, 580
		MouseClick, right

		Sleep, 1000
		Send, {Up}

		Sleep, 1000
		Send, {Enter}
		
		;복사
		Sleep, 1000
		MouseMove, 450, 580
		MouseClick, right

		Sleep, 1000
		Send, c 

		Sleep, 1000
		Send, {Enter}
		;MsgBox, pink	

		; 쿠키 확장프로그램 클릭
		Sleep, 1000
		;절대 좌표를 사용하니 클릭 후 아무 반응이 없어서 상대좌표 옮기는 방식을 사용하니
		;해봤습니다
		;MouseMove, 780, 52
		;Sleep, 200
		;MouseClick, left

		MouseMove, 0, 0
		Sleep, 200
		MouseMove, 780, 52, ,R
		Sleep, 200
		MouseClick, left

		; cookies: current site 드롭다운 클릭
		Sleep, 1000
		MouseMove, 0, 85, , R
		Sleep, 1000
		MouseClick, left

		;SendMode Input
		;cookies.txt 입력 후 엔터
		;위치는 '다운로드' 폴더입니다
		WinWait, 다른 이름으로 저장,,5
		if ErrorLevel
		{
			MsgBox, 다른 이름으로 저장 창을 찾을 수 없습니다. 종료합니다
			return
		}
		Sleep, 1000
		Sleep, 5000
		Send, cookies.txt
		Sleep, 2000
		Sleep, 2000
		Send, {Enter}
		
		;파일 변경 확인 메세지에 또 yes를 누릅니다
		Sleep, 1000
		Sleep, 1000
		Send, y

		; studio.youtube.com 창을 닫습니다
		Sleep, 5000
		Send, ^{w}

		; cookies 갱신 페이지를 엽니다
		Sleep, 2000
		WinActivate, ahk_exe firefox.exe
		
		Sleep, 1000
		Send, ^{t}

		
		Sleep, 2000
		Send, http://utylee.duckdns.org/youtube/cookie/cook
		Send, {Enter}

		; cookies 갱신웹을 닫습니다
		Sleep, 8000
		Send, ^{w}

	}
	/* else */
	/* { */
	/* 	Send, #3 */
	/* } 
	*/
	
}

