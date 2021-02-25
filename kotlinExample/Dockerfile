FROM openjdk:14-jdk-alpine3.10 as builder

WORKDIR /app

ADD . .

RUN ./gradlew clean build --no-daemon

FROM openjdk:14-jdk-alpine3.10

COPY --from=builder ./app/build/libs/kotlinExample.jar .

CMD [ "java", "-jar",  "./kotlinExample.jar" ]