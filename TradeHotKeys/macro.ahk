SetTitleMatchMode, RegEx
#Persistent    ;마치 while로 계속 떠있는 이벤트 룹같이 동작하도록 하는 명령어
Coordmode, Mouse, Screen

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
;---------------------------------------------------------------------------
SendMouse_LeftClick() { ; send fast left mouse clicks
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x02) ; left button down
    DllCall("mouse_event", "UInt", 0x04) ; left button up
}


;---------------------------------------------------------------------------
SendMouse_RightClick() { ; send fast right mouse clicks
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x08) ; right button down
    DllCall("mouse_event", "UInt", 0x10) ; right button up
}


;---------------------------------------------------------------------------
SendMouse_MiddleClick() { ; send fast middle mouse clicks
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x20) ; middle button down
    DllCall("mouse_event", "UInt", 0x40) ; middle button up
}


;---------------------------------------------------------------------------
SendMouse_RelativeMove(x, y) { ; send fast relative mouse moves
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x01, "UInt", x, "UInt", y) ; move
}


;---------------------------------------------------------------------------
SendMouse_AbsoluteMove(x, y) { ; send fast absolute mouse moves
;---------------------------------------------------------------------------
    ; Absolute coords go from 0..65535 so we have to change to pixel coords
    ;-----------------------------------------------------------------------
    static SysX, SysY
    If (SysX = "")
        SysX := 65535//A_ScreenWidth, SysY := 65535//A_ScreenHeight
    DllCall("mouse_event", "UInt", 0x8001, "UInt", x*SysX, "UInt", y*SysY)
}


;---------------------------------------------------------------------------
SendMouse_Wheel(w) { ; send mouse wheel movement, pos=forwards neg=backwards
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x800, "UInt", 0, "UInt", 0, "UInt", w)
}

RandMove(x, y) {
	finalx := 0
	finaly := 0

	While(finalx < x)
	DllCall("mouse_event", uint, 1, int, 50, int, 130, uint, 0, int, 0)

}

#IfWinExist, ahk_exe Wow.exe
MsgBox, 하하하 

;XButton1::
8::
{
	IfWinActive, ahk_exe Wow.exe
	{
	Loop, 10
	{
	; 낚시 던지기 (와우내 현재 0버튼에 단축키 할당됨)
		Send, 0
		Sleep, 1000
	; 10초 기다림
		Sleep, 16000
	; 위치 초기화
        DllCall("mouse_event", uint, 1, int, 2000, int, -2000, uint, 0, int, 0)
		Sleep, 500
	; 첫번째 위치로  옮겨봅니다
        DllCall("mouse_event", uint, 1, int, -1100, int, 550, uint, 0, int, 0)
		Send, {LButton}
		Sleep, 700
	; 두번째 위치로  옮겨봅니다
        DllCall("mouse_event", uint, 1, int, 125, int, 0, uint, 0, int, 0)
		Send, {LButton}
		Sleep, 700
	; 세번째 위치로  옮겨봅니다
        DllCall("mouse_event", uint, 1, int, 125, int, 0, uint, 0, int, 0)
		Send, {LButton}
		Sleep, 700
		
		;MsgBox, "fuck"
        ;DllCall("mouse_event", uint, 1, int, 1, int, 1, uint, 0, int, 0)
        ;DllCall("mouse_event", uint, 1, int, 50, int, 130, uint, 0, int, 0)
        ;Sleep 1000
        ;DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0) ;LButton_down
        ;Sleep 20
        ;DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0) ;LButton_up
	;}
		Sleep, 2500
	}
	}
}

#IfWinExist
