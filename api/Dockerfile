FROM node:24-alpine AS build
WORKDIR /build
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:24-alpine
COPY --from=build /build/node_modules/ /usr/share/app/node_modules/
COPY --from=build /build/dist/ /usr/share/app/dist/
EXPOSE 3000
CMD ["node", "/usr/share/app/dist/main.js"]
