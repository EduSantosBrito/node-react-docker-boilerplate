FROM node:12.8-slim

# Create app directory
WORKDIR /usr/src/server


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

RUN npm install -g nodemon ts-node

EXPOSE 3001

CMD ["nodemon", "./src/index.ts"]