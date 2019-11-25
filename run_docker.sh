#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
tag="vijeshputtaswamy/microservices"

# Step 1:
# Build image and add a descriptive tag
docker build --tag $tag .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Run flask app
docker run -p8000:80 $tag
