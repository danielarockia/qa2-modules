resource "helm_release" "aws-load-balancer-controller" {
  name       = "aws-load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  namespace = "lb"
  version = var.version_aws-load-balancer-controller
  depends_on = [
    kubernetes_namespace.system_namespace
  ]
  values = [
    file("D:\\AWS-TF\\tf-single-subnet\\infra-terraform-environments\\env\\dev\\dev\\ap-south-1\\eks\\eks_controlplane\\foundationlayer\\aws-loadbalancer-controller\\aws-loadbalancer-controller-values.yaml")
  ]

}