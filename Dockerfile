# Multistage docker file.

# Stage 1: Build the application with Maven
  # Sets working directory within itself to /app
  # Copy pom.xml from host machine.
  # Copy src from host machine and compile the project.
FROM maven:3.6-jdk-11 as byggmesterbob
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM adoptopenjdk/openjdk11:alpine-slim
COPY --from=byggmesterbob /app/target/*.jar /app/application.jar
ENTRYPOINT ["java","-jar","/app/application.jar"]