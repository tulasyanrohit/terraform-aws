# Input variable definitions

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of the cluster for which vpc is being created. Used to tag subnets with this name."
  type        = string
}
