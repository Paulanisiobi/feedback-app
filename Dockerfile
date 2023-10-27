FROM node:18-alpine

WORKDIR /react-feedback

COPY . /react-feedback

RUN npm install

EXPOSE 3000

CMD npm start
