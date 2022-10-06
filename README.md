# Shadowsocks script
First of all, we must have a server that has access to the not censored internet
1. clone this repository on that server with command below: </br>
`git clone https://github.com/amirianos/shadowsocks-script.git` </br>
2. Give executable permission to bash file and finally run that bash file: </br>
`cd shadowsocks-script` </br>
`chmod +x commands.sh` </br>
`./commands.sh` </br>
3. Config shadowsocks client on your device (Windows,Linux,Android,Iphone) to connect to your server and now you can connect to the not censored internet </br>

For troubleshooting: </br>
1. `netstat -tunla |grep 443`OR`ss -nltp|grep 443` => whether server listening to 443 or not </br>
2. `tcpdump -i any port 443` => for monitor and print incomming requests to your server from your client. </br>
