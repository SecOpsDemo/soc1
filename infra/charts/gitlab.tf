resource "helm_release" "gitlab" {
  repository = "https://charts.gitlab.io"
  chart      = "gitlab"
  version    = "4.8.0"

  namespace = "devops"
  name      = "gitlab"

  values = [
    file("./values/devops/gitlab.yaml")
  ]

  wait = false
  create_namespace = true

  depends_on = [
    helm_release.cert-manager,
  ]
}