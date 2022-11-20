resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version = var.version_argocd
  namespace = "argocd"
  depends_on = [
    kubernetes_namespace.system_namespace
  ]

  values = [
    file("foundation_layers/foundationlayer_values/argocd/argocd-values.yaml")
  ]

}
