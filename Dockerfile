FROM openjdk:8-jre-alpine
ARG artifactid
ARG version
ENV artifact ${artifactid}-${version}.jar
WORKDIR /app
COPY ./target/${artifact} /app

# ENTRYPOINT ["java", "-jar", "${artifact}"]

ENTRYPOINT ["sh", "-c"]

CMD ["java -jar ${artifact}"]

