FROM gettyimages/spark
MAINTAINER Thomas Quiviger

RUN curl -L -O https://download.elastic.co/beats/filebeat/filebeat_1.3.1_amd64.deb \
 && dpkg -i filebeat_1.3.1_amd64.deb

ADD ./conf/filebeat/filebeat.yml /etc/filebeat/filebeat.yml