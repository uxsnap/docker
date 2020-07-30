FROM openjdk:8-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

COPY /target/*.jar /src/app.jar

ENTRYPOINT ["java", "-jar", "/src/app.jar"]