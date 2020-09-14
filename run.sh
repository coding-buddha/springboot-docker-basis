#!/bin/bash

printf '\n==> build\n'
build="docker build -t pasudo123/springboot-docker-basis ."
$build

printf '\n==> run\n'
run="docker run -p 8080:8080 -t pasudo123/springboot-docker-basis"
$run

