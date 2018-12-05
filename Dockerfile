FROM docker.elastic.co/elasticsearch/elasticsearch-platinum:6.2.4
COPY x-pack-core-6.2.4.jar /usr/share/elasticsearch/plugins/x-pack/x-pack-core/
RUN chown elasticsearch /usr/share/elasticsearch/plugins/x-pack/x-pack-core/x-pack-core-6.2.4.jar && chmod 664 /usr/share/elasticsearch/plugins/x-pack/x-pack-core/x-pack-core-6.2.4.jar
