FROM node:16-alpine3.18

EXPOSE 5000

COPY package* ./

RUN npm install

RUN npm install -g serve

COPY . .

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]
