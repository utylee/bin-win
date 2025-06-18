Set oShell = CreateObject("WScript.Shell")
' WScript.Sleep 30000 ' 10초 기다림 (Wi-Fi 연결 대기)
Wscript.Sleep 10000 ' 10초 기다림 (Wi-Fi 연결 대기)

' oShell.Run "netsh wlan connect name=""R7000_5G""", 0
oShell.Run "netsh wlan connect name=""AX3001_5G""", 0


' Set objNetwork = CreateObject("WScript.Network")
'
' 기존 드라이브 연결 제거
'oShell.Run "net use P: /delete /y", 0, Tru
'oShell.Run "net use Q: /delete /y", 0, True

' 네트워크 드라이브 다시 연결 (계정 포함)
' oShell.Run "net use P: \\192.168.1.107\_share_mac /user:utylee sksmsqnwk11", 0, True
' oShell.Run "net use Q: \\192.168.1.108\_share_mac2 /user:utylee sksmsqnwk11", 0, True

'objNetwork.MapNetworkDrive "P:", "\\192.168.100.2\_shared_mac", False
'objNetwork.MapNetworkDrive "Q:", "\\192.168.100.3\_shared_mac2", False
'
' route add 192.168.1.107 mask 255.255.255.255 192.168.1.103 IF 4 METRIC 1 -p
' route add 192.168.1.108 mask 255.255.255.255 192.168.1.103 IF 4 METRIC 1 -p
