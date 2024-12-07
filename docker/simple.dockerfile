FROM alpine AS builder
RUN apk add --no-cache nodejs npm git curl
RUN npm install npm -g
RUN adduser -D app
USER app
WORKDIR /home/app
# RUN git clone https://github.com/cuihe500/uptime-kuma.git
RUN git clone https://username:password@git.thankseveryone.top/cuihe500/update-kuma.git
WORKDIR /home/app/uptime-kuma
RUN npm run setup-2.0
EXPOSE 3001
CMD ["node", "server/server.js"]