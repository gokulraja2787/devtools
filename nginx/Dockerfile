FROM gokul2787/devtools:ubuntu
USER root
RUN apt-get install -y nginx

RUN echo "Setup ngnix"
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./html/index.html /var/www/html/index.html
COPY ./html/500.html /var/www/html/500.html
COPY ./html/404.html /var/www/html/404.html

COPY ./nginx-entrypoint.sh /

RUN chown app:app -R /etc/nginx && chown app:app -R /var/www \
    && chown app:app -R /var/log/nginx && chown app:app -R /var/lib/nginx \
    && touch /var/run/nginx.pid  && chown app:app /var/run/nginx.pid 

RUN echo "Create location for SSL"
RUN mkdir -p /opt/ssl

RUN chown app:app -R /opt/ssl && chown app:app -R /nginx-entrypoint.sh

EXPOSE 443/tcp 80/tcp

USER app
CMD ["/nginx-entrypoint.sh"]
