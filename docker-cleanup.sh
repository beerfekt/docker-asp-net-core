#!/bin/sh

CONTAINERS= $(docker ps -a -q)

#stop all containers
docker stop $(docker ps -a -q)

#remove all containers
docker rm  $(docker ps -a -q)


#remove all images
docker rmi $(docker images -a -q)

