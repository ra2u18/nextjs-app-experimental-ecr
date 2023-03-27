FROM node:16-alpine
WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install

COPY . .
RUN pnpm build

USER node

EXPOSE 3000

CMD ["yarn", "start"]
