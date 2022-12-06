FROM ubuntu
RUN apt-get update && apt-get install -y wget xz-utils curl

ENV APP_HOME /opt/apps

RUN echo "Constructing basic Ubuntu image"
RUN mkdir -p $APP_HOME
RUN groupadd app
RUN useradd app -g app -s /bin/sh -m -d $APP_HOME 

COPY ./ubuntu-entrypoint.sh /opt/ubuntu-entrypoint.sh
RUN chmod  755 /opt/ubuntu-entrypoint.sh

USER app
CMD ["/opt/ubuntu-entrypoint.sh"]
