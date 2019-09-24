FROM node:12.8-slim
WORKDIR /usr/src/app
COPY package.json .
ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
EXPOSE 3000
CMD ["npm", "start"]
