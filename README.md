# springboot-docker-basis
docker container based spring boot deploy

### package file 작성하기
```shell script
$ ./gradlew bootJar
```

### 도커 이미지 작성 및 빌드
```shell script
$ ./run.sh
```

### 도커 컨테이너 삭제 및 이미지 삭제
```shell script
$ ./remove.sh
``` 

### 컨테이너 접속
```shell script
$ docker exec -it {container-id} /bin/sh
```

## 정리
* 현재 사용중인 base-image 가 alpine 기반이라서, apt update 가 아닌 apk update 로 진행되어야 한다.
    * `apk update`
    * `apk add package`
    * `apk del package`
    * [link](https://wiki.onap.org/display/DW/Migrating+Dockerfiles+from+Debian+apt+to+Alpine+apk) 