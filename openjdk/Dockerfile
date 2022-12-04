FROM gokul2787/devtools:ubuntu

RUN echo "Building OpenJDK"

RUN echo "Download and setup Java 17"
RUN mkdir -p /opt/openjdk17 && cd /opt/openjdk17/ \
    && wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz \
    && tar -xzf openjdk-17.0.2_linux-x64_bin.tar.gz && rm -f openjdk-17.0.2_linux-x64_bin.tar.gz \
    && ls -lrth jdk-17.0.2

ENV JAVA_HOME=/opt/openjdk17/jdk-17.0.2
ENV PATH="$PATH:$JAVA_HOME/bin"

CMD ["java","--version"]
