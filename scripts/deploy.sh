#!/bin/sh
set -o errexit
clear

FOLDER=cloud-gateway-k8

kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default

cd ~/$FOLDER/gateway
mvn clean install 
docker build -t gateway .
docker tag gateway localhost:5000/gateway
docker push localhost:5000/gateway

cd ~/$FOLDER/alpha-service
mvn clean install 
docker build -t alpha-service .
docker tag alpha-service localhost:5000/alpha-service
docker push localhost:5000/alpha-service

cd ~/$FOLDER/scripts
kubectl apply -f alpha-deployment.yaml
kubectl apply -f gateway-deployment.yaml
