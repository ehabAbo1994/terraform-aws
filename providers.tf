provider "aws" {
  access_key = data.vault_generic_secret.aws_creds.data["aws_access_key_id"]
  secret_key = data.vault_generic_secret.aws_creds.data["aws_secret_access_key"]
  token      = data.vault_generic_secret.aws_creds.data["aws_session_token"]
  region  = data.vault_generic_secret.aws_creds.data["region"]
}