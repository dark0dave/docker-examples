FROM rust:alpine3.12 as builder

WORKDIR /app

COPY Cargo.lock Cargo.toml ./

ADD src src

RUN cargo build --release

FROM scratch

WORKDIR /app

COPY --from=builder /app/target/release/test .

USER 1000

CMD ["./test"]
