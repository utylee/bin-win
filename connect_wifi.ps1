#$wifiName = "R7000_5G"
#$adapter = Get-NetAdapter | Where-Object {$_.Name -like "*Wi-Fi*" -and $_.Status -eq "Disconnected"}
#
#if ($adapter) {
#   'netsh wlan connect name=$wifiName
#}

# $wifi = "R7000_5G"
$wifi = "AX3001_5G"
$found = $false

for ($i = 0; $i -lt 20; $i++) {
    $adapter = Get-NetAdapter | Where-Object { $_.Status -eq "Disconnected" -and $_.Name -like "*Wi-Fi*" }
    if ($adapter) {
        netsh wlan connect name=$wifi
        $found = $true
        break
    }
    Start-Sleep -Seconds 1
}

if (-not $found) {
    Add-Content "C:\wifi_debug.log" "$(Get-Date) - Wi-Fi adapter not found in time" 
}
