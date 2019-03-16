FROM node

WORKDIR /app

ADD ./gcdcmadrid-kevin /app

RUN npm install

CMD npm start
