FROM haskell:8.8.4-buster as builder

WORKDIR /app

ADD src src
ADD linker.sh /root/linker.sh

RUN ghc -o main -fPIC -optl-pthread -optl-static -pgml /root/linker.sh src/Main.hs

FROM scratch

WORKDIR /app

COPY --from=builder /app/main .

USER 1000

CMD ["./main"]
