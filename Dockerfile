FROM node:16.4.0-buster

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies (package.json and package-lock.json)
COPY package*.json ./
RUN npm install

# Bundle app source (server.js)
COPY . .

# Listen port
EXPOSE 8080

# Run Node.js
CMD [ "node", "server.js" ]