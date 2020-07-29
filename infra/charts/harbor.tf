resource "helm_release" "harbor" {
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "harbor"
  version    = var.harbor_version

  namespace = "devops"
  name      = "harbor"

  values = [
    file("./values/devops/harbor.yaml")
  ]

  wait = false

  create_namespace = true

  depends_on = [
    helm_release.cert-manager,
  ]
}