#!/bin/bash

scriptPos=${0%/*}

imageBase=ghcr.io/okieoth/devcont
imageTag=$(cat $scriptPos/../version.txt | grep -P '\d+\.\d+\.\d+')

imageName="${imageBase}-base:${imageTag}"
echo "I am going to create: $imageName"

pushd "$scriptPos/../docker" >/dev/null
if docker build -t $imageName -f Dockerfile_base .; then
	docker tag $imageName $imageBase
	echo -en "\033[1;34m  image created: $imageName, $imageBase \033[0m\n"
else
	echo -en "\033[1;31m  error while create image: $imageName \033[0m\n"
	exit 1
fi
popd >/dev/null
