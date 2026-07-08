# Use official OpenJDK 21 runtime as base image
#FROM eclipse-temurin:21-jre

FROM openjdk:21-jre

# Set working directory inside container
WORKDIR /app

# Copy the Spring Boot fat JAR into the container
COPY target/SpringbootDemo.jar app.jar

# Expose the application port (default Spring Boot port)
EXPOSE 8083

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
