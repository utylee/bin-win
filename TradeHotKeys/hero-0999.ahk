
Sleep 1000
SetKeyDelay, 20
Send {LWin Down}
Send {9 Down}
Sleep 100
Send {LWin Up}
Send {9 Up}

WinWait, 영웅문 Login 
IfWinExist, 영웅문 Login
	WinActivate
Sleep 1500
SetKeyDelay, 100 
Send {q}{n}{w}{k}{1}{1}
Send {Tab}
Send {s}{k}{s}{m}{s}{q}{n}{w}{k}{1}{!}
Send {Enter}
WinWait, Utylee Asset
Sleep 14000
IfWinExist, ahk_class _KiWoomClass
	WinActivate
	Sleep 100
	;0점조절
	WinMove, ahk_class _KiWoomClass, , -1920, 0	
Sleep 30
; 메뉴 툴바 보이기 언첵
;MouseClick, Right, 2100, 20
;Sleep 30
;MouseClick, Left, 2110, 25 
;Sleep 100
; 티커툴바- 신호대기 클릭

/*
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
MouseClick, Left, 730, 70
Sleep 200
MouseClick, Left, 210, 400
*/

Sleep 1500

;매매동향 정상화
;왼쪽창으로 옮기기 위해 수정
MouseClick, Left, 74 + 1920 - 1200, 58 
Sleep 200
MouseClick, Left, 74 + 1920 - 1200, 274 
Sleep 200


/*
; 밑에 새로 작성하는 바람에 일단 생략
;MouseMove, 2043 - 1200, 160 - 80
;왼쪽창으로 옮기기 위해 수정
MouseMove, 833, 83 
Send {LButton Down}
Sleep 50
MouseMove, -100, 0, 5, R
Sleep 50
Send {LButton Up}
Sleep 200
;MouseMove, 2043 - 1200, 360 - 65
;왼쪽창으로 옮기기 위해 수정
MouseMove, 835, 296 
Send {LButton Down}
Sleep 50
MouseMove, -100, 0, 5, R
Sleep 50
Send {LButton Up}
Sleep 200
*/

;매매동향 창들 포커싱 클릭
;MouseClick, Left, 823, 83 
MouseMove, 823, 83 
Send {LButton down}
Sleep 50
MouseMove, -100, 0, 5, R
Sleep 50
Send {LButton up}
Sleep 200

;MouseClick, Left, 823, 299 
MouseMove, 823, 299 
Send {LButton down}
Sleep 50
MouseMove, -100, 0, 5, R
Sleep 50
Send {LButton up}
Sleep 200

;선물/코스닥 분봉 5분으로 변경
Sleep 100
MouseClick, Left, 1525 + 1920, 528
Sleep 100
MouseClick, Left, 1865 + 1920, 294
Sleep 100
MouseClick, Left, 1630 + 1920, 43 
Sleep 100
MouseClick, Left, 1870 + 1920, 55 
Sleep 100
;일봉 메인차트 클릭해서 최상위로 올림
MouseClick, Left, 607 + 1920, 47
Sleep 10

;매매동향 선물 버튼 클릭
MouseClick, Left, 1838 - 1190 - 50, 152 
Sleep 200
;매매동향 코스닥 버튼 클릭
MouseClick, Left, 1838 - 1190 - 50, 340 
Sleep 200
;해외증시차트 한번 찍어줌
MouseClick, Left, 1571 - 1190, 55 
Sleep 200
;계좌정보 창 한번 찍어줌
MouseClick, Left, 2400 - 1190, 80 
Sleep 200

;;선물 창 한번 찍어줌
;MouseClick, Left, 784, 609 
;Sleep 200

;영웅문4 이용안내창 닫기
MouseClick, Left, 462, 53
Sleep 100
MouseClick, Left, 512, 53
Sleep 100

IfWinExist, ahk_class _KiWoomClass
	WinActivate

Sleep 100

MouseClick, Left, 2200, 123

;주식Stop주문 자동주문으로 변경하는 프로세스 추가
IfWinExist, ahk_class _KiWoomClass
	WinActivate
Sleep 100
MouseClick, Left, 725 + 1920, 1040 
Sleep 300
MouseClick, Left, 118 + 1920, 1043 
Sleep 300
MouseClick, Left, 27 + 1920, 902 
Sleep 1000
Send {Enter}
Sleep 200
MouseClick, Left, 430 + 1920, 1000 



return

