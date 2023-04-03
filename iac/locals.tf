locals {
  region = "eu-west-1"
  jump_account = "012345679101"
}

data "aws_region" "current" {}
data "aws_partition" "current" {}
data "aws_caller_identity" "current" {}

#
# AWS Managed Policies
# #####################################################################

data "aws_iam_policy" "AdministratorAccess" { arn = "arn:aws:iam::aws:policy/AdministratorAccess" }
data "aws_iam_policy" "SupportUser" { arn = "arn:aws:iam::aws:policy/job-function/SupportUser" }
data "aws_iam_policy" "ReadOnlyAccess" { arn = "arn:aws:iam::aws:policy/ReadOnlyAccess" }
data "aws_iam_policy" "Billing" { arn = "arn:aws:iam::aws:policy/job-function/Billing" }
