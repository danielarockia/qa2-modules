resource "aws_iam_service_linked_role" "IAMServiceLinkedRole" {
  #custom_suffix = "AWSServiceRoleForAutoScaling_EKSPOC"
  aws_service_name = "autoscaling.amazonaws.com"
}