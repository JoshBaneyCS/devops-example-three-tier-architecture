resource "aws_db_instance" "db" {
  identifier         = "main-db"
  allocated_storage  = 20
  engine             = "mysql"
  engine_version     = "8.0"
  instance_class     = "db.t3.micro"
  name               = "mydatabase"
  username           = "ortho-admin@orthopractice.com"
  password           = "HA YOU THOUGHT!"
  vpc_security_group_ids = [module.security_groups.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db.id
}

resource "aws_db_subnet_group" "db" {
  name       = "db-subnet-group"
  subnet_ids = var.db_subnet_ids
}
