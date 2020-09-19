#!/bin/sh

docker_ps_command="docker ps -a"
first_value='$1'

echo "(1-1) 컨테이너 ID 획득 : status=exited"
container_id=$($docker_ps_command -f status=exited | awk "{print ${first_value}}" | tail -n +2)
echo $container_id

echo ""
if [[ -n ${container_id-x} ]]; then
  echo "(1-2) exited 컨테이너 삭제"
  rm="docker rm -f"
  $rm $container_id
else
  echo "(1-2) exited 컨테이너 미존재"
fi

image_name="pasudo123/springboot-docker-basis"
echo "(1-3) 컨테이너 ID 획득 : ${image_name}"
container_id=$($docker_ps_command | grep $image_name | awk "{print $first_value}")
echo $container_id

echo ""
if [[ -n ${container_id-x} ]]; then
  echo "(1-4) 해당 컨테이너 삭제"
  rm="docker rm -f"
  $rm $container_id
else
  echo "(1-4) 해당 컨테이너 미존재"
fi

echo ""
echo "(3) 태그 없는 이미지 조회"
dangling_true_option="dangling=true"
docker_image_filter_cmd="docker images -f $dangling_true_option -q"
$docker_image_filter_cmd

echo ""
echo "(4) 태그 없는 이미지 삭제"
echo ""
docker_rmi_option="$($docker_image_filter_cmd)"
if [[ -n ${docker_rmi_option-x} ]]; then
  echo "(5) 삭제"
  docker_rmi="docker rmi $docker_rmi_option"
  $docker_rmi
else
  echo "(5) 태그 없는 이미지는 존재하지 않음"
fi

echo ""
echo "(6) 현재 특정 REPO 의 IMAGE_ID 삭제"
find_image_id_cmd="docker images"
third='$3'
image_id=$($find_image_id_cmd | grep "pasudo123" | awk "{print $third}")
docker_rmi="docker rmi $image_id"
$docker_rmi

