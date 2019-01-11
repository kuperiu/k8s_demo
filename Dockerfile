FROM java:openjdk-8-jre-alpine 

RUN mkdir /app
ADD target/suchapp-0.0.1-SNAPSHOT.jar /app
CMD ["java", "-jar", "/app/suchapp-0.0.1-SNAPSHOT.jar"]