
# FROM      : 베이스 이미지 설정
## openjdk 가 1.8 또는 11 에 따라서 도커 컨테이너 실행 여부가 달라짐

# ARG       : 빌드시 사용할 환경변수 지정
# COPY      : jar 파일을 app.jar 파일로 복사

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY run.sh .
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]