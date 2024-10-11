#!/bin/bash
CONTAINER_BASENAME="shell-training"
# IMAGE_NAME="public.ecr.aws/l3s2n2c7/cfp-shell-training:latest"
IMAGE_NAME="shell-training"
COUNT=0
MAX=15

# comment out to make script work for real
# set -n
# comment in see parsed command before executed
# set -x

echo -e "Script >>$0<< starts\n.....\n"

while [[ "$COUNT" -lt "$MAX" ]]
do
	COUNT=$[$COUNT + 1]
	EXTERNAL_PORT=2221
	CONTAINER_NAME="$CONTAINER_BASENAME-$COUNT"

	DOCKER_CMD="docker run --rm -d --name $CONTAINER_NAME -p$[$EXTERNAL_PORT + $COUNT]:22 $IMAGE_NAME"
	if docker ps | grep "$CONTAINER_NAME" >/dev/null 2>&1
	then
		echo "Container with name >>$CONTAINER_NAME<< already running, doing nothing"
	else
		echo "running> $DOCKER_CMD"
		$DOCKER_CMD
	fi

done

echo -e "\n.....\nScript >>$0<< is done"
