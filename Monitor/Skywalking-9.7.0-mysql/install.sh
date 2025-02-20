docker-compose -f docker-compose.yml -p skywalking up -d
echo '等待skywalking-opa-server启动...'
sleep 30000
echo '重启skywalking-opa-ui...'
docker ps|grep skywalking-ui|grep 9.5.0|awk '{print $1}'|xargs -I{} docker restart {}
docker ps|grep skywalking-ui|grep 9.5.0|awk '{print $1}'|xargs -I{} docker restart {}
docker ps|grep skywalking-ui|grep 9.5.0|awk '{print $1}'|xargs -I{} docker logs -f {}