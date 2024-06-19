FROM denoland/deno:alpine

EXPOSE 8080

WORKDIR /app
ADD . /app

RUN deno cache ./src/main.ts

CMD [ "task", "run" ]
