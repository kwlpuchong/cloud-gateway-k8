FROM openjdk:7u211-jdk-alpine3.9
VOLUME /tmp
COPY target/gateway-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9999 -jar /app.jar