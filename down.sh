
docker-compose -f ./artifacts/channel/create-certificate-with-ca/docker-compose.yaml down 

sleep 2
docker-compose -f ./artifacts/docker-compose.yaml down 