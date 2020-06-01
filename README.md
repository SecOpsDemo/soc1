# soc1

ssh -i ~/.ssh/SEOUL-MMS-K8S-BASTION.pem ec2-user@52.79.76.138

kubectl get pods -n devops -l app.kubernetes.io/name=argo-cd-server -o name | cut -d'/' -f 2
