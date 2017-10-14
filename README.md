# Supervisord base image

This is a Docker base image with Ubuntu and supervisord installed. It starts all services, and if any one service fails, it stops the whole container.

To install services you shoud extend this image and add your services to /etc/supervisor/conf.d/