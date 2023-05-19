;SetTitleMatchMode, RegEx
#InstallKeybdHook
#UseHook
#Persistent    ;마치 while로 계속 떠있는 이벤트 룹같이 동작하도록 하는 명령어
;SetKeyDelay, 70
;SetKeyDelay, 100
; 마우스 이동을 활성윈도우가 아닌 절대좌표를 이용합니다
Coordmode, Mouse, Screen
;CoordMode, ToolTip|Pixel|Mouse|Caret|Menu [, Screen|Window|Client]


; 8282호가창에서 클릭지점 오류가 자꾸 나서 보완장치를 마련하기로 했습니다.
; 제대로 된 위치 위로 올라가면 빨간, 혹은 파란 세로선이 가격 양쪽으로 나타납니다
Gui,  -Caption +ToolWindow +AlwaysOnTop
;Gui, Color, Red
;Gui, Show, Hide NA x-473 y134 h300 w5
;1684 - 1920
;1920 - 1447, 134, 1452, 432

/*
;Gui, New, ,Blues
Gui, New, -Caption +ToolWindow +AlwaysOnTop, Blues
Gui, Color, Blue
Gui, Show, Hide NA x-747 y180 h210 w25, Blues
*/


/*
;SetTimer, timer_proc, 100

; 8282호가창의 매도량 클릭의 전환
; 0 : 초기값, 혹은 매수포지션 mbutton 을 누르면 다시 2/3량 포지션으로 전환 재초기화
; 1 : 두번째 누를 때는 나머지 잔량 포지션을 클릭하고 커서 위치 대기 
toggle_sell := 0

; S 버튼을 스페셜 커맨드 키로 사용하기 위한 플래그
s_toggle := 0

; / ? 버튼을 스페셜 커맨드 키로 사용하기 위한 플래그 ( + 숫자 = 펑션키)
slash_toggle := 0
question_toggle := 0
wintab_toggle := 0
;lbutton 드래그 만으로 호가창 swap을 위한 변수들
lbutton_down := 0
clicked_num := 0
clicked_pos := {"x": 0, "y": 0}

; 분봉<-->틱봉 간의 교환을 위한 변수
toggle := 1

; 가상화면1 <---> 가상화면3 간의 교환을 위한 변수
togglescr := 1

; [0999] 각 0101호가창의 분<-->틱 교환을 위한 토글 플래그 변수들
toggle0101 := Object() ;배열을 지원하지 않아 이렇게 해야한다고 합니다
toggle0101[1] := 1
toggle0101[2] := 1
toggle0101[3] := 1
toggle0101[4] := 1
toggle0101[5] := 1
toggle0101[6] := 1
toggle0101[7] := 1
toggle0101[8] := 1
toggle0101[99] := 1 ;좌측 좀 큰차트에서의 토글을 위한 변수
toggle0101[77] := 1 ;잔고 / 당일매매 영역의 토글을 위한 변수
*/

;SetDefaultMouseSpeed, 0

;#define MOUSEEVENTF_MOVE 0x0001 /* mouse move */
;#define MOUSEEVENTF_LEFTDOWN 0x0002 /* left button down */
;#define MOUSEEVENTF_LEFTUP 0x0004 /* left button up */
;#define MOUSEEVENTF_RIGHTDOWN 0x0008 /* right button down */
;#define MOUSEEVENTF_RIGHTUP 0x0010 /* right button up */
;#define MOUSEEVENTF_MIDDLEDOWN 0x0020 /* middle button down */
;#define MOUSEEVENTF_MIDDLEUP 0x0040 /* middle button up */
;#define MOUSEEVENTF_XDOWN 0x0080 /* x button down */
;#define MOUSEEVENTF_XUP 0x0100 /* x button down */
;#define MOUSEEVENTF_WHEEL 0x0800 /* wheel button rolled */
;#define MOUSEEVENTF_VIRTUALDESK 0x4000 /* map to entire virtual desktop */
;#define MOUSEEVENTF_ABSOLUTE 0x8000 /* absolute move */
; 오버워치 뒤로 돌기 매크로 테스트
#IfWinActive, ahk_exe r5apex.exe
!Tab::return
;XButton2::
/*
XButton1::
{
	;IfWinExist, 오버워치
	IfWinExist, ahk_exe r5apex.exe
	{

		;WinActivate, 오버워치
	
		;MouseMove, -100, 0, , R
	;	Loop, 10
        
        ;;f = 389
        ;;final = 3890
        ;final = 4500
		; apex상에서 센시 800x1.2였을 경우의 수치입니다
        ;final = 6840
        final = 3410
        cur = 0
        While ( cur < final)
		{
            ;step := Rand(300,400)

            ;Random, step, 390, 430

            step := 600
            if ( cur + step > final)
                step := final - cur
			;DllCall("mouse_event", uint, 1, int, 389, int, 0, uint, 0, int, 0)
			DllCall("mouse_event", uint, 1, int, step, int, 0, uint, 0, int, 0)
			Sleep 5	
            cur := cur + step
		}
	
	}
	return
}
#IfWinActive
*/

;return

#L::return
#i::return
#a::return
#f::return
#b::return
#s::return
#k::return
#;::return
#p::return
#u::return
#h::return				; 자음모음이 분리되는 원인인 Window+H 단축키 (한국어지원안돼서)도 비활성화합니다	


/*
;오버워치 실행중 일 경우 LWin 윈도우키 비활성화
#IfWinExist, 오버워치
;윈도우키 비활성화
LWin::
{
    return
}
*/ 


;임시로 연습장 제거 
/*
LAlt & ~1::
{
	IfWinExist, 오버워치
	{

		WinActivate, 오버워치
	
		;MouseMove, -100, 0, , R

        ;(참고)화면 풀사이즈로 이동할 때의 좌표
        ;DllCall("mouse_event", uint, 1, int, 840, int, 490, uint, 0, int, 0)

        ;(0, 0)좌표로 옮겨줍니다
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;Sleep 200

        ;"플레이"클릭
        ;(100, 300)좌표로 옮겨줍니다. 그리고 클릭
        ;DllCall("mouse_event", uint, 1, int, 1, int, 1, uint, 0, int, 0)
        DllCall("mouse_event", uint, 1, int, 50, int, 130, uint, 0, int, 0)
        Sleep 1000
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 1500

        ;"아케이드 클릭"
        DllCall("mouse_event", uint, 1, int, 300, int, 100, uint, 0, int, 0)
        Sleep 1000
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 1500

        ;"게임만들기 클릭"
        DllCall("mouse_event", uint, 1, int, 400, int, 100, uint, 0, int, 0)
        Sleep 1000
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        Sleep 1000
        

        ;"설정" 클릭
        ;(0, 0)좌표로 옮겨줍니다
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 660, int, 150, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"모드" ( << 설정 ) 클릭
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 560, int, 150, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"연습모드" 클릭
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 560, int, 250, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"연습모드 > 활성화" 클릭
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 470, int, 115, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"한단계위로"
        Send, {ESC}
        Sleep 500

        ;"한단계위로"
        Send, {ESC}
        Sleep 500



        ;"전장" ( << 설정 ) 클릭
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 120, int, 250, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"모두끄기" ( << 전장) 클릭

        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 590, int, 90, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"리장타워" 활성화 클릭
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 475, int, 230, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"한단계위로"
        Send, {ESC}
        Sleep 500

        ;"한단계위로"
        Send, {ESC}
        Sleep 500




        ;"인공지능 추가"
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 795, int, 150, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"루시우 우리편 추가"
        Send, {Space}
        Sleep 20

        Loop, 3
        {
            Send, {Down}
            Sleep 20
        }

        Send, {Space}
        Sleep 20

        Loop, 2
        {
            Send, {Down}
            Sleep 20
        }
        Loop, 9
        {
            Send, {Left}
            Sleep 20
        }

        Loop, 3
        {
            Send, {Down}
            Sleep 20
            Send, {Space}
            Sleep 20
        }
    
        Sleep 500



        ;"솔져 3명 적팀 추가"
        DllCall("mouse_event", uint, 1, int, -1900, int, -1200, uint, 0, int, 0)
        ;설정으로 이동
        DllCall("mouse_event", uint, 1, int, 795, int, 150, uint, 0, int, 0)
        Sleep 20
        ;클릭
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        Sleep 20
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
        Sleep 500

        ;"솔져 3명 추가"
        Send, {Space}
        Sleep 20

        ;솔져
        Loop, 8
        {
            Send, {Down}
            Sleep 20
        }

        Send, {Space}
        Sleep 20

        Loop, 2
        {
            Send, {Down}
            Sleep 20
        }
        
        ;(8->3으로 줄이기)
        Loop, 6
        {
            Send, {Left}
            Sleep 20
        }
        Send, {Down}
        Sleep 20
        Send, {Space}
        Sleep 20
        Send, {Down}
        Sleep 20
        Send, {Down}
        Sleep 20
        Send, {Space}
        Sleep 20
        Send, {Down}
        Sleep 20
        Send, {Space}
        Sleep 20

        Sleep 500


        ;"시~~~~~~작!!!!!!!!!!!!"

		;Loop, 10
		;{
			;DllCall("mouse_event", uint, 1, int, 303, int, 0, uint, 0, int, 0)
			;Sleep 15	
		;}
	
	}
	return
}
*/
#IfWinExist

/*
; 볼륨 조절 단축키를 추가합니다
#F3::Send {Volume_Up 1}
#F4::Send {Volume_Down 1}
*/

; win + alt + up
;stockstory 크기세팅
#!Up::
{
    /*
	IfWinExist, FmpPlayerStockStory
	{
		;WinActivate
		WinMove, FmpPlayerStockStory, , 365, 54,1280, 966
	}

	IfWinExist, ahk_class PuTTY
	{
		;WinActivate
		WinMove, ahk_class PuTTY, , 572, 170 
	}
    */

	;IfWinExist, ahk_class _KiWoomClass
	;IfWinExist, ahk_class _KiWoomClass
	IfWinExist, ahk_class _NKHeroMainClass
	{
		;;WinActivate
		;WinMove, ahk_class _KiWoomClass, , -1920, 0, 3840, 1160
		;WinMove, ahk_exe nkrunlite.exe, , -1920, 0, 3840, 1160
		WinMove, ahk_class _NKHeroMainClass, , -1920, 0, 3840, 1160
	}

    ;두개를 띄우기에 레이아웃 망칠 확률이 높다
    /*
	IfWinExist, ahk_class _NKHeroMainClass
	{
		;WinActivate
		WinMove, ahk_class _NKHeroMainClass, , -1920, 0, 3840, 1160
	}
    */


    /*
	IfWinExist, Pro Evolution Soccer 2015
	{
		;WinActivate
		WinMove, Pro Evolution Soccer 2015, , 170, 200
	}	
    */

    /*
	IfWinExist, ahk_class MozillaWindowClass
	{
		;WinActivate
		WinMove, ahk_class MozillaWindowClass, , 390, 55, 1400, 980 
	}	
    */

	IfWinExist, MINGW32 
	{
		;WinActivate
		WinMove, MINGW32, , 460, 55, 1200, 1100 
	}	
    
	;IfWinExist, ahk_class mintty
	IfWinExist, ahk_exe mintty.exe
	{
		;WinActivate
		;WinMove, ahk_class mintty, , 520, 135, 1100, 870 
		;WinMove, ahk_class mintty, , 500, 130, 1200, 900 
        ;
		;WinMove, ahk_class mintty, , 563, 187, 1200, 900 

		;WinMove, ahk_class mintty, , 450, 87, 1200, 930 
		;WinMove, ahk_class mintty, , 398, 45, 1210, 977 
		WinMove, ahk_exe mintty.exe, , 398, 45, 1210, 977 
	}	
	IfWinExist, ahk_exe WindowsTerminal.exe
	{
		;WinActivate
		;WinMove, ahk_class mintty, , 520, 135, 1100, 870 
		;WinMove, ahk_class mintty, , 500, 130, 1200, 900 
        ;
		;WinMove, ahk_class mintty, , 563, 187, 1200, 900 
		;WinMove, ahk_exe WindowsTerminal.exe, , 450, 80, 1200, 1010
		;WinMove, ahk_exe WindowsTerminal.exe, , 480, 80, 1050, 950
		WinMove, ahk_exe WindowsTerminal.exe, , 410, 60, 1150, 1005 
	}	

    
	IfWinExist, ahk_class ConsoleWindowClass
	{
		;WinActivate
		;WinMove, ahk_class mintty, , 520, 135, 1100, 870 
		;WinMove, ahk_class mintty, , 500, 130, 1200, 900 
        ;
		;WinMove, ahk_class mintty, , 563, 187, 1200, 900 
		WinMove, ahk_class ConsoleWindowClass, , 400, 170, 1220, 900 
	}	
	;IfWinExist, ahk_class mintty
	IfWinExist, ahk_class mintty
	{
		;WinActivate
		;WinMove, ahk_class mintty, , 520, 135, 1100, 870 
		;WinMove, ahk_class mintty, , 500, 130, 1200, 900 
        ;
		;WinMove, ahk_class mintty, , 563, 187, 1200, 900 
		WinMove, Cmder, , 400, 170, 1220, 900 
	}	
	IfWinExist, ahk_class Vim
	{
		WinMove, ahk_class Vim, , 566, 83, 1160, 992 
	}	

	return
}

;마우스 스크롤 휠 라인수 수정 1 --> 5
#!Down::
{
	Sleep 400
	Send, {LWin}
	Sleep 100
	MouseClick, Left, 91, 151

	WinWait, 마우스 속성
		WinActivate
	Sleep 500
	
	Send, {Tab}
	Sleep 100
	Send, {5}
	Sleep 100
	Send, {Enter}
    return
	
/*
	;한영키가 눌린지 안눌린지 모르니 영어 한글 두번 반복하면 됨
	Sleep 400
	Send, {LWin}
	Sleep 100
	Send, {vk15}
	Sleep 20
	SendRaw, {a}{k}{d}{n}{t}{m}
	Sleep 20
	Send, {Enter}
	Sleep 400
	Send, {LWin}
	Sleep 100
	Send, {vk15}
	Sleep 20
	Send, {a}{k}{d}{n}{t}{m}
	Sleep 20
	Send, {Enter}

	WinWait, 마우스 속성
		WinActivate
	Sleep 500
	
	WinMove, 마우스 속성, , 0, 0
	Sleep 100
	MouseClick, Left, 210, 45 	
	Sleep 100
	;위 화살표 클릭하여 숫자를 5까지 올림
	MouseClick, Left, 217, 135 	
	Sleep 50
	MouseClick, Left, 217, 135 	
	Sleep 50
	MouseClick, Left, 217, 135 	
	Sleep 50
	MouseClick, Left, 217, 135 	
	Sleep 200 

	Send, {Enter}
	Sleep 100
	return
*/
}

/* 자꾸 창 옮기기의 오타가 생겨서 안 쓰는 키이니 빼놓기로
;일봉차트 사이즈 유타일리식 디폴트화
#!Left::
{
	;0점교정
	IfWinExist, ahk_class _KiWoomClass
	{
		WinActivate
		WinMove, ahk_class _KiWoomClass, , -1920, 0 
	}
	
	;일봉 전체 뷰 전환
	MouseMove, -4000, -4000, 0, R
	Sleep 100
	MouseMove, 2850, 122, 5, R
	Sleep 100
	Send, {LButton Down}
	MouseMove, -200, 0, 5, R
	Send, {LButton Up}
	Sleep 100

	;1차 확대
	MouseMove, -4000, -4000, 0, R
	Sleep 100
	MouseMove, 3093, 122, 5, R
	Sleep 100
	Send, {LButton Down}
	MouseMove, 252, 0, 5, R
	Send, {LButton Up}
	Sleep 100

	;2차 확대
	MouseMove, -4000, -4000, 0, R
	Sleep 100
	;MouseMove, 2718, 122, 5, R
	MouseMove, 2681, 122, 5, R
	Sleep 100
	Send, {LButton Down}
	;MouseMove, 630, 0, 5, R
	MouseMove, 667, 0, 5, R
	Send, {LButton Up}
	Sleep 100

	
	return
}
*/

#!Enter::
{
	Send {Enter}
	return
}

; win10 으로 업데이트후 할 필요없어보여 임시제거 

/*
LWin & E::
{
	;Run explorer F:\
	Run explorer ;c:\Users\utylee 
	return
}
*/

/*

; 관심종목 1
#!z::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	; 기존 0995 화면용
	;MouseMove, 24 + 1920, 81, 0
	; 새로운 좌측 모니터로 옮긴 0994용 화면용
	MouseMove, 1400, 81, 0
	Sleep 20
	Send {LButton}
	;MouseClick, Left, 2058, 81
	return
}

; 관심종목 2
#!x::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	; 기존 0995 화면용
	;MouseMove, 57 + 1920, 81, 0
	; 새로운 좌측 모니터로 옮긴 0994용 화면용
	MouseMove, 1430, 81, 0
	Sleep 20
	Send {LButton}
	
	;MouseClick, Left, 2095, 81 
	return
}

; 잔고보기
#!a::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 875, 53
	return
}

; 미체결보기
#!s::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 930, 53
	return
}

; 당일매매보기
#!d::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 1060, 53
	return
}



; 선물지수보기
#!9::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 33, 481
	MouseMove, 0, -87, R
	return
}

; 코스닥지수 보기
#!0::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 33, 855 
	MouseMove, 0, -45, R
	return
}

; 매수시세 감시 보기
#!BackSpace::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 730, 70 
	return
}

; 다우지수 보기
#!1::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 110, 200 
	Sleep 80
	MouseMove, 42, 80, 0 
	Sleep 30
	Send {LButton}
	return
}

; 나스닥지수 보기
#!2::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 110, 200 
	Sleep 80
	MouseMove, 95, 80, 0 
	Sleep 30
	Send {LButton}
	return
}

; 독일DAX지수 보기
#!3::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 110, 200 
	Sleep 80
	MouseMove, 354, 80, 0 
	Sleep 30
	Send {LButton}
	return
}
*/

/*
; #!F4 지수캡쳐를 변경함
; 영국지수 보기
#!4::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 110, 200 
	Sleep 80
	MouseMove, 600, 80, 0 
	Sleep 30
	Send {LButton}
	return
}
*/

/*

; 일본니께이지수 보기
#!5::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 40
	MouseClick, Left, 110, 200 
	Sleep 40
	MouseMove, 250, 80, 0 
	Sleep 30
	Send {LButton}
	return
}

; 상해종합지수 보기
#!6::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 40
	MouseClick, Left, 110, 200 
	Sleep 40
	MouseMove, 500, 80, 0 
	Sleep 30
	Send {LButton}
	return
}

#!y::
{
	IfWinExist, FmpPlayerStockStory
		WinActivate
	Sleep 100

	return
}

;관심종목리스트 최상단 항목 클릭
#!u::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100

	; 기존 0995용
	;MouseClick, Left, 2200, 123
	; 새로운 0994용
	MouseClick, Left, 1541, 128
	return
}
;

*/


/*
~ / & 1::
{
     
    ;GetKeyState, state, LWin
    ;if state = D
    ;{
    ;    slash_toggle := 1
	;    send {LWin Down}{F1}
    ;}
    ;
    slash_toggle := 1
    send {F1}
	return
}
/::
{
    return
}

/ Up::
{
    if slash_toggle = 1
    {
        slash_toggle := 0 
        return
    }
    else if slash_toggle = 0
    {
        send {/}
        slash_toggle := 0
        return
    }
}

~S & J::
{
    s_toggle := 1
	send {Down}
	return
}
~S & K::
{
    s_toggle := 1
	send {Up}
	return
}
~S & H::
{
    s_toggle := 1
	send {Left}
	return
}

~S & L::
{
    s_toggle := 1
	send {Right}
	return
}

S::
{
    return
}


S Up::
{
    if s_toggle = 1
    {
        s_toggle := 0 
        return
    }
    else if s_toggle = 0
    {
        send {s}
        s_toggle := 0
        return
    }
}

*/



;SC029::ESC
;^SC029::Send, `` 
;+SC029::SendRaw, ~ 

LWin & Tab::AltTab


/*

~*LWin & Tab::
{
    wintab_toggle := 1
    Send, {LAlt Down}
    Sleep 10
    Send, {Tab}
    Send, {LWin Up}
    return
}
LAlt::
{
    Send, {LAlt}
    return
}

LWin::
{
    Send, {LWin}
    return
}

$LWin Up::
{   
    MsgBox, ㅋㅋㅋ
    GetKeyState, state, LAlt
    if state = D
    {
        Send, {LAlt up}
    } 
    if wintab_toggle = 1 
    {
        wintab_toggle := 0
        Send, {LAlt up}
        Send, {Lwin up}
        return
    }
    Send, {Lwin Up}
    return
}
*/

/*
#IfWinActive ahk_class MozillaWindowClass 
;#L::return
#L::^L
#i::
{
    Send, ^{i}
    return
}
#b::
{
    Send, ^{b}
    return
}
#d::
{
    Send, ^{d}
    return
}
#t::
{
    Send, ^{t}
    return
}
#s::
{
    Send, ^{s}
    return
}
#w::
{
    Send, ^{w}
    return
}
#o::
{
    Send, ^{o} 
    return
}

#IfWinActive
*/

/*
~ / & =::
{
    slash_toggle := 1
    send, {Volume_Up 2}
    return
}
~ / & -::
{
    slash_toggle := 1
    send, {Volume_Down 2}
    return
}
~ / & 0::
{
    slash_toggle := 1
    send, {Volume_Mute}
    return
}


~ / & 1::
{
    ;GetKeyState, state, LAlt
    ;if state = D
    ;{
    ;    slash_toggle := 1
	;    send {LAlt Down}{F4}
    ;}
    
    slash_toggle := 1
    send {F1}
	return
}
~ / & 2::
{
    ;GetKeyState, state, LAlt
    ;if state = D
    ;{
    ;    slash_toggle := 1
	;    send {LAlt Down}{F4}
    ;}
    
    slash_toggle := 1
    send {F2}
	return
}
!$::
{
    send {LAlt Down}{F4}
    sleep, 30
    send {LAlt Up}{F4}
    return
}

^+2::Send, {F2}
^!2::Send, {F2}

#+4::Send, !{F4}
*/



; Alt+/+4 를 Alt+F4로 설정. 그러나 Win+Q 를 mac처럼 종료명령으로 사용하면 더 편할 듯 하다
/*
~ / & 4::
{
    slash_toggle := 1
    GetKeyState, state, LAlt
    if state = D
    {
	    ;send {LAlt Down}{F4}
	    send {LAlt Down}{F4}
        sleep, 30
	    send {LAlt Up}{F4}
        sleep, 30
        send {/ Up}
        return
    }
    
    send,{F4}
	return
}
*/

/* planck 키보드 조합누르다가 자꾸 오타발생해서 창 닫혀서 임시로 제거하기로 
#Q::
{
    send !{F4}
	return
}
*/

/* planck 로 바꾸면서 제거하기로.. 

~ / & 5::
{
    ;GetKeyState, state, LAlt
    ;if state = D
    ;{
    ;    slash_toggle := 1
	;    send {LAlt Down}{F4}
    ;}
    
    slash_toggle := 1
    send {F5}
	return
}
; shift insert
~ / & I::
{
    slash_toggle := 1
    GetKeyState, state, LCtrl
    if state = D
    {
        ; ctrl + insert ( copy ) 버튼
        send {Ctrl Down}{Insert}
        sleep, 30
        send {Ctrl Up}
        return
    }

    send {Shift Down}{Insert}
    Sleep, 30
    send {Shift Up}
	return
}
; shift printscreen 
~ / & P::
{
    slash_toggle := 1
      
    //GetKeyState, state, LCtrl
    //if state = D
    //{
        //; ctrl + insert ( copy ) 버튼
        //send {Ctrl Down}{Insert}
        //sleep, 30
        //send {Ctrl Up}
        //return
    //}
    //

    send {Shift Down}{PrintScreen}
    Sleep, 30
    send {Shift Up}
	return
}


/::
{
    return
}
/ Up::
{
    if slash_toggle = 1
    {
        slash_toggle := 0 
        return
    }
    else if slash_toggle = 0
    {
        send {/}
        slash_toggle := 0
        return
    }
}

*/

/*
#+j::
{
    GetKeyState, state, C   
    if state = D
    {
        Send {PgDn}
        return
    }
	send {Down}
	return
}
#+k::
{
    GetKeyState, state, C   
    if state = D
    {
        Send {PgUp}
        return
    }
	send {Up}
	return
}
#+h::
{
    GetKeyState, state, C   
    if state = D
    {
        Send {Home}
        return
    }
	send {Left}
	return
}
#+l::
{
    GetKeyState, state, C   
    if state = D
    {
        Send {End}
        return
    }
	send {Right}
	return
}


+!u::
{
	send {Home}
	return
}


+!i::
{
	send {End}
	return
}



*/



#IfWinExist MINGW32
#1::
{
    IfWinExist, MINGW32
        WinActivate

    return
}
#IfWinExist

#IfWinExist ahk_class Vim
#2::
{
    IfWinExist, ahk_class Vim
        WinActivate
    
    return
}
#IfWinExist

; 자꾸 잘못눌려서 Win+4가 다른 앱이 실행되어서 그냥 단축키 두개를 같이 쓰게끔 바꾸었습니다
#IfWinExist ahk_class MozillaWindowClass
#3::
{
    IfWinExist, ahk_class MozillaWindowClass
        WinActivate
    
    return
}
#IfWinExist


/*
;#IfWinExist ahk_class _KiWoomClass
#IfWinExist ahk_class _NKHeroMainClass
#5::
{
	IfWinExist, ahk_class _NKHeroMainClass
		WinActivate

    return
}
#IfWinExist
*/

/*
;영웅문이 틀어져있을 경우
#IfWinActive, ahk_class _NKHeroMainClass

; 현재종목을 관심종목 관종으로 추가
^0::
{
    MouseGetPos, posX, posY
    cur_num := CheckPos(posX, posY)
    if(cur_num == 10)
    {
        start := NumToSubjectPos(cur_num)
        target := {"x":-1100 , "y":866} 

        DragProc(start, target)
        ;원래 커서 포지션으로 옮기는 루틴을 추가해줍니다
        Sleep, 50
        MouseMove, posX, posY
    }

    return
}

;키움HTS에서 삼등분선 자동 메뉴 선택
#^1::
{
	IfWinExist, ahk_class _NKHeroMainClass
		WinActivate
    Send, {RButton}
    Sleep 50
    Send, {l}
    Sleep 50
    Loop, 9 
    {
        Send, {Down}
        Sleep, 10
    }
    Send, {Enter}
    return
}
;#IfWinActive, Utylee Asset
*/

/*
; [호가창만으로 거래 0999저장화면 ver] 
; alt 드래그 시 두 호가 상호 교환


; 0999 저장화면에서 현재 커서의 위치가 어떤 호가를 가르키고 있는지 판단합니다
CheckPos(posX, posY)
{
    ret := 0

    ;;;잔고/당일매매 영역일 경우
    ;if (posX >= 1920 + 620) and (posX <= 1920 + 1223) and (posY >= 820 ) and (posY <= 1076)
    ;if (posX >= 620) and (posX <= 1223) and (posY >= 820 ) and (posY <= 1076)
    ;{
    ;    ret := 77 
    ;}
    
    ;(추가)좌측 큰 차트일 경우
    ;else if (posX >= 671) and (posX <= 1193) and (posY >=9) and (posY <= 403)
    ;if (posX >= 671 - 1920) and (posX <= 1193 - 1920) and (posY >=9) and (posY <= 403)
    If (posX >= 650 - 1920) and (posX <= 1150 - 1920) and (posY >=9) and (posY <= 403)
    {
        ret := 99
    }
	;(추가)좌측 15분 차트도 거꾸로 보기 단축키가 있으면 편할 것 같아 추가함
    else if (posX >= 20 - 1920) and (posX <= 586 - 1920) and (posY >=90) and (posY <= 305)
	{
        ret := 98
	}

	;(추가)xbutton1 에서 다시 체크하던 좌표 루틴을 여기로 넣습니다. 번호는 8282창이니 82로 ^^
    else If (posX >= 1150 - 1920) and (posX <= 1720 - 1920) and (posY >=5) and (posY <= 518)
	{ 
		ret := 82
	}

    ;(추가) 좌측상단 검색식 연동 차트를 우측 호가로 이동할 때를 대비해 그 창 포지션도 인식하도록 추가
    else if (posX >= 5) and (posX <= 625) and (posY >= 10) and (posY <= 410)
    {
        ret := 88
    }
    ;(추가) 관심종목 창
    ; 10이상인 다른 좌측 창 등 드래그 문제를 제외하기 위해 얘는 좀 작은 숫자로 했습니다
    else if (posX >= 623 - 1920) and (posX <= 1195 - 1920) and (posY >= 757) and (posY <= 1130)
    {
        ret := 11
    }
    ;(추가) 우측 중앙 현재가 창
    ; 해당 창에서의 단축키 이동도 좀 필요한 것 같았다.

    ; (또 변경)엇 있었네. 호가창 이동에서 stop주문으로의 이동으로 변경
    else if (posX >= 6) and (posX <= 615 ) and (posY >= 420) and (posY <= 590)
    {
        ret := 10
    }


    ; (추가) 조건검색 실시간 일경우
    ; 검색창에서 바로 뒤로 버튼 눌러서 포커스 종목으로 변경
    else if (posX >= 20) and (posX <= 445 ) and (posY >= 965) and (posY <= 1075)
    {
        ret := 12
    }

    ;--------------------------

    ;첫번째 호가 위치일 경우  
    ;else if (posX >= 1920) and ( posX <= 1920+ 615) and (posY <= 410)
    ;else if (posX >= 0) and ( posX <= 615) and (posY <= 410)
    ;굵은폰트 및 호가창 몰아놓음으로 바뀐 좌표에 따라 로직 변경
    ;else if (posX >= 627) and ( posX <= 935) and (posY <= 430)
    ; 0998 순수체결거래 템플릿
    ;else if (posX >= 628) and ( posX <= 890) and (posY <= 428)
    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    else if (posX >= 625) and ( posX <= 930) and (posY >= 10) and (posY <= 435) 
    {
        ret := 1
    }
    ; 2nd 호가창 위치일 경우
    ;else if (posX >= 1920 + 616) and ( posX <= 1920+ 1225) and (posY <= 410)
    ;else if (posX >= 616) and ( posX <= 1225) and (posY <= 410)
    ;else if (posX >= 936) and ( posX <= 1230) and (posY <= 430)
    ;else if (posX >= 930) and ( posX <= 1190) and (posY <= 428)
    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    else if (posX >= 933) and ( posX <= 1240) and (posY >= 10) and (posY <= 435)
    {
        ret := 2
    }

    ; 3rd 호가창 위치일 경우
    ;else if (posX >= 1920 + 1226) and ( posX <= 1920+ 1841) and (posY <= 410)
    ;else if (posX >= 1226) and ( posX <= 1841) and (posY <= 410)
    ;else if (posX >= 1231) and ( posX <= 1540) and (posY <= 430)
    ;else if (posX >= 1235) and ( posX <= 1500) and (posY <= 428)
    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    else if (posX >= 1250) and ( posX <= 1510) and (posY >= 10) and (posY <= 430)
    {
        ;-->
        ret := 3
    }

    ; 4th 호가창 위치일 경우
    ;else if (posX >= 1920) and ( posX <= 1920+ 615) and (posY >= 411) and (posY <= 812)
    ;else if (posX >= 0) and ( posX <= 615) and (posY >= 411) and (posY <= 812)
    ;else if (posX >= 1541) and ( posX <= 1848) and (posY <= 430)
    ;else if (posX >= 1542) and ( posX <= 1805) and (posY <= 428)
    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    else if (posX >= 1540) and ( posX <= 1805) and (posY >= 10) and (posY <= 430)
    {
        ;-->
        ret := 4
    }



    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    ; 5th 호가창 위치일 경우
    ;else if (posX >= 1920 + 616) and ( posX <= 1920+ 1225) and (posY >= 411) and (posY <= 812)
    ;else if (posX >= 616) and ( posX <= 1225) and (posY >= 411) and (posY <= 812)
    ;else if (posX >= 627) and ( posX <= 935) and (posY >= 431) and (posY <= 857)
    ;else if (posX >= 628) and ( posX <= 890) and (posY >= 433) ;and (posY <= 867)
    else if (posX >= 650) and ( posX <= 915) and (posY >= 440) ;and (posY <= 867)
    {
        ;-->
        ret := 5
    }

    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    ; 6th 호가창 위치일 경우
    ;else if (posX >= 1920 + 1226) and ( posX <= 1920+ 1841) and (posY >= 411) and (posY <= 812)
    ;else if (posX >= 1226) and ( posX <= 1841) and (posY >= 411) and (posY <= 812)
    ;else if (posX >= 936) and ( posX <= 1230) and (posY >= 431) and (posY <= 857)
    ;else if (posX >= 927) and ( posX <= 1190) and (posY >= 433) ;and (posY <= 867)
    else if (posX >= 950) and ( posX <= 1220) and (posY >= 440) ;and (posY <= 867)
    {
        ;-->
        ret := 6
    }
    ; 7th 호가창 위치일 경우
    ;else if (posX >= 1920) and ( posX <= 1920+ 615) and (posY >= 813)
    ;else if (posX >= 0) and ( posX <= 615) and (posY >= 813)
    ;else if (posX >= 1231) and ( posX <= 1540) and (posY >= 431) and (posY <= 857)
    ;else if (posX >= 1234) and ( posX <= 1492) and (posY >= 433) ; and (posY <= 865)
    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    else if (posX >= 1245) and ( posX <= 1510) and (posY >= 435) ; and (posY <= 865)
    {
        ;-->
        ret := 7
    }
    ; 8th 호가창 위치일 경우
    ;else if (posX >= 1920 + 1226) and (posY >= 813) 
    ;else if (posX >= 1226) and (posY >= 813) 
    ;else if (posX >= 1541) and ( posX <= 1848) and (posY >= 431) and (posY <= 857)
    ;else if (posX >= 1545) and ( posX <= 1803) and (posY >= 438) ; and (posY <= 870)
    ; 9998 화면번호로 호가그래프를 보기 위해 1,2를 호가그래프 창으로 변경했습니다
    else if (posX >= 1540) and ( posX <= 1805) and (posY >= 435) ; and (posY <= 865)
    {
        ;-->
        ret := 8
    }

    ;MsgBox, %ret%
    return ret 
}

; 각 호가창 내 우상단 순환 버튼 좌표 반납
NumToRightUpPos(N)
{
    Pos := {"x" : 0, "y" :0}

    if (N == 1) 
        Pos := {"x" : 902, "y" : 24}
    else if (N == 2)
        Pos := {"x" : 1210, "y" : 24}
    else if (N == 3)
        Pos := {"x" : 1507, "y" : 24}
    else if (N == 4)
        Pos := {"x" : 1816, "y" : 24}
    else if (N == 5) 
        Pos := {"x" : 902, "y" : 450}
    else if (N == 6) 
        Pos := {"x" : 1200, "y" : 450}
    else if (N == 7) 
        Pos := {"x" : 1509, "y" : 450}
    else if (N == 8) 
        Pos := {"x" : 1818, "y" : 450}

    return Pos
}

; [0999] 호가넘버를 전달받으면 해당 호가의 종목코드 위치의 x, y 좌표셋을 반납합니다
; [0998] 순수체결창거래 템플릿에 따라 체결창으로 인해 종목명 위치 바뀜
NumToSubjectPos(N)
{
    Pos := {"x" : 0, "y" :0}
    MouseGetPos, i, j

    if (N == 1) 
        ;Pos := {"x" : 1920 + 30, "y" : 25}
        ;Pos := {"x" : 30, "y" : 25}
        ;Pos := {"x" : 656, "y" : 23}
        ;Pos := {"x" : 720, "y" : 28}
        ;Pos := {"x" : 650, "y" : 23}
        Pos := {"x" : 650, "y" : 28}
    else if (N == 2)
        ;Pos := {"x" : 1920 + 642, "y" : 25}
        ;Pos := {"x" : 642, "y" : 25}
        ;Pos := {"x" : 961, "y" : 23}
        ;Pos := {"x" : 1020, "y" : 28}
        ;Pos := {"x" : 960, "y" : 23}
        Pos := {"x" : 960, "y" : 28}
    else if (N == 3)
        ;Pos := {"x" : 1920 + 1260, "y" : 25}
        ;Pos := {"x" : 1260, "y" : 25}
        ;Pos := {"x" : 1258, "y" : 23}
        ;Pos := {"x" : 1326, "y" : 28}
        ;Pos := {"x" : 1340, "y" : 23}
        Pos := {"x" : 1340, "y" : 28}
    else if (N == 4)
        ;Pos := {"x" : 1920 + 30, "y" : 425}
        ;Pos := {"x" : 30, "y" : 425}
        ;Pos := {"x" : 1572, "y" : 23}
        ;Pos := {"x" : 1635, "y" : 28}
        ;Pos := {"x" : 1630, "y" : 23}
        Pos := {"x" : 1630, "y" : 28}
    else if (N == 5) 
        ;Pos := {"x" : 1920 + 642, "y" : 425}
        ;Pos := {"x" : 642, "y" : 425}
        ;Pos := {"x" : 656, "y" : 450}
        ;Pos := {"x" : 720, "y" : 447}
        ;Pos := {"x" : 745, "y" : 452}
        Pos := {"x" : 745, "y" : 457}
    else if (N == 6) 
        ;Pos := {"x" : 1920 + 1260, "y" : 425}
        ;Pos := {"x" : 1260, "y" : 425}
        ;Pos := {"x" : 961, "y" : 450}
        ;Pos := {"x" : 1020, "y" : 447}
        ;Pos := {"x" : 1045, "y" : 452}
        Pos := {"x" : 1045, "y" : 457}
    else if (N == 7) 
        ;Pos := {"x" : 1920 + 30, "y" : 825}
        ;Pos := {"x" : 30, "y" : 825}
        ;Pos := {"x" : 1258, "y" : 450}
        ;Pos := {"x" : 1325, "y" : 450}
        ;Pos := {"x" : 1335, "y" : 450}
        Pos := {"x" : 1335, "y" : 457}
    else if (N == 8) 
        ;Pos := {"x" : 1920 + 1260, "y" : 825}
        ;Pos := {"x" : 1260, "y" : 825}
        ;Pos := {"x" : 1572, "y" : 450}
        ;Pos := {"x" : 1630, "y" : 447}
        ;Pos := {"x" : 1630, "y" : 450}
        Pos := {"x" : 1630, "y" : 457}
    ;우측 중앙 현재가 창
    else if (N == 10) 
        ;Pos := {"x" : 1920 + 1260, "y" : 825}
        ;Pos := {"x" : 1260, "y" : 825}
        ;Pos := {"x" : 1572, "y" : 450}
        Pos := {"x" : 34, "y" : 433}
    ;좌측상단 검색연동 현재가창
    else if (N == 88) 
        Pos := {"x" : 35, "y" : 27}
    ;관심종목 창
    else if (N == 11) 
        Pos := {"x" : 800 - 1920, "y" : 850}
    ;조건검색 실시간 창
    else if (N == 12) 
        ;MouseGetPos, i, j
        Pos := {"x" : i , "y" : j}

    return Pos
}

;[0999] 호가창 내 차트의 분<-->틱 교환을 위한 함수
NumToTickPos(N)
{
    Pos := {"x" : 0, "y" : 0}

    if (N == 1) 
        ;Pos := {"x" : 1920 + 318, "y" : 215}
        Pos := {"x" : 318, "y" : 215}
    else if (N == 2)
        ;Pos := {"x" : 1920 + 935, "y" : 215}
        Pos := {"x" : 935, "y" : 215}
    else if (N == 3)
        ;Pos := {"x" : 1920 + 1550, "y" : 215}
        Pos := {"x" : 1550, "y" : 215}
    else if (N == 4)
        ;Pos := {"x" : 1920 + 318, "y" : 616}
        Pos := {"x" : 318, "y" : 616}
    else if (N == 5) 
        ;Pos := {"x" : 1920 + 935, "y" : 616}
        Pos := {"x" : 935, "y" : 616}
    else if (N == 6) 
        ;Pos := {"x" : 1920 + 1550, "y" : 616}
        Pos := {"x" : 1550, "y" : 616}
    else if (N == 7) 
        ;Pos := {"x" : 1920 + 318, "y" : 1012}
        Pos := {"x" : 318, "y" : 1012}
    else if (N == 8) 
        ;Pos := {"x" : 1920 + 1550, "y" : 1012}
        Pos := {"x" : 1550, "y" : 1012}
    ;좌측 차트용으로 추가
    else if (N == 99)
        ;Pos := {"x" : 1085, "y" : 30}
        Pos := {"x" : 1085 - 1920, "y" : 30}
    ;잔고/당일매매 전환
    else if (N == 77)
        ;Pos := {"x" : 1920 + 663, "y" : 830}
        Pos := {"x" : 663, "y" : 830}

    return Pos
}

;[0999] 호가창 내 차트의 분<-->틱 교환을 위한 함수
NumToMinuPos(N)
{
    Pos := {"x" : 0, "y" : 0}

    if (N == 1) 
        ;Pos := {"x" : 1920 + 356, "y" : 215}
        Pos := {"x" : 356, "y" : 215}
    else if (N == 2)
        ;Pos := {"x" : 1920 + 973, "y" : 215}
        Pos := {"x" : 973, "y" : 215}
    else if (N == 3)
        ;Pos := {"x" : 1920 + 1588, "y" : 215}
        Pos := {"x" : 1588, "y" : 215}
    else if (N == 4)
        ;Pos := {"x" : 1920 + 356, "y" : 616}
        Pos := {"x" : 356, "y" : 616}
    else if (N == 5) 
        ;Pos := {"x" : 1920 + 973, "y" : 616}
        Pos := {"x" : 973, "y" : 616}
    else if (N == 6) 
        ;Pos := {"x" : 1920 + 1588, "y" : 616}
        Pos := {"x" : 1588, "y" : 616}
    else if (N == 7) 
        ;Pos := {"x" : 1920 + 356, "y" : 1012}
        Pos := {"x" : 356, "y" : 1012}
    else if (N == 8) 
        ;Pos := {"x" : 1920 + 1588, "y" : 1012}
        Pos := {"x" : 1588, "y" : 1012}
    ;좌측 차트용으로 추가
    else if (N == 99)
        ;Pos := {"x" : 1065, "y" : 30}
        Pos := {"x" : 1065 - 1920, "y" : 30}
    ;잔고/당일매매 전환
    else if (N == 77)
        ;Pos := {"x" : 1920 + 730, "y" : 830}
        Pos := {"x" : 730, "y" : 830}

    return Pos
}


; [0999] A좌표셋에서 B좌표셋으로 드래그 합니다
DragProc(A, B)
{
        MouseMove, A.x, A.y 
        Sleep 20
	    Send {LButton Down}
	    Sleep 20
	    MouseMove, B.x, B.y
        Sleep 20
	    Send {LButton Up}
        return
}

; [0999] 저장화면에서 두 호가창의 위치를 변경하는 프로세스입니다
SwapWinProc(A, B)
{
    pos_A := NumToSubjectPos(A)
    pos_B := NumToSubjectPos(B)

    ;최하단의 임시 창의 좌표입니다
    ;pos_temp := {"x" : 1920 + 650, "y" : 1101}
    ;144hz 모니터로 바꾸면서 세로 해상도 줄어들어 임시로 우측차트으로 이동해봄 ^^
    ;pos_temp := {"x" : 1920 + 1900, "y" : 45}
    pos_temp := {"x" : 1900, "y" : 45}

    ;A좌표에서 temp좌표(1920 + 756, 1128)로 드래그 합니다
    DragProc(pos_A, pos_temp)
    Sleep 20

    ;B좌표에서 A좌표로 드래그 합니다
    DragProc(pos_B, pos_A)
    Sleep 20

    ;temp좌표(1920 + 756, 1128)에서 B좌표로 드래그 합니다
    DragProc(pos_temp, pos_B)
    Sleep 20
    return
}

;틱창을 메인으로 옮겼기에 더이상 드래그 스왑은 하지 않습니다
/*
;LButton 하나의 드래그 만으로 종목 스왑에 대해 리서치
~LButton::
{
    MouseGetPos, posX, posY

    cur := CheckPos(posX, posY)

    if (cur == 0)
    {
        clicked_num := 0
        return
    }

    clicked_num := cur
    lbutton_down := 1

    clicked_pos := {"x": posX, "y": posY}

    return
}

LButton Up::
{
    if (lbutton_down == 1)
    {
        ;MsgBox, lbutton_down
        MouseGetPos, posX, posY
        cur_num := CheckPos(posX, posY)
        ;MsgBox, %cur_num%
        ;MsgBox, %clicked_num%


        ;if (cur_num == 0 || clicked_num == 0)
        ;가끔 다른 창을 드래그하다가 막 swap이 되어서, cur_num이 0이 아닌 의미있는 윈도우 좌표에 걸려서
        ;그런것 같아 num이 10 이상인 윈도우들을 제외에 추가하였습니다
        if (cur_num == 0 || cur_num > 12 || clicked_num == 0)
        {
            ;MsgBox, asdf
            clicked_num := 0
            lbutton_down := 0
            return
        }


        if (cur_num != clicked_num)
        {
            ; 검색연동 현재가창을 드래그할 경우 스왑이 아닌 드래그를 실행
            ; 혹은 그 아래 현재가창을 드래그할 경우 스왑이 아닌 드래그를 실행
			; 혹은 현재가창으로의 드래그가 일어나도 스왑이 아닌 드래그만을 실행하게 합니다
            if (clicked_num == 88 || clicked_num == 10 || cur_num == 10)
            {
                start := NumToSubjectPos(clicked_num)
                target := NumToSubjectPos(cur_num)

                DragProc(start, target)
            }
            ; 관종창이 목표일 경우 특정 포지션으로 드래그를 행합니다 
            else if (cur_num == 11) 
            {
                ;MsgBox, asdf 
                start := NumToSubjectPos(clicked_num)
                target := NumToSubjectPos(cur_num)

                DragProc(start, target)
            }
            ; 관종창이 시작일 경우 '현재' 포지션을 그대로 드래그를 행합니다 
            else if (clicked_num == 11)
            {
                ;MsgBox, asdf 
                ;start := NumToSubjectPos(clicked_num)
                start := clicked_pos
                target := NumToSubjectPos(cur_num)

                DragProc(start, target)
            }
			; 9998 호가 그래프 창 추가 변경이 되어 1과 5, 2와 6간의 스왑은 방지합니다
			else if (cur_num == 5 || cur_num == 1) and (clicked_num == 5 || clicked_num == 1)
			{
				clicked_num := 0
				lbutton_down := 0
				return 
			}
			; 9998 호가 그래프 창 추가 변경이 되어 1과 5, 2와 6간의 스왑은 방지합니다
			else if (cur_num == 6 || cur_num == 2) and (clicked_num == 6 || clicked_num == 2)
			{
				clicked_num := 0
				lbutton_down := 0
				return 
			}
            else
            {
                SwapWinProc(cur_num, clicked_num)
                Sleep 20
                MouseMove, posX, posY
            }
        }

    }
    clicked_num := 0
    lbutton_down := 0

    return
}
*/

/*
LAlt & ~LButton::
{   
    MouseGetPos, posX, posY 
    
    ; 좌클릭이 눌려있는 동안 계속 이 loop 안에 머뭅니다
    while GetKeyState("LButton", "P")
    {
        MouseGetPos, new_X, new_Y
        ToolTip, % (posX - new_X)
        ; cpu 100%를 막기위해 넣습니다
        Sleep 10
    }
    
    ; 툴팁 숫자를 제거하기 위해 빈란 표시를 넣습니다.
    tooltip, 

    start := CheckPos(posX, posY)
    end := CheckPos(new_X, new_Y)

    SwapWinProc(start, end)


    return
}
*/

/*
; [호가창만으로 거래] F1 키 등을 분봉 클릭에서 현재 커서의 종목을 각 호가창으로의 할당 드래그로 변경
F1::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37, 60
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F2::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 320, 60
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F3::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 632, 60
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F4::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 949, 60
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F5::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 1262, 60
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F6::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 1577, 60
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F7::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37, 495
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F8::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 320, 495
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F9::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 632, 495
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F10::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 949, 495
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F11::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 1262, 495 
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
F12::
{
    MouseGetPos, posX, posY
	Send {LButton Down}
    MouseMove, 1920 + 37 + 1577, 495
    Sleep 10
	Send {LButton Up}
    Sleep 10
    MouseMove, posX, posY

    return 
}
*/

/*
;F1~F4까지 1,2,3,5분봉 클릭 등을 할당
F1::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        ; 170104-분봉클릭에서 각 호가창 드래그로 변경
        ;MouseClick, Left, 1920 + 453, 563
        ;
	    MouseMove, 508, 484
	    Send {LButton Down}
	    Sleep 20
	    ;MouseMove, 1585, -180, 2, R
	    MouseMove, 1910, 35 - 70, 2, R
	    Send {LButton Up}
        ;-->
        return
}

F2::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        ; 170104-분봉클릭에서 각 호가창 드래그로 변경
        ;MouseClick, Left, 1920 + 453 + 18, 563
        ;
	    MouseMove, 817, 484
	    Send {LButton Down}
	    Sleep 20
	    MouseMove, 1275 + 335, 35 - 70, 2, R
	    Send {LButton Up}
        ;-->
    return
}

F3::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        ; 170104-분봉클릭에서 각 호가창 드래그로 변경
        ;MouseClick, Left, 1920 + 453 + 18 +18, 563
        ;
	    MouseMove, 1135, 484
	    Send {LButton Down}
	    Sleep 20
	    MouseMove,  957+ 335, 35 - 70, 2, R
	    Send {LButton Up}
        ;-->
    return
}

F4::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        ; 170104-분봉클릭에서 각 호가창 드래그로 변경
        ;MouseClick, Left, 1920 + 453 + 18 + 18 + 18, 563
        ;
	    MouseMove, 1440, 484
	    Send {LButton Down}
	    Sleep 20
	    MouseMove,  657+ 335, 35 - 70, 2, R
	    Send {LButton Up}
        ;-->
    return
}

F5::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        ; 170104-분봉클릭에서 각 호가창 드래그로 변경
        ;MouseClick, Left, 1920 + 453 + 18 + 18 + 18 + 18, 563
        
	    MouseMove, 775, 53
	    Send {LButton Down}
	    Sleep 20
	    MouseMove,  1260+ 335, 470 - 70, 2, R
	    Send {LButton Up}
        ;-->
    return
}


F6::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        ; 170104-분봉클릭에서 각 호가창 드래그로 변경
        ;MouseClick, Left, 1920 + 453 + 18 + 18 + 18 + 18 + 18, 563
    return
}

F8::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        MouseClick, Left, 1215, 206 
    return
}

F7::
{
    IfWinExist, ahk_class _KiWoomClass
        WinActivate
        MouseClick, Left, 1920 + 1568, 1094
    return
}

F12::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
        ;MsgBox, "헤헤헤" 
        ;MouseMove, -5000, -5000, R
        ;MouseMove, 1920 + 1044, 606, R
        MouseClick, Right, 1920 + 1044 + 20, 606
        Sleep 10
        Send {s}
        Sleep 10
        Send {s}
        Sleep 10
        Send {Enter}
        ;오류가 종종 생겨서 시뮬레이션 설정 창 뜰 때까지 충분히 기다려줌
        Sleep 300

        ;추가 + 버튼 클릭
        ;MouseClick, Left, 1920 + 58, 683
        MouseMove, 57, 273, R
        Send {LButton}
        Sleep 90

        
        ; 상태유지 버튼 누르고
        MouseMove, 55, 116, R
        Send {LButton}
        Sleep 30

        
        ; 두개 캔들 추가 
        MouseMove, 178 , 116, R
        Send {LButton}
        Sleep 10
        Send {LButton}
        Sleep 10
        
        MouseMove, 178 + 88, 116, R
        Sleep 10
        Send {LButton}
        Sleep 90
        
        
        ;확인 버튼
        MouseMove, 514, 319, R
        Send {LButton}
        Sleep 20
        
        
         
        ;MouseClick, Left, 1920 + 354, 627
        ;Sleep 20
       ; 
       ; ;MouseClick, Left, 1920 + 450, 630 
       ; ;Sleep 20
       ; MouseClick, Left, 1920 + 516, 726
       

       ;
       ; Send {LButton Down}
       ; Sleep 30
       ; Send {LButton Up}
       ; 
        return
}
*/

;Numpad Add 기능 살려두기
/*
NumpadAdd::Send {NumpadAdd}
*/


;가격데이터 시뮬레이션 일봉
;일단 일봉 시뮬레이션은 제거, F1에 할당한 분봉 시뮬레이션에 할당
/*
F12::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	
	Sleep 80
	MouseClick, Right, 3342, 121
	Sleep 200
	;Send {s}
	;Sleep 20
	;Send {s}
	;Sleep 20
	Send {Up}
	Sleep 20
	Send {Up}
	Sleep 20
	Send {Enter}
	Sleep 150

	; 추가+
	MouseMove, -4000, -4000, R
	Sleep 20
	;MouseMove, 1298 + 1920, 694, 2, R
	MouseMove, 1920 + 50, 680, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	; 상태유지
	MouseMove, -4000, -4000, R
	Sleep 20
	;MouseMove, 1482 + 1920, 637, 2, R
	MouseMove, 1920 + 240, 625, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	; 이틀치 추가
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1920 + 360, 625, 2, R
	;MouseMove, 1597, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
	Send {LButton}
	Sleep 50

	; 닫기
	MouseMove, -4000, -4000, R
	Sleep 20
	;MouseMove, 1684, 637, 2, R
	MouseMove, 1920 + 450, 625, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
	
	;확인(닫기)
	MouseMove, -4000, -4000, R
	Sleep 20
	;MouseMove, 1753, 736, 2, R
	MouseMove, 1920 + 510, 725, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	return
}

*/

;타원그리기
/*
#,::
*/
/* [호가창만으로 거래] 때문에 단축키 임시 제거
F9::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;우클릭
	Send {RButton}
	Sleep 500
	
	;l 누르기
	Send {l}
	Sleep 50

	;up key 세번
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;조그마하게 원 드래그
	Send {LButton Down}
	Sleep 20
	;MouseMove, 35, 35, 5, R
	MouseMove, 18, 18, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
	
	return
}

*/

; test테스트용 임시 단축키
/*
F7::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
    ; 161017 하락장세에서 자꾸 수익실현을 못하고 고꾸라짐 방지를 위해 스탑주문을 자동실행하도록

    Send {LCtrl Down}
    Sleep 20
    Send {w Down}
    
    Send {LCtrl Up}
    Sleep 20
    Send {w up}
    Sleep 2300
    MouseClick, Left, 460, 85
    Sleep 100

    MouseClick, Left, 68, 560
    Sleep 100
    MouseClick, Left, 68, 580
    Sleep 100
    MouseClick, Left, 68, 600

    Sleep 500
    MouseClick, Left, 937, 51
    return

}

*/

;작은 타원그리기
/*
F8::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;우클릭
	Send {RButton}
	Sleep 500
	
	;l 누르기
	Send {l}
	Sleep 50

	;up key 세번
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;조그마하게 원 드래그
	Send {LButton Down}
	Sleep 20
	MouseMove, 12, 12, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
	
	return
}
*/

/* [호가창 만으로 거래] 때문에 단축키 임시 제거
;사각형그리기
F10::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;우클릭
	Send {RButton}
	Sleep 500
	
	;l 누르기
	Send {l}
	Sleep 50

	;up key 세번
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;조그마하게 사각형 드래그
	Send {LButton Down}
	Sleep 20
	;MouseMove, 50, 35, 5, R
	MouseMove, 27, 12, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
	
	return
}
*/

;수평선그리기
/* 일단F5를 분봉 캔들 선택으로 바꿈
F5::
*/
/*
XButton2::

{

    
	;IfWinExist, 오버워치
	;{
;
;		WinActivate, 오버워치
;	
;		;MouseMove, -100, 0, , R
;		Loop, 10
;		{
;			DllCall("mouse_event", uint, 1, int, 303, int, 0, uint, 0, int, 0)
;			Sleep 15	
;		}
;		return
;	
;	}

	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50
	;우클릭
	Send {RButton}
	Sleep 50 
	
	;l 누르기
	Send {l}
	Sleep 10

	;up key 세번
	Send {Down}
	Sleep 10	
	Send {Down}
	Sleep 10	
	Send {Enter}
	Sleep 20

	;조그마하게 원 드래그
	; 살짝 마우스 흔들어줌. 커서가 활성화안되서리..
	MouseMove, -5, -5, 2, R
	MouseMove, 5, 5, 2, R

	Send {LButton}
	Sleep 20

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
	
	return
}
*/

; 직선추세선
/*
F6::
*/
; 뒤로가기 버튼 마우스
/*
XButton1::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	;우클릭
	Send {RButton}
	Sleep 50
	
	;l 누르기
	Send {l}
	Sleep 30

	;up key 세번
	Send {Down}
	Sleep 20	
	Send {Enter}
	Sleep 30

	;살짝 커서 흔들어줌
	MouseMove, 5, 5, 2, R
	MouseMove, -5, -5, 2, R

	;Send {LButton Down}
	;Sleep 20
	;MouseMove, 35, 35, 5, R
	;Sleep 20
	;Send {LButton Up}
	;Sleep 100

	;우클릭 눌러서 펜 모드 취소
	;Send {RButton}
	
	return
}
*/

/*
;[호가만으로 거래] 현재 위치의 호가창을 본 창으로 드래그 한다
; 거기에 8282 호가창 거래시 전체 모드로 변경도 이 단축키로 하기로
~LButton & RButton::
{
    ;MsgBox, ㅎㅎㅎ
    Send, {Space}
    return
}
*/


/*
; 매도대기로 변경
;	.먼저, 2/3 대부분매도 물량 클릭 후
;	.8282 호가상 매도 위치포지션에 커서 대기	
;
; [0999] 가상화면1<--->가상화면3을 스윗칭
XButton2::
{
	global toggle_sell 

	; 최초 클릭이면
	;	2/3 가격 클릭 후 매도 포지션으로 이동
	if(toggle_sell == 0)
	{
		; 2/3 클릭후
		MouseClick, Left, 1425 - 1920, 66
		Sleep, 100
		
		; 매도 포지션으로 이동
		MouseMove, 1199 - 1920, 273
		toggle_sell := 1
		return
	}

	; 두번째 클릭이면 ( mbutton 으로 (매수대기)리셋되지 않으면)
	;	잔여물량 클릭 후 매도 포지션에 대기
	else
	{
		; 잔여물량 클릭후
		MouseClick, Left, 1198 - 1920, 66
		Sleep, 100
		
		; 매도 포지션으로 이동
		MouseMove, 1199 - 1920, 273
		toggle_sell := 0
		return
	}

    ;global togglescr
    ;
    ;;가상화면 3일경우(기본)
    ;if(togglescr == 1)
    ;{
        ;;Ctrl + 1 누름
        ;Send, {LCtrl Down}
        ;Sleep 20
        ;Send, {1 Down}
        ;Sleep 20
;
        ;Send, {1 Up}
        ;Sleep 20
        ;Send, {LCtrl Up}
;
    ;}
    ;
    ;;가상화면 1일경우
    ;else 
    ;{
        ;;Ctrl + 3 누름
        ;Send, {LCtrl Down}
        ;Sleep 20
        ;Send, {3 Down}
        ;Sleep 20
;
        ;Send, {3 Up}
        ;Sleep 20
        ;Send, {LCtrl Up}
    ;}
;
    ;;가상화면 1일경우
    ;

    ;togglescr := togglescr * -1
    ;return
	;
    return
}

WheelLeft::
{
    ; 마우스 커서의 포지션을 구합니다
    MouseGetPos, posX, posY
    Sleep, 10

    cur_num := CheckPos(posX, posY)
    ;의미없는 포지션일 경우 아무 액션도 하지 않습니다
    if (cur_num >= 1 && cur_num <= 10 || cur_num == 88)
    {
        start := NumToSubjectPos(cur_num)
        target := NumToSubjectPos(11)

        DragProc(start, target)

        Sleep 50
        ;마우스커서의 위치를 원래 위치로 되돌립니다
        MouseMove, posX, posY

        return
    }
    
    return
}

; 매수포지션 이동으로 변경
; [0999] 각 호가창 내에서 마우스 앞으로 키 눌렀을 경우, 분<-->틱 토글 기능추가
; 호가창만으로 바뀌면서 틱-분 전환은 필요없어졌고, 대신 우상단 알림창 순환 버튼 클릭으로 용도 변경
; [0998] 차트가 필요없어진 지금 토글보다는 바로 8282 매수 위치로 이동하게끔 합니다
MButton::
{
	global toggle_sell
	toggle_sell := 0
    MouseMove, 1630 - 1920, 227
    return



}
; 대형정면틱차트로 변경했으므로 마우스 뒤로 버튼 용도도 변경합니다
;	1:좌측 검색식 연동 차트창
;	2:좌측 검색식
;	3:우측 주봉일봉분봉 전체
; 마우스 뒤로 버튼
XButton1::
{
    ; 마우스 커서의 포지션을 구합니다
    MouseGetPos, posX, posY
    Sleep, 10

    ;#####
    ; [8282] 분틱차트 위치일 경우, 분<-->틱 상호교환
    ;If (posX >= 671) and (posX <= 1193) and (posY >=9) and (posY <= 403)
    ;If (posX >= 671 - 1920) and (posX <= 1193 - 1920) and (posY >=9) and (posY <= 403)
    ;If (posX >= 650 - 1920) and (posX <= 1150 - 1920) and (posY >=9) and (posY <= 403)

    ;#####
    ; [8282] 호가창 전체버튼 누르기
    ;If (posX >= 1192) and (posX <= 1720) and (posY >=5) and (posY <= 518)
    ;If (posX >= 1192 - 1920) and (posX <= 1720 - 1920) and (posY >=5) and (posY <= 518)
    ;If (posX >= 1150 - 1920) and (posX <= 1720 - 1920) and (posY >=5) and (posY <= 518)





    ;###############################################3
    ;0999때문에 0998 버전을 주석처리 해놓는다
    ; 첫 호가창 위치일 경우 (0999 버전)

    start := CheckPos(posX, posY)
    ;MsgBox, %start%
    ;의미없는 포지션일 경우 아무 액션도 하지 않습니다
    if (start == 0)
    {
        return
    }

	; 위에 있던 if문을 checkpos 안으로 넣어서 여기로 내리고 정리합니다
	; 더불어 분/틱 교환이 아닌 거꾸로 보기 기능으로 대체합니다
    ; 피보나치 조정대 차트툴 열기로 변경합니다
	else if (start == 99 or start == 98)
    {
        MouseClick, Right, posX, posY
		Sleep, 50
		
		Loop, 7
		{
			Send, {Up}
			;Sleep, 10
		}
        Sleep, 50
        Send, {Right}
        Sleep, 50
		Loop, 9
		{
			Send, {Down}
			;Sleep, 10
		}
        Sleep, 50
        Send, {Right}
        Sleep, 50
		Loop, 2
		{
			Send, {Down}
			;Sleep, 10
		}

		Sleep, 50
		Send, {Enter}

        return 
    }

	else if (start == 82)
    {
        ;MouseClick, Left, 1650, 50
        MouseClick, Left, 1623 - 1920, 43
        Sleep, 50
        MouseMove, posX, posY
        return
    }



    ;
    ;오히려 우측 메인 호가창에서 사용한다면 그때는 stop주문창으로의 드래그를 행합니다
    else if (start == 10)
    {
        pos_A := NumToSubjectPos(start)
        pos_Main := {"x": 300, "y": 910}
        DragProc(pos_A, pos_Main)
        MouseMove, posX, posY
        return
    }
    pos_A := NumToSubjectPos(start)
    pos_Main := {"x": 35, "y": 440}

    ;i := pos_A.x
    ;j := pos_A.y
    ;호가 좌표에서 temp좌표(1920 + 756, 1128)로 드래그 합니다
    ;MsgBox, %i%
    DragProc(pos_A, pos_Main)

    ;마우스커서의 위치를 원래 위치로 되돌립니다
    MouseMove, posX, posY

    return
}

;텍스트 박스 그리기

NumpadAdd & Numpad7::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	;Sleep 100
	Sleep 30
	;우클릭
	Send {RButton}
	;Sleep 500
	Sleep 20
	
	;l 누르기
	Send {l}
	;Sleep 50
	Sleep 8 

	;up key 세번
	Send {Up}
	;Sleep 20	
	Sleep 8	
	Send {Up}
	;Sleep 20	
	Sleep 8	
	Send {Enter}
	;Sleep 100
	Sleep 8 

	;조그마하게 원 드래그
	Send {LButton}
    return
	
}
#IfWinActive ; 영웅문이 활성화 되어있는 경우, -끝-





;신호검색된 종목 클릭
#!n::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	MouseMove, -4000, -4000, 0, R
	Sleep 20
	MouseMove, 3374, 1031, 1, R

	Send {LButton}

	return
}

#!t::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 30
	; 메뉴 툴바 보이기 언첵
	MouseClick, Right, 2100, 20
	Sleep 30
	MouseClick, Left, 2110, 25 
	Sleep 100
	; 티커툴바- 신호대기 클릭
	MouseMove, 2330, 880
	Send {LButton down}
	Send {LButton down}
	Sleep 50
	Send {LButton up}
	Send {LButton up}
	Sleep 50

	;MouseMove, 1360, 865
	MouseMove, 20, -13,,R
	Send {LButton down}
	Send {LButton up}

	sleep 200
	MouseClick, Left, 2200, 123

	sleep 100
	MouseClick, Left, 210, 400

	;Send {LWin Down}
	;Send {LCtrl Down}
	;Send {Down Down}
	;
	;Sleep 50
;
	;Send {LWin Up}
	;Send {LCtrl Up}
	;Send {Down Up}
;
	return
	;MouseClick, Left, 2330, 880, 0, 0, D

	;Sleep 30
	;MouseClick, Left, 2330, 880, 0, 0, U
	;Sleep 100
	;;DllCall("SetCursorPos", int, 2345, int, 870)
	;;MouseMove, 2360, 865
	;MouseClick, Left, 2360, 865, 0, 0, D
	;Sleep 30
	;MouseClick, Left, 2360, 865, 0, 0, U
}
return

#!o::
{
	;IfWinExist, ahk_class _KiWoomClass
	IfWinExist, ahk_class _NKHeroMainClass
		WinActivate
    Sleep 150 

    ;가상화면 1로 변경
    Send {LCtrl Down}
    Sleep 10
    
    Send {1 Down}
    Sleep 10

    Send {1 Up}
    Sleep 10

    Send {LCtrl Up}
    Sleep 10


    ;가상화면 변경 후 약간의 시간텀을 준다
    Sleep 150
    ;툴바 내림으로 y축 올림
	;MouseClick, Left, 2584, 60 
	;MouseClick, Left, 2584, 60 - 27
	MouseClick, Left, 2584 - 1920, 60 - 27
	return
}

#!w::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate

	Sleep 200
	MouseMove, 2584, 60, 2
	Sleep 20
	Send {LButton Down}
	Sleep 100
	; 0995 용 
	;MouseMove, -404, 283, 5, R
	; 새로운 0994 용
	MouseMove, -1004, 283, 5, R
	Sleep 20
	Send {LButton Up}

	return
}

;조건검색식 중 하단쪽 클릭도 추가
#!r::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate

	Sleep 200
	;MouseClick, Left, 1600 + 1920, 1114 
	;살짝윗쪽으로 변경합니다.
	;MouseClick, Left, 1600 + 1920, 1000 
	;MouseClick, Left, 1580 + 1920, 1080 
	MouseClick, Left, 1580 + 1920, 1100 + 45

	return
}


;[호가창 거래] 원래 관심종목 상단 클릭 단축키였으나, 가상화면3의 종목 입력칸으로 변경
#!i::
{
	IfWinExist, ahk_class _KiWoomClass
    {
		WinActivate
        Sleep 150 
    }
    ;가상화면 3으로 변경
    Send {LCtrl Down}
    Sleep 10
    
    Send {3 Down}
    Sleep 10

    Send {3 Up}
    Sleep 10

    Send {LCtrl Up}
    Sleep 10

    ;가상화면 변경 후 약간의 시간텀을 준다
    Sleep 150
    ;툴바 내림으로 y축 올림    
	;MouseClick, Left, 1228, 77 
	MouseClick, Left, 1228, 77 - 27
    return

}

; 개발테스트용 임시 단축키
#!F2::
{

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	;IfWinExist, ahk_class MozillaWindowClass
	IfWinExist, ahk_class _NKHeroMainClass
		WinActivate
	    WinMove, ahk_class _NKHeroMainClass,,0, -1200, 1920, 1200
	    ;WinMove, ahk_class _NKHeroMainClass,,-1920, 0, 1920 * 2, 1200
        ;저장화면 0989(지수) 단축키 누르기 Ctrl + [
        Sleep, 1000
        Send, ^[

    return
}

; 그냥 1.png 업로드 
#!F1::
{

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto 
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}

    return
}

; 코스피/코스닥 지수 캡쳐 업로드 프로세스
; [호가창 거래로 변경] 하면서 지수 위치 바뀜
#^4::
{
    ;SnagIt 캡쳐 가동
	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}
	Sleep 1700

	;MouseMove, 7, -424, 2
	MouseMove, 10, -1920 + 10, 2
    Send {LButton Down}
    Sleep 1100
	MouseMove, 1900, 470, 2, R
	Sleep 100 
	Send {LButton Up}

	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	;snag it editor 내의 리사이즈 단축키 누름 r
	Send {r}	
	Sleep 50

	WinWait, Resize Image
		WinActivate
	Sleep 100

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50

    ; 가로로 너무 길쭉하니깐 60%로 수정
	;Send {7}{0}
	Send {6}{0}
	Sleep 2000 

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Enter}
	Sleep 200 

	;75%로 샤픈을 때림 단축키 s
	Send {s}
	Sleep 50	
	WinWait, Sharpen 
		WinActivate
	Sleep 200
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {7}{5}
	Sleep 50
	Send {Enter}
	Sleep 500 


	;저장 후 업로드 프로세스
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2332, 357, 0, R
	MouseMove, 2332 - 1920, 357, 0
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}

	Sleep 500
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

    ;;;;;;;
    ;;;;;;;
	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
    ; 자꾸 열기 버튼이 종종 안눌린다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2555, 130, 5, R
	;MouseMove, 2555 - 1920, 130, 5
    ;For nighlyfirefox
	MouseMove, 2555 - 1920, 110, 5
	Send {LButton}

    ; 윈10
    Sleep 6000 
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 475, 145, 5, R
	MouseMove, 475, 145, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 
    

	WinWait, 파일 업로드|열기|blog.upphoto|File Upload
	;WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 파일 업로드|열기|blog.upphoto|File Upload
		WinActivate
	Sleep 500
	
	SendInput {Raw}1.png

    ; 열기 버튼 안눌리는 문제 해결법
    Sleep, 2000
    ; 열기 버튼 위치가 바뀌어서 그런지 자꾸 안돼서 키보드로 변경해봄
    Send {Tab}
    Sleep 1000
    Send {Tab}
    Sleep 1000
    Send {Enter}
    ;MouseClick, Left, 1195, 506
	Sleep 2500


    ;윈10
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1693, 150, 5, R
	MouseMove, 1693, 150, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 
    
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}


	Sleep 800
    return 
}

;추가
 
; 15분봉 및 일봉 축소 업로드 시퀀스 세트 (스캘핑 일지 쓰면서 추가함)
#!F6::
{
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;
	; #!F12 (1분봉) 파트
	;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;F12
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	;MouseMove, -4000, -4000, 0, R
	MouseMove, 2210 - 1920, 700, 5
	MouseMove, 779, -120, 2 , R
	
	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
    ;캡쳐초기좌표로 갑니다
	;MouseMove, -4000, -4000, 0, R
    ;툴바를 하단으로 내리면서 y좌표 올림
	;MouseMove, 2110, 600, 5 , R
	;MouseMove, 2110, 600 - 27, 5 , R
	MouseMove, 2110 - 1920, 600 - 27, 5
	Sleep 100
	Send {LButton Down}
	Sleep 100
    ;사각형 사이즈 드래그해줍니다
	MouseMove, 899, 377, 5, R
	Sleep 100
	Send {LButton Up}


	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	;MouseMove, -4000, -4000, 0, R
	MouseMove, 2332 -1920, 357, 5

	Sleep 20
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	;MouseMove, -4000, -4000, 0, R
	MouseMove, 2555 - 1920, 130, 5
	Send {LButton}


    ; 윈10
    Sleep 4000 
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 475, 145, 5, R
	MouseMove, 475, 145, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 
    

	WinWait, 파일 업로드|열기|blog.upphoto
	;WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 파일 업로드|열기|blog.upphoto
	;IfWinExist, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
		WinActivate
	Sleep 400
	
	Send {1}{.}{p}{n}{g}
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1195, 506, 5, R
	MouseMove, 1195, 506, 5
    Send {LButton} 
	;Sleep 1000
	Sleep 2500


    ;올리기 버튼 클릭
    ;윈10
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1693, 150, 5, R
	MouseMove, 1693, 150, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 

	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;
	; #!F5 (축소 15분봉/일봉) 파트
	;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	;넓은 15분 축소캡쳐/업로드
	;F11
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50
    
    ; ???
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1109, 663, 5, R
	MouseMove, 1920 + 1109, 663, 5
	MouseMove, 775, -80, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	;MouseMove, -4000, -4000, 0, R

	;MouseMove, 1009 + 350 - 137, 613, 5, R  ;350 픽셀줄임, 그리고 체결창 때문에 좌측으로 137만큼 이동
	;MouseMove, 1009 + 350 - 137, 516, 5, R  ;350 픽셀줄임, 그리고 체결창 때문에 좌측으로 137만큼 이동 + 호가창녹화버전으로 인해 위로 좀 올림
    ;툴바 내림으로 인해 y축 올림
	;MouseMove, 1920 + 1340 , 580, 5, R  ;호가거래 세팅으로서 우측 모니터로 옮김
	;MouseMove, 1920 + 1340 , 580 - 27, 5, R  ;호가거래 세팅으로서 우측 모니터로 옮김
	MouseMove, 1340 , 580 - 27, 5  ;호가거래 세팅으로서 우측 모니터로 옮김
	Sleep 100
	Send {LButton Down}
	Sleep 100
    ;드래그
	MouseMove, 895 - 350, 357, 5, R ;350 픽셀줄임
	Sleep 100
	Send {LButton Up}

	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	; 축소와 샤픈을 추가함
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500

	;snag it editor 내의 리사이즈 단축키 누름 r
	Send {r}	
	Sleep 50

	WinWait, Resize Image
		WinActivate
	Sleep 100

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50

	Send {7}{0}
	Sleep 2000 

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Enter}
	Sleep 200 

	;75%로 샤픈을 때림 단축키 s
	Send {s}
	Sleep 50	
	WinWait, Sharpen 
		WinActivate
	Sleep 200
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {7}{5}
	Sleep 50
	Send {Enter}
	Sleep 500 

	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2332, 357, 0, R
	MouseMove, 2332 - 1920, 357, 0
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2555, 130, 5, R
	MouseMove, 2555 - 1920, 130, 5
	Send {LButton}




    ; 윈10
    Sleep 4000 
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 475, 145, 5, R
	MouseMove, 475, 145, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 
    

	WinWait, 파일 업로드|열기|blog.upphoto
	;WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 파일 업로드|열기|blog.upphoto
	;IfWinExist, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
		WinActivate
	Sleep 400
	
	Send {1}{.}{p}{n}{g}
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1195, 506, 5, R
	MouseMove, 1195, 506, 5
    Send {LButton} 
	;Sleep 1300
	Sleep 2500


    ;올리기 버튼 클릭
    ;윈10
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1693, 150, 5, R
	MouseMove, 1693, 150, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 

	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800

	;옆에 일봉도 올려야 하므로 라인을 넘기지 않는다
	;Send {Enter}

	;F9 일봉 파트

	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2590, 350, 5, R
	;MouseMove, 779, -320, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	;MouseMove, -4000, -4000, 0, R
    ;툴바 내림으로 인해 y축 올림
	;MouseMove, 2490 + 200, 50, 5, R ; 200픽셀 가로 줄임
	;MouseMove, 2490 + 200, 50 - 27, 5, R ; 200픽셀 가로 줄임
	MouseMove, 2490 + 200 - 1920, 50 - 27, 5 ; 200픽셀 가로 줄임
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 899 - 200, 463, 5, R ; 가로 200픽셀 줄임
	Sleep 100
	Send {LButton Up}



	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	; 축소와 샤픈을 추가함
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500

	;snag it editor 내의 리사이즈 단축키 누름 r
	Send {r}	
	Sleep 50

	WinWait, Resize Image
		WinActivate
	Sleep 100

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50

	Send {7}{0}
	Sleep 2000 

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Enter}
	Sleep 200 

	;75%로 샤픈을 때림 단축키 s
	Send {s}
	Sleep 50	
	WinWait, Sharpen 
		WinActivate
	Sleep 200
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {7}{5}
	Sleep 50
	Send {Enter}
	Sleep 500 


	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2332, 357, 0, R
	MouseMove, 2332 - 1920, 357, 0
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}

	Sleep 500
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2555, 130, 5, R
	MouseMove, 2555 - 1920, 130, 5
	Send {LButton}


    ; 윈10
    Sleep 4000 
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 475, 145, 5, R
	MouseMove, 475, 145, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 
    

	WinWait, 파일 업로드|열기|blog.upphoto
	;WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 파일 업로드|열기|blog.upphoto
	;IfWinExist, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
		WinActivate
	Sleep 400
	
	Send {1}{.}{p}{n}{g}
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1195, 506, 5, R
	MouseMove, 1195, 506, 5
    Send {LButton} 
	;Sleep 1300
	Sleep 2500



    ;올리기 버튼 클릭
    ;윈10
	;MouseMove, -4000, -4000, 0, R
	MouseMove, 1920 + 1693, 150, 5, R
	MouseMove, 1693, 150, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 


	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}

	Sleep 800

    Send {Enter}

	return

}
	
;추가
; 15분봉 및 일봉 축소 업로드 시퀀스 세트 (스캘핑 일지 쓰면서 추가함)
#!F5::
{
	;넓은 15분 축소캡쳐/업로드
	;F11
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1109, 663, 5, R
	MouseMove, 775, -80, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	;MouseMove, 1009 + 350 - 137, 613, 5, R  ;350 픽셀줄임, 그리고 체결창 때문에 좌측으로 137만큼 이동
	MouseMove, 1920 + 1340 , 580, 5, R  ;호가거래 세팅으로서 우측 모니터로 옮김
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 895 - 350, 357, 5, R ;350 픽셀줄임
	Sleep 100
	Send {LButton Up}

	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	; 축소와 샤픈을 추가함
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500

	;snag it editor 내의 리사이즈 단축키 누름 r
	Send {r}	
	Sleep 50

	WinWait, Resize Image
		WinActivate
	Sleep 100

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50

	Send {7}{0}
	Sleep 2000 

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Enter}
	Sleep 200 

	;75%로 샤픈을 때림 단축키 s
	Send {s}
	Sleep 50	
	WinWait, Sharpen 
		WinActivate
	Sleep 200
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {7}{5}
	Sleep 50
	Send {Enter}
	Sleep 500 

	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800

	;옆에 일봉도 올려야 하므로 라인을 넘기지 않는다
	;Send {Enter}







	;F9 일봉 파트

	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2590, 350, 5, R
	;MouseMove, 779, -320, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2490 + 200, 50, 5, R ; 200픽셀 가로 줄임
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 899 - 200, 463, 5, R ; 가로 200픽셀 줄임
	Sleep 100
	Send {LButton Up}



	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	; 축소와 샤픈을 추가함
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500

	;snag it editor 내의 리사이즈 단축키 누름 r
	Send {r}	
	Sleep 50

	WinWait, Resize Image
		WinActivate
	Sleep 100

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50

	Send {7}{0}
	Sleep 2000 

	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Enter}
	Sleep 200 

	;75%로 샤픈을 때림 단축키 s
	Send {s}
	Sleep 50	
	WinWait, Sharpen 
		WinActivate
	Sleep 200
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {Tab}
	Sleep 50
	Send {7}{5}
	Sleep 50
	Send {Enter}
	Sleep 500 


	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}

	Sleep 500
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto 
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}

	Sleep 800
	

	return

}
; 일15분1분 모든 봉 캡쳐 업로드 시퀀스 세트
#!F8::
{
	;F9
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2590, 350, 5, R
	;MouseMove, 779, -320, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2490, 50, 5, R
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 899, 463, 5, R
	Sleep 100
	Send {LButton Up}


	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}

	Sleep 500
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto 
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}

	Sleep 800
	





	;F10
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 3133, 656, 5, R
	MouseMove, 660, -93, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 3033, 606, 5, R
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 793, 343, 5, R
	Sleep 100
	Send {LButton Up}

	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R

	Sleep 20
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}
	
	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다	
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	
	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800






	;F11
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1109, 663, 5, R
	MouseMove, 775, -80, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 1009, 613, 5, R
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 895, 357, 5, R
	Sleep 100
	Send {LButton Up}

	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800






	;F12
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2210, 700, 5 , R
	MouseMove, 779, -120, 2 , R
	
	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2110, 600, 5 , R
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 899, 377, 5, R
	Sleep 100
	Send {LButton Up}


	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 5, R

	Sleep 20
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 1000
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800

	return
}

#!F9::
{
	;F9
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2590, 350, 5, R
	MouseMove, 779, -320, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2490, 50, 5, R
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 899, 463, 5, R
	Sleep 100
	Send {LButton Up}


	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}

	Sleep 500
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	;WinWait, blog.upphoto
	WinWait, 열기|blog.upphoto 
	;IfWinExist, blog.upphoto
	IfWinExist, 열기|blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}

	Sleep 800

	
	return
}

#!F10::
{

	;F10
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 3133, 656, 5, R
	MouseMove, 660, -93, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	MouseMove, 3033, 606, 5, R
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 793, 343, 5, R
	Sleep 100
	Send {LButton Up}

	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R

	Sleep 20
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300
	Send {Enter}
	
	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다	
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800

	return
}

#!F11::
{

	;F11
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1109, 663, 5, R
	MouseMove, 775, -80, 2, R

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	MouseMove, -4000, -4000, 0, R
	;MouseMove, 1009, 613, 5, R
	MouseMove, 1920 + 1340 , 580, 5, R  ;호가거래 세팅으로서 우측 모니터로 옮김
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 895, 357, 5, R
	Sleep 100
	Send {LButton Up}

	;Snag It 이 떴을 때 Ctrl S 를 눌러서 저장하고 Ctrl W로 닫는다
	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2332, 357, 0, R
	Sleep 300
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	;파폭으로 전환하여 사진/열기 1.png / 올리기 를 누른다
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, 네이버 포토업로더 - Mozilla Firefox
	IfWinExist, 네이버 포토업로더 - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, 네이버 포토업로더 - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
		WinActivate
	Sleep 700
	
	Send {1}{.}{p}{n}{g}{Enter}
	Sleep 800

	MouseMove, -4000, -4000, 0, R
	MouseMove, 1957, 17, 5, R
	Sleep 100
	Send {LButton}
	Sleep 500

	MouseMove, -4000, -4000, 0, R
	MouseMove, 2707, 690, 5, R
	Sleep 100
	Send {LButton}
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800

	return

}


#!F12::
{

	;F12
	;캡쳐 버튼을 누르고 영역 선택을 한다
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50

	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2210, 700, 5 , R
	MouseMove, 2210 - 1920, 700, 5
	MouseMove, 779, -120, 2 , R
	
	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}

	Sleep 700
	;MouseMove, -4000, -4000, 0, R
    ;툴바 내림으로 인해 y축 올림
	;MouseMove, 2110, 600, 5 , R
	;MouseMove, 2110, 600 - 27, 5 , R
	MouseMove, 2110 - 1920, 600 - 27, 5
	Sleep 100
	Send {LButton Down}
	Sleep 100
	MouseMove, 899, 377, 5, R
	Sleep 100
	Send {LButton Up}


	;IfWinExist, Snagit Editor
	WinWait, Snagit Editor
		WinActivate
	Sleep 500
	Send {LCtrl Down}
	Send {s Down}
	Sleep 50
	Send {LCtrl Up}
	Send {s Up}

	WinWait, Save As
	WinMove, Save As,,0, 0
	IfWinExist, Save As
		WinActivate
	Sleep 500
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2332, 357, 5, R
	MouseMove, 2332 - 1920, 357, 5

	Sleep 20
	Send {LButton Down}
	Sleep 20
	MouseMove, -200, 0, 5, R
	Sleep 100
	Send {LButton Up}
	Sleep 100

	Send {1}
	Sleep 20
	Send {Enter}
	Sleep 300 
	Send {Enter}

	Sleep 1000
	Send {LCtrl Down}
	Sleep 20
	Send {w Down}
	Sleep 20

	Send {LCtrl Up}
	Sleep 20
	Send {w Up}
	Sleep 2000 

	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 2555, 130, 5, R
	MouseMove, 2555 - 1920, 130, 5
	Send {LButton}

    ; 윈10
    Sleep 4000 
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 475, 145, 5, R
	MouseMove, 475, 145, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 
    

	WinWait, 파일 업로드|열기|blog.upphoto
	;WinWait, 열기|blog.upphoto
	;WinWait, blog.upphoto
	IfWinExist, 파일 업로드|열기|blog.upphoto
	;IfWinExist, 열기|blog.upphoto
	;IfWinExist, blog.upphoto
		WinActivate
	Sleep 400
	
	Send {1}{.}{p}{n}{g}
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1195, 506, 5, R
	MouseMove, 1195, 506, 5
    Send {LButton} 
	;Sleep 1000
	Sleep 2500


    ;올리기 버튼 클릭
    ;윈10
	;MouseMove, -4000, -4000, 0, R
	;MouseMove, 1920 + 1693, 150, 5, R
	MouseMove, 1693, 150, 5
    ;MouseClick, Left, 977, 175
    Send {LButton} 

	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 800
	Send {Enter}
	Sleep 800

	return
}
*/


/*
^!F2::
{	;F2 / 일
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	Send {PrintScreen}	
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F2}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate
}
return

^!F3::
{	;F3 / 분
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	Send {PrintScreen}	
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F3}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate
}
return

^!F7::
{	;F7 / 잔고
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 100
	Send {PrintScreen}	
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F7}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate
}
return

^!F8::
{	;F8 / 다우
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	Send {PrintScreen}	
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F8}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate
}
return

^!F9::
{	;F9 / 선물
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	Send {PrintScreen}	
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F9}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate
}
return

^!F10::
{	;F10 / 코스닥
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	Send {PrintScreen}
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F10}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate	
}
return

^!F5::
{	;F5 / 당일추이
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Sleep 200
	IfWinExist, ahk_class _KiWoomClass
		WinActivate 
	Sleep 200
	Send {PrintScreen}	
	Sleep 100
	IfWinExist, ahk_class Photoshop
		WinActivate 
	Send {F11}
	Sleep 600
	IfWinExist, ahk_class OpusApp
		WinActivate
}
return

^!/::
{	;/ / 게시
	Send {LCtrl down}
	Sleep 100
	Send {LAlt down}
	Sleep 100
	Send {LShift down}
	Sleep 100
	Send {P}
	Sleep 100
	Send {LCtrl up}
	Send {LAlt up}
	Send {LShift up}		
}
return
*/


/*
timer_proc:
if (WinActive("ahk_class _NKHeroMainClass"))
{
    MouseGetPos, iX, iY
    ;if (X >= 1624 - 1920) and (X <= 1678 - 1920) and (Y >= 88) and (Y <= 463)
    if (iX >= 1600 - 1920) and (iX <= 1653 - 1920) and (iY >= 100) and (iY <= 457)
    {
        ;Gui, Show, NA
        Gui, Color, Red
        ;Gui, Show, Hide NA x-473 y134 h300 w5
        ;newX := iX - 205
        newX := iX - 161
        ;Gui, Show, Hide NA x-495 y130 h300 w5
        Gui, Show, NA x%newX% y130 h300 w5
        ;1920 - 1425,130, x, 428
    }
    ;else if (X >= 1200 - 1920) and (X <= 1252 - 1920) and (Y >= 120) and (Y <= 461)
    else if (iX >= 1175 - 1920) and (iX <= 1227 - 1920) and (iY >= 100) and (iY <= 457)
    {
        Gui, Color, Blue
        ;Gui, Show, Hide NA x-540 y134 h300 w5
        newX := iX + 157
        ;Gui, Show, Hide NA x-564 y130 h300 w5
        Gui, Show, NA x%newX% y130 h300 w5
        ;1920 - 1356,130, x, 428
    }
    else
    {
        Gui, Show, Hide
    }
}

return
*/

