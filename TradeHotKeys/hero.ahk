
;절대좌표를 사용하는 명령어
Coordmode, Mouse, Screen


; 상단모니터를 사용안하게끔 하나만 실행하는 스크립트 입니다.
/*
; 영웅문4를 두번 띄워 상단 지수모니터링용 창도 추가합니다


; 상단 지수용 영웅문 process
Sleep 1000
SetKeyDelay, 20
Send {LWin Down}
Send {8 Down}
Sleep 100
Send {LWin Up}
Send {8 Up}

WinWait, 영웅문4 Login 
IfWinExist, 영웅문4 Login
	WinActivate
Sleep 2000
SetKeyDelay, 100 
Send {q}{n}{w}{k}{1}{1}
Send {Tab}
Send {s}{k}{s}{m}{s}{q}{n}{w}{k}{1}{!}
Send {Enter}
WinWait, Utylee Asset
Sleep 15000
;Sleep 14000
IfWinExist, ahk_class _NKHeroMainClass
    WinActivate
    WinMove, ahk_class _NKHeroMainClass,,0, -1200, 1920, 1200
    ;WinMove, ahk_class _NKHeroMainClass,,-1920, 0, 1920 * 2, 1200
    ;저장화면 0989(지수) 단축키 누르기 Ctrl + [
    Sleep, 1000
    Send, ^[

Sleep 5000

Send, ^1

*/



;2


Sleep 1000
SetKeyDelay, 20
Send {LWin Down}
Send {8 Down}
Sleep 100
Send {LWin Up}
Send {8 Up}

WinWait, 영웅문4 Login 
IfWinExist, 영웅문4 Login
	WinActivate
Sleep 2000
SetKeyDelay, 100 
Send {q}{n}{w}{k}{1}{1}
Send {Tab}
Send {s}{k}{s}{m}{s}{q}{n}{w}{k}{1}{!}
Send {Enter}
WinWait, Utylee Asset
SetKeyDelay, 0 
Sleep 15000
;Sleep 5000
IfWinExist, ahk_class _NKHeroMainClass
	WinActivate
	Sleep 1000
	;0점조절
    WinMove, ahk_class _NKHeroMainClass, , -1920, 0, 1920 * 2, 1200 - 50
    ;WinMove, ahk_class _NKHeroMainClass,,0, -1200, 1920, 1200
    Sleep 2000

    ;ControlSend, , {Ctrl Down}{a}{Ctrl Up} , Utylee Asset
    ;Send, ^a

    ; 0998 호가 거래 화면 번호 누르기
    /* 키움 종료 에러 때문에 멈춘상태동안 키떼는 UP입력이 들어가서 인지 아니면 너무 키입력이 빨라서인지
    몰라서 일단 사람처럼 좀 느리게 하기로
    */
    Send, {Ctrl Down}
    Sleep 200
    Send, {] Down}
    Sleep 200

    Sleep 43000

    Send, {] up}
    Sleep 200
    Send, {Ctrl up}
    Sleep 200

/*  에러때문에 여기서 정지하기로..
    SendInput, ^]

    Sleep 40000
*/

/* 잔고/미체결 난으로 변경해놓아 지금 보유중인 잔고 유무를 확인해야한다. 큰 수익 내놓고
이게 뭔가 했더니 한팔린 물량이 있던 것이 한두번이 아니다 
*/

; 왼 화살표 연타 및 탭 클릭으로  가장 왼탭으로 이동 
IfWinExist, ahk_class _NKHeroMainClass
	WinActivate

; 화살표 클릭
Loop, 7 {
    MouseClick, Left, 525 - 1920, 795
    Sleep 150
}

Sleep 100

;탭클릭
MouseClick, Left, 63 - 1920, 794
Sleep 100

;계좌번호 콤보  클릭
MouseClick, Left, 103 - 1920, 822
Sleep 200

;계좌번호 호가스캘 클릭
MouseClick, Left, 120 - 1920, 866
Sleep 200





; 스탑로스를 빼놓음
; 스탑로스 손절 부분만 다시 추가해놓음
; 다시 뺌.. 스탑로스 이후 에러생기며 버벅버벅 --;
; 2% 기계적 손절은 필요하다는 생각에 추가는 해놓기로. 프로와 아마추어 경계다.


IfWinExist, ahk_class _NKHeroMainClass
	WinActivate

Sleep 100

Send, ^w
Sleep 2000


;MouseClick, Left, 460 - 1920, 55
;영웅문4
;잔고편입 스탑로스 클릭
MouseClick, Left, 340 - 1920, 52
Sleep 100

;1,2,3 조건 순차적으로 클릭
;영웅문4
;1.50% 손절 클릭
MouseClick, Left, 65 - 1920, 527
Sleep 200

;;1% 익절 클릭
;MouseClick, Left, 65 - 1920, 545
;Sleep 200
;;1.8% 익절 클릭 (자꾸 나름 큰 수익을 놓치기에 저정도만 올라가도 맥스에서 팔린거다 싶어 또 스탑주문이 
;;필요하다는 생각.. 그게 이득이기에
;MouseClick, Left, 65 - 1920, 563
;Sleep 200
; 잠시후 스탑로스 설정 창 닫기
Sleep 500
;영웅문4
MouseClick, Left, 941 - 1920, 20




