provider "aws" {
  region = "ap-south-1"
}

variable "default_vpc_id" {
 default = "vpc-0ce3b9694b5effc76"
}

variable "default_subnet_id" {
 default = ["subnet-0042817b4f423228c", "subnet-0c6286de6e2e06770"]
}

resource "aws_efs_file_system" "wezvatech" {
  creation_token = "jrp"
  encrypted = true

  tags = {
    Name = "jrp"
  }
}

resource "aws_efs_mount_target" "example" {
 for_each = toset(var.default_subnet_id)
 file_system_id = aws_efs_file_system.wezvatech.id
 subnet_id = each.key
}

