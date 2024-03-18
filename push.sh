#!/bin/bash

set -e

REGION=ap-southeast-2
ACCOUNT_ID=939392633121
LOCAL_IMAGE=geotransformer
AWS_REPO=geotransformer
REMOTE_IMAGE="$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$AWS_REPO:latest"

aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin "$ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com"

docker tag $LOCAL_IMAGE $REMOTE_IMAGE

docker push $REMOTE_IMAGE
