#! /bin/bash

curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh -
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://0oo8g0xh.mirror.aliyuncs.com"]
}
EOF
systemctl daemon-reload
systemctl restart docker
