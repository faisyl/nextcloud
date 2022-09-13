FROM nextcloud:23-apache
RUN groupmod -og 100 www-data && \
    usermod -u 99 -g 100 www-data
