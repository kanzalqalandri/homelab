#!/bin/bash


mkdir -p /etc/rancher/rke2/


cat << EOF > /etc/rancher/rke2/config.yaml

server: https://192.168.100.81:9345
cni: calico
token: aHMAD-sERVER
disable:
  - rke2-ingress-nginx


EOF


curl -sfL https://get.rke2.io | INSTALL_RKE2_TYPE="agent" INSTALL_RKE2_VERSION="v1.34.1+rke2r1" sh -
systemctl enable rke2-agent.service
systemctl start rke2-agent.service
