FROM openjdk:17-jdk-alpine

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY opentelemetry-javaagent.jar /

ENTRYPOINT ["java","-javaagent:/opentelemetry-javaagent.jar","-jar", "/app.jar"]
