# WiFiReconnect.ps1
#
#
#
#
#

# ===== 사용자 설정 =====
$ssid = "AX3001_5G"  # 연결할 SSID
$interface = "Wi-Fi 4"  # 본인의 무선 어댑터 이름
$logPath = "C:\Users\utylee\wifi_log.txt"

# ===== 인터페이스 정보 가져오기 =====
$interfaceInfo = netsh wlan show interfaces

# 연결 상태 추출 (한글/영문 대응)
$stateLine = $interfaceInfo | Where-Object { $_ -match "^\s*(State|상태)\s*:\s*(.+)$" } | Select-Object -First 1
$state     = ($stateLine -replace "^\s*(State|상태)\s*:\s*", "").Trim()

# SSID 추출 (한글/영문 대응)
$ssidLine     = $interfaceInfo | Where-Object { $_ -match "^\s*(SSID|네트워크 이름)\s*:\s*(.+)$" } | Select-Object -First 1
$currentSSID  = ($ssidLine -replace "^\s*(SSID|네트워크 이름)\s*:\s*", "").Trim()

# 로그 기록
Add-Content -Path $logPath -Value "$(Get-Date): 상태='$state', 현재 SSID='$currentSSID'"

# 연결 확인 및 재연결
if (($state -notmatch "connected|연결됨") -or $currentSSID -ne $ssid) {
    Add-Content -Path $logPath -Value "$(Get-Date): 연결되지 않았거나 잘못된 SSID입니다. 재연결 시도합니다."
    netsh wlan connect name=$ssid interface=$interface
} else {
    Add-Content -Path $logPath -Value "$(Get-Date): 이미 '$ssid'에 연결되어 있습니다. 작업 생략."
}








# # $ssid = "YourSSID"      # 본인의 SSID 이름
# $ssid = "AX3001_5G"  # 연결할 SSID
# $interface = "Wi-Fi 2"  # 본인의 무선 어댑터 이름
# $logPath = "C:\Users\utylee\wifi_log.txt"

# $interfaceInfo = netsh wlan show interfaces

# # 다국어 대응: 상태줄 찾기 ("State" 또는 "상태")
# $stateLine = $interfaceInfo | Where-Object { $_ -match "^\s*(State|상태)\s*:\s*(.+)$" }
# $state = ($stateLine -replace "^\s*(State|상태)\s*:\s*", "").Trim()

# # 다국어 대응: SSID 줄 찾기
# $ssidLine = $interfaceInfo | Where-Object { $_ -match "^\s*(SSID|네트워크 이름)\s*:\s*(.+)$" }
# $currentSSID = ($ssidLine -replace "^\s*(SSID|네트워크 이름)\s*:\s*", "").Trim()

# # 로그 기록
# Add-Content -Path $logPath -Value "$(Get-Date): 상태='$state', 현재 SSID='$currentSSID'"

# # 연결 조건 확인
# if (($state -notmatch "connected|연결됨") -or $currentSSID -ne $ssid) {
#     Add-Content -Path $logPath -Value "$(Get-Date): 연결되지 않음 또는 잘못된 SSID → 재연결 시도"
#     netsh wlan connect name=$ssid interface=$interface
# } else {
#     Add-Content -Path $logPath -Value "$(Get-Date): 이미 $ssid에 연결됨. 아무 작업도 안 함."
# }


#################################################################

# # 현재 연결된 SSID 가져오기
# $currentSSID = (netsh wlan show interfaces | Select-String "^\s*SSID\s*:\s*(.+)$").Matches.Groups[1].Value.Trim()

# # 로그 출력
# Add-Content -Path $logPath -Value "$(Get-Date): Current SSID = '$currentSSID'"

# # 연결되어 있는지 확인
# if ($currentSSID -ne $ssid) {
#     Add-Content -Path $logPath -Value "$(Get-Date): Not connected to $ssid. Attempting to reconnect..."
#     netsh wlan connect name=$ssid interface=$interface
# } else {
#     Add-Content -Path $logPath -Value "$(Get-Date): Already connected to $ssid. No action taken."
# }


#################################################################

# $ssid = "AX3001_5G"  # 연결할 SSID
# $interface = "Wi-Fi 2"    # 네트워크 인터페이스 이름

# # 현재 연결 상태 확인
# $connected = netsh wlan show interfaces | Select-String "SSID" | Select-String $ssid

# if (-not $connected) {
#     Write-Output "$(Get-Date): Disconnected. Trying to reconnect to $ssid..."
#     netsh wlan connect name=$ssid interface=$interface
# } else {
#     Write-Output "$(Get-Date): Already connected to $ssid."
# }
