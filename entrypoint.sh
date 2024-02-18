#!/bin/sh

curl -sL "https://github.com/apernet/hysteria/releases/latest/download/hysteria-linux-amd64" -o /home/hysteria && chmod +x /home/hysteria

upstream_api=${upstream_api:-https://example.com}
api_port=${api_port:-7653}
nodeid=${nodeid:-1}
core_path=${core_path:-/home/hysteria}
tls_cert=${tls_cert:-/home/cert}
tls_key=${tls_key:-/home/key}
psk=${psk:-88888888}
obfs=${obfs:-false}

cat > /home/config.ini <<EOF
[General]
upstream_api=$upstream_api
api_port=$api_port
nodeid=$nodeid
core_path=$core_path
tls_cert=$tls_cert
tls_key=$tls_key
psk=$psk
obfs=$obfs
EOF

/usr/bin/fish /opt/product -v debug -d /home
