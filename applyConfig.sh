#!/bin/bash
kubectl delete all -l app=kube-sqs-autoscaler-stats
kubectl delete all -l app=kube-sqs-autoscaler-publisher
kubectl delete all -l app=stats
kubectl delete all -l app=publisher
kubectl delete all -l app=fetcher
kubectl apply -f kubernetes
kubectl get all

