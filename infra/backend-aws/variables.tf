variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  default = "my-terraform-remote-state-bucket-007" 
}

variable "dynamodb_table_name" {
  default = "terraform-locks"
}
