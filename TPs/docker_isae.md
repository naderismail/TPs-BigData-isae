mkdir -p /tmp/docker-ismail
mkdir -p ~/.config/systemd/user/docker.service.d
cat <<'EOF' > ~/.config/systemd/user/docker.service.d/env.conf
[Service]
Environment="XDG_DATA_HOME=/tmp/docker-ismail"
EOF


mkdir -p ~/.config/docker

cat > ~/.config/docker/daemon.json <<'EOF'
{
  "proxies": {
    "http-proxy": "http://proxy.isae.fr:3128",
    "https-proxy": "http://proxy.isae.fr:3128",
    "no-proxy": "*.isae-supaero.fr,*.isae.fr"
  },
  "bip": "172.26.0.1/16",
  "registry-mirrors": [ "https://mirror-docker.isae-supaero.fr" ]
}
EOF

dockerd-rootless-setuptool.sh install


# A la fin du tp bien penser à tuer le service:

systemctl --user stop docker
