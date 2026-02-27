terraform {
backend "s3" {
bucket         = "wezvabucket1"
key            = "project-one/qa/terraform.tfstate"
region         = "ap-south-1"
encrypt        = true

# Enable new native locking
use_lockfile   = true

}
}
