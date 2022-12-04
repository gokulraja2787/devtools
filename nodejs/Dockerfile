FROM gokul2787/devtools:ubuntu

RUN echo "Building Node.js 18 image"

RUN echo "Download and setup nodejs 18"
RUN cd /opt \
    && wget https://nodejs.org/dist/v18.12.1/node-v18.12.1-linux-x64.tar.xz

RUN cd /opt && tar -xf node-v18.12.1-linux-x64.tar.xz && rm -f node-v18.12.1-linux-x64.tar.xz \
    && mv node-v18.12.1-linux-x64 node18

ENV NODE_HOME=/opt/node18
ENV PATH="$PATH:$NODE_HOME/bin"

COPY ./test-node.sh /opt/test-node.sh
RUN chmod +x /opt/test-node.sh

CMD ["/opt/test-node.sh"]
