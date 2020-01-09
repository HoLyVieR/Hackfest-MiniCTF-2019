FROM node:10
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get install -y wget curl vim
EXPOSE 3000
CMD [ "node", "index.js" ]
