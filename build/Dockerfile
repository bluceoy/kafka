FROM java:openjdk-8-jre

ENV DEBIAN_FRONTEND noninteractive
ENV SCALA_VERSION 2.11
ENV KAFKA_VERSION 1.0.0
ENV KAFKA_HOME /opt/kafka

# Install Kafka
RUN wget http://apache.mirrors.spacedump.net/kafka/"$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -O /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz && \
    tar xfz /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -C /opt && \
    mv /opt/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION" /opt/kafka && \
    rm /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz 

EXPOSE 9092

ENTRYPOINT ["/opt/kafka/bin/kafka-server-start.sh", "/opt/kafka/config/server.properties"]
