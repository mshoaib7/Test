
docker-compose -f ./artifacts/channel/create-certificate-with-ca/docker-compose.yaml up -d

docker-compose -f ./artifacts/docker-compose.yaml up -d

sleep 5
./createChannel.sh

sleep 2

./deployChaincode.sh

sleep 3

forever stop 0
forever stop 1
sleep 3
forever start  ./api-2.0/app.js

forever start ./api-2.0/imageserver.js