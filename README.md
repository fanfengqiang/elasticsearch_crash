# elasticsearch_crash

版本：6.2.4

Docker image：fanfengqiang/elasticsearch_crash:v1

启动方式：

```bash
docker rm elastic && \
TEMP_IP=`uuidgen -r`  && \
docker run -d --name elastic \
--restart=always  --net=host  \
-p 9200:9200 -p 9300:9300 \
-e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" \
-e "discovery.type=single-node"  -e ES_JAVA_OPTS="-Xms512m -Xmx512m"  \
-e ELASTIC_PASSWORD=x8w23hjskskjpq8376sdj3987z6 \
-e  KIBANA_PASSWORD=9x98df78ahkjl567ku2yy6wpc7  \
-l "SERVICE_TAGS=elastic" \
-l  "SERVICE_NAME=HB2-2018_11_12-elastic"  \
-l "SERVICE_9200_ID=${TEMP_IP}_9200"     \
-l "SERVICE_9300_ID=${TEMP_IP}_9300" \
fanfengqiang/elasticsearch_crash:v1
```

激活

```bash
curl  -H "Content-Type: application/json" -X PUT 'elastic:x8w23hjskskjpq8376sdj3987z6@localhost:9200/_xpack/license' -d @license.json
```

license.json到官网申请下载并修改type和expiry_date_in_millis

地址：https://register.elastic.co/xpack_register

type改为platinum 白金版，expiry_date_in_millis改为3111921479999，有效期为50年。

