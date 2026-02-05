# Use a lightweight JRE image
FROM eclipse-temurin:17.0.17_10-jre

# Set working directory
WORKDIR /app

# Copy the jar into the container
COPY ./target/spring-petclinic-*.jar app.jar

# Expose application port (optional)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]