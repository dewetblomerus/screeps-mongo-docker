docker-compose up -d
docker-compose down -v
rm data/mods.json
cp mods.json data
echo '' >> data/.screepsrc
echo '' >> data/.screepsrc
echo '[mongo]' >> data/.screepsrc
echo 'host = mongo' >> data/.screepsrc
echo '' >> data/.screepsrc
echo '[redis]' >> data/.screepsrc
echo 'host = redis' >> data/.screepsrc

docker-compose up -d
echo 'run the following:'
echo 'docker exec -it screeps screeps cli'
echo 'system.resetAllData()'
echo 'setTickRate(50)'
