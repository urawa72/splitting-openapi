#!/usr/bin/env bash

api_name=$1

echo 'Listening on localhost:8081'

docker run \
	-p 8081:8080 \
	-v $(pwd)/generated/${api_name}/openapi:/usr/share/nginx/html/openapi \
	-e API_URL=openapi/openapi.yaml \
	swaggerapi/swagger-ui
