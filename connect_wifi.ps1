$wifiName = "R7000_5G"
$adapter = Get-NetAdapter | Where-Object {$_.Name -like "*Wi-Fi*" -and $_.Status -eq "Disconnected"}

if ($adapter) {
    netsh wlan connect name=$wifiName
}
