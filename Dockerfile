FROM openjdk:8-jdk-alpine

# Create a new volume
VOLUME /myvolume

# Set working directory to /app
WORKDIR /app

# Copy the jar file to /app directory
COPY ./target/*.jar app.jar

# Set environment variables
ENV JAVA_OPTS=""

# Update the ENTRYPOINT instruction to use the new volume
ENTRYPOINT exec java -jar app.jar --verbose --mount source=myvolume,target=/myvolume
