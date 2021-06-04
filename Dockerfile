FROM gradle:7.0.2-jdk16 AS build

COPY --chown=gradle:gradle . /home/gradle/src

WORKDIR /home/gradle/src

RUN gradle clean build --no-daemon

FROM openjdk:16-alpine as prod

RUN mkdir /app
RUN mkdir /app/external

COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "-Dspring.profiles.active=prod", "/app/spring-boot-application.jar"]
