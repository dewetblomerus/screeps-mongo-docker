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
echo 'run docker exec -it screeps screeps cli'
echo 'enter system.resetAllData() into the screeps cli'
echo 'take a look at https://github.com/ScreepsMods/screepsmod-tickrate'
