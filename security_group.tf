resource "aws_security_group" "ecs_node_sg" {
  name_prefix = "${local.identifier}-ecs-node-sg"
  description = "Security Group for nodes in the ${local.identifier} ECS Cluster"
  vpc_id      = local.vpc_id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    self        = true
    description = "Enable all traffic on self"
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Enable all outbound traffic"
  }
}
