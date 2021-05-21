#!/bin/bash

cd apps/

# clone repository
git clone https://github.com/arnanda18/ci-cd-nodejs.git

# run container
docker run --name nodejs_app -p 49160:5000 -d nodeapp:latest
