FROM node:16-alpine3.18

EXPOSE 5000

COPY package* ./

RUN npm install && npm install -g serve

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm run build ${REACT_APP_BACKEND_URL} && adduser -D appuser && rm -rf /var/cache/apk/*

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
