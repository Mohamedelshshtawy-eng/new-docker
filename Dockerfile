FROM node:18  as base

WORKDIR /app

COPY   package.json .

RUN npm install -g nodemon

COPY   . .

EXPOSE 4000

CMD [ "npm","run","dev" ]

FROM base as production

WORKDIR /app

COPY   package.json .

RUN npm install --only=production

COPY   . .

EXPOSE 4000

CMD [ "npm", "start" ]



FROM base  as development

WORKDIR /app

COPY   package.json .

RUN npm install -g nodemon

COPY   . .

EXPOSE 4000

CMD [ "npm","run","dev" ]