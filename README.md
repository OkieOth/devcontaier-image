# TL;DR;

A bunch of docker images to use as bash based dev env

## Base Image 

Debian based image with:
* ping, netstat, ifconfig, traceroute
* vim

### Usage

```bash
# start the base image .. it loops endless
docker run --rm -u $(id -u ${USER}):$(id -g ${USER}) \
  -h eikos-dev --name eikos-dev-01 \
  ghcr.io/okieoth/devcont-base:0.1.0

# start a shell in the container
docker exec -it $(docker ps -f name=eikos-dev-01 -q) /bin/bash
```

