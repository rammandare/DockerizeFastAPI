#!/bin/bash

for i in `docker ps | awk {'print $1'} | sed '1d'`;do docker stop $i;done && for i in `docker ps -a | awk {'print $1'} | sed '1d'`;do docker rm $i;done && for i in `docker images | awk {'print $3'} | sed '1d'`;do docker image rm $i;done
