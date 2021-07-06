FROM nginx:alpine

RUN apk add --update apache2-utils mc vim && rm -rf /var/cache/apk/*
RUN mkdir /etc/apache2

COPY add_user.sh /docker-entrypoint.d/add_user.sh
RUN chmod 700 /docker-entrypoint.d/add_user.sh

COPY default.conf /etc/nginx/conf.d/default.conf