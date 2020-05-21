# Stage 1 - the build process
FROM node:14-alpine AS builder

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .
RUN yarn

COPY . .

RUN yarn build

# Stage 2 - the production environment
FROM node:14-alpine

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .
RUN yarn install --production --ignore-scripts --prefer-offline

RUN mkdir .next prisma
COPY --from=builder /usr/src/app/.next .next
COPY prisma prisma

RUN yarn generate:prisma

CMD ["yarn", "start"]
