#!/bin/bash


mkdir -p /etc/rancher/rke2/


cat <<EOF >/etc/rancher/rke2/config.yaml

cni: calico
token: aHMAD-sERVER
disable:
  - rke2-ingress-nginx

EOF

curl -sfL https://get.rke2.io | INSTALL_RKE2_TYPE="server" INSTALL_RKE2_VERSION="v1.34.1+rke2r1" sh -

systemctl enable rke2-server.service
systemctl start rke2-server.service

mkdir ~/.kube
cp /var/lib/rancher/rke2/bin/kubectl /usr/local/bin
cp /etc/rancher/rke2/rke2.yaml ~/.kube/config
