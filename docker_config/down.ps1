docker container stop $(docker ps -a -q)

docker container rm $(docker ps -a -q)

docker rm $(docker ps -aq)

docker rmi $(docker images -q)

docker-compose down -v --rmi local

