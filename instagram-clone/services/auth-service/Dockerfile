# Multi-stage Node.js placeholder for the auth service.
FROM node:20-alpine AS base
WORKDIR /app

FROM base AS deps
COPY package*.json ./
RUN npm install

FROM base AS build
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build --if-present

FROM node:20-alpine AS runtime
WORKDIR /app
COPY --from=build /app .
CMD ["npm", "start"]
