FROM ubuntu
RUN apt-get update && apt-get install -y wget gpg nginx

RUN echo "Setup ngnix"
COPY ./default.conf /etc/ngnix/conf.d/default.conf
COPY ./html/index.html /var/www/html/index.html
COPY ./html/500.html /var/www/html/500.html
COPY ./html/404.html /var/www/html/404.html

COPY ./nginx-entrypoint.sh /

RUN echo "Create location for SSL"
RUN mkdir -p /opt/ssl

EXPOSE 443/tcp 80/tcp

CMD ["/nginx-entrypoint.sh"]

