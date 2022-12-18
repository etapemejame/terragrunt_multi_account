# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "non-prod"
  aws_account_id = "540806047034" # TODO: replace me with your AWS account ID!
  aws_profile_name    = "non-prod"
}
