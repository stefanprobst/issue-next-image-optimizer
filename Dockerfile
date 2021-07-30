FROM node:14-slim

RUN mkdir /app && chown -R node:node /app
WORKDIR /app
USER node

COPY --chown=node:node package.json yarn.lock ./
RUN yarn install --frozen-lockfile --silent

COPY --chown=node:node next-env.d.ts next.config.js tsconfig.json ./
COPY --chown=node:node public ./public
COPY --chown=node:node pages ./pages
ENV NODE_ENV=production
RUN yarn build

EXPOSE 3000

CMD ["node", "node_modules/.bin/next", "start"]