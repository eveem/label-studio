#!/usr/bin/env bash

echo "PROJECT_NAME=$1" > .env-custom
echo "USER_EMAIL=$2" >> .env-custom
echo "USER_PASSWORD=$3" >> .env-custom
echo "USER_TOKEN=$4" >> .env-custom
export PATH_TO_INPUT=$5

docker compose --env-file .env-custom up -d --build --force-recreate
sleep 90 # waiting for label-studio services starting completely

if [ "$(docker ps -q -f name=label-studio_nginx_1)" ]\
&& [ "$(docker ps -q -f name=label-studio_app_1)" ] \
&& [ "$(docker ps -q -f name=label-studio_db_1)" ]; then
  echo "All label-studio services have been started..."  
  curl -H "Authorization: Token ${USER_TOKEN}" -X POST "http://localhost:8080/api/projects/1/import" -F "file=@${PATH_TO_INPUT}"
  echo "#######################################################################"
  echo "${PATH_TO_INPUT} tasks have been imported..."
fi

