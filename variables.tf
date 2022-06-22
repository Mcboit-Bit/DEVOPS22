variable "iam_name" {
    type = string
    default = "dibo-user"
    description = "This is the default iam user in the master account"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
    description = "This is default cidr block for vpc in the master account"
}

/* variable "tags" {
    type = string
    default = {
        Name = "Dibo"
        Env = "Dev"
    }
} */

# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-east-1"
}

# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# S3 Variables

variable "bucket_name" {
  description = "name of s3 bucket for app data"
  type        = string
  default     = "dibo-devops-buc"
}

# Route 53 Variables

variable "domain" {
  description = "Domain for website"
  type        = string
  default     = "www.activeskygate.com"
}

# RDS Variables

variable "db_name" {
  description = "Name of DB"
  type        = string
  default     = "dibodb"
}

variable "db_user" {
  description = "Username for DB"
  type        = string
  default     = "dibo"
}

variable "db_pass" {
  description = "Password for DB"
  type        = string
  sensitive   = true
  default     = "Password123"
}

variable "ec2-count" {
    description = "This is the count of ec2 in the master account"
    type = number 
    default = 5
}

variable "mymap" {
  type = map
  default = {
    Key1 = "Dibo"
    Key2 = "Dev"
    Key3 = "US"
  }
}

variable "myboolean" {
  default = true
}
