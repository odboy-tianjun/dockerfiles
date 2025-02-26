chmod -R 777 ./broker1
chmod -R 777 ./broker2
docker-compose -f docker-compose.yml -p rocketmq up -d