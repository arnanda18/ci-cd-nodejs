#!/bin/bash

# run container
docker run --name nodejs_app -p 49160:5000 -d nodeapp:latest