FROM gokul2787/devtools:openjdk17
RUN apt-get install -y gpg 

RUN echo "Download activemq binaries"
RUN mkdir -p /opt/activemq && cd /opt/activemq \
    && wget https://downloads.apache.org/activemq/5.17.3/apache-activemq-5.17.3-bin.tar.gz \
    && wget https://downloads.apache.org/activemq/5.17.3/apache-activemq-5.17.3-bin.tar.gz.asc \
    && pwd && ls -lrth && echo "Verifying binaries"
RUN cd /opt/activemq && wget https://downloads.apache.org/activemq/KEYS \
    && gpg --import KEYS && gpg --verify apache-activemq-5.17.3-bin.tar.gz.asc apache-activemq-5.17.3-bin.tar.gz
RUN echo "Extracting binaries"
RUN cd /opt/activemq && tar -xzf apache-activemq-5.17.3-bin.tar.gz \
    && rm -f apache-activemq-5.17.3-bin.tar.gz apache-activemq-5.17.3-bin.tar.gz.asc

COPY ./activemq-entrypoint.sh /opt/
RUN chmod +x /opt/activemq-entrypoint.sh

RUN apt purge gpg -y

ENV ACTIVEMQ_VERSION=5.17.3
ENV ACTIVEMQ=apache-activemq-5.17.3
ENV ACTIVEMQ_TCP=61616 ACTIVEMQ_AMQP=5672 ACTIVEMQ_STOMP=61613 ACTIVEMQ_MQTT=1883 ACTIVEMQ_WS=61614 ACTIVEMQ_UI=8161
ENV ACTIVEMQ_HOME=/opt/activemq/apache-activemq-5.17.3

EXPOSE 8161/tcp 5672/tcp 61616/tcp 61613/tcp 1883/tcp 61614/tcp
CMD [ "/opt/activemq-entrypoint.sh" ]
