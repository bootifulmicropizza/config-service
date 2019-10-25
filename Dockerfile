FROM openjdk:11.0.9.1-jre

EXPOSE 8888

VOLUME /tmp

ADD target/config-service.jar /app/dist/config-service.jar

ENTRYPOINT ["java","-Dspring.profiles.active=$BOOTIFUL_MICRO_PIZZA_ENV","-Djava.security.egd=file:/dev/./urandom","-DXmx=512m","-jar","/app/dist/config-service.jar"]
