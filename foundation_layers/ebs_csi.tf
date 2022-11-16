resource "helm_release" "aws-ebs-csi-driver" {
  name       = "aws-ebs-csi-driver"
  repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
  chart      = "aws-ebs-csi-driver"
  version = var.version_aws-ebs-csi-driver
  depends_on = [kubernetes_namespace.system_namespace]
  values = [
    file("D:\\AWS-TF\\tf-single-subnet\\infra-terraform-environments\\env\\dev\\dev\\ap-south-1\\eks\\eks_controlplane\\foundationlayer\\ebs-csi-driver\\aws-ebs-csi-driver-values.yaml")
  ]

}