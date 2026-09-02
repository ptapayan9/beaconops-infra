terraform {
  backend "s3" {
    bucket              = "beaconops-terraform-state-567803315675"
    key                 = "bootstrap/terraform.tfstate"
    region              = "us-east-1"
    encrypt             = true
    use_lockfile        = true
    allowed_account_ids = ["567803315675"]
  }
}