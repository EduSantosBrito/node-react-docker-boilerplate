FROM node:12.8-slim as build

WORKDIR /usr/src/app

COPY package.json .

COPY . .

ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN npm install
RUN npm run build --production

FROM nginx:1.17.3-alpine

RUN rm -rf /etc/nginx/conf.d
COPY conf /etc/nginx

COPY --from=build /usr/src/app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]