FROM node

WORKDIR /app

ADD ./gcdcmadrid-kevinsimper /app

RUN npm install

CMD npm start
