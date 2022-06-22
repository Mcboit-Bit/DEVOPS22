resource "aws_s3_bucket" "inspirators-bucket" {
  bucket = var.bucket_name
  force_destroy = true

  tags = {
    Name = var.mymap["Key1"]
    Env  = var.mymap["Key2"]
    Region = var.mymap["Key3"]
  }
}

resource "aws_s3_bucket_acl" "inspirators-acl" {
  bucket = aws_s3_bucket.inspirators-bucket.id
  acl    = "private"
}