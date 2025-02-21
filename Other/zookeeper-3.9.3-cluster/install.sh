docker-compose -f docker-compose.yml -p zookeeper up -d
docker ps|grep zookeeper|grep 3.9.3|awk '{print $1}'|xargs -I{} docker logs {}
