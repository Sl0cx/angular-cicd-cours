# Etape 1
FROM node:16-alpine as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build

#Etape 2
FROM nginx:alpine AS prod

COPY --from=build /app/build /usr/share/nginx/html

CMD ["sh, "/usr/share/nginx/html/env.js""]