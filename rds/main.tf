resource "aws_db_instance" "example" {
  identifier = var.db_identifier
  instance_class       = var.db_instance_class
  allocated_storage    = var.db_storage
  db_name              = var.db_name
  engine               = var.db_engine
  username = var.db_username
  password = var.db_password
  vpc_security_group_ids = [aws_security_group.rds-security-group.id]
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.db-subnet-group.id
}

resource "aws_db_subnet_group" "db-subnet-group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.private_subnets
}

resource "aws_security_group" "rds-security-group" {
    name = var.rds_security_group_name
    vpc_id =  var.vpc_id

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}