#!/bin/sh
set -o errexit
clear

FOLDER=cloud-gateway-k8

kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default

cd ~/$FOLDER/gateway
mvn clean install 

#cd ~/spring-cloud-k8/spring-cloud/spring-cloud-kubernetes/kubernetes-guide/travel-agency-service/
#docker build -t travel-agency-service .
#docker tag travel-agency-service localhost:5000/travel-agency-service
#docker push localhost:5000/travel-agency-service

#cd ~/spring-cloud-k8/spring-cloud/spring-cloud-kubernetes/kubernetes-guide/client-service/
#docker build -t client-service .
#docker tag client-service localhost:5000/client-service
#docker push localhost:5000/client-service

#cd ~/spring-cloud-k8/spring-cloud/spring-cloud-kubernetes/kubernetes-guide/travel-agency-service/
#kubectl apply -f mongo-secret.yaml
#kubectl apply -f mongo-deployment.yaml
#kubectl apply -f travel-agency-deployment.yaml

#cd ~/spring-cloud-k8/spring-cloud/spring-cloud-kubernetes/kubernetes-guide/client-service/
#kubectl apply -f client-config.yaml
#kubectl apply -f client-service-deployment.yaml