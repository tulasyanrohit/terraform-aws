variable "load-balancer-role-name" {
  description = "Name of the Load Balancer Role"
  type        = string
}
variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
}

variable "cluster_endpoint" {
  description = "Cluster endpoint"
  type        = string
}

variable "cluster_certificate_authority_data" {
  description = "Data: cluster_certificate_authority_data"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "oidc_provider_arn" {
  description = "oidc_provider_arn"
  type        = string
}