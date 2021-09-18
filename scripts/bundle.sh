#!/usr/bin/env bash

api_name=$1

npx swagger-cli bundle \
	src/apis/${api_name}/root.yml \
	-t yaml \
	-o openapi/${api_name}/openapi.yml
