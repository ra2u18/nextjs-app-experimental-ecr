FROM node:16-alpine

# Install pnpm
RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install

COPY . .
RUN pnpm build

USER node

EXPOSE 3000

CMD ["yarn", "start"]
