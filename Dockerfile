#Pull base image from Docker Hub
FROM openjdk:17-jdk-alpine

# Create a working directory in the container where the application code will be kept
WORKDIR /app

#Copy the app to container
COPY src/Main.java /app/Main.java

# Compile the application
RUN javac Main.java

# Run the application
CMD ["java","Main"]
