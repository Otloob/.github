FROM eclipse-temurin:21-jre
WORKDIR /app
ARG SERVICE
COPY ${SERVICE}/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
