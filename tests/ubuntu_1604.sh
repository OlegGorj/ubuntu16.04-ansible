#!/bin/sh

DOCKER_OUTPUT=`docker run --name test_ubuntu16.04-ansible -ti oleggorj/ubuntu16.04-ansible /usr/bin/ansible --version`

echo $DOCKER_OUTPUT

if [[ $DOCKER_OUTPUT == *"ansible 2.4.2.0"* ]];
then
    exit 0;
else
    exit 1;
fi



