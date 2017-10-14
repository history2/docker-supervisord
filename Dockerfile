FROM opsbears/base:stable

RUN apt-get -y install supervisor && mkdir -p /etc/supervisor && mkdir -p /etc/supervisor/conf.d

COPY etc/ /etc
COPY usr/ /usr

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisor.conf"]
