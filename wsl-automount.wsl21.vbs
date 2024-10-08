Set oShell = CreateObject("WScript.Shell")
'대부분 예제가 대문자 Sleep으로 표기되어있는데 소문자일 경우가 동작합니다
'Wscript.Sleep 10000
'20초 딜레이를 줍니다
Wscript.sleep 20000
'oShell.Run "wsl -d Ubuntu20WSL2 sudo /usr/bin/mount -t cifs '\\\\192.168.1.202\\clark' /mnt/clark -o username=utylee,password=sksmsqnwk11,file_mode=0777,dir_mode=0777,iocharset=utf8", 0

' wsl1에서는 cifs 지원이 안되고 drvfs 를 사용해야하나 봅니다
'oShell.Run "wsl -d Ubuntu-20.04 sudo /usr/bin/mount -t cifs //192.168.1.202/clark /mnt/clark -o 'username=utylee,password=sksmsqnwk11,file_mode=0777,dir_mode=0777,iocharset=utf8'", 0
' oShell.Run "wsl -d Ubuntu-20.04 sudo /usr/bin/mount -t drvfs //192.168.1.202/clark /mnt/clark"
oShell.Run "wsl -d Ubuntu-20.04 sudo /usr/bin/mount -t drvfs //192.168.1.202/8001 /mnt/8001"
oShell.Run "wsl -d Ubuntu-20.04 sudo /usr/bin/mount -t drvfs //192.168.1.202/4001 /mnt/4001"


'oShell.Run "wsl -d Ubuntu20WSL2 sudo mount -t drvfs '\\\\192.168.1.202\\clark' /mnt/clark", 0

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
