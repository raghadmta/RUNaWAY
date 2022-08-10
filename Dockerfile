FROM niginx:latest
LABEL author="Raghad Almutlaq"

EXPOSE 80

COPY . /var/www

WORKDIR /var/www
RUN niginx install

VOLUME [ "/var/www" ]
CMD ["niginx", "start"]