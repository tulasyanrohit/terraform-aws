provider "aws" {
    region  = "us-east-2"
}

module "vpc" {
    source = "./cluster_vpc"

    vpc_name = "pm-vpc"
    cluster_name = "pm-cluster"
}

module "eks" {
    source = "./eks"
    cluster_name = "pm-cluster"

    #Data from VPC module
    vpc_id = module.vpc.vpc_id
    private_subnets = module.vpc.private_subnets
}

module "load-balancer-controller" {
    source = "./load-balancer-controller"

    load-balancer-role-name = "pm-lb-role"
    
    #Data from EKS MODULE
    cluster_name = module.eks.cluster_name
    cluster_endpoint = module.eks.cluster_endpoint
    cluster_certificate_authority_data = module.eks.cluster_certificate_authority_data
    oidc_provider_arn = module.eks.oidc_provider_arn

    #Data from VPC MODULE
    vpc_id = module.vpc.vpc_id
}