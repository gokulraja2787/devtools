FROM ubuntu
RUN apt-get update && apt-get install -y wget xz-utils

RUN echo "Basic Ubuntu image"

COPY ./ubuntu-entrypoint.sh /opt/ubuntu-entrypoint.sh
RUN chmod  755 /opt/ubuntu-entrypoint.sh

CMD ["/opt/ubuntu-entrypoint.sh"]
