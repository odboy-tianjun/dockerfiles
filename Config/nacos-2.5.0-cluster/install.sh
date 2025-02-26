#curl -O https://github.com/alibaba/nacos/blob/master/distribution/conf/mysql-schema.sql?spm=5238cd80.72a042d5.0.0.4bddcd36DjqTD6&file=mysql-schema.sql
#mv mysql-schema.sql ./scripts/
docker-compose -f docker-compose.yml -p nacos-cluster up -d