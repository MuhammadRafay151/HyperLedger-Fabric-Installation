sudo apt update
sudo apt install git
sudo apt-get install nodejs

sudo apt install curl

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh


sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker $USER


sudo curl -L "https://github.com/docker/compose/releases/download/1.27.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

echo Your pc needs to restart to apply changes.do you want to restart? y/n
read varname
if [ $varname = 'y' ] || [ $varname = 'Y' ] 
then
sudo reboot
else
echo "warning!!!"
echo "reboot is required before installing hyperledger fabric" 
fi
