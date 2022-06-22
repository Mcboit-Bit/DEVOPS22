resource "aws_db_instance" "aws-inspirators-db" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = var.db_name
  username             = var.db_user
  password             = var.db_pass
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags = {
    Name = var.mymap["Key1"]
    Env  = var.mymap["Key2"]
    Region = var.mymap["Key3"]
  }
}
