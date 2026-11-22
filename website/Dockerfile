FROM node:24-alpine AS build
WORKDIR /build
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:24-alpine
COPY --from=build /build/dist/website /usr/share/app
EXPOSE 4000
CMD ["node", "/usr/share/app/server/server.mjs"]

