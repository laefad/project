FROM gradle:7.5.1-jdk17-alpine AS build

COPY --chown=gradle:gradle . /home/gradle/src

WORKDIR /home/gradle/src

RUN gradle clean build

FROM openjdk:20-slim as prod

RUN mkdir /app
RUN mkdir /app/external

COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "-Dspring.profiles.active=prod", "/app/spring-boot-application.jar"]
