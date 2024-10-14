#!/bin/bash

containers=$(docker ps -q)

if [ -z "$containers" ]; then
	echo "No running containers found."
else
	docker kill $containers
	echo "All running containers have been killed."
fi
