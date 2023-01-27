$remoteport = bash.exe -c "ifconfig eth0 | grep 'inet '"
$found = $remoteport -match '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';

if( $found ){
  $remoteport = $matches[0];
} else{
  echo "The Script Exited, the ip address of WSL 2 cannot be found";
  exit;
}

#[Ports]

#All the ports you want to forward separated by coma
# 8824 를 ssh 포트로 쓰기에 추가했습니다
# react 개발을 위해 3000번대들도 여러 개 열어놔줍니다
$ports=@(80,88,443,8080,8812, 8824, 3000, 3001, 3002, 5432);
#$ports=@(80,443);


#[Static ip]
#You can change the addr to your ip config to listen to a specific address
#한번 127.0.0.1로 바꾸고 나서 버그가 생긴느낌입니다.ipv6까지 nginx에서설정해줘야하질 않나
# firefox에서는 localhost 접속이 안되질 않나..
# 그래서 두개다 추가하기로 합니다 
$addr0='0.0.0.0';
$addr='127.0.0.1';
$ports_a = $ports -join ",";


#Remove Firewall Exception Rules
iex "Remove-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' ";

#adding Exception Rules for inbound and outbound Rules
iex "New-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' -Direction Outbound -LocalPort $ports_a -Action Allow -Protocol TCP";
iex "New-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' -Direction Inbound -LocalPort $ports_a -Action Allow -Protocol TCP";

for( $i = 0; $i -lt $ports.length; $i++ ){
  $port = $ports[$i];
  iex "netsh interface portproxy delete v4tov4 listenport=$port listenaddress=$addr";
  iex "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr connectport=$port connectaddress=$remoteport";

  iex "netsh interface portproxy delete v4tov4 listenport=$port listenaddress=$addr0";
  iex "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr0 connectport=$port connectaddress=$remoteport";
}
