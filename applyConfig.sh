#!/bin/bash
kubectl delete all --all
kubectl apply -f kubernetes
kubectl get all
