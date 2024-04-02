FROM amazoncorretto:8-alpine3.19-jdk

EXPOSE 8080

COPY . .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
