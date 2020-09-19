#!/bin/bash

printf '\n==> build\n'
build="docker build -t pasudo123/springboot-docker-basis ."
$build

printf '\n==> run\n'
run="docker run -d -p 23340:8080 -v C:/develop/etc/log:/log pasudo123/springboot-docker-basis"

$run

