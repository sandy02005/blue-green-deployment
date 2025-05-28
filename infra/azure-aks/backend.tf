terraform {
  backend "s3" {
    bucket         = "my-terraform-remote-state-bucket-007"
    key            = "dev/bluegreen/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
