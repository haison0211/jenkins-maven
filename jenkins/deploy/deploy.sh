#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/ubuntu/.ssh/prod /tmp/.auth ubuntu@18.166.116.124:/tmp/.auth
scp -i /home/ubuntu/.ssh/prod /home/ubuntu/pipeline/jenkins/deploy/publish.sh ubuntu@18.166.116.124:/home/ubuntu/publish.sh
ssh -i /home/ubuntu/.ssh/prod ubuntu@18.166.116.124 "/home/ubuntu/publish.sh"

