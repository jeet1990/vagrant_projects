 echo "======>  downloading docker script"
 curl -fsSL https://get.docker.com -o get-docker.sh
 
 echo "======> installing docker script"
 sudo sh get-docker.sh

echo "======> adding user to docker"
 sudo usermod -aG docker vagrant;