resource "helm_release" "external_dns" {
  name       = "external-dns"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "external-dns"
  #version = var.version_argocd
  namespace = "external-dns"
  depends_on = [
    kubernetes_namespace.system_namespace
  ]

  values = [
    file("D:\\AWS-TF\\tf-helm-singsub-oidc\\infra-terraform-environments\\env\\dev\\dev\\ap-south-1\\eks\\eks_controlplane\\foundationlayer\\external-dns\\externaldns-values.yaml")
  ]

}