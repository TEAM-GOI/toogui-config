FROM openjdk:17-jdk-slim

WORKDIR /app

ARG JAR_FILE=build/libs/TooguiConfig-0.0.1-SNAPSHOT.jar
ARG JASYPT_KEY
ARG JKS_PWD
ARG JKS_ALIAS

ENV JASYPT_KEY=$JASYPT_KEY
ENV JKS_PWD=$JKS_PWD
ENV JKS_ALIAS=$JKS_ALIAS
# jar 파일 복제
COPY ${JAR_FILE} app.jar
# JKS 키스토어 파일 복사
COPY apiEncryptionKey.jks ./apiEncryptionKey.jks

EXPOSE 8080
# 실행 명령어
ENTRYPOINT ["java","-jar", "app.jar"]