FROM openjdk:8u131-jdk

EXPOSE 8888

VOLUME /tmp

ADD target/config-service.jar /app/dist/config-service.jar

ENTRYPOINT ["java","-Dspring.profiles.active=$BOOTIFUL_MICRO_PIZZA_ENV","-Djava.security.egd=file:/dev/./urandom","-jar","/app/dist/config-service.jar"]
