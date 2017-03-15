resource "aws_db_instance" "concourse-db" {
  allocated_storage    = 100
  storage_type = "gp2"
  engine               = "PostgreSQL"
  engine_version       = "9.5.4"
  instance_class       = "db.t1.micro"
  name                 = "concourse"
  username             = "concourse"
  password             = "concourse"
  db_subnet_group_name = "my_database_subnet_group"
  parameter_group_name = "default.postgres9.5"
}