FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/

RUN chgrp -R 0 /var/cache /var/run && \
    chmod -R g=u /var/cache /var/run && \
    apk add bind-tools

