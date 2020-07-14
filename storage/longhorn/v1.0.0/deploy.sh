#!/bin/sh
echo "Deploy Longhorn..."
sudo kubectl apply -f https://raw.githubusercontent.com/giezi/marketplace/master/storage/longhorn/longhorn-v1.yaml

# change default storage class
kubectl patch storageclass longhorn -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'

echo "Deploy loadbalancer..."
sudo kubectl apply -f https://raw.githubusercontent.com/giezi/marketplace/master/storage/longhorn/loadbalancer.yaml