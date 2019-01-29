FROM docker.elastic.co/elasticsearch/elasticsearch:6.6.0
ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch
