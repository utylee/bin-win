' admin으로 실행하게해주는 스크립트입니다 '
Set oShell = CreateObject("Shell.Application")
oShell.ShellExecute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe", "-ExecutionPolicy Bypass -File C:\Users\utylee\bin\wsl2-network.ps1", "", "runas", 0
