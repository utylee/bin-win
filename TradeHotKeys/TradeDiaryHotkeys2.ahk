
;SetDefaultMouseSpeed, 0


;stockstory ũ�⼼��
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

;���콺 ��ũ�� �� ���μ� ���� 1 --> 5
#!Down::
{
	Sleep 400
	Send, {LWin}
	Sleep 100
	MouseClick, Left, 91, 151

	WinWait, ���콺 �Ӽ�
		WinActivate
	Sleep 500
	
	Send, {Tab}
	Sleep 100
	Send, {5}
	Sleep 100
	Send, {Enter}
	
/*
	;�ѿ�Ű�� ������ �ȴ����� �𸣴� ���� �ѱ� �ι� �ݺ��ϸ� ��
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

	WinWait, ���콺 �Ӽ�
		WinActivate
	Sleep 500
	
	WinMove, ���콺 �Ӽ�, , 0, 0
	Sleep 100
	MouseClick, Left, 210, 45 	
	Sleep 100
	;�� ȭ��ǥ Ŭ���Ͽ� ���ڸ� 5���� �ø�
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

;�Ϻ���Ʈ ������ ��Ÿ�ϸ��� ����Ʈȭ
#!Left::
{
	;0������
	IfWinExist, ahk_class _KiWoomClass
	{
		WinActivate
		WinMove, ahk_class _KiWoomClass, , -1920, 0 
	}
	
	;�Ϻ� ��ü �� ��ȯ
	MouseMove, -4000, -4000, 0, R
	Sleep 100
	MouseMove, 2850, 122, 5, R
	Sleep 100
	Send, {LButton Down}
	MouseMove, -200, 0, 5, R
	Send, {LButton Up}
	Sleep 100

	;1�� Ȯ��
	MouseMove, -4000, -4000, 0, R
	Sleep 100
	MouseMove, 3093, 122, 5, R
	Sleep 100
	Send, {LButton Down}
	MouseMove, 252, 0, 5, R
	Send, {LButton Up}
	Sleep 100

	;2�� Ȯ��
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
; F����̺�� Ž���� ���⸦ ���� 
; LWin & E
;{
;	Run explorer F:\
;}
;return

; �������� 1
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

; �������� 2
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

; �ܰ���
#!a::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 875, 53
}
return

; ��ü�Ẹ��
#!s::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 930, 53
}
return

; ���ϸŸź���
#!d::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 1060, 53
}

return


; ������������
#!9::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 33, 481
	MouseMove, 0, -87, R
}
return

; �ڽ������� ����
#!0::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 33, 855 
	MouseMove, 0, -45, R
}
return

; �ż��ü� ���� ����
#!BackSpace::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 80
	MouseClick, Left, 730, 70 
}
return

; �ٿ����� ����
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

; ���������� ����
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

; ����DAX���� ����
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

; �������� ����
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

; �Ϻ��ϲ������� ����
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

; ������������ ����
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


;Numpad Add ��� ����α�
/*
NumpadAdd::Send {NumpadAdd}
*/

;���ݵ����� �ùķ��̼� �Ϻ�
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

	; �߰�+
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1298, 694, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	; ��������
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1482, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50

	; ��Ʋġ �߰�
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1597, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
	Send {LButton}
	Sleep 50

	; �ݱ�
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1684, 637, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
	
	;Ȯ��(�ݱ�)
	MouseMove, -4000, -4000, R
	Sleep 20
	MouseMove, 1753, 736, 2, R
	Sleep 50
	Send {LButton}
	Sleep 50
}
return


;Ÿ���׸���
/*
#,::
*/
F9::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;��Ŭ��
	Send {RButton}
	Sleep 500
	
	;l ������
	Send {l}
	Sleep 50

	;up key ����
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;���׸��ϰ� �� �巡��
	Send {LButton Down}
	Sleep 20
	MouseMove, 35, 35, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;��Ŭ�� ������ �� ��� ���
	Send {RButton}
}
return

;�簢���׸���
F10::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;��Ŭ��
	Send {RButton}
	Sleep 500
	
	;l ������
	Send {l}
	Sleep 50

	;up key ����
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

	;���׸��ϰ� �簢�� �巡��
	Send {LButton Down}
	Sleep 20
	MouseMove, 50, 35, 5, R
	Sleep 20
	Send {LButton Up}
	Sleep 100

	;��Ŭ�� ������ �� ��� ���
	Send {RButton}
}
return

;���򼱱׸���
F5::
XButton1::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;��Ŭ��
	Send {RButton}
	Sleep 500
	
	;l ������
	Send {l}
	Sleep 50

	;up key ����
	Send {Down}
	Sleep 20	
	Send {Down}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;���׸��ϰ� �� �巡��
	; ��¦ ���콺 ������. Ŀ���� Ȱ��ȭ�ȵǼ���..
	MouseMove, -5, -5, 2, R
	MouseMove, 5, 5, 2, R

	Send {LButton}
	Sleep 100

	;��Ŭ�� ������ �� ��� ���
	Send {RButton}
}
return

; �����߼���
F6::
XButton2::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;��Ŭ��
	Send {RButton}
	Sleep 500
	
	;l ������
	Send {l}
	Sleep 50

	;up key ����
	Send {Down}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;��¦ Ŀ�� ������
	MouseMove, 5, 5, 2, R
	MouseMove, -5, -5, 2, R

	;Send {LButton Down}
	;Sleep 20
	;MouseMove, 35, 35, 5, R
	;Sleep 20
	;Send {LButton Up}
	;Sleep 100

	;��Ŭ�� ������ �� ��� ���
	;Send {RButton}
	
}
return


;�ؽ�Ʈ �ڽ� �׸���
F11::
NumpadAdd & Numpad7::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 100
	;��Ŭ��
	Send {RButton}
	Sleep 500
	
	;l ������
	Send {l}
	Sleep 50

	;up key ����
	Send {Up}
	Sleep 20	
	Send {Up}
	Sleep 20	
	Send {Enter}
	Sleep 100

	;���׸��ϰ� �� �巡��
	Send {LButton}
	
}
return

#IfWinActive       ;IfWinActive Ŭ�����


;��ȣ�˻��� ���� Ŭ��
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
	; �޴� ���� ���̱� ��ý
	MouseClick, Right, 2100, 20
	Sleep 30
	MouseClick, Left, 2110, 25 
	Sleep 100
	; ƼĿ����- ��ȣ��� Ŭ��
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

; ���� ĸ�� �� ���ε� (��� 70%)
#!F4::
{
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50
	
	;����, �ڽ��� â �ֻ����� �����
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

	;�������� ���ڼ� ����� ���μ���
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
	;snag it editor ���� �������� ����Ű ���� r
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

	;75%�� ������ ���� ����Ű s
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


	;���� �� ���ε� ���μ���
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;���� �к� ���μ���
	IfWinExist, ahk_class _KiWoomClass
		WinActivate
	Sleep 50
	
	;�����к����� ���ڼ� ����� ���μ���
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

	;ĸ�� ����
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
	;snag it editor ���� �������� ����Ű ���� r
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
	
	;80%�θ� ���
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

	;75%�� ������ ���� ����Ű s
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

	;���� �� ���ε� ���μ���
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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

; ��15��1�� ��� �� ĸ�� ���ε� ������ ��Ʈ
#!F8::
{
	;F9
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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


	;Snag It �� ���� �� Ctrl S �� ������ �����ϰ� Ctrl W�� �ݴ´�
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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

	;Snag It �� ���� �� Ctrl S �� ������ �����ϰ� Ctrl W�� �ݴ´�
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������	
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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

	;Snag It �� ���� �� Ctrl S �� ������ �����ϰ� Ctrl W�� �ݴ´�
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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


	;Snag It �� ���� �� Ctrl S �� ������ �����ϰ� Ctrl W�� �ݴ´�
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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

	;Snag It �� ���� �� Ctrl S �� ������ �����ϰ� Ctrl W�� �ݴ´�
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������	
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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

	;Snag It �� ���� �� Ctrl S �� ������ �����ϰ� Ctrl W�� �ݴ´�
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

	;�������� ��ȯ�Ͽ� ����/���� 1.png / �ø��� �� ������
	IfWinExist, ahk_class MozillaWindowClass
		WinActivate
	Sleep 100
	WinMove, ahk_class MozillaWindowClass,,400, 0, 1400, 1050
	Sleep 100
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2555, 130, 5, R
	Send {LButton}

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
	;ĸ�� ��ư�� ������ ���� ������ �Ѵ�
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

	WinWait, ���̹� ������δ� - Mozilla Firefox
	IfWinExist, ���̹� ������δ� - Mozilla Firefox
		WinActivate
	Sleep 100
	WinMove, ���̹� ������δ� - Mozilla Firefox, 0, 0 
	Sleep 2000
	MouseMove, -4000, -4000, 0, R
	MouseMove, 2495, 130, 5, R
	Send {LButton}
	Sleep 1200

	WinWait, ����
	IfWinExist, ����
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
{	;F2 / ��
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
{	;F3 / ��
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
{	;F7 / �ܰ�
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
{	;F8 / �ٿ�
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
{	;F9 / ����
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
{	;F10 / �ڽ���
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
{	;F5 / ��������
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
{	;/ / �Խ�
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
