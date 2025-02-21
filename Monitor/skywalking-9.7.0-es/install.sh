docker-compose -f docker-compose.yml -p skywalking up -d
chmod -R 777 ./elasticsearch
for i in $(seq 1 30); do
  echo '等待skywalking-opa-server启动..., total: 30, current: '$i
  sleep 1s
done
for i in $(seq 1 2); do
  echo '重启skywalking-opa-ui...'
  sleep 30s
  docker ps|grep skywalking-ui|grep 9.7.0|awk '{print $1}'|xargs -I{} docker restart {}
  docker ps|grep skywalking-ui|grep 9.7.0|awk '{print $1}'|xargs -I{} docker logs {}
done
