#
# Admin Role
# #####################################################################

resource "aws_iam_role" "AdminAccessRole" {
  name = "role-admin"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${local.jump_account}:root"
        }
      },
    ]
  })

  managed_policy_arns = [data.aws_iam_policy.AdministratorAccess.arn]
}

#
# Support Role
# #####################################################################

resource "aws_iam_role" "SupportAccessRole" {
  name = "role-support"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${local.jump_account}:root"
        }
      },
    ]
  })

  managed_policy_arns = [
    data.aws_iam_policy.ReadOnlyAccess.arn,
    data.aws_iam_policy.SupportUser.arn
  ]
}