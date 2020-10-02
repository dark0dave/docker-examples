FROM gcc as builder

ADD main.cpp .

RUN g++ -static -Wall -Wextra -pedantic -Weffc++ -Werror main.cpp -o main

FROM scratch

WORKDIR /app

COPY --from=builder main .

USER 1000

CMD ["./main"]
