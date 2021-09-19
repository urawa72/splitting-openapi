#!/usr/bin/env bash

api_name=$1

# lint
npx spectral lint src/apis/${api_name}/root.yml

# bundle
docker run --rm \
  -v ${PWD}:/local \
  openapitools/openapi-generator-cli generate \
  -g openapi-yaml \
  -i /local/src/apis/${api_name}/root.yml \
  -o /local/generated/${api_name}
