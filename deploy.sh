#!/bin/bash
echo "Deploying flask-app to local Kubernetes cluster..."
kubectl apply -f k8s/
kubectl rollout status deployment flask-app
minikube service flask-service
