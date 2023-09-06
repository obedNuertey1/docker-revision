# syntax=docker/dockerfile:1

FROM node:18-alpine AS build
WORKDIR /getting-started-app
COPY package.json package-lock.json ./
RUN npm install --production
COPY . .
CMD ["node", "--watch", "src/index.js", "./src"]
EXPOSE 3000