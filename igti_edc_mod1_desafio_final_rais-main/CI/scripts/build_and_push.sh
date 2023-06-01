#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region sa-east-1 | docker login --username AWS --password-stdin 423657377942.dkr.ecr.sa-east-1.amazonaws.com
docker build -t igti-ney-prod-extract-rais .
docker tag igti-mychel-prod-extract-rais:latest 423657377942.dkr.ecr.sa-east-1.amazonaws.com/igti-mychel-prod-extract-rais:latest
docker push 423657377942.dkr.ecr.sa-east-1.amazonaws.com/igti-mychel-prod-extract-rais:latest
