Set oShell = CreateObject("WScript.Shell")

'20초 딜레이를 줍니다
Wscipt.sleep 20000

'oShell.Run "wsl -d Ubuntu-20.04 sudo /etc/init.d/ssh start", 0
oShell.Run "wsl -d Ubuntu20.04WSL2 sudo /usr/sbin/modprobe vhci_hcd", 0

'lsusb가 언제부터인가 반응이 없어서 https://github.com/dorssel/usbipd-win/issues/1010
'를 참조해 부팅시 실행하기로 했다

'https://gist.github.com/dentechy/de2be62b55cfd234681921d5a8b6be11 참조'
'혹은 https://github.com/utylee/autossh 방법으로 조합해서 간단한 vbs, admin run as 방법을 조합한 방법이다'
''
'작업 스케쥴러가 시작시실행에서 자꾸 동작이 됐다 안됐다 해서 로긴을 없애고 시작프로그램에 넣는'
'방식을 쓰기로 했다. 위 방법들이 다 그렇게 하는 것 같다'
'
' 1. 레지스트리 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run 에 시작프로그램 등록을 하거나'
' 1. win +R, shell:startup  (시작프로그램 폴더) 에 ssh 시작스크립트와 admin실행 wsl2용 nat브릿지 프로그램을'
'		돌려주기로 한다'
''
' 2. ssh 실행에서 sudo 시 암호를 묻지 않도록 해주기로 한다'
'	https://github.com/utylee/autossh 에 명시된대로'
'		'
'		sudo apt purge openssh-server'
'		sudo apt install openssh-server'
'		* Change SSH Port Number in sshd_config'
'		sudo EDITOR=/usr/bin/vi visudo'
'		%sudo ALL=NOPASSWD: /etc/init.d/ssh'
'		sudo /usr/bin/ssh-keygen -A '
'		* Start OpenSSH server for the first time'
'		sudo /etc/init.d/ssh start'
' 3. 윈도우 자동로그인 win + R,  netplwiz 실행'
' 3. 시작프로그램 등록'
'		1. win + R, shell:startup 에 wsl-autossh.vbs 와 wsl-autoforward.vbs 복사해넣기 '
'		혹은'
'		1. HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run 에 두 파일 문자열 추가'
''
