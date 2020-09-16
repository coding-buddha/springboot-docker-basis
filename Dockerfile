
# FROM      : 베이스 이미지 설정
# (openjdk 가 1.8 또는 11 에 따라서 도커 컨테이너 실행 여부가 달라짐)
# LABEL     : 이미지를 생성한 개발자의 정보 (이미지 작성자의 정보)
# RUN       : 이미지를 만들기 위해 컨테이너 내부에서 실행되는 명령어
# ARG       : 빌드시 사용할 환경변수 지정
# COPY      : jar 파일을 app.jar 파일로 복사

FROM openjdk:8-jdk-alpine
LABEL maintainer="pasudo123"
RUN apk add --update vim
RUN echo "alias ll='ls -alF'" >> ~/.bashrc
RUN /bin/sh -c ". ~/.bashrc"

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]