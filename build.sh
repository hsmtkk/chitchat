#!/bin/sh
DOCKER_BUILDKIT=1 docker build --file docker/webapp/Dockerfile --tag hsmtkk/chitchat:webapp .
DOCKER_BUILDKIT=1 docker build --file docker/database/Dockerfile --tag hsmtkk/chitchat:database .

