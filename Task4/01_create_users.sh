#!/bin/bash
kubectl create serviceaccount developer -n development
kubectl create serviceaccount devops -n development
kubectl create serviceaccount security -n secure-space
kubectl create serviceaccount infra -n kube-system

echo "ServiceAccounts созданы"