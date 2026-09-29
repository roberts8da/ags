FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache curl openssl ca-certificates

COPY package.json .
RUN npm install --omit=dev && npm cache clean --force

COPY index.js index.html .

EXPOSE 3000

CMD ["node", "index.js"]
