Set oShell = CreateObject("WScript.Shell")
'mount가 끝난 이후에 실행되도록 합니다
Wscript.sleep 22000
' oShell.Run "usbipd attach --wsl -b 1-2", 0
oShell.Run "usbipd attach --wsl --hardware-id 04e8:396d", 0


' ' admin으로 실행하게해주는 스크립트입니다 '
' Set oShell = CreateObject("Shell.Application")
' oShell.ShellExecute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe", "-ExecutionPolicy Bypass -File C:\Users\utylee\bin\wsl2-network.ps1", "", "runas", 0
