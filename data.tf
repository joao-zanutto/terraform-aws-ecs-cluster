data "aws_ssm_parameter" "ecs_node_ami" {
  name = "/aws/service/ecs/optimized-ami/amazon-linux-2/recommended/image_id"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [local.vpc_id]
  }
}

locals {
  identifier = "${var.env}-${var.name}"
  vpc_id     = var.vpc_id == "" ? data.aws_vpc.default.id : var.vpc_id
  subnet_ids = (var.subnet_ids) == 0 ? data.aws_subnets.default.ids : var.subnet_ids
}