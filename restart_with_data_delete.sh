

rm -f artifacts/channel/create-certificate-with-ca/fabric-ca/org1/fabric-ca-server.db
rm -f artifacts/channel/create-certificate-with-ca/fabric-ca/org2/fabric-ca-server.db
rm -f artifacts/channel/create-certificate-with-ca/fabric-ca/ordererOrg/fabric-ca-server.db

rm -f ./api-2.0/org1-wallet
rm -f ./api-2.0/org2-wallet

docker-compose -f ./artifacts/channel/create-certificate-with-ca/docker-compose.yaml down -v

sleep 2
docker-compose -f ./artifacts/docker-compose.yaml down -v

sleep 5

docker-compose -f ./artifacts/channel/create-certificate-with-ca/docker-compose.yaml up -d

sleep 2

docker-compose -f ./artifacts/docker-compose.yaml up -d