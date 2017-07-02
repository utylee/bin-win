set USER=samba
set PASSWD=9321
net use U: \\192.168.0.207\3001 %PASSWD% /user:%USER% /persistent:no
net use V: \\192.168.0.207\3002 %PASSWD% /user:%USER% /persistent:no
