terraform {
  backend "s3" {
    // bucket passed in for that environment
    key            = "services/config/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "bootifulmicropizza-tf-state-locks"
    encrypt        = true
  }
}
