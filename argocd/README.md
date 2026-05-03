# Argo CD deployment

This folder contains the declarative Argo CD Application manifest for the Go app.

## Files
- `application.yaml` - points Argo CD to the production Kustomize overlay

## What to update
- Replace `repoURL` with your real Git repository URL
- Make sure the `argocd` namespace exists in the cluster
- Make sure Argo CD is installed before applying the manifest

## Apply
```bash
kubectl apply -f argocd/application.yaml
```

## Result
Argo CD will sync the app from:
- `kustomize/overlays/prod`

into the Kubernetes namespace:
- `hello-api`
