# ArgoCD

```bash
helm repo add argo https://argoproj.github.io/argo-helm
kubectl create ns devops
helm dependency update
helm install argocd -n devops --dry-run ./
helm install argocd -n devops ./
helm upgrade argocd -n devops ./

```