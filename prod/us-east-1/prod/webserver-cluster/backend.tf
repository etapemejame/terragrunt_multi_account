# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "blek-terragrunt-terraform-state-prod-us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
    key            = "prod/us-east-1/prod/webserver-cluster/terraform.tfstate"
    region         = "us-west-2"
  }
}
