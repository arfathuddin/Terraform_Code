resource "aws_iam_user" "AXL" {
  name = "AXL"
  path = "/system/"

  tags = {
    Name = "test user by terraform"
  }
}
resource "aws_iam_access_key" "AXL_access_key" {
  user = aws_iam_user.AXL.name
}

data "aws_iam_policy_document" "AXL" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "AXL" {
  name   = "test"
  user   = aws_iam_user.AXL.name
  policy = data.aws_iam_policy_document.AXL.json

}


output "user_id" {
  value = aws_iam_user.AXL.id
}


