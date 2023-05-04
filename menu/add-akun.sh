#!/bin/bash
# SL
# ==========================================
# Color
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
###########- END COLOR CODE -##########

BURIQ () {
    curl -sS https://raw.githubusercontent.com/MyMasWayVPN/MyMasWayVPN.github.io/main/wkwkwkwk > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/MyMasWayVPN/MyMasWayVPN.github.io/main/wkwkwkwk | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/MyMasWayVPN/MyMasWayVPN.github.io/main/wkwkwkwk | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
PERMISSION
clear
source /var/lib/crot/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
tr="$(cat ~/log-install.txt | grep -w "Trojan WS " | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;41;36m           XRAY ALL ACCOUNT          \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

		read -rp "User: " -e user
		user_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
clear
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
		echo -e "\E[0;41;36m           XRAY ALL ACCOUNT          \E[0m"
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			read -n 1 -s -r -p "Press any key to back on menu"
			menu
		fi
	done
#
#
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#trojanws$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

sed -i '/#vless$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

sed -i '/#vmess$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vmessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

#
cat>/etc/xray/vmess-$user-tls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/mw-vmws",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF
cat>/etc/xray/vmess-$user-nontls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/mw-vmws",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF
cat>/etc/xray/vmess-$user-worryfree.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/worryfree",
      "type": "none",
      "host": "tsel.me",
      "tls": "none"
}
EOF
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmesslinkws="vmess://$(base64 -w 0 /etc/xray/vmess-$user-tls.json)"
nonvmesslinkws="vmess://$(base64 -w 0 /etc/xray/vmess-$user-nontls.json)"
worryfreelink="vmess://$(base64 -w 0 /etc/xray/vmess-$user-worryfree.json)"
vmesslinkgrpc="vmess://$(base64 -w 0 /etc/xray/vmess-$user-tls.json)"
rm -rf /etc/xray/vmess-$user-tls.json
rm -rf /etc/xray/vmess-$user-nontls.json
rm -rf /etc/xray/vmess-$user-worryfree.json
#GRPC
#
###
cat>/etc/xray/vmess-$user-tls.json<<EOF
      {
      "v": "4",
      "ps": "🔰VMESS GRPC TLS ${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "mw-vmgrpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF
#nginx vm user
cat > /home/vps/public_html/vmess/$user$biji.txt<<EOF
      
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
====== Vmess =======
Username: $user
IP: $MYIP
Host/Domain: $domain
Password/ID: $uuid
Expired: $exp
Alter ID: 0
Network: WS/GRPC
====== Path =======
=> WS TLS : /mw-vmws
=> GRPC   : mw-vmgrpc
=> WORRYFREE   :  /worryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess WS TLS    : $vmesslinkws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess GRPC TLS  : $vmesslinkgrpc
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess WS HTTP/NONE TLS   : $nonvmesslinkws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess WORRYFREE   : $worryfreelink
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
cat > /home/vps/public_html/vmess/$user-openclash$biji.txt<<EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess Ws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: IPCDN/BUGCDN.COM
  port: 80
  type: vmess
  uuid: $uuid
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: $domain
  network: ws
  ws-opts:
    path: /mw-vmws
    headers:
      Host: $domain
  udp: true
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess Worryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: $domain
  type: vmess
  uuid: $uuid
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: $domain
  network: ws
  ws-opts:
    path: /worryfree
    headers:
      Host: tsel.me
  udp: true

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess Ws-TLS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: IPCDN/BUGCDN.COM
  port: 443
  type: vmess
  uuid: $uuid
  cipher: auto
  tls: true
  udp: true
  skip-cert-verify: false
  servername: $domain
  network: ws
  ws-opts:
    path: /mw-vmws
    headers:
      Host: $domain
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vmess GRPC
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: $domain
  port: 443
  type: vmess
  uuid: $uuid
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: BUGSNI.COM
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: mw-vmgrpc
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
#GRPC
#
systemctl restart xray
#buatvless
cat>/etc/xray/vless-$user-tls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/mw-vlws",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF
cat>/etc/xray/vless-$user-nontls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/mw-vlws",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF
cat>/etc/xray/vless-$user-worryfree.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/worryfree",
      "type": "none",
      "host": "tsel.me",
      "tls": "none"
}
EOF
vless_base641=$( base64 -w 0 <<< $vless_json1)
vless_base642=$( base64 -w 0 <<< $vless_json2)
vlesslinkws="vless://$(base64 -w 0 /etc/xray/vless-$user-tls.json)"
nonvlesslinkws="vless://$(base64 -w 0 /etc/xray/vless-$user-nontls.json)"
vlworryfreelink="vless://$(base64 -w 0 /etc/xray/vless-$user-worryfree.json)"
vlesslinkgrpc="vless://$(base64 -w 0 /etc/xray/vless-$user-tls.json)"
rm -rf /etc/xray/vless-$user-tls.json
rm -rf /etc/xray/vless-$user-nontls.json
rm -rf /etc/xray/vless-$user-worryfree.json
###
cat>/etc/xray/vless-$user-tls.json<<EOF
      {
      "v": "4",
      "ps": "🔰VLESS GRPC TLS ${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "mw-vlgrpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF

#nginx user vless
cat > /home/vps/public_html/vless/$user$biji.txt<<EOF
      
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
====== Vless =======
Username: $user
IP: $MYIP
Host/Domain: $domain
Password/ID: $uuid
Expired: $exp
Alter ID: 0
Network: WS/GRPC
====== Path =======
=> WS TLS : /mw-vlws
=> GRPC   : mw-vlgrpc
=> WORRYFREE   : /worryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless WS TLS    : $vlesslinkws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless GRPC TLS  : $vlesslinkgrpc
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless WS HTTP/NONE TLS   : $nonvlesslinkws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless Worryfree   : $vlworryfreelink
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
cat > /home/vps/public_html/vless/$user-openclash$biji.txt<<EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless Ws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: IPCDN/BUGCDN.COM
  port: 80
  type: vless
  uuid: $uuid
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: $domain
  network: ws
  ws-opts:
    path: /mw-vlws
    headers:
      Host: $domain
  udp: true
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless Worryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: $domain
  port: 80
  type: vless
  uuid: $uuid
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: $domain
  network: ws
  ws-opts:
    path: /worryfree
    headers:
      Host: tsel.me
  udp: true
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless Ws-TLS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: IPCDN/BUGCDN.COM
  port: 443
  type: vless
  uuid: $uuid
  cipher: auto
  tls: true
  skip-cert-verify: false
  servername: $domain
  network: ws
  ws-opts:
    path: /mw-vlws
    headers:
      Host: $domain
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vless GRPC
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: $domain
  port: 443
  type: vless
  uuid: $uuid
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: BUGSNI.COM
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: mw-vlgrpc
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
#buattrojan
trojanlinkgrpc="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=mw-trgrpc&sni=bug.com#${user}"
trojanlinkws="trojan://${uuid}@${domain}:443?path=/mw-trws&security=tls&host=${domain}&type=ws&sni=www.masway.com#${user}"
trworryfree="trojan://${uuid}@${domain}:443?path=/worryfree&security=tls&host=${domain}&type=ws&sni=www.masway.com#${user}"
cat > /home/vps/public_html/trojan/$user-openclash$biji.txt<<EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Trojan Ws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: IPCDN/BUGCDN.COM
  port: 443
  type: trojan
  password: $uuid
  network: ws
  sni: $domain
  skip-cert-verify: true
  udp: true
  ws-opts:
      path: /mw-trws
      headers:
          Host: $domain
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Trojan Worryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: $domain
  port: 443
  type: trojan
  password: $uuid
  network: ws
  sni: $domain
  skip-cert-verify: true
  udp: true
  ws-opts:
      path: /worryfree
      headers:
          Host: tsel.me
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Trojan GRPC
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
- name: $user
  server: $domain
  port: 443
  type: trojan
  password: $uuid
  network: grpc
  sni: bug.com
  skip-cert-verify: true
  udp: true
  grpc-opts:
      grpc-service-name: mw-grpc
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

cat > /home/vps/public_html/trojan/$user$biji.txt<<EOF
      
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
====== Trojan =======
Username: $user
IP: $MYIP
Host/Domain: $domain
Password/ID: $uuid
Expired: $exp
Alter ID: 0
Network: WS/GRPC
====== Path =======
WS TLS : /mw-trws
GRPC   : mw-trgrpc
WORRYFREE   : /worryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Trojan WS TLS    : $trojanlinkws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Trojan Worryfree    : $trworryfree
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Trojan GRPC TLS  : $trojanlinkgrpc
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


EOF

#buatshadowsocks
#
cipher="aes-128-gcm"
sed -i '/#ssws$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","method": "'""$cipher""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#ssgrpc$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","method": "'""$cipher""'","email": "'""$user""'"' /etc/xray/config.json
echo $cipher:$uuid > /tmp/log
shadowsocks_base64=$(cat /tmp/log)
echo -n "${shadowsocks_base64}" | base64 > /tmp/log1
shadowsocks_base64e=$(cat /tmp/log1)
shadowsockslink="ss://${shadowsocks_base64e}@$domain:$tls?plugin=xray-plugin;mux=0;path=/xrayssws;host=$domain;tls#${user}"
shadowsockslink1="ss://${shadowsocks_base64e}@$domain:$tls?plugin=xray-plugin;mux=0;serviceName=ss-grpc;host=$domain;tls#${user}"
systemctl restart xray
rm -rf /tmp/log
rm -rf /tmp/log1
cat > /home/vps/public_html/ss/ss-ws-$user$biji.txt <<-END
{ 
 "dns": {
    "servers": [
      "8.8.8.8",
      "8.8.4.4"
    ]
  },
 "inbounds": [
   {
      "port": 10808,
      "protocol": "socks",
      "settings": {
        "auth": "noauth",
        "udp": true,
        "userLevel": 8
      },
      "sniffing": {
        "destOverride": [
          "http",
          "tls"
        ],
        "enabled": true
      },
      "tag": "socks"
    },
    {
      "port": 10809,
      "protocol": "http",
      "settings": {
        "userLevel": 8
      },
      "tag": "http"
    }
  ],
  "log": {
    "loglevel": "none"
  },
  "outbounds": [
    {
      "mux": {
        "enabled": true
      },
      "protocol": "shadowsocks",
      "settings": {
        "servers": [
          {
            "address": "$domain",
            "level": 8,
            "method": "$cipher",
            "password": "$uuid",
            "port": 443
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "security": "tls",
        "tlsSettings": {
          "allowInsecure": true,
          "serverName": "isi_bug_disini"
        },
        "wsSettings": {
          "headers": {
            "Host": "$domain"
          },
          "path": "/mw-ssws"
        }
      },
      "tag": "proxy"
    },
    {
      "protocol": "freedom",
      "settings": {},
      "tag": "direct"
    },
    {
      "protocol": "blackhole",
      "settings": {
        "response": {
          "type": "http"
        }
      },
      "tag": "block"
    }
  ],
  "policy": {
    "levels": {
      "8": {
        "connIdle": 300,
        "downlinkOnly": 1,
        "handshake": 4,
        "uplinkOnly": 1
      }
    },
    "system": {
      "statsOutboundUplink": true,
      "statsOutboundDownlink": true
    }
  },
  "routing": {
    "domainStrategy": "Asls",
"rules": []
  },
  "stats": {}
}
END
cat > /home/vps/public_html/ss/ss-grpc-$user$biji.txt <<-END
{
    "dns": {
    "servers": [
      "8.8.8.8",
      "8.8.4.4"
    ]
  },
 "inbounds": [
   {
      "port": 10808,
      "protocol": "socks",
      "settings": {
        "auth": "noauth",
        "udp": true,
        "userLevel": 8
      },
      "sniffing": {
        "destOverride": [
          "http",
          "tls"
        ],
        "enabled": true
      },
      "tag": "socks"
    },
    {
      "port": 10809,
      "protocol": "http",
      "settings": {
        "userLevel": 8
      },
      "tag": "http"
    }
  ],
  "log": {
    "loglevel": "none"
  },
  "outbounds": [
    {
      "mux": {
        "enabled": true
      },
      "protocol": "shadowsocks",
      "settings": {
        "servers": [
          {
            "address": "$domain",
            "level": 8,
            "method": "$cipher",
            "password": "$uuid",
            "port": 443
          }
        ]
      },
      "streamSettings": {
        "grpcSettings": {
          "multiMode": true,
          "serviceName": "mw-ssgrpc"
        },
        "network": "grpc",
        "security": "tls",
        "tlsSettings": {
          "allowInsecure": true,
          "serverName": "isi_bug_disini"
        }
      },
      "tag": "proxy"
    },
    {
      "protocol": "freedom",
      "settings": {},
      "tag": "direct"
    },
    {
      "protocol": "blackhole",
      "settings": {
        "response": {
          "type": "http"
        }
      },
      "tag": "block"
    }
  ],
  "policy": {
    "levels": {
      "8": {
        "connIdle": 300,
        "downlinkOnly": 1,
        "handshake": 4,
        "uplinkOnly": 1
      }
    },
    "system": {
      "statsOutboundUplink": true,
      "statsOutboundDownlink": true
    }
  },
  "routing": {
    "domainStrategy": "Asls",
"rules": []
  },
  "stats": {}
}
END

#
#buatvmess
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "====== XRAY Multi Port=======" | tee -a /etc/log-create-user.log
echo -e "INFORMASI AKUN VPN XRAY" | tee -a /etc/log-create-user.log
echo -e "IP: $MYIP" | tee -a /etc/log-create-user.log
echo -e "Host/Domain: $domain" | tee -a /etc/log-create-user.log
echo -e "Password/ID: $uuid" | tee -a /etc/log-create-user.log
echo -e "Expired: $exp" | tee -a /etc/log-create-user.log
echo -e "====== Service Port =======" | tee -a /etc/log-create-user.log
echo -e "Websocket TLS  : 443" | tee -a /etc/log-create-user.log
echo -e "Websocket HTTP : 80" | tee -a /etc/log-create-user.log
echo -e "GRPC TLS       : 443" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "====== Trojan =======" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "====== Path =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /mw-trws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : mw-trgrpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/mw-trws" | tee -a /etc/log-create-user.log
echo -e "=> Worryfree   : /worryfree" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Detail Account Trojan   : http://${domain}:81/trojan/$user$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Custom Config Openclash : http://${domain}:81/trojan/$user-openclash$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "====== Shadowsocks =======" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "Method Cipers : aes-128-gcm" | tee -a /etc/log-create-user.log
echo -e "====== Path =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /mw-ssws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : mw-ssgrpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/mw-ssws" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "SS WS TLS    : $shadowsockslink" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "SS GRPC  : $shadowsockslink1" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Custom Config WS TLS   : http://${domain}:81/ss/ss-ws-$user$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Custom Config GRPC TLS : http://${domain}:81/ss/ss-grpc-$user$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "====== Vless =======" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "====== Path =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /mw-vlws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : mw-vlgrpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/mw-vlws" | tee -a /etc/log-create-user.log
echo -e "=> Worryfree   : /worryfree" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Detail Account Vless   : http://${domain}:81/vless/$user$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Openclash Config   : http://${domain}:81/vless/$user-openclash$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "====== Vmess =======" | tee -a /etc/log-create-user.log
echo -e "Alter ID: 0" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "====== Path =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /mw-vmws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : mw-vmgrpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/mw-vmws" | tee -a /etc/log-create-user.log
echo -e "=> Worryfree   : /worryfree" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Detail Account Vmess   : http://${domain}:81/vmess/$user$bii.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "URL Openclash Config  : http://${domain}:81/vmess/$user-openclash$biji.txt" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "SCRIPT By MasWayVPN" | tee -a /etc/log-create-user.log
echo "" | tee -a /etc/log-create-user.log
cd
