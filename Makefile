DOCKER_REPO ?= my-hello
DOCKER_TAG ?= latest
IMAGE_NAME = ${DOCKER_USER_ID}${"${DOCKER_USER_ID}"=="":?:/}${DOCKER_REPO}:${DOCKER_TAG}
CONTAINER_NAME = hello1

.-include "Makefile.local"

build:
	docker build -t ${IMAGE_NAME} .

run:
	docker run --name=${CONTAINER_NAME} ${IMAGE_NAME}

push:
	docker push ${IMAGE_NAME}

rm:
	docker rm ${CONTAINER_NAME}

rm-image:
	docker image rm ${IMAGE_NAME}

pull:
	docker pull ${IMAGE_NAME}
