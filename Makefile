ROOT_DIR := $(shell pwd)
IMAGE_TAG := distribrewed/core_dev

DOCKER_STACK_DB_CONTAINER_NAME ?= coredev_postgres_1
DOCKER_STACK_DB_LINK ?= --link=${DOCKER_STACK_DB_CONTAINER_NAME}:postgres

DOCKER_STACK_RABBITMQ_CONTAINER_NAME ?= coredev_rabbitmq_1
DOCKER_STACK_RABBITMQ_LINK ?= --link=${DOCKER_STACK_RABBITMQ_CONTAINER_NAME}:rabbitmq

DOCKER_STACK_TIME_DELAY := 5
DOCKER_STACK_DIR := ${ROOT_DIR}/docker_stack/core_dev
DOCKER_STACK_ENV_FILE ?= ${DOCKER_STACK_DIR}/.env

include make/*