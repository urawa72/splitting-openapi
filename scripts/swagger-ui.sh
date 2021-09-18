#!/usr/bin/env bash

api_name=$1

docker run \
	-p 8081:8080 \
	-v $(pwd)/openapi:/usr/share/nginx/html/openapi \
	swaggerapi/swagger-ui
