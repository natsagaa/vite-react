FROM node:20-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build
EXPOSE 5173
CMD ["yarn", "dev", "--host"]