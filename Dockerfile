FROM nginx:latest
LABEL author="Raghad Almutlaq"

EXPOSE 80

COPY . /var/www

WORKDIR /var/www
RUN nginx install

VOLUME [ "/var/www" ]
CMD ["nginx", "start"]