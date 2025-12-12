# Run the steps one by one and replace 'ismail' with 'your name':
USER_NAME="ismail"
mkdir -p /tmp/docker-"$USER_NAME"
mkdir -p ~/.config/systemd/user/docker.service.d
cat <<'EOF' > ~/.config/systemd/user/docker.service.d/env.conf
[Service]
Environment="XDG_DATA_HOME=/tmp/docker-${USER_NAME}"
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

# At the end of the lab, be sure to stop the service:
systemctl --user stop docker
