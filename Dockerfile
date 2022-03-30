FROM node:lts AS dependencies
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json .
RUN npm install

FROM node:lts AS artifact
WORKDIR /usr/src/app
COPY --from=dependencies /usr/src/app/node_modules ./node_modules
COPY . .
RUN npm run build

FROM node:lts
ENV PG_CONNECTION_STRING=postgres://postgres:password@localhost:5432
WORKDIR /usr/src/app
COPY --from=artifact /usr/src/app .
EXPOSE 1337
CMD npm start