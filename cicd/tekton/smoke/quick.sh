#!/usr/bin/env bash
# Utility to run the smoke test
kubectl -n tekton-pipelines apply -f shared/task/wait-platform-up.yaml
kubectl -n tekton-pipelines apply -f shared/task/smoke-test-task.yaml
kubectl -n tekton-pipelines  apply -f smoke/smoke-quick.yaml

tkn -n tekton-pipelines pipeline start smoke-quick -s tekton-worker