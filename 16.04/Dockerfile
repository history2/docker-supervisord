FROM opsbears/base:16.04

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -y \
    && apt-get -y install supervisor \
    && mkdir -p /etc/supervisor \
    && mkdir -p /etc/supervisor/conf.d \
    && rm -rf /var/lib/apt/lists/*

COPY root /

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisor.conf"]
