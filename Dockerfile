FROM nextcloud:latest
RUN apt-get update && apt-get install -y \
    smbclient \
    && rm -rf /var/lib/apt/lists/*
RUN groupmod -og 100 www-data && \
    usermod -u 99 -g 100 www-data
ADD entrypoint.sh /
