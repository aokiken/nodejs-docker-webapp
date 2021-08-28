FROM node:14

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
