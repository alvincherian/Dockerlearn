#!/bin/bash
echo "docker build is starting"
docker build -t alvin-nginx-new .
echo "your docker images"
docker images
#create docekr continer
docker run -d --name alvin-nginx-new-con -p 8090:8090 alvin-nginx-new
docker ps

#docker tag <continerid> <dockerhub_username/repo_name>:alvin-nginx
# Dockerhub login
#docker login -u <your_username>
#docker push <dockerhub_username/repo_name>:alvin-nginx
docker commit  fef17dcc6bc3 alvin-nginx
docker tag alvin-nginx alvincherian/alvinrepotest:alvin-nginx
docker images
docker login -u alvincherian
docker push alvincherian/alvinrepotest:alvin-nginx
# Delete all docker env*( vol, image, continers)
# docker system prune --all