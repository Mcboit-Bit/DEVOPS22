resource "aws_iam_user" "user" {
  name = var.iam_name

  tags = {
    Name = var.mymap["Key1"]
    Env  = var.mymap["Key2"]
    Region = var.mymap["Key3"]
  }
}