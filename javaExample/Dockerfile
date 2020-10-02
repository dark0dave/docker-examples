FROM openjdk:11-jdk-slim as builder

WORKDIR /app

ADD . .

RUN ./gradlew clean test jar

FROM openjdk:11-jre-slim
 
COPY --from=builder /app/build/libs/javaExample.jar /.

USER 1000

CMD ["java", "-jar", "/javaExample.jar"]
