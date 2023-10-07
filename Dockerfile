FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g n && n latest

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node","start"]


