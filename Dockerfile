FROM node:10.24.1
WORKDIR /usr/src/app
COPY package*.json ./
COPY package-lock.json package-lock.json
RUN npm install
COPY . .
#EXPOSE 9090
CMD [ "node", "index.js" ]
