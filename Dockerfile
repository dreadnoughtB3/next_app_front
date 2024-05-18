FROM node:22-alpine
WORKDIR /app
COPY package.json package-lock.json ./
COPY . .
RUN yarn install 
RUN yarn build
EXPOSE 3000