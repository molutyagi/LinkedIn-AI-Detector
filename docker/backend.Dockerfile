# Use an official OpenJDK runtime as a parent image
FROM openjdk:23-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Maven build file, Maven wrapper, and source code from the build context
COPY pom.xml pom.xml
COPY mvnw mvnw
COPY .mvn .mvn
COPY src ./src

# Build the application using the Maven wrapper
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Expose the default port for Spring Boot
EXPOSE 8080

# Run the jar file (ensure the jar name matches your build output)
ENTRYPOINT ["java", "-jar", "target/com.feed.aidetector-0.0.1-SNAPSHOT.jar"]
