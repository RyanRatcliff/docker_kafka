FROM ryanratcliff/java8
MAINTAINER Ryan Ratcliff <ryan.ratcliff@ryanratcliff.net>
ENV refreshed_at 2015-09-04

RUN wget -q -O - http://mirror.nexcess.net/apache/kafka/0.8.2.1/kafka_2.10-0.8.2.1.tgz | tar -xzf - -C /opt
RUN mv /opt/kafka_2.10-0.8.2.1 /opt/kafka
RUN mkdir /tmp/kafka-logs
ADD kafka-server-start.sh /opt/kafka/bin/kafka-server-start.sh
ADD start.sh /usr/local/bin/start.sh
RUN chmod +x /opt/kafka/bin/kafka-server-start.sh
RUN chmod +x /usr/local/bin/start.sh
ADD server.properties /opt/kafka/config/server.properties
ENTRYPOINT ["/usr/local/bin/start.sh"]
