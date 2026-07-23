FROM node:22-alpine

WORKDIR /home/node/app

COPY package*.json ./

RUN npm ci --omit=dev

# Directories and files excluded via .dockerignore
COPY . .

# environment settings
ENV NODE_ENV="production"
ENV PORT=3000

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider "http://127.0.0.1:${PORT}" || exit 1

USER node

CMD ["node", "server/index.js"]
