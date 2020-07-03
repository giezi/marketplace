#!/bin/sh
echo "Deploy Longhorn..."
sudo kubectl apply -f https://raw.githubusercontent.com/giezi/marketplace/master/storage/longhorn/longhorn-v1.yaml

echo "Deploy loadbalancer..."
sudo kubectl apply -f https://raw.githubusercontent.com/giezi/marketplace/master/storage/longhorn/loadbalancer.yaml