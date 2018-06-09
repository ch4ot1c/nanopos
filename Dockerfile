FROM node:carbon
WORKDIR /opt/nanopos
COPY . .
RUN npm install
RUN npm run dist
EXPOSE 9116
CMD ["node", "./dist/cli.js"]
