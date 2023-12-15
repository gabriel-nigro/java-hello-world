FROM maven:3.9.6-eclipse-temurin-17-alpine as builder

LABEL maintainer="Gabriel Nigro Garbelini <gngarbelini@hotmail.com>"

WORKDIR /build
COPY . /build

RUN mvn clean package

FROM eclipse-temurin:17-jre-alpine as runtime

COPY --from=builder /build/target/*.jar /app.jar

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS $JAVA_PROPS -jar app.jar" ]

EXPOSE 8080