#! /bin/bash
MASTER_IP="10.0.0.11"


curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-ip=$MASTER_IP --flannel-iface=eth1 --write-kubeconfig-mode=644" sh -
systemctl status k3s | grep -B 3 Active

TOKEN=`sudo  cat /var/lib/rancher/k3s/server/token`

config_path="/vagrant/configs"
if [ -d $config_path ]; then
   rm -f $config_path/*
else
   mkdir -p /vagrant/configs
fi

echo $TOKEN > /vagrant/configs/token
