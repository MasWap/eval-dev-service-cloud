FROM node:14

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

ENV API2_URL=http://api2-service:3001

EXPOSE 3000

CMD ["node", "index.js"]