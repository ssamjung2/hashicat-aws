module "hashicat-http-80" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "${var.prefix}-security-group"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = aws_vpc.hashicat.id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name = "${var.prefix}-security-group-http-80"
  }
}

module "hashicat-https-443" {
  source = "terraform-aws-modules/security-group/aws//modules/https-443"

  name        = "${var.prefix}-security-group"
  description = "Security group for web-server with HTTPS ports open within VPC"
  vpc_id      = aws_vpc.hashicat.id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name = "${var.prefix}-security-group-https-443"
  }
}

module "hashicat-ssh-22" {
  source = "terraform-aws-modules/security-group/aws//modules/ssh-22"

  name        = "${var.prefix}-security-group"
  description = "Security group for SSH with SSH ports open within VPC"
  vpc_id      = aws_vpc.hashicat.id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name = "${var.prefix}-security-group-ssh-22"
  }
}