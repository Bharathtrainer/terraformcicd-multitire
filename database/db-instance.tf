resource "aws_db_instance" "mydbbharath20252025" {
  identifier             = "mydbbharath20252025"
  engine                 = "mysql"
  engine_version         = "8.0.32"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "mydbbharath20252025"
  username               = "admin"
  password               = "password"
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true
}
