#!/bin/bash
echo "Deploy Longhorn..."
sudo kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/master/deploy/longhorn.yaml