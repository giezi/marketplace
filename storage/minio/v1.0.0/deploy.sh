#!/bin/sh
echo "Deploy Minio..."
sudo kubectl apply -f https://raw.githubusercontent.com/giezi/marketplace/master/storage/minio/app.yaml