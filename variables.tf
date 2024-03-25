variable "env" {
  default     = "dev"
  type        = string
  description = "Environment where the cluster will be deployed"
}

variable "name" {
  default     = "demo"
  type        = string
  description = "Name of the cluster"
}

variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID where the cluster nodes will be deployed - leave empty to deploy in the default VPC"
}

variable "subnet_ids" {
  default     = []
  type        = list(string)
  description = "Subnet IDs where the cluster nodes will be deployed - if left empty, will deploy in all subnets in the VPC"
}

variable "node_instance_type" {
  default     = "t3.micro"
  type        = string
  description = "Instance type used to start nodes in the cluster"
}
