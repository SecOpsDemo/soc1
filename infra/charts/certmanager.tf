resource "helm_release" "cert-manager" {
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  version    = var.certmanager_version

  namespace = "kube-ingress"
  name      = "cert-manager"

  values = [
    file("./values/kube-ingress/cert-manager.yaml")
  ]

  create_namespace = true
}

resource "helm_release" "cert-manager-issuers" {
  repository = "https://kubernetes-charts-incubator.storage.googleapis.com"
  chart      = "raw"

  namespace = "kube-ingress"
  name      = "cert-manager-issuers"

  values = [
    file("./values/kube-ingress/cert-manager-issuers.yaml")
  ]

  wait = false

  create_namespace = true

  depends_on = [
    helm_release.cert-manager,
  ]
}