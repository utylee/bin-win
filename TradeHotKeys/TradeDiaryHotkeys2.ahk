
;SetDefaultMouseSpeed, 0


;stockstory 크기세팅
#!Up::
{
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

	IfWinExist, ahk_class _KiWoomClass
	{
		;WinActivate
		WinMove, ahk_class _KiWoomClass, , -1920, 0, 3840, 1160
	}

	IfWinExist, Pro Evolution Soccer 2015
	{
		;WinActivate
		WinMove, Pro Evolution Soccer 2015, , 170, 200
	}	

	IfWinExist, ahk_class MozillaWindowClass
	{
		;WinActivate
		WinMove, ahk_class MozillaWindowClass, , 390, 55, 1400, 1100 
	}	

	IfWinExist, MINGW32
	{
		;WinActivate
		WinMove, MINGW32, , 420, 55, 1200, 1100 
	}	

}
return

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
return

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
	
}
return

#!Enter::
{
	Send {Enter}
}
return

;
; F드라이브로 탐색기 열기를 제거 
; LWin & E
;{
;	Run explorer F:\
;}
;return

; 관심종목 1
#!z::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	;MouseMove, 2058, 81, 0
	MouseMove, 24 + 1920, 81, 0
	Sleep 20
	Send {LButton}
	;MouseClick, Left, 2058, 81
}
return

; 관심종목 2
#!x::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	;MouseMove, 2095, 81, 0
	MouseMove, 57 + 1920, 81, 0
	Sleep 20
	Send {LButton}
	
	;MouseClick, Left, 2095, 81 
}
return

; 잔고보기
#!a::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 875, 53
}
return

; 미체결보기
#!s::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 930, 53
}
return

; 당일매매보기
#!d::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 1060, 53
}

return


; 선물지수보기
#!9::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 33, 481
	MouseMove, 0, -87, R
}
return

; 코스닥지수 보기
#!0::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 33, 855 
	MouseMove, 0, -45, R
}
return

; 매수시세 감시 보기
#!BackSpace::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 730, 70 
}
return

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
}
return

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
}
return

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
}
return

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
}
return

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
}
return

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
}
return

#!y::
{
	IfWinExist, FmpPlayerStockStory
		WinActivate
	Sleep 100

}
return

#!u::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100

	MouseClick, Left, 2200, 123
}
return



#!j::
{
	send {Down}
}
return

#!k::
{
	send {Up}
}
return

#!h::
{
	send {PgDn}
}
return

#!l::
{
	send {PgUp}
}
return

#IfWinActive ahk_class _KiWoomClass


;Numpad Add 기능 살려두기
/*
NumpadAdd::Send {NumpadAdd}
*/

;가격데이터 시뮬레이션 일봉
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
	MouseMove, 1298, 694, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	; 상태유지
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1482, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	; 이틀치 추가
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1597, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
	Send {LButton}
	Sleep 50

	; 닫기
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1684, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
	
	;확인(닫기)
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1753, 736, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
}
return


;타원그리기
/*
#,::
*/
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
	MouseMove, 35, 35, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
}
return

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
	MouseMove, 50, 35, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
}
return

;수평선그리기
F5::
XButton1::
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
	Send {Down}
	Sleep 20	
	Send {Down}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;조그마하게 원 드래그
	; 살짝 마우스 흔들어줌. 커서가 활성화안되서리..
	MouseMove, -5, -5, 2, R
	MouseMove, 5, 5, 2, R

	Send {LButton}
	Sleep 100

	;우클릭 눌러서 펜 모드 취소
	Send {RButton}
}
return

; 직선추세선
F6::
XButton2::
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
	Send {Down}
	Sleep 20	
	Send {Enter}
	Sleep 100

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
	
}
return


;텍스트 박스 그리기
F11::
NumpadAdd & Numpad7::
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
	Send {Enter}
	Sleep 100

	;조그마하게 원 드래그
	Send {LButton}
	
}
return

#IfWinActive       ;IfWinActive 클로즈세션


;신호검색된 종목 클릭
#!n::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	MouseMove, -4000, -4000, 0, R
	Sleep 20
	MouseMove, 3374, 1031, 1, R

	Send {LButton}

}
return

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
	IfWinExist, ahk_class _KiWoomClass
		WinActivate

	Sleep 200
	MouseClick, Left, 2584, 60 
}
return

#!w::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate

	Sleep 200
	MouseMove, 2584, 60, 2
	Sleep 20
	Send {LButton Down}
	Sleep 100
	MouseMove, -404, 283, 5, R
	Sleep 20
	Send {LButton Up}
    Sleep 200
}
return

#!q::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate

	Sleep 200
	MouseClick, Left, 1600 + 1920, 1114 

}
return

#!i::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate

	Sleep 200
	MouseClick, Left, 530, 836 
}
return

; 지수 캡쳐 및 업로드 (축소 70%)
#!F4::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50
	
	;선물, 코스닥 창 최상위로 만들기
	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 28, 729, 0, R 
	;MouseMove, 782, 703, 0, R 
	Sleep 20
	Send {LButton}
	Sleep 100

	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 32, 1119, 0, R 
	;MouseMove, 782, 1090, 0, R 
	Sleep 20
	Send {LButton}
	Sleep 100

	;지수에서 십자선 지우기 프로세스
	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 543, 555, 2, R
	Sleep 20
	MouseMove, 0, -192, 5, R
	Sleep 20
	MouseMove, 300, 0, 5, R
	Sleep 20
	MouseMove, 0, 550, 0, R
	Sleep 20
	MouseMove, -300, 0, 2, R
	Sleep 20
	MouseMove, 0, -145, 5, R
	Sleep 20

	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}
	Sleep 700

	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 20, 359, 2, R
	Sleep 20

	Send {LButton Down}
	Sleep 100
	MouseMove, 779, 764, 5, R
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

	WinWait, 열기
	IfWinExist, 열기
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
	;
	;지수 분봉 프로세스
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50
	
	;지수분봉에서 십자선 지우기 프로세스
	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 521 + 1920 , 1084, 2, R
	Sleep 20
	MouseMove, 260, 0, 5, R
	Sleep 20
	MouseMove, 0, -100, 5, R
	Sleep 20

	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 1920 + 1090, 1080, 0, R
	Sleep 20
	MouseMove, 220, 0, 2, R
	Sleep 20
	MouseMove, 0, -120, 5, R
	Sleep 20

	;캡쳐 시작
	Send {LShift Down}
	Send {PrintScreen Down}
	Sleep 50
	Send {LShift Up}
	Send {PrintScreen Up}
	Sleep 700

	MouseMove, -4000, -4000, 0, R 
	Sleep 20
	MouseMove, 1920 + 303, 984, 2, R
	Sleep 20

	Send {LButton Down}
	Sleep 100
	MouseMove, 1013, 172, 5, R
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
	
	;80%로만 축소
	Send {8}{0}
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

	WinWait, 열기
	IfWinExist, 열기
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
}

return

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

	WinWait, 열기
	IfWinExist, 열기
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

	WinWait, 열기
	IfWinExist, 열기
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

	WinWait, 열기
	IfWinExist, 열기
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

	WinWait, 열기
	IfWinExist, 열기
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

}
return

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

	WinWait, 열기
	IfWinExist, 열기
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

	
}
return

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

	WinWait, 열기
	IfWinExist, 열기
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

}
return

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

	WinWait, 열기
	IfWinExist, 열기
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

}
return



#!F12::
{

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

	WinWait, 열기
	IfWinExist, 열기
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

}
return


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
