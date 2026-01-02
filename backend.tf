terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-neha-001"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
