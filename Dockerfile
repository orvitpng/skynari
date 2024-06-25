FROM ghcr.io/gleam-lang/gleam:v1.2.1-erlang-alpine

COPY . /build/
RUN cd /build \
    && gleam export erlang-shipment \
    && mv build/erlang-shipment /app \
    && rm -r /build

WORKDIR /app

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["run"]

EXPOSE 8080
