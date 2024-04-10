variable "db_identifier" {
  type        = string
  description = "Database Identifier"
}

variable "db_storage" {
  type        = number
  description = "allocated storage in GiB"
  default     = 10
}

variable "db_name" {
  type        = string
  description = "Database name"
}

variable "db_engine" {
  type        = string
  description = "MySQL RDS: Engine"
  default     = "mysql"
}

variable "db_engine_version" {
  type        = string
  description = "MySQL RDS: Engine Version"
  default     = "8.0.28"
}

variable "db_instance_class" {
  description = "RDS Instance Class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_username" {
  type        = string
  description = "Master Username"
}

variable "db_password" {
  type        = string
  description = "Master Password"
}

variable "db_subnet_group_name" {
  type        = string
  description = "DB Subnet Group Name"
}

variable "rds_security_group_name" {
  type        = string
  description = "RDS Security Group Name"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnets" {
  description = "List of Private Subnets"
  type        = list(string)
}