resource "helm_release" "harbor" {
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "harbor"
  version    = var.harbor_version

  namespace = "devoops"
  name      = "harbor"

  values = [
    file("./values/devops/habor.yaml")
  ]

  wait = false

  create_namespace = true

  depends_on = [
    helm_release.cert-manager,
  ]
}