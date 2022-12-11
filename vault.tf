terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
data "vault_generic_secret" "aws_creds" {
    path = "secret/aws"
}