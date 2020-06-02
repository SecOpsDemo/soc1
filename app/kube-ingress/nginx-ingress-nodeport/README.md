# Nginx Ingress Nodeport

```bash
kubectl create ns kube-ingress
helm dependency update
helm install nginx-ingress-nodeport -n kube-ingress --dry-run ./
helm install nginx-ingress-nodeport -n kube-ingress ./
```