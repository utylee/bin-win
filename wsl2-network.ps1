
####
# 결국 아래를 사용하지 않습니다.
# 언제부턴가 내부 ip를 인식하지 못하는 것인지 포워딩후에도 계속 접속이 되지 않아
# $USER/.wslconfig 의 localhostForwarding 을 true로 준 후 아래 포워딩을
# 내부 아이피 직접이 아닌 localhost 로 지정하여 문제를 해결하였습니다 
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# ### ===> wsl, wsl2 를 동시에 사용하면서 default가 wsl1으로 설정되어 생긴 문제였습니다
# wsl1의 bash.exe 이다 보니 내부 wsl2 ip가 아닌 192.168.1.204 를 가져와서
# 포워딩이 전혀 안되고 있는 꼴이었습니다


$distribution = "Ubuntu24WSL2"

# $remoteport = wsl --distribution $distribution bash -c "ifconfig lo | grep 'inet '"
$remoteport = wsl --distribution $distribution bash -c "ifconfig eth0 | grep 'inet '"

# $remoteport = bash.exe -c "ifconfig eth0 | grep 'inet '"
$found = $remoteport -match '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';
echo $found;
echo $remoteport;

if( $found ){
  $remoteport = $matches[0];
} else{
  echo "The Script Exited, the ip address of WSL 2 cannot be found";
  exit;
}

#[Ports]

#All the ports you want to forward separated by coma
# 8826 를 ssh 포트로 쓰기에 추가했습니다
# react 개발을 위해 3000번대들도 여러 개 열어놔줍니다
# $ports=@(80,88,443,8080,8812, 8824, 3000, 3001, 3002, 5432);
$ports=@(80,88,443, 631, 8000, 8123, 8812, 8824, 3000, 3001, 3002, 5432, 9991);
#$ports=@(80,443);
echo $ports;


#[Static ip]
#You can change the addr to your ip config to listen to a specific address
#한번 127.0.0.1로 바꾸고 나서 버그가 생긴느낌입니다.ipv6까지 nginx에서설정해줘야하질 않나
# firefox에서는 localhost 접속이 안되질 않나..
# 그래서 두개다 추가하기로 합니다 
# $addr0='127.0.0.1';
$addr='0.0.0.0';
# $addr0='192.168.1.204';
$ports_a = $ports -join ",";


#Remove Firewall Exception Rules
iex "Remove-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' ";

#adding Exception Rules for inbound and outbound Rules
iex "New-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' -Direction Outbound -LocalPort $ports_a -Action Allow -Protocol TCP";
iex "New-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' -Direction Inbound -LocalPort $ports_a -Action Allow -Protocol TCP";

for( $i = 0; $i -lt $ports.length; $i++ ){
  $port = $ports[$i];
  iex "netsh interface portproxy delete v4tov4 listenport=$port listenaddress=$addr";
  # iex "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr connectport=$port connectaddress=localhost";
  # 내부 아이피로 포워딩을 못해주는 문제 발생. 
  echo "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr conn      ectport=$port connectaddress=$remoteport";
  iex "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr connectport=$port connectaddress=$remoteport";

  # iex "netsh interface portproxy delete v4tov4 listenport=$port listenaddress=$addr0";
  # iex "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr0 connectport=$port connectaddress=$remoteport";
}
# netsh : portforwarding 명령어 입니다 계속 남아있기에 초기화하는 명령어는
# 아래와 같습니다
# netsh interface portproxy reset
#
# from) https://honsal.blogspot.com/2021/12/wsl2_9.html?showComment=1646052897453
