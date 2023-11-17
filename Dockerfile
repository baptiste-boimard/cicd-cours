FROM node:18.18.2-alpine3.18 AS next

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

# COPY docker/next/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
# RUN chmod +x /usr/local/bin/docker-entrypoint

# ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["npm", "run", "start"]