# #! /bin/bash
TOKEN="$(cat /vagrant/configs/token)"
NODE_IP="`hostname -I | awk '{print $1}'`"

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-ip=$NODE_IP --flannel-iface=eth1" K3S_URL="https://10.0.0.11:6443" K3S_TOKEN="$TOKEN" sh -
systemctl status k3s-agent | grep -B 3 Active

