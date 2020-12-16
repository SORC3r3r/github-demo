From node:alpine

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY app.js app.js

RUN npm install && \
    npm cache clear -f

CMD ["npm", "start"]
