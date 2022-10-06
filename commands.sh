#!/bin/bash
sudo apt update
sudo apt install -y figlet simple-obfs shadowsocks-libev
cat << EOF > freedom.txt
{
    "server":["0.0.0.0"],
    "server_port":443,
    "local_port":1080,
    "password":"password",
    "timeout":300,
    "workers":8,
    "plugin":"obfs-server",
    "fast_open":true,
    "reuse_port":true,
    "plugin_opts": "obfs=http;obfs-host=www.google.com",
    "method":"chacha20-ietf-poly1305"
}
EOF
cat freedom.txt > /etc/shadowsocks-libev/config.json
sudo systemctl restart shadowsocks-libev.service
figlet Freedom
