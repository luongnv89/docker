#!/bin/sh
# Remove all containers

echo "Operator detected: $OSTYPE"
if [[ "$OSTYPE"=="darwin"* ]]; then
	docker rmi $(docker images -a -q)
else
	sudo docker rmi $(sudo docker images -a -q)
fi
