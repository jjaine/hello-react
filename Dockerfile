FROM alpine:latest

WORKDIR /app

RUN apk add --update npm && \
    npm install -g serve && \
    npm install && \
    npm run build

EXPOSE 5000

CMD ["serve", "-s", "build"]

