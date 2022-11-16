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
    file("D:\\AWS-TF\\tf-single-subnet\\infra-terraform-environments\\env\\dev\\dev\\ap-south-1\\eks\\eks_controlplane\\foundationlayer\\argocd\\argocd-values.yaml")
  ]

}