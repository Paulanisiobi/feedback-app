FROM node:18-alpine as build

WORKDIR /react-feedback

COPY . /react-feedback

RUN npm install
RUN npm run build



FROM nginx:alpine

COPY --from=build /react-feedback/build /usr/share/nginx/html
COPY defualt /etc/nginx/conf.d/default.conf
