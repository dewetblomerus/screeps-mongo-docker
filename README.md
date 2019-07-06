Used https://docs.screeps.com/contributed/ps_ubuntu.html
Used https://github.com/ags131/docker-screeps-server

cp example.env .env
edit .env to have your steam api key which you can find here https://steamcommunity.com/dev/apikey
sudo ./init.sh

docker exec -it screeps screeps cli
system.resetAllData()
bots.removeUser('MichaelbBot');
echo 'setTickRate(50)'
