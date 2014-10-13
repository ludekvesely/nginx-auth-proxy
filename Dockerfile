FROM x110dc/base

# apache2-utils only needed for htpasswd command
RUN apt-get install -yq apache2-utils nginx

RUN rm /etc/nginx/sites-enabled/default
ADD proxy.conf /etc/nginx/conf.d/

ENV USER foo
ENV PASSWORD bar
ENV SERVER_NAME quux
ENV UPSTREAM_ADDRESS 1.2.3.4
ENV UPSTREAM_PORT 80

VOLUME /var/log

EXPOSE 80

ADD run.sh /

CMD /run.sh
