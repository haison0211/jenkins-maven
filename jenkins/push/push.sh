#!/bin/bash

echo  "***********************"
echo  "******Pushing img *****"

IMAGE="maven-project"

echo "****Logging docker hub ****"
docker login -u haison123 -p $PASS
echo "***Tagging image***"
docker tag $IMAGE:$BUILD_TAG haison123/$IMAGE:$BUILD_TAG
echo "***Push image****"
docker push haison123/$IMAGE:$BUILD_TAG
