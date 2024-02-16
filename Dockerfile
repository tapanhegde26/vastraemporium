FROM node:alpine

WORKDIR /usr/src/app

ENV port 8000

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 80

CMD ["node","start"]


