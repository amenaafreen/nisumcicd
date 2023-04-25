FROM openjdk:8-jre-alpine
WORKDIR /app
COPY ./target/spring-boot-web-0.0.1-SNAPSHOT.jar /app
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar spring-boot-web-0.0.1-SNAPSHOT.jar"]
