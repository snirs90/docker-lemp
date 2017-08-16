#!/bin/bash

PROJECT=$1

if [ -z "$PROJECT" ]; then
    echo -n "Please provide your project path [ENTER]:"
    read PROJECT
fi

sudo docker build --no-cache -t snirs/lemp .

sudo docker run --name nginx -p8081:80 -v ${PROJECT}:/var/www -d snirs/lemp