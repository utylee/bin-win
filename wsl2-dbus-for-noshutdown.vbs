Set oShell = CreateObject("WScript.Shell")
' WSL2는 터미널이 안열려있으면 자동으로 종료됩니다.
' 그걸 막아주는 명령입니다
'mount가 끝난 이후에 실행되도록 합니다
' Wscript.sleep 22000
' Wscript.sleep 12000
Wscript.sleep 5000
oShell.Run "wsl --distribution Ubuntu24WSL2 --exec dbus-launch true", 0
' oShell.Run "wsl --exec dbus-launch true", 0

' ' admin으로 실행하게해주는 스크립트입니다 '
' Set oShell = CreateObject("Shell.Application")
' oShell.ShellExecute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe", "-ExecutionPolicy Bypass -File C:\Users\utylee\bin\wsl2-network.ps1", "", "runas", 0
