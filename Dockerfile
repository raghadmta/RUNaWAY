FROM node:latest
LABEL author="Raghad Almutlaq"

EXPOSE 80

COPY . /var/www

WORKDIR /var/www
RUN npm install

VOLUME [ "/var/www" ]
CMD ["npm", "start"]