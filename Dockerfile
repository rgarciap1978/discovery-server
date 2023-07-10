FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar discovery-server.jar
RUN apk add curl
ENTRYPOINT ["java", "-jar", "/discovery-server.jar"] 