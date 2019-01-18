#!/bin/bash
kubectl delete -f config/$1/config.yaml && kubectl apply -f config/$1/config.yaml
kubectl delete -f kube/deployment.yaml && kubectl apply -f kube/deployment.yaml