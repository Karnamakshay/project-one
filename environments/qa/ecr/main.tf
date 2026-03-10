provider "aws" {
region = "ap-south-1"
}

# Create indivual private repository per project
resource "aws_ecr_repository" "example" {
name                 = "wezvatechbackend"  # name of the repo/project
image_tag_mutability = "MUTABLE"
}
