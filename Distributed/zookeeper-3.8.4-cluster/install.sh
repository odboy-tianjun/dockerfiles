docker-compose -f docker-compose.yml -p zookeeper up -d
docker ps|grep zookeeper|grep 3.8.4|awk '{print $1}'|xargs -I{} docker logs {}
