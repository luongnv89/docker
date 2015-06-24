#!/bin/sh
# Remove all containers

echo "Operator detected: $OSTYPE"
if [[ "$OSTYPE"=="darwin"* ]]; then
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
else
	sudo docker stop $(sudo docker ps -a -q)
	sudo docker rm $(sudo docker ps -a -q)
fi
