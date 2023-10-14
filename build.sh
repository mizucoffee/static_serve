#!/bin/bash

VERSION=v1.0

docker buildx build --push -t harbor.mizucoffee.net/library/static_serve:${VERSION}-node12 -f node12.Dockerfile .
docker buildx build --push -t harbor.mizucoffee.net/library/static_serve:${VERSION}-node14 -f node14.Dockerfile .
docker buildx build --push -t harbor.mizucoffee.net/library/static_serve:${VERSION}-node16 -f node16.Dockerfile .
docker buildx build --push -t harbor.mizucoffee.net/library/static_serve:${VERSION}-node18 -f node18.Dockerfile .
docker buildx build --push -t harbor.mizucoffee.net/library/static_serve:${VERSION}-node20 -f node20.Dockerfile .
