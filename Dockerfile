FROM amazoncorretto:11
COPY build/libs/jaeger-analytics.jar /app/jaeger-analytics.jar
ENTRYPOINT ["java", "-jar", "/app/jaeger-analytics.jar"]
