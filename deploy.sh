#!/bin/bash

# Démarrer Minikube
minikube start

# Configurer l'environnement Docker pour utiliser celui de Minikube
eval $(minikube docker-env)

# Définir votre nom d'utilisateur Docker Hub
DOCKERHUB_USERNAME=maswap

# Pull des images Docker depuis Docker Hub
docker pull $DOCKERHUB_USERNAME/api1:latest
docker pull $DOCKERHUB_USERNAME/api2:latest

# Tag des images pour les utiliser avec Minikube's Docker daemon
docker tag $DOCKERHUB_USERNAME/api1:latest api1:latest
docker tag $DOCKERHUB_USERNAME/api2:latest api2:latest

# Appliquer les fichiers de configuration Kubernetes
kubectl apply -f k8s/

# Obtenir l'adresse IP de Minikube
MINIKUBE_IP=monapi

# Obtenir le NodePort pour le service API1
API1_NODE_PORT=31000

# Afficher l'URL pour accéder à API1
echo "API1 is available at http://$MINIKUBE_IP:$API1_NODE_PORT/test"